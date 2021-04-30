/*
 Navicat Premium Data Transfer

 Source Server         : jur-jt
 Source Server Type    : MySQL
 Source Server Version : 80020
 Source Host           : localhost:3306
 Source Schema         : jurjt

 Target Server Type    : MySQL
 Target Server Version : 80020
 File Encoding         : 65001

 Date: 30/04/2021 17:34:08
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_menu`;
CREATE TABLE `admin_menu`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `path` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name_zh` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `icon_cls` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `component` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parent_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin_menu
-- ----------------------------
INSERT INTO `admin_menu` VALUES (1, '/index', 'AdminIndex', '首页', 'el-icon-s-home', 'layer', 0);
INSERT INTO `admin_menu` VALUES (2, '/index/positionList', 'DashboardAdmin', '首页职位区', NULL, 'positionList', 1);
INSERT INTO `admin_menu` VALUES (3, '/userManagement', 'User', '用户管理', 'el-icon-user', 'layer', 0);
INSERT INTO `admin_menu` VALUES (4, '/index/NewPosition', 'Content', '职位管理', 'el-icon-tickets', 'layer', 0);
INSERT INTO `admin_menu` VALUES (5, '/admin', 'System', '积分管理', 'el-icon-s-tools', 'layer', 0);
INSERT INTO `admin_menu` VALUES (6, '/index/userManagement', 'Profile', '用户信息', NULL, 'userManagement', 3);
INSERT INTO `admin_menu` VALUES (7, '/index/roleConfiguration', 'Role', '角色配置', NULL, 'roleConfiguration', 3);
INSERT INTO `admin_menu` VALUES (8, '/index/pointsExchange', 'BookManagement', '积分设置', NULL, 'pointsExchange', 5);
INSERT INTO `admin_menu` VALUES (9, '/index/pointsManagement', 'BannerManagement', '积分记录', NULL, 'pointsManagement', 5);
INSERT INTO `admin_menu` VALUES (10, '/ResumeUpload', 'ArticleManagement', '简历上传', 'el-icon-s-order', 'layer', 0);
INSERT INTO `admin_menu` VALUES (17, '/index/myRecommend', 'myRecommend', '我的推荐', 'el-icon-s-claim', 'layer', 0);
INSERT INTO `admin_menu` VALUES (18, '/index/PublishedPosition', 'PublishedPosition', '我发布的职位', NULL, 'PublishedPosition', 4);
INSERT INTO `admin_menu` VALUES (19, '/ResumeUpload', 'ResumeUpload', '简历上传', '', 'ResumeUpload', 10);
INSERT INTO `admin_menu` VALUES (20, '/index/myRecommend', 'myRecommend', '我的推荐', NULL, 'myRecommend', 18);
INSERT INTO `admin_menu` VALUES (21, '/talentPool', 'talentPool', '人才管理', 'el-icon-folder-opened', 'layer', 0);
INSERT INTO `admin_menu` VALUES (22, '/talentPool/talentInfoList', 'talentPool', '人才库', '', 'talentPool', 21);

-- ----------------------------
-- Table structure for admin_permission
-- ----------------------------
DROP TABLE IF EXISTS `admin_permission`;
CREATE TABLE `admin_permission`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `desc_` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin_permission
-- ----------------------------
INSERT INTO `admin_permission` VALUES (1, 'users_management', '用户管理', '/api/admin/user');
INSERT INTO `admin_permission` VALUES (2, 'roles_management', '角色管理', '/api/admin/role');
INSERT INTO `admin_permission` VALUES (3, 'content_management', '内容管理', '/api/admin/content');

-- ----------------------------
-- Table structure for admin_role
-- ----------------------------
DROP TABLE IF EXISTS `admin_role`;
CREATE TABLE `admin_role`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名字',
  `name_zh` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '中文名',
  `enabled` tinyint(1) NULL DEFAULT NULL COMMENT '是否禁用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin_role
-- ----------------------------
INSERT INTO `admin_role` VALUES (1, 'sysAdmin', '系统管理员', 1);
INSERT INTO `admin_role` VALUES (2, 'contentManager', '内容管理员', 1);
INSERT INTO `admin_role` VALUES (3, 'visitor', '员工', 1);
INSERT INTO `admin_role` VALUES (9, 'test', 'Hr', 1);

-- ----------------------------
-- Table structure for admin_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_menu`;
CREATE TABLE `admin_role_menu`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `rid` int NULL DEFAULT NULL,
  `mid` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 194 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin_role_menu
-- ----------------------------
INSERT INTO `admin_role_menu` VALUES (19, 4, 1);
INSERT INTO `admin_role_menu` VALUES (20, 4, 2);
INSERT INTO `admin_role_menu` VALUES (21, 3, 1);
INSERT INTO `admin_role_menu` VALUES (22, 3, 2);
INSERT INTO `admin_role_menu` VALUES (23, 9, 1);
INSERT INTO `admin_role_menu` VALUES (24, 9, 2);
INSERT INTO `admin_role_menu` VALUES (77, 2, 1);
INSERT INTO `admin_role_menu` VALUES (78, 2, 2);
INSERT INTO `admin_role_menu` VALUES (79, 2, 4);
INSERT INTO `admin_role_menu` VALUES (80, 2, 8);
INSERT INTO `admin_role_menu` VALUES (81, 2, 9);
INSERT INTO `admin_role_menu` VALUES (82, 2, 10);
INSERT INTO `admin_role_menu` VALUES (121, 1, 1);
INSERT INTO `admin_role_menu` VALUES (122, 1, 2);
INSERT INTO `admin_role_menu` VALUES (123, 1, 3);
INSERT INTO `admin_role_menu` VALUES (124, 1, 6);
INSERT INTO `admin_role_menu` VALUES (125, 1, 7);
INSERT INTO `admin_role_menu` VALUES (126, 1, 4);
INSERT INTO `admin_role_menu` VALUES (127, 1, 8);
INSERT INTO `admin_role_menu` VALUES (128, 1, 9);
INSERT INTO `admin_role_menu` VALUES (129, 1, 10);
INSERT INTO `admin_role_menu` VALUES (130, 1, 5);
INSERT INTO `admin_role_menu` VALUES (131, 1, 17);
INSERT INTO `admin_role_menu` VALUES (132, 1, 18);
INSERT INTO `admin_role_menu` VALUES (133, 1, 19);
INSERT INTO `admin_role_menu` VALUES (134, 1, 20);
INSERT INTO `admin_role_menu` VALUES (135, 1, 21);
INSERT INTO `admin_role_menu` VALUES (136, 1, 22);

-- ----------------------------
-- Table structure for admin_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_permission`;
CREATE TABLE `admin_role_permission`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `rid` int NULL DEFAULT NULL,
  `pid` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_role_permission_role_1`(`rid`) USING BTREE,
  INDEX `fk_role_permission_permission_1`(`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 140 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin_role_permission
-- ----------------------------
INSERT INTO `admin_role_permission` VALUES (83, 5, 3);
INSERT INTO `admin_role_permission` VALUES (97, 2, 3);
INSERT INTO `admin_role_permission` VALUES (108, 1, 1);
INSERT INTO `admin_role_permission` VALUES (109, 1, 2);
INSERT INTO `admin_role_permission` VALUES (110, 1, 3);

-- ----------------------------
-- Table structure for admin_user_role
-- ----------------------------
DROP TABLE IF EXISTS `admin_user_role`;
CREATE TABLE `admin_user_role`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `uid` int NULL DEFAULT NULL,
  `rid` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_operator_role_operator_1`(`uid`) USING BTREE,
  INDEX `fk_operator_role_role_1`(`rid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 68 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin_user_role
-- ----------------------------
INSERT INTO `admin_user_role` VALUES (40, 24, 2);
INSERT INTO `admin_user_role` VALUES (63, 3, 2);
INSERT INTO `admin_user_role` VALUES (64, 110, 1);
INSERT INTO `admin_user_role` VALUES (65, 2, 3);
INSERT INTO `admin_user_role` VALUES (66, 2, 9);

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `cover` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `date` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `press` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `abs` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cid` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_book_category_on_cid`(`cid`) USING BTREE,
  CONSTRAINT `fk_book_category_on_cid` FOREIGN KEY (`cid`) REFERENCES `category` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 109 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (1, 'https://i.loli.net/2019/04/10/5cadaa0d0759b.jpg', '且在人间', '余秀华', '2019-2-1', '湖南文艺出版社', '诗人余秀华中篇小说首次结集出版。\r\n\r\n        《且在人间》——以余秀华为生活原型，讲述一个残疾女人悲苦倔强、向死而生的故事。\r\n\r\n        女主人公周玉生活在乡村，患有“脑瘫”，她几乎被所有人漠视，甚至被整个社会抛弃，但是她渴望被当成一个普通的健康人,而不是带着怜悯或不屑，她只要求平等。爱情的缺 失，家庭的不幸，生活的种种际遇让周玉用诗歌的方式把 情感抒发出来，最终她用诗歌创作出了一个文学的世界，得到了人们的认可。', 2);
INSERT INTO `book` VALUES (2, 'https://i.loli.net/2019/04/10/5cada7e73d601.jpg', '三体', '刘慈欣', ' 2008-1', '重庆出版社', '文化大革命如火如荼进行的同时。军方探寻外星文明的绝秘计划“红岸工程”取得了突破性进展。但在按下发射键的那一刻，历经劫难的叶文洁没有意识到，她彻底改变了人类的命运。地球文明向宇宙发出的第一声啼鸣，以太阳为中心，以光速向宇宙深处飞驰……\r\n\r\n四光年外，“三体文明”正苦苦挣扎——三颗无规则运行的太阳主导下的百余次毁灭与重生逼迫他们逃离母星。而恰在此时。他们接收到了地球发来的信息。在运用超技术锁死地球人的基础科学之后。三体人庞大的宇宙舰队开始向地球进发……\r\n\r\n人类的末日悄然来临。', 2);
INSERT INTO `book` VALUES (32, 'https://i.loli.net/2019/04/10/5cada99bd8ca5.jpg', '叙事的虚构性', '[美] 海登·怀特 ', '2019-3', '南京大学出版社', '海登•怀特被誉为人类伟大的思想家之一。从1973年出版具有里程碑意义的专著《元史学》以来，怀特的作品对于历史学、文学研究、人类学、哲学、艺术史、电影传媒研究等将叙事学作为关注焦点的学科而言意义非凡。\n\n本书由罗伯特•多兰作序，他巧妙地将怀特重要但难得一见的文章汇集成册，研究探讨他关于历史书写和叙事的革命性理论。怀特的这些文章大多采用论文体，内容涉及多位思想家，探讨诸多主题，文笔犀利，语言优美。\n\n《叙事的虚构性》追溯怀特重要思想的演变轨迹，是历史编纂学者和学习者、历史理论和文学研究学者们的重要读物。', 3);
INSERT INTO `book` VALUES (35, 'https://i.loli.net/2019/04/10/5cada940e206a.jpg', '圣母', '[日]秋吉理香子 ', '2019-3', '新星出版社', '一起男童被害案搅得蓝出市人心惶惶。\n\n好不容易怀孕生产的保奈美抱紧年幼的孩子，立誓要不惜任何代价保护她。\n\n男人是在孩子出生后才成为父亲的，但女人，是从小生命来到体内的那一瞬间起，就是母亲了。患有不孕症的保奈美是经历过艰辛的治疗过程才终于有了孩子的，她不允许这起命案威胁到宝贵的孩子！\n\n母亲，就是要消除所有对子女的威胁，每一位母亲都应肩负这样的使命，这是神圣的天职！', 1);
INSERT INTO `book` VALUES (37, 'https://i.loli.net/2019/04/10/5cada8986e13a.jpg', '奢侈与逸乐', '[英]马克辛·伯格', '2019-3', '中国工人出版社', '本书探讨了十八世纪英国新式、时尚的消费品的发明、制造和购买。', 3);
INSERT INTO `book` VALUES (38, 'https://i.loli.net/2019/04/10/5cada8b8a3a17.jpg', '忧伤动物', '[德]莫妮卡·马龙 ', '2019-4', '漓江出版社', '“忧伤动物”(animal triste)这个词组取自一句最早可以追溯到亚里士多德时代的拉丁语名言，即“欢爱后，每个动物都忧伤不已”（Post coitum omne animal triste est）。无疑，这部冠以如此标题的小说让人有不祥的预感并暗示着宿命的思想。小说的女主人公是位近乎百岁的老人。在多年前有意斩断了与外界的一切联系之后，在她的后半生里，她唯一能做的就是或躺或坐在“印着鲜红、艳绿和深紫色的大花”、让人想起“食肉植物的花朵”的床单上，追忆几十年前她和自己...', 1);
INSERT INTO `book` VALUES (54, 'https://i.loli.net/2019/04/10/5cada9d9d23a6.jpg', '爱界', '[英] 费伊·韦尔登 ', '2019-3-1', '人民文学出版社', '去不去爱，爱的界限何在，一直是普拉克西丝的人生课题。\n\n年迈的她独自待在肮脏而昏暗的地下室里，想写回忆录，可她该写些什么呢？是写父母未婚同居生下了她，她还年幼天真无邪时，母女就遭父亲抛弃？还是写她曾经或是主动或是被动地成了未婚同居者、妻子、情人、母亲、后母？还是写她两年的牢狱生活？她想描绘二十世纪女性的众生相，想记录女性群体在情感、灵魂和思想方面所处的三重困境，想道出女性之间的大爱如何铸成姐妹之谊。', 3);
INSERT INTO `book` VALUES (55, 'https://i.loli.net/2019/04/10/5cada824c7119.jpg', '密室中的旅行', '[美] 保罗·奥斯特 ', '2019-3', '九州出版社', '一旦被抛进这个世界，我们就永远不会消失，即使造物者已经死去。\n\n.\n\n布兰克先生发现自己被囚禁在一个陌生的房间里，对过去的身份和经历一无所知。桌上有四叠六英寸厚的文稿，其中有一份未完待续的囚犯自述；还有一叠似曾相识的照片，照片中的人物将逐一登场。他续写了那个囚犯的故事，却发现自己正在经历的一切也早已被记录在文稿中……', 1);
INSERT INTO `book` VALUES (59, 'https://i.loli.net/2019/04/10/5cada87fd5c72.jpg', '基本穿搭', '[日]大山旬 ', '2019-3', '四川人民出版社', '对穿衣搭配感到不耐烦，认为时尚很麻烦，穿什么都可以或者对衣服有着自己的想法但不够自信，本书就是为这样的人而准备的穿衣指南。不需要追随瞬息万变的时尚潮流，也不需要烦恼色彩搭配，只要掌握最低限度的知识和备齐常规单品，谁都能完成清爽得体的 80分搭配。', 4);
INSERT INTO `book` VALUES (60, 'https://i.loli.net/2019/04/10/5cada976927da.jpg', '冒牌人生', '陈思安', '2019-4', '四川文艺出版社', '《冒牌人生》收录了十篇短篇小说。十个故事分别以城市中的怪人为主角，他们默默无闻地生存在城市主流生活的边缘地带：或是等待手术的性别认同障碍者，或是武艺高强而深藏不露的夜市摊主，或是卧底追凶的底层保安，或是甘于...', 1);
INSERT INTO `book` VALUES (61, 'https://i.loli.net/2019/04/10/5cada9202d970.jpg', '战争哀歌', '[越]保宁 ', '2019-4', '湖南文艺出版社', '《战争哀歌》超越了战争，战争是它的背景，它的内核是关于逝去的青春，关于美和伤痛！\n\n一场突如其来的战争打碎了阿坚和阿芳这对年轻情侣的生活，在血肉横飞的战争中，主人公阿坚成了幸存者，但战争带来的伤痛还远远没有平息。那些经历仍旧萦绕在阿坚的生活之中，被战争毁灭的不仅 仅是阿坚， 阿芳也遭遇了难以想象的梦魇。时间越长，阿坚越觉得自己不是活着，而是被困在这人世间。', 1);
INSERT INTO `book` VALUES (62, 'https://i.loli.net/2019/04/10/5cada9c852298.jpg', '胡椒的全球史', '[美] 玛乔丽·谢弗 ', '2019-3', '上海三联出版社', '看似不起眼的胡椒，却是家家餐桌必备。在中世纪时，更是欧洲达官显贵们的最爱、财富与地位的象征。黑胡椒原产于印度，距离欧洲各港口有十万八千里之远，取之向来不易。商人们对其供应来源不遗余力的追寻，成为世界史上一股重要的推动力量，促成全球贸易的兴起，重新划定了世界经济版图。', 2);
INSERT INTO `book` VALUES (63, 'https://i.loli.net/2019/04/10/5cada962c287c.jpg', '与病对话', '胡冰霜', '2019-3-31', '北京联合出版公司', '一部融合科普性与趣味性、兼具心理学与哲学意味的医学散文。\n\n一位满怀仁心的资深医者对几十年行医生涯的回望与省思。\n\n全书以真实的病例和鲜活的故事贯穿始终，作者从一位全科医生、心理学者的视角观察、解读疾病与患者身心之关系，厘清大众对诸多常见疾病的误解...', 1);
INSERT INTO `book` VALUES (64, 'https://i.loli.net/2019/04/10/5cada858e6019.jpg', '上帝笑了99次', '[英]彼得·凯弗', '2019-2', '北京联合出版公司', '一只美洲羊驼会坠入爱河吗？机器人能变成人吗？怎样才能不赢得公主青睐？人类一思考，上帝就发笑。在99个奇妙、怪诞、滑稽的问题背后，其实是99个烧脑的哲学、道德、法律领域的经典悖论，也是99道极富挑战性的大思考测试。本书内容覆盖了大多数常见哲学话题，包括形而上学、逻辑学、伦理学、语言哲学、政治哲学、自我认知、人际关系、美学、存在主义等，还配有20多幅漫画插图。在锻炼思维之外，本书也能帮我们建立个性化的哲学知识体系。', 3);
INSERT INTO `book` VALUES (65, 'https://i.loli.net/2019/04/10/5cada8e1aa892.jpg', '互联网算法', '[美] 菲斯曼等 ', '2019-4', '江西人民出版社', '只要你租过房子、上网买过东西、自己经营过企业，那么你就处在商业变革的前线。在这场变革中，亚马逊、谷歌、优步等不同以往的企业取得了史无前例的成功，而促成这场变革的不只是科技进步，还有经济学思想。\n\n在这本趣味横生的书中，我们会看到，经济思想的革命远比科技革命更宏大。从谷歌广告的算法，到网上购物规避欺诈，都要依靠经济学家建立的经济模型，甚至连互联网公司...', 6);
INSERT INTO `book` VALUES (66, 'https://i.loli.net/2019/04/10/5cada9ec514c9.jpg', '七侯笔录', '马伯庸', '2019-4-15', '湖南文艺出版社', '一个关于文化的离奇故事，一段关于文人的壮丽传说。\n\n几千年来，每一位风华绝代的文人墨客辞世之时，都会让自己的灵魂寄寓在一管毛笔之中。他们身躯虽去，才华永存，这些伟大的精神凝为性情不一的笔灵，深藏于世间，只为一句“不教天下才情付诸东流”的誓言。其中最伟大的七位古人，他们所凝聚的七管笔灵，被称为“管城七侯”。\n\n一位不学无术的现代少年，无意中邂逅了李白的青莲笔，命运就此与千年之前的诗仙交织一处，并为他开启了一个叫作笔冢的神秘世界。', 3);
INSERT INTO `book` VALUES (67, 'https://i.loli.net/2019/04/10/5cada9870c2ab.jpg', '中心与边缘', '[美] 希尔斯', '2019-3', '译林出版社', '美国著名社会学家爱德华·希尔斯的主要研究成果包括他对“克里斯玛”、“中心”和“边缘”等概念的解释，以及他对“大众社会”一词的修正，这些研究对分析政治和文化领导力以及社会凝聚力具有重要价值。本书对希尔斯数十载社会理论研究进行了全面而详细的总结，为解释与探究当代社会的结构与变化提供了极具科学性的参考依据。', 3);
INSERT INTO `book` VALUES (68, 'https://i.loli.net/2019/04/10/5cad643643d4c.jpg', '水浒群星闪耀时', '李黎', '2019-4', '上海文艺出版社', '本书以众所周知的梁山英雄为写作对象，重点书写其上山后、招安前的日常生活，涉及他们的喜怒哀乐、同类中人、乡愁怀旧、未来憧憬、命运追问等。书中涉及宋江、武松、鲁智深、李俊、燕青等等耳熟能详的人物而显得有些“改编”与水浒研究的意味，但鉴于所有人物皆为虚构，本书稿的内容是虚构之上的虚构，旨在宏大叙事的语境下突出个人的细微之处和命运感。', 1);
INSERT INTO `book` VALUES (69, 'https://i.loli.net/2019/04/10/5cad63931ce27.jpg', '谋杀狄更斯', '[美] 丹·西蒙斯 ', '2019-4', '上海文艺出版社', '“狄更斯的那场意外灾难发生在1865年6月9日，那列搭载他的成功、平静、理智、手稿与情妇的火车一路飞驰，迎向铁道上的裂隙，突然触目惊心地坠落了。”', 1);
INSERT INTO `book` VALUES (70, 'http://localhost:8443/api/file/k09g2r.png', '像艺术家一样思考', '[英] 威尔·贡培兹', '2019-4', '湖南美术出版社', '归纳成就艺术大师的 10 个关键词\n\n揭示大师们的创作秘辛\n\n凝聚 BBC 艺术频道主编威尔·贡培兹职业生涯的所见、所知、所想\n\n·\n\n威尔·贡培兹是你能遇到的最好的老师\n\n——《卫报》', 3);

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category`  (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES (1, '文学');
INSERT INTO `category` VALUES (2, '流行');
INSERT INTO `category` VALUES (3, '文化');
INSERT INTO `category` VALUES (4, '生活');
INSERT INTO `category` VALUES (5, '经管');
INSERT INTO `category` VALUES (6, '科技');

-- ----------------------------
-- Table structure for jotter_article
-- ----------------------------
DROP TABLE IF EXISTS `jotter_article`;
CREATE TABLE `jotter_article`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `article_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `article_content_html` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `article_content_md` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `article_abstract` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `article_cover` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `article_date` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jotter_article
-- ----------------------------
INSERT INTO `jotter_article` VALUES (1, '凉风有兴', '凉风有兴，秋月无边，而我思乡的情绪好比度日如年。虽然我风流倜傥玉树临风，但我还是有聪明的头脑和强健的臂腕。', '凉风有兴，秋月无边，而我思乡的情绪好比度日如年。虽然我风流倜傥玉树临风，但我还是有聪明的头脑和强健的臂腕。', '凉风有兴，秋月无边，而我思乡的情绪好比度日如年。', 'https://i.loli.net/2020/01/16/d2ZlKI1WRE4p7XB.png', '2020-01-13 21:14:27');
INSERT INTO `jotter_article` VALUES (2, '爱你一万年', '<p>曾经有份真挚的爱情摆在我的面前，我没有珍惜，等到失去的时候才后悔莫急，人世间最痛苦的事莫过余此，如果上天在给我一次机会，我会对那个女孩说我爱你，如果要在这份爱上加个期限，我希望是一万年。</p>\n', '曾经有份真挚的爱情摆在我的面前，我没有珍惜，等到失去的时候才后悔莫急，人世间最痛苦的事莫过余此，如果上天在给我一次机会，我会对那个女孩说我爱你，如果要在这份爱上加个期限，我希望是一万年。', '曾经有份真挚的爱情摆在我的面前，我没有珍惜，等到失去的时候才后悔莫及，人世间最痛苦的事莫过于此。', 'https://i.loli.net/2020/01/16/DdGBk1R3mj5er6v.png', '2020-01-16 00:00:00');
INSERT INTO `jotter_article` VALUES (3, '《白卷》项目简介', '<p><img src=\"https://i.loli.net/2019/12/15/sYnuTIrDUwAfGgo.png\" alt=\"wjlogo.png\" /></p>\n<hr />\n<p><img src=\"https://img.shields.io/github/license/Antabot/White-Jotter\" alt=\"lisense\" /><br />\n<img src=\"https://img.shields.io/github/v/release/Antabot/White-Jotter\" alt=\"release\" /></p>\n<p>这是一个简单的前后端分离项目，主要采用 Vue.js + SpringBoot 技术栈开发。</p>\n<p>除了用作入门练习，我还希望该项目可以作为一些常见 Web 项目的脚手架，帮助大家简化搭建网站的流程。之所以叫白卷，是因为它从 0 开始，会随着时间的推移逐渐完善。</p>\n<p>欢迎加入微信圈子 【开发者】 分享、讨论学习经验：</p>\n<p><img src=\"https://i.loli.net/2020/01/17/HySWdM7wDfF8EKC.png\" alt=\"圈子\" /></p>\n<h1><a id=\"_17\"></a>整体效果</h1>\n<h2><a id=\"1_19\"></a>1.首页</h2>\n<p>作为展示页面，包括开发这个项目的主要参考资料、近期更新和 Slogan</p>\n<p><img src=\"https://img-blog.csdnimg.cn/20190403215932913.png\" alt=\"首页\" /></p>\n<h2><a id=\"2_25\"></a>2.图书馆</h2>\n<p>提供图书信息展示功能</p>\n<p><img src=\"https://i.loli.net/2019/12/03/AGLbIupct68ThBD.png\" alt=\"图书馆\" /></p>\n<h2><a id=\"3_31\"></a>3.登录页面</h2>\n<p><img src=\"https://i.loli.net/2019/04/14/5cb2fd5b78ae7.png\" alt=\"登录页面\" /></p>\n<h2><a id=\"4_35\"></a>4.后台管理</h2>\n<p>包含 dashboard、内容管理、用户及权限管理等</p>\n<p><img src=\"https://img-blog.csdnimg.cn/20191202200516251.png\" alt=\"后台\" /></p>\n<h1><a id=\"_41\"></a>技术栈</h1>\n<h2><a id=\"1_43\"></a>1.前端技术栈</h2>\n<p>1.Vue<br />\n2.ElementUI<br />\n3.axios</p>\n<h2><a id=\"2_49\"></a>2.后端技术栈</h2>\n<p>1.Spring Boot<br />\n2.Spring Data + JPA<br />\n3.MySQL<br />\n4.Shiro</p>\n<h1><a id=\"_56\"></a>部署方法</h1>\n<p>1.clone 项目到本地</p>\n<p><code>git clone https://github.com/Antabot/White-Jotter</code></p>\n<p>2.数据库脚本放在 <code>wj</code> 项目的根目录下，在MySQL中执行数据库脚本</p>\n<p>3.数据库配置在 <code>wj</code> 项目的 <code>src\\main\\resources</code> 目录下的<code>application.properties</code> 文件中，mysql 版本为 8.0.15</p>\n<p>4.在IntelliJ IDEA中运行 <code>wj</code> 项目，为了保证项目成功运行，可以右键点击 <code>pom.xml</code> 选择 maven -&gt; reimport ，并重启项目</p>\n<p>至此，服务端就启动成功了，同时，运行 <code>wj-vue</code> 项目，访问 <code>http://localhost:8080</code> ，即可进入登录页面，默认账号是 <code>admin</code>，密码是 <code>123</code></p>\n<p>如果要做二次开发，请继续看第五、六步。</p>\n<p>5.进入到 <code>wj-vue</code> 目录中，在命令行依次输入如下命令：</p>\n<pre><code class=\"lang-\"># 安装依赖\nnpm install\n\n# 在 localhost:8080 启动项目\nnpm run dev\n\n</code></pre>\n<p>由于在 <code>wj-vue</code> 项目中已经配置了端口转发，将数据转发到SpringBoot上，因此项目启动之后，在浏览器中输入 <code>http://localhost:8080</code> 就可以访问我们的前端项目了，所有的请求通过端口转发将数据传到 SpringBoot 中（注意此时不要关闭 SpringBoot 项目）。</p>\n<p>6.最后可以用 <code>WebStorm</code> 等工具打开 <code>wj-vue</code>项目，继续开发，开发完成后，当项目要上线时，依然进入到 <code>wj-vue</code> 目录，然后执行如下命令：</p>\n<pre><code class=\"lang-\">npm run build\n</code></pre>\n<p>该命令执行成功之后， <code>wj-vue</code> 目录下生成一个 <code>dist</code> 文件夹，可以将该文件夹中的两个文件 <code>static</code> 和 <code>index.html</code> 拷贝到 <code>wj</code> 项目中 <code>resources/static/</code> 目录下，然后直接运行 <code>wj</code> 项目，访问 <code>http://localhost:8443</code> ，实际上是把前端打包后作为静态文件，但不推荐使用这种方式。</p>\n<h1><a id=\"_93\"></a>教程</h1>\n<p>我在 CSDN 上分享了开发这个项目的教程，有兴趣的小伙伴可以点击下面的链接查看。</p>\n<p>1.<a href=\"https://blog.csdn.net/Neuf_Soleil/article/details/88925013\" target=\"_blank\">项目简介</a></p>\n<p>2.<a href=\"https://blog.csdn.net/Neuf_Soleil/article/details/88926242\" target=\"_blank\">使用 CLI 搭建 Vue.js 项目</a></p>\n<p>3.<a href=\"https://blog.csdn.net/Neuf_Soleil/article/details/88955387\" target=\"_blank\">前后端结合测试（登录页面开发）</a></p>\n<p>4.<a href=\"https://blog.csdn.net/Neuf_Soleil/article/details/89294300\" target=\"_blank\">数据库的引入</a></p>\n<p>5.<a href=\"https://blog.csdn.net/Neuf_Soleil/article/details/89298717\" target=\"_blank\">使用 Element 辅助前端开发</a></p>\n<p>6.<a href=\"https://learner.blog.csdn.net/article/details/89422585\" target=\"_blank\">前端路由与登录拦截器</a></p>\n<p>7.<a href=\"https://learner.blog.csdn.net/article/details/89853305\" target=\"_blank\">导航栏与图书页面设计</a></p>\n<p>8.<a href=\"https://learner.blog.csdn.net/article/details/92413933\" target=\"_blank\">数据库设计与增删改查</a></p>\n<p>9.<a href=\"https://learner.blog.csdn.net/article/details/95310666\" target=\"_blank\">核心功能的前端实现</a></p>\n<p>10.<a href=\"https://learner.blog.csdn.net/article/details/97619312\" target=\"_blank\">图片上传与项目的打包部署</a></p>\n<p>11.<a href=\"https://learner.blog.csdn.net/article/details/100849732\" target=\"_blank\">用户角色权限管理模块设计</a></p>\n<p>12.<a href=\"https://learner.blog.csdn.net/article/details/101121899\" target=\"_blank\">访问控制及其实现思路</a></p>\n<p>13.<a href=\"https://learner.blog.csdn.net/article/details/102690035\" target=\"_blank\">使用 Shiro 实现用户信息加密与登录认证</a></p>\n<p>14.<a href=\"https://learner.blog.csdn.net/article/details/102788866\" target=\"_blank\">用户认证方案与完善的访问拦截</a></p>\n<p>15.<a href=\"https://learner.blog.csdn.net/article/details/103114893\" target=\"_blank\">动态加载后台菜单</a></p>\n<p>16.<a href=\"https://learner.blog.csdn.net/article/details/103250775\" target=\"_blank\">功能级访问控制的实现</a></p>\n<p>(持续更新中)</p>\n<h1><a id=\"_131\"></a>近期更新</h1>\n<p>12-01 实现功能级权限控制<br />\n11-30 利用 vue-elment-admin 项目完善后台界面设计<br />\n11-17 重构项目，完成搭建后台基础界面，实现按角色加载菜单，取消前台访问限制<br />\n04-27 使用前端拦截器，数据库迁移至 mysql 8.0.15，后台管理页面初始化<br />\n04-13 完成图片的上传功能<br />\n04-11 完成图书分类功能<br />\n04-08 完成图书分页功能<br />\n04-06 完成图书查询功能<br />\n04-05 完成图书修改功能<br />\n04-04 完成图书删除功能<br />\n04-03 完成图书新增功能</p>\n', '![wjlogo.png](https://i.loli.net/2019/12/15/sYnuTIrDUwAfGgo.png)\n\n---\n\n![lisense](https://img.shields.io/github/license/Antabot/White-Jotter)\n![release](https://img.shields.io/github/v/release/Antabot/White-Jotter)\n\n\n这是一个简单的前后端分离项目，主要采用 Vue.js + SpringBoot 技术栈开发。\n\n除了用作入门练习，我还希望该项目可以作为一些常见 Web 项目的脚手架，帮助大家简化搭建网站的流程。之所以叫白卷，是因为它从 0 开始，会随着时间的推移逐渐完善。\n\n欢迎加入微信圈子 【开发者】 分享、讨论学习经验：\n\n![圈子](https://i.loli.net/2020/01/17/HySWdM7wDfF8EKC.png)\n\n\n# 整体效果\n\n## 1.首页\n\n作为展示页面，包括开发这个项目的主要参考资料、近期更新和 Slogan\n\n![首页](https://img-blog.csdnimg.cn/20190403215932913.png)\n\n## 2.图书馆\n\n提供图书信息展示功能\n\n![图书馆](https://i.loli.net/2019/12/03/AGLbIupct68ThBD.png)\n\n## 3.登录页面\n\n![登录页面](https://i.loli.net/2019/04/14/5cb2fd5b78ae7.png)\n\n## 4.后台管理\n\n包含 dashboard、内容管理、用户及权限管理等\n\n![后台](https://img-blog.csdnimg.cn/20191202200516251.png)\n\n# 技术栈\n\n## 1.前端技术栈\n\n1.Vue  \n2.ElementUI  \n3.axios   \n\n## 2.后端技术栈\n\n1.Spring Boot  \n2.Spring Data + JPA \n3.MySQL  \n4.Shiro\n\n# 部署方法\n\n1.clone 项目到本地\n\n`git clone https://github.com/Antabot/White-Jotter`\n\n2.数据库脚本放在 `wj` 项目的根目录下，在MySQL中执行数据库脚本  \n\n3.数据库配置在 `wj` 项目的 `src\\main\\resources` 目录下的`application.properties` 文件中，mysql 版本为 8.0.15   \n\n4.在IntelliJ IDEA中运行 `wj` 项目，为了保证项目成功运行，可以右键点击 `pom.xml` 选择 maven -> reimport ，并重启项目\n\n至此，服务端就启动成功了，同时，运行 `wj-vue` 项目，访问 `http://localhost:8080` ，即可进入登录页面，默认账号是 `admin`，密码是 `123`\n\n如果要做二次开发，请继续看第五、六步。\n\n5.进入到 `wj-vue` 目录中，在命令行依次输入如下命令：  \n\n```\n# 安装依赖\nnpm install\n\n# 在 localhost:8080 启动项目\nnpm run dev\n\n```  \n\n由于在 `wj-vue` 项目中已经配置了端口转发，将数据转发到SpringBoot上，因此项目启动之后，在浏览器中输入 `http://localhost:8080` 就可以访问我们的前端项目了，所有的请求通过端口转发将数据传到 SpringBoot 中（注意此时不要关闭 SpringBoot 项目）。\n\n6.最后可以用 `WebStorm` 等工具打开 `wj-vue`项目，继续开发，开发完成后，当项目要上线时，依然进入到 `wj-vue` 目录，然后执行如下命令：  \n\n```\nnpm run build\n```  \n\n该命令执行成功之后， `wj-vue` 目录下生成一个 `dist` 文件夹，可以将该文件夹中的两个文件 `static` 和 `index.html` 拷贝到 `wj` 项目中 `resources/static/` 目录下，然后直接运行 `wj` 项目，访问 `http://localhost:8443` ，实际上是把前端打包后作为静态文件，但不推荐使用这种方式。\n\n# 教程\n\n我在 CSDN 上分享了开发这个项目的教程，有兴趣的小伙伴可以点击下面的链接查看。  \n\n1.[项目简介](https://blog.csdn.net/Neuf_Soleil/article/details/88925013)\n\n2.[使用 CLI 搭建 Vue.js 项目](https://blog.csdn.net/Neuf_Soleil/article/details/88926242)\n\n3.[前后端结合测试（登录页面开发）](https://blog.csdn.net/Neuf_Soleil/article/details/88955387)\n\n4.[数据库的引入](https://blog.csdn.net/Neuf_Soleil/article/details/89294300)\n\n5.[使用 Element 辅助前端开发](https://blog.csdn.net/Neuf_Soleil/article/details/89298717)\n\n6.[前端路由与登录拦截器](https://learner.blog.csdn.net/article/details/89422585)\n\n7.[导航栏与图书页面设计](https://learner.blog.csdn.net/article/details/89853305)\n\n8.[数据库设计与增删改查](https://learner.blog.csdn.net/article/details/92413933)\n\n9.[核心功能的前端实现](https://learner.blog.csdn.net/article/details/95310666)\n\n10.[图片上传与项目的打包部署](https://learner.blog.csdn.net/article/details/97619312)\n\n11.[用户角色权限管理模块设计](https://learner.blog.csdn.net/article/details/100849732)\n\n12.[访问控制及其实现思路](https://learner.blog.csdn.net/article/details/101121899)\n\n13.[使用 Shiro 实现用户信息加密与登录认证](https://learner.blog.csdn.net/article/details/102690035)\n\n14.[用户认证方案与完善的访问拦截](https://learner.blog.csdn.net/article/details/102788866)\n\n15.[动态加载后台菜单](https://learner.blog.csdn.net/article/details/103114893)\n\n16.[功能级访问控制的实现](https://learner.blog.csdn.net/article/details/103250775)\n\n(持续更新中)\n\n# 近期更新\n \n12-01 实现功能级权限控制  \n11-30 利用 vue-elment-admin 项目完善后台界面设计  \n11-17 重构项目，完成搭建后台基础界面，实现按角色加载菜单，取消前台访问限制  \n04-27 使用前端拦截器，数据库迁移至 mysql 8.0.15，后台管理页面初始化  \n04-13 完成图片的上传功能  \n04-11 完成图书分类功能  \n04-08 完成图书分页功能  \n04-06 完成图书查询功能  \n04-05 完成图书修改功能  \n04-04 完成图书删除功能  \n04-03 完成图书新增功能\n', '白卷是一个简单的前后端分离项目，主要采用 Vue.js + SpringBoot 技术栈开发。', 'https://i.loli.net/2020/01/19/egDEfu5jXlJ6r3a.png', '2020-01-19 00:00:00');

-- ----------------------------
-- Table structure for points_record
-- ----------------------------
DROP TABLE IF EXISTS `points_record`;
CREATE TABLE `points_record`  (
  `pointsId` int NOT NULL COMMENT '积分记录id',
  `userId` int NOT NULL COMMENT '对应员工id',
  `event_type` int NULL DEFAULT NULL COMMENT '事项id（1提交简历2HR初审3面试通过4入职成功5自定义奖励6主管初审7积分兑换商品）',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工真实姓名',
  `phone` int NULL DEFAULT NULL COMMENT '员工手机号',
  `points_num` int NULL DEFAULT NULL COMMENT '变动积分值',
  `change_type` int NULL DEFAULT NULL COMMENT '变动类型（0积分兑换减少为负数1推荐人才奖励增加+）',
  `event_time` datetime NULL DEFAULT NULL COMMENT '事项发生时间',
  PRIMARY KEY (`pointsId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of points_record
-- ----------------------------

-- ----------------------------
-- Table structure for position_list
-- ----------------------------
DROP TABLE IF EXISTS `position_list`;
CREATE TABLE `position_list`  (
  `postion_id` int NOT NULL AUTO_INCREMENT,
  `position_des` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `position_belong_apartment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `position_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`postion_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of position_list
-- ----------------------------

-- ----------------------------
-- Table structure for recruit_list
-- ----------------------------
DROP TABLE IF EXISTS `recruit_list`;
CREATE TABLE `recruit_list`  (
  `recruit_Id` int NOT NULL AUTO_INCREMENT COMMENT '招聘编号',
  `station_name` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL COMMENT '岗位名称',
  `department_name` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL COMMENT '所属部门',
  `department_state` int NULL DEFAULT NULL COMMENT '岗位状态',
  `work_place` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL COMMENT '工作地点',
  `rc_start_time` date NULL DEFAULT NULL COMMENT '发布日期',
  `rc_end_time` date NULL DEFAULT NULL COMMENT '结束日期',
  `rc_department_num` int NULL DEFAULT NULL COMMENT '岗位人数',
  `rc_describe` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL COMMENT '职位描述',
  `station_title` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL COMMENT '岗位标题',
  `max_age` int NULL DEFAULT NULL COMMENT '最大年龄',
  `min_age` int NULL DEFAULT NULL COMMENT '最小年龄',
  `position_type_id` int NULL DEFAULT NULL COMMENT '岗位筛选id',
  `eduction_class` int NULL DEFAULT NULL COMMENT '学历',
  `enabled` tinyint(1) NULL DEFAULT NULL COMMENT '是否过期',
  PRIMARY KEY (`recruit_Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci COMMENT = '招聘岗位信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of recruit_list
-- ----------------------------
INSERT INTO `recruit_list` VALUES (3, '产品运营', '运营', 1, '杭州', '2021-04-14', '2020-10-15', 2, '还把手机黑客帝国把计划是给大家', '职位标题', 20, 40, 1, 2, 0);
INSERT INTO `recruit_list` VALUES (4, '前端', '研发', 1, '上海', NULL, '2021-04-12', 5, '走过路过不要错过', NULL, 54, 18, 5, 3, 0);
INSERT INTO `recruit_list` VALUES (9, '职位111', NULL, 0, '上海', NULL, NULL, 22, '', NULL, 0, 0, 0, 2, 1);
INSERT INTO `recruit_list` VALUES (11, '职位111', NULL, 0, '杭州', NULL, NULL, 22, '哈哈哈哈哈哈\n', NULL, 0, 0, 0, 0, 1);
INSERT INTO `recruit_list` VALUES (12, '职位111', NULL, 0, '杭州', NULL, NULL, 22, '哈哈哈哈哈哈\n充满浪漫v发', NULL, 0, 0, 0, 0, 1);
INSERT INTO `recruit_list` VALUES (13, '职位111', NULL, 0, '杭州', NULL, '2021-04-07', 22, '哈哈哈哈哈哈\n充满浪漫v发', NULL, 0, 0, 0, 0, 1);
INSERT INTO `recruit_list` VALUES (14, 'qq', NULL, 0, '上海', NULL, '2021-04-13', 0, '', NULL, 0, 0, 0, 2, 0);

-- ----------------------------
-- Table structure for resumeinfo_list
-- ----------------------------
DROP TABLE IF EXISTS `resumeinfo_list`;
CREATE TABLE `resumeinfo_list`  (
  `resume_Id` int NOT NULL AUTO_INCREMENT COMMENT '简历编号',
  `recruit_Id` int NULL DEFAULT NULL COMMENT '应聘职位编号',
  `name` varchar(20) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT '' COMMENT '被推荐人姓名',
  `tj_id` int NULL DEFAULT 0 COMMENT '推荐人编号',
  `native` varchar(20) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT '中国' COMMENT '籍贯',
  `nation` varchar(20) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT '汉' COMMENT '民族',
  `birth` date NULL DEFAULT '1999-01-01' COMMENT '出生日期',
  `sex` int NULL DEFAULT NULL COMMENT '性别',
  `age` int NULL DEFAULT 20 COMMENT '年龄',
  `approval_state` int NULL DEFAULT 0 COMMENT '审批状态',
  `ploltics` varchar(10) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT '' COMMENT '政治面貌',
  `education` int UNSIGNED NULL DEFAULT NULL COMMENT '学历',
  `marital` varchar(20) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT '' COMMENT '婚姻状况',
  `idcard` varchar(20) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT '' COMMENT '身份证号',
  `start` date NULL DEFAULT NULL COMMENT '入职日期',
  `english` varchar(6) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL COMMENT '英语水平',
  `computer` varchar(10) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL COMMENT '计算机等级',
  `duty` varchar(10) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL COMMENT '职务',
  `station` varchar(20) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT '' COMMENT '应聘岗位',
  `seniority` varchar(20) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL COMMENT '工龄',
  `telephone` varchar(40) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT '' COMMENT '手机号码',
  `address` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT '' COMMENT '住址',
  `school` varchar(100) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT '' COMMENT '毕业院校',
  `major` varchar(20) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL COMMENT '专业',
  `email` varchar(40) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT '' COMMENT '邮箱',
  `attend` varchar(100) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL COMMENT '就读状况',
  `final_date` date NULL DEFAULT NULL COMMENT '毕业时间',
  `self_evaluation` varchar(522) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT '' COMMENT '自我评价',
  `gain_certificate` varchar(522) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT '' COMMENT '荣获证书',
  `program_info` varchar(1800) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT '' COMMENT '项目经验',
  `work_info` varchar(522) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT '' COMMENT '工作经验',
  `professional_info` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT '' COMMENT '专业技能',
  `photo` varchar(255) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT '' COMMENT '照片',
  `resume_type` int NULL DEFAULT NULL COMMENT '简历类型（0普通1人才库2暂存库）',
  PRIMARY KEY (`resume_Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of resumeinfo_list
-- ----------------------------
INSERT INTO `resumeinfo_list` VALUES (2, 3, 'sfd', 2, '中国', '汉', '1999-01-01', NULL, 20, 0, '', NULL, '', '', NULL, NULL, NULL, NULL, '', NULL, '', '', '', NULL, '', NULL, NULL, '', '', '', '', '', '', NULL);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '用户id',
  `username` char(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码保险',
  `salt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码钥匙',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '真实名字',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `enabled` tinyint(1) NULL DEFAULT NULL COMMENT '是否被禁用',
  `sex` int NULL DEFAULT NULL COMMENT '性别',
  `birth` datetime NULL DEFAULT NULL COMMENT '生日',
  `sum_points` int NULL DEFAULT NULL COMMENT '积分总值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 113 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (2, 'test', '85087738b6c1e1d212683bfafc163853', 'JBba3j5qRykIPJQYTNNH9A==', '测试', '12312312312', '123@123.com', 1, 0, NULL, NULL);
INSERT INTO `user` VALUES (3, 'editor', '8583a2d965d6159edbf65c82d871fa3e', 'MZTe7Qwf9QgXBXrZzTIqJQ==', '编辑', NULL, NULL, 1, 0, NULL, NULL);
INSERT INTO `user` VALUES (110, 'jt', 'b8051c43ad5a9c7acb25f5a6963c0f1e', 'Xb9/1tvJnZ3VfG4lrccUZA==', 'jiangting', '123456789', '123456', 1, 1, NULL, NULL);
INSERT INTO `user` VALUES (111, '11', '0596a32312b41ca27a85c0dc32c883bc', '0uVD8bEuz07OE9DAD55c0g==', '11', '11', '11', 1, 0, NULL, NULL);
INSERT INTO `user` VALUES (112, '1', '66d10be5eb0df4a07fe77e4c6a2ed4fa', 'GqeH2v+9xc9cnaigSbXeEA==', 'my name', '1', '1', 1, 0, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
