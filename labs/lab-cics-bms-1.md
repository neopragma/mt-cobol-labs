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

| Item    | Name  | Line | Column | Length | Value             | Editable |
| ------- | ----- | ---- | ------ | ------ | ----------------- | -------- |
| label   |       | 1    | 33     | 11     | My Fine App       | No       |
| label   |       | 3    | 1      | 5      | TRNID             | No       |
| field   | TRNID | 3    | 8      | 4      |                   | No       |
| label   |       | 3    | 13     | 5      | TASKN             | No       |
| field   | TASKN | 3    | 20     | 8      |                   | No       |         
| label   |       | 5    | 1      | 4      | ACT:              | No       | 
| field   | ACT   | 5    | 6      | 1      | _                 | Yes      |
| label   |       | 5    | 8      | 4      | KEY:              | No       |
| field   | KEY   | 5    | 13     | 4      | ____              | Yes      |
| label   |       | 5    | 18     | 5      | NAME:             | No       |
| field   | NAME  | 5    | 24     | 12     | ____________      | Yes      |
| label   |       | 5    | 37     | 5      | DEPT:             | No       |
| field   | DEPT  | 5    | 43     | 12     | ____________      | Yes      |
| label   |       | 5    | 56     | 5      | ROLE:             | No       |
| field   | ROLE  | 5    | 62     | 12     | ____________      | Yes      |
| stopper |       | 5    | 74     | 0      |                   | No       |
| label   |       | 24   | 1      | 79     | Press F12 to exit | No       |  



## Step 2: Assemble the BMS mapset

Use your mapset assembly JCL to assemble this mapset. 

## Step 4: Define the mapset as a program resource in CICS 

Use CEDA to define the mapset as a program resource. If your userid lacks the necessary access rights, the instructor will do it for you while you watch.

## Step 5: Use CECI to display the map

Using the CECI transaction in CICS, run a SEND MAP command to display your map.