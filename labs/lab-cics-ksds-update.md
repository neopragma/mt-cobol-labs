[Top](../README.md) => [Labs](../labs.md) => _Add, update, and delete records_ 

# Lab: Add, update, and delete records

Goal: Add logic to the program to support updating the KSDS. 

## Step 1: Enhance program UnnnPG1

Except when displaying "end of file" or "beginning of file" messages, display a message on line 23 that states, "Enter action A to add, C to change, or D to delete".

Add logic to add a record, update the current record, or delete the current record. 

For add and update functions, verify that all the fields contain values. If any field is blank, display a message on line 23 advising the user that empty fields aren't acceptable, and don't do the add or update.

For the delete function, display a message on line 23 asking the user to confirm the delete request by repeating the D in the ACT field. Keep track of this sequence of steps in the container.

Change the logic so that the program uses STARTBR, READNEXT, and ENDBR rather than reading the file directly by key. On the first pass, the program should STARTBR based on a key of LOW-VALUES so that the first record in the file is displayed initially.

## Step 2: Compile and bind the program.

Use your CICS COBOL compile JCL to compile and bind this program. 

## Step 3: "New" the program in the CICS environment

Use the CEMT transaction to tell CICS there is a new version of the executable.

## Step 4: Use CEDF to step through the program

Run your transaction with and without CEDF. 