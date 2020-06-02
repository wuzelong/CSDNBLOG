/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2020/5/20 21:43:05                           */
/*==============================================================*/

drop table if exists revert;

drop table if exists message;

drop table if exists product;


drop table if exists user;

/*==============================================================*/
/* Table: message                                               */
/*==============================================================*/
create table message
(
   mid            int not null AUTO_INCREMENT,
   uid               int,
   pid            int,
   title                varchar(25),
   content              varchar(200),
   time                 varchar(25),
   revertCount          int default 0,
   primary key (mid)
);

/*==============================================================*/
/* Table: product                                               */
/*==============================================================*/
create table product
(
   pid            int not null AUTO_INCREMENT,
   name          varchar(30),
   brand                 varchar(25),
   model                varchar(25),
   price                numeric(10,1)check(price>0),
   picture              varchar(100),
   introduction         varchar(200),
   primary key (pid)
);

/*==============================================================*/
/* Table: revert                                                */
/*==============================================================*/
create table revert
(
   rid             int not null AUTO_INCREMENT,
   mid            int,
   uid               int,
   content              varchar(200),
   time                 varchar(25),
   primary key (rid)
);

/*==============================================================*/
/* Table: user                                                  */
/*==============================================================*/
create table user
(
   uid               int not null AUTO_INCREMENT,
   password             varchar(25),
   name             varchar(30),
   email                varchar(30),
   role                 varchar(10) default 'users',
   primary key (uid)
);

alter table message add constraint FK_Relationship_2 foreign key (pid)
      references product (pid) on delete cascade on update cascade;

alter table message add constraint FK_Relationship_4 foreign key (uid)
      references user (uid) on delete cascade on update cascade;

alter table revert add constraint FK_Relationship_3 foreign key (mid)
      references message (mid) on delete cascade on update cascade;

alter table revert add constraint FK_Relationship_5 foreign key (uid)
      references user (uid) on delete cascade on update cascade;

create trigger trOnMessage
after insert on revert for each row
	update message set revertCount=revertCount+1 where mid=new.mid;


insert into user values(null,'123','吴仄','413652081@qq.com','admins');
insert into user values(null,'123','AminWu','413652081@163.com','admins');
insert into user values(null,'123','何飞','413652081@xina.com','admins');
insert into user values(null,'123','张三','123456789@qq.com','users');
insert into user values(null,'123','谢亚飞','223456789@163.com',default);
insert into user values(null,'567','lisa','5678901234@163.com',default);
insert into user values(null,'888','jiff','888910523@163.com',default);

