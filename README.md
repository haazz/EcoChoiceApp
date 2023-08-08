# EcoChoiceApp
## 서비스 설명
소비자가 자신이 소비하는 제품들과 기업들이 실제로 환경에 얼마나 영향을 미치고 있는지에 대한 지표를 확인할 수 있는 앱입니다.
데이터는 한국 ESG 기준원에서 나온 ESG 환경 지표와 녹색제품정보시스템(GPIS)에서 나온 친환경 인증마크 제품을 사용하였습니다.

## 기술 스택
### Front End
- Android
- Figma
### Back End
- Django
- Django Rest Framework
- Docker
- Nginx
- Gunicorn
### DB
- Mysql
- Amazon RDS
### Crawling
- Python
- Selenium

## 기능
### 메인 페이지
- 메인 페이지에서는 기업 혹은 제품의 검색, 탄소중립을 위한 오늘의 추천활동, ESG의 개념에 대해 보여줍니다.
![image](https://github.com/haazz/EcoChoiceApp/assets/127824457/f0cc233b-fa21-4ffe-a8a9-4a5a1857cfe7)

### 기업의 ESG 지표
- 기업의 종합 ESG 지표와 함께 E, S, G 각각의 지표를 보여주는 페이지입니다.
- 검색을 통해 특정 기업의 지표를 확인할 수 있습니다.
- 상세페이지에서 지금까지의 기업 ESG 지표도 함께 볼 수 있습니다.  
![image](https://github.com/haazz/EcoChoiceApp/assets/127824457/d752214c-e4fe-42a8-89d2-ec28b8851697)
![image](https://github.com/haazz/EcoChoiceApp/assets/127824457/efbad4b7-ae9b-46f0-8776-fd9bcb770f11)

### 검색
- 검색을 통해 기업과 제품코드 제품 이미지를 조회할 수 있습니다.  
![image](https://github.com/haazz/EcoChoiceApp/assets/127824457/191c4f1c-9ef2-49f1-b52b-5c5f0f393bf5)

### 탄소중립 퀴즈와 마일리지
- 탄소중립 퀴즈를 통해 정답을 맞추거나 녹색제품을 구매한 고객들에게 마일리지를 적립해주는 시스템을 구현하고자 하였습니다.
- 퀴즈는 매일 랜덤으로 제공되고 로그인을 통해 마일리지를 확인할 수 있습니다.  
![image](https://github.com/haazz/EcoChoiceApp/assets/127824457/26271e33-e578-4b59-a1dc-4164ed518df8)
![image](https://github.com/haazz/EcoChoiceApp/assets/127824457/bd7ce347-246d-42ca-9559-3739a59b6118)
