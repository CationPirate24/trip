/*
Navicat Oracle Data Transfer
Oracle Client Version : 11.2.0.1.0

Source Server         : trip
Source Server Version : 110200
Source Host           : localhost:1521
Source Schema         : TRIP

Target Server Type    : ORACLE
Target Server Version : 110200
File Encoding         : 65001

Date: 2016-10-10 01:04:49
*/


-- ----------------------------
-- Table structure for MY_ACCOUNT
-- ----------------------------
DROP TABLE "TRIP"."MY_ACCOUNT";
CREATE TABLE "TRIP"."MY_ACCOUNT" (
"ID" VARCHAR2(32 BYTE) NOT NULL ,
"USERNAME" VARCHAR2(50 BYTE) NULL ,
"PASSWORD" VARCHAR2(50 BYTE) NULL ,
"NAME" VARCHAR2(100 BYTE) NULL ,
"AGE" VARCHAR2(3 BYTE) NULL ,
"SEX" CHAR(1 BYTE) NULL ,
"E_MAIL" VARCHAR2(50 BYTE) NULL ,
"PHONE" CHAR(11 BYTE) NULL ,
"MONEY" VARCHAR2(10 BYTE) NULL ,
"PICTURE" VARCHAR2(50 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of MY_ACCOUNT
-- ----------------------------
INSERT INTO "TRIP"."MY_ACCOUNT" VALUES ('ddb8e7a902b1401e99ad373833076e6f', 'sed', '123', '啊啊', '23', 'B', 'aa@163.com', '1524859685 ', null, 'a2f39742f52d46d7a69e3a3cf9c700bc.jpg');
INSERT INTO "TRIP"."MY_ACCOUNT" VALUES ('d35fe13ac3ec40af937bfe18293539b8', 'zs', 'zs', '宋维旭', '22', 'A', '164546824@qq.com', '18037323665', '300', null);
INSERT INTO "TRIP"."MY_ACCOUNT" VALUES ('569236ebf25f437bab329d3c20168670', 'rfv', '4321', '宝贝', null, 'B', null, null, null, null);
INSERT INTO "TRIP"."MY_ACCOUNT" VALUES ('7f825a065bda43af960447bc697b641a', 'qqwer', '123', '查出', null, 'A', null, null, null, null);
INSERT INTO "TRIP"."MY_ACCOUNT" VALUES ('cbd705c3cc904b2a9a9ad81776f6bc43', 'qasw', '123', '谔谔', null, 'B', null, null, null, null);
INSERT INTO "TRIP"."MY_ACCOUNT" VALUES ('ec3c1e2d2cf34fd39a2b03a05544f903', 'qazw3', '123', '方法', null, 'A', null, null, null, null);
INSERT INTO "TRIP"."MY_ACCOUNT" VALUES ('83a098046d864fc186bd22ead88798c1', 'wy', '321', '故宫', null, 'A', null, null, null, null);

-- ----------------------------
-- Table structure for MY_CITY
-- ----------------------------
DROP TABLE "TRIP"."MY_CITY";
CREATE TABLE "TRIP"."MY_CITY" (
"ID" VARCHAR2(32 BYTE) NOT NULL ,
"NAME" VARCHAR2(100 BYTE) NULL ,
"PICTURE_ID" VARCHAR2(36 BYTE) NULL ,
"DESCRIBE" VARCHAR2(2000 BYTE) NULL ,
"MAP" VARCHAR2(36 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of MY_CITY
-- ----------------------------
INSERT INTO "TRIP"."MY_CITY" VALUES ('22af4c40b44c4bc589407ccdf383dab8', '杭州', '6b83f16fa0714d33acdad99f399b84c4.jpg', '有西湖', '694e739e3cf14bd5b46938133da02a34.jpg');
INSERT INTO "TRIP"."MY_CITY" VALUES ('017a88e89dcb4de3aeedd73bb2e584ba', '上饶', '8ac5c324fdab4210abc632249dc9db9a.jpg', '山美，水美，人更美！', '264ece0c02b44371864864a0c71c0d17.jpg');
INSERT INTO "TRIP"."MY_CITY" VALUES ('8c1badef811b4a0fba901c6c3669ba60', '上海', 'dfb50b5f1170448fb4c7d6c0e8c314fb.jpg', '而非的收入图亚特怒', 'f4f89956b6cc43a2ac8f7b89feb387d4.jpg');
INSERT INTO "TRIP"."MY_CITY" VALUES ('42c2d02476fa464d802855f41cdb2811', '广州', 'fcb0753b0e7b43998f9e759a9df1aa01.jpg', '按时打算带有', '109a315415d24600b25c05fe8cb270bf.jpg');
INSERT INTO "TRIP"."MY_CITY" VALUES ('b5835a41049d4d2592e556fcd11ea323', '北京', 'eda21faf0261475a9b829c9bbf046f08.jpg', '请问如何三法师讲法律', 'a59e3d7f209444e78c2a12abdd9ad373.jpg');
INSERT INTO "TRIP"."MY_CITY" VALUES ('c3d0c4d2320e40ba9bf41928f21a600e', '台州', 'e8a43d3ff03c4ab8bcb1864718cbbc1c.jpg', '问题而有人要', 'eaf5fa27ecce463aab36a22a3e89bc46.jpg');
INSERT INTO "TRIP"."MY_CITY" VALUES ('31e014dd707f454a82fa3235d6f64862', '成都', 'b9ce2f9044354516ad618f81f6f644bd.jpg', '确认维特如体育', '2f8dc57d8b5b404c80c6e7378aba4eb1.jpg');
INSERT INTO "TRIP"."MY_CITY" VALUES ('a3f10d09d36a4c7cb57fd68f6856bbcb', '深圳', '8c419e8d308c43918b26c6950c6f7fe8.jpg', '确认为', '28b4309d0b1d41979514b6b56010342d.jpg');
INSERT INTO "TRIP"."MY_CITY" VALUES ('1649242ee2434be58e9555e30435e623', '郑州', 'fcec4653f3834eb38cc21f13b7c3674f.jpg', '爱的委托人和人体', '8045ace1141244dd820237083cf6659d.jpg');
INSERT INTO "TRIP"."MY_CITY" VALUES ('e5f1d14047b741a2b16aae8a323b76b9', '洛阳', '93ceb322e9e545428a9dffe1ced3d0fb.jpg', '去我认为特如同用投影', '9e15f842239043c691b0c96d2b437abf.jpg');
INSERT INTO "TRIP"."MY_CITY" VALUES ('a7400829852e432d96cfe054477f428f', '信阳', '6d56e0e6bb764e7a9ca27956242cb29b.jpg', null, '849cd6081c504d488971730c17fa3630.jpg');
INSERT INTO "TRIP"."MY_CITY" VALUES ('aee64a36c05d4005b28628ce8bb81b43', '青岛', '33a36e55690447ae9c446a41b59b6787.jpg', '大发光荣日合同已投入', '1657ea6e589941c58bf4da73b2223fb9.jpg');
INSERT INTO "TRIP"."MY_CITY" VALUES ('3b2671e82d9a4dfbbb66b23758c2a7a9', '西安', '04b1bc2ef4874b708b0e6d8cc0d68fda.jpg', '亲人呃太容易', '5e359bb611ac40f7892decc0697a973c.jpg');
INSERT INTO "TRIP"."MY_CITY" VALUES ('f40f852238d048d791dad5930836ff19', '香港', 'e1c3d472eac8459e89042bd9f006e41a.jpg', '案发任务同仁堂', 'ab62ae3adb58467191b5949c80b2f033.jpg');
INSERT INTO "TRIP"."MY_CITY" VALUES ('14e1abc9e33d4968a0e47b818c3b29e9', '澳门', 'af67c7b6fafc402cbab3ead24846d8d8.jpg', '奥数的红色的覅问题', '7ec94c0f8cac459080ee084b23eb3904.jpg');
INSERT INTO "TRIP"."MY_CITY" VALUES ('9ca24282c519471abb52c4c508ffba96', '烟台', 'aac7e395a3874cd0b94314c24b484549.jpg', '确认问题企业·', 'b0ec5a2ff23f4bba88dcfd157d3993b6.jpg');
INSERT INTO "TRIP"."MY_CITY" VALUES ('b7e9d9585ce845cf917ca427706fb7e9', '日照', 'eb59197de1b64ad9be8321bd2bd839fb.jpg', '去污染问题唯一', '0b4f7689414145f7ab1c1c9dbaa6060e.jpg');

-- ----------------------------
-- Table structure for MY_CODE
-- ----------------------------
DROP TABLE "TRIP"."MY_CODE";
CREATE TABLE "TRIP"."MY_CODE" (
"ID" VARCHAR2(32 BYTE) NOT NULL ,
"MY_KEY" CHAR(1 BYTE) NULL ,
"MY_VALUE" VARCHAR2(100 BYTE) NULL ,
"TYPE" VARCHAR2(50 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of MY_CODE
-- ----------------------------
INSERT INTO "TRIP"."MY_CODE" VALUES ('569236ebf25f437bab329d3c20168671', 'A', '男', 'SEX');
INSERT INTO "TRIP"."MY_CODE" VALUES ('569236ebf25f437bab329d3c20168672', 'B', '女', 'SEX');
INSERT INTO "TRIP"."MY_CODE" VALUES ('a7f9ee2898564b149b92a566a077f292', 'A', '超级管理员', 'MANAGER');
INSERT INTO "TRIP"."MY_CODE" VALUES ('a7f9ee2898564b149b92a566a077f293', 'D', '酒店管理员', 'MANAGER');
INSERT INTO "TRIP"."MY_CODE" VALUES ('a7f9ee2898564b149b92a566a077f294', 'C', '景点管理员', 'MANAGER');
INSERT INTO "TRIP"."MY_CODE" VALUES ('a7f9ee2898564b149b92a566a077f295', 'B', '美食管理员', 'MANAGER');
INSERT INTO "TRIP"."MY_CODE" VALUES ('a7f9ee2898564b149b92a566a077f296', 'A', '目的地评论', 'COMMENT');
INSERT INTO "TRIP"."MY_CODE" VALUES ('a7f9ee2898564b149b92a566a077f297', 'B', '酒店评论', 'COMMENT');
INSERT INTO "TRIP"."MY_CODE" VALUES ('a7f9ee2898564b149b92a566a077f298', 'C', '景点评论', 'COMMENT');
INSERT INTO "TRIP"."MY_CODE" VALUES ('a7f9ee2898564b149b92a566a077f299', 'D', '美食评论', 'COMMENT');
INSERT INTO "TRIP"."MY_CODE" VALUES ('affe2052304841c895badc95e421ceb1', 'A', '山河湖泊', 'INTEREST');
INSERT INTO "TRIP"."MY_CODE" VALUES ('affe2052304841c895badc95e421ceb2', 'B', '古代建筑', 'INTEREST');
INSERT INTO "TRIP"."MY_CODE" VALUES ('affe2052304841c895badc95e421ceb3', 'C', '乡土风俗', 'INTEREST');
INSERT INTO "TRIP"."MY_CODE" VALUES ('affe2052304841c895badc95e421ceb4', 'D', '现代都市', 'INTEREST');
INSERT INTO "TRIP"."MY_CODE" VALUES ('affe2052304841c895badc95e421ceb5', 'E', '海洋沙滩', 'INTEREST');
INSERT INTO "TRIP"."MY_CODE" VALUES ('affe2052304841c895badc95e421ceb6', 'F', '人文科技', 'INTEREST');
INSERT INTO "TRIP"."MY_CODE" VALUES ('a7f9ee2898564b149b92a566a077f290', 'F', '用户管理员', 'MANAGER');
INSERT INTO "TRIP"."MY_CODE" VALUES ('344d2fdbe0704f25b6fbc9403b3a54d1', 'A', '川菜', 'FOOD');
INSERT INTO "TRIP"."MY_CODE" VALUES ('344d2fdbe0704f25b6fbc9403b3a54d2', 'B', '粤菜', 'FOOD');
INSERT INTO "TRIP"."MY_CODE" VALUES ('344d2fdbe0704f25b6fbc9403b3a54d3', 'C', '鲁菜', 'FOOD');
INSERT INTO "TRIP"."MY_CODE" VALUES ('344d2fdbe0704f25b6fbc9403b3a54d4', 'D', '湘菜', 'FOOD');
INSERT INTO "TRIP"."MY_CODE" VALUES ('344d2fdbe0704f25b6fbc9403b3a54d5', 'E', '徽菜', 'FOOD');
INSERT INTO "TRIP"."MY_CODE" VALUES ('344d2fdbe0704f25b6fbc9403b3a54d6', 'F', '东北菜', 'FOOD');
INSERT INTO "TRIP"."MY_CODE" VALUES ('344d2fdbe0704f25b6fbc9403b3a54d7', 'G', '陕西小吃', 'FOOD');
INSERT INTO "TRIP"."MY_CODE" VALUES ('75771c7d826f4711ae6c332ce93be731', 'A', '别墅', 'HOTEL');
INSERT INTO "TRIP"."MY_CODE" VALUES ('75771c7d826f4711ae6c332ce93be732', 'B', '公寓', 'HOTEL');
INSERT INTO "TRIP"."MY_CODE" VALUES ('75771c7d826f4711ae6c332ce93be733', 'C', '套房', 'HOTEL');
INSERT INTO "TRIP"."MY_CODE" VALUES ('75771c7d826f4711ae6c332ce93be734', 'D', '海景房', 'HOTEL');
INSERT INTO "TRIP"."MY_CODE" VALUES ('8da4493c758d4d3cb62ef7382fdc6fe2', 'E', '目的地管理员', 'MANAGER');

-- ----------------------------
-- Table structure for MY_COMMENT
-- ----------------------------
DROP TABLE "TRIP"."MY_COMMENT";
CREATE TABLE "TRIP"."MY_COMMENT" (
"ID" VARCHAR2(32 BYTE) NOT NULL ,
"USERNAME" VARCHAR2(50 BYTE) NULL ,
"DESCRIBE" VARCHAR2(2000 BYTE) NULL ,
"GRADE" VARCHAR2(5 BYTE) NULL ,
"TIME" VARCHAR2(20 BYTE) NULL ,
"PICTURE_ID" VARCHAR2(32 BYTE) NULL ,
"TITLE" VARCHAR2(100 BYTE) NULL ,
"ACCOUNT_ID" VARCHAR2(32 BYTE) NULL ,
"TYPE" CHAR(1 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of MY_COMMENT
-- ----------------------------
INSERT INTO "TRIP"."MY_COMMENT" VALUES ('ddaf774bbea243d19df82bff511f7867', 'adf', '实际上住在城里的住户已经不多了，现在整座城几乎都是卖观光客的商店，商业气息过重，如果你以为这里是个纯朴的古城，那肯定要失望了。', '4', '2016-10-04', '22', '真实不错', null, 'A');
INSERT INTO "TRIP"."MY_COMMENT" VALUES ('8424f80b8ca147ef91572432908e4186', 'cbd', '
名古屋市政資料館位於名古屋城／名古屋市政廳附近，搭地鐵到政役所站下車往東步行約8分鐘可到。其前身為法...', '4', '2016-10-04', '22', '前身是法院', null, 'A');
INSERT INTO "TRIP"."MY_COMMENT" VALUES ('7ae1ca28bf17446ab60c5097c779a969', 'ccd', '它的存在见证了曾经繁荣的历史，古典美的吊脚楼和古街石板街道~让我不禁想到「芙蓉镇」这部电影也是以附近城镇人民生活风土民情为背景~很一些文学相接联想(沈从文-边城)~古意盎然,很可惜当天游客人多加上是下雨天阿！实在扫兴！不过还是很能从随意瞄到的某片情景去体验它的美！好想住在里面的民宿~好想在人少的时候好好逛~和看上一本关于此风情的文学书！ ', '4', '2016-10-04', '22', '人多下雨扫兴！不过还是很能从随意瞄到的某片情景去体验它的美', null, 'A');
INSERT INTO "TRIP"."MY_COMMENT" VALUES ('024dc5fdfdba4be6a41011e6c1d2fddf', 'abd', '晚上在那里照了好多照片，只洗了3张，穿着苗族的衣服照的（脏兮兮的衣服），灯火辉煌，很多酒吧，简直是个不夜城，渐渐没有古城的气息了。 ', '4', '2016-10-04', '22', '要去乘早', null, 'B');
INSERT INTO "TRIP"."MY_COMMENT" VALUES ('5ba65c2257b548f095d34e6e52c6ff79', 'sdf', '吃完一碗热乎乎的牛杂粉，全身都暖了，旅馆转角的老宅粉馆，汤头鲜，牛肉都切得均匀且分量好足，赞！@careless的bro先 @糖小妹soy @岢米籽 @BEAN祝福BEAN快乐', '4', '2016-10-04', '22', '吃完一碗热乎乎的牛杂粉，全身都暖了，旅馆转角的老宅粉馆，汤头', null, 'A');
INSERT INTO "TRIP"."MY_COMMENT" VALUES ('3bb3453827aa43d5a1cedf4dee00fcb4', 'jkl', '饭店的名字取得很有特色，被吸引过去了。菜很好吃，很有湖南风味。和老婆一起吃了很多，吃的很饱，价格也还不算贵，物有所值哦。 ', '3.5', '2016-10-04', '$ic.pictureId}', '边城小厨', null, 'A');
INSERT INTO "TRIP"."MY_COMMENT" VALUES ('0f73f369a5024c4580c7540e9af6f286', 'aj', '位置特别的好，在吊脚楼群，靠窗的位子都是江边。
唯独爱他家一款饮品“爱馥卡朵”，就是焦糖玛奇朵上有一球冰淇淋，可惜回了北京再也喝不到了…… ', '4', '2016-10-04', '22', '爱馥卡朵好好喝！', null, 'A');
INSERT INTO "TRIP"."MY_COMMENT" VALUES ('f3f4dc71f86342f98e3ac15235d3ef35', 'mmd', '我在Soul Cafe(回龙阁店)(签到1次)：味道也一般吧！服务态度不怎么地，不能抽烟不能打牌，还冷！价格也不便宜！ ', '4', '2016-10-04', '22', '味道也一般吧', null, 'A');
INSERT INTO "TRIP"."MY_COMMENT" VALUES ('affe2052304841c895badc95e421ceb0', 'uzil', '高原红艺术酒店离古城很近，晚上要逛古城的酒吧很方便，酒店里面的布局很好，又配有电脑和电话，长途免费打，总体很满意！', '4', '2016-10-04', '22', '非常好的酒店', null, 'A');
INSERT INTO "TRIP"."MY_COMMENT" VALUES ('09b5c36ac17f45bb92e293aebfab4e02', 'mt', '里面的设施比较好，就像房间的地毯踩上去给人特别舒服，浴室还有防滑的措施，给人挺温馨的，灯光的设计进去感觉家一样，灯光不是很强烈，比较柔和的那种，房间的挂饰桌椅的摆放感觉像家里一样，感觉挺舒服的，价位挺高的，找的话好找，也算市中心的一个地方，房间隔音效果不会觉得嘈杂，里面还是挺安静的，没有受到外界的干扰。 ', '4', '2016-10-04', '22', '设施舒适，位置好，隔音好', null, 'A');
INSERT INTO "TRIP"."MY_COMMENT" VALUES ('295c7f127e5e49d788bed04435325215', 'fk', '感觉还可以，床舒服、房间还比较干净应该是新装修的吧，下次来的话会选这家酒店，另外谢谢服务员，态度很好！离古城近晚上在门口左边下去有烧烤一条街，最重要的是有停车场嘻嘻！', '4', '2016-10-04', '258', '性价比高', null, 'A');
INSERT INTO "TRIP"."MY_COMMENT" VALUES ('2357025a56744a8b9d512e6a4ab8960c', 'pawn', '房间的窗户封闭不大好，扣开了，晚上睡觉的时候有点害怕。里面的设施住的挺舒服的，电视挺好的，不提供一次性洗刷用具，要花钱买。过去比较晚，员工态度、精神面貌还可以。早餐是湖南特色，和山东不是很一样，也能接受。', '4', '2016-10-04', '22', '设施还不错', null, 'A');
INSERT INTO "TRIP"."MY_COMMENT" VALUES ('1d85db08c3c845da8c5c9152180392b6', 'cc', '还算不错的酒店，就是位置离开凤凰古城有点距离，打车过去10元吧。卫生和淋浴都挺舒服的，酒店设施还算不错，算得上三星半的标准吧，酒店也比较干净。酒店里有提供凤凰和湘西的介绍，蛮实用的，那天晚上才读到，觉得之前没好好读读有点可惜。值得一提的是早餐，实在是有点差，住了这么多酒店，从来没见过早饭没鸡蛋的，竟然是炖蛋！算是最大的不足吧', '4', '2016-10-04', '22', '早饭差了点', null, 'A');

-- ----------------------------
-- Table structure for MY_FOOD
-- ----------------------------
DROP TABLE "TRIP"."MY_FOOD";
CREATE TABLE "TRIP"."MY_FOOD" (
"ID" VARCHAR2(32 BYTE) NOT NULL ,
"NAME" VARCHAR2(100 BYTE) NULL ,
"PRICE" VARCHAR2(10 BYTE) NULL ,
"DESCRIBE" VARCHAR2(2000 BYTE) NULL ,
"GRADE" VARCHAR2(5 BYTE) NULL ,
"TYPE" VARCHAR2(100 BYTE) NULL ,
"PICTURE_ID" VARCHAR2(50 BYTE) NULL ,
"ADDRESS" VARCHAR2(100 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of MY_FOOD
-- ----------------------------
INSERT INTO "TRIP"."MY_FOOD" VALUES ('6374e734b413434fbe76d2f179e9692f', 'qwer213', '20', '川菜风格朴实而又清新', '++++', 'A', 'cbb8c47a3ad5451d841ce8655fdb7f69.jpg', '42c2d02476fa464d802855f41cdb2811');
INSERT INTO "TRIP"."MY_FOOD" VALUES ('d59cb54a985946f3a7a24b07ac052eeb', 'qwe', '10', '2', '2132', 'B', 'f938db4b02384837b545102685d1af3f.jpg', '8c1badef811b4a0fba901c6c3669ba60');
INSERT INTO "TRIP"."MY_FOOD" VALUES ('319891882e2f4f6f9df5eee62193211b', '梅干菜蒸肉', '160', '肥而不腻', '0', 'E', '8eda42e5531d4f2cb50587657eb386bb.jpg', 'c3d0c4d2320e40ba9bf41928f21a600e');
INSERT INTO "TRIP"."MY_FOOD" VALUES ('3', '南京酸菜鱼', '40', '鱼肉香嫩，酸爽可口，是一道富有特色的美食', '*****', 'D', 'f6ca146967a24104841adf28f46bdfce.jpg', 'b5835a41049d4d2592e556fcd11ea323');
INSERT INTO "TRIP"."MY_FOOD" VALUES ('1', '北京烤鸭', '50', '历史悠久，烤鸭口感让人赞不绝口', '*****', 'E', '7bddb2fc7be846c4be9e8f9e68f934e0.jpg', 'b5835a41049d4d2592e556fcd11ea323');
INSERT INTO "TRIP"."MY_FOOD" VALUES ('2', '天津狗不理包子', '80', '口感独特，回味无穷，让人称赞不绝的包子', '****', 'F', null, '31e014dd707f454a82fa3235d6f64862');
INSERT INTO "TRIP"."MY_FOOD" VALUES ('5', 'q', '90', null, null, 'G', null, 'a3f10d09d36a4c7cb57fd68f6856bbcb');
INSERT INTO "TRIP"."MY_FOOD" VALUES ('4', 'w', null, null, null, 'B', null, '1649242ee2434be58e9555e30435e623');
INSERT INTO "TRIP"."MY_FOOD" VALUES ('6', 'e', null, null, null, 'C', null, 'e5f1d14047b741a2b16aae8a323b76b9');
INSERT INTO "TRIP"."MY_FOOD" VALUES ('7', 'r', null, null, null, 'D', null, 'a7400829852e432d96cfe054477f428f');
INSERT INTO "TRIP"."MY_FOOD" VALUES ('8', 'e', null, null, null, 'F', null, 'aee64a36c05d4005b28628ce8bb81b43');
INSERT INTO "TRIP"."MY_FOOD" VALUES ('10', null, null, null, null, 'G', null, '14e1abc9e33d4968a0e47b818c3b29e9');
INSERT INTO "TRIP"."MY_FOOD" VALUES ('11', null, null, null, null, 'E', null, '9ca24282c519471abb52c4c508ffba96');
INSERT INTO "TRIP"."MY_FOOD" VALUES ('12', null, null, null, null, 'B', null, 'b7e9d9585ce845cf917ca427706fb7e9');
INSERT INTO "TRIP"."MY_FOOD" VALUES ('06b1efe7841b491ebb4777531ce5c039', '大盘鸡', '65', '就一个字：香！', '0', 'C', '70ed92cb856d44a78dd2dc9d8a8e02fc.jpg', '1649242ee2434be58e9555e30435e623');

-- ----------------------------
-- Table structure for MY_HOTEL
-- ----------------------------
DROP TABLE "TRIP"."MY_HOTEL";
CREATE TABLE "TRIP"."MY_HOTEL" (
"ID" VARCHAR2(32 BYTE) NOT NULL ,
"NAME" VARCHAR2(100 BYTE) NULL ,
"PRICE" VARCHAR2(100 BYTE) NULL ,
"BEGIN_TIME" VARCHAR2(20 BYTE) NULL ,
"END_TIME" VARCHAR2(20 BYTE) NULL ,
"TOTAL" VARCHAR2(100 BYTE) NULL ,
"DESCRIBE" VARCHAR2(2000 BYTE) NULL ,
"COUNT" VARCHAR2(100 BYTE) NULL ,
"PICTURE_ID" VARCHAR2(50 BYTE) NULL ,
"MAP_ID" VARCHAR2(50 BYTE) NULL ,
"GRADE" VARCHAR2(3 BYTE) NULL ,
"TYPE" VARCHAR2(10 BYTE) NULL ,
"MY_CITY_ID" VARCHAR2(32 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of MY_HOTEL
-- ----------------------------
INSERT INTO "TRIP"."MY_HOTEL" VALUES ('ef99fcfbd03c4e72ba87f7846a0d5662', '简直醉了', '888', null, null, null, '只要888，就能让你爽到不能呼吸！', null, 'dd62bc7474a745c1ab4e2bf946d7cb3d.jpg', 'fcabd23e9b2649bc8b35144bbdae77b3.jpg', null, 'D', 'aee64a36c05d4005b28628ce8bb81b43');
INSERT INTO "TRIP"."MY_HOTEL" VALUES ('812a01fd268e41f6b7583f59eeac7201', '龙门客栈', '999', null, null, null, '想不想吃人肉包子', null, '6279065ba138482eac8b1da8b94db3e6.jpg', 'ca5521770de64e8bbab14268a75c5c55.jpg', null, 'A', '3b2671e82d9a4dfbbb66b23758c2a7a9');
INSERT INTO "TRIP"."MY_HOTEL" VALUES ('002', '8天酒店', '80', null, null, null, '方便便宜', null, '0c579223473d4246be302aec0714a000.jpg', '2543b8f4c7774a068708f50b37133cb1.jpg', '8', 'A', 'c3d0c4d2320e40ba9bf41928f21a600e');
INSERT INTO "TRIP"."MY_HOTEL" VALUES ('d4f2a4a908104731aa04189f6f70f923', '去玩儿', '92', null, null, null, '23', '23', 'fecb69d5e13545d0aaa891f8c1395ce7.bmp', 'e677e80d1d7d4d138445a7baf5e7fccc.bmp', '23', 'A', '31e014dd707f454a82fa3235d6f64862');
INSERT INTO "TRIP"."MY_HOTEL" VALUES ('f02a7e227a0c49d39f3d0c171d2f722f', 'y酒店', '980', null, null, null, '好得很', '23', 'ca0109978e544445aeb8572f703f2529.bmp', 'ee633e19d29040bfb79194f193c6214a.bmp', '9.5', 'B', 'a3f10d09d36a4c7cb57fd68f6856bbcb');
INSERT INTO "TRIP"."MY_HOTEL" VALUES ('c96c0d06f56e40da98260aaa1b65ee43', 'dddddd', '30', null, null, null, '都测测测', '100', '00d0c23aa2cd4088ba5f3c41d0e91ec4.jpg', '778c272b6a2c4033924420185541c464.jpg', '0', 'D', 'e5f1d14047b741a2b16aae8a323b76b9');
INSERT INTO "TRIP"."MY_HOTEL" VALUES ('cbe6a46f67ec448fb838d48631019f27', '七天连锁酒店', '180', null, null, null, '一个字，烂', '100', '7f3a06c177084a2487fd05c9801d5ade.jpg', '775ed3edd8fb48969f3d39c3e4d7e6c4.jpg', '0', 'B', '1649242ee2434be58e9555e30435e623');
INSERT INTO "TRIP"."MY_HOTEL" VALUES ('c7442003ac854b729e3c282382f3c8d6', '希尔顿国际酒店', '560', null, null, null, '各种套房，别墅！', '100', 'c8198f916c994dc69f5eb20854b92ee2.jpg', '5d16bad5d21349399f314810eb1cf6b0.jpg', '0', 'C', '8c1badef811b4a0fba901c6c3669ba60');

-- ----------------------------
-- Table structure for MY_INTEREST
-- ----------------------------
DROP TABLE "TRIP"."MY_INTEREST";
CREATE TABLE "TRIP"."MY_INTEREST" (
"ID" VARCHAR2(32 BYTE) NOT NULL ,
"NAME" VARCHAR2(100 BYTE) NULL ,
"PRICE" VARCHAR2(20 BYTE) NULL ,
"DESCRIBE" VARCHAR2(2000 BYTE) NULL ,
"PICTURE_ID" VARCHAR2(50 BYTE) NULL ,
"MAP_ID" VARCHAR2(50 BYTE) NULL ,
"GRADE" VARCHAR2(5 BYTE) NULL ,
"INTEREST_TYPE" VARCHAR2(10 BYTE) NULL ,
"MY_CITY_ID" VARCHAR2(32 BYTE) NULL ,
"ADDRESS" VARCHAR2(100 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of MY_INTEREST
-- ----------------------------
INSERT INTO "TRIP"."MY_INTEREST" VALUES ('2cd2d1f99c564034b3124dca9b308c84', '故宫', '50', '北京故宫是中国明清两代的皇家宫殿，旧称为紫禁城，位于北京中轴线的中心，是中国古代宫廷建筑之精华。北京故宫以三大殿为中心，占地72万平方米，建筑面积约15万平方米，有大小宫殿七十多座，房屋九千余间。是世界上现存规模最大、保存最为完整的木质结构古建筑之一。
北京故宫于明成祖永乐四年（1406年）开始建设，以南京故宫为蓝本营建，到永乐十八年（1420年）建成。它是一座长方形城池，南北长961米，东西宽753米，四面围有高10米的城墙，城外有宽52米的护城河。紫禁城内的建筑分为外朝和内廷两部分。外朝的中心为太和殿、中和殿、保和殿，统称三大殿，是国家举行大典礼的地方。内廷的中心是乾清宫、交泰殿、坤宁宫，统称后三宫，是皇帝和皇后居住的正宫。 
北京故宫被誉为世界五大宫之首（北京故宫、法国凡尔赛宫、英国白金汉宫、美国白宫、俄罗斯克里姆林宫），已被列为世界文化遗产、全国重点文物保护单位、国家AAAAA级旅游景区。', 'de9c3e4cab8140e68ab905156bd94bed.jpg', 'd5bd4bef9e01496fa9bf1165b9f4c715.jpg', '4', 'B,C', 'b5835a41049d4d2592e556fcd11ea323', '北京市东城区景山前街4号');
INSERT INTO "TRIP"."MY_INTEREST" VALUES ('be647df74e9f4d32b918e7644968392d', '长城', '50', '长城（Great Wall）又称万里长城，是中国古代的军事防御工程。长城修筑的历史可上溯到西周时期，发生在首都镐京（今陕西西安）的著名的典故“烽火戏诸侯”就源于此。春秋战国时期列国争霸，互相防守，长城修筑进入第一个高潮，但此时修筑的长度都比较短。秦灭六国统一天下后，秦始皇连接和修缮战国长城，始有万里长城之称。明朝是最后一个大修长城的朝代，今天人们所看到的长城多是此时修筑。 
长城资源主要分布在河北、北京、天津、山西、陕西、甘肃、内蒙古、黑龙江、吉林、辽宁、山东、河南、青海、宁夏、新疆等15个省区市。根据此前文物和测绘部门的全国性长城资源调查结果，明长城总长度为8851.8千米，秦汉及早期长城超过1万千米，总长超过2.1万千米。 
1961年3月4日，长城被国务院公布为第一批全国重点文物保护单位[4]  。1987年12月，长城被列入世界文化遗产。', '037e52c2728e441497a5f724740d8670.jpg', '74ea9615f789461caefc134d665c51d1.jpg', '4', 'B,D,F', '42c2d02476fa464d802855f41cdb2811', null);
INSERT INTO "TRIP"."MY_INTEREST" VALUES ('cca168de6c62442e92c45893f4172ad9', '天安门', '60', '天安门，坐落在中华人民共和国首都北京市的中心、故宫的南端，与天安门广场以及人民英雄纪念碑、毛主席纪念堂、人民大会堂、中国国家博物馆隔长安街相望，占地面积4800平方米，以杰出的建筑艺术和特殊的政治地位为世人所瞩目。
天安门是明清两代北京皇城的正门，始建于明朝永乐十五年（1417年），最初名“承天门”，寓“承天启运、受命于天”之意。设计者为明代御用建筑匠师蒯祥。清朝顺治八年（1651年）更名为天安门。由城台和城楼两部分组成，有汉白玉石的须弥座，总高34.7米。天安门城楼长66米、宽37米。城台下有券门五阙，中间的券门最大，位于北京皇城中轴线上，过去只有皇帝才可以由此出入。正中门洞上方悬挂着毛泽东画像，两边分别是“中华人民共和国万岁”和“世界人民大团结万岁”的大幅标语。 
民国十四年（1925年）十月十日月，故宫博物院成立，天安门开始对民众开放。1949年10月1日，在这里举行了中华人民共和国开国大典，由此被设计入国徽，并成为中华人民共和国的象征。1961年，中华人民共和国国务院公布为第一批全国重点文物保护单位之一。', '22', '11', '4', 'A,E,F', 'b5835a41049d4d2592e556fcd11ea323', null);
INSERT INTO "TRIP"."MY_INTEREST" VALUES ('3e2f6fdbfc0f48c18f80b58ade784740', '鸟巢', '20', '国家体育场（鸟巢）位于北京奥林匹克公园中心区南部，为2008年北京奥运会的主体育场。工程总占地面积21公顷，场内观众坐席约为91000个。举行了奥运会、残奥会开闭幕式、田径比赛及足球比赛决赛。奥运会后成为北京市民参与体育活动及享受体育娱乐的大型专业场所，并成为地标性的体育建筑和奥运遗产。
体育场由雅克·赫尔佐格、德梅隆、艾未未以及李兴刚等设计，由北京城建集团负责施工。体育场的形态如同孕育生命的“巢”和摇篮，寄托着人类对未来的希望。设计者们对这个场馆没有做任何多余的处理，把结构暴露在外，因而自然形成了建筑的外观。
2003年12月24日开工建设，2008年3月完工，总造价22.67亿元。作为国家标志性建筑，2008年奥运会主体育场，国家体育场结构特点十分显著。体育场为特级体育建筑，大型体育场馆。主体结构设计使用年限100年，耐火等级为一级，抗震设防烈度8度，地下工程防水等级1级。
2014年4月中国当代十大建筑评审委员会从中国1000多座地标建筑中，综合年代、规模、艺术性和影响力四项指标，初评出二十个建筑。最终由此产生十大当代建筑。北京鸟巢——国家体育场为初评入围建筑之一。', '22', '11', '4', 'C', '31e014dd707f454a82fa3235d6f64862', null);
INSERT INTO "TRIP"."MY_INTEREST" VALUES ('a3eddfbc3eae49fca3b210215af3d2fe', '水立方', '80', '国家游泳中心又称“水立方”(Water Cube),位于北京奥林匹克公园内，是北京为2008年夏季奥运会修建的主游泳馆，也是2008年北京奥运会标志性建筑物之一。
它的设计方案，是经全球设计竞赛产生的“水的立方”([H2O]3)方案。其与国家体育场(俗称鸟巢)分列于北京城市中轴线北端的两侧，共同形成相对完整的北京历史文化名城形象。
国家游泳中心规划建设用地62950平方米，总建筑面积65000-80000平方米，其中地下部分的建筑面积不少于15000平方米,长宽高分别为 177m ×177m ×30m。
2008年奥运会期间，国家游泳中心承担游泳、跳水、花样游泳、水球等比赛，可容纳观众坐席17000座，其中永久观众坐席为6000座，奥运会期间增设临时性座位11000个(赛后将拆除)。赛后成为具有国际先进水平的、集游泳、运动、健身、休闲于一体的中心。', '22', '11', '3', 'C', 'a3f10d09d36a4c7cb57fd68f6856bbcb', null);
INSERT INTO "TRIP"."MY_INTEREST" VALUES ('5e51862799624aac8a2bcc00f8f02402', '东方明珠', '40', '东方明珠广播电视塔是上海的标志性文化景观之一，位于浦东新区陆家嘴，塔高约468米。该建筑于1991年7月兴建，1995年5月投入使用，承担上海6套无线电视发射业务，地区覆盖半径80公里。 
东方明珠广播电视塔是国家首批AAAAA级旅游景区。塔内有太空舱、旋转餐厅、上海城市历史发展陈列馆等景观和设施，1995年被列入上海十大新景观之一。', '22', '11', '4', 'C', '1649242ee2434be58e9555e30435e623', null);
INSERT INTO "TRIP"."MY_INTEREST" VALUES ('a7f9ee2898564b149b92a566a077f291', '滕王阁', '60', '滕王阁，江南三大名楼之一，位于江西省南昌市西北部沿江路赣江东岸，始建于唐朝永徽四年，因唐太宗李世民之弟——李元婴始建而得名，因初唐诗人王勃诗句“落霞与孤鹜齐飞，秋水共长天一色”而流芳后世。 
贞观年间，唐高祖李渊之子、唐太宗李世民之弟李元婴曾被封于山东滕州故为滕王，且于滕州筑一阁楼名以“滕王阁”（已被毁），后滕王李元婴调任江南洪州（今江西南昌），因思念故地滕州修筑了著名的“滕王阁”，此阁因王勃一首“滕王阁序”为后人熟知，成为永世的经典。
滕王阁与湖北武汉黄鹤楼、湖南岳阳楼并称为“江南三大名楼”。历史上的滕王阁先后共重建达29次之多，屡毁屡建。
2001年元月核准为首批国家AAAA级旅游景区。', '22', '11', '4', 'A', 'e5f1d14047b741a2b16aae8a323b76b9', null);
INSERT INTO "TRIP"."MY_INTEREST" VALUES ('8725d9aee5774c00903df3814bbe8245', '三清山', '70', '三清山又名少华山、丫山，位于中国江西省上饶市玉山县与德兴市交界处。因玉京、玉虚、玉华三峰宛如道教玉清、上清、太清三位尊神列坐山巅而得名。其中玉京峰为最高，海拔1819.9米，是江西第五高峰和怀玉山脉的最高峰，也是信江的源头。三清山是道教名山，世界自然遗产地、世界地质公园、国家自然遗产、国家地质公园。
三清山主体南北长12.2公里，东西宽6.3公里，平面呈荷叶形，由东南向西北倾斜。位于欧亚板块东南部的扬子古板块与华夏古板块结合带的怀玉山构造快体单元内。地处怀玉山脉腹地，属花岗岩构造侵蚀为主的中山地形。山势是东、南、西三面陡峻，北面稍缓。从山脚至山顶，水平距离5km，海拔由200m陡增至1816m。
三清山不同成因的花岗岩微地貌密集分布，展示了世界上已知花岗岩地貌中分布最密集、形态最多样的峰林；2373种高等植物、1728种野生动物，构成了东亚最具生物多样性的环境；1600余年的道教历史孕育了丰厚的道教文化内涵，按八卦布局的三清宫古建筑群，被国务院文物考证专家组评价为“中国古代道教建筑的露天博物馆”。
世界遗产大会认为：三清山在一个相对较小的区域内展示了独特花岗岩石柱与山峰，丰富的花岗岩造型石与多种植被、远近变化的景观及震撼人心的气候奇观相结合，创造了世界上独一无二的景观美学效果，呈现了引人入胜的自然美。《中国国家地理》杂志推选为“中国最美的五大峰林”之一；中美地质学家一致认为是“西太平洋边缘最美丽的花岗岩”。', '22', '11', '4', 'D', 'a7400829852e432d96cfe054477f428f', null);
INSERT INTO "TRIP"."MY_INTEREST" VALUES ('cbe1882689c4483f89a86c85b996b25b', '黄鹤楼', '40', '黄鹤楼位于湖北省武汉市长江南岸的武昌蛇山之巅，为国家5A级旅游景区，享有“天下江山第一楼“、”天下绝景“之称。黄鹤楼是武汉市标志性建筑，与晴川阁、古琴台并称“武汉三大名胜”。该建筑也与湖南岳阳楼、江西南昌滕王阁并称为“江南三大名楼”。 
黄鹤楼始建于三国时代吴黄武二年（公元223年）。唐代诗人崔颢在此题下《黄鹤楼》一诗，李白在此写下《黄鹤楼送孟浩然之广陵》，历代文人墨客在此留下了许多千古绝唱，使得黄鹤楼自古以来闻名遐迩。
黄鹤楼坐落在海拔61.7米的蛇山顶，京广铁路的列车从楼下呼啸而过。楼高5层，总高度51.4米，建筑面积3219平方米。黄鹤楼内部由72根圆柱支撑，外部有60个翘角向外伸展，屋面用10多万块黄色琉璃瓦覆盖构建而成。 
黄鹤楼楼外铸铜黄鹤造型、胜像宝塔、牌坊、轩廊、亭阁等一批辅助建筑，将主楼烘托得更加壮丽。主楼周围还建有白云阁、象宝塔、碑廊、山门等建筑。整个建筑具有独特的民族风格，散发出中国传统文化的精神、气质、神韵。它与蛇山脚下的武汉长江大桥交相辉映；登楼远眺，武汉三镇的风光尽收眼底。', '22', '11', '4', 'A', 'aee64a36c05d4005b28628ce8bb81b43', null);
INSERT INTO "TRIP"."MY_INTEREST" VALUES ('bd110f2d02954251b95bf452938c419b', 'eeeeee', '40', 'fffffffffffffsgbdcrfhn', '05bbd5278cc34addb3f242fb6b6669cb.jpg', '9c5750035a62479fba50210ea0369df0.jpg', '0', 'B,C,D', '3b2671e82d9a4dfbbb66b23758c2a7a9', 'dddddddddd');
INSERT INTO "TRIP"."MY_INTEREST" VALUES ('54f298afbe83402182362c1fccba8db1', '西湖', '30', '西湖，位于浙江省杭州市西面，是中国大陆首批国家重点风景名胜区和中国十大风景名胜之一。它是中国大陆主要的观赏性淡水湖泊之一，也是现今《世界遗产名录》中少数几个和中国唯一一个湖泊类文化遗产。
西湖三面环山，面积约6.39平方千米，东西宽约2.8千米，南北长约3.2千米，绕湖一周近15千米。湖中被孤山、白堤、苏堤、杨公堤分隔，按面积大小分别为外西湖、西里湖、北里湖、小南湖及岳湖等五片水面，苏堤、白堤越过湖面，小瀛洲、湖心亭、阮公墩三个小岛鼎立于外西湖湖心，夕照山的雷峰塔与宝石山的保俶塔隔湖相映，由此形成了“一山、二塔、三岛、三堤、五湖”的基本格局。', 'e7a4964c92e74f498df64a752d7a1c9e.jpg', '39a00390af3d4db1abde9e438dc3ce24.jpg', '4', 'A,C', '22af4c40b44c4bc589407ccdf383dab8', null);
INSERT INTO "TRIP"."MY_INTEREST" VALUES ('b0a98f2f877c4aef9bb87541e78876fc', '葛仙山', '30', '道教圣地', '678294815c624a7fb52996a603c69c7f.jpg', '22da52aa84d04a068cd79c204f8b96e9.jpg', '0', 'B,C,F', '017a88e89dcb4de3aeedd73bb2e584ba', '上饶市铅山县');
INSERT INTO "TRIP"."MY_INTEREST" VALUES ('d8b7724af5fd45f7aa5fca4121838456', '少林寺', '60', '佛家重地', 'ec4f56c154e7418498f3d7328955f870.jpg', '8236892d8a1d4dc9b2f955233e48aa38.jpg', '0', 'B,F', '017a88e89dcb4de3aeedd73bb2e584ba', '郑州登封');
INSERT INTO "TRIP"."MY_INTEREST" VALUES ('75771c7d826f4711ae6c332ce93be73a', '明十三陵', '110', '明十三陵，世界文化遗产，全国重点文物保护单位，国家重点风景名胜区，国家AAAAA级旅游景区。
明十三陵坐落于北京市昌平区天寿山麓，总面积一百二十余平方公里，距离天安门约五十公里。十三陵地处东、西、北三面环山的小盆地之中，陵区周围群山环抱，中部为平原，陵前有小河曲折蜿蜒。自永乐七年（1409）五月始作长陵，到明朝最后一帝崇祯葬入思陵止，其间230多年，先后修建了十三座皇帝陵墓、七座妃子墓、一座太监墓。共埋葬了十三位皇帝、二十三位皇后、二位太子、三十余名妃嫔、两位太监。截止2011年，已开放景点有长陵、定陵、昭陵、神路。 
2015年10月，国家旅游局暗访检查，明十三陵景区的主要存在外围欺客宰客现象严重，无明码标价；卫生情况差，景区垃圾裸露多，地面污物清扫不及时；游览设施不足，游客中心功能不全等问题，对景区给予严重警告，并公开通报，给予6个月时间整改。', '22', '11', '4', 'A', 'f40f852238d048d791dad5930836ff19', null);
INSERT INTO "TRIP"."MY_INTEREST" VALUES ('344d2fdbe0704f25b6fbc9403b3a54d0', '鄱阳湖', '210', '鄱阳湖旅游景区，主要指湖区内的景点及自然保护区整体。湖区有41个岛屿和七个自然保护区。
保护区内鸟类已达300多种，近百万只，其中珍禽50多种，已是世界上最大的鸟类保护区。世界上现有白鹤大约为4000多只。其中90%在鄱阳湖越冬。鄱阳湖是白鹤的世界，水鸟的天堂。
鄱阳湖是长江江豚重要栖息地和种质资源库，江豚数量稳定，种群结构合理，属于长江江豚的优质种群。“截止2016年，鄱阳湖现有江豚数量为450头左右，是洞庭湖拥有江豚数量的5倍，占全中国一半。', '22', '11', '3.5', 'B', '14e1abc9e33d4968a0e47b818c3b29e9', null);
INSERT INTO "TRIP"."MY_INTEREST" VALUES ('717f28430fe94d70891c2d6e05f8d248', '太湖', '30', '太湖位于长江三角洲的南缘，古称震泽、具区，又名五湖、笠泽，是中国五大淡水湖之一，界北纬30°55''40"~31°32''58"和东经119°52''32"~120°36''10"之间，横跨江、浙两省，北临无锡，南濒湖州，西依宜兴，东近苏州。 
太湖湖泊面积2427.8平方公里，水域面积为2338.1平方公里，湖岸线全长393.2公里。其西和西南侧为丘陵山地，东侧以平原及水网为主。 
太湖地处亚热带，气候温和湿润，属季风气候。太湖河港纵横，河口众多，有主要进出河流50余条。 
太湖水系呈由西向东泄泻之势，平均年出湖径流量为75亿立方米，蓄水量为44亿立方米。太湖岛屿众多，有50多个，其中18个岛屿有人居住。', '22', '11', '4', 'B', '9ca24282c519471abb52c4c508ffba96', null);
INSERT INTO "TRIP"."MY_INTEREST" VALUES ('bed614119dcd47a685bc3d46464ff37d', '洞庭湖', '60', '洞庭湖，古称云梦、九江和重湖，处于长江中游荆江南岸，跨岳阳、汩罗、湘阴、望城、益阳、沅江、汉寿、常德、津市、安乡和南县等县市。洞庭湖之名，始于春秋、战国时期，因湖中洞庭山（即今君山）而得名。  洞庭湖北纳长江的松滋、太平、藕池、调弦四口来水，南和西接湘、资、沅、澧四水及汨罗江等小支流，由岳阳市城陵矶注入长江。 
洞庭湖古代曾号称“八百里洞庭”。20世纪90年代末，据水利部门测算，有面积2579.2平方公里（一说2740平方公里[3]  ）；但它还有湘、资、沅、澧四水和“长江四口”1300多平方公里洪道面积（一说1.878万平方公里  ）。两者合计，仍有3879.2平方公里。湖盆周长为803.2公里，总容积220亿立方米，其中天然湖泊容积178亿立方米，河道容积42亿立方米。
洞庭湖是长江流域重要的调蓄湖泊，具强大蓄洪能力，曾使长江无数次的洪患化险为夷，江汉平原和武汉三镇得以安全渡汛。 
洞庭湖是历史上重要的战略要地、中国传统文化发源地，湖区名胜繁多，以岳阳楼为代表的历史胜迹是重要的旅游文化资源。也是中国传统农业发祥地，是著名的鱼米之乡，是湖南省乃至全国最重要的商品粮油基地、水产和养殖基地。', '22', '11', '4', 'B', 'b7e9d9585ce845cf917ca427706fb7e9', null);
INSERT INTO "TRIP"."MY_INTEREST" VALUES ('54652f273d34496c8f0c268b77ecff42', '龙虎山', '90', '龙虎山，位于江西省鹰潭市西南20公里处。东汉中叶，正一道创始人张道陵曾在此炼丹，传说“丹成而龙虎现，山因得名。其中天门山最高，海拔1300米。龙虎山是中国第八处世界自然遗产[1]  ，世界地质公园  、国家自然文化双遗产地  、国家AAAAA级旅游景区  、全国重点文物保护单位。
龙虎山是中国典型的丹霞地貌风景，是中国道教发祥地，2007年加入世界地质公园网络。龙虎山的丹霞地貌，是二座发育在中国东南部信江盆地中段南缘由晚白垩世陆相山麓洪—冲积扇块状红色砂砾岩组成的丹霞山体。 
据道教典籍记载，张陵第四代孙张盛在三国或西晋时已赴龙虎山定居，此后张天师后裔世居龙虎山，至今承袭六十三代，历经一千九百多年。 
2010年8月2日，龙虎山与龟峰被一并列入《世界自然遗产名录》', '22', '11', '4', 'D', 'b7e9d9585ce845cf917ca427706fb7e9', null);
INSERT INTO "TRIP"."MY_INTEREST" VALUES ('89adfcd5d92d44d19adccdcfc0c811f5', '庐山', '80', '庐山  ，又名匡山、匡庐，是中华十大名山、世界文化遗产、国家AAAAA级旅游景区、中国四大避暑胜地。地处江西省九江市庐山市境内，山体呈椭圆形，典型的地垒式块段山。
庐山位于东经115°52′～116°8′，北纬29°26′～29°41′。东偎婺源、鄱阳湖，南靠滕王阁，西邻京九铁路大通脉，北枕滔滔长江。长约25公里，宽约10公里，绵延的90余座山峰，犹如九叠屏风，屏蔽着江西的北大门，主峰汉阳峰，海拔1474米。
庐山自古命名的山峰便有171座。群峰间散布冈岭26座，壑谷20条，岩洞16个，怪石22处。水流在河谷发育裂点，形成许多急流与瀑布，瀑布22处，溪涧18条，湖潭14处。最为著名的三叠泉瀑布，落差达155米，有“飞流直下三千尺，疑是银河落九天”之美句。
庐山以雄、奇、险、秀闻名于世，具有极高的科学价值和旅游观赏价值，素有“匡庐奇秀甲天下”之美誉，与鸡公山、北戴河、莫干山并称“中国四大避暑胜地”。
庐山入选为：世界文化遗产、世界地质公园、全国重点文物保护单位、国家重点风景名胜区、国家5A级旅游景区、中华十大名山、中国最美十大名山、中国四大避暑胜地、首批全国文明风景旅游区示范点等荣誉称号。', '22', '11', '4', 'B', null, null);

-- ----------------------------
-- Table structure for MY_MANAGER
-- ----------------------------
DROP TABLE "TRIP"."MY_MANAGER";
CREATE TABLE "TRIP"."MY_MANAGER" (
"ID" VARCHAR2(32 BYTE) NOT NULL ,
"USERNAME" VARCHAR2(50 BYTE) NULL ,
"PASSWORD" VARCHAR2(50 BYTE) NULL ,
"NAME" VARCHAR2(100 BYTE) NULL ,
"AGE" VARCHAR2(3 BYTE) NULL ,
"SEX" CHAR(1 BYTE) NULL ,
"EMAIL" VARCHAR2(50 BYTE) NULL ,
"PHONE" CHAR(11 BYTE) NULL ,
"TYPE" CHAR(1 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of MY_MANAGER
-- ----------------------------
INSERT INTO "TRIP"."MY_MANAGER" VALUES ('c0bc967e2dc44659a34e4a4d470e6c38', 'ls', '123', '李思思', '23', 'B', 'lisisi@163.com', '15263596948', 'B');
INSERT INTO "TRIP"."MY_MANAGER" VALUES ('3a786c6e274547758a09d02d19e14ff4', 'zf', '123', '张飞燕', '12', 'B', '85', '32325      ', 'E');
INSERT INTO "TRIP"."MY_MANAGER" VALUES ('d0e6f4f0d86f44aeaf489492a8969232', 'ssx', '123', '孙尚香', '23', 'B', 'sxx@qq.com', '15687549658', 'D');
INSERT INTO "TRIP"."MY_MANAGER" VALUES ('f95b5da6df9d4bb0bdf46206bd603f14', 'qwer', '123', '燕燕', '21', 'B', 'yanayn@163.com', '15896355896', 'E');
INSERT INTO "TRIP"."MY_MANAGER" VALUES ('711434e59613440391cb29058336edd8', 'ff', '123', '飞飞', null, 'A', null, null, 'C');
INSERT INTO "TRIP"."MY_MANAGER" VALUES ('6bfb35dcfa5c48fca09acc81c4fa29fc', 'qwerwer', '123', '金克斯', null, 'B', null, null, 'B');
INSERT INTO "TRIP"."MY_MANAGER" VALUES ('8b5bc88f466f4990a19717b80653e1cf', 've', '123', '薇恩', null, 'B', null, null, 'B');
INSERT INTO "TRIP"."MY_MANAGER" VALUES ('8da4493c758d4d3cb62ef7382fdc6fe1', 'ktl', '123', '凯特琳', null, 'B', null, null, 'F');
INSERT INTO "TRIP"."MY_MANAGER" VALUES ('1', 'wk', '123', '汪凯', '23', 'A', '851771345@qq.com', '15713802268', 'A');
INSERT INTO "TRIP"."MY_MANAGER" VALUES ('2', 'qq', '123', '琪琪', '22', 'B', '2667447600@qq.com', '15713802268', 'A');

-- ----------------------------
-- Table structure for MY_TRAVELS
-- ----------------------------
DROP TABLE "TRIP"."MY_TRAVELS";
CREATE TABLE "TRIP"."MY_TRAVELS" (
"ID" VARCHAR2(32 BYTE) NOT NULL ,
"AUTHOR" VARCHAR2(50 BYTE) NULL ,
"NAME" VARCHAR2(100 BYTE) NULL ,
"BEGIN_TIME" VARCHAR2(20 BYTE) NULL ,
"DAYS" VARCHAR2(3 BYTE) NULL ,
"DESCRIBE" VARCHAR2(2000 BYTE) NULL ,
"PICTURE_ID" VARCHAR2(32 BYTE) NULL ,
"ADDRESS" VARCHAR2(100 BYTE) NULL 
)
LOGGING
NOCOMPRESS
NOCACHE

;

-- ----------------------------
-- Records of MY_TRAVELS
-- ----------------------------

-- ----------------------------
-- Indexes structure for table MY_ACCOUNT
-- ----------------------------

-- ----------------------------
-- Checks structure for table MY_ACCOUNT
-- ----------------------------
ALTER TABLE "TRIP"."MY_ACCOUNT" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "TRIP"."MY_ACCOUNT" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "TRIP"."MY_ACCOUNT" ADD CHECK ("ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table MY_ACCOUNT
-- ----------------------------
ALTER TABLE "TRIP"."MY_ACCOUNT" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table MY_CITY
-- ----------------------------

-- ----------------------------
-- Checks structure for table MY_CITY
-- ----------------------------
ALTER TABLE "TRIP"."MY_CITY" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "TRIP"."MY_CITY" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "TRIP"."MY_CITY" ADD CHECK ("ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table MY_CITY
-- ----------------------------
ALTER TABLE "TRIP"."MY_CITY" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table MY_CODE
-- ----------------------------

-- ----------------------------
-- Checks structure for table MY_CODE
-- ----------------------------
ALTER TABLE "TRIP"."MY_CODE" ADD CHECK ("ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table MY_CODE
-- ----------------------------
ALTER TABLE "TRIP"."MY_CODE" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table MY_COMMENT
-- ----------------------------

-- ----------------------------
-- Checks structure for table MY_COMMENT
-- ----------------------------
ALTER TABLE "TRIP"."MY_COMMENT" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "TRIP"."MY_COMMENT" ADD CHECK ("ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table MY_COMMENT
-- ----------------------------
ALTER TABLE "TRIP"."MY_COMMENT" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table MY_FOOD
-- ----------------------------

-- ----------------------------
-- Checks structure for table MY_FOOD
-- ----------------------------
ALTER TABLE "TRIP"."MY_FOOD" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "TRIP"."MY_FOOD" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "TRIP"."MY_FOOD" ADD CHECK ("ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table MY_FOOD
-- ----------------------------
ALTER TABLE "TRIP"."MY_FOOD" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table MY_HOTEL
-- ----------------------------

-- ----------------------------
-- Checks structure for table MY_HOTEL
-- ----------------------------
ALTER TABLE "TRIP"."MY_HOTEL" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "TRIP"."MY_HOTEL" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "TRIP"."MY_HOTEL" ADD CHECK ("NAME" IS NOT NULL);
ALTER TABLE "TRIP"."MY_HOTEL" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "TRIP"."MY_HOTEL" ADD CHECK ("NAME" IS NOT NULL);
ALTER TABLE "TRIP"."MY_HOTEL" ADD CHECK ("ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table MY_HOTEL
-- ----------------------------
ALTER TABLE "TRIP"."MY_HOTEL" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table MY_INTEREST
-- ----------------------------

-- ----------------------------
-- Checks structure for table MY_INTEREST
-- ----------------------------
ALTER TABLE "TRIP"."MY_INTEREST" ADD CHECK ("ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table MY_INTEREST
-- ----------------------------
ALTER TABLE "TRIP"."MY_INTEREST" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table MY_MANAGER
-- ----------------------------

-- ----------------------------
-- Checks structure for table MY_MANAGER
-- ----------------------------
ALTER TABLE "TRIP"."MY_MANAGER" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "TRIP"."MY_MANAGER" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "TRIP"."MY_MANAGER" ADD CHECK ("ID" IS NOT NULL);
ALTER TABLE "TRIP"."MY_MANAGER" ADD CHECK ("ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table MY_MANAGER
-- ----------------------------
ALTER TABLE "TRIP"."MY_MANAGER" ADD PRIMARY KEY ("ID");

-- ----------------------------
-- Indexes structure for table MY_TRAVELS
-- ----------------------------

-- ----------------------------
-- Checks structure for table MY_TRAVELS
-- ----------------------------
ALTER TABLE "TRIP"."MY_TRAVELS" ADD CHECK ("ID" IS NOT NULL);

-- ----------------------------
-- Primary Key structure for table MY_TRAVELS
-- ----------------------------
ALTER TABLE "TRIP"."MY_TRAVELS" ADD PRIMARY KEY ("ID");
