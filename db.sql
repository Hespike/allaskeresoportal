--------------------------------------------------------
--  File created - vas�rnap-m�jus-08-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ADMINMEGJEGYZES
--------------------------------------------------------

  CREATE TABLE "IVANOV"."ADMINMEGJEGYZES" 
   (	"ID" NUMBER(10,0), 
	"IDOPONT" DATE, 
	"TARTALOM" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ALLASHIRDETO
--------------------------------------------------------

  CREATE TABLE "IVANOV"."ALLASHIRDETO" 
   (	"ID" NUMBER(10,0), 
	"TITULUS" VARCHAR2(10 BYTE), 
	"VEZETEKNEV" VARCHAR2(50 BYTE), 
	"KERESZTNEV" VARCHAR2(50 BYTE), 
	"FENYKEP_UT" VARCHAR2(200 BYTE), 
	"TELEFONSZAM" VARCHAR2(20 BYTE), 
	"EMAIL" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ALLASKERESO
--------------------------------------------------------

  CREATE TABLE "IVANOV"."ALLASKERESO" 
   (	"ID" NUMBER(10,0), 
	"TITULUS" VARCHAR2(10 BYTE), 
	"VEZETEKNEV" VARCHAR2(50 BYTE), 
	"KERESZTNEV" VARCHAR2(50 BYTE), 
	"FENYKEP_UT" VARCHAR2(200 BYTE), 
	"SZULIDO" DATE, 
	"LAKCIM" VARCHAR2(50 BYTE), 
	"TARTHELY" VARCHAR2(50 BYTE), 
	"RADIUS" NUMBER(4,0), 
	"ONELETRAJZ_ID" NUMBER(10,0), 
	"ROVID_LEIRAS" VARCHAR2(100 BYTE), 
	"EGYEB_INFO" VARCHAR2(100 BYTE), 
	"TELEFONSZAM" VARCHAR2(20 BYTE), 
	"EMAIL" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table CEG
--------------------------------------------------------

  CREATE TABLE "IVANOV"."CEG" 
   (	"ID" NUMBER(10,0), 
	"NEV" VARCHAR2(50 BYTE), 
	"FENYKEP_UT" VARCHAR2(200 BYTE), 
	"ROVID_LEIRAS" VARCHAR2(250 BYTE), 
	"TELEFONSZAM" VARCHAR2(30 BYTE), 
	"EMAIL" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table FELHASZNALO
--------------------------------------------------------

  CREATE TABLE "IVANOV"."FELHASZNALO" 
   (	"ID" NUMBER(10,0), 
	"FELHASZNALONEV" VARCHAR2(20 BYTE), 
	"JELSZO" VARCHAR2(50 BYTE), 
	"STATUS" NUMBER(1,0), 
	"IS_ADMIN" NUMBER(1,0), 
	"ALLASKERESO_ID" NUMBER(10,0), 
	"ALLASHIRDETO_ID" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table HIRDETES
--------------------------------------------------------

  CREATE TABLE "IVANOV"."HIRDETES" 
   (	"ID" NUMBER(10,0), 
	"MEGNEVEZES" VARCHAR2(50 BYTE), 
	"MUNKAVEGZESHELYE" VARCHAR2(50 BYTE), 
	"IDO" NUMBER(1,0), 
	"MUNKAREND" VARCHAR2(20 BYTE), 
	"MUNKAFELADATLEIRAS" VARCHAR2(200 BYTE), 
	"KOTELVARAS" VARCHAR2(100 BYTE), 
	"OPCELVARAS" VARCHAR2(100 BYTE), 
	"JUTTATASOK" VARCHAR2(100 BYTE), 
	"JELENTKEZESIHATARIDO" DATE, 
	"STATUS" NUMBER(1,0), 
	"CEGID" NUMBER(10,0), 
	"ALLASHIRDETOID" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ONELETRAJZ
--------------------------------------------------------

  CREATE TABLE "IVANOV"."ONELETRAJZ" 
   (	"ID" NUMBER(10,0), 
	"VEGZETTSEG_ID" VARCHAR2(200 BYTE), 
	"TAPASZTALAT_ID" VARCHAR2(200 BYTE), 
	"SOFTSKILL_ID" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table SOFTSKILL
--------------------------------------------------------

  CREATE TABLE "IVANOV"."SOFTSKILL" 
   (	"ID" NUMBER(10,0), 
	"NEV" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TAPASZTALAT
--------------------------------------------------------

  CREATE TABLE "IVANOV"."TAPASZTALAT" 
   (	"ID" NUMBER(10,0), 
	"HELY" VARCHAR2(200 BYTE), 
	"IDO_KEZDET" DATE, 
	"IDO_VEG" DATE, 
	"LEIRAS" VARCHAR2(600 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table TEST
--------------------------------------------------------

  CREATE TABLE "IVANOV"."TEST" 
   (	"ID" NUMBER(3,0), 
	"FELHASZNALONEV" VARCHAR2(50 BYTE), 
	"JELSZO" VARCHAR2(50 BYTE), 
	"STATUS" NUMBER(1,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table VEGZETTSEG
--------------------------------------------------------

  CREATE TABLE "IVANOV"."VEGZETTSEG" 
   (	"ID" NUMBER(10,0), 
	"HELY" VARCHAR2(200 BYTE), 
	"IDO_KEZDET" DATE, 
	"IDO_VEG" DATE, 
	"LEIRAS" VARCHAR2(600 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
REM INSERTING into IVANOV.ADMINMEGJEGYZES
SET DEFINE OFF;
Insert into IVANOV.ADMINMEGJEGYZES (ID,IDOPONT,TARTALOM) values ('1',to_date('22-M�J.  -03','RR-MON-DD'),'P�lda adminmegyjegyz�s');
Insert into IVANOV.ADMINMEGJEGYZES (ID,IDOPONT,TARTALOM) values ('2',to_date('22-�PR.  -14','RR-MON-DD'),'Az adminok megjegyz�seket adhatnak hozz�, p�ld�ul ezt.');
Insert into IVANOV.ADMINMEGJEGYZES (ID,IDOPONT,TARTALOM) values ('3',to_date('22-M�RC. -02','RR-MON-DD'),'Adminmegjegyz�s p�lda');
Insert into IVANOV.ADMINMEGJEGYZES (ID,IDOPONT,TARTALOM) values ('4',to_date('21-M�J.  -21','RR-MON-DD'),'Ezt a kedvenc adminotok �rta.');
Insert into IVANOV.ADMINMEGJEGYZES (ID,IDOPONT,TARTALOM) values ('5',to_date('18-M�J.  -19','RR-MON-DD'),'Ez az �t�dik adminmegjegyz�s az oldalon.');
Insert into IVANOV.ADMINMEGJEGYZES (ID,IDOPONT,TARTALOM) values ('16',to_date('22-JAN.  -05','RR-MON-DD'),'Tesztadminmegjegyz�s');
Insert into IVANOV.ADMINMEGJEGYZES (ID,IDOPONT,TARTALOM) values ('17',to_date('22-FEBR. -21','RR-MON-DD'),'Lol');
Insert into IVANOV.ADMINMEGJEGYZES (ID,IDOPONT,TARTALOM) values ('18',to_date('22-M�RC. -09','RR-MON-DD'),'Xd');
Insert into IVANOV.ADMINMEGJEGYZES (ID,IDOPONT,TARTALOM) values ('19',to_date('22-�PR.  -04','RR-MON-DD'),'Adminmegjegyz�ssadjk');
Insert into IVANOV.ADMINMEGJEGYZES (ID,IDOPONT,TARTALOM) values ('20',to_date('22-JAN.  -04','RR-MON-DD'),'Igen.');
Insert into IVANOV.ADMINMEGJEGYZES (ID,IDOPONT,TARTALOM) values ('6',to_date('22-M�J.  -05','RR-MON-DD'),'Adminmegjegyz�s a legjobb megjegyz�s.');
Insert into IVANOV.ADMINMEGJEGYZES (ID,IDOPONT,TARTALOM) values ('7',to_date('22-M�J.  -12','RR-MON-DD'),'A hetedik adminmegjegyz�s');
Insert into IVANOV.ADMINMEGJEGYZES (ID,IDOPONT,TARTALOM) values ('8',to_date('22-M�J.  -01','RR-MON-DD'),'Igen, ez egy adminmegjegyz�s.');
Insert into IVANOV.ADMINMEGJEGYZES (ID,IDOPONT,TARTALOM) values ('9',to_date('22-M�J.  -03','RR-MON-DD'),'Adminmegjegyz�s 4ever.');
Insert into IVANOV.ADMINMEGJEGYZES (ID,IDOPONT,TARTALOM) values ('10',to_date('22-M�J.  -02','RR-MON-DD'),'Az adminok szeretnek megjegyz�seket tenni.');
Insert into IVANOV.ADMINMEGJEGYZES (ID,IDOPONT,TARTALOM) values ('11',to_date('22-M�J.  -02','RR-MON-DD'),'Adminok jegyeznek meg dolgokat.');
Insert into IVANOV.ADMINMEGJEGYZES (ID,IDOPONT,TARTALOM) values ('12',to_date('22-M�J.  -02','RR-MON-DD'),'Ez a 12. adminmegjegyz�s.');
Insert into IVANOV.ADMINMEGJEGYZES (ID,IDOPONT,TARTALOM) values ('13',to_date('22-�PR.  -06','RR-MON-DD'),'�jf�l van, �s �n adminmegjegyz�seket �rok.');
Insert into IVANOV.ADMINMEGJEGYZES (ID,IDOPONT,TARTALOM) values ('14',to_date('22-M�J.  -02','RR-MON-DD'),'adasdjasdklj, m�rmint adminmegjegyz�s.');
Insert into IVANOV.ADMINMEGJEGYZES (ID,IDOPONT,TARTALOM) values ('15',to_date('22-JAN.  -06','RR-MON-DD'),'A 15. adminmegjegyz�s, im done.');
REM INSERTING into IVANOV.ALLASHIRDETO
SET DEFINE OFF;
Insert into IVANOV.ALLASHIRDETO (ID,TITULUS,VEZETEKNEV,KERESZTNEV,FENYKEP_UT,TELEFONSZAM,EMAIL) values ('1',null,'Slendrion','Endre','4_pfpic.jpg','06-70-987-9876','slendrian70@gmail.com');
Insert into IVANOV.ALLASHIRDETO (ID,TITULUS,VEZETEKNEV,KERESZTNEV,FENYKEP_UT,TELEFONSZAM,EMAIL) values ('2',null,'�ll�shirdet�','B�la',null,'06-20-373-2393','allashirdeto.bela@gmail.com');
Insert into IVANOV.ALLASHIRDETO (ID,TITULUS,VEZETEKNEV,KERESZTNEV,FENYKEP_UT,TELEFONSZAM,EMAIL) values ('3',null,'Tordai','Istv�n',null,'06-50-276-2354','tordai.allas@citromail.hu');
Insert into IVANOV.ALLASHIRDETO (ID,TITULUS,VEZETEKNEV,KERESZTNEV,FENYKEP_UT,TELEFONSZAM,EMAIL) values ('4','Dr.','Herczeg','J�zsef',null,'06-20-658-9942','hercegmunka@freemail.hu');
Insert into IVANOV.ALLASHIRDETO (ID,TITULUS,VEZETEKNEV,KERESZTNEV,FENYKEP_UT,TELEFONSZAM,EMAIL) values ('5','Dr.','V�r�s','Erzs�bet',null,'06-30-123-5821','allashirdetes@gmail.com');
Insert into IVANOV.ALLASHIRDETO (ID,TITULUS,VEZETEKNEV,KERESZTNEV,FENYKEP_UT,TELEFONSZAM,EMAIL) values ('6',null,'V�r�s','Erik',null,'06-70-343-1234','mimidol2@antawii.com');
Insert into IVANOV.ALLASHIRDETO (ID,TITULUS,VEZETEKNEV,KERESZTNEV,FENYKEP_UT,TELEFONSZAM,EMAIL) values ('7',null,'Lengyel','Alex',null,'06-30-935-1742','flyalone@enwsueicn.com');
Insert into IVANOV.ALLASHIRDETO (ID,TITULUS,VEZETEKNEV,KERESZTNEV,FENYKEP_UT,TELEFONSZAM,EMAIL) values ('8',null,'Bakos','Rudolf',null,'06-20-174-3920','phillyma2008@nonise.com');
Insert into IVANOV.ALLASHIRDETO (ID,TITULUS,VEZETEKNEV,KERESZTNEV,FENYKEP_UT,TELEFONSZAM,EMAIL) values ('9',null,'Ill�s','�kos',null,'06-20-593-1832','speedfreak32@mailpluss.com');
Insert into IVANOV.ALLASHIRDETO (ID,TITULUS,VEZETEKNEV,KERESZTNEV,FENYKEP_UT,TELEFONSZAM,EMAIL) values ('10','Dr.','T�r�k','J�nos',null,'06-20-193-3928','jmwilli2@soccerfit.com');
Insert into IVANOV.ALLASHIRDETO (ID,TITULUS,VEZETEKNEV,KERESZTNEV,FENYKEP_UT,TELEFONSZAM,EMAIL) values ('11',null,'P�l ','Petra',null,'06-30-193-2810','manni02@oygkt.com');
Insert into IVANOV.ALLASHIRDETO (ID,TITULUS,VEZETEKNEV,KERESZTNEV,FENYKEP_UT,TELEFONSZAM,EMAIL) values ('12',null,'Kozma','J�lia',null,'06-30-292-1923','billykt@bentsgolf.com');
Insert into IVANOV.ALLASHIRDETO (ID,TITULUS,VEZETEKNEV,KERESZTNEV,FENYKEP_UT,TELEFONSZAM,EMAIL) values ('13',null,'Szab�','Kata',null,'06-20-192-2938','pwnjaloyn@fireblazevps.com');
Insert into IVANOV.ALLASHIRDETO (ID,TITULUS,VEZETEKNEV,KERESZTNEV,FENYKEP_UT,TELEFONSZAM,EMAIL) values ('14','Dr.','Barma','Zsanett',null,'06-70-111-4253','vmdbc@nonise.com');
Insert into IVANOV.ALLASHIRDETO (ID,TITULUS,VEZETEKNEV,KERESZTNEV,FENYKEP_UT,TELEFONSZAM,EMAIL) values ('15','Dr.','G�sp�r','�gnes',null,'06-70-194-2856','tiiaait@vemail.site');
REM INSERTING into IVANOV.ALLASKERESO
SET DEFINE OFF;
Insert into IVANOV.ALLASKERESO (ID,TITULUS,VEZETEKNEV,KERESZTNEV,FENYKEP_UT,SZULIDO,LAKCIM,TARTHELY,RADIUS,ONELETRAJZ_ID,ROVID_LEIRAS,EGYEB_INFO,TELEFONSZAM,EMAIL) values ('1','Dr.','P�lda','B�la',null,to_date('07-M�J.  -15','RR-MON-DD'),'6723 Szeged, P�lda utca 1.','6723 Szeged, P�lda utca 1.','30',null,'Rendk�v�li m�don �tlagos','Szeret p�lda lenni.','06-20-999-9999','pelda.bela@pelda.com');
Insert into IVANOV.ALLASKERESO (ID,TITULUS,VEZETEKNEV,KERESZTNEV,FENYKEP_UT,SZULIDO,LAKCIM,TARTHELY,RADIUS,ONELETRAJZ_ID,ROVID_LEIRAS,EGYEB_INFO,TELEFONSZAM,EMAIL) values ('2',null,'B�lint','Arnold',null,to_date('75-M�J.  -16','RR-MON-DD'),'6831 Balatonszepezd, R�k�czi �t 98.','6831 Balatonszepezd, R�k�czi �t 98.','10',null,'R�vid barna hajam van, szak�llas vagyok.',null,'06-20-392-2912','ksenianowikova@devfiltr.com');
Insert into IVANOV.ALLASKERESO (ID,TITULUS,VEZETEKNEV,KERESZTNEV,FENYKEP_UT,SZULIDO,LAKCIM,TARTHELY,RADIUS,ONELETRAJZ_ID,ROVID_LEIRAS,EGYEB_INFO,TELEFONSZAM,EMAIL) values ('3',null,'Feh�r','Zal�n',null,to_date('96-M�J.  -17','RR-MON-DD'),'7362 Tarr�s, Szil�gyi Erzs�bet fasor 13.','7362 Tarr�s, Szil�gyi Erzs�bet fasor 13.','15',null,'Szeretek tanulni.',null,'06-20-192-3292','tatvadim@reconditionari-turbosuflante.com');
Insert into IVANOV.ALLASKERESO (ID,TITULUS,VEZETEKNEV,KERESZTNEV,FENYKEP_UT,SZULIDO,LAKCIM,TARTHELY,RADIUS,ONELETRAJZ_ID,ROVID_LEIRAS,EGYEB_INFO,TELEFONSZAM,EMAIL) values ('4','Dr.','V�radi','Domonkos',null,to_date('77-AUG.  -11','RR-MON-DD'),'9723 Luk�csh�za, Belgr�d rkp. 4.','9723 Luk�csh�za, Belgr�d rkp. 4.','20',null,'A kedvenc �telem a sal�ta.',null,'06-20-129-5392','brenoccosta@dluerei.com');
Insert into IVANOV.ALLASKERESO (ID,TITULUS,VEZETEKNEV,KERESZTNEV,FENYKEP_UT,SZULIDO,LAKCIM,TARTHELY,RADIUS,ONELETRAJZ_ID,ROVID_LEIRAS,EGYEB_INFO,TELEFONSZAM,EMAIL) values ('5',null,'Vir�g','�rmin',null,to_date('43-DEC.  -17','RR-MON-DD'),'4975 M�htelek, Apor P�ter u. 62.','4975 M�htelek, Apor P�ter u. 62.','25',null,'A kedvenc sz�nem a piros.','A vezet�knevem Vir�g.','06-20-294-2842','filipfindtarget@thecirchotelhollywood.com');
Insert into IVANOV.ALLASKERESO (ID,TITULUS,VEZETEKNEV,KERESZTNEV,FENYKEP_UT,SZULIDO,LAKCIM,TARTHELY,RADIUS,ONELETRAJZ_ID,ROVID_LEIRAS,EGYEB_INFO,TELEFONSZAM,EMAIL) values ('6',null,'Kerekes','Endre',null,to_date('00-M�J.  -18','RR-MON-DD'),'8723 Somogycsics�, N�n�si �t 64.','8723 Somogycsics�, N�n�si �t 64.','30',null,'Szeretek futni.',null,'06-20-123-5432','chuckalugk@thekangsua.com');
Insert into IVANOV.ALLASKERESO (ID,TITULUS,VEZETEKNEV,KERESZTNEV,FENYKEP_UT,SZULIDO,LAKCIM,TARTHELY,RADIUS,ONELETRAJZ_ID,ROVID_LEIRAS,EGYEB_INFO,TELEFONSZAM,EMAIL) values ('7',null,'De�k','Ren�ta',null,to_date('78-J�N.  -08','RR-MON-DD'),'8681 Bakonyj�k�, K�rp�t u. 1.','8681 Bakonyj�k�, K�rp�t u. 1.','1',null,'Szeretek focizni.',null,'06-20-112-2392','judy0611@asifboot.com');
Insert into IVANOV.ALLASKERESO (ID,TITULUS,VEZETEKNEV,KERESZTNEV,FENYKEP_UT,SZULIDO,LAKCIM,TARTHELY,RADIUS,ONELETRAJZ_ID,ROVID_LEIRAS,EGYEB_INFO,TELEFONSZAM,EMAIL) values ('8',null,'Zobor','Andrea',null,to_date('02-J�N.  -06','RR-MON-DD'),'2671 �rhalom, Heged�s Gyula utca 7.','2671 �rhalom, Heged�s Gyula utca 7.','45',null,'Hossz�, barna hajam van.',null,'06-20-291-3292','davidcor@longdz.site');
Insert into IVANOV.ALLASKERESO (ID,TITULUS,VEZETEKNEV,KERESZTNEV,FENYKEP_UT,SZULIDO,LAKCIM,TARTHELY,RADIUS,ONELETRAJZ_ID,ROVID_LEIRAS,EGYEB_INFO,TELEFONSZAM,EMAIL) values ('9',null,'Somogyi','Orsolya',null,to_date('55-JAN.  -21','RR-MON-DD'),'6412 Balotasz�ll�s, Dayka G�bor u. 40.','6412 Balotasz�ll�s, Dayka G�bor u. 40.','80',null,'R�vid, g�nd�r fekete hajam van.','G�rdeszk�zok szabadid�mben','06-20-392-3842','sah1prcipx@sameleik.site');
Insert into IVANOV.ALLASKERESO (ID,TITULUS,VEZETEKNEV,KERESZTNEV,FENYKEP_UT,SZULIDO,LAKCIM,TARTHELY,RADIUS,ONELETRAJZ_ID,ROVID_LEIRAS,EGYEB_INFO,TELEFONSZAM,EMAIL) values ('10','Dr.','Szab�','Ram�na',null,to_date('22-M�J.  -18','RR-MON-DD'),'1186 Budapest, �rp�d fejedelem �tja4.','1186 Budapest, �rp�d fejedelem �tja4.','110',null,'Szeretem a kuty�kat.',null,'06-20-693-2183','ludmilaswelt@sameleik.site');
Insert into IVANOV.ALLASKERESO (ID,TITULUS,VEZETEKNEV,KERESZTNEV,FENYKEP_UT,SZULIDO,LAKCIM,TARTHELY,RADIUS,ONELETRAJZ_ID,ROVID_LEIRAS,EGYEB_INFO,TELEFONSZAM,EMAIL) values ('11',null,'Somogyi','Vivien',null,to_date('97-AUG.  -13','RR-MON-DD'),'8000 Sz�kesfeh�rv�r, Ter�z krt. 36.','8000 Sz�kesfeh�rv�r, Ter�z krt. 36.','40',null,'Szeretek zen�lni.',null,'06-20-392-4832','botatt@tekkoree.gq');
Insert into IVANOV.ALLASKERESO (ID,TITULUS,VEZETEKNEV,KERESZTNEV,FENYKEP_UT,SZULIDO,LAKCIM,TARTHELY,RADIUS,ONELETRAJZ_ID,ROVID_LEIRAS,EGYEB_INFO,TELEFONSZAM,EMAIL) values ('12',null,'B�cs','Bogl�rka',null,to_date('79-JAN.  -20','RR-MON-DD'),'6922 F�lde�k, Nagyt�t�nyi �t 72.','6922 F�lde�k, Nagyt�t�nyi �t 72.','30',null,'Sokat tanultam az egyetemen.',null,'06-20-912-2394','mordulkin@playfuny.com');
Insert into IVANOV.ALLASKERESO (ID,TITULUS,VEZETEKNEV,KERESZTNEV,FENYKEP_UT,SZULIDO,LAKCIM,TARTHELY,RADIUS,ONELETRAJZ_ID,ROVID_LEIRAS,EGYEB_INFO,TELEFONSZAM,EMAIL) values ('13',null,'Mezei','Vanessza',null,to_date('94-OKT.  -13','RR-MON-DD'),'9721 Gencsap�ti, Belgr�d rkp. 60.','9721 Gencsap�ti, Belgr�d rkp. 60.','50',null,'Keveset tanultam az egyetemen.','Nem mez�n lakom.','06-20-383-3888','geha1@tekkoree.gq');
Insert into IVANOV.ALLASKERESO (ID,TITULUS,VEZETEKNEV,KERESZTNEV,FENYKEP_UT,SZULIDO,LAKCIM,TARTHELY,RADIUS,ONELETRAJZ_ID,ROVID_LEIRAS,EGYEB_INFO,TELEFONSZAM,EMAIL) values ('14',null,'Borb�ly','Lili�na',null,to_date('90-�PR.  -20','RR-MON-DD'),'4285 �lmosd, Tompa u. 46.','4285 �lmosd, Tompa u. 46.','70',null,'Nem f�lek, nem f�zok.',null,'06-20-295-3453','meramit@hstuie.com');
Insert into IVANOV.ALLASKERESO (ID,TITULUS,VEZETEKNEV,KERESZTNEV,FENYKEP_UT,SZULIDO,LAKCIM,TARTHELY,RADIUS,ONELETRAJZ_ID,ROVID_LEIRAS,EGYEB_INFO,TELEFONSZAM,EMAIL) values ('15',null,'Bogd�n','Krist�f',null,to_date('22-M�J.  -12','RR-MON-DD'),'9796 Horv�tl�v�, Belgr�d rkp. 8.','9796 Horv�tl�v�, Belgr�d rkp. 8.','110',null,'K�k sz�n� a szemem.',null,'06-20-523-3943','kosvalera@tunhide.com');
REM INSERTING into IVANOV.CEG
SET DEFINE OFF;
Insert into IVANOV.CEG (ID,NEV,FENYKEP_UT,ROVID_LEIRAS,TELEFONSZAM,EMAIL) values ('1','McDonalds','1_ceg.jpg','A Mcdonalds egy hamburgereket forgalmaz? nemzetk?zi gyors?ttereml?nc.','06-70-123-4567','mc@donal.ds');
Insert into IVANOV.CEG (ID,NEV,FENYKEP_UT,ROVID_LEIRAS,TELEFONSZAM,EMAIL) values ('2','Nike','2_ceg.png','A Nike, Inc. vagy r�viden Nike a vil�g els� sz�m� edz�cip�-, sportruh�zat- �s sportszergy�rt�ja.','06-30-578-3244','nike@citromail.hu');
Insert into IVANOV.CEG (ID,NEV,FENYKEP_UT,ROVID_LEIRAS,TELEFONSZAM,EMAIL) values ('3','Facebook','3_ceg.png','A Facebook amerikai alap�t�s� k�z�ss�gi h�l�zat, amely 2004. febru�r 4-�n kezdte meg m�k�d�s�t.','06-20-948-3243','alien@mars.com');
Insert into IVANOV.CEG (ID,NEV,FENYKEP_UT,ROVID_LEIRAS,TELEFONSZAM,EMAIL) values ('4','SZTE','4_ceg.png','A Szegedi Tudom�nyegyetem (r�viden: SZTE) � Universitas Scientiarum Szegediensis / University of Szeged � Magyarorsz�gon, Szeged v�ros�ban m�k�d�,  alap�tv�ny �ltal fenntartott fels�oktat�si int�zm�ny.','06-70-827-9125','szte@szte.hu');
Insert into IVANOV.CEG (ID,NEV,FENYKEP_UT,ROVID_LEIRAS,TELEFONSZAM,EMAIL) values ('5','Google','5_ceg.png','A Google LLC amerikai, t�zsd�n bejegyzett r�szv�nyt�rsas�g, amit eredetileg z�rtk�r�en m�k�d� t�rsas�gk�nt alap�tottak 1998-ban, �s aminek a nev�hez f�z�dik a Google keres�motor kifejleszt�se �s �zemeltet�se.','06-30-265-1958','google@yahoo.com');
Insert into IVANOV.CEG (ID,NEV,FENYKEP_UT,ROVID_LEIRAS,TELEFONSZAM,EMAIL) values ('6','ELTE','6_ceg.png','Az E�tv�s Lor�nd Tudom�nyegyetem Magyarorsz�g leghosszabb ideje folyamatosan m�k�d� egyeteme.','06-20-593-2932','olgailyushchenko49@tigo.tk');
Insert into IVANOV.CEG (ID,NEV,FENYKEP_UT,ROVID_LEIRAS,TELEFONSZAM,EMAIL) values ('7','Adidas','7_ceg.png','Az Adidas n�met sportszergy�rt� c�gcsoport.','06-20-539-3912','vladnechkin@soccerfit.com');
Insert into IVANOV.CEG (ID,NEV,FENYKEP_UT,ROVID_LEIRAS,TELEFONSZAM,EMAIL) values ('8','Youtube','8_ceg.png','A YouTube nyilv�nos vide�megoszt� webhely.','06-20-492-1111','spanky49@omdlism.com');
Insert into IVANOV.CEG (ID,NEV,FENYKEP_UT,ROVID_LEIRAS,TELEFONSZAM,EMAIL) values ('9','Sarki kisbolt','9_ceg.png','Egy apr�cska bolt a sarkon.','06-20-691-2931','qa7kbz6evm@usbvap.com');
Insert into IVANOV.CEG (ID,NEV,FENYKEP_UT,ROVID_LEIRAS,TELEFONSZAM,EMAIL) values ('10','Yahoo','10_ceg.png','A Yahoo! a Yahoo! Inc. amerikai c�g v�djegye, amellyel egy internetes port�lt �s katal�gust �zemeltet. ','06-20-793-1294','edwardcorn@typery.com');
Insert into IVANOV.CEG (ID,NEV,FENYKEP_UT,ROVID_LEIRAS,TELEFONSZAM,EMAIL) values ('11','Twitch','11_ceg.png','A Twitch.tv egy vide�j�t�k-k�zvet�t�ssel foglalkoz� weboldal.','06-20-693-1923','zhul@outlook.sbs');
Insert into IVANOV.CEG (ID,NEV,FENYKEP_UT,ROVID_LEIRAS,TELEFONSZAM,EMAIL) values ('12','Pinterest','12_ceg.png','A Pinterest egy amerikai k�z�ss�gi k�pmegoszt� weboldal.','06-20-593-2913','finik2002@typery.com');
Insert into IVANOV.CEG (ID,NEV,FENYKEP_UT,ROVID_LEIRAS,TELEFONSZAM,EMAIL) values ('13','Reddit','13_ceg.png','A Reddit egy k�z�ss�gi weboldal.','06-20-129-5932','43844168@inadtia.com');
Insert into IVANOV.CEG (ID,NEV,FENYKEP_UT,ROVID_LEIRAS,TELEFONSZAM,EMAIL) values ('14','LinkedIn','14_ceg.png','A LinkedIn a vil�g legnagyobb �zleti k�z�ss�gi h�l�zata.','06-20-693-2193','ditka80@tednbe.com');
Insert into IVANOV.CEG (ID,NEV,FENYKEP_UT,ROVID_LEIRAS,TELEFONSZAM,EMAIL) values ('15','Magyar Rend�rs�g','15_ceg.png','A Rend�rs�g - Magyarorsz�g �llami szint� rend�rs�ge.','06-20-794-1293','ggunsolley@nonise.com');
REM INSERTING into IVANOV.FELHASZNALO
SET DEFINE OFF;
Insert into IVANOV.FELHASZNALO (ID,FELHASZNALONEV,JELSZO,STATUS,IS_ADMIN,ALLASKERESO_ID,ALLASHIRDETO_ID) values ('6','munkas','munkas','0','0','1',null);
Insert into IVANOV.FELHASZNALO (ID,FELHASZNALONEV,JELSZO,STATUS,IS_ADMIN,ALLASKERESO_ID,ALLASHIRDETO_ID) values ('7','munkahirdeto','munkahirdeto','0','0',null,'1');
Insert into IVANOV.FELHASZNALO (ID,FELHASZNALONEV,JELSZO,STATUS,IS_ADMIN,ALLASKERESO_ID,ALLASHIRDETO_ID) values ('8','kistamas','kistamas','1','0','2',null);
Insert into IVANOV.FELHASZNALO (ID,FELHASZNALONEV,JELSZO,STATUS,IS_ADMIN,ALLASKERESO_ID,ALLASHIRDETO_ID) values ('9','erdekel','erdekel','1','0','3',null);
Insert into IVANOV.FELHASZNALO (ID,FELHASZNALONEV,JELSZO,STATUS,IS_ADMIN,ALLASKERESO_ID,ALLASHIRDETO_ID) values ('10','pekmester','pekmester','1','0','4',null);
Insert into IVANOV.FELHASZNALO (ID,FELHASZNALONEV,JELSZO,STATUS,IS_ADMIN,ALLASKERESO_ID,ALLASHIRDETO_ID) values ('11','munkakerulo','munkakerulo','1','0','5',null);
Insert into IVANOV.FELHASZNALO (ID,FELHASZNALONEV,JELSZO,STATUS,IS_ADMIN,ALLASKERESO_ID,ALLASHIRDETO_ID) values ('1','ivanov','ivanov','1','1',null,null);
Insert into IVANOV.FELHASZNALO (ID,FELHASZNALONEV,JELSZO,STATUS,IS_ADMIN,ALLASKERESO_ID,ALLASHIRDETO_ID) values ('2','admin','admin','1','1',null,null);
Insert into IVANOV.FELHASZNALO (ID,FELHASZNALONEV,JELSZO,STATUS,IS_ADMIN,ALLASKERESO_ID,ALLASHIRDETO_ID) values ('3','felh1','felh1','1','0','6',null);
Insert into IVANOV.FELHASZNALO (ID,FELHASZNALONEV,JELSZO,STATUS,IS_ADMIN,ALLASKERESO_ID,ALLASHIRDETO_ID) values ('4','slendrianodon','slendrianodon','1','0',null,'2');
Insert into IVANOV.FELHASZNALO (ID,FELHASZNALONEV,JELSZO,STATUS,IS_ADMIN,ALLASKERESO_ID,ALLASHIRDETO_ID) values ('5','hespi','hespi','1','0','7',null);
Insert into IVANOV.FELHASZNALO (ID,FELHASZNALONEV,JELSZO,STATUS,IS_ADMIN,ALLASKERESO_ID,ALLASHIRDETO_ID) values ('16','test3','test3','1','1',null,null);
Insert into IVANOV.FELHASZNALO (ID,FELHASZNALONEV,JELSZO,STATUS,IS_ADMIN,ALLASKERESO_ID,ALLASHIRDETO_ID) values ('17','test4','test4','1','1',null,null);
Insert into IVANOV.FELHASZNALO (ID,FELHASZNALONEV,JELSZO,STATUS,IS_ADMIN,ALLASKERESO_ID,ALLASHIRDETO_ID) values ('18','hentes','hentes','0','0','9',null);
Insert into IVANOV.FELHASZNALO (ID,FELHASZNALONEV,JELSZO,STATUS,IS_ADMIN,ALLASKERESO_ID,ALLASHIRDETO_ID) values ('19','mrpek','mrpek','0','0','10',null);
Insert into IVANOV.FELHASZNALO (ID,FELHASZNALONEV,JELSZO,STATUS,IS_ADMIN,ALLASKERESO_ID,ALLASHIRDETO_ID) values ('20','allasokathirdeto','allasokathirdeto','1','0',null,'1');
Insert into IVANOV.FELHASZNALO (ID,FELHASZNALONEV,JELSZO,STATUS,IS_ADMIN,ALLASKERESO_ID,ALLASHIRDETO_ID) values ('12','jozsi','jozsi','0','0',null,'3');
Insert into IVANOV.FELHASZNALO (ID,FELHASZNALONEV,JELSZO,STATUS,IS_ADMIN,ALLASKERESO_ID,ALLASHIRDETO_ID) values ('13','test','test','1','0',null,'4');
Insert into IVANOV.FELHASZNALO (ID,FELHASZNALONEV,JELSZO,STATUS,IS_ADMIN,ALLASKERESO_ID,ALLASHIRDETO_ID) values ('14','allashirdeto','allashirdeto','1','0',null,'5');
Insert into IVANOV.FELHASZNALO (ID,FELHASZNALONEV,JELSZO,STATUS,IS_ADMIN,ALLASKERESO_ID,ALLASHIRDETO_ID) values ('15','test2','test2','1','0','8',null);
REM INSERTING into IVANOV.HIRDETES
SET DEFINE OFF;
Insert into IVANOV.HIRDETES (ID,MEGNEVEZES,MUNKAVEGZESHELYE,IDO,MUNKAREND,MUNKAFELADATLEIRAS,KOTELVARAS,OPCELVARAS,JUTTATASOK,JELENTKEZESIHATARIDO,STATUS,CEGID,ALLASHIRDETOID) values ('6','Hentes','Szeged','1','Teljes munkaid�','Szarvasmarha, juh �s l� lev�g�s�val kell foglalkozni.','Hentes v�gzetts�g','Saj�t aut�.',null,to_date('23-M�J.  -20','RR-MON-DD'),'1','6','1');
Insert into IVANOV.HIRDETES (ID,MEGNEVEZES,MUNKAVEGZESHELYE,IDO,MUNKAREND,MUNKAFELADATLEIRAS,KOTELVARAS,OPCELVARAS,JUTTATASOK,JELENTKEZESIHATARIDO,STATUS,CEGID,ALLASHIRDETOID) values ('1','Takar�t�','Szeged','1','Teljes munkaid�','�ruh�zak tiszt�t�sa, parkol�ban felmos�s.','Egyetemi diploma','K�lf�ldi doktorandusz k�pz�s.','Napi egyszeri �tkez�s.',to_date('23-M�J.  -19','RR-MON-DD'),'1','1','2');
Insert into IVANOV.HIRDETES (ID,MEGNEVEZES,MUNKAVEGZESHELYE,IDO,MUNKAREND,MUNKAFELADATLEIRAS,KOTELVARAS,OPCELVARAS,JUTTATASOK,JELENTKEZESIHATARIDO,STATUS,CEGID,ALLASHIRDETOID) values ('2','Programoz�','P�cs','0','Teljes munkaid�','Programok �r�sa, diszkr�t matekkal foglalkoz�s.','Smalltalk ismerete.','Kalkulus ismerete.','Utaz�si k�lt�sgt�r�t�s.',to_date('24-M�J.  -24','RR-MON-DD'),'1','2','3');
Insert into IVANOV.HIRDETES (ID,MEGNEVEZES,MUNKAVEGZESHELYE,IDO,MUNKAREND,MUNKAFELADATLEIRAS,KOTELVARAS,OPCELVARAS,JUTTATASOK,JELENTKEZESIHATARIDO,STATUS,CEGID,ALLASHIRDETOID) values ('3','Hegeszt�','Budapest','1','R�szmunkaid�','Hegeszt�s megrendel�sek alapj�n.','El�zetes munkatapasztalat.',null,'Munkaegyenruha.',to_date('26-M�J.  -22','RR-MON-DD'),'1','3','4');
Insert into IVANOV.HIRDETES (ID,MEGNEVEZES,MUNKAVEGZESHELYE,IDO,MUNKAREND,MUNKAFELADATLEIRAS,KOTELVARAS,OPCELVARAS,JUTTATASOK,JELENTKEZESIHATARIDO,STATUS,CEGID,ALLASHIRDETOID) values ('4','�rhaj�s','Szolnok','0','R�szmunkaid�','�rben haj�z�s.','Ne f�lj az �rt�l.','Ne f�lj a haj�kt�l.','A munk�baj�r�s munkaid�nek min�s�l.',to_date('22-J�L.  -16','RR-MON-DD'),'1','4','5');
Insert into IVANOV.HIRDETES (ID,MEGNEVEZES,MUNKAVEGZESHELYE,IDO,MUNKAREND,MUNKAFELADATLEIRAS,KOTELVARAS,OPCELVARAS,JUTTATASOK,JELENTKEZESIHATARIDO,STATUS,CEGID,ALLASHIRDETOID) values ('5','P�k','Szeged','1','Teljes munkaid�','Kenyeret �s cirkuszt adni a n�pnek.','P�k v�gzetts�g.',null,'Egyenruha �s cip�.',to_date('22-AUG.  -19','RR-MON-DD'),'1','5','6');
Insert into IVANOV.HIRDETES (ID,MEGNEVEZES,MUNKAVEGZESHELYE,IDO,MUNKAREND,MUNKAFELADATLEIRAS,KOTELVARAS,OPCELVARAS,JUTTATASOK,JELENTKEZESIHATARIDO,STATUS,CEGID,ALLASHIRDETOID) values ('7','�llatgondoz�','Szeged','1','Teljes munkaid�','�llatok gondoz�sa.','�retts�gi.',null,'Kult�ra utalv�ny.',to_date('22-M�J.  -31','RR-MON-DD'),'1','7','7');
Insert into IVANOV.HIRDETES (ID,MEGNEVEZES,MUNKAVEGZESHELYE,IDO,MUNKAREND,MUNKAFELADATLEIRAS,KOTELVARAS,OPCELVARAS,JUTTATASOK,JELENTKEZESIHATARIDO,STATUS,CEGID,ALLASHIRDETOID) values ('8','�ltal�nos �pol�','Baja','1','Teljes munkaid�','Emberek �pol�sa','�jszak�k v�llal�sa.',null,'Aj�nd�kutalv�ny.',to_date('22-M�J.  -25','RR-MON-DD'),'1','8','8');
Insert into IVANOV.HIRDETES (ID,MEGNEVEZES,MUNKAVEGZESHELYE,IDO,MUNKAREND,MUNKAFELADATLEIRAS,KOTELVARAS,OPCELVARAS,JUTTATASOK,JELENTKEZESIHATARIDO,STATUS,CEGID,ALLASHIRDETOID) values ('9','Aranykal�szos gazda','B�k�scsaba','1','Teljes munkaid�','Gazd�lkod�s h�be-h�ba.','Aranykal�szos gazda v�gzetts�g.','�retts�gi.','Pacsi a f�n�kt�l.',to_date('22-M�J.  -19','RR-MON-DD'),'1','9','9');
Insert into IVANOV.HIRDETES (ID,MEGNEVEZES,MUNKAVEGZESHELYE,IDO,MUNKAREND,MUNKAFELADATLEIRAS,KOTELVARAS,OPCELVARAS,JUTTATASOK,JELENTKEZESIHATARIDO,STATUS,CEGID,ALLASHIRDETOID) values ('10','Ad�tan�csad�','B�cssz�l�s','0','R�szmunkaid�','Tan�csokat adni ad�kkal kapcsolatban','�n�ll� v�llalkoz�i tapasztalat.',null,'Ingyenes teniszb�rlet.',to_date('22-M�J.  -18','RR-MON-DD'),'1','10','10');
Insert into IVANOV.HIRDETES (ID,MEGNEVEZES,MUNKAVEGZESHELYE,IDO,MUNKAREND,MUNKAFELADATLEIRAS,KOTELVARAS,OPCELVARAS,JUTTATASOK,JELENTKEZESIHATARIDO,STATUS,CEGID,ALLASHIRDETOID) values ('11','Artista','J�noshalma','0','Teljes munkaid�','Artist�skod�s h�be-h�ba.','�retts�gi.',null,'Kedves mosoly a f�n�kt�l.',to_date('22-M�J.  -29','RR-MON-DD'),'1','11','11');
Insert into IVANOV.HIRDETES (ID,MEGNEVEZES,MUNKAVEGZESHELYE,IDO,MUNKAREND,MUNKAFELADATLEIRAS,KOTELVARAS,OPCELVARAS,JUTTATASOK,JELENTKEZESIHATARIDO,STATUS,CEGID,ALLASHIRDETOID) values ('12','�ltal�nos labor�ns','M�t�telke','0','R�szmunkaid�','Laborfeladatok ell�t�sa.','�retts�gi.','Egyetemi diploma.','Extra fizet�s.',to_date('22-M�J.  -23','RR-MON-DD'),'0','12','12');
Insert into IVANOV.HIRDETES (ID,MEGNEVEZES,MUNKAVEGZESHELYE,IDO,MUNKAREND,MUNKAFELADATLEIRAS,KOTELVARAS,OPCELVARAS,JUTTATASOK,JELENTKEZESIHATARIDO,STATUS,CEGID,ALLASHIRDETOID) values ('13','Szerel�','�jszentiv�n','1','R�szmunkaid�','Dolgok megszerel�se.','�retts�gi.',null,'SZ�P-k�rtya.',to_date('22-M�J.  -19','RR-MON-DD'),'1','13','13');
Insert into IVANOV.HIRDETES (ID,MEGNEVEZES,MUNKAVEGZESHELYE,IDO,MUNKAREND,MUNKAFELADATLEIRAS,KOTELVARAS,OPCELVARAS,JUTTATASOK,JELENTKEZESIHATARIDO,STATUS,CEGID,ALLASHIRDETOID) values ('14','Elad�','Fels�szentiv�n','0','Teljes munkaid�','Dolgok elad�sa.','Szakmai tapasztalat.','Elad� v�gzetts�g.','Cafet�ria.',to_date('22-M�J.  -21','RR-MON-DD'),'1','14','14');
Insert into IVANOV.HIRDETES (ID,MEGNEVEZES,MUNKAVEGZESHELYE,IDO,MUNKAREND,MUNKAFELADATLEIRAS,KOTELVARAS,OPCELVARAS,JUTTATASOK,JELENTKEZESIHATARIDO,STATUS,CEGID,ALLASHIRDETOID) values ('15','Becs�s','Sopron','1','R�szmunkaid�','Dolgok felbecsl�se.','Kor�bban szerzett tapasztalat.','Szakmai v�gzetts�g.','Aj�nd�k vid�mpark-bel�p�.',to_date('22-M�J.  -26','RR-MON-DD'),'0','15','15');
REM INSERTING into IVANOV.ONELETRAJZ
SET DEFINE OFF;
Insert into IVANOV.ONELETRAJZ (ID,VEGZETTSEG_ID,TAPASZTALAT_ID,SOFTSKILL_ID) values ('1','1','1','1');
Insert into IVANOV.ONELETRAJZ (ID,VEGZETTSEG_ID,TAPASZTALAT_ID,SOFTSKILL_ID) values ('2','2','2','2');
Insert into IVANOV.ONELETRAJZ (ID,VEGZETTSEG_ID,TAPASZTALAT_ID,SOFTSKILL_ID) values ('3','3','3','3');
Insert into IVANOV.ONELETRAJZ (ID,VEGZETTSEG_ID,TAPASZTALAT_ID,SOFTSKILL_ID) values ('4','4','4','4');
Insert into IVANOV.ONELETRAJZ (ID,VEGZETTSEG_ID,TAPASZTALAT_ID,SOFTSKILL_ID) values ('5','5','5','5');
Insert into IVANOV.ONELETRAJZ (ID,VEGZETTSEG_ID,TAPASZTALAT_ID,SOFTSKILL_ID) values ('6','6','6','6');
Insert into IVANOV.ONELETRAJZ (ID,VEGZETTSEG_ID,TAPASZTALAT_ID,SOFTSKILL_ID) values ('7','7','7','7');
Insert into IVANOV.ONELETRAJZ (ID,VEGZETTSEG_ID,TAPASZTALAT_ID,SOFTSKILL_ID) values ('8','8','8','8');
Insert into IVANOV.ONELETRAJZ (ID,VEGZETTSEG_ID,TAPASZTALAT_ID,SOFTSKILL_ID) values ('9','9','9','9');
Insert into IVANOV.ONELETRAJZ (ID,VEGZETTSEG_ID,TAPASZTALAT_ID,SOFTSKILL_ID) values ('10','10','10','10');
Insert into IVANOV.ONELETRAJZ (ID,VEGZETTSEG_ID,TAPASZTALAT_ID,SOFTSKILL_ID) values ('11','11','11','11');
Insert into IVANOV.ONELETRAJZ (ID,VEGZETTSEG_ID,TAPASZTALAT_ID,SOFTSKILL_ID) values ('12','12','12','12');
Insert into IVANOV.ONELETRAJZ (ID,VEGZETTSEG_ID,TAPASZTALAT_ID,SOFTSKILL_ID) values ('14','14','14','14');
Insert into IVANOV.ONELETRAJZ (ID,VEGZETTSEG_ID,TAPASZTALAT_ID,SOFTSKILL_ID) values ('15','15','15','15');
REM INSERTING into IVANOV.SOFTSKILL
SET DEFINE OFF;
Insert into IVANOV.SOFTSKILL (ID,NEV) values ('1','pontos');
Insert into IVANOV.SOFTSKILL (ID,NEV) values ('2','j� vezet�');
Insert into IVANOV.SOFTSKILL (ID,NEV) values ('3','k�nnyen alkalmazkod�');
Insert into IVANOV.SOFTSKILL (ID,NEV) values ('4','hat�rozott');
Insert into IVANOV.SOFTSKILL (ID,NEV) values ('16','b�jos');
Insert into IVANOV.SOFTSKILL (ID,NEV) values ('17','csalfa');
Insert into IVANOV.SOFTSKILL (ID,NEV) values ('18','csal�');
Insert into IVANOV.SOFTSKILL (ID,NEV) values ('19','csal�ka');
Insert into IVANOV.SOFTSKILL (ID,NEV) values ('20','eg�szs�ges');
Insert into IVANOV.SOFTSKILL (ID,NEV) values ('21','�des');
Insert into IVANOV.SOFTSKILL (ID,NEV) values ('22','�nekl�');
Insert into IVANOV.SOFTSKILL (ID,NEV) values ('23','cs�nya');
Insert into IVANOV.SOFTSKILL (ID,NEV) values ('24','csod�latos');
Insert into IVANOV.SOFTSKILL (ID,NEV) values ('25','nyafka');
Insert into IVANOV.SOFTSKILL (ID,NEV) values ('26','�zl�ses');
Insert into IVANOV.SOFTSKILL (ID,NEV) values ('27','ny�jas');
Insert into IVANOV.SOFTSKILL (ID,NEV) values ('28','napbarn�tott');
Insert into IVANOV.SOFTSKILL (ID,NEV) values ('29','mag�nyos');
Insert into IVANOV.SOFTSKILL (ID,NEV) values ('30','magyar');
Insert into IVANOV.SOFTSKILL (ID,NEV) values ('31','makacs');
Insert into IVANOV.SOFTSKILL (ID,NEV) values ('32','m�zlista');
Insert into IVANOV.SOFTSKILL (ID,NEV) values ('33','m�ly');
Insert into IVANOV.SOFTSKILL (ID,NEV) values ('34','morcos');
Insert into IVANOV.SOFTSKILL (ID,NEV) values ('35','morg�s');
Insert into IVANOV.SOFTSKILL (ID,NEV) values ('36','okos');
Insert into IVANOV.SOFTSKILL (ID,NEV) values ('37','oktondi');
Insert into IVANOV.SOFTSKILL (ID,NEV) values ('38','�ntelt');
Insert into IVANOV.SOFTSKILL (ID,NEV) values ('39','�nfej�');
Insert into IVANOV.SOFTSKILL (ID,NEV) values ('40','portug�l');
Insert into IVANOV.SOFTSKILL (ID,NEV) values ('41','puszt�t�');
Insert into IVANOV.SOFTSKILL (ID,NEV) values ('42','�vatos');
Insert into IVANOV.SOFTSKILL (ID,NEV) values ('43','al�zatos');
Insert into IVANOV.SOFTSKILL (ID,NEV) values ('44','alkalmas');
Insert into IVANOV.SOFTSKILL (ID,NEV) values ('45','anarchista');
Insert into IVANOV.SOFTSKILL (ID,NEV) values ('46','azonos');
Insert into IVANOV.SOFTSKILL (ID,NEV) values ('47','amorf');
Insert into IVANOV.SOFTSKILL (ID,NEV) values ('48','ausztriai');
Insert into IVANOV.SOFTSKILL (ID,NEV) values ('49','ausztr�l');
Insert into IVANOV.SOFTSKILL (ID,NEV) values ('50','aranyozott');
Insert into IVANOV.SOFTSKILL (ID,NEV) values ('5','szorgalmas');
Insert into IVANOV.SOFTSKILL (ID,NEV) values ('6','b�tor');
Insert into IVANOV.SOFTSKILL (ID,NEV) values ('7','meg�ll�thatatlan');
Insert into IVANOV.SOFTSKILL (ID,NEV) values ('8','leny�g�z�');
Insert into IVANOV.SOFTSKILL (ID,NEV) values ('9','dolgos');
Insert into IVANOV.SOFTSKILL (ID,NEV) values ('10','rugalmas');
Insert into IVANOV.SOFTSKILL (ID,NEV) values ('11','gyors');
Insert into IVANOV.SOFTSKILL (ID,NEV) values ('12','prec�z');
Insert into IVANOV.SOFTSKILL (ID,NEV) values ('13','vid�m');
Insert into IVANOV.SOFTSKILL (ID,NEV) values ('14','p�rg�s');
Insert into IVANOV.SOFTSKILL (ID,NEV) values ('15','lelkes');
REM INSERTING into IVANOV.TAPASZTALAT
SET DEFINE OFF;
Insert into IVANOV.TAPASZTALAT (ID,HELY,IDO_KEZDET,IDO_VEG,LEIRAS) values ('1','Egyeni v�llalkoz�s',to_date('20-FEBR. -01','RR-MON-DD'),null,'Laboreszk�z�k beszerz�se.');
Insert into IVANOV.TAPASZTALAT (ID,HELY,IDO_KEZDET,IDO_VEG,LEIRAS) values ('2','Sarki kisbolt',to_date('12-M�J.  -10','RR-MON-DD'),to_date('18-M�J.  -17','RR-MON-DD'),'T�rgyak elad�sa.');
Insert into IVANOV.TAPASZTALAT (ID,HELY,IDO_KEZDET,IDO_VEG,LEIRAS) values ('3','Bajai klinika',to_date('14-M�J.  -09','RR-MON-DD'),to_date('17-M�J.  -05','RR-MON-DD'),'Klinikai feladatok ell�t�sa.');
Insert into IVANOV.TAPASZTALAT (ID,HELY,IDO_KEZDET,IDO_VEG,LEIRAS) values ('4','Rend�rs�g',to_date('18-M�J.  -12','RR-MON-DD'),to_date('21-M�J.  -01','RR-MON-DD'),'Rend�ri feladatok ell�t�sa.');
Insert into IVANOV.TAPASZTALAT (ID,HELY,IDO_KEZDET,IDO_VEG,LEIRAS) values ('5','Mercedes Gy�r',to_date('16-M�J.  -18','RR-MON-DD'),to_date('19-M�J.  -16','RR-MON-DD'),'Gy�ri �sszeszerel� munk�k ell�t�sa.');
Insert into IVANOV.TAPASZTALAT (ID,HELY,IDO_KEZDET,IDO_VEG,LEIRAS) values ('6','Novotel',to_date('21-NOV.  -18','RR-MON-DD'),to_date('22-M�J.  -01','RR-MON-DD'),'Sz�llodai feladatok ell�t�sa.');
Insert into IVANOV.TAPASZTALAT (ID,HELY,IDO_KEZDET,IDO_VEG,LEIRAS) values ('7','Szeged NOVA',to_date('13-M�J.  -30','RR-MON-DD'),to_date('21-DEC.  -10','RR-MON-DD'),'Elad�i feladatok ell�t�sa.');
Insert into IVANOV.TAPASZTALAT (ID,HELY,IDO_KEZDET,IDO_VEG,LEIRAS) values ('8','Tesco',to_date('12-AUG.  -08','RR-MON-DD'),to_date('21-M�J.  -07','RR-MON-DD'),'Term�kek �rul�sa.');
Insert into IVANOV.TAPASZTALAT (ID,HELY,IDO_KEZDET,IDO_VEG,LEIRAS) values ('9','SZTE',to_date('06-M�J.  -18','RR-MON-DD'),to_date('22-M�J.  -03','RR-MON-DD'),'Kurzusok tart�sa.');
Insert into IVANOV.TAPASZTALAT (ID,HELY,IDO_KEZDET,IDO_VEG,LEIRAS) values ('10','ELTE',to_date('03-M�J.  -08','RR-MON-DD'),to_date('22-M�J.  -03','RR-MON-DD'),'Kurzusok tart�sa.');
Insert into IVANOV.TAPASZTALAT (ID,HELY,IDO_KEZDET,IDO_VEG,LEIRAS) values ('11','Lovascs�rda',to_date('12-M�J.  -11','RR-MON-DD'),to_date('21-NOV.  -17','RR-MON-DD'),'Lovak etet�se.');
Insert into IVANOV.TAPASZTALAT (ID,HELY,IDO_KEZDET,IDO_VEG,LEIRAS) values ('12','Parlament',to_date('19-M�J.  -08','RR-MON-DD'),to_date('20-JAN.  -02','RR-MON-DD'),'�ld�g�l�s.');
Insert into IVANOV.TAPASZTALAT (ID,HELY,IDO_KEZDET,IDO_VEG,LEIRAS) values ('13','Youtube',to_date('17-M�J.  -11','RR-MON-DD'),to_date('20-M�J.  -08','RR-MON-DD'),'Vide�k k�sz�t�se.');
Insert into IVANOV.TAPASZTALAT (ID,HELY,IDO_KEZDET,IDO_VEG,LEIRAS) values ('14','Magyar Nemzeti Bank',to_date('17-OKT.  -04','RR-MON-DD'),to_date('22-FEBR. -10','RR-MON-DD'),'Banki feladatok ell�t�sa.');
Insert into IVANOV.TAPASZTALAT (ID,HELY,IDO_KEZDET,IDO_VEG,LEIRAS) values ('15','�rk�d',to_date('16-M�J.  -10','RR-MON-DD'),to_date('21-NOV.  -03','RR-MON-DD'),'Bombariad�k el�l menek�l�s.');
REM INSERTING into IVANOV.TEST
SET DEFINE OFF;
Insert into IVANOV.TEST (ID,FELHASZNALONEV,JELSZO,STATUS) values ('1','Asd','sdsasdsads','1');
Insert into IVANOV.TEST (ID,FELHASZNALONEV,JELSZO,STATUS) values ('1','Asd','sdsasdsads','1');
Insert into IVANOV.TEST (ID,FELHASZNALONEV,JELSZO,STATUS) values ('1','Asd','sdsasdsads','1');
Insert into IVANOV.TEST (ID,FELHASZNALONEV,JELSZO,STATUS) values ('1','Asd','sdsasdsads','1');
REM INSERTING into IVANOV.VEGZETTSEG
SET DEFINE OFF;
Insert into IVANOV.VEGZETTSEG (ID,HELY,IDO_KEZDET,IDO_VEG,LEIRAS) values ('16','Kr�dy Szakk�z�piskola',to_date('20-M�J.  -07','RR-MON-DD'),to_date('21-M�J.  -07','RR-MON-DD'),'Vend�gl�t� v�gzetts�g');
Insert into IVANOV.VEGZETTSEG (ID,HELY,IDO_KEZDET,IDO_VEG,LEIRAS) values ('17','�MK TK',to_date('20-M�J.  -07','RR-MON-DD'),to_date('21-M�J.  -07','RR-MON-DD'),'�retts�gi bizony�tv�ny');
Insert into IVANOV.VEGZETTSEG (ID,HELY,IDO_KEZDET,IDO_VEG,LEIRAS) values ('18','Tatah�zi �ltal�nos Iskola',to_date('20-M�J.  -07','RR-MON-DD'),to_date('21-M�J.  -07','RR-MON-DD'),'8 �ltal�nos v�gzetts�g.');
Insert into IVANOV.VEGZETTSEG (ID,HELY,IDO_KEZDET,IDO_VEG,LEIRAS) values ('19','Szakk�pz� Centrum',to_date('20-M�J.  -07','RR-MON-DD'),to_date('21-M�J.  -07','RR-MON-DD'),'P�k v�gzetts�g');
Insert into IVANOV.VEGZETTSEG (ID,HELY,IDO_KEZDET,IDO_VEG,LEIRAS) values ('20','Az �let iskol�ja',to_date('20-M�J.  -07','RR-MON-DD'),to_date('21-M�J.  -07','RR-MON-DD'),'Isten volt a tan�r');
Insert into IVANOV.VEGZETTSEG (ID,HELY,IDO_KEZDET,IDO_VEG,LEIRAS) values ('21','SZTE',to_date('09-JAN.  -01','RR-MON-DD'),to_date('14-JAN.  -01','RR-MON-DD'),'Gy�gyszer�sz BSc');
Insert into IVANOV.VEGZETTSEG (ID,HELY,IDO_KEZDET,IDO_VEG,LEIRAS) values ('7','PKE',to_date('14-JAN.  -01','RR-MON-DD'),to_date('16-JAN.  -01','RR-MON-DD'),'Laborbiztons?gi technikusi szakir?ny? tov?bbk?pz?s');
Insert into IVANOV.VEGZETTSEG (ID,HELY,IDO_KEZDET,IDO_VEG,LEIRAS) values ('8','SZTE',to_date('20-M�J.  -15','RR-MON-DD'),to_date('21-M�J.  -21','RR-MON-DD'),'Programtervez� informatikus BSc');
Insert into IVANOV.VEGZETTSEG (ID,HELY,IDO_KEZDET,IDO_VEG,LEIRAS) values ('9','BME',to_date('22-JAN.  -05','RR-MON-DD'),to_date('22-M�J.  -02','RR-MON-DD'),'Villamosm�rn�k MSc');
Insert into IVANOV.VEGZETTSEG (ID,HELY,IDO_KEZDET,IDO_VEG,LEIRAS) values ('10','III. B�la Gimn�zium',to_date('16-M�J.  -07','RR-MON-DD'),to_date('22-M�J.  -07','RR-MON-DD'),'K�ttannyelv� �retts�gi.');
Insert into IVANOV.VEGZETTSEG (ID,HELY,IDO_KEZDET,IDO_VEG,LEIRAS) values ('11','Szent L�szl� �MK',to_date('18-M�J.  -10','RR-MON-DD'),to_date('22-M�J.  -03','RR-MON-DD'),'Gimn�ziumi �retts�gi.');
Insert into IVANOV.VEGZETTSEG (ID,HELY,IDO_KEZDET,IDO_VEG,LEIRAS) values ('12','Szakk�pz� centrum',to_date('22-JAN.  -01','RR-MON-DD'),to_date('22-M�J.  -06','RR-MON-DD'),'Biztons�gi �r v�gzetts�g.');
Insert into IVANOV.VEGZETTSEG (ID,HELY,IDO_KEZDET,IDO_VEG,LEIRAS) values ('13','Szakk�pz� centrum',to_date('22-JAN.  -15','RR-MON-DD'),to_date('22-M�RC. -09','RR-MON-DD'),'Bolti elad� v�gzetts�g.');
Insert into IVANOV.VEGZETTSEG (ID,HELY,IDO_KEZDET,IDO_VEG,LEIRAS) values ('14','Szakk�pz� centrum',to_date('21-AUG.  -13','RR-MON-DD'),to_date('22-FEBR. -09','RR-MON-DD'),'Pinc�r v�gzetts�g.');
Insert into IVANOV.VEGZETTSEG (ID,HELY,IDO_KEZDET,IDO_VEG,LEIRAS) values ('15','M�t�telki �ltal�nos Iskola',to_date('16-J�N.  -16','RR-MON-DD'),to_date('22-M�J.  -07','RR-MON-DD'),'�ltal�nos iskolai v�gzetts�g.');
--------------------------------------------------------
--  DDL for Index ALLASKERESO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "IVANOV"."ALLASKERESO_PK" ON "IVANOV"."ALLASKERESO" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ALLASHIRDETO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "IVANOV"."ALLASHIRDETO_PK" ON "IVANOV"."ALLASHIRDETO" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TABLE1_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "IVANOV"."TABLE1_PK" ON "IVANOV"."ONELETRAJZ" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index TAPASZTALAT_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "IVANOV"."TAPASZTALAT_PK" ON "IVANOV"."TAPASZTALAT" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index HIRDETES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "IVANOV"."HIRDETES_PK" ON "IVANOV"."HIRDETES" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index FELHASZNALO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "IVANOV"."FELHASZNALO_PK" ON "IVANOV"."FELHASZNALO" ("ID", "FELHASZNALONEV") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index VEGZETTSEG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "IVANOV"."VEGZETTSEG_PK" ON "IVANOV"."VEGZETTSEG" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index SOFTSKILL_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "IVANOV"."SOFTSKILL_PK" ON "IVANOV"."SOFTSKILL" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index CEG_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "IVANOV"."CEG_PK" ON "IVANOV"."CEG" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index ADMINMEGJEGYZES_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "IVANOV"."ADMINMEGJEGYZES_PK" ON "IVANOV"."ADMINMEGJEGYZES" ("ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table FELHASZNALO
--------------------------------------------------------

  ALTER TABLE "IVANOV"."FELHASZNALO" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "IVANOV"."FELHASZNALO" MODIFY ("FELHASZNALONEV" NOT NULL ENABLE);
  ALTER TABLE "IVANOV"."FELHASZNALO" MODIFY ("JELSZO" NOT NULL ENABLE);
  ALTER TABLE "IVANOV"."FELHASZNALO" MODIFY ("STATUS" NOT NULL ENABLE);
  ALTER TABLE "IVANOV"."FELHASZNALO" MODIFY ("IS_ADMIN" NOT NULL ENABLE);
  ALTER TABLE "IVANOV"."FELHASZNALO" ADD CONSTRAINT "FELHASZNALO_PK" PRIMARY KEY ("ID", "FELHASZNALONEV")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table HIRDETES
--------------------------------------------------------

  ALTER TABLE "IVANOV"."HIRDETES" ADD CONSTRAINT "HIRDETES_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "IVANOV"."HIRDETES" MODIFY ("STATUS" NOT NULL ENABLE);
  ALTER TABLE "IVANOV"."HIRDETES" MODIFY ("JELENTKEZESIHATARIDO" NOT NULL ENABLE);
  ALTER TABLE "IVANOV"."HIRDETES" MODIFY ("MUNKAVEGZESHELYE" NOT NULL ENABLE);
  ALTER TABLE "IVANOV"."HIRDETES" MODIFY ("MEGNEVEZES" NOT NULL ENABLE);
  ALTER TABLE "IVANOV"."HIRDETES" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "IVANOV"."HIRDETES" MODIFY ("CEGID" NOT NULL ENABLE);
  ALTER TABLE "IVANOV"."HIRDETES" MODIFY ("ALLASHIRDETOID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ADMINMEGJEGYZES
--------------------------------------------------------

  ALTER TABLE "IVANOV"."ADMINMEGJEGYZES" ADD CONSTRAINT "ADMINMEGJEGYZES_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "IVANOV"."ADMINMEGJEGYZES" MODIFY ("TARTALOM" NOT NULL ENABLE);
  ALTER TABLE "IVANOV"."ADMINMEGJEGYZES" MODIFY ("IDOPONT" NOT NULL ENABLE);
  ALTER TABLE "IVANOV"."ADMINMEGJEGYZES" MODIFY ("ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ALLASKERESO
--------------------------------------------------------

  ALTER TABLE "IVANOV"."ALLASKERESO" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "IVANOV"."ALLASKERESO" MODIFY ("VEZETEKNEV" NOT NULL ENABLE);
  ALTER TABLE "IVANOV"."ALLASKERESO" MODIFY ("KERESZTNEV" NOT NULL ENABLE);
  ALTER TABLE "IVANOV"."ALLASKERESO" MODIFY ("SZULIDO" NOT NULL ENABLE);
  ALTER TABLE "IVANOV"."ALLASKERESO" MODIFY ("RADIUS" NOT NULL ENABLE);
  ALTER TABLE "IVANOV"."ALLASKERESO" ADD CONSTRAINT "ALLASKERESO_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "IVANOV"."ALLASKERESO" MODIFY ("TELEFONSZAM" NOT NULL ENABLE);
  ALTER TABLE "IVANOV"."ALLASKERESO" MODIFY ("EMAIL" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ONELETRAJZ
--------------------------------------------------------

  ALTER TABLE "IVANOV"."ONELETRAJZ" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "IVANOV"."ONELETRAJZ" ADD CONSTRAINT "TABLE1_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table CEG
--------------------------------------------------------

  ALTER TABLE "IVANOV"."CEG" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "IVANOV"."CEG" MODIFY ("NEV" NOT NULL ENABLE);
  ALTER TABLE "IVANOV"."CEG" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "IVANOV"."CEG" ADD CONSTRAINT "CEG_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "IVANOV"."CEG" MODIFY ("TELEFONSZAM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ALLASHIRDETO
--------------------------------------------------------

  ALTER TABLE "IVANOV"."ALLASHIRDETO" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "IVANOV"."ALLASHIRDETO" MODIFY ("VEZETEKNEV" NOT NULL ENABLE);
  ALTER TABLE "IVANOV"."ALLASHIRDETO" MODIFY ("KERESZTNEV" NOT NULL ENABLE);
  ALTER TABLE "IVANOV"."ALLASHIRDETO" MODIFY ("EMAIL" NOT NULL ENABLE);
  ALTER TABLE "IVANOV"."ALLASHIRDETO" ADD CONSTRAINT "ALLASHIRDETO_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "IVANOV"."ALLASHIRDETO" MODIFY ("TELEFONSZAM" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table VEGZETTSEG
--------------------------------------------------------

  ALTER TABLE "IVANOV"."VEGZETTSEG" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "IVANOV"."VEGZETTSEG" MODIFY ("HELY" NOT NULL ENABLE);
  ALTER TABLE "IVANOV"."VEGZETTSEG" MODIFY ("IDO_KEZDET" NOT NULL ENABLE);
  ALTER TABLE "IVANOV"."VEGZETTSEG" MODIFY ("LEIRAS" NOT NULL ENABLE);
  ALTER TABLE "IVANOV"."VEGZETTSEG" ADD CONSTRAINT "VEGZETTSEG_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table SOFTSKILL
--------------------------------------------------------

  ALTER TABLE "IVANOV"."SOFTSKILL" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "IVANOV"."SOFTSKILL" MODIFY ("NEV" NOT NULL ENABLE);
  ALTER TABLE "IVANOV"."SOFTSKILL" ADD CONSTRAINT "SOFTSKILL_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table TEST
--------------------------------------------------------

  ALTER TABLE "IVANOV"."TEST" MODIFY ("FELHASZNALONEV" NOT NULL ENABLE);
  ALTER TABLE "IVANOV"."TEST" MODIFY ("JELSZO" NOT NULL ENABLE);
  ALTER TABLE "IVANOV"."TEST" MODIFY ("STATUS" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table TAPASZTALAT
--------------------------------------------------------

  ALTER TABLE "IVANOV"."TAPASZTALAT" MODIFY ("ID" NOT NULL ENABLE);
  ALTER TABLE "IVANOV"."TAPASZTALAT" MODIFY ("HELY" NOT NULL ENABLE);
  ALTER TABLE "IVANOV"."TAPASZTALAT" MODIFY ("IDO_KEZDET" NOT NULL ENABLE);
  ALTER TABLE "IVANOV"."TAPASZTALAT" MODIFY ("LEIRAS" NOT NULL ENABLE);
  ALTER TABLE "IVANOV"."TAPASZTALAT" ADD CONSTRAINT "TAPASZTALAT_PK" PRIMARY KEY ("ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
