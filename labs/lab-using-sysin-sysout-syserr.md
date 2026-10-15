[Top](../README.md) => [Labs](../labs.md) => _Using SYSIN, SYSOUT, SYSERR_ 

# Lab: Using SYSIN, SYSOUT, SYSERR 

Goal: Write COBOL code that reads from SYSIN and writes to SYSOUT and SYSERR.

# Step 1: Write the program 

Code a COBOL program in your <userid>.LAB.COBOL library named STREAMS. Have it perform the following actions:

Use the COBOL ACCEPT verb to read records from ddname SYSIN.

Inspect each record to see whether the first five bytes contain the text, "ERROR." If so, use the DISPLAY verb to output the record to SYSERR. Otherwise, output the record to SYSOUT.

## Step 2: Compile the program

Use your usual batch COBOL compile job to compile program STREAMS. Place the executable in your <userid>.LAB.PROGLIB library.

## Step 3: Write the JCL 

Write a jobstream in your <userid>.LAB.JCL library named STREAMS. The job will have one step and will execute program STREAMS from your <userid>.LAB.PROGLIB.

Code an inline data set for ddname SYSIN with the following records (omit the quotation marks):

"     This is not an error."
"ERRORThis is an error message."
"ERRORThis is another error message."
"     This one is perfectly fine." 
"     Errors? I don't see no errors."
"ERRORYet another error message."

On the DD statements for SYSOUT and SYSERR, direct the output to SYSOUT.

## Step 4: Run the job and check the results 

After successful execution, you should find spooler data sets in the SDSF output for SYSOUT and SYSERR. SYSOUT should contain all the input lines that did not have anything in positions 1-5. SYSERR should contain all the input lines that had the text "ERROR" in positions 1-5.
     