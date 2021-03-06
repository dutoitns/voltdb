CREATE TABLE T1 (
	ID INTEGER NOT NULL,
	POINTS INTEGER NOT NULL,
	AGE TINYINT NOT NULL,
	PRIMARY KEY (ID)
);
create index idx_1_tree on T1 (POINTS);

CREATE TABLE T2 (
	ID INTEGER NOT NULL,
	USERNAME VARCHAR(10) NOT NULL,
	POINTS INTEGER NOT NULL,
	AGE TINYINT NOT NULL,
	PRIMARY KEY (ID)
);
create unique index idx_2_tree on T2 (USERNAME,POINTS);

CREATE TABLE P1 (
  ID INTEGER DEFAULT '0' NOT NULL,
  DESC VARCHAR(300),
  NUM INTEGER NOT NULL,
  RATIO FLOAT NOT NULL,
  PRIMARY KEY (ID)
);
CREATE INDEX P1_IDX_NUM_TREE ON P1 (NUM);


CREATE TABLE P2 (
    P2_ID INTEGER DEFAULT '0' NOT NULL,
    P2_DESC VARCHAR(300),
    P2_NUM1 INTEGER NOT NULL,
    P2_NUM2 INTEGER NOT NULL,
    PRIMARY KEY (P2_ID)
);
CREATE INDEX P2_IDX_P2NUM_TREE ON P2 (P2_NUM1,P2_NUM2);
