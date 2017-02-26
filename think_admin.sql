/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50550
Source Host           : 127.0.0.1:3306
Source Database       : think_admin

Target Server Type    : MYSQL
Target Server Version : 50550
File Encoding         : 65001

Date: 2017-02-26 19:51:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for think_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `think_admin_user`;
CREATE TABLE `think_admin_user` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL DEFAULT '' COMMENT '管理员用户名',
  `password` varchar(50) NOT NULL DEFAULT '' COMMENT '管理员密码',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态 1 启用 0 禁用',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `last_login_time` datetime DEFAULT NULL COMMENT '最后登录时间',
  `last_login_ip` varchar(20) DEFAULT NULL COMMENT '最后登录IP',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员表';

-- ----------------------------
-- Records of think_admin_user
-- ----------------------------
INSERT INTO `think_admin_user` VALUES ('1', 'admin', '0dfc7612f607db6c17fd99388e9e5f9c', '1', '2016-10-18 15:28:37', '2017-02-26 17:40:52', '127.0.0.1');

-- ----------------------------
-- Table structure for think_article
-- ----------------------------
DROP TABLE IF EXISTS `think_article`;
CREATE TABLE `think_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章ID',
  `cid` smallint(5) unsigned NOT NULL COMMENT '分类ID',
  `type` tinyint(1) unsigned DEFAULT '0' COMMENT '文章类型 1 纯文字 2 一张图 和文字 3 多图加文字',
  `title` varchar(255) DEFAULT '' COMMENT '标题',
  `introduction` varchar(255) DEFAULT '' COMMENT '简介',
  `content` longtext COMMENT '内容',
  `author` varchar(20) DEFAULT '' COMMENT '作者',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '状态 0 待审核  1 审核',
  `reading` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '阅读量',
  `thumb` varchar(255) DEFAULT '' COMMENT '缩略图',
  `photo` text COMMENT '图集',
  `is_top` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否置顶  0 不置顶  1 置顶',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `create_time` int(11) NOT NULL COMMENT '创建时间',
  `publish_time` int(11) NOT NULL COMMENT '发布时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='文章表';

-- ----------------------------
-- Records of think_article
-- ----------------------------
INSERT INTO `think_article` VALUES ('1', '1', '1', '顺丰上市，总裁掷10亿给员工发红包！被打的快递小哥又火一把', '顺丰上市，总裁掷10亿给员工发红包！被打的快递小哥又火一把', '今天，“顺丰控股”在深交所敲钟上市，作为国内快递业的老大，这次的顺丰上市自然吸引了国内资本的目光。甚少露面的顺丰速运创始人、顺丰控股董事长王卫现身敲钟仪式，宣告顺丰正式上市。\r\n\r\n顺丰上市，总裁掷10亿给员工发红包！被打的快递小哥又火一把\r\n\r\n一身工作装加上黑框眼镜，似乎很难看出他是身家千亿的顺丰大老板。\r\n\r\n顺丰上市，总裁掷10亿给员工发红包！被打的快递小哥又火一把\r\n公开报道称，红包金额最低1888元，最高超过1万元。\r\n\r\n不少员工在微博晒出红包截图\r\n\r\n顺丰上市，总裁掷10亿给员工发红包！被打的快递小哥又火一把\r\n\r\n顺丰上市，总裁掷10亿给员工发红包！被打的快递小哥又火一把\r\n\r\n顺丰上市，总裁掷10亿给员工发红包！被打的快递小哥又火一把\r\n去年被打的快递员小哥被请来做敲钟嘉宾\r\n\r\n顺丰上市，总裁掷10亿给员工发红包！被打的快递小哥又火一把\r\n\r\n2016年4月17日上午，一位顺丰快递员骑着电三轮在北京送快递，不小心与一辆黑色现代发生刮蹭，现代车司机下车后连续掌掴快递员6次，这个场景被围观者用手机拍下并发到互联网上，引起了社会对快递“小哥”尊严的广泛讨论。\r\n\r\n随后王卫在朋友圈声明一定为员工讨回公道。在今天上市敲钟的仪式中，被打的快递小哥再次现身，这一次他是被王卫邀请而来，成为敲钟的嘉宾之一。\r\n\r\n顺丰上市，总裁掷10亿给员工发红包！被打的快递小哥又火一把\r\n\r\n据前顺丰员工李越向记者透露，王卫的贴身保镖大多来历不凡，通常两到三年一换，每届保镖在退役之后，往往会晋升为公司内部的中层干部。“能力强的会成为区域经理，次一点的也会让他留下当区域主管。为王总长期忠诚服务的员工，无论高低，相当于拿到一张终身饭卡。”\r\n\r\n得此老板，夫复何求？\r\n王卫身家也水涨船高到1400多亿元，成为快递业老大。\r\n\r\n今日，顺丰速运上市后，当前股价报55.21元，已经涨停，总市值超越“万科”和“美的”，成为深市第一大市值公司。按照目前的股价计算，其市值高达2310亿。\r\n\r\n在2016年度福布斯中国富豪排行榜中，王卫排名第四。据媒体统计：\r\n\r\n如果顺丰控股接下来再收获1个涨停，王卫即可超越马化腾，跻身第三名；\r\n\r\n如果连续收获3个涨停，即可超越马云；\r\n\r\n而5个涨停之后，就可成为中国首富。\r\n\r\n顺丰上市，总裁掷10亿给员工发红包！被打的快递小哥又火一把\r\n\r\n面对如此豪放的老板，我只想说\r\n\r\n不说了，我去送快递了......', 'rose', '1', '999', 'http://p1.pstatp.com/large/16cb0007d3dd47497bd4', null, '0', '0', '1487397482', '1487397482');
INSERT INTO `think_article` VALUES ('2', '1', '1', '新华社记者“冒死”亲测福岛 日本核辐射有多严重？', '福岛核泄漏事故,马上就要六周年。\r\n\r\n中国外交部发言人日前表示,中方一向高度关注日本福岛核泄漏事故产生的影响,多次要求日本政府做好事故的后续处理工作。希望日本政府能够就如何采取有效措施切实消除核泄漏事故产生的影响作出负责任的说明。这不仅是对日本国民负责,也是对邻国人民和国际社会负责。', '福岛核泄漏事故,马上就要六周年。\r\n\r\n中国外交部发言人日前表示,中方一向高度关注日本福岛核泄漏事故产生的影响,多次要求日本政府做好事故的后续处理工作。希望日本政府能够就如何采取有效措施切实消除核泄漏事故产生的影响作出负责任的说明。这不仅是对日本国民负责,也是对邻国人民和国际社会负责。\r\n\r\n但日本方面声称,福岛辐射值处于正常水平。\r\n\r\n日本是中国游客出境游的一大选择,2016年估计约有640万人次到访日本。福岛核泄漏疑云再起,在网友中引发争论:带着这一疑问,我们的记者携带测量仪,深入福岛核泄漏事故核心区域,给出答案。\r\n\r\n本文摘编自微信公众号“新华国际”(ID:interxinhua),转载已获授权记者在福岛核事故核心区域拍摄,标语为“有高辐射地区,不建议迁回”\r\n\r\n1\r\n\r\n福岛隔离区:仪器震得手麻\r\n\r\n进入福岛第一核电站后,日本东京电力公司人员要求关闭手机,并换上一套装备,包括手套、头套、两双棉袜、马甲、辐射仪、耳麦等。穿戴后,再换上工作帽和雨靴样式的防护靴,之后坐另外一辆大巴去离机组很近的地方采访。\r\n\r\n在机组附近,记者将辐射仪的警报声关闭,但还止不住狂震:\r\n\r\n“站在离机组几十米远,海拔约30米的高地上往下看,只有2号机组保存完好,其他机组都发生过氢气爆炸。1至3号机组全部发生了堆芯熔化,压力容器内的核燃料棒熔化成了核残渣,如何取出这些核残渣东电目前还毫无办法。”\r\n\r\n“堆芯熔化”是核电站可能发生的事故中最为严重的事态。正如视频里展现,事故周边目前仍是“鬼城状态”。福岛隔离区荒无人烟\r\n\r\n这一切在提醒所有人:按照国际核事件分级表,福岛核事故等级为最高的7级,同1986年苏联切尔诺贝利核电站爆炸和泄漏事故等级相同。\r\n\r\n1986年发生的切尔诺贝利核事故,已过去30余年,60余万人受灾,如今方圆30公里仍是无人区。专家估计,地区恢复到适宜人类活动时间超过1万年。\r\n\r\n2\r\n\r\n不值得信任的日本政府\r\n\r\n“堆芯熔化”这一事态,在事故发生后,东京电力公司一直辩称为“堆芯损伤”,直到两个月后才首次承认“堆芯熔化”。\r\n\r\n按当时东电公司的内部标准,即“堆芯损伤比例超过5%”即为“堆芯熔化”,那么在2011年3月14日就应宣布“堆芯熔化”。2016年6月21日,东电公司社长广濑直己(图左)就公司隐瞒“堆芯熔化”一事道歉。', 'rose', '1', '666', 'http://a2.peoplecdn.cn/ffb51f13c9e6508bb5691cb19ab2a9ad.jpg@1l', null, '0', '0', '1487397482', '1487397482');
INSERT INTO `think_article` VALUES ('3', '1', '1', '中国4500万人将丢饭碗？或许与你有关', '新世纪以来,中国一直被誉为“世界工厂”,庞大的劳动力、廉价的土地资源和相对成熟的基础设施,从世界各地吸引了大量的资本。然而现今,关于外资是否正从中国撤离的话题,正引发激烈的争论。中国外贸的决战是否已经开始?', '新世纪以来,中国一直被誉为“世界工厂”,庞大的劳动力、廉价的土地资源和相对成熟的基础设施,从世界各地吸引了大量的资本。然而现今,关于外资是否正从中国撤离的话题,正引发激烈的争论。中国外贸的决战是否已经开始?\r\n\r\n\r\n\r\n外资出走敲响警钟,波及中国4500万就业岗位\r\n\r\n就在近两年,关于外资从中国撤离的消息屡屡被曝光。\r\n\r\n\r\n\r\n值得关注的是外商在固定资产投资方面的暴跌。据国家统计局数据,2016年外资在中国固定资产的投资额仅为1211.97亿,对比11年3269.81亿这一数字,短短五年时间便下跌了62.94%。\r\n\r\n另外,2月16日,据商务部公布的数据显示,今年1月份,中国实际使用外资额为120亿美元,同比下跌14.73%。这更让“外资撤潮说”重新成为热门话题。权威的解读认为月度数据不代表长期趋势,但从实际情况来看,每一次外资撤离都涉及到人数众多的裁员。\r\n\r\n根据官方估算,全部外商投资企业吸纳的直接就业人数超过4500万。而外资的不断撤出,可能将影响这一庞大就业人群的生计!\r\n\r\n谁抢了中国人的工作?\r\n\r\n\r\n\r\n究竟为什么外资企业撤离中国?究竟是谁抢了中国人的工作?\r\n\r\n1第一,中国的生产成本高了。\r\n\r\n近年广东等地的土地成本持续上扬,税收优惠的力度减小,外资在华的投资收益率越来越低。\r\n\r\n在用工成本涨势惊人的情况下,中国劳动力的工资增速却未曾降低,多个年份甚至是全球第一。这代表着外资在华能捞到的油水越发稀薄了。\r\n\r\n2第二,对外资政策准入门槛提高,优惠政策取消。\r\n\r\n中国许多地区都提高了投资门槛,对新进的外资企业,不仅没有专门的优惠政策,甚至还对其产业类型、节能减排方面提出很高的要求。此外税收上,外资企业的“超国民待遇”也正在失效。\r\n\r\n3第三,中国劳动力不再廉价。\r\n\r\n由于货币量化宽松,导致物价上涨,又反作用于食品价格和劳动力价格,中国劳动力没那么物美价廉了。\r\n\r\n4第四,市场竞争愈发激烈。\r\n\r\n除了以上原因外,也有部分外企自身经营不善,转型不及时才被迫退出中国,例如诺基亚、摩托罗拉等知名企业。因中国市场竞争激烈,利润下降而退出中国市场的外企,也大有存在。\r\n\r\n\r\n\r\n我们还不得不正视一个问题:外资企业尚可撤出中国,国内企业会如何反应?他们大多对海外市场的运营一无所知。较高的企业经营成本,会迫使资本从实体经济(尤其是劳动密集型行业)中退出,不仅重创就业市场,进一步恶化经济衰退的趋势,还会加剧资产的泡沫化,增加金融风险。对此,决策者应当慎重应对。\r\n\r\n谁都不想失业,但未来的风险难以预料。或许我们每个人都得好好想想,如果突然一天失业了,该怎么办?\r\n\r\n如果不幸失业了你该何去何从?\r\n\r\n\r\n\r\n1关键是掌握主动,先发才能制人\r\n\r\n有人曾分享了这样的故事:他的好友在入职没多久就遇到了行业系统性风险。在当时别的同事还在体制内随遇而安时,他就已开始寻找新目标,在半年时间内去了一家更优秀的企业。等各种坑爹制度出台,大家都怨声载道的时候,只有他在继续自己的梦想。\r\n\r\n其实,无论我们是在大公司还是小公司,是在体制内还是体制外,都应该把“随时可以离开公司”当成目标,摆脱舒适区,提前储备多项足以立身的能力。\r\n\r\n2注意培养你的“睡后收入”\r\n\r\n为什么我们辛辛苦苦工作,却赶不上房价增长的速度?\r\n\r\n为什么我们即使很勤奋、很努力,但还是感到越来越穷?\r\n\r\n为什么在那些说着1个亿小目标的人面前,我们好像完全看不到希望?\r\n\r\n因为当今世界,劳动无法跑赢资本!光靠自己打工和工资收入是远远不够的。资本收入、知识产权收入这类“睡后收入”才能让我们更有安全感。\r\n\r\n\r\n\r\n3如何增加资本收入呢?\r\n\r\n普通人可以这两大块着手:储蓄&投资。\r\n\r\n第一阶段:储蓄。只要养成好的理财习惯,在早期工作的时候注重积累,那么你将积累一大笔本金。常见的储蓄工具有银行存款、国债、银行理财、货币基金等。\r\n\r\n第二阶段:投资。投资,简单的说就是购买理财产品,达到钱生钱的目的。高风险的投资品可以让你迅速致富,但亏损的可能性也非常大,最好通过专业人士打理,例如购买基金。中低风险的固收类投资品就跟房租似的,能给你带来稳定的持续回报,例如债券、信托等。这里需要注意的是,不论哪类投资都有风险,大家需要谨慎对待。\r\n\r\n\r\n\r\n来源:中金在线(ID:cnfol-com)综合面包财经(ID:mbcaijing)、论制造业(ID:sibu-999888)、凤凰财经(ID:finance_ifeng)、工人日报客户端、好规划网', 'rose', '1', '666', 'http://a3.peoplecdn.cn/abad5975e3971106e161526788a1416c.jpg@1l', null, '0', '0', '1487397483', '1487397483');

-- ----------------------------
-- Table structure for think_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `think_auth_group`;
CREATE TABLE `think_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(100) NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `rules` varchar(255) NOT NULL COMMENT '权限规则ID',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='权限组表';

