--system에서 진행
CREATE USER githrd IDENTIFIED BY 12345 ACCOUNT UNLOCK;
GRANT resource, connect To githrd;
GRANT UNLIMITED TABLESPACE, CREATE SESSION, connect, resource TO githrd;
ALTER USER githrd DEFAULT TABLESPACE USERs;

CREATE TABLE MEMBER(
    mno NUMBER(4)
        CONSTRAINT MB_NO_PK PRIMARY KEY,
    name VARCHAR2(20 CHAR)
        CONSTRAINT MB_NAME_NN NOT NULL,
    id VARCHAR2(15 CHAR)
        CONSTRAINT MB_ID_UK UNIQUE
        CONSTRAINT MB_ID_NN NOT NULL,
    pw VARCHAR2(15 CHAR)
        CONSTRAINT MB_PW_NN NOT NULL,
    mail VARCHAR2(50 CHAR)
        CONSTRAINT MB_MAIL_UK UNIQUE
        CONSTRAINT MB_MAIL_NN NOT NULL,
    tel VARCHAR2(13 CHAR)
        CONSTRAINT MB_TEL_UK UNIQUE
        CONSTRAINT MB_TEL_NN NOT NULL,
    avt NUMBER(2) DEFAULT 10
        CONSTRAINT MB_AVT_NN NOT NULL,
    gen CHAR(1)
        CONSTRAINT MB_GEN_NN NOT NULL
        CONSTRAINT MB_GEN_CK CHECK(gen IN('F', 'M')),
    joindate DATE DEFAULT sysdate
        CONSTRAINT MB_DATE_NN NOT NULL,
    isShow CHAR(1) DEFAULT 'Y'
        CONSTRAINT MB_SHOW_NN NOT NULL
        CONSTRAINT MB_SHOW_CK CHECK(isShow IN('Y', 'N'))
);

INSERT INTO
    member(mno,name, id, pw, mail, tel, avt, gen)
VALUES(
    1000, '전은석', 'euns', '12345', 'euns@githrd.com', '010-3175-9042', 11, 'M'
);

INSERT INTO
    member(mno, name, id, pw, mail, tel, avt, gen)
VALUES(
    1001, '제니', 'jennie', '12345', 'jennie@githrd.com', '010-1111-1111', 14, 'F'
);

INSERT INTO
    member(mno, name, id, pw, mail, tel, avt, gen)
VALUES(
    1002, '리사', 'lisa', '12345', 'lisa@githrd.com', '010-2424-2424', 15, 'F'
);

INSERT INTO
    member(mno, name, id, pw, mail, tel, avt, gen)
VALUES(
    1003, '로제', 'rose', '12345', 'rose@githrd.com', '010-5252-5252', 16, 'F'
);

INSERT INTO
    member(mno, name, id, pw, mail, tel, avt, gen)
VALUES(
    1004, '지수', 'jisu', '12345', 'jisu@githrd.com', '010-2929-2929', 16, 'F'
);