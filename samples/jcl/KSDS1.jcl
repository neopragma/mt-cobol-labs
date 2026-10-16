//USER270K JOB ,'DEFINE KSDS',                                          00010000
//            CLASS=A,MSGCLASS=A,MSGLEVEL=(1,1),TIME=1440,              00011000
//            REGION=0M,NOTIFY=&SYSUID                                  00012000
//KSDS1    EXEC PGM=IDCAMS                                              00013000
//SYSOUT   DD SYSOUT=*                                                  00014000
//SYSPRINT DD SYSOUT=*                                                  00015000
//QSAMIN   DD DSN=USER270.LAB.KSDSLOAD,DISP=SHR                         00015100
//SYSIN    DD *                                                         00016000
 DELETE USER270.LAB.KSDS1 CLUSTER                                       00017000
 IF MAXCC = 8 THEN SET MAXCC = 0                                        00018000
 DEFINE CLUSTER ( -                                                     00019000
   NAME(USER270.LAB.KSDS1) -                                            00020000
   INDEXED -                                                            00030000
   RECORDSIZE(80 80) -                                                  00040000
   KEYS(10 0) -                                                         00050000
   SHAREOPTIONS(1 3) -                                                  00060000
   CYLINDERS(2 2) -                                                     00070000
   VOLUMES(USER01) -                                                    00100000
   ) -                                                                  00110000
 DATA( -                                                                00120000
   NAME(USER270.LAB.KSDS1.DATA) -                                       00130000
   CISZ(4096) -                                                         00140000
   BUFFERSPACE(12288) -                                                 00150000
 ) -                                                                    00160000
 INDEX( -                                                               00170000
   NAME(USER270.LAB.KSDS1.INDEX) -                                      00180000
 )                                                                      00190000
 IF MAXCC = 0 THEN -                                                    00200000
   REPRO INFILE(QSAMIN) OUTDATASET(USER270.LAB.KSDS1)                   00210000
 LISTCAT ENTRIES(USER270.LAB.KSDS1) ALL                                 00220000
 PRINT INDATASET(USER270.LAB.KSDS1) CHAR                                00221000
/*                                                                      00230000
