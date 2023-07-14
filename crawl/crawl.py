from selenium import webdriver
from webdriver_manager.chrome import ChromeDriverManager
import MySQLdb
from selenium.webdriver.chrome.service import Service as ChromeService
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
import time


# # local database 연결
# conn = MySQLdb.connect(
#     user="root",
#     passwd="!tjqtjqdl113",
#     host="localhost",
#      db="esg_rank"
# )

# cursor = conn.cursor()

# # 회사 컬럼 담기
# result = []
# cursor.execute("SELECT company_name FROM total_esg_rank")
# result = list(cursor.fetchall())
# print(result)

    
# option
options = Options()
options.add_argument('headless')

# 사용자 입력
q = input('Company Name: ')
page_count = 4

# #다나와 웹사이트 오픈
driver = webdriver.Chrome(service=ChromeService(ChromeDriverManager().install()))
Url = f'https://www.danawa.com/?src=adwords&kw=GA0000020&utm_source=google&utm_medium=cpc&utm_campaign=keyword&gad=1&gclid=Cj0KCQjw756lBhDMARIsAEI0Aglf8i6HD3s3z_cqwXYtNesNkUGzSHSMR12vMFEjkuB68PReVBqHqYAaAnG_EALw_wcB'
driver.get(Url)
time.sleep(2)

# 크롬 브라우저 내부 대기 (암묵적 대기)
driver.implicitly_wait(5)

for i in q:
	# # 다나와의 검색창 제어
	driver.find_element("id", "AKCSearch").click()
	element = driver.find_element("id", "AKCSearch")
	# 입력한 값 검색창에 넣기
	for backspacenum in range(20):
		element.send_keys("\b")
	element.send_keys(i)
	# enter
	element.send_keys("\n")
	time.sleep(2)
	
	for j in range(page_count):
		page_list = driver.find_elements(By.CLASS_NAME, "click_log_page")
		goods_list = driver.find_elements(By.CLASS_NAME, "click_log_product_standard_title_")
		for good in goods_list:
			name = good.get_attribute("text")
			print(name)
		page_list[j].click()
		time.sleep(2)
		



# for r in v:
#      prodduct_name = str(r[0])
#      url = str(r[1])
#      C_name = str(r[2])

#      crawl_db = """insert into contents 
#      (product_name, image_url, C_name) 
#      values ('%s', '%s', '%s')
#      """ % (product_name, url, C_name)

#      cursor.execute(crawl_db)
#      conn.commit()

# conn.close()
driver.close()