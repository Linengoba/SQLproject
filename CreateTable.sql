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




