//USER270M JOB ,'BMS ASSEMBLY',                                         00010000
//            CLASS=A,MSGCLASS=A,MSGLEVEL=(1,1),TIME=1440,              00011000
//            REGION=0M,NOTIFY=&SYSUID                                  00012000
// SET MAPNAME=ZHL3MSD                                                  00012100
// SET INDEX=DFH610.CICS                                                00012200
//IBMLIB   JCLLIB ORDER=(DFH610.CICS.SDFHPROC)                          00013000
//ASM      EXEC DFHMAPS,                                                00014000
//            DSCTLIB=&SYSUID..LAB.COPYLIB,                             00014100
//            MAPLIB=&INDEX..SDFHLOAD,                                  00014200
//            MAPNAME=&MAPNAME                                          00014300
//COPY.SYSUT1 DD DISP=SHR,DSN=&SYSUID..LAB.BMS(&MAPNAME)                00015000
//ASMMAP.SYSLIB DD DISP=SHR,DSN=DFH610.CICS.SDFHMAC                     00016001
//ASMDSECT.SYSLIB DD DISP=SHR,DSN=DFH610.CICS.SDFHMAC                   00017001
