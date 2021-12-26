--������1-ѧ����
GO
create table Student
(
	StuNumber char(10)  not NULL
		primary key,
	StuName char(8) not NULL,
	StuGender char(2) not NULL
		check(StuGender in ('��','Ů') ),
	StuBirthday datetime not NULL,
	StuEnterday datetime not NULL
)
GO
--������2-��ʦ��
create table Teacher
(
	TeaNumber char(10) not NULL
		primary key,
	TeaName char(8) not NULL,
	TeaGender char(2) not NULL
		check(TeaGender in ('��','Ů')),
	TeaBirthday datetime not NULL,
	TeaEnterday datetime not NULL,
	Title char(10) not NULL
		check(Title in('����','������','��ʦ','����')),
	Political_Outlook char(6) not NULL
		check(Political_Outlook in ('��Ա','Ⱥ��')),
	Education char(6) not NULL
		check(Education in ('����','�о���','��ʿ','��ʿ��'))
)
GO
--������3-�γ̱�
create table Corriculum
(
	CorNo char(10) not NULL
		primary key,
	CorName char(30) not NULL,
	CorCredit int not NULL
		check(CorCredit between 1 and 5)
)
GO
--������4-��ʦ�ڿα�
create table TeaCorriculum
(
	Num int not NULL
		identity(1,1)
		primary key,
	TeaNumber char(10) not NULL,
	CorName char(30) not NULL,
	TeaTime char(10) not NULL,
	TeaPlace char(4) not NULL
		check(TeaPlace in ('һ��','����','�Ľ�','ʵ��¥'))
	foreign key(TeaNumber) references Teacher(TeaNumber)
)
GO
--������5-ѧ��ѡ�α�
create table StuCorriculum
(
	StuNumber char(10)  not NULL,
	StuName char(8) not NULL,
	CorName char(30) not NULL,
	--Ϊ�ñ�����������ѧ��ѧ�źͿγ̣�
	primary key(StuNumber,CorName)
)
GO
--������5-ѧ���ɼ���
create table Score
(
	StuNumber char(10) not NULL,
	CorName char(30) not NULL,
	ExamRes int not NULL
		check(ExamRes between 0 and 101)
)




