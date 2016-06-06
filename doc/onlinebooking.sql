-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: onlinebooking
-- ------------------------------------------------------
-- Server version	5.7.12-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `booking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `doc_id` int(11) NOT NULL,
  `visit_time` varchar(45) NOT NULL,
  `is_overdue` tinyint(1) NOT NULL,
  `number` varchar(45) NOT NULL,
  `book_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `level` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'内科',NULL),(2,'外科',NULL),(3,'中医科',NULL),(4,'口腔科',NULL),(5,'针灸科',NULL),(6,'内分泌科',NULL),(7,'肿瘤科',NULL),(8,'妇产科',NULL),(9,'皮肤科',NULL),(10,'五官科',NULL);
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctor`
--

DROP TABLE IF EXISTS `doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `describe` varchar(255) DEFAULT NULL,
  `telephone` int(20) DEFAULT NULL,
  `dep_id` int(11) NOT NULL,
  `hid` int(11) NOT NULL,
  `level` varchar(25) DEFAULT NULL,
  `fee` int(11) DEFAULT NULL,
  `scheduling` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctor`
--

LOCK TABLES `doctor` WRITE;
/*!40000 ALTER TABLE `doctor` DISABLE KEYS */;
INSERT INTO `doctor` VALUES (1,'胡湘明','糖尿病、高血压、男科疾病、风湿类风湿疾病及各种痛症、肾结石、肾脏疾病的诊治',NULL,1,1,'副主任医师',7,'周三 14:00-15:00 5,周三 15:00-16:00 5,周四 09:00-10:00 5,周四 10:00-11:00 5,周四 11:00-12:00 1',NULL),(2,'何朝生','治疗急慢性肾功能衰竭、急慢性肾小球肾炎、高血压病肾病、糖尿病肾病、泌尿系结石等常见肾脏疾病的诊治以及血液净化技术和血液净化血管通路的建立。',NULL,1,1,'主任医师',9,'周二 14:00-15:00 1,周二 15:00-16:00 1,周四 09:00-10:00 5,周四 10:00-11:00 5',NULL),(3,'张奕','在脂肪瘤、皮脂腺瘤、腱鞘囊肿等各种体表肿物的手术治疗；痔疮及下肢静脉曲张的诊治等方面有较丰富临床经验。',NULL,2,1,'医师',4,'周二 14:00-15:00 1,周二 15:00-16:00 1,周五 09:00-10:00 5,周五 10:00-11:00 5,周五 11:00-12:00 1',NULL),(4,'魏国健','治疗消化系统疾病，如慢性胃炎等及呼吸系统疾病，老年心脑血管疾病；对女性盆腔炎，月经不调，不孕症，痛经及更年期综合症的治疗',NULL,3,1,'副主任医师',7,'周一 09:00-10:00 1,周一 10:00-11:00 1,周二 14:00-15:00 1,周二 15:00-16:00 1,周五 09:00-10:00 5,周五 10:00-11:00 5',NULL),(5,'丁咏','各类牙龈炎，牙周炎的诊治（龈上洁治，龈下刮治，根面平整，牙合治疗，松牙固定，牙周病的药物治疗及各种牙周手术等）及各学科的综合治疗，注重患者的口腔卫生指导和监护以及牙周维护治疗，并能根据患者的实际情况为患者制定规范化、个性化的牙周治疗方案。',NULL,4,1,'副主任医师',7,'周四 09:00-10:00 2,周四 10:00-11:00 2,周四 11:00-12:00 1',NULL),(6,'陈慧贞','中西医结合治疗内科常见病、多发病，如感冒、发热、咳嗽、支气管肺炎、支气管哮喘、胃炎、高血压病、冠心病、高脂血症、中风等病。',NULL,1,4,'主任医师',9,'周四 09:00-10:00 2,周四 10:00-11:00 2,周四 11:00-12:00 1，周四 14:00-15:00 1,周四 15:00-16:00 1',NULL),(7,'胡世云','高血压、冠心病、心律失常等心血管疾病的中西医结合诊疗和内科疑难杂病。',NULL,1,4,'主任医师',9,'周二 14:00-15:00 1,周二 15:00-16:00 1',NULL),(8,'张波','面瘫、中风偏瘫、头痛、颈痛、腰痛、风湿、胃痛、腹痛、慢支等疾病。',NULL,5,4,'住院医师',4,'周一 09:00-10:00 1,周一 10:00-11:00 1,周二 14:00-15:00 1,周二 15:00-16:00 1,周四 09:00-10:00 2,周四 10:00-11:00 2,周四 11:00-12:00 1，周四 14:00-15:00 1,周四 15:00-16:00 1',NULL),(9,'曾力','肾脏移植（成人/儿童），亲属活体供肾移植，多器官联合移植。',NULL,2,10,'主任医师',9,'周一 09:00-10:00 1,周一 10:00-11:00 1,周一 14:00-15:00 1,周一 15:00-16:00 1,周四 09:00-10:00 2,周四 10:00-11:00 2,周四 11:00-12:00 1',NULL),(10,'刘建民','医疗特长:脑动脉瘤，脑血管畸形，硬脑膜动静脉瘘，颈动脉、椎动脉及颅内动脉狭窄等.',NULL,2,10,'主任医师',9,'周五 09:00-10:00 2,周五 10:00-11:00 2,周五 11:00-12:00 1，周五 14:00-15:00 1,周五 15:00-16:00 1',NULL),(11,'邹大进','难治性糖尿病、男性性功能障碍、骨质疏松、代谢性骨病。',NULL,6,10,'主任医师',9,'周四 09:00-10:00 2,周四 10:00-11:00 2,周四 11:00-12:00 1，周四 14:00-15:00 1,周四 15:00-16:00 1，周五 09:00-10:00 2,周五 10:00-11:00 2',NULL),(12,'王梅','恶性淋巴瘤、乳腺癌、肺癌、胆道系统肿瘤及其他肿瘤的化疗',NULL,7,10,'主任医师',9,'周一 09:00-10:00 1,周一 10:00-11:00 1,周一 14:00-15:00 1,周一 15:00-16:00 1',NULL),(13,'冯刚','主任医师，肿瘤科主任，省抗癌协会理事，省肿瘤学会委员，省化疗专业委员会委员，院临床药物基地肿瘤专业负责人。日本杏林大学医院访问学者、在中国医学科学院肿瘤医院进修肿瘤化疗，主持多项省、市级科研项目，获省市科技进步奖多项。在肿瘤综合治疗方面具有较深造诣。',NULL,7,16,'主任医师',9,'周三 09:00-10:00 2,周三 10:00-11:00 2,周三 11:00-12:00 1，周四 09:00-10:00 2,周四 10:00-11:00 2,周四 11:00-12:00 1',NULL),(14,'夏琼','擅长妇科微创手术、高危孕产妇管理、产科急危重症等处理和妇科肿瘤、宫颈病变、子宫内膜异位症的治疗。',NULL,8,16,'副主任医师',7,'周四 14:00-15:00 1,周四 15:00-16:00 1，周五 09:00-10:00 2,周五 10:00-11:00 2,周五 11:00-12:00 1，周五 14:00-15:00 1,周五 15:00-16:00 1',NULL),(15,'徐慧珍','擅长银屑病、带状疱疹及后遗神经痛、皮炎湿疹、尖锐湿疣、生殖器疱疹等疾病的治疗。',NULL,9,16,'主任医师',9,'周一 09:00-10:00 1,周一 10:00-11:00 1,周一 14:00-15:00 1,周一 15:00-16:00 1',NULL),(16,'李海平','擅长于口腔各类疾病诊断及治疗尤以颌面外科手术及良恶性肿瘤、骨折、颌面外科的诊断与治疗。',NULL,10,16,'副主任医师',7,'周二 14:00-15:00 1,周二 15:00-16:00 1,周三 09:00-10:00 2,周三 10:00-11:00 2,周三 11:00-12:00 1，周三 14:00-15:00 1,周三 15:00-16:00 1',NULL),(17,'陈爱民','擅长小针刀治疗慢性软组织损伤、颈、肩、腰、腿痛等疾病。',NULL,3,16,'副主任医师',7,'周五 14:00-15:00 1,周五 15:00-16:00 1',NULL);
/*!40000 ALTER TABLE `doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital`
--

DROP TABLE IF EXISTS `hospital`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hospital` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `nature` enum('公立医院','私立医院') DEFAULT NULL,
  `region` varchar(25) NOT NULL,
  `level` varchar(25) DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `telephone` varchar(30) DEFAULT NULL,
  `web` varchar(255) DEFAULT NULL,
  `describe` varchar(500) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital`
--

LOCK TABLES `hospital` WRITE;
/*!40000 ALTER TABLE `hospital` DISABLE KEYS */;
INSERT INTO `hospital` VALUES (1,'广东省人民医院',NULL,'广州市','三级甲等','','广州市中山二路106号(中山二路和东川路交界处)','2083882222','http://www.gdghospital.org.cn/','广东省人民医院创建于1946年，是广东省最大的综合性医院，是国内规模最大、综合实力最强的医院之一。医院建筑面积近25.3万平方米，在职职工4925人，其中卫生技术人员3525人，高级职称人员632人。现有住院床位数2500多张，年出院病人86,599人次，年大型手术例数达到24757台。医院有六个门诊部，2011年门诊量约372.6万人次，日均超过1万人次。',NULL),(2,'南方医科大学第三附属医院',NULL,'广州市','三级甲等',NULL,'广州中山大道西183号','2062784188','http://www.nysy.com.cn/Cn/Default.aspx','南方医科大学第三附属医院(简称“南医三院”)，于2007年4月23日(创建于1953年的省邮电医院)移交南方医科大学，同时成立由中国工程院院士钟世镇和中国科学院院士姚开泰领头的硕士、博士生导师等近40人组成“专家技术指导委员会”实施技术指导。2008年6月19日，南方医科大学在我院成立骨科研究所，钟世镇院士担任名誉所长,中国著名骨科专家、中华医学会骨科学分会副主任委员金大地教授任所长，兼“南医三院”院长，同时从南方医院、珠江医院抽调大量骨干“空降”我院，提升我院医疗、教学、科研的综合实力。',NULL),(3,'广东药科大学附属第三医院',NULL,'广州市','二级甲等',NULL,'广东省广州市白云区新市新街79号之一之二','2062830543','http://www.gzxsyy.com','医院规模：广东药科大学附属第三医院（广州新市医院）是集医疗、教学、科研、预防保健为一体的综合性医院，设有妇产科危难重症研究所和腔镜培训基地，是广东省高等医学院校教学医院、广州市医疗保险、工伤保险、生育保险、新型农村合作医疗定点医院、公费医疗挂钩医院及广州市120急救网络医院。现有床位500张、正在扩建成为面积约9万多平方米、床位1600张的三级甲等医院。',NULL),(4,'广东省中医院下塘门诊部',NULL,'广州市','一级甲等',NULL,'广州市越秀区登峰街麓景路上塘街十三巷9号','203599517',NULL,'本部是广东省中医院属下的一所综合性门诊，是广东省城镇职工基本医疗保健定点医疗机构。设有内、儿、骨、外、妇、针灸、理疗、痔瘘、皮肤、眼、耳、鼻、喉、乳腺、糖尿病、心血管、脑血管、不孕不育等专科。功能科有放射、检验、心电图、以及体格检查妇科、乳腺科普查，还开展中药皮肤治疗、中药雾化吸入、腊疗等颇具有中医特色的新疗法。各科均有年资较高，经验丰富的医生坐诊，每天还有主任、专家轮流应诊。收费标准，按省市物价部门规定，报销凭证与广东省中医院相同。',NULL),(5,'湖南省人民医院',NULL,'长沙市','三级甲等',NULL,'湖南省长沙市解放西路61号','731849100','http://www.hnsrmyy.com','湘江之滨，天心阁下，古老长沙的风华圣地，这里矗立着一座历史悠久的百年医院----湖南省人民医院。湖南省人民医院其前身为“中国红十字会湖南分会医院”，由现代医学之父、中华医学会创始人颜福庆等人于1912年创建并担任首任院长，医院先后更名为“湖南仁术医院”、“省立长沙医院”，1958年正式命名为“湖南省人民医院”, 2006年与国家211工程重点大学湖南师范大学实现强强联合，成为湖南师范大学第一附属医院。经过近百年的风雨历程，医院现已发展成为一所集医疗、教学、科研、预防保健和社区卫生服务于一体的综合性三级甲等医院、爱婴医院，为国家药物临床试验机构、国家全科医生临床培养基地、卫生部全科医师培训基地、人力资源与社会保障部博士后科研工作站、卫生部内镜诊疗中心(骨关节外科、耳鼻喉科)。',NULL),(6,'长沙市第一医院',NULL,'长沙市','三级甲等',NULL,'长沙市开福区营盘路311号','731849100','http://www.cssdyyy.com','长沙市第一医院始建于1920年，2007年，长沙市委、市政府为优化资源配置，与原长沙市第六医院(长沙市传染病医院、长沙市公共卫生救治中心)合并，成为新的长沙市第一医院。现已发展成为一院三址的集团化格局，是一所集医疗、教学、科研、预防保健和公共卫生救治于一体的大型三级甲等综合性医院。医院占地面积210余亩，设有编制床位1593张。医院系省、市、县城镇职工、城镇居民医疗保险定点医疗机构，湖南省异地就医联网即时结算定点医疗机构，广州铁路集团公司长沙铁路医疗保险定点医疗机构，工伤保险定点医疗机构，中南大学湘雅医院双向转诊、定点指导医院。',NULL),(7,'中国人民解放军国防科技大学医院',NULL,'长沙市','二级甲等',NULL,'长沙市开福区德雅路109号','731849107','www.guofang120.com','国防科技大学医院位于长沙市德雅路109号的中国人民解放军国防科技大学医院创建于1953年，是一所集医疗、教学、科研、保健于一体的二级甲等综合性医院。医院开设30多个临床医技科室，年均门(急)诊量16余万人次，在军内系统名列前茅。拥有一支医学博士、硕士等高学历人才组成的专业医疗团队，与中华医学会、中国微创外科技术协会定期举办全国性专业学术会议，为各地疑难杂症患者解除病痛提供了坚实的保障。',NULL),(8,'眼科医务中心',NULL,'香港','其他',NULL,'九龙尖沙咀汉口道28号亚太中心 5楼510-513室','40088114',NULL,'香港眼医专科佔地4,000尺，为病人提供舒适的环境去进行眼科检查和治疗。中心设备包括全港首部WaveLight EX500准分孑激光机，清除近视或散光每100度只虽1.4秒，要清除600度的深近视亦只需要10秒左右。',NULL),(9,'香港综合肿瘤中心',NULL,'香港','其他',NULL,'香港中環花園道3號花旗銀行大廈4樓全層','40088314',NULL,'香港综合肿瘤中心和香港综合影像及内视镜诊断中心于2015年正式成立，提供优质和完善的一站式、跨专科诊断与肿瘤治疗服务。 作为致力发展环球卓越医疗网络的国际私人投资管理集团TPG旗下的新成员，香港综合肿瘤中心与香港综合影像及内视镜诊断中心座落于中环的心脏地带-- 花旗银行大厦三楼及四楼全层，中心占地超过二万六千尺，汇聚了先进的诊断和医疗设备与一众跨专科的医护人员，提供全面的诊断和医疗服务。',NULL),(10,'上海长海医院',NULL,'上海市','三级甲等',NULL,'上海杨浦区长海路168号','21311611','http://www.chhospital.com.cn/','第二军医大学附属长海医院创建于1949年，是一所集医疗、教学、科研为一体的现代化大型综合性医院。1993年首批评为三级甲等医院。1998年荣膺全国百佳医院称号。连续13届获上海市“文明单位”称号。 医院占地32万平方米，建筑面积27.6万平方米，其中工作用房17.6万平方米，生活用房10万平方米，实现了医疗区、教学科研区、生活区三区分离。',NULL),(11,'上海中医药大学附属龙华医院',NULL,'上海市','三级甲等',NULL,'徐汇区宛平南路725号','21643700',NULL,'上海中医药大学附属龙华医院 创建于1960年7月，是全国最早建立的四大中医临床基地之一。近50年来，医院坚持中医为主的办院方向，走名医、名科、名院之路。规模不断扩大，中医药学术地位不断提升，已成为集医疗、教学、科研为一体，中医特色鲜明和中医优势突出的全国示范中医院、上海市三级甲等医院、上海市精神文明单位8连冠。',NULL),(12,'上海市闸北区中心医院',NULL,'上海市','二级甲等',NULL,'上海市静安区中华新路619号','21566284','http://www.zbzxyy.org.cn/www/index.php','静安区闸北中心医院(上海长征医院闸北分院)创建于1960年，是闸北区红十字医院，占地40余亩，面积6.6万平方米。核定床位639张，实际开放床位734张;有34个临床医技科室，拥有职工1000余人，副高以上专家100余名，硕博士近60名，是一所集医疗、急救、教学、科研、预防保健、康复等功能为一体的现代化二级甲等综合性医院。',NULL),(13,'上海108医院',NULL,'上海市','二级甲等',NULL,'上海市长宁区哈密路1711号','21522087',NULL,'中国人民解放军第108医院创立于1926年，已具有88年历史，是中国人民解放军南京军区直属综合性医院，上海市首批公立医保定点医院。上海108医院是一所集医疗、教学、科研为一体的综合性医院，同时也是南京军区上海诊疗康复中心。口腔、眼、耳鼻喉科室是上海108医院的重点发展科室，拥有高清数字化内窥镜图像显示系统、单晶片数字摄像仪、三晶片数字摄像仪、等离子治疗系统等国内外先进诊疗设备，确保实现精确、高效、快速、安全、彻底的诊疗效果。',NULL),(14,'上海真美妇科医院',NULL,'上海市','其他',NULL,'上海市杨浦区宁国路313弄-4号(近龙泽大厦) ','21559067','http://www.zmfk.com/','上海真美妇科医院始建于1948年，是国家卫生部门批准成立的专业妇科医院，68年来始终专注于妇科疾病的诊疗，先后荣获“全国十佳妇科医院”、“全国重点微创妇科诊疗基地”、“上海五好党组织”、“全国百姓放心示范医院”等荣誉，荣获申城及周边市民各方媒体口碑赞誉，是值得信赖的专业妇科医院。',NULL),(15,'武汉大学中南医院',NULL,'武汉市','三级甲等',NULL,'武汉市武昌东湖路169号','276781288','http://www.znhospital.cn/','医院建筑面积27.9万平方米，卫生厅核定批准床位3300张，进入全国特大型医院行列。医院专家荟萃，其中高级职称专业技术人员500余人，博士研究生导师55人，硕士研究生导师197人，21人获国务院政府特殊津贴。经过50多年的建设，医院已发展成为一所集医疗、教学、科研、预防保健和社区医疗服务为一体的大型现代化综合医院。',NULL),(16,'武汉市普爱医院',NULL,'武汉市','三级甲等',NULL,'湖北省武汉市桥口区汉正街472号','278378219',NULL,'武汉市普爱医院暨华中科技大学同济医学院附属普爱医院创建于1864年，是湖北地区第一家西医医院、湖北省三级甲等医院、湖北省最佳文明单位、湖北省卫生单位先进集体、全省卫生系统科技教育工作先进集体、武汉市文明品牌医院。',NULL),(17,'武汉六七二中西医结合医院',NULL,'武汉市','二级甲等',NULL,'武汉市洪山区珞喻路279号','278266072','http://www.wh672.com','中船重工集团第七研究院武汉科技开发中心武汉六七二中西医结合医院，毗临东湖风景区，面临珞喻路主干道，是一所集医疗、教学、科研、疾病预防、保健、体检为一体，功能齐全、中西医结合特色突出的综合性医院，是武汉市医保定点医院、新型农村合作医疗定点医院、武汉市工伤保险定点医院、湖北中医药大学实习医院，拥有湖北省重点专科——骨伤科，武汉市重点专科——针灸科。',NULL),(18,'西南医院',NULL,'重庆市','三级甲等',NULL,'重庆市沙坪坝高滩岩正街30号','238754000','http://www.xnyy.cn/','西南医院坐落于两江环抱、山水相依的重庆市沙坪坝区高滩岩上，有着悠久的历史和光荣的传统。前身系国民政府中央医院，1929年建于南京，1941年迁至重庆，1950年正式命名，现为第三军医大学第一附属医院、第一临床医学院。经过80多年的建设发展，业已成为一所大型综合性现代化医院。医院占地面积300余亩，建筑面积36万平方米，展开床位2600余张，拥有达芬奇手术机器人、PET/CT、3.0MRI、双源螺旋CT、ECT、脑磁图、大型高压氧舱群、神经导航系统等高精尖诊疗设备，年门急诊量298万人次、收治量11万人次、手术量5.8万台次，医教研护工作协调发展，办院综合实力国内一流。',NULL),(19,'重庆市江津区中医院',NULL,'重庆市','三级甲等',NULL,'重庆市江津区德感街道潍柴立交旁','234755999','http://www.jjzyy.com/index.php','重庆市江津区中医院创建于1983年，其前身是创建于1951年的“江津城关第一联合诊所”。2013年医院扩建一期工程投入使用，是江津地区集医疗、教学、科研为一体的国家三级甲等中医院和重庆市示范中医院。医院现有职工659人，专业技术人员552人，其中正高职称6人，副高职称22人，中级职称84人；硕士研究生20人，本科178人；重庆市名中医2人，江津区名中医8人。医院开设一级临床科室17个（内科、外科、骨伤科、妇产科、儿科、重症医学科、急诊科、针灸科、推拿科、肛肠科、口腔科、皮肤科、麻醉科、眼科、耳鼻喉科、感染性疾病科、治未病中心），内科二级分科6个（心病科、脑病科、肾病科、肺病科、脾胃病科、老年病科），设名医堂和中医专病门诊10个。',NULL),(20,'重庆市长寿区人民医院',NULL,'重庆市','二级甲等',NULL,'重庆市长寿区凤城街道北观16号','234407464','http://www.cqcsyy.cn','重庆市长寿区人民医院始建于1940年，是一所集医疗、教学、科研、预防、保健为一体的综合性医院，也是重庆医科大学教学医院、中国医学生社会实践教育基地、全国综合医院中医药工作示范单位，代管长寿区中心血库，设有老年康复研究所。',NULL),(21,'北京466医院',NULL,'北京市','三级甲等',NULL,'北京市海淀区北洼路北口(香格里拉饭店南100米路东)','1068459466','http://www.bj466.cn/?91160','中国人民解放军空军航空医学研究所附属医院成立于1951年，是一所集医疗、急救、体检、保健、康复、教学、训练、科研为一体的综合性三级甲等医院，拥有床位1000余张，占地面积约200000平方米,医院目前共设21个科室，45个专业,是北京市医疗保险定点医院、第四军医大学教学医院。空军航空医学研究所附属医院是国内从事航空医学理论与应用研究，累计开展科研课题700余项，获国家、军队科技进步奖362项，其中军队科技进步二等奖以上高等级成果88项，国家发明奖7项。研究所拥有科研人员200余名，几十年来，空军航空医学研究所附属医院耳鼻喉科以标杆科室享誉全军，目前，空军航空医学研究所附属医院已发展成为学科建设齐全，医疗特色突出，人才梯队合理，技术力量雄厚的“国家重点耳鼻喉学科”。',NULL),(22,'东莞市人民医院',NULL,'东莞市','三级甲等',NULL,'东莞市万江区新谷涌万道路3号','769266300','http://www.dgphospital.com/','东莞市人民医院始建于清光绪十四年，即公元1888年。其前身为德国巴色传道会来莞所创办的“中华基督教礼贤会普济医院”，是我国建立最早的西医院之一。迄今已跨越三个世纪，走过123年的风雨历程。当年医院建筑红墙绿瓦，一派西洋风格，被当地群众喻为“红楼医院”，并传诵至今。 建院以来，医院几度易名。从充满殖民色彩的“中华基督教礼贤会普济医院”，到“东莞县立医院”、“东莞公立医院”、“中国人民解放军第七十一预备医院”、“广东省第二干部疗养院”、“广东省康复医院”“东莞县人民医院”； 1985年随东莞撤县设市及1988年升格为地级市，更名为现今的“东莞市人民医院”。经过一百多年的发展，尤其是新中国成立至改革开放以来，在各级领导的亲切关怀与正确领导、社会各界人士的大力支持和医院几代干部职工共同奋斗下，医院的建设发展取得了令人瞩目的成就，现已发展成为集医疗、教学、科研及预防保健为一体的大型综合性三级甲等医院。',NULL),(23,'东莞市厚街医院',NULL,'东莞市','三级甲等',NULL,'东莞市厚街镇河田大道21号 ','769984222','http://www.dghjyy.com/','厚街医院是厚街镇唯一的公立医院，也是广东医科大学非直属附属医院，同时是四川省、河南省信阳市和南阳市、安徽省阜南县、贵州省习水县等地的新农合在粤的定点医疗机构，医疗辐射能力涉及到厚街镇及周边省市、县、镇约二百二十万人口，成为东莞市沿海片区的区域医疗中心。2011年成功创建成为三级甲等医院。 医院人才济济，多年来共引进、培养学科带头人10人。医院现有副高职称以上卫生技术人员159人，博士和硕士研究生44人，受广东医学院等高等院校聘请兼职教授、副教授93名，硕士生导师7名。',NULL),(24,'东莞横沥医院',NULL,'东莞市','二级甲等',NULL,'广东省东莞市横沥镇天桥路205号','763371826','http://www.dghlyy.com.cn','位于广深铁路中心点的东莞市横沥医院是一所科室齐全、设备先进、实力雄厚、技术全面的综合性医院。占地面积约24679平文米，建筑面积40970平方米。医疗设备总投资6000万元，日门诊量达1500人次。 　　门诊部开设有内科、外科、妇产科、儿科、耳鼻喉科、眼科、口腔科（含牙科）、中医科、骨伤科、康复医学科、慢性病科、皮肤痔疮科、急诊科等14个专业科室和心血管内科、呼吸内科、消化内科、内分泌科、神经内科、新生儿科、普外、泌外、手外、矫外、神经外科等专科门诊。 　　横沥人民医院注重服务，认真落实各项服务承诺，积极参与医疗市场竞争。全面与社区卫生服务中心开展医疗服务合作，以“为民便民利民、提高服务水平”为宗旨，不断改善服务措施，取得了较好的社会效益和经济效益。',NULL),(25,'北京大学深圳医院',NULL,'深圳市','三级甲等',NULL,'广东省深圳市福田莲花路1120号','755839233','http://www.pkuszh.com/','北京大学深圳医院原名“深圳市中心医院”，是深圳市政府投资4.5亿元人民币建成的现代化综合性医院。医院于1999年底建成开业，2001年，深圳市政府与北京大学、香港科技大学合作，医院更名为“北京大学深圳医院”和“北京大学深圳临床医学院”，纳入北京大学附属医院管理体系。 医院占地面积5.9万平方米，首期建筑面积10.8万平方米，编制病床800张，实际开放病床953张。医院总资产现已达到9.3亿元，拥有总价值超4.0亿元的现代化医疗设备。',NULL),(26,'深圳市人民医院',NULL,'深圳市','三级甲等',NULL,'深圳市东门北路1017号大院','755255018','http://www.szhospital.com','深圳市人民医院始建于1946年，前身是宝安县卫生院，1979年伴随深圳经济特区成立更名为深圳市人民医院。1994年被评为深圳首家“三级甲等”医院。1996年经国务院侨办批准成为暨南大学医学院第二附属医院，2005年升格为暨南大学第二临床医学院。伴随着经济特区的成长，深圳市人民医院已发展成为一个功能齐全、设备先进、人才结 构合理、技术力量雄厚，集医疗、教学、科研、保健为一体的深圳市最大的现代化综合性医院。医院占地面积13.82万平方米，建筑面积21.3万平方米，编制病床2200张，开放病床2400张。2013年出院病人8.04万人次，门诊量300多万人次。目前医院有两个门诊部(一、二门诊部)、一个住院部(又称留医部)及一个分院(深圳市人民医院龙华分院)。',NULL),(27,'深圳市南山区蛇口人民医院',NULL,'深圳市','二级甲等',NULL,'深圳市南山区蛇口工业七路36号','755606999','http://www.skhosp.com','作为改革开放前沿阵地的蛇口，经历30多年的发展，如今已成为一个同时融合了居住与旅游、本土与国际、富裕与休闲的国际化城区，区域内市场至深航大厦集中了鲸山别墅九期、双玺花园、兰溪谷、半岛城邦等一系列高尚住宅，聚集着一大批享受高品质生活、具有高消费能力的优质人群。蛇口与香港隔海相望，东临深圳湾，西依珠江口，得天独厚的地理位置，吸引着来自70多个国家和地区，占深圳市60%以上的外籍人士聚居于此，因此拥有了“小联合国”之称。',NULL),(28,'郑州大学第一附属医院',NULL,'郑州市','三级甲等',NULL,'河南省郑州市建设东路1号','37693114','http://fcc.zzu.edu.cn/','郑州大学第一附属医院始建于1928年9月，其前身为原国立河南大学医学院附设医院，1958年从开封迁入郑州，更名为河南医学院第一附属医院，1985年更名为河南医科大学第一附属医院，2000年原郑州大学、郑州工业大学、河南医科大学三校合并，医院正式命名为郑州大学第一附属医院。2012年，医院正式成为省部共建医院。医院是河南省最大的集医疗、教学、科研、预防、保健、康复为一体，具有较强救治能力、较高科研水平和国际交流能力的三级甲等医院，先后被评为国家级“爱婴医院”、全国“百佳医院”、“全国医院管理年先进单位”、全国文明单位等荣誉称号。目前，医院有河医和郑东2个院区，总占地面积582亩。',NULL),(29,'郑州市康复医院',NULL,'郑州市','二级甲等',NULL,'郑州市颖河路与伏牛路交叉口向东20米路北','3718914','http://www.zzskfyy.com/','郑州市康复医院前身为郑州电缆厂职工医院（郑州仁和老年病医院），始建于1958年，2009年整体移交郑州市卫生局管理，为市属市管的非营利性二级专科医疗机构。医院地处西郊，人口密集，交通便利，院内环境优美，布局合理，是集医疗、康复、教学、科研、预防、保健等为一体的公立医疗机构。医院开放床位120张，设有内科、骨科、外科、妇科、康复科、产科、儿科、皮肤科、中医科、口腔科、手术室、麻醉科、医技科、检验科等14个临床科室。',NULL),(30,'郑州市妇幼保健院',NULL,'郑州市','二级甲等',NULL,'总院地址:郑州市金水路41号（大石桥） 分院地址：秦岭路与淮河路向北50米','1873812755','http://www.zzfybjy.com','郑州市妇幼保健院成立于1953年，经过60年的建设和发展，现已成为一所集医疗、保健、科研、教学、康复、预防为一体的三级妇幼保健专科医院，是河南大学附属郑州妇产医院，目前由大石桥本部、秦岭路院区和宜居健康城医院三部分组成。医院承担全市十区六县（市）妇幼保健、计划生育技术指导、妇女围产保健、妇女两癌普查、产前诊断、新生儿疾病筛查、孕产妇危重症救护、新生儿危重症救护等工作。',NULL),(31,'天津市环湖医院',NULL,'天津市','三级甲等',NULL,'天津市津南区吉兆路6号','225905906','http://www.tnsi.org','天津市环湖医院（天津市脑系科中心医院）是以神经内、外科为特色，集医疗、教学、科研为一体的三级甲等医院，设有天津市神经外科研究所、天津市血管介入放射治疗基地、天津市颅脑损伤抢救中心，以及天津市鼻病诊疗中心。承担天津医科大学、天津中医药大学、天津医学高等专科学校、天津体育学院等高等院校的教学任务，是天津市高等院校教学基地之一。',NULL),(32,'天津市第四医院',NULL,'天津市','三级甲等',NULL,'河西区微山路4号','225905906','http://www.tjdsyy.com/yygk/dlwz/index.shtml','天津市第四医院（增名天津市烧伤专科医院）是一所以烧伤整形为特色，集医疗、教学、科研、预防为一体的综合性市属三级乙等医院，是天津市高等医学院校临床教学实习基地、天津医科大学烧伤外科研究生培训基地和国内较大的烧伤临床基地之一。烧伤整形科为我市重点学科，天津市烧伤研究所、天津市烧伤急救中心均设在我院。',NULL),(33,'武警天津总队医院',NULL,'天津市','二级甲等',NULL,'天津市河东区卫国道208号 ','226031810',NULL,'武警天津市总队医院始建于2002年，坐落在河东区卫国道208号，北靠顺驰太阳城居住区，东邻京津塘高速、天津滨海国际机场和空港经济区，交通便利，是一所综合性二级医院，被天津市劳动局批准为医疗、生育保险定点医院。目前医院拥有百余人的专业医疗技术团队，同时从知名医院聘请了多名副主任医师以上专家坐诊，设内科、内分泌科、骨科、普外科等重点科室，开设妇科、口腔科、肛肠科、中医科等专科门诊，B超室、内镜室等临床和医技科室以及健康体检中心、驾驶员服务中心。医院现有飞利浦WX4000双排螺旋CT、日本岛津胃肠X光机、美国GE立柱式拍片机、飞利浦彩色多普勒超声诊断仪、富士能EG-450电子胃镜、动态心电血压监护仪及运动平板、全自动生化分析仪、全自动血流变仪、全自动血球计数仪、等一批先进医疗设备。',NULL);
/*!40000 ALTER TABLE `hospital` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hospital_department`
--

DROP TABLE IF EXISTS `hospital_department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hospital_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hid` int(11) NOT NULL,
  `dep_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`hid`,`dep_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hospital_department`
--

LOCK TABLES `hospital_department` WRITE;
/*!40000 ALTER TABLE `hospital_department` DISABLE KEYS */;
INSERT INTO `hospital_department` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,4,1),(6,4,5),(7,10,2),(8,10,6),(9,10,7),(10,16,7),(11,16,8),(12,16,9),(13,16,10),(14,16,3);
/*!40000 ALTER TABLE `hospital_department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `sex` enum('男','女') DEFAULT NULL,
  `birth` varchar(25) DEFAULT NULL,
  `telephone` int(11) DEFAULT NULL,
  `id_card` int(20) DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `bank_card` int(20) DEFAULT NULL,
  `account` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `validateCode` varchar(50) NOT NULL,
  `signupTime` date NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'user1',NULL,NULL,NULL,NULL,'1234@qq.com','96e79218965eb72c92a549dd5a330112',NULL,NULL,1,'88d5cb704d88bdad67d000eee4782000','2016-05-26');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-06-06 22:43:31
