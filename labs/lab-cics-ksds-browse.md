[Top](../README.md) => [Labs](../labs.md) => _Forward and backward browsing_ 

# Lab: Forward and backward browsing

Goal: Add logic to the program to support forward and backward browsing. 

## Step 1: Add test records 

Add a few test records to the QSAM test file. 

In CICS, use CEMT to close the KSDS.

In TSO, run your IDCAMS job to refresh the KSDS and load it with the new records.

## Step 2: Enhance the BMS mapset

Add a field on Line 23 of your BMS map named MSG with a length of 79. It is not editable. Your program will use this field to display messages.

Line 24 of your BMS map displays a message advising the user they can press F12 to exit. Modify that line so that it also states that F8 will get the next record and F7 will get the previous record. 

Assemble the modified mapset and "new" it in the CICS environment.

## Step 3: Enhance program UnnnPG1

Change the logic so that the program uses STARTBR, READNEXT, and ENDBR rather than reading the file directly by key. On the first pass, the program should STARTBR based on a key of LOW-VALUES so that the first record in the file is displayed initially.

Store the currently-displayed record in the container. 

Add logic to check for F7 and F8 after the RECEIVE MAP command. 

When the user presses F8, use STARTBR, READNEXT, and ENDBR to read the next logical record in the KSDS. When the browse reaches end-of-file, re-display the same record and display the message, "End of file reached" in field MSGO of your map.

When the user presses F7, use STARTBR, READPREV, and ENDBR to read the previous logical record in the KSDS. When the browse reaches the beginning of the file, re-display the first record and display the message, "Top of file reached" in field MSGO of your map.

Under conditions besides "end of file" and "beginning of file," ensure field MSGO is blank. 

## Step 2: Compile and bind the program.

Use your CICS COBOL compile JCL to compile and bind this program. 

## Step 4: "New" the program in the CICS environment

Use the CEMT transaction to tell CICS there is a new version of the executable.

## Step 5: Use CEDF to step through the program

Run your transaction with and without CEDF. 