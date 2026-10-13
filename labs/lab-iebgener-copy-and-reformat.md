[Top](../README.md) => [Labs](../labs.md) => _Use IEBGENER to copy and reformat data_ 

# Lab: Use IEBGENER to copy and reformat data 

Goal: Get introduced to some basic IEBGENER control statements.

## Step 1: Write the JCL 

Create a new member in your JCL library with the name REFORMAT, based on member CPQSAM. The structure of the jobstream is the same as in the previous lab. This job should be idempotent, like that one.

Add IEBGENER control statements under the SYSIN DD for the IEBGENER step that reformat the input data. 

The text for SYSUT1 is available in this repo under ```data/iebgener-input.txt```.

The first 40 bytes of each input record contain four 10-byte fields. Position 80 contains "X". Have IEBGENER generate output records 80 bytes long that contain the fields in the order: 3, 1, 4, 2. Omit the "X".

## Step 3: Submit the job and check the output.

On successful completion, use ISPF data set utility panels to locate the new data set and view its contents. 