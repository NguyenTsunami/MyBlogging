use master
go
--drop database LABWEB_MyBlogs
create database LABWEB_MyBlogs
go
use LABWEB_MyBlogs
go
create table Blog
(
	id int identity primary key,
	title nvarchar(300),
	img varchar(300),
	content text,
	datepub date,
	category nvarchar(300)
)
go
create table Feedback 
(
	id int identity primary key,
	name nvarchar(300),
	email nvarchar(300),
	phone nvarchar(300),
	company nvarchar(300),
	mess text,
)
go
insert into Blog
values ('Article 1', 'images/img03.jpg',
		'This is the first paragraph, contains some text to test the paragraph
interlining, paragraph indentation and some other features. Also, is 
easy to see how new paragraphs are defined by simply entering a double 
blank space. Stress correlates to a lower risk of death (if you think about it in the way that McGonigal suggests). In her talk, McGonigal references a study done by researchers at the University of Wisconsin-Madison. Researchers looked at data from a 1998 survey conducted by the National Center for Health Statistics that asked specific questions about stress levels, stress management and perceptions about how stress affects health. They used a sample of about 29,000 respondents from the survey who matched up to public records, and then looked at instances of death among survey respondents through 2006. Overall, they found that survey respondents who reported a lot of stress and a perception that stress has a big impact on health had an increased hazard ratio — which converted to a 43% increased risk of premature death. However, survey respondents who reported a lot of stress but little to no perception that stress impacted health had the lowest hazard ratio of any group in the survey, even those who felt almost no stress.',
		'2020-12-23','Art')
go
insert into Blog
values ('Article 2', 'images/img03.jpg',
		'This is the first paragraph, contains some text to test the paragraph
interlining, paragraph indentation and some other features. Also, is 
easy to see how new paragraphs are defined by simply entering a double 
blank space. Stress correlates to a lower risk of death (if you think about it in the way that McGonigal suggests). In her talk, McGonigal references a study done by researchers at the University of Wisconsin-Madison. Researchers looked at data from a 1998 survey conducted by the National Center for Health Statistics that asked specific questions about stress levels, stress management and perceptions about how stress affects health. They used a sample of about 29,000 respondents from the survey who matched up to public records, and then looked at instances of death among survey respondents through 2006. Overall, they found that survey respondents who reported a lot of stress and a perception that stress has a big impact on health had an increased hazard ratio — which converted to a 43% increased risk of premature death. However, survey respondents who reported a lot of stress but little to no perception that stress impacted health had the lowest hazard ratio of any group in the survey, even those who felt almost no stress.',
		'2020-01-02','Food')
go
insert into Blog
values ('Article 3', 'images/img03.jpg',
		'This is the first paragraph, contains some text to test the paragraph
interlining, paragraph indentation and some other features. Also, is 
easy to see how new paragraphs are defined by simply entering a double 
blank space. Stress correlates to a lower risk of death (if you think about it in the way that McGonigal suggests). In her talk, McGonigal references a study done by researchers at the University of Wisconsin-Madison. Researchers looked at data from a 1998 survey conducted by the National Center for Health Statistics that asked specific questions about stress levels, stress management and perceptions about how stress affects health. They used a sample of about 29,000 respondents from the survey who matched up to public records, and then looked at instances of death among survey respondents through 2006. Overall, they found that survey respondents who reported a lot of stress and a perception that stress has a big impact on health had an increased hazard ratio — which converted to a 43% increased risk of premature death. However, survey respondents who reported a lot of stress but little to no perception that stress impacted health had the lowest hazard ratio of any group in the survey, even those who felt almost no stress.',
		'2019-11-23','Art')
go
insert into Blog
values ('Article 4', 'images/img03.jpg',
		'This is the first paragraph, contains some text to test the paragraph
interlining, paragraph indentation and some other features. Also, is 
easy to see how new paragraphs are defined by simply entering a double 
blank space. Stress correlates to a lower risk of death (if you think about it in the way that McGonigal suggests). In her talk, McGonigal references a study done by researchers at the University of Wisconsin-Madison. Researchers looked at data from a 1998 survey conducted by the National Center for Health Statistics that asked specific questions about stress levels, stress management and perceptions about how stress affects health. They used a sample of about 29,000 respondents from the survey who matched up to public records, and then looked at instances of death among survey respondents through 2006. Overall, they found that survey respondents who reported a lot of stress and a perception that stress has a big impact on health had an increased hazard ratio — which converted to a 43% increased risk of premature death. However, survey respondents who reported a lot of stress but little to no perception that stress impacted health had the lowest hazard ratio of any group in the survey, even those who felt almost no stress.',
		'2021-1-1','Art')
