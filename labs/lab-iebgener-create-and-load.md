[Top](../README.md) => [Labs](../labs.md) => _Use IEBGENER to create and load a QSAM data set_ 

# Lab: Use IEBGENER to create and load a QSAM data set 

Goal: Allocate a new QSAM dataset and copy data into it in a single step.

## Step 1: Write the JCL 

Create a new member in your JCL library with the name CPQSAM, based on member CPINLINE. Modify the SYSUT2 DD statement so that it allocates and catalogs a new QSAM data set, rather than directing the output to SYSOUT.

The text for SYSUT1 is available in this repo under ```data/soliloquoy.txt```.

## Step 2: Make the job idempotent 

Add a job step before the IEBGENER step that deletes the new dataset if it exists, and completes normally if it doesn't exist. You learned how to do this when working with the IEFBR14 utility in previous labs.

The resulting jobstream should have an IEFBR14 step followed by an IEBGENER step.

## Step 3: Submit the job and check the output.

On successful completion, SDSF will not list a spooler data set named SYSUT2 because your SYSUT2 DD statement created a new catalogued data set. Use ISPF data set utility panels to locate the new data set and view its contents. 

