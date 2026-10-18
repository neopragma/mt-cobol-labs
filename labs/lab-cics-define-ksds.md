[Top](../README.md) => [Labs](../labs.md) => _Define and load a KSDS_ 

# Lab: Define and load a KSDS

Goal: Prepare a VSAM KSDS for use in your CICS labs.

## Step 1: Prepare test data

Allocate a QSAM data set with the following attributes:

- Record format: FB
- Logical record length: 40 
- Block size: 20000 

## Step 2: Create test data 

Add records to the QSAM test data set (one record is enough for now).

Record layout:

01  Lab-File.
    05  Lab-Key      pic x(4).
    05  Lab-Name     pic x(12).
    05  Lab-Dept     pic x(12).
    05  Lab-Role     pic x(12).

## Step 3: Write JCL to define and load a KSDS.

Write an idempotent IDCAMS job to:

- DELETE VSAM cluster <userid>.LAB.CICSFILE.
- DEFINE VSAM cluster <userid>.LAB.CICSFILE.
- RECORDSIZE(40 40), KEY(4 0)  
- REPRO the QSAM test data file into the KSDS.

Run the job.

## Step 4: Define the file resource to CICS

Use CEDA to define and install the new KSDS as a file resource. Name it UnnnKS1.

Use CEMT to open and enable the KSDS.
