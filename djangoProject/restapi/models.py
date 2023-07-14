from django.db import models

# Create your models here.

class User(models.Model):
    useremail = models.CharField(max_length=128, unique=True)
    userpw = models.CharField(max_length=128)
    username = models.CharField(max_length=16, unique=True)
    created = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.useremail

    class Meta :
        db_table = 'user'
        ordering = ['created']

class Quiz(models.Model):
    question = models.CharField(max_length=200)
    correct_answer = models.CharField(max_length=50)
    wrong_answer1 = models.CharField(max_length=50)
    wrong_answer2 = models.CharField(max_length=50)
    wrong_answer3 = models.CharField(max_length=50)
    wrong_answer4 = models.CharField(max_length=50)

    def __str__(self):
        return self.question

    class Meta :
        db_table = 'quiz'

class Company(models.Model):
    company_name = models.CharField(primary_key=True, max_length=20)
    esg_rank_2022 = models.CharField(max_length=20, null=True)
    e_rank_2022 = models.CharField(max_length=20, null=True)
    s_rank_2022 = models.CharField(max_length=20, null=True)
    g_rank_2022 = models.CharField(max_length=20, null=True)
    esg_rank_2021 = models.CharField(max_length=20, null=True)
    e_rank_2021 = models.CharField(max_length=20, null=True)
    s_rank_2021 = models.CharField(max_length=20, null=True)
    g_rank_2021 = models.CharField(max_length=20, null=True)
    esg_rank_2020 = models.CharField(max_length=20, null=True)
    e_rank_2020 = models.CharField(max_length=20, null=True)
    s_rank_2020 = models.CharField(max_length=20, null=True)
    g_rank_2020 = models.CharField(max_length=20, null=True)

    def __str__(self):
        return self.company_name

    class Meta :
        db_table = 'esg_company'
