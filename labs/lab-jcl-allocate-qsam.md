[Top](../README.md) => [Labs](../labs.md) => _A job to delete and re-allocate a QSAM data set_ 

# Lab: A job to delete and re-allocate a QSAM data set 

Goals: 

1. Write a job with two steps.
2. Use DD statements with IEFBR14 to manipulate data sets.
3. Set up an idempotent job.

## Step 1: Create a new member in your JCL library 

Create a new member in your JCL library. Give it any name you choose. To initialize this member, you can copy the member containing your minimal IEFBR14 job using the ISPF Editor COPY command.  

## Step 2: Code the first job step - delete the existing data set, if it exists

Code a DD statement for the data set that specifies the appropriate subparameters of the DISP parameter to cause JES2 to delete the data set if it exists, and to proceed without reporting an error if it doesn't exist. 

## Step 3: Code the second job step - allocate the data set

Code a DD statement for the data set that specifies the appropriate subparameters of the DISP parameter to cause JES2 to treat the data set as new and to catalog it if the step completes successfully; delete the data set if the step fails.

## Step 4: Verify the job worked as expected 

Check the spooler data sets under SDSF to see if the job completed successfully. Look for a condition code of zero on each step, a maximum condition code of zero for the job, and deletion and allocation messages in the output.

Navigate to ISPF Option 3.4 and check that the new data set has the attributes you intended it to have. 

## Step 5: Run it again 

The first time you ran the job, the data set did not exist. Now that the library exists, run the same JCL again to ensure it has the same effect as it did the first time. 