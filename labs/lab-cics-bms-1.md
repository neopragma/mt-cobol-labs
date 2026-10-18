[Top](../README.md) => [Labs](../labs.md) => _BMS 1_ 

# Lab: BMS 1

Goals: 
1. Create a mapset with one map containing several fields.
2. Assemble the mapset.
3. Define the mapset to CICS as a program resource.
4. Use CECI to display the map.

This is a beginning on which you will build in subsequent labs.

## Step 1: Code the BMS mapset 

Code a BMS mapset named UnnnMS1, where nnn corresponds to your userid. E.g., USER279 would name their mapset U279MS1. 

Define a map in the mapset named UnnnMP1.

Define the following fields on the map:

- Label. Line 1, Column 1, length 79. Value: "MY FIRST CICS APP", centered on the line.
- Label. Line 3, Column 1, length 9. Value "TRANSID: ".
- TRNID Field. Line 3, Column 11, length 4. Not editable.
- Label. Line 3, Column 16, length 15. Value "  TASK NUMBER: ".
- TASKN Field. Line 3, Column 32, length 8. Not editable.
- Label. Line 5, Column 1, length 6. Value: "NAME: ".
- NAME Field. Line 5, Column 8, length 16. Editable.
- Label. Line 5, Column 25, length 6. Value "DEPT: ".
- DEPT Field. Line 5, Column 32, length 16. Editable.
- Label. Line 5, Column 49, length 6. Value "ROLE: ".
- ROLE Field. Line 5, Column 56, length 16. Editable.
- Stopper. Line 5, Column 73, length 0.
- Label. Line 24, Column 1, length 79. Value: "Press F12 to exit.".

## Step 2: Assemble the BMS mapset

Use your mapset assembly JCL to assemble this mapset. 

## Step 4: Define the mapset as a program resource in CICS 

Use CEDA to define the mapset as a program resource. If your userid lacks the necessary access rights, the instructor will do it for you while you watch.

## Step 5: Use CECI to display the map

Using the CECI transaction in CICS, run a SEND MAP command to display your map.