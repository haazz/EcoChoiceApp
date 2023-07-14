package com.example.ecochoice

import android.graphics.Color
import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import com.example.ecochoice.databinding.ActivityCompanyBinding
import com.github.mikephil.charting.charts.LineChart
import com.github.mikephil.charting.components.Legend
import com.github.mikephil.charting.components.XAxis
import com.github.mikephil.charting.data.Entry
import com.github.mikephil.charting.data.LineData
import com.github.mikephil.charting.data.LineDataSet
import com.github.mikephil.charting.formatter.ValueFormatter

class CompanyActivity : AppCompatActivity() {

    val binding : ActivityCompanyBinding by lazy { ActivityCompanyBinding.inflate(layoutInflater) }
    var num : Float = 0f

    private fun lineChartinit(lineChart: LineChart) {
        lineChart.setExtraBottomOffset(15f)
        lineChart.description.isEnabled = false

        val legend = lineChart.legend
        legend.verticalAlignment = Legend.LegendVerticalAlignment.BOTTOM
        legend.horizontalAlignment = Legend.LegendHorizontalAlignment.CENTER
        legend.form = Legend.LegendForm.CIRCLE
        legend.formSize = 10f
        legend.textSize = 13f
        legend.textColor = Color.parseColor("#A3A3A3")
        legend.orientation = Legend.LegendOrientation.VERTICAL
        legend.setDrawInside(false)
        legend.isWordWrapEnabled = true
        legend.xOffset = 95f
        legend.yOffset = 20f
        legend.calculatedLineSizes

        val xAxis = lineChart.xAxis
        xAxis.setDrawGridLines(false)
        xAxis.position = XAxis.XAxisPosition.BOTTOM
        xAxis.granularity = 1f
        xAxis.textSize = 14f
        xAxis.textColor = Color.rgb(118, 118, 118)
        xAxis.axisMinimum = 2019.9f
        xAxis.axisMaximum = 2022.1f

        val yAxisLeft = lineChart.axisLeft
        yAxisLeft.textSize = 14f
        yAxisLeft.textColor = Color.rgb(163, 163, 163)
        yAxisLeft.setDrawAxisLine(false)
        yAxisLeft.axisMinimum = 0f
        yAxisLeft.axisMaximum = 6.1f
        yAxisLeft.granularity = 1f

        yAxisLeft.valueFormatter = object : ValueFormatter() {
            override fun getFormattedValue(value: Float): String {
                return when (value.toInt()) {
                    0 -> "X"
                    1 -> "D"
                    2 -> "C"
                    3 -> "B"
                    4 -> "B+"
                    5 -> "A"
                    6 -> "A+"
                    else -> ""
                }
            }
        }

        val yAxis = lineChart.axisRight
        yAxis.isEnabled = false
    }

    private fun dataallinit(): LineData {
        val esgrank = ArrayList<Entry>()

        esgrank.add(Entry(2020f, changesg(intent.getStringExtra("esg2020").toString())))
        esgrank.add(Entry(2021f, changesg(intent.getStringExtra("esg2021").toString())))
        esgrank.add(Entry(2022f, changesg(intent.getStringExtra("esg2022").toString())))

        val chartData = LineData()

        val EsgDataSet = LineDataSet(esgrank, "ESG Rank")
        chartData.addDataSet(EsgDataSet)

        EsgDataSet.lineWidth = 3f
        EsgDataSet.setDrawValues(false)
        EsgDataSet.setDrawHorizontalHighlightIndicator(false)
        EsgDataSet.setDrawHighlightIndicators(false)
        EsgDataSet.color = Color.rgb(255, 155, 155)

        chartData.setValueTextSize(15f)
        return chartData
    }

    private fun dataesginit(): LineData {
        val erank = ArrayList<Entry>()
        val srank = ArrayList<Entry>()
        val grank = ArrayList<Entry>()

        erank.add(Entry(2020f, changesg(intent.getStringExtra("e2020").toString())+0.08f))
        erank.add(Entry(2021f, changesg(intent.getStringExtra("e2021").toString())+0.08f))
        erank.add(Entry(2022f, changesg(intent.getStringExtra("e2022").toString())+0.08f))

        srank.add(Entry(2020f, changesg(intent.getStringExtra("s2020").toString())))
        srank.add(Entry(2021f, changesg(intent.getStringExtra("s2021").toString())))
        srank.add(Entry(2022f, changesg(intent.getStringExtra("s2022").toString())))

        grank.add(Entry(2020f, changesg(intent.getStringExtra("g2020").toString())-0.08f))
        grank.add(Entry(2021f, changesg(intent.getStringExtra("g2021").toString())-0.08f))
        grank.add(Entry(2022f, changesg(intent.getStringExtra("g2022").toString())-0.08f))

        val chartData = LineData()

        val EDataSet = LineDataSet(erank, "E Rank")
        val SDataSet = LineDataSet(srank, "S Rank")
        val GDataSet = LineDataSet(grank, "G Rank")

        chartData.addDataSet(EDataSet)
        chartData.addDataSet(SDataSet)
        chartData.addDataSet(GDataSet)

        EDataSet.lineWidth = 3f
        EDataSet.setDrawValues(false)
        EDataSet.setDrawHorizontalHighlightIndicator(false)
        EDataSet.setDrawHighlightIndicators(false)
        EDataSet.color = Color.rgb(0, 150, 136)

        SDataSet.lineWidth = 3f
        SDataSet.setDrawValues(false)
        SDataSet.setDrawHorizontalHighlightIndicator(false)
        SDataSet.setDrawHighlightIndicators(false)
        SDataSet.color = Color.rgb(255, 207, 0)

        GDataSet.lineWidth = 3f
        GDataSet.setDrawValues(false)
        GDataSet.setDrawHorizontalHighlightIndicator(false)
        GDataSet.setDrawHighlightIndicators(false)
        GDataSet.color = Color.rgb(0, 102, 255)
        chartData.setValueTextSize(15f)
        return chartData
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(binding.root)

        val ALLlineChart = binding.linechartall
        lineChartinit(ALLlineChart)
        val allchartData = dataallinit()
        ALLlineChart.data = allchartData
        ALLlineChart.invalidate()

        val ESGlineChart = binding.linechartesg
        lineChartinit(ESGlineChart)
        val esgchartData = dataesginit()
        ESGlineChart.data = esgchartData
        ESGlineChart.invalidate()

        val companyname = intent.getStringExtra("name").toString()

        binding.acCompany.text = companyname
    }

    private fun changesg(esg: String) : Float{
        when (esg) {
            "A+" -> {
                num = 6f
            }
            "A" -> {
                num = 5f
            }
            "B+" -> {
                num = 4f
            }
            "B" -> {
                num = 3f
            }
            "C" -> {
                num = 2f
            }
            "D" -> {
                num = 1f
            }
            else -> {
                num = 0f
            }
        }
        return num
    }
}