--插入Teacher Table数据
insert into Teacher
	values('t01', '王sir', '男', 1976-04-06,	2002-03-04,	 '教授', '党员', '博士')
insert into Teacher
	values('t02', '江sir', '男', 1981-05-18,	2007-11-03, '副教授', '党员', '博士')
insert into Teacher
	values('t03', 'Ms.刘', '女', 1991-11-08,	2020-05-02, '讲师', '党员', '研究生')
insert into Teacher
	values('t04', 'Ms.李', '女', 1982-03-27,	2010-01-03, '副教授', '群众', '研究生')
insert into Teacher
	values('t05', '戴sir', '男', 1987-08-03,	2011-02-04, '副教授', '党员', '研究生')

--插入Student Table数据
insert into Student
	values('2020661001','肖寻芹','女','2002-1-23','2020-9-20')
insert into Student
	values('2020661002','夏侯碧春','女','2002-2-13','2020-9-20')
insert into Student
	values('2020661003','飞曼凡','女','2002-3-3','2020-9-20')
insert into Student
	values('2020661004','成湛恩','男','2002-4-21','2020-9-20')
insert into Student
	values('2020661005','柔浩邈','男','2002-5-22','2020-9-20')
insert into Student
	values('2020661006','康今','男','2002-7-18','2020-9-20')
insert into Student
	values('2020661007','羊明钰','女','2002-4-29','2020-9-20')
insert into Student
	values('2020661008','竺智伟','男','2002-12-17','2020-9-20')
insert into Student
	values('2020661009','苑兴运','男','2002-10-8','2020-9-20')
insert into Student
	values('2020661010','蔚寒云','男','2002-3-27','2020-9-20')

--插入Score Table数据
insert into Corriculum
	values('c001','高等数学','4')
insert into Corriculum
	values('c002','线性代数','3')
insert into Corriculum
	values('c003','C语言程序设计','4')
insert into Corriculum
	values('c004','数据结构','3')
insert into Corriculum
	values('c005','面向对象程序设计','4')

--插入TeaCorriculum Table数据
insert into TeaCorriculum
	values('t01','数据结构','周四','一教')
insert into TeaCorriculum
	values('t02','C语言程序设计','周二','一教')
insert into TeaCorriculum
	values('t03','面向对象程序设计','周一','二教')
insert into TeaCorriculum
	values('t01','高等数学','周一','二教')
insert into TeaCorriculum
	values('t01','线性代数','周三','四教')

--插入StuCorriculum Table数据
insert into StuCorriculum
	values('2020661001','肖寻芹','C语言程序设计')
insert into StuCorriculum
	values('2020661001','肖寻芹','数据结构')
insert into StuCorriculum
	values('2020661001','肖寻芹','高等数学')
insert into StuCorriculum
	values('2020661002','夏侯碧春','数据结构')
insert into StuCorriculum
	values('2020661002','夏侯碧春','线性代数')
insert into StuCorriculum
	values('2020661002','夏侯碧春','高等数学')
insert into StuCorriculum
	values('2020661002','夏侯碧春','C语言程序设计')
insert into StuCorriculum
	values('2020661002','夏侯碧春','面向对象程序设计')
insert into StuCorriculum
	values('2020661003','飞曼凡','线性代数')
insert into StuCorriculum
	values('2020661003','飞曼凡','面向对象程序设计')
insert into StuCorriculum
	values('2020661004','成湛恩','数据结构')
insert into StuCorriculum
	values('2020661004','成湛恩','C语言程序设计')
insert into StuCorriculum
	values('2020661004','成湛恩','线性代数')
insert into StuCorriculum
	values('2020661005','柔浩邈','高等数学')
insert into StuCorriculum
	values('2020661006','康今','高等数学')
insert into StuCorriculum
	values('2020661006','康今','C语言程序设计')
insert into StuCorriculum
	values('2020661006','康今','线性代数')
insert into StuCorriculum
	values('2020661006','康今','数据结构')
insert into StuCorriculum
	values('2020661007','羊明钰','数据结构')
insert into StuCorriculum
	values('2020661007','羊明钰','面向对象程序设计')
insert into StuCorriculum
	values('2020661007','羊明钰','高等数学')
insert into StuCorriculum
	values('2020661008','竺智伟','高等数学')
insert into StuCorriculum
	values('2020661008','竺智伟','数据结构')
insert into StuCorriculum
	values('2020661008','竺智伟','面向对象程序设计')
insert into StuCorriculum
	values('2020661008','竺智伟','线性代数')
insert into StuCorriculum
	values('2020661008','竺智伟','C语言程序设计')
insert into StuCorriculum
	values('2020661009','苑兴运','面向对象程序设计')
insert into StuCorriculum
	values('2020661009','苑兴运','C语言程序设计')
insert into StuCorriculum
	values('2020661010','蔚寒云','线性代数')
insert into StuCorriculum
	values('2020661010','蔚寒云','高等数学')

--插入Score Table数据
insert into Score
	values('2020661001','C语言程序设计', 95)
insert into Score
	values('2020661001','数据结构', 100)
insert into Score
	values('2020661001','高等数学', 97)
insert into Score
	values('2020661002','数据结构',75)
insert into Score
	values('2020661002','线性代数',85)
insert into Score
	values('2020661002','高等数学',96)
insert into Score
	values('2020661002','C语言程序设计',68)
insert into Score
	values('2020661002','面向对象程序设计',83)
insert into Score
	values('2020661003','线性代数',97)
insert into Score
	values('2020661003','面向对象程序设计',98)
insert into Score
	values('2020661004','数据结构',85)
insert into Score
	values('2020661004','C语言程序设计',76)
insert into Score
	values('2020661004','线性代数',91)
insert into Score
	values('2020661005','高等数学',68)
insert into Score
	values('2020661006','高等数学',75)
insert into Score
	values('2020661006','C语言程序设计',78)
insert into Score
	values('2020661006','线性代数',95)
insert into Score
	values('2020661006','数据结构',79)
insert into Score
	values('2020661007','数据结构',87)
insert into Score
	values('2020661007','面向对象程序设计',79)
insert into Score
	values('2020661007','高等数学',85)
insert into Score
	values('2020661008','高等数学',73)
insert into Score
	values('2020661008','数据结构',74)
insert into Score
	values('2020661008','面向对象程序设计',84)
insert into Score
	values('2020661008','线性代数',76)
insert into Score
	values('2020661008','C语言程序设计',81)
insert into Score
	values('2020661009','面向对象程序设计',83)
insert into Score
	values('2020661009','C语言程序设计',93)
insert into Score
	values('2020661010','线性代数',99)
insert into Score
	values('2020661010','高等数学',100)
select * from Score