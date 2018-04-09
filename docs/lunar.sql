Create Table "lunar"  (
	"MaxYear" TEXT,
	"DATA" BLOB
);

insert into lunar values('2100','0c0080050010a0070030c0080050010a0070030c0080050020a0070030c0080050020a0070030c0090050020a0070030c0090050020a0060030c0060030c00900600c0c0060c00c00c00c0c000600c0c0006090303030006000c00c060c0006c00000c0c0c0060003030006c00009009c0090c00c009000300030906030030c0c00060c00090c0060600c0030060c00c003006009060030c0060060c0090900c00090c0090c00c006030006060003030c0c00030c0060030c0090060030c0090300c0080050020a0060030c0080050020b0070030c0090050010a0070030b0090060020a0070040c0080050020a0060030c0080050020b0070030c0090050010a0070030b0090060020a0070040c0080050020a0060030c0080050020b0070030c0090050000c00900909009009090090090090900900909009009009090090090900900900909009009090090090090900900909009009090090090090900900909009009009090090090900900900909009009090060030c0090050010a0070030b008005001090070040c0080050020a0060030c0090040010a0060030c0090050010a0070030b0080050010a008005001090050020a0060030c0080040010a0060030c0090050010a0070030b0080050010a0070030b008005001090070040c0080050020a0060030c0080040010a0060030c0090050010a0070030b008005001090070040c0080050020a0060030c0080040010a0060030c0090050010a0060030c0090050010a0070030b008005001090070040c0080050020a0060030c0080040010a0070030b0080050010a0070040c0080050020a0060030c0080040010a0070030c0090050010a0070030b0080050020a0060030c0080040010a0060030c0090050050020a0060030c0090050010b0070030c0090050010a0070040c0080040020a0060030c0080050020a0060030c0090050010a0070030b0080040020a0060040c0090050020b0070030c00a0050010a0070030b0090050020a0070030c0080040020a0060030c0090050010a0070030c0090050030b007005001090050020a007004001090060020c0070050c0090060030b0080040020a0060030b0080040010a0060030b0080050010a0050040c0080050010a0060030c0080050010b0070030c007005001090070030b0070040020a0060030c0080040020a0070030b0090050010a0060040c0080050020a0060040c0080050010b0070030c007005001090070030c0080050020a0070030c0090050020a0070030c0090050020a0060040c0090050020a0060040c0090050010b0070030c0080050030b007004001090060020c008004002090060020a008004001090050030b0080040020a0060040b0080040c00a0060020b007005001090060030b0070050020a0060020c008004002090070030c008005002090070040c0080040020a0060040b0090050010a0060030b0080050020a0060040c0080050010b00700300108005001090070030c0080050020a007003001090050030a0070030b0090050020a0060040c0090050030b0070040c0090050010c0070040c0080060020b00700400a090060020b007003002090060020a005004001090050030b007004001090050040c0080040c00a0060020c007005001090060030b0070050020a0060020c008004002090060030b008004002090060030b0080040020a0060040b0080040010b0060030b0070050010a00600400207005003080060040030700500307006004003070050030800600400307005004090060040030700500409006005002070050030a0060050030700500400206004002060050030020600400307005004090060040030700500408007005003080050040a00600500307005004002060050030800500400206005002070050040020600500307006004002070050030800600400307005004080060040a006005003080050040020700500409006004002060050030b0060050020700500308006004003070050040800600400307005004080060040020');

Create Table "weekday"  (
	"ID" NUMERIC,
	"VALUE" TEXT,
	PRIMARY KEY ("ID")
);
insert into weekday values(0,'日');
insert into weekday values(1,'一');
insert into weekday values(2,'二');
insert into weekday values(3,'三');
insert into weekday values(4,'四');
insert into weekday values(5,'五');
insert into weekday values(6,'六');

