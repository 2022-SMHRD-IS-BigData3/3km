CREATE TABLE USER_INFO(
    USER_ID INT PRIMARY KEY,
    EMAIL VARCHAR2(30),
    PW VARCHAR2(30),
    BRITHDAY TIMESTAMP,
    NICKNAME VARCHAR2(20),
    INTRODUCE VARCHAR2(300),
    PROFIL_IMG CLOB
);
select * from USER_INFO;

select * from DOG_INFO;