go
insert into Blog
values ('Article 5', 'images/img03.jpg',
		'This is the first paragraph, contains some text to test the paragraph
interlining, paragraph indentation and some other features. Also, is 
easy to see how new paragraphs are defined by simply entering a double 
blank space. Stress correlates to a lower risk of death (if you think about it in the way that McGonigal suggests). In her talk, McGonigal references a study done by researchers at the University of Wisconsin-Madison. Researchers looked at data from a 1998 survey conducted by the National Center for Health Statistics that asked specific questions about stress levels, stress management and perceptions about how stress affects health. They used a sample of about 29,000 respondents from the survey who matched up to public records, and then looked at instances of death among survey respondents through 2006. Overall, they found that survey respondents who reported a lot of stress and a perception that stress has a big impact on health had an increased hazard ratio — which converted to a 43% increased risk of premature death. However, survey respondents who reported a lot of stress but little to no perception that stress impacted health had the lowest hazard ratio of any group in the survey, even those who felt almost no stress.',
		'2018-9-17','Car')
go
insert into Blog
values ('Article 6', 'images/img03.jpg',
		'This is the first paragraph, contains some text to test the paragraph
interlining, paragraph indentation and some other features. Also, is 
easy to see how new paragraphs are defined by simply entering a double 
blank space. Stress correlates to a lower risk of death (if you think about it in the way that McGonigal suggests). In her talk, McGonigal references a study done by researchers at the University of Wisconsin-Madison. Researchers looked at data from a 1998 survey conducted by the National Center for Health Statistics that asked specific questions about stress levels, stress management and perceptions about how stress affects health. They used a sample of about 29,000 respondents from the survey who matched up to public records, and then looked at instances of death among survey respondents through 2006. Overall, they found that survey respondents who reported a lot of stress and a perception that stress has a big impact on health had an increased hazard ratio — which converted to a 43% increased risk of premature death. However, survey respondents who reported a lot of stress but little to no perception that stress impacted health had the lowest hazard ratio of any group in the survey, even those who felt almost no stress.',
		'2020-7-23','Beauty')
go
insert into Blog
values ('Article 7', 'images/img03.jpg',
		'This is the first paragraph, contains some text to test the paragraph
interlining, paragraph indentation and some other features. Also, is 
easy to see how new paragraphs are defined by simply entering a double 
blank space. Stress correlates to a lower risk of death (if you think about it in the way that McGonigal suggests). In her talk, McGonigal references a study done by researchers at the University of Wisconsin-Madison. Researchers looked at data from a 1998 survey conducted by the National Center for Health Statistics that asked specific questions about stress levels, stress management and perceptions about how stress affects health. They used a sample of about 29,000 respondents from the survey who matched up to public records, and then looked at instances of death among survey respondents through 2006. Overall, they found that survey respondents who reported a lot of stress and a perception that stress has a big impact on health had an increased hazard ratio — which converted to a 43% increased risk of premature death. However, survey respondents who reported a lot of stress but little to no perception that stress impacted health had the lowest hazard ratio of any group in the survey, even those who felt almost no stress.',
		'2019-12-23','Food')
go
insert into Blog
values ('Article 8', 'images/img03.jpg',
		'This is the first paragraph, contains some text to test the paragraph
interlining, paragraph indentation and some other features. Also, is 
easy to see how new paragraphs are defined by simply entering a double 
blank space. Stress correlates to a lower risk of death (if you think about it in the way that McGonigal suggests). In her talk, McGonigal references a study done by researchers at the University of Wisconsin-Madison. Researchers looked at data from a 1998 survey conducted by the National Center for Health Statistics that asked specific questions about stress levels, stress management and perceptions about how stress affects health. They used a sample of about 29,000 respondents from the survey who matched up to public records, and then looked at instances of death among survey respondents through 2006. Overall, they found that survey respondents who reported a lot of stress and a perception that stress has a big impact on health had an increased hazard ratio — which converted to a 43% increased risk of premature death. However, survey respondents who reported a lot of stress but little to no perception that stress impacted health had the lowest hazard ratio of any group in the survey, even those who felt almost no stress.',
		'2019-12-20','Beauty')

go
select * from Blog
select distinct category from Blog


select * from Feedback




delete from Feedback