--十三宫星座,蛇夫座成为黄道”十三宫”的一员!
Create Table "zodiac"  (
	"DATEB" NUMERIC,--开始日期
	"DATEE" NUMERIC,--结束日期
	"VALUE" TEXT,
	PRIMARY KEY ("DATEB","DATEE")
);
insert into zodiac values('0419','0513','牡羊座');
insert into zodiac values('0514','0622','金牛座');
insert into zodiac values('0623','0721','双子座');
insert into zodiac values('0722','0810','巨蟹座');
insert into zodiac values('0811','0916','狮子座');
insert into zodiac values('0917','1031','处女座');
insert into zodiac values('1101','1123','天秤座');
insert into zodiac values('1124','1129','天蝎座');
insert into zodiac values('1130','1217','蛇夫座');
insert into zodiac values('1218','0119','射手座');
insert into zodiac values('0120','0217','魔羯座');
insert into zodiac values('0218','0312','宝瓶座');
insert into zodiac values('0313','0418','双鱼座');

Create Table "tiangan"  (
	"ID" NUMERIC,
	"VALUE" TEXT,
	PRIMARY KEY ("ID")
);
insert into tiangan values(0,'癸');
insert into tiangan values(1,'甲');
insert into tiangan values(2,'乙');
insert into tiangan values(3,'丙');
insert into tiangan values(4,'丁');
insert into tiangan values(5,'戊');
insert into tiangan values(6,'己');
insert into tiangan values(7,'庚');
insert into tiangan values(8,'辛');
insert into tiangan values(9,'壬');


Create Table "dizhi"  (
	"ID" NUMERIC,
	"VALUE" TEXT,
	PRIMARY KEY ("ID")
);
insert into dizhi values(0,'亥');
insert into dizhi values(1,'子');
insert into dizhi values(2,'丑');
insert into dizhi values(3,'寅');
insert into dizhi values(4,'卯');
insert into dizhi values(5,'辰');
insert into dizhi values(6,'巳');
insert into dizhi values(7,'午');
insert into dizhi values(8,'未');
insert into dizhi values(9,'申');
insert into dizhi values(10,'酉');
insert into dizhi values(11,'戌');

Create Table "shengxiao"  (
	"ID" NUMERIC,
	"VALUE" TEXT,
	PRIMARY KEY ("ID")
);
insert into shengxiao values(0,'猪');
insert into shengxiao values(1,'鼠');
insert into shengxiao values(2,'牛');
insert into shengxiao values(3,'虎');
insert into shengxiao values(4,'兔');
insert into shengxiao values(5,'龙');
insert into shengxiao values(6,'蛇');
insert into shengxiao values(7,'马');
insert into shengxiao values(8,'羊');
insert into shengxiao values(9,'猴');
insert into shengxiao values(10,'鸡');
insert into shengxiao values(11,'狗');

Create Table "cnumber"  (
	"ID" NUMERIC,
	"VALUE" TEXT,
	PRIMARY KEY ("ID")
);
insert into cnumber values(0,'初');
insert into cnumber values(1,'一');
insert into cnumber values(2,'二');
insert into cnumber values(3,'三');
insert into cnumber values(4,'四');
insert into cnumber values(5,'五');
insert into cnumber values(6,'六');
insert into cnumber values(7,'七');
insert into cnumber values(8,'八');
insert into cnumber values(9,'九');
insert into cnumber values(10,'十');
insert into cnumber values(11,'十一');
insert into cnumber values(12,'十二');

Create Table "sterm"  (
	"ID" NUMERIC,
	"VALUE" TEXT,
	PRIMARY KEY ("ID")
);
insert into sterm values(0,'小寒');
insert into sterm values(1,'大寒');
insert into sterm values(2,'立春');
insert into sterm values(3,'雨水');
insert into sterm values(4,'惊蛰');
insert into sterm values(5,'春分');
insert into sterm values(6,'清明');
insert into sterm values(7,'谷雨');
insert into sterm values(8,'立夏');
insert into sterm values(9,'小满');
insert into sterm values(10,'芒种');
insert into sterm values(11,'夏至');
insert into sterm values(12,'小暑');
insert into sterm values(13,'大暑');
insert into sterm values(14,'立秋');
insert into sterm values(15,'处暑');
insert into sterm values(16,'白露');
insert into sterm values(17,'秋分');
insert into sterm values(18,'寒露');
insert into sterm values(19,'霜降');
insert into sterm values(20,'立冬');
insert into sterm values(21,'小雪');
insert into sterm values(22,'大雪');
insert into sterm values(23,'冬至');

Create Table "caltype"  (
	"ID" NUMERIC,
	"VALUE" TEXT,
	PRIMARY KEY ("ID")
);
insert into caltype values(0,'不存在');
insert into caltype values(1,'儒略历');
insert into caltype values(2,'格里历');