-- ----------------------------
-- Records of think_auth_group
-- ----------------------------
INSERT INTO `think_auth_group` VALUES ('1', '超级管理组', '1', '1,2,3,73,74,5,6,7,8,9,10,11,12,39,40,41,42,43,14,13,20,21,22,23,24,15,25,26,27,28,29,30,16,17,44,45,46,47,48,18,49,50,51,52,53,19,31,32,33,34,35,36,37,54,55,58,59,60,61,62,56,63,64,65,66,67,57,68,69,70,71,72');

-- ----------------------------
-- Table structure for think_auth_group_access
-- ----------------------------
DROP TABLE IF EXISTS `think_auth_group_access`;
CREATE TABLE `think_auth_group_access` (
  `uid` mediumint(8) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='权限组规则表';

-- ----------------------------
-- Records of think_auth_group_access
-- ----------------------------
INSERT INTO `think_auth_group_access` VALUES ('1', '1');

-- ----------------------------
-- Table structure for think_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `think_auth_rule`;
CREATE TABLE `think_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL DEFAULT '' COMMENT '规则名称',
  `title` varchar(20) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态',
  `pid` smallint(5) unsigned NOT NULL COMMENT '父级ID',
  `icon` varchar(50) DEFAULT '' COMMENT '图标',
  `sort` tinyint(4) unsigned NOT NULL COMMENT '排序',
  `condition` char(100) DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 COMMENT='规则表';

-- ----------------------------
-- Records of think_auth_rule
-- ----------------------------
INSERT INTO `think_auth_rule` VALUES ('1', 'admin/System/default', '系统配置', '1', '1', '0', 'fa fa-gears', '0', '');
INSERT INTO `think_auth_rule` VALUES ('2', 'admin/System/siteConfig', '站点配置', '1', '1', '1', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('3', 'admin/System/updateSiteConfig', '更新配置', '1', '0', '1', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('5', 'admin/Menu/default', '菜单管理', '1', '1', '0', 'fa fa-bars', '0', '');
INSERT INTO `think_auth_rule` VALUES ('6', 'admin/Menu/index', '后台菜单', '1', '1', '5', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('7', 'admin/Menu/add', '添加菜单', '1', '0', '6', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('8', 'admin/Menu/save', '保存菜单', '1', '0', '6', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('9', 'admin/Menu/edit', '编辑菜单', '1', '0', '6', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('10', 'admin/Menu/update', '更新菜单', '1', '0', '6', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('11', 'admin/Menu/delete', '删除菜单', '1', '0', '6', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('12', 'admin/Nav/index', '导航管理', '1', '1', '5', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('13', 'admin/Category/index', '栏目管理', '1', '1', '14', 'fa fa-sitemap', '0', '');
INSERT INTO `think_auth_rule` VALUES ('14', 'admin/Content/default', '内容管理', '1', '1', '0', 'fa fa-file-text', '0', '');
INSERT INTO `think_auth_rule` VALUES ('15', 'admin/Article/index', '文章管理', '1', '1', '14', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('16', 'admin/User/default', '用户管理', '1', '1', '0', 'fa fa-users', '0', '');
INSERT INTO `think_auth_rule` VALUES ('17', 'admin/User/index', '普通用户', '1', '1', '16', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('18', 'admin/AdminUser/index', '管理员', '1', '1', '16', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('19', 'admin/AuthGroup/index', '权限组', '1', '1', '16', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('20', 'admin/Category/add', '添加栏目', '1', '0', '13', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('21', 'admin/Category/save', '保存栏目', '1', '0', '13', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('22', 'admin/Category/edit', '编辑栏目', '1', '0', '13', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('23', 'admin/Category/update', '更新栏目', '1', '0', '13', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('24', 'admin/Category/delete', '删除栏目', '1', '0', '13', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('25', 'admin/Article/add', '添加文章', '1', '0', '15', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('26', 'admin/Article/save', '保存文章', '1', '0', '15', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('27', 'admin/Article/edit', '编辑文章', '1', '0', '15', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('28', 'admin/Article/update', '更新文章', '1', '0', '15', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('29', 'admin/Article/delete', '删除文章', '1', '0', '15', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('30', 'admin/Article/toggle', '文章审核', '1', '0', '15', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('31', 'admin/AuthGroup/add', '添加权限组', '1', '0', '19', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('32', 'admin/AuthGroup/save', '保存权限组', '1', '0', '19', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('33', 'admin/AuthGroup/edit', '编辑权限组', '1', '0', '19', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('34', 'admin/AuthGroup/update', '更新权限组', '1', '0', '19', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('35', 'admin/AuthGroup/delete', '删除权限组', '1', '0', '19', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('36', 'admin/AuthGroup/auth', '授权', '1', '0', '19', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('37', 'admin/AuthGroup/updateAuthGroupRule', '更新权限组规则', '1', '0', '19', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('39', 'admin/Nav/add', '添加导航', '1', '0', '12', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('40', 'admin/Nav/save', '保存导航', '1', '0', '12', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('41', 'admin/Nav/edit', '编辑导航', '1', '0', '12', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('42', 'admin/Nav/update', '更新导航', '1', '0', '12', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('43', 'admin/Nav/delete', '删除导航', '1', '0', '12', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('44', 'admin/User/add', '添加用户', '1', '0', '17', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('45', 'admin/User/save', '保存用户', '1', '0', '17', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('46', 'admin/User/edit', '编辑用户', '1', '0', '17', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('47', 'admin/User/update', '更新用户', '1', '0', '17', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('48', 'admin/User/delete', '删除用户', '1', '0', '17', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('49', 'admin/AdminUser/add', '添加管理员', '1', '0', '18', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('50', 'admin/AdminUser/save', '保存管理员', '1', '0', '18', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('51', 'admin/AdminUser/edit', '编辑管理员', '1', '0', '18', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('52', 'admin/AdminUser/update', '更新管理员', '1', '0', '18', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('53', 'admin/AdminUser/delete', '删除管理员', '1', '0', '18', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('54', 'admin/Slide/default', '扩展管理', '1', '1', '0', 'fa fa-wrench', '0', '');
INSERT INTO `think_auth_rule` VALUES ('55', 'admin/SlideCategory/index', '轮播分类', '1', '1', '54', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('56', 'admin/Slide/index', '轮播图管理', '1', '1', '54', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('57', 'admin/Link/index', '友情链接', '1', '1', '54', 'fa fa-link', '0', '');
INSERT INTO `think_auth_rule` VALUES ('58', 'admin/SlideCategory/add', '添加分类', '1', '0', '55', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('59', 'admin/SlideCategory/save', '保存分类', '1', '0', '55', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('60', 'admin/SlideCategory/edit', '编辑分类', '1', '0', '55', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('61', 'admin/SlideCategory/update', '更新分类', '1', '0', '55', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('62', 'admin/SlideCategory/delete', '删除分类', '1', '0', '55', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('63', 'admin/Slide/add', '添加轮播', '1', '0', '56', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('64', 'admin/Slide/save', '保存轮播', '1', '0', '56', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('65', 'admin/Slide/edit', '编辑轮播', '1', '0', '56', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('66', 'admin/Slide/update', '更新轮播', '1', '0', '56', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('67', 'admin/Slide/delete', '删除轮播', '1', '0', '56', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('68', 'admin/Link/add', '添加链接', '1', '0', '57', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('69', 'admin/Link/save', '保存链接', '1', '0', '57', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('70', 'admin/Link/edit', '编辑链接', '1', '0', '57', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('71', 'admin/Link/update', '更新链接', '1', '0', '57', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('72', 'admin/Link/delete', '删除链接', '1', '0', '57', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('73', 'admin/ChangePassword/index', '修改密码', '1', '1', '1', '', '0', '');
INSERT INTO `think_auth_rule` VALUES ('74', 'admin/ChangePassword/updatePassword', '更新密码', '1', '0', '1', '', '0', '');

-- ----------------------------
-- Table structure for think_category
-- ----------------------------
DROP TABLE IF EXISTS `think_category`;
CREATE TABLE `think_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `name` varchar(50) NOT NULL COMMENT '分类名称',
  `alias` varchar(50) DEFAULT '' COMMENT '导航别名',
  `content` longtext COMMENT '分类内容',
  `thumb` varchar(255) DEFAULT '' COMMENT '缩略图',
  `icon` varchar(20) DEFAULT '' COMMENT '分类图标',
  `list_template` varchar(50) DEFAULT '' COMMENT '分类列表模板',
  `detail_template` varchar(50) DEFAULT '' COMMENT '分类详情模板',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '分类类型  1  列表  2 单页',
  `sort` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID',
  `path` varchar(255) DEFAULT '' COMMENT '路径',
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='分类表';

-- ----------------------------
-- Records of think_category
-- ----------------------------
INSERT INTO `think_category` VALUES ('1', '分类一', '', '', '', '', '', '', '1', '0', '0', '0,', '2016-12-22 18:22:24');
INSERT INTO `think_category` VALUES ('2', '推荐', '热点推荐', '人热点推荐', '', '', '', '', '1', '0', '0', '0,', '2017-02-25 11:30:21');

-- ----------------------------
-- Table structure for think_link
-- ----------------------------
DROP TABLE IF EXISTS `think_link`;
CREATE TABLE `think_link` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '链接名称',
  `link` varchar(255) DEFAULT '' COMMENT '链接地址',
  `image` varchar(255) DEFAULT '' COMMENT '链接图片',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态 1 显示  2 隐藏',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='友情链接表';

-- ----------------------------
-- Records of think_link
-- ----------------------------

-- ----------------------------
-- Table structure for think_nav
-- ----------------------------
DROP TABLE IF EXISTS `think_nav`;
CREATE TABLE `think_nav` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` int(10) unsigned NOT NULL COMMENT '父ID',
  `name` varchar(20) NOT NULL COMMENT '导航名称',
  `alias` varchar(20) DEFAULT '' COMMENT '导航别称',
  `link` varchar(255) DEFAULT '' COMMENT '导航链接',
  `icon` varchar(255) DEFAULT '' COMMENT '导航图标',
  `target` varchar(10) DEFAULT '' COMMENT '打开方式',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态  0 隐藏  1 显示',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='导航表';

-- ----------------------------
-- Records of think_nav
-- ----------------------------

-- ----------------------------
-- Table structure for think_slide
-- ----------------------------
DROP TABLE IF EXISTS `think_slide`;
CREATE TABLE `think_slide` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cid` int(10) unsigned NOT NULL COMMENT '分类ID',
  `name` varchar(50) NOT NULL COMMENT '轮播图名称',
  `description` varchar(255) DEFAULT '' COMMENT '说明',
  `link` varchar(255) DEFAULT '' COMMENT '链接',
  `target` varchar(10) DEFAULT '' COMMENT '打开方式',
  `image` varchar(255) DEFAULT '' COMMENT '轮播图片',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态  1 显示  0  隐藏',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='轮播图表';

-- ----------------------------
-- Records of think_slide
-- ----------------------------

-- ----------------------------
-- Table structure for think_slide_category
-- ----------------------------
DROP TABLE IF EXISTS `think_slide_category`;
CREATE TABLE `think_slide_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '轮播图分类',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='轮播图分类表';

-- ----------------------------
-- Records of think_slide_category
-- ----------------------------
INSERT INTO `think_slide_category` VALUES ('1', '首页轮播');

-- ----------------------------
-- Table structure for think_system
-- ----------------------------
DROP TABLE IF EXISTS `think_system`;
CREATE TABLE `think_system` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '配置项名称',
  `value` text NOT NULL COMMENT '配置项值',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统配置表';

-- ----------------------------
-- Records of think_system
-- ----------------------------
INSERT INTO `think_system` VALUES ('1', 'site_config', 'a:7:{s:10:\"site_title\";s:30:\"Think Admin 后台管理系统\";s:9:\"seo_title\";s:0:\"\";s:11:\"seo_keyword\";s:0:\"\";s:15:\"seo_description\";s:0:\"\";s:14:\"site_copyright\";s:0:\"\";s:8:\"site_icp\";s:0:\"\";s:11:\"site_tongji\";s:0:\"\";}');

-- ----------------------------
-- Table structure for think_user
-- ----------------------------
DROP TABLE IF EXISTS `think_user`;
CREATE TABLE `think_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `mobile` varchar(11) DEFAULT '' COMMENT '手机',
  `email` varchar(50) DEFAULT '' COMMENT '邮箱',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '用户状态  1 正常  2 禁止',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `last_login_time` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `last_login_ip` varchar(50) DEFAULT '' COMMENT '最后登录IP',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of think_user
-- ----------------------------
