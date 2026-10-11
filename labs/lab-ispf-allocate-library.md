[Top](../README.md) => [Labs](../labs.md) => _Allocate a JCL library for yourself_ 

# Lab: Allocate a JCL library for yourself 

Goal: Create a source library for Job Control Language (JCL). You will use this library going forward to complete lab exercises.

## Step 1: Allocate the data set

Navigate to Data Set Utilities in ISPF. Use the ISPF panels to allocate a new Partitioned Data Set Extended (PDSE) with the following attributes:

- Data Set Name: <prefix>.LAB.JCL
- Data set organization: Partitioned Organization
- Record format: Fixed, Blocked
- Logical record length: 80 
- Block size: 32000 
- DSN Type: LIBRARY

## Step 2: Verify data set attributes

Navigate to the List Data Set option in ISPF. Search for data sets whose names begin with your TSO prefix. Locate the entry in the list for the data set you allocated in Step 1. View "info" about the data set. Visually compare the attributes shown with the values you intended to specify when you allocated the data set.
