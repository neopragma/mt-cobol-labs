[Top](../README.md) => [Labs](../labs.md) => _Use IEBGENER to copy inline data to SYSOUT_ 

# Lab: Use IEBGENER to copy inline data to SYSOUT 

Goals:

1. Get introduced to the IEBGENER utility.
2. Code a DD statement with inline data.

## Step 1: Write the JCL 

Create a new member in your JCL library with the name CPINLINE. Write a jobstream with one step that executes IEBGENER to copy inline text to SYSOUT. The SYSUT1 DD will contain the inline text, and the SYSUT2 DD will direct the output to SYSOUT. 

The text for SYSUT1 is available in this repo under ```data/soliloquoy.txt```.

## Step 2: Submit the job and check the output.

On successful completion, SDSF should list a spooler data set named SYSUT2 because you directed SYSUT2 to SYSOUT in your JCL. Check that the data set contains the same text as you coded under SYSUT1 in the JCL.

