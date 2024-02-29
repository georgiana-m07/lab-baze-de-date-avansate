CREATE TABLE clienti_ABC (
   CODCL NUMBER (4) PRIMARY KEY CHECK (CODCL>1000),
   DENCL VARCHAR2 (20),
   LOCALIT VARCHAR2(30) NOT NULL
);

CREATE TABLE clienti_ABC1 (
   CODCL NUMBER (4) PRIMARY KEY,
   DENCL VARCHAR2 (20),
   LOCALIT VARCHAR2(30) NOT NULL,
   CHECK (CODCL>1000)
);

CREATE TABLE clienti_ABC2 (
   CODCL NUMBER (4),
   DENCL VARCHAR2 (20),
   LOCALIT VARCHAR2(30) NOT NULL,
   PRIMARY KEY (CODCL),
   CHECK (CODCL>1000)
);

CREATE TABLE clienti_ABC3 (
   CODCL NUMBER (4),
   DENCL VARCHAR2 (20),
   LOCALIT VARCHAR2(30) NOT NULL,
   PRIMARY KEY (CODCL, DENCL),
   CHECK (CODCL>1000)
);

--------------

CREATE TABLE clienti_ABC4 (
   CODCL NUMBER (4) 
      CONSTRAINT pk_codcl_abc4 PRIMARY KEY 
      CONSTRAINT ck_codcl_abc4 CHECK (CODCL>1000),
   DENCL VARCHAR2 (20),
   LOCALIT VARCHAR2(30) 
      CONSTRAINT nn_localit_abc4 NOT NULL
);

CREATE TABLE clienti_ABC5 (
   CODCL NUMBER (4),
   DENCL VARCHAR2 (20),
   LOCALIT VARCHAR2(30) CONSTRAINT nn_localit_abc5 NOT NULL,
   CONSTRAINT pk_codcl_abc5 PRIMARY KEY (CODCL), 
   CONSTRAINT ck_codcl_abc5 CHECK (CODCL>1000)
);

-----------------------

INSERT INTO clienti_ABC VALUES (1200,'Popescu','Arad');
INSERT INTO clienti_ABC VALUES (1200,'Georgescu','Timisoara');
INSERT INTO clienti_ABC VALUES (800,'Georgescu','Timisoara');

INSERT INTO clienti_ABC4 VALUES (1200,'Popescu','Arad');
INSERT INTO clienti_ABC4 VALUES (1200,'Georgescu','Timisoara');
INSERT INTO clienti_ABC4 VALUES (800,'Georgescu','Timisoara');

-----------------------
DROP TABLE CLIENTI_ABC;
DROP TABLE CLIENTI_ABC1;
DROP TABLE CLIENTI_ABC2;
DROP TABLE CLIENTI_ABC3;
DROP TABLE CLIENTI_ABC4;
DROP TABLE CLIENTI_ABC5;

