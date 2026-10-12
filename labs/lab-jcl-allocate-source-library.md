[Top](../README.md) => [Labs](../labs.md) => _A job to delete and re-allocate a source library_ 

# Lab: A job to delete and re-allocate a source library 

Goals: 

1. Write a job that idempotently allocates a PDSE with attributes suitable for use as a source library. This will become your COBOL source library for use in the remainder of the course.

## Step 1: Create a new member in your JCL library 

Create a new member in your JCL library. Give it any name you choose. This job will have the same structure as the one you wrote in the previous lab, so you can initialize the new JCL member by copying that JCL into it.  

## Step 2: Modify the DD statements to refer to your COBOL source library 

Code a DD statement that defines a PDSE for COBOL source code. Give the data set an appropriate data set name for its purpose, such as <userid>.LAB.COBOL. Specify record format fixed-blocked, logical record length 80, and a blocksize that is an even multiple of the logical record length.

## Step 4: Submit the JCL and verify the job worked as expected 

Check the spooler data sets under SDSF to see if the job completed successfully. Look for a condition code of zero on each step, a maximum condition code of zero for the job, and deletion and allocation messages in the output.

Navigate to ISPF Option 3.4 and check that the new data set has the attributes you intended it to have. 

## Step 5: Run it again 

The first time you ran the job, the library did not exist. Now that the library exists, run the same JCL again to ensure it has the same effect as it did the first time. 