insert into product values(null,'手机','小辣椒','红辣椒 X3',1699.0,'static/images/pid1.jpg','小辣椒X3 原装正品水滴全面屏学生价128G游戏手机4G全网通安卓八核500元左右智能手机可买小米华为荣耀耳机');
insert into product values(null,'手机','华为','荣耀30s',2399.0,'static/images/pid2.jpg','新品6期分期华为荣耀30S双模5G全网通手机正品官方旗舰V20 30pro V30 荣耀30s 5g版华为手机12荣耀系列款plus');
insert into product values(null,'笔记本电脑','摩天酷',' M8',1898.0,'static/images/pid3.jpg','【升级5mm微边框】2020款摩天酷 全新15.6英寸轻薄便携学生超薄上网本超极本商务办公大屏手提笔记本电脑');
insert into product values(null,'笔记本电脑','海尔','S11',2999.0,'static/images/pid4.jpg','海尔简爱S11触摸屏笔记本电脑 轻薄便携 学生家用办公商务超极本PC平板二合一迷你上网本手提智能折叠笔记本');
insert into product values(null,'打印机','惠普','2621',338.0,'static/images/pid5.jpg','惠普2621彩色喷墨打印机家用手机无线WiFi扫描复印一体机小型办公学生家庭黑白a4复印件hp2132可连蓝牙连接迷');
insert into product values(null,'游戏手柄','Welcom','WE-8600',89.0,'static/images/pid6.jpg','welcom电脑游戏手柄PC360电视版usb有线双人PS3摇杆steam家用NBA2k19怪物猎人世界FIFAOL4鬼泣5实况足球只狼');
insert into product values(null,'机械键盘','爱国者','W656',499.0,'static/images/pid7.jpg','爱国者正品新款红轴个性创意机械键盘炫彩背光电竞吃鸡LOL游戏装备有线键盘台式笔记本电脑男女办公通用USB');
insert into product values(null,'鼠标','英菲克',' PM7',99.0,'static/images/pid8.jpg','英菲克无线鼠标可充电式蓝牙双模静音无声无限办公游戏电竞专用适用苹果mac小米联想华硕华为微软笔记本电脑');
insert into product values(null,'耳机','影巨人',' S9耳机',59.0,'static/images/pid9.jpg','typec耳机华为p20p30pro/nova5pro荣耀20s/9x小米8/10一加tpyec版');
insert into product values(null,'耳机',' 硕图','tws-w9',99.0,'static/images/pid10.jpg','蓝牙耳机双耳入耳式微小型迷你华为苹果小米超长续航待机男女安卓通用真无线隐形单耳塞降噪开车运动跑步防水');
insert into product values(null,'充电器','顺南','SN-2020003',18.8,'static/images/pid11.jpg','适用华为5A超级快充p30P20充电器note10 nova5 5i荣耀v30/20/10magic2闪充插头充头Mate30/20数据线Type-c线');
insert into product values(null,'键盘托','鹿为','ych-009',25.8,'static/images/pid12.jpg','机械键盘木手托护腕手腕垫托手鼠标腕托87实木掌托ikbc木托木质托');
insert into product values(null,'鼠标','英菲克','P-W2',35.5,'static/images/pid13.jpg','英菲克PW2金属机械电竞鼠标有线游戏专用牧马人电脑办公家用静音无声吃鸡宏cf穿越火线lol联想华硕戴尔笔记本');
insert into product values(null,'书','清华大学出版社','9787302529156',59.8,'static/images/pid14.jpg','算法竞赛入门到进阶 微课版 罗勇军郭卫斌 算法竞赛入门进阶经典教材 训练指南算法艺术与信息学竞赛视频讲解参考书');
insert into product values(null,'运动鞋','特步','983119119510',239,'static/images/pid15.jpg','特步男鞋透气网面运动鞋男士2020夏季新款休闲鞋子潮鞋跑步鞋网鞋');
insert into product values(null,'裙子','逸阳','EWXA92354',339,'static/images/pid16.jpg','逸阳女裤新款夏季网纱半身裙女中长款半透a字气质高腰仙女裙');
insert into product values(null,'皮鞋','巴图腾','B16112601',359,'static/images/pid17.jpg','巴图腾夏季男士商务皮鞋男黑色休闲内增高真皮正装镂空透气男鞋子');
insert into product values(null,'奶粉','a2','a2白金3段 6罐组合',2508,'static/images/pid18.jpg','官方旗舰店a2至初新西兰进口婴幼儿奶粉三段3段900g*6 乳铁蛋白');
insert into product values(null,'风扇','艾美特','FS40103R',219,'static/images/pid19.jpg','艾美特电风扇落地家用办公室风扇落地扇台立式静音电扇官方旗舰店');
insert into product values(null,'茅台酒','茅台','43度茅台飞天酒',999,'static/images/pid20.jpg','飞天茅台 43度 酱香型 白酒 500ml');
insert into product values(null,'巧克力','费列罗','FERRERO ROCHER',52,'static/images/pid21.jpg','意大利进口费列罗巧克力水晶礼盒装T30粒装 散装喜糖正品送女友');
insert into product values(null,'蓝桥','斯伯丁','74-604Y',160,'static/images/pid22.jpg','斯伯丁篮球官方正品7号6小学生5儿童真皮牛皮手感耐磨NBA运动专用');
insert into product values(null,'羽毛球拍','克洛斯威','C8',149,'static/images/pid23.jpg','克洛斯威羽毛球拍2支装C8正品碳素成人进攻型双 羽拍单全耐打套装');
insert into product values(null,'毛笔','文笔湖','惜之',83.6,'static/images/pid24.jpg','文笔湖高档狼毫小楷毛笔套装专业初学者中楷兼毫毛笔成人书法抄经');
insert into product values(null,'宣纸','曹张记','生宣',80.0,'static/images/pid25.jpg','曹张记宣纸四尺六尺生宣纸毛笔书法练字纸国画创作专用纸 半生半熟作品纸工笔画熟宣对开小六尺加厚安徽练习');
insert into product values(null,'墨水','紫芳斋','松烟墨',15.5,'static/images/pid26.jpg','紫芳斋墨汁毛笔墨水大瓶500g宣纸书画墨液国画银金墨1000克容量大桶初学者毛笔字墨水毛边纸书法专用墨水批发');
insert into product values(null,'钢笔','英雄','英雄 1511a',89.0,'static/images/pid27.jpg','英雄牌钢笔学生专用练字礼物送礼美工钢笔墨囊可替换成人办公男士高档硬笔弯头尖书法笔定制刻字女生复古旗舰');
insert into product values(null , '笔记本' , 'DELL' , '灵越7000' , 7799.0 , 'static/images/pid28.jpg' , 'Dell15.6英寸轻薄笔记本');
insert into product values(null , '打印机' , '惠普' , 'M16a' , 799.0 , 'static/images/pid29.jpg' , '黑白激光打印机');
insert into product values(null , '单反相机' , '索尼' , 'ILCE' , 7899.0 ,  'static/images/pid30.jpg', '搭配F328-70镜头32G套餐');
insert into product values(null , '手机' , 'OPPO' , 'g123' , 2199.0 , 'static/images/pid31.jpg' , 'OPPO Ace2 5G超级玩家');
insert into product values(null, '笔记本' , '联想' , 'Y700' , 6999.0 ,  'static/images/pid32.jpg' , '全触控屏幕，360度翻转');
insert into product values(null,  '摄像机' , '松下' , 'g123' , 4000.0 , 'static/images/pid33.jpg', '高倍变焦搭载5轴光学防抖');
insert into product values(null,  '游戏手柄' , '任天堂' , 'Joy-Con' , 459.0 ,  'static/images/pid34.jpg' , '任天堂Nintendo');
insert into product values(null,  '机械键盘' , '罗技' , 'G813' , 1199.0 ,  'static/images/pid35.jpg' , '超薄矮轴全尺寸背光机械键盘');
insert into product values(null,  '智能VR' , 'VIVE' , 'Cosmos' , 5899.0 ,  'static/images/pid36.jpg' , '智能VR眼镜、PCVR3D头盔');
insert into product values(null,  '运动手环' , '华为' , 'B5' , 999.0 ,  'static/images/pid37.jpg' , '蓝牙耳机、心率检测、彩屏触控');

