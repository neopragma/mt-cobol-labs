[Top](../README.md) => [Labs](../labs.md) => _Your own IEFBR14 utility_ 

# Lab: Your own IEFBR14 utility

Goal: Write, compile, and execute the simplest practical COBOL program.

## Step 1: Write the program 

Write a program that does nothing except exit back to the operating system. Call it DONOTHIN.

The program source goes into a new member in your <userid>.LAB.COBOL library.

Compile and bind the program into your <userid>.LAB.PROGLIB library.

## Step 2: Write the JCL

Create a new member in your JCL library based on your earlier job that uses IEFBR14 to delete and then allocate a QSAM data set. 

The only changes you need to make are:

- Change the last character of the jobname so you will be able to find the output easily in SDSF.
- Replace the program name IEFBR14 with DONOTHIN on each EXEC statement. 
- Add a JOBLIB or STEPLIB DD statement that refers to your program library, so JES2 will be able to find your executable.

## Step 3: Run the job and check the result

Your earlier lab exercise idempotently allocates a fresh version of a QSAM data set. Your DONOTHIN program should have exactly the same effect. IEFBR14 sets the condition code to zero and returns. The DONOTHIN program does the same thing. 