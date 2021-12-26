Go
create database TeachingSystemCUIT
on
(name = TeachingSystemCUIT_dat,
filename = "D:\CS\SQLProject\TeachingSystemCUIT.mdf",
size = 5MB,
maxsize = 200MB,
filegrowth = 20%
)
log on
(name = TeachingSystemCUIT_log,
filename = "D:\CS\SQLProject\TeachingSystemCUIT.ldf",
size = 5MB,
maxsize = 200MB,
filegrowth = 20%
)

--建立表1-学生表
GO
create table Student
(
	StuNumber char(10)  not NULL
		primary key,
	StuName char(8) not NULL,
	StuGender char(2) not NULL
		check(StuGender in ('男','女') ),
	StuBirthday datetime not NULL,
	StuEnterday datetime not NULL
)
GO
--建立表2-教师表
create table Teacher
(
	TeaNumber char(10) not NULL
		primary key,
	TeaName char(8) not NULL,
	TeaGender char(2) not NULL
		check(TeaGender in ('男','女')),
	TeaBirthday datetime not NULL,
	TeaEnterday datetime not NULL,
	Title char(10) not NULL
		check(Title in('教授','副教授','讲师','助教')),
	Political_Outlook char(6) not NULL
		check(Political_Outlook in ('党员','群众')),
	Education char(6) not NULL
		check(Education in ('本科','研究生','博士','博士后'))
)
GO
--建立表3-课程表
create table Corriculum
(
	CorNo char(10) not NULL
		primary key,
	CorName char(30) not NULL,
	CorCredit int not NULL
		check(CorCredit between 1 and 5)
)
GO
--建立表4-教师授课表
create table TeaCorriculum
(
	Num int not NULL
		identity(1,1)
		primary key,
	TeaNumber char(10) not NULL,
	CorName char(30) not NULL,
	TeaTime char(10) not NULL,
	TeaPlace char(4) not NULL
		check(TeaPlace in ('一教','二教','四教','实验楼'))
	foreign key(TeaNumber) references Teacher(TeaNumber)
)
GO
--建立表5-学生选课表
create table StuCorriculum
(
	StuNumber char(10)  not NULL,
	StuName char(8) not NULL,
	CorName char(30) not NULL,
	--为该表设立主键（学生学号和课程）
	primary key(StuNumber,CorName)
)
GO
--建立表5-学生成绩表
create table Score
(
	StuNumber char(10) not NULL,
	CorName char(30) not NULL,
	ExamRes int not NULL
		check(ExamRes between 0 and 101)
)
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

--创建查询学生平均分、最高分、最低分的存储过程
create procedure Q_Stu_Score
	@sco char(10)
as
begin
	select Student.StuNumber as 学号, Student.StuName as 姓名, avg(ExamRes) as 平均分, max(ExamRes) as 最高分, min(ExamRes) as 最低分
	from Score inner join Student on Score.StuNumber = Student.StuNumber
	where Student.StuNumber = @sco
	group by Student.StuNumber,Student.StuName
end

--创建查询某门课程的最高分，最低分和平均分的存储过程
create procedure Q_Cor_Score
	@Cno char(10)
as
begin
	select Corriculum.CorNo as 课程号, Corriculum.CorName as 课程名,max(ExamRes) as 最高成绩, min(ExamRes) as 最低成绩, avg(ExamRes) as 平均成绩
	from Score,Corriculum
	where Corriculum.CorName = Score.CorName and Corriculum.CorNo = @Cno
	group by Corriculum.CorNo,Corriculum.CorName
end

--创建生成学生成绩单的存储过程
create procedure Stu_Score_Table
	@sco char(10)
as
begin
	select Student.StuNumber as 学号, Student.StuName as 姓名, CorName as 课程名, ExamRes as 成绩
	from Score inner join Student on Score.StuNumber = Student.StuNumber
	where Student.StuNumber = @sco
end

--创建生成课程成绩单的存储过程
create procedure Tea_Score_Table
	@Cno char(10)
as
begin
	select Corriculum.CorNo as 课程名, Student.StuNumber as 学号,Student.StuName as 姓名, ExamRes as 成绩
	from Score inner join Corriculum on Score.CorName = Corriculum.CorName
			inner join Student on Score.StuNumber  = Student.StuNumber
	where Corriculum.CorNo = @Cno
end