Create Table "holiday"  (
	"DATA" TEXT,
	"VALUE" TEXT,
	"RECESS" TEXT, --放假天数
	PRIMARY KEY ("DATA")
);

insert into holiday values('0101','元旦','3');
insert into holiday values('0106','中国13亿人口日[2005]','0');
insert into holiday values('0108','周恩来逝世纪念日[1976]','0');
insert into holiday values('0121','列宁逝世纪念日[1924]','0');
insert into holiday values('0126','国际海关日[1924]','0');
insert into holiday values('0127','宋庆龄诞辰纪念日[1893]','0');
insert into holiday values('0202','世界湿地日[1996]','0');
insert into holiday values('0207','国际声援南非日[1964]','0');
insert into holiday values('0210','世界气象日[1960]','0');
insert into holiday values('0214','情人节','0');
insert into holiday values('0215','中国12亿人口日[1995]','0');
insert into holiday values('0219','邓小平逝世纪念日[1997]','0');
insert into holiday values('0221','反对殖民制度斗争日[1949] 国际母语日[2000]','0');
insert into holiday values('0224','第三世界青年日','0');
insert into holiday values('0228','世界居住条件调查日','0');
insert into holiday values('0301','国际海豹日[1983]','0');
insert into holiday values('0303','全国爱耳日[2000]','0');
insert into holiday values('0305','中国青年志愿者服务日[2000] 学雷锋日[1963] 周恩来诞辰纪念日[1898] 斯大林逝世纪念日[1953]','0');
insert into holiday values('0308','妇女节[1910]','0');
insert into holiday values('0312','植树节[1979] 孙中山逝世纪念日','0');
insert into holiday values('0314','国际警察日(节) 马克思逝世纪念日[1883]','0');
insert into holiday values('0315','消费者权益日','0');
insert into holiday values('0316','手拉手情系贫困小伙伴全国统一行动日','0');
insert into holiday values('0317','中国国医节[1929] 国际航海日','0');
insert into holiday values('0318','全国科技人才活动日 巴黎公社纪念日[1871]','0');
insert into holiday values('0321','世界睡眠日[2001] 世界儿歌日 世界森林日(林业节)[1972] 国际消除种族歧视日[1976] 国际法语日','0');
insert into holiday values('0322','世界水日[1993] 中国水周(3月22日至3月28日)[1988设/1994改]','0');
insert into holiday values('0323','世界气象日[1950]','0');
insert into holiday values('0324','世界防治结核病日[1996]','0');
insert into holiday values('0330','巴勒斯坦国土日','0');
insert into holiday values('0401','愚人节 全国爱国卫生运动月(四月) 税收宣传月(四月)','0');
insert into holiday values('0402','国际儿童图书日','0');
insert into holiday values('0407','世界卫生日[1950] 反思卢旺达大屠杀国际日[2004]','0');
insert into holiday values('0410','非洲环境保护日[1984]','0');
insert into holiday values('0411','世界帕金森病日[1997]','0');
insert into holiday values('0413','傣族泼水节(公历四月十三至十五)','0');
insert into holiday values('0414','中国11亿人口日[1989]','0');
insert into holiday values('0415','非洲自由日[1958]','0');
insert into holiday values('0416','全球青年服务日[4月16-18日][2000]','0');
insert into holiday values('0421','全国企业家活动日[1994]','0');
insert into holiday values('0422','世界地球日[1970] 列宁诞辰纪念日[1870]','0');
insert into holiday values('0423','世界图书和版权日[1995] 世界读书日[1995]','0');
insert into holiday values('0424','世界青年反对殖民主义日[1957] 亚非新闻工作者日','0');
insert into holiday values('0425','全国预防接种宣传日[1986]','0');
insert into holiday values('0426','世界知识产权日[2000]','0');
insert into holiday values('0427','联谊城日','0');
insert into holiday values('0430','全国交通安全反思日','0');
insert into holiday values('0501','国际劳动节[1889] 国际示威游行日','3');
insert into holiday values('0503','五一假日 世界新闻自由日 太阳日','0');
insert into holiday values('0504','中国五四青年节[1939] 五四运动纪念日[1919] 科技传播日','0');
insert into holiday values('0505','全国碘缺乏病防治日[1994] 马克思诞辰纪念日[1818]','0');
insert into holiday values('0508','世界红十字日[1948] 世界微笑日','0');
insert into holiday values('0509','郝维节 战胜德国法西斯纪念日[1945]','0');
insert into holiday values('0512','国际护士节[1912]','0');
insert into holiday values('0515','国际家庭(咨询)日[1994]','0');
insert into holiday values('0517','世界电信日[1969]','0');
insert into holiday values('0518','国际博物馆日','0');
insert into holiday values('0520','世界计量日[1999] 全国母乳喂养宣传日[1990] 全国学生营养日[1990]','0');
insert into holiday values('0521','世界文化多样性对话和发展日[2001]','0');
insert into holiday values('0522','国际生物多样性日[1994设/2001改]','0');
insert into holiday values('0523','非洲解放日[1963]','0');
insert into holiday values('0526','世界向人体条件挑战日[1993]','0');
insert into holiday values('0527','上海解放日[1949]','0');
insert into holiday values('0529','国际维和人员日[2002] 宋庆龄逝世纪念日[1981]','0');
insert into holiday values('0530','“五卅”反对帝国主义运动纪念日[1925]','0');
insert into holiday values('0531','世界无烟日[1988]','0');
insert into holiday values('0601','国际儿童节[1949] 世界牛奶日[1961]','0');
insert into holiday values('0604','受侵略戕害无辜儿童国际日','0');
insert into holiday values('0605','世界环境日[1974]','0');
insert into holiday values('0606','全国爱眼日[1996]','0');
insert into holiday values('0611','中国10亿人口日[1981] 世界无童工日[2002]','0');
insert into holiday values('0614','世界献血者日[2004]','0');
insert into holiday values('0616','国际非洲儿童日[1991]','0');
insert into holiday values('0617','世界防止荒漠化和干旱日[1995]','0');
insert into holiday values('0620','世界难民日[2001]','0');
insert into holiday values('0622','中国儿童慈善活动日','0');
insert into holiday values('0623','国际奥林匹克日[1894/1984] 世界手球日','0');
insert into holiday values('0625','全国土地日[1991]','0');
insert into holiday values('0626','国际禁毒日(国际反毒品日)[1987] \n禁止药物滥用和非法贩运国际日[1987]\n 国际宪章日(联合国宪章日)[1945] 支援酷刑受害者国际日[1997]','0');
insert into holiday values('0630','世界青年联欢节','0');
insert into holiday values('0701','建党节[1921] 香港回归纪念[1997]国际建筑日[1985] 亚洲“三十亿人口日”[1988]','0');
insert into holiday values('0702','国际体育记者日','0');
insert into holiday values('0706','朱德逝世纪念日[1976]','0');
insert into holiday values('0707','中国人民抗日战争纪念日[1937]','0');
insert into holiday values('0711','中国航海日[2005] 世界(50亿)人口日[1987]','0');
insert into holiday values('0720','人类月球日(人类首次成功登月)[1969]','0');
insert into holiday values('0726','世界语(言)创立日 葡萄牙祖父母日[2003]','0');
insert into holiday values('0728','第一次世界大战爆发[1914]','0');
insert into holiday values('0730','非洲妇女日','0');
insert into holiday values('0801','建军节[1927]','0');
insert into holiday values('0805','恩格斯逝世纪念日[1895]','0');
insert into holiday values('0806','国际电影节[1932]','0');
insert into holiday values('0808','中国父亲节[1988]','0');
insert into holiday values('0809','世界土著人民国际日[1994]','0');
insert into holiday values('0812','国际青年人日[1999]','0');
insert into holiday values('0816','燕衔泥节','0');
insert into holiday values('0815','日本正式宣布无条件投降日[1945] 世界反法西斯战争胜利纪念日[1945]','0');
insert into holiday values('0826','全国律师咨询日[1993]','0');
insert into holiday values('0903','中国抗日战争胜利纪念日[1945]','0');
insert into holiday values('0908','世界扫盲日[1966] 国际新闻工作者(团结)日[1958]','0');
insert into holiday values('0909','毛泽东逝世纪念日[1976]','0');
insert into holiday values('0910','中国教师节[1985]','0');
insert into holiday values('0914','世界清洁地球日','0');
insert into holiday values('0916','国际臭氧层保护日[1987]','0');
insert into holiday values('0918','“九·一八”事变纪念日(中国国耻日)[1931]','0');
insert into holiday values('0920','全国公民道德宣传日[2003] 全国爱牙日[1989]','0');
insert into holiday values('0921','国际和平日(全球停火和非暴力日,2002年以后)[2002]','0');
insert into holiday values('0925','鲁迅诞辰纪念日[1881]','0');
insert into holiday values('0926','(曲阜国际)孔子文化节[1989]','0');
insert into holiday values('0927','世界旅游日[1979]','0');
insert into holiday values('0928','孔子诞辰','0');
insert into holiday values('1001','国庆节','3');
insert into holiday values('1004','世界动物日[1949]','0');
insert into holiday values('1006','老人节','0');
insert into holiday values('1008','全国高血压日[1998] 世界视觉日 国际左撇子日','0');
insert into holiday values('1009','世界邮政日(万国邮联日)[1969]','0');
insert into holiday values('1010','辛亥革命纪念日[1911] 世界精神卫生日[1992] 世界居室卫生日','0');
insert into holiday values('1011','声援南非政治犯日','0');
insert into holiday values('1012','世界(60亿)人口日[1999]','0');
insert into holiday values('1014','世界标准日[1969]','0');
insert into holiday values('1015','中国首次载人航天圆满成功[2003] 国际盲人节(白手杖节)[1984]','0');
insert into holiday values('1016','世界粮食日[1979]','0');
insert into holiday values('1017','消除贫穷国际日[1992]','0');
insert into holiday values('1019','鲁迅逝世纪念日[1936]','0');
insert into holiday values('1020','世界骨质疏松日[1997]','0');
insert into holiday values('1022','世界传统医药日[1992]','0');
insert into holiday values('1024','联合国日[1945] 世界发展信息日','0');
insert into holiday values('1028','世界“男性健康日”[2000]','0');
insert into holiday values('1031','世界勤俭日','0');
insert into holiday values('1107','十月社会主义革命纪念日[1917]','0');
insert into holiday values('1108','中国记者日[2000]','0');
insert into holiday values('1109','中国消防宣传日(消防节, 全国消防安全宣传教育日)[1992]','0');
insert into holiday values('1110','世界青年节(日)[1946]','0');
insert into holiday values('1111','光棍节(开玩笑，呵呵) 国际科学与和平周(本日所属的一周) ','0');
insert into holiday values('1112','孙中山诞辰纪念日[1866, 1926定] 刘少奇逝世纪念日[1969]','0');
insert into holiday values('1114','世界糖尿病日[1991]','0');
insert into holiday values('1117','国际大学生节(世界学生节)[1946]','0');
insert into holiday values('1120','世界儿童日[1986]','0');
insert into holiday values('1121','世界问候日[1973] 世界电视日[1996]','0');
insert into holiday values('1124','刘少奇诞辰纪念日[1893]','0');
insert into holiday values('1128','恩格斯诞辰纪念日[1820]','0');
insert into holiday values('1129','国际声援巴勒斯坦人民国际日[1977]','0');
insert into holiday values('1201','世界艾滋病日[1988] 朱德诞辰纪念日[1886]','0');
insert into holiday values('1202','废除一切形式奴役世界日[1986]','0');
insert into holiday values('1203','世界残疾人日[1992]','0');
insert into holiday values('1204','中国法制宣传日[2001]','0');
insert into holiday values('1205','国际经济和社会发展志愿人员日[1985] 世界弱能人士日','0');
insert into holiday values('1207','国际民航日[纪念1994, 1996定]','0');
insert into holiday values('1209','“一二·九”运动纪念日[1935] 世界足球日[1995]','0');
insert into holiday values('1210','世界人权日(诺贝尔日)[1950]','0');
insert into holiday values('1211','世界防治哮喘日[1998]','0');
insert into holiday values('1212','西安事变纪念日[1936]','0');
insert into holiday values('1213','南京大屠杀纪念日·勿忘国耻,紧记血泪史!!![1937]','0');
insert into holiday values('1215','世界强化免疫日','0');
insert into holiday values('1220','澳门回归纪念[1999]','0');
insert into holiday values('1221','国际篮球日 斯大林诞辰纪念日[1879]','0');
insert into holiday values('1224','平安夜','0');
insert into holiday values('1225','圣诞节','0');
insert into holiday values('1226','毛泽东诞辰纪念[1893]','0');
insert into holiday values('1228','世界小丑节[1987]','0');
insert into holiday values('1229','国际生物多样性日[1994]','0');
--农历节日
Create Table "choliday"  (
	"DATA" TEXT,
	"VALUE" TEXT,
	"RECESS" TEXT,  --放假天数
	PRIMARY KEY ("DATA")
);
insert into choliday values('0101','春节、弥勒佛圣诞!','3');
insert into choliday values('0106','定光佛圣诞','0');
insert into choliday values('0115','元宵节','0');
insert into choliday values('0116','侗族芦笙节(正月十六至二十)','0');
insert into choliday values('0125','填仓节','0');
insert into choliday values('0129','送穷日','0');
insert into choliday values('0201','瑶族忌鸟节','0');
insert into choliday values('0202','春龙节(龙抬头节) 畲族会亲节','0');
insert into choliday values('0208','释迦牟尼佛出家 傈傈族刀杆节','0');
insert into choliday values('0215','释迦牟尼佛涅槃','0');
insert into choliday values('0209','海空上师生日','0');
insert into choliday values('0219','观世音菩萨圣诞','0');
insert into choliday values('0221','普贤菩萨圣诞','0');
insert into choliday values('0303','北帝诞  苗族黎族歌墟节','0');
insert into choliday values('0315','白族三月街(三月十五至二十)','0');
insert into choliday values('0316','准提菩萨圣诞','0');
insert into choliday values('0323','天后诞  妈祖诞(天上圣母诞辰)','0');
insert into choliday values('0404','文殊菩萨圣诞','0');
insert into choliday values('0408','释迦牟尼佛圣诞','0');
insert into choliday values('0418','锡伯族西迁节','0');
insert into choliday values('0415','佛吉祥日——释迦牟尼佛诞生、\n成道、涅槃三期同一庆(即南传佛教国家的卫塞节)','0');
insert into choliday values('0505','端午节 黎族朝花节 苗族龙船年','0');
insert into choliday values('0513','伽蓝菩萨圣诞 关帝诞 阿昌族泼水节','0');
insert into choliday values('0522','鄂温克族米阔鲁节','0');
insert into choliday values('0529','瑶族达努节','0');
insert into choliday values('0603','护法韦驮尊天菩萨圣诞','0');
insert into choliday values('0606','姑姑节 天贶节 壮族祭田节 瑶族尝新节','0');
insert into choliday values('0619','观世音菩萨成道——此日放生、念佛，功德殊胜','0');
insert into choliday values('0624','关帝诞 彝族阿昌族白族佤族纳西族基诺族火把节星回节','0');
insert into choliday values('0707','七夕情人节','0');
insert into choliday values('0713','大势至菩萨圣诞 侗族吃新节','0');
insert into choliday values('0715','中元节 盂兰盆会 普米族转山会','0');
insert into choliday values('0724','龙树菩萨圣诞','0');
insert into choliday values('0730','地藏菩萨圣诞','0');
insert into choliday values('0815','中秋节 拉祜族尝新节','0');
insert into choliday values('0822','燃灯佛圣诞','0');
insert into choliday values('0909','重阳节 中国老年节(义务助老活动日)[1989]','0');
insert into choliday values('0919','观世音菩萨出家纪念日','0');
insert into choliday values('0930','药师琉璃光如来圣诞','0');
insert into choliday values('1001','祭祖节(十月朝)','0');
insert into choliday values('1005','达摩祖师圣诞','0');
insert into choliday values('1015','下元节"','0');
insert into choliday values('1016','瑶族盘王节"','0');
insert into choliday values('1107','阿弥陀佛圣诞','0');
insert into choliday values('1208','释迦如来成道日,腊八节','0');
insert into choliday values('1223','北方灶君节[北方小年(扫房日)]','0');
insert into choliday values('1224','小年 南方祭灶节[南方小年(掸尘日)]','0');
insert into choliday values('1229','华严菩萨圣诞','0');
insert into choliday values('0100','除夕','0');