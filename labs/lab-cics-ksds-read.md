[Top](../README.md) => [Labs](../labs.md) => _Read and display a record_ 

# Lab: Read and display a record

Goal: Add logic to the program to read a single record from the KSDS and display it on the output map. 

## Step 1: Enhance program UnnnPG1.

Add logic to the program to read a record from the VSAM KSDS and display the fields on the map. 

Add code to store the record in the container in between pseudoconversational invocations. 

Add logic to check the fields after the RECEIVE MAP command and to copy any modified values to the container, and avoid overwriting the fields in the container when a field was not changed by the user. 

Add a test for the MAPFAIL condition after the RECEIVE MAP command. This occurs when the user presses Enter without changing any fields. Treat is as normal, not as an error.

## Step 2: Compile and bind the program.

Use your CICS COBOL compile JCL to compile and bind this program. 

## Step 4: "New" the program in the CICS environment

Use the CEMT transaction to tell CICS there is a new version of the executable.

## Step 5: Use CEDF to step through the program

Run your transaction with and without CEDF. 