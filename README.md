

# hospital_outpatient_register_system

《数据库原理与应用》课程设计文档

**目录**

[一 需求分析......................................................................................................... 1](#_Toc26606)

[1.1项目背景................................................................................................. 1](#_Toc15361)

[1.2任务概述................................................................................................. 1](#_Toc775)

[1.2.1 信息需求..................................................................................... 1](#_Toc230)

[1.2.2 功能需求..................................................................................... 2](#_Toc30820)

[1.3性能需求................................................................................................. 2](#_Toc16586)

[1.3.1精度.............................................................................................. 2](#_Toc5223)

[1.3.2时间特性要求.............................................................................. 2](#_Toc9933)

[1.3.3安全性、完整性要求.................................................................. 3](#_Toc19670)

[二 概念结构设计................................................................................................. 2](#_Toc29757)

[2.1确定实体及属性图................................................................................. 2](#_Toc24054)

[2.2 实体属性联系图.................................................................................... 5](#_Toc15279)

[三 逻辑结构设计................................................................................................. 6](#_Toc25033)

[四 物理结构设计................................................................................................. 8](#_Toc16858)

[4.1数据库表设计......................................................................................... 8](#_Toc14847)

[4.2 物理设计模型...................................................................................... 10](#_Toc6708)

[五 数据库实施.................................................................................................... 11](#_Toc10899)

[5.1 建立数据库........................................................................................... 11](#_Toc1453)

[5.2 创建表及有关约束............................................................................... 11](#_Toc12845)

[5.2.1 创建医生表（doctor）............................................................. 11](#_Toc3060)

[5.2.2 创建医生职称表（post）......................................................... 12](#_Toc22208)

[5.2.3 创建医生科室表（dept）........................................................ 12](#_Toc19494)

[5.2.4 创建患者表（patient）............................................................ 12](#_Toc4101)

[5.2.5 创建患者挂号记录表（register）........................................... 13](#_Toc10214)

[5.2.6 创建患者就诊记录表（record）............................................. 13](#_Toc1717)

[5.2.7 创建账户表（account）........................................................... 14](#_Toc17444)

[5.3创建视图............................................................................................... 14](#_Toc22196)

[5.3.1 创建医生视图........................................................................... 14](#_Toc29979)

[5.3.2 创建医生职称视图................................................................... 14](#_Toc13203)

[5.3.3 创建医生科室视图................................................................... 14](#_Toc5971)

[5.3.4 创建患者视图........................................................................... 15](#_Toc2571)

[5.3.5 创建患者挂号记录视图........................................................... 15](#_Toc9644)

[5.3.6 创建患者就诊记录视图........................................................... 15](#_Toc20062)

[5.3.7 创建账户视图........................................................................... 15](#_Toc7352)

[5.4存储过程............................................................................................... 15](#_Toc26312)

[5.5触发器................................................................................................... 16](#_Toc32241)

[六 主要界面及核心代码................................................................................... 17](#_Toc23135)

[6.1登录界面截图....................................................................................... 17](#_Toc6538)

[6.2门诊部门管理截图............................................................................... 19](#_Toc28695)

[6.3患者挂号界面截图............................................................................... 22](#_Toc15347)

[6.4医生接诊界面截图............................................................................... 25](#_Toc1734)

[七 系统的实施与维护....................................................................................... 28](#_Toc1092)

[八 总结............................................................................................................... 29](#_Toc30296)

 





# 一 需求分析

## 1.1[项目背景](file:///F:/Documents/Tencent Files/380465581/AppData/Local/Temp/360zip$Temp/360$1/13软2第四组zuizhongs.doc#_Toc437417696)

随着医疗卫生事业的发展，医院改革的深入，信息的有效、高效利用，己受到人们的关注。充分利用现代科技手段，加强各种信息的利用开发，是医院信息管理的一个重要内容，也是当今医院的需要。目前的医院仅仅把医院的信息管理系统作为微机工具系统，而没有发挥其管理的真正功能;系统分散设计，各部门独立实施，没有考虑信息的关联和共享，存在信息孤岛现象;医院管理错综复杂，从而形成了医院信息管理系统数据的多样化，数据量大等特点。

通过本次医院门诊信息系统的设计,解决医院系统中各种信息管理的集成问题，使医院系统的各种信息管理一体化。同时，了解医院门诊的流程，把握信息管理系统开发概念，掌握动态网站技术，熟悉系统开发的进程，做到会用相关工具设计和开发相关系统，并实现。

## 1.2任务概述

### 1.2.1 信息需求 

该系统主要的实体有：医生、医生职称、医生科室、患者、就诊记录、挂号记录、登录信息需要存储的信息如下：

（1）医生：包括医生编号，职称编号，科室编号，医生姓名，医生性别，医生年龄，联系电话，医生地址，医生邮箱

（2）医生职称：包括职称编号，职称

（3）医生科室：包括科室编号，科室名称，科室描述

（4）患者：包括患者编号，姓名，性别，年龄，电话，住址

（5）挂号：包括挂号编号，医生编号，患者编号，挂号时间，挂号状态

（6）就诊记录：包括就诊编号，挂号编号，就诊时间，患者症状，就诊报告，处方

（7）账户：包括账户编号，账户名，账户密码，账户状态，账户类型，编号

该系统中个对象间的联系如下：

(1)  医生与患者之间是一对多的管理关系1:n

(2)  医生与医生职称之间是一对一的管理关系1:1

(3)  医生科室与医生之间是一对多的分配关系1:n

(4)  患者与挂号记录之间是一对一的关系1:1

(5)  患者与就诊记录之间是一对一的关系1:1

### 1.2.2 功能需求

系统功能模块图如图1.1所示：

 

![img](file:///C:/Users/DAIDEN~1/AppData/Local/Temp/msohtmlclip1/01/clip_image002.gif)

图1.1 系统功能模块图

## 1.3性能需求

### 1.3.1精度

（1）要按照严格的数据格式输入，否则系统不予响应进行处理。 

（2）查询时要保证查全率，所有相应域包含查询关键字的记录都应能查到。因为通常有文件的记录会很多，所以本系统采用了两种方法进行查询：直接查询和模糊查询。

### 1.3.2时间特性要求

说明对于该软件的时间特性要求，如对：

（1）响应时间：操作的响应时间保持在120毫秒内，视网络情况而定，当网速较慢时，应该对顾客给出提示信息。

（2）更新处理时间：发布信息、更新信息等不超过15秒。

（3）数据的转换和传送时间：95％的事务必须在小于1s时间内处理完，否则，操作人员将不等待处理的完成。

（4）解题时间：保证20人可以同时在客户端登录，系统正常运行，正确提示相关内容。



### 1.3.3安全性、完整性要求

(1)  系统安全作为系统运行的重要条件之一，根据调研须满足如下条件：

(2)  系统需要登录认证后访问系统，员工仅对顾客权限范围内的信息进行修改。

(3)  系统需要对前员工及顾客提交的数据进行过滤，防止出现SQL注入式攻击，影响系统的安全。

**
**



 

# 二 概念结构设计

## 2.1确定实体及属性图

医生实体属性图如图2.1所示。

![img](file:///C:/Users/DAIDEN~1/AppData/Local/Temp/msohtmlclip1/01/clip_image004.gif)

图2.1 医生实体属性图

 

 

医生职称实体属性图如图2.2所示。

 

![img](file:///C:/Users/DAIDEN~1/AppData/Local/Temp/msohtmlclip1/01/clip_image006.gif)

图2.2 管理员实体属性图

 

 

科室实体属性图如图2.3所示。

![img](file:///C:/Users/DAIDEN~1/AppData/Local/Temp/msohtmlclip1/01/clip_image008.gif)

图2.3 科室实体属性图

 

患者实体属性图如图2.4所示。

 

**![img](file:///C:/Users/DAIDEN~1/AppData/Local/Temp/msohtmlclip1/01/clip_image010.gif)**

图2.4 患者实体属性图

 

 

挂号记录实体属性图如图2.5所示。

![img](file:///C:/Users/DAIDEN~1/AppData/Local/Temp/msohtmlclip1/01/clip_image012.gif)

图2.5 挂号记录实体属性图

 

 



就诊记录实体属性图如图2.6所示。

![img](file:///C:/Users/DAIDEN~1/AppData/Local/Temp/msohtmlclip1/01/clip_image014.gif)

图2.6 就诊记录实体属性图

 

就诊记录实体属性图如图2.7所示。

 

![img](file:///C:/Users/DAIDEN~1/AppData/Local/Temp/msohtmlclip1/01/clip_image016.gif)

图2.7 账户实体属性图

 

 

医院门诊挂号系统实体联系图如图2.8所示。

![img](file:///C:/Users/DAIDEN~1/AppData/Local/Temp/msohtmlclip1/01/clip_image018.gif)

图2.8 实体联系图

 

## 2.2 实体属性联系图

医院门诊挂号系统实体属性联系图如图2.9所示。

 

![img](file:///C:/Users/DAIDEN~1/AppData/Local/Temp/msohtmlclip1/01/clip_image020.gif)图2.9 医院门诊挂号系统实体属性联系图



# 三 逻辑结构设计



可由概念结构设计步骤中图书管理总体E-R图可转换为成系统的逻辑结构，图书管理系统所有实体及关联关系转换后的关系模式如下所示：

（1）医生：（医生编号、姓名、性别、电话、地址、邮箱、年龄）

F医生函数依赖：医生编号→姓名、性别、电话、地址、邮箱、年龄

因为医生关系模式中：

主键是：医生编号。

非主属性是：姓名、性别、电话、地址、邮箱、年龄

医生关系模式中非主属性对主键既没有部分依赖又没有传递依赖。

所以：医生∈3NF。

（2）医生职称：（职称编号，职称）

F医生职称函数依赖：职称编号→职称

因为医生职称关系模式中：

主键是：职称编号。

非主属性是：职称

医生职称关系模式中非主属性对主键既没有部分依赖又没有传递依赖。

所以：医生职称∈3NF。

（3）医生科室：（科室编号，科室名称，科室描述）

F医生科室函数依赖：科室编号→科室名称，科室描述

因为医生科室关系模式中：

主键是：科室编号。

非主属性是：科室名称，科室描述

医生科室关系模式中非主属性对主键既没有部分依赖又没有传递依赖。

所以：医生科室∈3NF。

（4）患者：（患者编号，姓名，性别，年龄，电话，住址）

F患者信息函数依赖：患者编号→姓名，性别，年龄，电话，住址

因为患者关系模式中：

主键是：患者编号。

非主属性是：姓名，性别，年龄，电话，住址

患者关系模式中非主属性对主键既没有部分依赖又没有传递依赖。

所以：患者∈3NF。

（5）挂号记录（挂号编号，挂号时间，挂号状态）

F挂号记录函数依赖：挂号编号→挂号时间，挂号状态

因为挂号记录关系模式中：

主键是：挂号编号。

非主属性是：挂号时间，挂号状态。

挂号记录关系模式中所有的非主属性对主键既没有部分依赖又没有传递依赖。

所以：挂号记录∈3NF。

（6）就诊记录（就诊编号，就诊时间，患者症状，就诊报告，处方）

F就诊记录函数依赖：就诊编号→就诊时间，患者症状，就诊报告，处方

因为就诊记录关系模式中：

主键是：就诊编号。

非主属性是：就诊时间，患者症状，就诊报告，处方。

就诊记录关系模式中非主属性对主键既没有部分依赖有没有传递依赖。

所以：就诊记录∈3NF。

（7）账户（账户编号，账户名，账户密码，账户状态，账户类型，编号）

F登录信息函数依赖：账户编号→账户名，账户密码，账户状态，账户类型，编号

因为账户关系模式中：

主键是：账户编号。

非主属性是：账户名，账户密码，账户状态，账户类型，编号。

账户关系模式中所有的非主属性对主键既没有部分依赖又没有传递依赖。

所以：账户∈3NF。

经过规范化理论分析，上述关系模式均已达到3NF，不存在大量的数据冗余，插入异常，修改复杂，删除异常。

 



 

# 四 物理结构设计

## 4.1数据库表设计

本医院门诊挂号系统的数据库名称为registersystem，该数据库中包含医生表（doctor）、医生职称表（post）、医生科室表（dept）、患者表（patient）、患者挂号记录表（register）、患者就诊记录表（record）、账户表（account）

（1）医生表（doctor）

表4.1 医生表



| 列名            | 数据类型    | 允许NULL值 | 描述     | 备注 |
| --------------- | ----------- | ---------- | -------- | ---- |
| doctor _id      | int(11)     |            | 医生编号 | 主键 |
| post _id        | int(11)     |            | 职称编号 | 外键 |
| type _id        | int(11)     |            | 科室编号 | 外键 |
| doctor _name    | varchar(20) |            | 医生姓名 |      |
| doctor _gender  | int(11)     |            | 医生性别 |      |
| doctor _age     | int(11)     |            | 医生年龄 |      |
| doctor _tel     | char(11)    |            | 医生电话 |      |
| doctor _address | varchar(50) |            | 医生地址 |      |
| doctor _email   | varchar(30) |            | 医生邮箱 |      |

 

（2）医生职称表（post）

表4.2 医生职称表



| 列名       | 数据类型    | 允许NULL值 | 描述     | 备注 |
| ---------- | ----------- | ---------- | -------- | ---- |
| post_id    | int(11)     |            | 职称编号 | 主键 |
| post _name | varchar(20) |            | 职称     |      |

 

（3）医生科室表（dept）

表4.3 医生科室表



| 列名       | 数据类型     | 允许NULL值 | 描述     | 备注 |
| ---------- | ------------ | ---------- | -------- | ---- |
| dept _id   | int(11)      |            | 科室编号 | 主键 |
| dept _name | varchar(20)  |            | 科室名称 |      |
| dept_desc  | Varchar(255) |            | 科室描述 |      |

 

(4)  患者表（patient）

表4.4 患者表



| 列名             | 数据类型    | 允许NULL值 | 描述     | 备注 |
| ---------------- | ----------- | ---------- | -------- | ---- |
| patient _id      | int(11)     |            | 患者编号 | 主键 |
| patient _name    | varchar(20) |            | 患者姓名 |      |
| patient _gender  | int(11)     |            | 患者性别 |      |
| patient _age     | int(11)     |            | 患者年龄 |      |
| patient _phone   | char(11)    |            | 患者电话 |      |
| patient _address | varchar(30) |            | 患者住址 |      |

 

（5）患者挂号记录表（register）

表4.5 患者挂号记录表



| 列名            | 数据类型 | 允许NULL值 | 描述         | 备注 |
| --------------- | -------- | ---------- | ------------ | ---- |
| register _id    | int(11)  |            | 挂号记录编号 | 主键 |
| doctor _id      | int(11)  |            | 医生编号     | 外键 |
| patient _id     | int(11)  |            | 患者编号     | 外键 |
| register _time  | datetime |            | 挂号时间     |      |
| register _statu | int(11)  |            | 挂号状态     |      |

 

（6）患者就诊记录表（record）

表4.6 患者就诊记录表



| 列名              | 数据类型 | 允许NULL值 | 描述         | 备注 |
| ----------------- | -------- | ---------- | ------------ | ---- |
| record _id        | int(11)  |            | 就诊记录编号 | 主键 |
| register _id      | int(11)  |            | 挂号记录编号 | 外键 |
| record  _time     | datetime |            | 就诊时间     |      |
| record  _sick     | text     |            | 就诊报告     |      |
| record  _symptoms | text     |            | 患者症状     |      |
| record  _medicine | text     |            | 处方         |      |

 

（7）账户表（account）

表4.7 账户表



| 列名               | 数据类型    | 允许NULL值 | 描述     | 备注                            |
| ------------------ | ----------- | ---------- | -------- | ------------------------------- |
| account _ id       | int(11)     |            | 账户编号 | 主键                            |
| account_ name      | varchar(20) |            | 账户名   |                                 |
| account_  password | varchar(20) |            | 账户密码 |                                 |
| account_ status    | int(11)     |            | 账户状态 |                                 |
| account_ type      | int(11)     |            | 账户类型 | 0表示管理  1表示医生  2表示患者 |
| account_ num       | int(11)     |            | 编号     |                                 |

## 4.2 物理设计模型

物理设计模型图如图4.1所示。

![IMG_256](file:///C:/Users/DAIDEN~1/AppData/Local/Temp/msohtmlclip1/01/clip_image022.jpg)

图4.1物理设计模型图



 

# 五 数据库实施

## 5.1 建立数据库

使用交互式创建数据库如图5.1所示。

![img](file:///C:/Users/DAIDEN~1/AppData/Local/Temp/msohtmlclip1/01/clip_image024.jpg)

图5.1数据库及对象图

## 5.2 创建表及有关约束

### 5.2.1 创建医生表（doctor）

```mysql
CREATE TABLE `doctor` (

 `doctor_id` int(11) NOT NULL AUTO_INCREMENT,

 `post_id` int(11) NULL DEFAULT NULL,

 `dept_id` int(11) NULL DEFAULT NULL,

 `doctor_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,

 `doctor_gender` int(11) NOT NULL,

 `doctor_age` int(11) NOT NULL,

 `doctor_tel` char(11) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '12345678901',

 `doctor_address` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,

 `doctor_email` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,

 PRIMARY KEY (`doctor_id`) USING BTREE,

 INDEX `accountk_1`(`dept_id`) USING BTREE,

 INDEX `accountk_2`(`post_id`) USING BTREE,

 CONSTRAINT `accountk_1` FOREIGN KEY (`dept_id`) REFERENCES `dept` (`dept_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

 CONSTRAINT `accountk_2` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;
```

### 5.2.2 创建医生职称表（post）

```mysql
CREATE TABLE `post` (

 `post_id` int(11) NOT NULL AUTO_INCREMENT,

 `post_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,

 PRIMARY KEY (`post_id`) USING BTREE

) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;
```

### 5.2.3 创建医生科室表（dept）
```mysql
CREATE TABLE `dept` (

 `dept_id` int(11) NOT NULL AUTO_INCREMENT,

 `dept_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,

 PRIMARY KEY (`dept_id`) USING BTREE

) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;
```

### 5.2.4 创建患者表（patient）

```mysql
CREATE TABLE `patient` (

 `patient_id` int(11) NOT NULL AUTO_INCREMENT,

 `patient_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,

 `patient_gender` int(11) NOT NULL,

 `patient_age` int(11) NOT NULL,

 `patient_tel` char(11) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '12345678901',

 `patient_address` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,

 PRIMARY KEY (`patient_id`) USING BTREE

) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;
```

### 5.2.5 创建患者挂号记录表（register）
```mysql
CREATE TABLE `register` (

 `register_id` int(11) NOT NULL AUTO_INCREMENT,

 `doctor_id` int(11) NULL DEFAULT NULL,

 `patient_id` int(11) NULL DEFAULT NULL,

 `register_status` int(11) NOT NULL,

 `register_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

 PRIMARY KEY (`register_id`) USING BTREE,

 INDEX `register_1`(`doctor_id`) USING BTREE,

 INDEX `register_2`(`patient_id`) USING BTREE,

 CONSTRAINT `register_1` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`doctor_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,

 CONSTRAINT `register_2` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;
```

### 5.2.6 创建患者就诊记录表（record）
```mysql
CREATE TABLE `record` (

 `record_id` int(11) NOT NULL AUTO_INCREMENT,

 `register_id` int(11) NULL DEFAULT NULL,

 `record_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

 `record_sick` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,

 `record_symptoms` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,

 `record_medicine` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,

 PRIMARY KEY (`record_id`) USING BTREE,

 INDEX `register_122`(`register_id`) USING BTREE,

 CONSTRAINT `register_122` FOREIGN KEY (`register_id`) REFERENCES `register` (`register_id`) ON DELETE RESTRICT ON UPDATE RESTRICT

) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;


```

### 5.2.7 创建账户表（account）


```mysql
CREATE TABLE `account`  (

 `account_id` int(11) NOT NULL AUTO_INCREMENT,

 `account_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,

 `account_password` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,

 `account_status` int(11) NOT NULL,

 `account_type` int(11) NOT NULL DEFAULT 0 COMMENT '

0表示管理员\r\n    1表示医生\r\n    2表示患者',

 `account_num` int(11) NOT NULL,

 PRIMARY KEY (`account_id`) USING BTREE,

 INDEX `account_num`(`account_num`) USING BTREE

) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

INSERT INTO `account` VALUES 

(1, 'admin', 'admin', 0, 0, -1);

INSERT INTO `account` VALUES (2, '123', '123', 0, 1, 1);

INSERT INTO `account` VALUES (3, '456', '456', 0, 2, 1);

INSERT INTO `account` VALUES (4, '789', '789', 0, 1, 2);

```

### 5.3.1 创建医生信息视图


```mysql
CREATEVIEWview_doctor

AS SELECT *

FROM   doctor

GO
```

### 5.3.2 创建医生职称视图

```mysql
CREATEVIEWview_post

AS SELECT  *

FROM   post

GO
```

### 5.3.3 创建医生科室视图

```mysql
CREATEVIEWview_dept

AS SELECT  *

FROM   dept

GO
```


### 5.3.4 创建患者视图
```mysql
CREATEVIEWview_patient

AS SELECT  *

FROM   patient

GO
```

### 5.3.5 创建患者挂号记录视图
```mysql
CREATEVIEWview_register

AS SELECT  *

FROM   register

GO

5.3.6 创建患者就诊记录视图

CREATEVIEWview_record

AS SELECT  *

FROM   record

GO

5.3.7 创建账户视图

CREATEVIEWview_account

AS SELECT *

FROM   account

GO
```


## 5.4存储过程
```mysql
/*登录存储过程*/
 -- 登录
 drop PROCEDURE login_proc
 delimiter $$
 CREATE PROCEDURE login_proc(IN uname VARCHAR(20), IN upassword VARCHAR(20),IN type int)
 BEGIN
 SELECT 
 *
 from account
 WHERE 
 account_name = uname
 and
 account_password = upassword
 and
 account_type=type;
 END$$
 delimiter;
 /*存储过程调用*/
 set @uname = 'admin';
 set @upassword = 'admin';
 set @type=0;
 call login_proc(@uname,@upassword,@type)
 /*视图*/
 DROP VIEW patient_register
 create VIEW patient_register as 
 SELECT
 register_id,patient.patient_id,doctor.doctor_id,patient_name,patient.patient_gender,patient_age,patient_tel,patient_address,register_time,dept_name,register_status,post.post_name,doctor.doctor_name
 FROM
 register
 LEFT JOIN patient ON register.patient_id = patient.patient_id
 LEFT JOIN doctor on doctor.doctor_id = register.doctor_id
 LEFT JOIN dept on dept.dept_id = doctor.dept_id
 LEFT JOIN post on doctor.post_id = post.post_id
```

## 5.5触发器
```mysql
/*触发器*/
 DROP trigger ins_record
 create trigger ins_record
 after insert on record for each row 
 begin 
 UPDATE register set register_status = 0
 WHERE register_id = new.register_id;
 end;
```


# 六 主要界面及核心代码

## 6.1登录界面截图

 

|      |                                                              |
| ---- | ------------------------------------------------------------ |
|      | ![IMG_256](file:///C:/Users/DAIDEN~1/AppData/Local/Temp/msohtmlclip1/01/clip_image026.jpg) |


图6.1 登陆界面

```jsp
@ResponseBody

  public AccountBean login(String username, String pwd, int type, HttpSession session){

​    AccountBean bean = service.login(username, pwd, type, session);

​    if (bean!=null){

 

​      return bean;

​    }

​      return null;

  }

<html>

   <head>


             <meta charset="UTF-8">


​       <title>宝鸡文理学院-医院门诊挂号系统</title>

             <style type="text/css">


​          *{

​              margin: 0;

​              padding: 0;

​          }

​       </style>

​       <link rel="icon" href="Images/logo_favicon.ico" type="image/x-icon" />

   </head>

   <frameset rows="80,*" cols="*" frameborder="no" border="0" framespacing="0">

​       <frame src="top.jsp" name="topFrame" scrolling="no" noresize="noresize" id="topFrame" title="topFrame" />

​      <frameset cols="187,*" frameborder="no" border="0" framespacing="0">

​          <frame src="left.jsp" name="leftFrame" scrolling="no" noresize="noresize" id="leftFrame" title="leftFrame" />

​          <frame src="" name="rightFrame" id="rightFrame" title="rightFrame" />

​       </frameset>

   </frameset>

</html>

 

   <body>

             <div class="c1">


​          宝鸡文理学院-医院门诊挂号系统

​          <span id="">

​              欢迎您，${account.accountName}

                           <a href="/login.jsp" target="_parent">【退出】</a>

​          </span>

​       </div>

             <div class="c2"></div>

   </body>

 
```

## 6.2门诊部门管理截图

 

|      |                                                              |
| ---- | ------------------------------------------------------------ |
|      | ![IMG_256](file:///C:/Users/DAIDEN~1/AppData/Local/Temp/msohtmlclip1/01/clip_image028.jpg) |


图6.2 门诊部门管理



 

|      |                                                              |
| ---- | ------------------------------------------------------------ |
|      | ![IMG_256](file:///C:/Users/DAIDEN~1/AppData/Local/Temp/msohtmlclip1/01/clip_image030.jpg) |


图6.3 修改门诊部门



![IMG_256](file:///C:/Users/DAIDEN~1/AppData/Local/Temp/msohtmlclip1/01/clip_image032.jpg)
 图6.4 添加门诊部门

 

```jsp
public class DeptController {

  @Autowired

  private DeptService service;

  @RequestMapping("/dept/showAll")

​    public String showAll(Model model){

​    List<DeptBean> list = service.findAll();

​    model.addAttribute("list",list);

​    return "admin/department_management";

​    }

  @RequestMapping("/dept/add")

  public String add(DeptBean deptBean){

​    service.addDept(deptBean);

​    return "redirect:showAll";

  }

  @RequestMapping("/dept/isExistName")

  @ResponseBody

  public boolean isExistId(String deptName){

​    DeptBean existId = service.isExistName(deptName);

​    return existId!=null;

  }

  @RequestMapping("/dept/update")

   public String updateDept(DeptBean deptBean){

​    service.updateDept(deptBean);

​    return "redirect:/dept/showAll";

  }

  /**根据主键查询科室

   \* @param deptId

   \* @param model

   \* @return

   *

   */

  @RequestMapping("/dept/findOne")

  public String findDeptById(int deptId,Model model){

​    DeptBean deptById = service.findDeptById(deptId);

​    model.addAttribute("deptObject",deptById);

​    return "admin/edit";

  }

  @RequestMapping("/dept/del")

  public String delDept(int deptId){

​    service.delDept(deptId);

​     return "redirect:/dept/showAll";

  }

  @RequestMapping("findAll_Dept")

  public String findDept(Model model){

​    List<DeptBean> deptList = service.findAll();

​    model.addAttribute("deptList",deptList);

​    return "patient/register_management";

  }

}

 

<body>

<form action="${path}dept/update" method="post" class="definewidth m20">


  <input type="hidden" name="method" value="updateDoctor"/>

    <table class="table table-bordered table-hover definewidth m10">


​    <tr>

​      <td width="10%" class="tableleft">科室编号</td>

​      <td><input type="text" name="deptId" value="${deptObject.deptId}" readonly unselectable="on" oncopy="return false" onpaste="return false"/></td>

​    </tr>

​    <tr>

​      <td width="10%" class="tableleft">科室名称</td>

​      <td><input type="text" name="deptName" value="${deptObject.deptName}"/></td>

​    </tr>

​    <tr>

​      <td width="10%" class="tableleft">科室描述</td>

​      <td><input type="text" name="deptDesc" value="${deptObject.deptDesc}"/></td>

​    </tr>

​    <tr>

​      <td colspan="2">

​        <center>

​          <input name="save" id="save" type="submit" class="btn btn-primary" value="保存"/> &nbsp;&nbsp;

​          <button type="button" class="btn btn-success" name="backid" id="backid">返回列表</button>

​        </center>

​      </td>

​    </tr>

  </table>
```

## 6.3患者挂号界面截图

![IMG_256](file:///C:/Users/DAIDEN~1/AppData/Local/Temp/msohtmlclip1/01/clip_image034.jpg)
 图6.5 患者挂号主界面

![IMG_256](file:///C:/Users/DAIDEN~1/AppData/Local/Temp/msohtmlclip1/01/clip_image036.jpg)
 图6.6 患者挂号成功

 

|      |                                                              |
| ---- | ------------------------------------------------------------ |
|      | ![IMG_256](file:///C:/Users/DAIDEN~1/AppData/Local/Temp/msohtmlclip1/01/clip_image038.jpg) |





图6.7患者挂号信息

```jsp
public class Patient_Register_Controller {

  @Autowired

  private Patient_Register_Service service;

 

  @RequestMapping("findAll_Register")

  public String findAll(Model model){

​    List<Patient_Register_Bean> register = service.findAll();

​    model.addAttribute("register",register);

​    return "doctor/patient_management";

  }

 

  // findByRegisterId

  @RequestMapping("findRegister")

  public String findByRegisterId(int id,Model model){

​    Patient_Register_Bean register = service.findByRegisterId(id);

​    model.addAttribute("registers",register);

​    return "doctor/treatment";

  }

 

  @RequestMapping("treatment")

  public String treatment(int registerId, String recordSick,String recordSymptoms,String recordMedicine){

​    service.treatment(registerId, recordSick, recordSymptoms, recordMedicine);

​    return "redirect:findAll_Register";

  }

  @RequestMapping("findRegisterById")

  public String findByRegister(int id,Model model){

​    Patient_Register_Bean register = service.findByRegisterId(id);

​    model.addAttribute("registera",register);

​    return "patient/list";

  }

  @RequestMapping("list")

  public String registerList(int id,Model model){

​    Patient_Register_Bean register = service.findByRegisterId(id);

​    model.addAttribute("registera",register);

​    return "patient/list";

<script type="text/javascript">




​    $(function () {

​      $('#backid').click(function(){

​        window.history.back(-1);

​      });

​      $('#save').click(function(){

​        var post_id = document.getElementById("post_id").value;

​        var dept_id = document.getElementById("dept_id").value;

 

​        window.location.href = "${path}findAll_Doctors?patientId=1&postId=1&deptId=1"

​        alert("挂号成功");

​      });

 

​    });

  </script>

</head>

<body>

<form action="" method="post" class="definewidth m20">


  <input name="method" value="insertRegister" type="hidden">

    <table class="table table-bordered table-hover definewidth m10">




​    <tr>

​      <td width="10%" class="tableleft">挂号类别</td>

​      <td>

​        <select name="post_id" id="post_id">

​          <option value="1">医师</option>

​          <option value="2">主治医师</option>

​           <option value="3">副主任医师</option>

​          <option value="4">主任医师</option>

​        </select>

​    </tr>

```

```java
public class Patient_Register_Service {
   @Autowired
   private Patient_Register_Dao dao;

   public List<Patient_Register_Bean> findAll(){
     return dao.findAll();
   }
   public Patient_Register_Bean findByRegisterId(int id){
     return dao.findByRegisterId(id);
   }

   public void treatment(int registerId, String recordSick,String recordSymptoms,String recordMedicine){
     dao.treatment(registerId, recordSick, recordSymptoms, recordMedicine);
   }
```



## 6.4医生接诊界面截图

 

![IMG_256](file:///C:/Users/DAIDEN~1/AppData/Local/Temp/msohtmlclip1/01/clip_image040.jpg)
 图6.8 医生接诊主界面

![IMG_256](file:///C:/Users/DAIDEN~1/AppData/Local/Temp/msohtmlclip1/01/clip_image042.jpg)
 图6.9 医生填写就诊记录

```jsp
<form action="index.html" method="post" class="definewidth m20">

<table class="table table-bordered table-hover definewidth m10">


  <tr>

​    <td width="10%" class="tableleft">病例号：</td>

​    <td><input type="text" name="pname" value=""/></td>

​       

​    <td width="10%" class="tableleft">患者姓名：</td>

​    <td><input type="text" name="pname" value=""/></td>

 

​    <td width="10%" class="tableleft">处理状态</td>

 

​    <td>

​      <select name="department">

​        <option value="0">全部</option>

​        <option value="1">待处理</option>

​        <option value="2">处理完成</option>

​      </select>

​    </td>

  </tr>

  <tr>

​    <td colspan="6">

​      <center>

​        <input id="find" name="find" type="submit" class="btn btn-primary" value="查询"/>

​        <input id="ret" name="ret" type="button" class="btn btn-primary" value="清空"/>

​      </center>

​    </td>

  </tr>

</table>

</form>
```



```java
public class DoctorController {

  @Autowired

  private DoctorService service;

 @RequestMapping("ADDRegister")

public String addRegister(int doctorId, int patientId,Model model){
	boolean isRegisters = findIsRegisters(1);

	if(isRegisters == true){

  model.addAttribute("b",false);

}else {

  boolean b = service.addRegister(doctorId, patientId);

  model.addAttribute("b",b);

}

	return "redirect:Register/list?id="+patientId;
}

boolean findIsRegisters(int patientId){
List<RegisterBean> isRegisters = service.findIsRegisters(patientId);

if (isRegisters.isEmpty())

  return false;

else

  return true;
    }
    @RequestMapping("findAll_Doctors")

  public String findDoctor(int patientId,int postId,int deptId,Model model){

​    List<DoctorBean> doctorBeans = service.findDoctor(patientId,postId,deptId);

​    int len = doctorBeans.size();

​    Random random = new Random();

​    int i = random.nextInt(len);

​    DoctorBean doctorBean = doctorBeans.get(i);

​    model.addAttribute("doctorBeans",doctorBean);

​    return "redirect:ADDRegister?doctorId="+doctorBean.getDoctorId()+"&patientId="+doctorBean.getPostId();

  }

  

public class DoctorService {
   @Autowired
   private DoctorMapper dao;

}
```



 




# 七 系统的实施与维护

数据库在投入正式运行之后,意味着开发工作基本告一段落和长期维护的开始,但这并不代表开发工作的结束.对于数据库的诊断,修改,优化等维护工作任重道远。刚刚建立好的数据库系统就如同刚竣工的大楼，内部空空如也。要真正发挥它的作用，还有必须装入各种实际的数据。当数据库系统投入正式运行，意味着数据库的设计与开发阶段的基本结束，运行与维护阶段的开始。数据库的运行和维护是个长期的工作，是数据库设计工作的延续和提高。数据库运行一段时间后，由于记录的增、删、改、查，数据库物理存储碎片记录链过多，影响数据库的存取效率。这时需要对数据库进行重组和部分重组。一旦应用需求变化太大，需要对全部数据库结构进行重组，说明该数据库的生命周期已经结束，需要设计新的数据库应用系统。



 

# 八 总结

| **小组组队**                                                 |                            |                               |      |
| ------------------------------------------------------------ | -------------------------- | ----------------------------- | ---- |
| **实习地点**                                                 | ************************** | **实习日期**                  |      |
| **项目组长**                                                 | ****                       | **指导教师**                  |      |
| 经过一个个期的课程设计，收获颇多。也使本小组各成员明白了在JAVA和SQL语言上自己存在的一些问题，通过课程设计老师的授课也解决了一些一直困恼我们的问题。以前自已觉得程序很简单，不放在心上。经过课程设计才使我明白做程序需要的东西是很多的，你既要懂程序而且还要有耐心和恒心。课程设计是对我们的一次全面的测试，它既锻炼了我们的动手的能力也磨练了我们的心理素质。  刚开始拿到课程设计题目——医院门诊挂号系统的时候，我发现还是有些难度的。从拿到设计课题到需求分析、概念结构设计、逻辑结构设计、物理结构设计、代码编写与调试，我们都准备了好长时间，但真正需要自己想办法去设计一个系统的时候才发现其中的难度。经常做到后面突然就发现自己一开始的设计有问题，我们通过找资料，看例题。在这种情况下，我才知道什么叫做“书到用时，方恨少”的道理。  在这一个星期的课程设计中，通过这次小组课程设计，我们充分锻炼了自己的动手能力，我们掌握了数据库的总体设计，更加懂得了团队协作对一个项目开发的重要性。  组长签名:  2021年1月8日 |                            | ***************************** |      |



 