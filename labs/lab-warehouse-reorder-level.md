[Top](../README.md) => [Labs](../labs.md) => _Warehouse reorder level (QSAM input-output)_ 

# Lab: Warehouse reorder level (QSAM input-output)

Goal: Read sequential data set, apply logic, write sequential data set out.

## Step 1: Review starter copybooks

Look at the two starter copybooks for this exercise, [WARES](../starters/copybooks/WARES.cbl) and [WARES2](../starters/copybooks/WARES2.cbl). WARES is a plain copybook and WARES2 is designed to support COPY REPLACING. Choose which option you would prefer to use in your solution.

## Step 2: Write the program 

Write a batch COBOL program that reads a sequential data set and writes a sequential data set. For each input record, apply the inventory change and write the modified record to the output data set. When the inventory level of an item reaches the reorder point or below, display a message on SYSOUT to that effect. 

There is no calculation to do. The Item-Quantity field in the input record is meant to be the new inventory level for the item.

## Step 3: Test the program 

There are more situations to test in this program than in the previous one. 

- There are records in the input file and everything works as expected. Desired outcome is a correct output file and an informational message on SYSOUT for each item that needs to be reordered.
- The input file exists but contains no records. Desired result is COND CODE 4 and an informational message on SYSOUT.
- The input file is not found. Desired result is COND CODE 12 and an informational message on SYSOUT.
- The input file exists but one or more records contain bad data that prevents normal processing. Desired result is COND CODE 8 and an informational message on SYSOUT, and processing continues after the bad record.
- The output file can't be opened. Desired result is COND CODE 12 and an informational message on SYSOUT.
- Any errors on READ and WRITE operations (except end-of-file) should result in COND CODE 12 and an informational message on SYSOUT.
