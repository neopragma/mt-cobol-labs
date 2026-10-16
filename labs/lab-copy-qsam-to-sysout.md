[Top](../README.md) => [Labs](../labs.md) => _Copy sequential data set to SYSOUT_ 

# Lab: Copy sequential data set to SYSOUT

Goal: Process an input sequential data set.

## Step 1: Allocate a sequential data set

Use ISPF panels or JCL, as you prefer, to allocate a sequential data set with fixed-length 80-byte records. Use your ISPF Editor skills to add some records to the dat set. Your program will not do anything with the records except dump them out to SYSOUT, so it doesn't matter what they contain.  

## Step 2: Write the program 

This time, you're writing a program from scratch. You can copy an existing program and strip out everything you don't need. Apply what you've learned to write the appropriate code in the Environment Division, Data Division, and Procedure Division. The program must read the sequential data set you created and copy the records to SYSOUT (using DISPLAY). Try to organize the source code in a logical way.

## Step 3: Test the program 

Until now, "testing" has amounted to running the program and looking at whatever it displayed to SYSOUT. Now it's time to start thinking more seriously about what "testing" means.

In this case, your program must exhibit different behavior in the following cases:

- There are records in the input file and everything happens normally. This is called the Happy Path.
- The input file exists but contains no records.
- The input file is not found.

You may have to modify the contents of the input file and/or the DD statement for the input file in the JCL. Don't modify the source code of your program to force the different behaviors. 