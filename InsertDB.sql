--����Teacher Table����
insert into Teacher
	values('t01', '��sir', '��', 1976-04-06,	2002-03-04,	 '����', '��Ա', '��ʿ')
insert into Teacher
	values('t02', '��sir', '��', 1981-05-18,	2007-11-03, '������', '��Ա', '��ʿ')
insert into Teacher
	values('t03', 'Ms.��', 'Ů', 1991-11-08,	2020-05-02, '��ʦ', '��Ա', '�о���')
insert into Teacher
	values('t04', 'Ms.��', 'Ů', 1982-03-27,	2010-01-03, '������', 'Ⱥ��', '�о���')
insert into Teacher
	values('t05', '��sir', '��', 1987-08-03,	2011-02-04, '������', '��Ա', '�о���')

--����Student Table����
insert into Student
	values('2020661001','ФѰ��','Ů','2002-1-23','2020-9-20')
insert into Student
	values('2020661002','�ĺ�̴�','Ů','2002-2-13','2020-9-20')
insert into Student
	values('2020661003','������','Ů','2002-3-3','2020-9-20')
insert into Student
	values('2020661004','��տ��','��','2002-4-21','2020-9-20')
insert into Student
	values('2020661005','�����','��','2002-5-22','2020-9-20')
insert into Student
	values('2020661006','����','��','2002-7-18','2020-9-20')
insert into Student
	values('2020661007','������','Ů','2002-4-29','2020-9-20')
insert into Student
	values('2020661008','����ΰ','��','2002-12-17','2020-9-20')
insert into Student
	values('2020661009','Է����','��','2002-10-8','2020-9-20')
insert into Student
	values('2020661010','ε����','��','2002-3-27','2020-9-20')

--����Score Table����
insert into Corriculum
	values('c001','�ߵ���ѧ','4')
insert into Corriculum
	values('c002','���Դ���','3')
insert into Corriculum
	values('c003','C���Գ������','4')
insert into Corriculum
	values('c004','���ݽṹ','3')
insert into Corriculum
	values('c005','�������������','4')

--����TeaCorriculum Table����
insert into TeaCorriculum
	values('t01','���ݽṹ','����','һ��')
insert into TeaCorriculum
	values('t02','C���Գ������','�ܶ�','һ��')
insert into TeaCorriculum
	values('t03','�������������','��һ','����')
insert into TeaCorriculum
	values('t01','�ߵ���ѧ','��һ','����')
insert into TeaCorriculum
	values('t01','���Դ���','����','�Ľ�')

--����StuCorriculum Table����
insert into StuCorriculum
	values('2020661001','ФѰ��','C���Գ������')
insert into StuCorriculum
	values('2020661001','ФѰ��','���ݽṹ')
insert into StuCorriculum
	values('2020661001','ФѰ��','�ߵ���ѧ')
insert into StuCorriculum
	values('2020661002','�ĺ�̴�','���ݽṹ')
insert into StuCorriculum
	values('2020661002','�ĺ�̴�','���Դ���')
insert into StuCorriculum
	values('2020661002','�ĺ�̴�','�ߵ���ѧ')
insert into StuCorriculum
	values('2020661002','�ĺ�̴�','C���Գ������')
insert into StuCorriculum
	values('2020661002','�ĺ�̴�','�������������')
insert into StuCorriculum
	values('2020661003','������','���Դ���')
insert into StuCorriculum
	values('2020661003','������','�������������')
insert into StuCorriculum
	values('2020661004','��տ��','���ݽṹ')
insert into StuCorriculum
	values('2020661004','��տ��','C���Գ������')
insert into StuCorriculum
	values('2020661004','��տ��','���Դ���')
insert into StuCorriculum
	values('2020661005','�����','�ߵ���ѧ')
insert into StuCorriculum
	values('2020661006','����','�ߵ���ѧ')
insert into StuCorriculum
	values('2020661006','����','C���Գ������')
insert into StuCorriculum
	values('2020661006','����','���Դ���')
insert into StuCorriculum
	values('2020661006','����','���ݽṹ')
insert into StuCorriculum
	values('2020661007','������','���ݽṹ')
insert into StuCorriculum
	values('2020661007','������','�������������')
insert into StuCorriculum
	values('2020661007','������','�ߵ���ѧ')
insert into StuCorriculum
	values('2020661008','����ΰ','�ߵ���ѧ')
insert into StuCorriculum
	values('2020661008','����ΰ','���ݽṹ')
insert into StuCorriculum
	values('2020661008','����ΰ','�������������')
insert into StuCorriculum
	values('2020661008','����ΰ','���Դ���')
insert into StuCorriculum
	values('2020661008','����ΰ','C���Գ������')
insert into StuCorriculum
	values('2020661009','Է����','�������������')
insert into StuCorriculum
	values('2020661009','Է����','C���Գ������')
insert into StuCorriculum
	values('2020661010','ε����','���Դ���')
insert into StuCorriculum
	values('2020661010','ε����','�ߵ���ѧ')

--����Score Table����
insert into Score
	values('2020661001','C���Գ������', 95)
insert into Score
	values('2020661001','���ݽṹ', 100)
insert into Score
	values('2020661001','�ߵ���ѧ', 97)
insert into Score
	values('2020661002','���ݽṹ',75)
insert into Score
	values('2020661002','���Դ���',85)
insert into Score
	values('2020661002','�ߵ���ѧ',96)
insert into Score
	values('2020661002','C���Գ������',68)
insert into Score
	values('2020661002','�������������',83)
insert into Score
	values('2020661003','���Դ���',97)
insert into Score
	values('2020661003','�������������',98)
insert into Score
	values('2020661004','���ݽṹ',85)
insert into Score
	values('2020661004','C���Գ������',76)
insert into Score
	values('2020661004','���Դ���',91)
insert into Score
	values('2020661005','�ߵ���ѧ',68)
insert into Score
	values('2020661006','�ߵ���ѧ',75)
insert into Score
	values('2020661006','C���Գ������',78)
insert into Score
	values('2020661006','���Դ���',95)
insert into Score
	values('2020661006','���ݽṹ',79)
insert into Score
	values('2020661007','���ݽṹ',87)
insert into Score
	values('2020661007','�������������',79)
insert into Score
	values('2020661007','�ߵ���ѧ',85)
insert into Score
	values('2020661008','�ߵ���ѧ',73)
insert into Score
	values('2020661008','���ݽṹ',74)
insert into Score
	values('2020661008','�������������',84)
insert into Score
	values('2020661008','���Դ���',76)
insert into Score
	values('2020661008','C���Գ������',81)
insert into Score
	values('2020661009','�������������',83)
insert into Score
	values('2020661009','C���Գ������',93)
insert into Score
	values('2020661010','���Դ���',99)
insert into Score
	values('2020661010','�ߵ���ѧ',100)
select * from Score