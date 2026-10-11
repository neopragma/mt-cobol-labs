[Top](../README.md) => [Labs](../labs.md) => _Allocate a QSAM data set using ISPF_ 

# Lab: Allocate a QSAM data set using ISPF 

Goal: Create a new sequential dataset, verify its attributes are as you intended, and delete the data set.

## Step 1: Allocate the data set

Navigate to Data Set Utilities in ISPF. Use the ISPF panels to allocate a new QSAM data set with the following attributes:

- Data Set Name: <prefix>.TEST.QSAM
- Data set organization: Physical Sequential
- Record format: Fixed, Blocked
- Logical record length: 80 
- Block size: 32000 

## Step 2: Verify data set attributes

Navigate to the List Data Set option in ISPF. Search for data sets whose names begin with your TSO prefix. Locate the entry in the list for the data set you allocated in Step 1. View "info" about the data set. Visually compare the attributes shown with the values you intended to specify when you allocated the data set.

## Step 3: Delete the data set 

Navigate to Data Set Utilities in ISPF. Use the appropriate ISPF panel to delete the data set you created in Step 1. 