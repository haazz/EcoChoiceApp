-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: esg_rank
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `green_product`
--

DROP TABLE IF EXISTS `green_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `green_product` (
  `num` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(128) DEFAULT NULL,
  `product_url` varchar(128) DEFAULT NULL,
  `product_code` varchar(128) DEFAULT NULL,
  `company_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`num`),
  KEY `company_name` (`company_name`),
  CONSTRAINT `green_product_ibfk_1` FOREIGN KEY (`company_name`) REFERENCES `total_esg_rank` (`company_name`)
) ENGINE=InnoDB AUTO_INCREMENT=556 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `green_product`
--

LOCK TABLES `green_product` WRITE;
/*!40000 ALTER TABLE `green_product` DISABLE KEYS */;
INSERT INTO `green_product` VALUES (118,NULL,NULL,'NCB353-22LS','경동나비엔'),(119,NULL,NULL,'NCB311-14K','경동나비엔'),(120,'경동나비엔 NCB353-14K','https://prod.danawa.com/info/?pcode=11994488&keyword=NCB353-14K&cate=10212250','NCB353-14K','경동나비엔'),(121,NULL,NULL,'NCB311-33K','경동나비엔'),(122,'경동나비엔 NCB900-43L','https://prod.danawa.com/info/?pcode=6488271&keyword=NCB900-43L&cate=10212250','NCB900-43L','경동나비엔'),(123,NULL,NULL,'KR-GD10A-SP240C1A-36AMA10','고려산업'),(124,NULL,NULL,'OKP218DH12','광명전기'),(125,NULL,NULL,'ODL2308DMHD','광명전기'),(126,NULL,NULL,'GB-HPJ100-43LEAR','국보'),(127,NULL,NULL,'GB-APW-210D1LP-24LEAR','국보'),(128,NULL,NULL,'GB-AL-158-SL-39LEAR','국보'),(129,NULL,NULL,'NBF-235R-WH','국보'),(130,NULL,NULL,'GB-CAW-147-HD-39LEAR','국보'),(131,NULL,NULL,'GB-CAW-169-FP-39LEAR','국보'),(132,NULL,NULL,'GB-CAW-155-FW-28LEAR','국보'),(133,NULL,NULL,'F2057-C63K','금호전기'),(134,NULL,NULL,'DB-BHSL-160-43','대덕'),(135,'델키 프리미엄 DK-301','https://prod.danawa.com/info/?pcode=5757745&keyword=DK-301&cate=10338816','DK-301','대덕'),(136,NULL,NULL,'DB-AW-CSL-240(4)','대덕'),(137,NULL,NULL,'DD-4S-230R-wrap1','대동'),(138,'베셀 고무그립 십자 드라이버 610 (PH1 x 150mm)','https://prod.danawa.com/info/?pcode=2690297&keyword=610&cate=14243294','610','대동'),(139,NULL,NULL,'DECOTEX(D1-Series)','대동'),(140,'ASUS Zenfone 7 프로 5G 256GB, 자급제','https://prod.danawa.com/info/?pcode=12129326&keyword=DD-S-230&cate=12215709','DD-S-230','대동'),(141,'니콘 Nikon1 J2 중고품','https://prod.danawa.com/info/?pcode=2499222&keyword=CC-280G1&cate=12237505','CC-280G1','대림비앤코'),(142,'SONY 알파 A7 II 중고품','https://prod.danawa.com/info/?pcode=3123445&keyword=CC-732G1&cate=12237505','CC-732G1','대림비앤코'),(143,'캐논 파워샷 SX740 HS','https://prod.danawa.com/info/?pcode=6367134&keyword=CC-281G1&cate=12237507','CC-281G1','대림비앤코'),(144,'나이키 에어맥스 AP CU4870-109','https://prod.danawa.com/info/?pcode=19638500&keyword=CU-109&cate=13327893','CU-109','대림비앤코'),(145,'대림바스 1홀 주방 수전 DL-K1417','https://prod.danawa.com/info/?pcode=7448881&keyword=DL-K1417&cate=17227801','DL-K1417','대림비앤코'),(146,'대림바스 센서 주방수전 DL-K3115','https://prod.danawa.com/info/?pcode=6402891&keyword=DL-K3115&cate=17227801','DL-K3115','대림비앤코'),(147,'마루망 마제스티 프레스티지오11 드라이버','https://prod.danawa.com/info/?pcode=12050204&keyword=CC-119&cate=13240861','CC-119','대림비앤코'),(148,'제논 스마트키 발전기 MG4000iSE','https://prod.danawa.com/info/?pcode=10112886&keyword=CC-4000&cate=14243288','CC-4000','대림비앤코'),(149,'대림바스 탱크밀결형 사이펀 변기 CC-729','https://prod.danawa.com/info/?pcode=15284009&keyword=CC-729&cate=17216291','CC-729','대림비앤코'),(150,'캐논 EOS R6 Mark II','https://prod.danawa.com/info/?pcode=18172244&keyword=CC-670&cate=12237505','CC-670','대림비앤코'),(151,NULL,NULL,'CC-730J','대림비앤코'),(152,'대림바스 원피스 양변기 CC-256','https://prod.danawa.com/info/?pcode=2156258&keyword=CC-256&cate=17216291','CC-256','대림비앤코'),(153,'캐논 EOS R6 Mark II','https://prod.danawa.com/info/?pcode=18172244&keyword=CC-670&cate=12237505','CC-670','대림비앤코'),(154,NULL,NULL,'CC-630P','대림비앤코'),(155,NULL,NULL,'DL-S4551','대림비앤코'),(156,'대림바스 원피스 양변기 CC-213','https://prod.danawa.com/info/?pcode=2154866&keyword=CC-213&cate=17216291','CC-213','대림비앤코'),(157,'한솜바이크 한솜 베네트 125','https://prod.danawa.com/info/?pcode=16874285&keyword=CC-700&cate=14237788','CC-700','대림비앤코'),(158,'유니즈커머스 소형 엔진 분무기 QL-P768','https://prod.danawa.com/info/?pcode=17102990&keyword=CC-768&cate=14236390','CC-768','대림비앤코'),(159,NULL,NULL,'CC-5000P','대림비앤코'),(160,'대림바스 수납형 레인샤워 DL-B9010','https://prod.danawa.com/info/?pcode=4018083&keyword=DL-B9010B&cate=17216294','DL-B9010B','대림비앤코'),(161,'바트라 수납형 레인샤워 (토수구형) BFB721','https://prod.danawa.com/info/?pcode=13450049&keyword=BFB-721&cate=17216294','BFB-721','대림비앤코'),(162,NULL,NULL,'S4516CR','대림비앤코'),(163,'바트라 수납형 레인샤워 BFB720','https://prod.danawa.com/info/?pcode=6380928&keyword=BFB720&cate=17216294','BFB720','대림비앤코'),(164,'니콘 Z8','https://prod.danawa.com/info/?pcode=20123762&keyword=CC-910&cate=12237505','CC-910','대림비앤코'),(165,'대림바스 바트라 벽붙이 주방 수전 BFK-132','https://prod.danawa.com/info/?pcode=4026362&keyword=BFK-132&cate=17227801','BFK-132','대림비앤코'),(166,'혼다 슈퍼커브110 2023년식','https://prod.danawa.com/info/?pcode=21206543&keyword=CC-8000&cate=14237788','CC-8000','대림비앤코'),(167,NULL,NULL,'CC-740(TFT-740A)','대림비앤코'),(168,'도비도스 서양식 탱크 밀결형 사이펀변기 DC-303','https://prod.danawa.com/info/?pcode=4071769&keyword=DC-303&cate=17216291','DC-303','대림통상'),(169,NULL,NULL,'FB-T600(MS)','대림통상'),(170,NULL,NULL,'FB0307C','대림통상'),(171,NULL,NULL,'FB-T360(MS)','대림통상'),(172,NULL,NULL,'DU-301J','대림통상'),(173,'대림통상 도비도스 수전 터치 센서 싱크 수전 FS0207C-ITS','https://prod.danawa.com/info/?pcode=9719433&keyword=FS0207iTS&cate=17227801','FS0207iTS','대림통상'),(174,'도비도스 세면대필터수전 DFL-2000','https://prod.danawa.com/info/?pcode=20037008&keyword=DFL-2000&cate=17216294','DFL-2000','대림통상'),(175,NULL,NULL,'LBX-3100','대림통상'),(176,'태경 널스디-X1','https://prod.danawa.com/info/?pcode=6212107&keyword=DC-102G&cate=10348372','DC-102G','대림통상'),(177,'도비도스 샤워기 헤드 PF159C','https://prod.danawa.com/info/?pcode=7415239&keyword=PF159C&cate=17216294','PF159C','대림통상'),(178,NULL,NULL,'FB6600','대림통상'),(179,NULL,NULL,'LIG071CR','대림통상'),(180,NULL,NULL,'ZDOC070','대림통상'),(181,NULL,NULL,'ZCOL599CR100','대림통상'),(182,NULL,NULL,'ZSOF079','대림통상'),(183,'세방전지 로케트 GB56219','https://prod.danawa.com/info/?pcode=5741932&keyword=FS-A110&cate=14233956','FS-A110','대림통상'),(184,NULL,NULL,'DC-213J','대림통상'),(185,'에이데이타코리아 F501H','https://prod.danawa.com/info/?pcode=5154961&keyword=DC-501G&cate=10348372','DC-501G','대림통상'),(186,NULL,NULL,'DC-407U','대림통상'),(187,NULL,NULL,'FB5507','대림통상'),(188,NULL,NULL,'FB020NRC','대림통상'),(189,NULL,NULL,'FS6015C-iTS','대림통상'),(190,'도닉 TT 배트 아펠그렌 600','https://prod.danawa.com/info/?pcode=18589187&keyword=FL600&cate=13210909','FL600','대림통상'),(191,NULL,NULL,'FB3060A','대림통상'),(192,NULL,NULL,'BSM-6002','대림통상'),(193,NULL,NULL,'LBT-1103','대림통상'),(194,'LG전자 투인원PC 14T30Q-E710K','https://prod.danawa.com/info/?pcode=18460640&keyword=DC-710-A&cate=112758','DC-710-A','대림통상'),(195,NULL,NULL,'PF179C','대림통상'),(196,'이고진 워킹머신 9200','https://prod.danawa.com/info/?pcode=10253583&keyword=DB-9200&cate=13227994','DB-9200','대림통상'),(197,'도비도스 세면수전 FL-0922C','https://prod.danawa.com/info/?pcode=17988650&keyword=FL0922&cate=17216294','FL0922','대림통상'),(198,'도비도스 세면수전 FL0200C','https://prod.danawa.com/info/?pcode=2142020&keyword=FL0200&cate=17216294','FL0200','대림통상'),(199,'ASUS ROG 제피러스 G16 GU603VV-N4051','https://prod.danawa.com/info/?pcode=20580989&keyword=DC-603&cate=112758','DC-603','대림통상'),(200,'도비도스 서양식 사이폰변기 DC-103','https://prod.danawa.com/info/?pcode=2279986&keyword=DC-103&cate=17216291','DC-103','대림통상'),(201,NULL,NULL,'FB1673S','대림통상'),(202,NULL,NULL,'FB2060A','대림통상'),(203,NULL,NULL,'GFS820','대림통상'),(204,'도비도스 선반형 해바라기 샤워 수전 FB1672','https://prod.danawa.com/info/?pcode=10442628&keyword=FB1672&cate=17216294','FB1672','대림통상'),(205,'삼성전자 센스 NT-P210-BA0F/B','https://prod.danawa.com/info/?pcode=993503&keyword=FB210N&cate=112758','FB210N','대림통상'),(206,NULL,NULL,'FS0317','대림통상'),(207,NULL,NULL,'AF077','대림통상'),(208,NULL,NULL,'FB215NR','대림통상'),(209,NULL,NULL,'PF165C','대림통상'),(210,NULL,NULL,'DU-201B','대림통상'),(211,NULL,NULL,'PA-9900C','대림통상'),(212,'옵토마 YDX5521ST','https://prod.danawa.com/info/?pcode=12595259&keyword=DB-5521&cate=10224476','DB-5521','대림통상'),(213,NULL,NULL,'DB-9600CC','대림통상'),(214,'도비도스 서양식 탱크 밀결형 사이펀변기 DC-422','https://prod.danawa.com/info/?pcode=4071620&keyword=DC-422&cate=17216291','DC-422','대림통상'),(215,'대림통상 도비도스 DLB-722','https://prod.danawa.com/info/?pcode=3756176&keyword=DLB-722&cate=103697','DLB-722','대림통상'),(216,'AMI 드 꾀흐 하트 로고 스트라이프 긴팔티 UTS300 072','https://prod.danawa.com/info/?pcode=17681516&keyword=DU-101&cate=18231859','DU-101','대림통상'),(217,NULL,NULL,'DSK-100','대상'),(218,'더센 LED 롱소켓 볼전구 전구색 12W','https://prod.danawa.com/info/?pcode=6536439&keyword=DS-15000&cate=15245421','DS-15000','대상'),(219,'Nintendo 닌텐도 선불 카드 국내','https://prod.danawa.com/info/?pcode=10166640&keyword=DS-10000&cate=11238050','DS-10000','대상'),(220,'해바라기 샤워기 DSB9500 화이트','https://prod.danawa.com/info/?pcode=15564953&keyword=DSB-9500&cate=17216294','DSB-9500','대상'),(221,NULL,NULL,'ds-3way6200','대상'),(222,NULL,NULL,'DS-9400','대상'),(223,'대성테크 DS-9000 이어형 마이크','https://prod.danawa.com/info/?pcode=2888169&keyword=ds-9000&cate=10324372','ds-9000','대상'),(224,NULL,NULL,'DS-3way8500L','대상'),(225,NULL,NULL,'DWP-103','대웅'),(226,NULL,NULL,'DW-AW-SL-160','대웅'),(227,NULL,NULL,'DWP-8T-C','대웅'),(228,'나바켐 강력 세척제 DC-5000','https://prod.danawa.com/info/?pcode=2821061&keyword=DC-5000&cate=14239739','DC-5000','대창'),(229,NULL,NULL,'DC-AW-150-SL','대창'),(230,NULL,NULL,'A2-OA500GRC','대창'),(231,'Arche 니콘 EN-EL14,EL14A 호환 LCD 듀얼충전기','https://prod.danawa.com/info/?pcode=6818200&keyword=DC-7700&cate=12237570','DC-7700','대창'),(232,NULL,NULL,'DC-PA156FPJ-HD-P28ER','대창'),(233,NULL,NULL,'A2-AF600C-R','대창'),(234,NULL,NULL,'DC-AW-220-SL-2A','대창'),(235,NULL,NULL,'DB-BR001','동방'),(236,NULL,NULL,'DICT-4W','동방'),(237,'DOPE D2-BT53BK','https://prod.danawa.com/info/?pcode=18894044&keyword=D-ATS&cate=1131874','D-ATS','동방'),(238,NULL,NULL,'DB-LWPDS','동방'),(239,'우포스 오리지널','https://prod.danawa.com/info/?pcode=6281734&keyword=1000&cate=18242380','1000','동서'),(240,'명품의료기 115C 흙소파 MS','https://prod.danawa.com/info/?pcode=14105429&keyword=DS-115&cate=15211225','DS-115','동서'),(241,NULL,NULL,'DY-GR-R-H2300','동양'),(242,NULL,NULL,'DYH-AW-SSW250-003','동양'),(243,NULL,NULL,'WDR-D6','동양'),(244,'LG전자 나노셀 75SM8670PUA 해외구매','https://prod.danawa.com/info/?pcode=7549594&keyword=SM-66&cate=10345226','SM-66','동양'),(245,NULL,NULL,'DYH-AW-155CSL-001','동양'),(246,NULL,NULL,'DYA-ACW155-02','동양'),(247,NULL,NULL,'DYNW-CAW-160-01','동양'),(248,'유니스 디지털온습도계 A-601','https://prod.danawa.com/info/?pcode=13007921&keyword=A-601&cate=14339731','A-601','동양'),(249,NULL,NULL,'DY-GR-R-H2300','동양'),(250,NULL,NULL,'DYH-AW-SSW250-003','동양'),(251,NULL,NULL,'WDR-D6','동양'),(252,'LG전자 나노셀 75SM8670PUA 해외구매','https://prod.danawa.com/info/?pcode=7549594&keyword=SM-66&cate=10345226','SM-66','동양'),(253,NULL,NULL,'DYH-AW-155CSL-001','동양'),(254,NULL,NULL,'DYA-ACW155-02','동양'),(255,NULL,NULL,'DYNW-CAW-160-01','동양'),(256,'유니스 디지털온습도계 A-601','https://prod.danawa.com/info/?pcode=13007921&keyword=A-601&cate=14339731','A-601','동양'),(257,NULL,NULL,'DSHT-32DN','두산'),(258,NULL,NULL,'DSHT-20DN','두산'),(259,NULL,NULL,'SENSTEC-100NDTT','두산'),(260,NULL,NULL,'YD-eM900','두산'),(261,NULL,NULL,'MINTs','두올'),(262,NULL,NULL,'FB60U2G-BPB01','드림텍'),(263,NULL,NULL,'KA100C1G-BPC01','드림텍'),(264,NULL,NULL,'BO50C1G-BPC01','드림텍'),(265,NULL,NULL,'LE20C1N-BPB01','드림텍'),(266,NULL,NULL,'JK15H-BPC01','드림텍'),(267,NULL,NULL,'LE40C1T-BPA02','드림텍'),(268,'SONY Walkman NW-A306','https://prod.danawa.com/info/?pcode=18870632&keyword=DID300&cate=12237394','DID300','디아이'),(269,NULL,NULL,'DY-B1000A','디와이'),(270,'LG전자 2021 울트라PC 15U50P-GR56K','https://prod.danawa.com/info/?pcode=13231172&keyword=GR2-6&cate=112758','GR2-6','미래산업'),(271,NULL,NULL,'INNO-MELT(20kg)','바텍'),(272,NULL,NULL,'BFL400-ESG-20','백산'),(273,NULL,NULL,'BTL75-SSG-2M','백산'),(274,'커버낫 C 로고 체크 셔츠 CO2103SH01BR','https://prod.danawa.com/info/?pcode=15375755&keyword=BR-SH01&cate=18231869','BR-SH01','보령'),(275,'커버낫 C 로고 옥스포드 셔츠 CO2301SH02','https://prod.danawa.com/info/?pcode=18788381&keyword=BR-SH02&cate=18231869','BR-SH02','보령'),(276,NULL,NULL,'BR-YH01','보령'),(277,'삼성전자 SL-X6300LX','https://prod.danawa.com/info/?pcode=17981471&keyword=SL-X6300LX&cate=11319124','SL-X6300LX','삼성전자'),(278,'삼성전자 SL-G356K','https://prod.danawa.com/info/?pcode=18856655&keyword=SL-G356K&cate=11319123','SL-G356K','삼성전자'),(279,NULL,NULL,'LS32A700NWKXKR','삼성전자'),(280,'삼성전자 SL-C1860FW','https://prod.danawa.com/info/?pcode=2547052&keyword=SL-C1860FW&cate=11319107','SL-C1860FW','삼성전자'),(281,NULL,NULL,'NT760XDA-KG78B','삼성전자'),(282,'삼성전자 갤럭시 크롬북2 360 XQ520QEA-KG18G','https://prod.danawa.com/info/?pcode=21542210&keyword=XQ520QEA-KG18G&cate=112758','XQ520QEA-KG18G','삼성전자'),(283,NULL,NULL,'NT950XED-KG58B','삼성전자'),(284,NULL,NULL,'NT950QED-KG78G','삼성전자'),(285,NULL,NULL,'NT550XED-KG02G','삼성전자'),(286,'삼성전자 S32A800','https://prod.danawa.com/info/?pcode=13839194&keyword=LS32A800NMKXKR&cate=112757','LS32A800NMKXKR','삼성전자'),(287,'삼성전자 C27R500','https://prod.danawa.com/info/?pcode=8084872&keyword=LC27R500FHKXKR&cate=112757','LC27R500FHKXKR','삼성전자'),(288,'삼성전자 S27R350','https://prod.danawa.com/info/?pcode=10364265&keyword=LS27R356FHKXKR&cate=112757','LS27R356FHKXKR','삼성전자'),(289,'삼성전자 F24T450FZ','https://prod.danawa.com/info/?pcode=17490734&keyword=LF24T450FZKXKR&cate=112757','LF24T450FZKXKR','삼성전자'),(290,'삼성전자 QLED KQ43QB65AFXKR','https://prod.danawa.com/info/?pcode=16515224&keyword=KQ43QB65AFXKR&cate=10342715','KQ43QB65AFXKR','삼성전자'),(291,'삼성전자 S24R350 베젤리스 프리싱크 75','https://prod.danawa.com/info/?pcode=9468426&keyword=LS24R352FZKXKR&cate=112757','LS24R352FZKXKR','삼성전자'),(292,NULL,NULL,'LS24AM506NKXKR','삼성전자'),(293,NULL,NULL,'AC060AN4FBH1PP(AC060AX4FBH1PP)','삼성전자'),(294,NULL,NULL,'NT950QDB-KG58S','삼성전자'),(295,NULL,NULL,'NT950XDB-KG58B','삼성전자'),(296,'삼성전자 C49RG90','https://prod.danawa.com/info/?pcode=7646659&keyword=LC49RG90SSKXKR%29&cate=112757','LC49RG90SSKXKR','삼성전자'),(297,'삼성전자 F24T350','https://prod.danawa.com/info/?pcode=12126638&keyword=LF24T350FHKXKR&cate=112757','LF24T350FHKXKR','삼성전자'),(298,'삼성전자 SL-M4030ND','https://prod.danawa.com/info/?pcode=3813835&keyword=SL-M4030ND&cate=19236615','SL-M4030ND','삼성전자'),(299,'삼성전자 ML-5515ND','https://prod.danawa.com/info/?pcode=6487672&keyword=ML-5515ND&cate=19236615','ML-5515ND','삼성전자'),(300,NULL,NULL,'SL-C3510ND','삼성전자'),(301,'삼성전자 MultiXpress SL-X7600GX','https://prod.danawa.com/info/?pcode=4153120&keyword=SL-X7600GX&cate=11319124','SL-X7600GX','삼성전자'),(302,'삼성전자 SL-M2840DW','https://prod.danawa.com/info/?pcode=11096928&keyword=SL-M2840DW&cate=19236615','SL-M2840DW','삼성전자'),(303,'삼성전자 F24T450','https://prod.danawa.com/info/?pcode=12126902&keyword=LF24T450FQKXKR&cate=112757','LF24T450FQKXKR','삼성전자'),(304,NULL,NULL,'LS32A600NWKXKR','삼성전자'),(305,'삼성전자 QLED KQ85QA65AFXKR','https://prod.danawa.com/info/?pcode=13479692&keyword=KQ85QA65AFXKR&cate=10342706','KQ85QA65AFXKR','삼성전자'),(306,NULL,NULL,'NT550XDA-KG09G','삼성전자'),(307,'삼성전자 S24A314','https://prod.danawa.com/info/?pcode=14342099&keyword=LS24A314NHKXKR&cate=112757','LS24A314NHKXKR','삼성전자'),(308,'삼성전자 S22R350','https://prod.danawa.com/info/?pcode=10363845&keyword=LS22R352FHKXKR&cate=112757','LS22R352FHKXKR','삼성전자'),(309,'삼성전자 F27T702','https://prod.danawa.com/info/?pcode=14760425&keyword=LF27T702QQKXKR&cate=112757','LF27T702QQKXKR','삼성전자'),(310,'삼성전자 F22T450','https://prod.danawa.com/info/?pcode=12127040&keyword=LF22T454FQKXKR&cate=112757','LF22T454FQKXKR','삼성전자'),(311,'삼성전자 Crystal UHD KU85UA8090FXKR','https://prod.danawa.com/info/?pcode=13819163&keyword=KU85UA8090FXKR&cate=10342706','KU85UA8090FXKR','삼성전자'),(312,'삼성전자 SBD-930B','https://prod.danawa.com/info/?pcode=12125987&keyword=SBD-930B&cate=103697','SBD-930B','삼성전자'),(313,'삼성전자 SF-760P','https://prod.danawa.com/info/?pcode=14168942&keyword=SF-760&cate=112994','SF-760','삼성전자'),(314,'삼성전자 SL-C3060ND','https://prod.danawa.com/info/?pcode=3980118&keyword=SL-C3060ND&cate=11319107','SL-C3060ND','삼성전자'),(315,'삼성전자 MultiXpress SL-K3300NR','https://prod.danawa.com/info/?pcode=5069376&keyword=SL-K3300NR&cate=11319123','SL-K3300NR','삼성전자'),(316,'삼성전자 MultiXpress SL-X3280NR','https://prod.danawa.com/info/?pcode=6048519&keyword=SL-X3280NR&cate=11319124','SL-X3280NR','삼성전자'),(317,NULL,NULL,'SL-M3310ND','삼성전자'),(318,'삼성전자 MultiXpress SL-M4370LX','https://prod.danawa.com/info/?pcode=9699120&keyword=SL-M4370LX&cate=11319123','SL-M4370LX','삼성전자'),(319,'삼성전자 MultiXpress SL-X4220RX','https://prod.danawa.com/info/?pcode=2721907&keyword=SL-X4220RX&cate=11319124','SL-X4220RX','삼성전자'),(320,'삼성전자 SL-M4070FR','https://prod.danawa.com/info/?pcode=20052260&keyword=SL-M4070FR&cate=112994','SL-M4070FR','삼성전자'),(321,NULL,NULL,'SHT-L200','삼화전기'),(322,'제닉스 ARENA-X 솔리드 듀얼 모니터암','https://prod.danawa.com/info/?pcode=15744173&keyword=SOLID-100&cate=113976','SOLID-100','삼화페인트공업'),(323,NULL,NULL,'POW-ECO','삼화페인트공업'),(324,NULL,NULL,'SL014(SB221-F)','상신브레이크'),(325,'하니웰 HSB-200VI 2.8~12mm','https://prod.danawa.com/info/?pcode=4629938&keyword=HSB-40-12&cate=1121007','HSB-40-12','서원'),(326,NULL,NULL,'SJ-USL-160-43','선진'),(327,NULL,NULL,'SJ-150CWPA-24','선진'),(328,NULL,NULL,'SJ-013-L','선진'),(329,NULL,NULL,'SJ-TB-01','선진'),(330,NULL,NULL,'SJ-USL-160-43','선진'),(331,NULL,NULL,'SJ-150CWPA-24','선진'),(332,NULL,NULL,'SJ-013-L','선진'),(333,NULL,NULL,'SJ-TB-01','선진'),(334,NULL,NULL,'SEB-I50L','성안'),(335,NULL,NULL,'TGD-O150','성안'),(336,NULL,NULL,'SES-M185U','성안'),(337,NULL,NULL,'D06-S15EP','성안'),(338,NULL,NULL,'PMQ612-E40GN34','성안'),(339,NULL,NULL,'VGS-160','세방'),(340,NULL,NULL,'VGS-160','세방전지'),(341,'신도리코 정품 N803T40K 검정','https://prod.danawa.com/info/?pcode=19429760&keyword=N803T40K&cate=1121011','N803T40K','신도리코'),(342,NULL,NULL,'N800T24K','신도리코'),(343,'신도리코 Q421dn','https://prod.danawa.com/info/?pcode=10764822&keyword=Q421dn&cate=11319124','Q421dn','신도리코'),(344,'앱코 N800 PINK 가상 7.1 진동 게이밍 헤드셋','https://prod.danawa.com/info/?pcode=15990863&keyword=N800&cate=12238749','N800','신도리코'),(345,NULL,NULL,'CL5051dtn','신도리코'),(346,NULL,NULL,'CL3112dn','신도리코'),(347,'신도리코 A640dn','https://prod.danawa.com/info/?pcode=13879955&keyword=A640dn&cate=19236615','A640dn','신도리코'),(348,NULL,NULL,'CL2070dn','신도리코'),(349,'신도리코 정품 N910T40K 검정','https://prod.danawa.com/info/?pcode=8196748&keyword=N910T40K&cate=1121011','N910T40K','신도리코'),(350,'신도리코 C431','https://prod.danawa.com/info/?pcode=6537087&keyword=C431&cate=11319107','C431','신도리코'),(351,'신도리코 A500dn','https://prod.danawa.com/info/?pcode=10362621&keyword=A500dn&cate=19236615','A500dn','신도리코'),(352,'팅크웨어 아이나비 M500','https://prod.danawa.com/info/?pcode=6379461&keyword=M500&cate=14222534','M500','신도리코'),(353,'EFM ipTIME C300','https://prod.danawa.com/info/?pcode=17806070&keyword=C300&cate=11427546','C300','신도리코'),(354,'신도리코 M640','https://prod.danawa.com/info/?pcode=13705166&keyword=M640&cate=11319108','M640','신도리코'),(355,NULL,NULL,'A610T13KH','신도리코'),(356,'신도리코 정품 D460T16KB, D460T10KC, D460T10KM, D460T10KY 4색 세트','https://prod.danawa.com/info/?pcode=16562735&keyword=D460T10KC&cate=1121011','D460T10KC','신도리코'),(357,NULL,NULL,'M610T13KH','신도리코'),(358,NULL,NULL,'D430T15KB','신도리코'),(359,'신도리코 정품 D450T28KK, D450T28KC, D450T28KM, D450T28KY 4색 세트','https://prod.danawa.com/info/?pcode=12238394&keyword=D450T28KC&cate=1121011','D450T28KC','신도리코'),(360,'신도리코 A611dn','https://prod.danawa.com/info/?pcode=2591472&keyword=A611dn&cate=19236615','A611dn','신도리코'),(361,NULL,NULL,'MF2083T20KH','신도리코'),(362,'로얄그래프톤 코지 IH 통주물 프라이팬','https://prod.danawa.com/info/?pcode=19392929&keyword=CM2077&cate=17215961','CM2077','신도리코'),(363,'롤링스 PRO207-3P 커스텀 골드라벨 HOH 투수올라운드글러브','https://prod.danawa.com/info/?pcode=9306789&keyword=CM2073&cate=13210699','CM2073','신도리코'),(364,NULL,NULL,'N500T23KH','신도리코'),(365,'삼성전자 갤럭시탭S8 5G 256GB','https://prod.danawa.com/info/?pcode=16363829&keyword=N507&cate=12210596','N507','신도리코'),(366,'신도리코 A631dn','https://prod.danawa.com/info/?pcode=6537230&keyword=A631dn&cate=19236615','A631dn','신도리코'),(367,'파나소닉 루믹스 DC-S5 II','https://prod.danawa.com/info/?pcode=18854174&keyword=F2060&cate=12237505','F2060','신도리코'),(368,'신도리코 CL3080dn','https://prod.danawa.com/info/?pcode=14304161&keyword=CL3080dn&cate=11319124','CL3080dn','신도리코'),(369,'신도리코 정품 D730T28KK, D730T28KC, D730T28KM, D730T28KY 4색 세트','https://prod.danawa.com/info/?pcode=14879780&keyword=D730T28KC&cate=1121011','D730T28KC','신도리코'),(370,'신도리코 A620dn','https://prod.danawa.com/info/?pcode=4389052&keyword=A620dn&cate=19236615','A620dn','신도리코'),(371,'신도리코 D730','https://prod.danawa.com/info/?pcode=14734706&keyword=D730&cate=11319124','D730','신도리코'),(372,'신도리코 정품 D320T24KK, D320T24KC, D320T24KM, D320T24KY 4색 세트','https://prod.danawa.com/info/?pcode=14925218&keyword=D320T24KC&cate=1121011','D320T24KC','신도리코'),(373,'컨버스 척테일러 올스타 코어 M9166C','https://prod.danawa.com/info/?pcode=3574104&keyword=CM2103&cate=18242355','CM2103','신도리코'),(374,NULL,NULL,'MF2085','신도리코'),(375,'신도리코 정품 D300T24KK, D300T21KC, D300T21KM, D300T21KY 4색 세트','https://prod.danawa.com/info/?pcode=5214032&keyword=D300T24KK&cate=1121011','D300T24KK','신도리코'),(376,'재생 MF2083T20K 검정','https://prod.danawa.com/info/?pcode=17346458&keyword=MF2083&cate=1121011','MF2083','신도리코'),(377,'신도리코 D450','https://prod.danawa.com/info/?pcode=10405185&keyword=D450&cate=11319124','D450','신도리코'),(378,'파라체이스 12 패널 시그니처 우드그립 장우산 2101','https://prod.danawa.com/info/?pcode=17364392&keyword=CM2101&cate=1822207','CM2101','신도리코'),(379,'FSK 정밀평형수준기 FLB3-300','https://prod.danawa.com/info/?pcode=20332172&keyword=FLB300&cate=14237308','FLB300','신원'),(380,NULL,NULL,'SH-BS-U-WO','신흥'),(381,'라코스테 솔리드 우븐 바람막이 SH212E-53G','https://prod.danawa.com/info/?pcode=19072121&keyword=SH8&cate=18238521','SH8','신흥'),(382,NULL,NULL,'PSL-35-A','에스엘'),(383,NULL,NULL,'PSL-75-B','에스엘'),(384,NULL,NULL,'SLD-06-5712W','에스엘'),(385,NULL,NULL,'SL-GP-55','에스엘'),(386,NULL,NULL,'SL-EP-1231F','에스엘'),(387,'포멜카멜레 베이직 등장식 블로퍼 FGF1F1SM001 C2','https://prod.danawa.com/info/?pcode=13308569&keyword=SM-C-001&cate=18242380','SM-C-001','에스엠'),(388,NULL,NULL,'SM-230SL-P24','에스엠'),(389,NULL,NULL,'LS-Ferrosand','에스엠'),(390,NULL,NULL,'HEOS565L','에스원'),(391,NULL,NULL,'NKLED-150W-2','엔케이'),(392,NULL,NULL,'WSLED75W-RECKNS','우성'),(393,NULL,NULL,'WSLED-WP40WKBDM','우성'),(394,NULL,NULL,'WSLED10W-DL','우성'),(395,NULL,NULL,'WSLED20W-KNBA','우성'),(396,NULL,NULL,'WS5011RN','우성'),(397,NULL,NULL,'WSLED50W-312SOL','우성'),(398,NULL,NULL,'WSL-RC-150S2','우성'),(399,'앱코 오엘라 무선 스탠드 OL-LS02BPWH','https://prod.danawa.com/info/?pcode=16462289&keyword=OL-02&cate=1031737','OL-02','우진'),(400,NULL,NULL,'ZIN-N310','우진'),(401,NULL,NULL,'WJ-29XL','우진'),(402,NULL,NULL,'WJ-17S-3','우진'),(403,NULL,NULL,'ADT-M1ZM2VZ','위메이드'),(404,NULL,NULL,'CMF-M11M2V6','위메이드'),(405,'세라 논가스 용접기 SERA-2000','https://prod.danawa.com/info/?pcode=19106795&keyword=SERA&cate=14326773','SERA','이건산업'),(406,'게스 미니삼각 에어로쿨 피케 카라티 MN2K9471','https://prod.danawa.com/info/?pcode=19945790&keyword=CARA&cate=18231859','CARA','이건산업'),(407,NULL,NULL,'JA-B124R2SH','주연테크'),(408,NULL,NULL,'JA-121F2S','주연테크'),(409,NULL,NULL,'JYA-W248S2YH','주연테크'),(410,NULL,NULL,'JS-121R2S','주연테크'),(411,NULL,NULL,'G27IDHV','주연테크'),(412,NULL,NULL,'G24VDHV','주연테크'),(413,NULL,NULL,'JYD-AM465F25SD','주연테크'),(414,NULL,NULL,'JY-A101R25SD5','주연테크'),(415,NULL,NULL,'JYNB-121HR25SD','주연테크'),(416,NULL,NULL,'JY-CA192F2T50SD37','주연테크'),(417,NULL,NULL,'G22ADH','주연테크'),(418,NULL,NULL,'CHROAD2','천보'),(419,'CISCO CBS250-24T-4G-EU 스위치허브','https://prod.danawa.com/info/?pcode=15317885&keyword=CBS-44&cate=11230207','CBS-44','천보'),(420,NULL,NULL,'CBS-08','천보'),(421,'한샘 데코템 인테리어필름 모노틸 SL222','https://prod.danawa.com/info/?pcode=18664211&keyword=SL222&cate=14239773','SL222','케이씨'),(422,NULL,NULL,'A173102','케이씨'),(423,NULL,NULL,'SL825(ECO)','케이씨'),(424,NULL,NULL,'KWA-CW-200','케이씨'),(425,'ASUS ROG Flow Z13 코어i9 13세대 Wi-Fi 1TB GZ301VV-MU006W','https://prod.danawa.com/info/?pcode=19445684&keyword=HI-C500&cate=12210596','HI-C500','케이씨'),(426,'사나래마운트 BARO MS-1000 스탠다드 싱글 모니터 암','https://prod.danawa.com/info/?pcode=20772302&keyword=MS1000&cate=113976','MS1000','케이씨'),(427,NULL,NULL,'KCL-V-50','케이씨'),(428,NULL,NULL,'KC-R9000','케이씨'),(429,NULL,NULL,'KC-B1011','케이씨'),(430,NULL,NULL,'SL819','케이씨'),(431,'GIGABYTE GA-H81M-DS2V (중고)','https://prod.danawa.com/info/?pcode=4495710&keyword=DS1150&cate=112751','DS1150','케이씨'),(432,NULL,NULL,'KCF-BEC-30-610','케이씨'),(433,NULL,NULL,'HI-C9000','케이씨'),(434,NULL,NULL,'KCL-BZE-W100K','케이씨'),(435,NULL,NULL,'KCL-BZE-W120K','케이씨'),(436,'한샘 데코템 인테리어필름 모노틸 SL222','https://prod.danawa.com/info/?pcode=18664211&keyword=SL222&cate=14239773','SL222','케이씨씨'),(437,NULL,NULL,'SL825(ECO)','케이씨씨'),(438,NULL,NULL,'KWA-CW-200','케이씨씨'),(439,'ASUS ROG Flow Z13 코어i9 13세대 Wi-Fi 1TB GZ301VV-MU006W','https://prod.danawa.com/info/?pcode=19445684&keyword=HI-C500&cate=12210596','HI-C500','케이씨씨'),(440,'사나래마운트 BARO MS-1000 스탠다드 싱글 모니터 암','https://prod.danawa.com/info/?pcode=20772302&keyword=MS1000&cate=113976','MS1000','케이씨씨'),(441,NULL,NULL,'KC-R9000','케이씨씨'),(442,NULL,NULL,'KC-B1011','케이씨씨'),(443,NULL,NULL,'SL819','케이씨씨'),(444,'GIGABYTE GA-H81M-DS2V (중고)','https://prod.danawa.com/info/?pcode=4495710&keyword=DS1150&cate=112751','DS1150','케이씨씨'),(445,NULL,NULL,'HI-C9000','케이씨씨'),(446,'ASUS ROG Flow Z13 코어i9 13세대 Wi-Fi 1TB GZ301VV-MU006W','https://prod.danawa.com/info/?pcode=19445684&keyword=HI-C500&cate=12210596','HI-C500','케이씨씨글라스'),(447,NULL,NULL,'KC-R9000','케이씨씨글라스'),(448,NULL,NULL,'KC-B1011','케이씨씨글라스'),(449,NULL,NULL,'HI-C9000','케이씨씨글라스'),(450,NULL,NULL,'PNBK2R1210','코아스'),(451,NULL,NULL,'PNK60611','코아스'),(452,NULL,NULL,'DKIN1808T','코아스'),(453,NULL,NULL,'MBA26DF','코아스'),(454,NULL,NULL,'BCV0832E','코아스'),(455,NULL,NULL,'BD0120','코아스'),(456,NULL,NULL,'MMD212','코아스'),(457,NULL,NULL,'PAS7513F','코아스'),(458,NULL,NULL,'CHD0732KCMF','코아스'),(459,NULL,NULL,'G-SD6310','코아스'),(460,NULL,NULL,'RSD2112TI','코아스'),(461,'듀엘 버튼 니트카라 반팔티셔츠 D233MSM009','https://prod.danawa.com/info/?pcode=21534743&keyword=MSM009&cate=18231892','MSM009','코아스'),(462,NULL,NULL,'ES0206','코아스'),(463,NULL,NULL,'CHS0101','코아스'),(464,NULL,NULL,'HH1333A','코아스'),(465,'시마노 파이어 블러드 구레 CH','https://prod.danawa.com/info/?pcode=13201709&keyword=CH1530&cate=13230845','CH1530','코아스'),(466,NULL,NULL,'MLC011','코아스'),(467,NULL,NULL,'TCT320LF','코아스'),(468,NULL,NULL,'SKSP0624','코아스'),(469,NULL,NULL,'DAD1410EN','코아스'),(470,NULL,NULL,'CCSP456','코아스'),(471,NULL,NULL,'MMD221','코아스'),(472,NULL,NULL,'MMD024','코아스'),(473,NULL,NULL,'TC1220','코아스'),(474,NULL,NULL,'TCLT1220','코아스'),(475,NULL,NULL,'HA1953','코아스'),(476,NULL,NULL,'MTT008','코아스'),(477,NULL,NULL,'DUP1820EN','코아스'),(478,NULL,NULL,'EID1050EN','코아스'),(479,'KARRA 쓰리배색브이넥가디건 KB3MCD006A','https://prod.danawa.com/info/?pcode=20006726&keyword=MCD006&cate=18331770','MCD006','코아스'),(480,NULL,NULL,'KRT112SA','코아스'),(481,NULL,NULL,'XLC15SSN','코아스'),(482,NULL,NULL,'KRT236CL','코아스'),(483,NULL,NULL,'G-DID1291EC','코아스'),(484,NULL,NULL,'KCD2020S2','코아스'),(485,NULL,NULL,'KSL0649ER','코아스'),(486,NULL,NULL,'HDW4601UF','코아스'),(487,NULL,NULL,'CHD0140KGMP','코아스'),(488,NULL,NULL,'EH0230G','코아스'),(489,NULL,NULL,'BCC0854','코아스'),(490,NULL,NULL,'NG2195','코아스'),(491,NULL,NULL,'LT0116','코아스'),(492,'아임삭 AD 414R','https://prod.danawa.com/info/?pcode=3606301&keyword=AD35&cate=14237231','AD35','코오롱'),(493,NULL,NULL,'AP-3522E','코웨이'),(494,NULL,NULL,'CMQ-S05','코웨이'),(495,NULL,NULL,'AP-3522E','코웨이'),(496,NULL,NULL,'CMSS-SC04W','코웨이'),(497,'코웨이 BA20-D','https://prod.danawa.com/info/?pcode=7128478&keyword=BA20-D&cate=103697','BA20-D','코웨이'),(498,NULL,NULL,'CMK-PR04H','코웨이'),(499,'코웨이 BAS29-C','https://prod.danawa.com/info/?pcode=6525244&keyword=BAS29-C&cate=103697','BAS29-C','코웨이'),(500,NULL,NULL,'BA14-E','코웨이'),(501,'쿠쿠전자 CBT-D2031W','https://prod.danawa.com/info/?pcode=6909307&keyword=CBT-D2031W&cate=103697','CBT-D2031W','쿠쿠홈시스'),(502,'SD바이오센서 코로나19 항원 자가 진단 키트 2개입','https://prod.danawa.com/info/?pcode=14135009&keyword=test1&cate=17228690','test1','테스'),(503,'SJ-B2-001(일반)','https://prod.danawa.com/info/?pcode=386274&keyword=SJB-001&cate=10335081','SJB-001','테스'),(504,NULL,NULL,'ShellWd-110H','풍산'),(505,NULL,NULL,'ShellWd-25S','풍산'),(506,'슬레진저 케라 아쿠아슈즈 SL05','https://prod.danawa.com/info/?pcode=10893423&keyword=POLY-TOP&cate=13331481','POLY-TOP','한국석유공업'),(507,'삼성전자 갤럭시북3 프로 NT940XFG-KP51G','https://prod.danawa.com/info/?pcode=20635151&keyword=KP-NT&cate=112758','KP-NT','한국석유공업'),(508,'Kingroon KP5M','https://prod.danawa.com/info/?pcode=17321981&keyword=KP-M300&cate=192173','KP-M300','한국석유공업'),(509,NULL,NULL,'KP-M300(KS)','한국석유공업'),(510,'귀뚜라미 외장형 순환펌프 KP-401-P','https://prod.danawa.com/info/?pcode=7337794&keyword=KP-M400W&cate=14226896','KP-M400W','한국석유공업'),(511,NULL,NULL,'BITU-PLAS','한국석유공업'),(512,NULL,NULL,'KBX(MSBS)2700','한국앤컴퍼니'),(513,'메종루이마리 No.04 부아 드 발린코트 퍼퓸오일','https://prod.danawa.com/info/?pcode=16317812&keyword=DU04&cate=18222429','DU04','한국타이어앤테크놀로지'),(514,'메종루이마리 No.04 부아 드 발린코트 퍼퓸오일','https://prod.danawa.com/info/?pcode=16317812&keyword=DU04&cate=18222429','DU04','한국타이어앤테크놀로지'),(515,'범일금고 오아르크 스마트금고 아트 패널','https://prod.danawa.com/info/?pcode=19622237&keyword=AU04&cate=192875','AU04','한국타이어앤테크놀로지'),(516,'시스맥스 마이 미니 6단 소품함','https://prod.danawa.com/info/?pcode=5877662&keyword=58002&cate=19338831','58002','한샘'),(517,NULL,NULL,'MHSP-250-26CCCC','한샘'),(518,NULL,NULL,'47254-031','한샘'),(519,'툴쎈 십자 드라이버 20154 (PH2 x 100mm)','https://prod.danawa.com/info/?pcode=20424704&keyword=20154&cate=14243294','20154','한샘'),(520,'PAT 남성 솔리드 잔조직 카라티셔츠 1J35183','https://prod.danawa.com/info/?pcode=19308836&keyword=35183&cate=18231859','35183','한샘'),(521,NULL,NULL,'14372','한샘'),(522,NULL,NULL,'E330-01','한샘'),(523,'태영산업사 스타 TY-100','https://prod.danawa.com/info/?pcode=5295872&keyword=TY-100&cate=10342890','TY-100','한샘'),(524,NULL,NULL,'47284','한샘'),(525,NULL,NULL,'50317','한샘'),(526,NULL,NULL,'SHK-(RSB-2)','한성기업'),(527,NULL,NULL,'HJ-DSD15f','한진'),(528,NULL,NULL,'H-DMD15stBR','한진'),(529,NULL,NULL,'H-MW15fBRFA','한진'),(530,NULL,NULL,'PF-WBCP','한창'),(531,NULL,NULL,'PF-WBCP','한창제지'),(532,NULL,NULL,'MX-LED-FL6-100EP','화신'),(533,NULL,NULL,'MX-LED-FL2-200','화신'),(534,'CORSAIR HS50','https://prod.danawa.com/info/?pcode=5675621&keyword=HS50&cate=12238749','HS50','화신'),(535,'바나나사과 호일 30cm x 60m','https://prod.danawa.com/info/?pcode=21502790&keyword=HO-HO300M&cate=17336158','HO-HO300M','화신'),(536,NULL,NULL,'HY-SLC-234-1','효성'),(537,NULL,NULL,'HS-D0612','효성'),(538,NULL,NULL,'HS-6060YS','효성'),(539,NULL,NULL,'HY-PJH-1','효성'),(540,'까미엘 뉴 갤러리 하이그로시 수납장','https://prod.danawa.com/info/?pcode=2165893&keyword=Gallery%28GL%29&cate=1524107','Gallery(GL)','효성'),(541,NULL,NULL,'HY-FIX172-HM1','효성'),(542,'NEC NP-H5251UL','https://prod.danawa.com/info/?pcode=17084789&keyword=NP-H5251UL&cate=10224476','NP-H5251UL','효성'),(543,NULL,NULL,'HS-SL01-150-43LR','효성'),(544,NULL,NULL,'HY-SLC-234-1','효성'),(545,NULL,NULL,'HS-D0612','효성'),(546,NULL,NULL,'HS-6060YS','효성'),(547,NULL,NULL,'HY-PJH-1','효성'),(548,'까미엘 뉴 갤러리 하이그로시 수납장','https://prod.danawa.com/info/?pcode=2165893&keyword=Gallery%28GL%29&cate=1524107','Gallery(GL)','효성'),(549,NULL,NULL,'HY-FIX172-HM1','효성'),(550,'NEC NP-H5251UL','https://prod.danawa.com/info/?pcode=17084789&keyword=NP-H5251UL&cate=10224476','NP-H5251UL','효성'),(551,NULL,NULL,'HS-SL01-150-43LR','효성'),(552,'까미엘 뉴 갤러리 하이그로시 수납장','https://prod.danawa.com/info/?pcode=2165893&keyword=Gallery%28GL%29&cate=1524107','Gallery(GL)','효성첨단소재'),(553,NULL,NULL,'Trendy(TR)','효성첨단소재'),(554,'메이져크래프트 크로스테이지-X 지깅로드','https://prod.danawa.com/info/?pcode=8439567&keyword=Major%28MJ%29&cate=13230845','Major(MJ)','효성첨단소재'),(555,'마이크로닉스 GH4-LETO MESH','https://prod.danawa.com/info/?pcode=15808484&keyword=SPACE&cate=112775','SPACE','효성첨단소재');
/*!40000 ALTER TABLE `green_product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-15 10:31:44