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