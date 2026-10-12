[Top](../README.md) => [Labs](../labs.md) => _A simple batch job (that won't run)_ 

# Lab: A simple batch job (that won't run) 

Goals: 

1. Create a new JCL member using the ISPF Editor.
2. Code a JOB statement that complies with organization standards.
3. Learn how to submit JCL from the ISPF Editor.
4. Find the job output using SDSF.
5. Look up error messages in the IBM documentation.

## Step 1: Create a new member in your JCL library 

On the ISPF Edit panel, specify the data set name of your JCL library and the name of a nonexistent member, "JOB". The Editor will open with blank lines available for you to enter text. 

**Note:** There is a reason for you to call the new member "JOB". It will become apparent in the next lab.

## Step 2: Code a JOB statement 

Code a JOB statement as the first line(s) in the new JCL member. Remember that the jobname has to consist of your TSO prefix plus one letter or number. Set the value of the NOTIFY parameter to &SYSUID so you will be able to find the job output after the job runs.

## Step 3: Submit the job from the ISPF Editor

Use the Editor command SUBMIT to submit the job to JES2. The SUBMIT command can be abbreviated SUB. If you set the value of NOTIFY correctly, you will see a notification from TSO that the job was submitted. It will give you the jobid for the job.

## Step 4: Locate the job output in SDSF 

Follow the ISPF menus to SDSF. Different installations may organize the ISPF menus differently, so you may have to look for SDSF in the menu hierarchy. 

Depending on how the installation has defined its defaults, your job output may be in the Held queue or the Output queue. From the SDSF main panel, navigate to the Held queue by typing H and pressing Enter. For the Output queue, type O and press Enter.

Your view of the Held or Output queue contents will depend on what jobs your userid is authorized to see. You might see only your job, or you might see a long list of jobs and you'll have to scroll through it to find your job.

If you don't see your job, it could be because:

1. It's in the other output queue (either Held or Output).
2. Your jobname was incorrect and the system doesn't associate it with your userid.
3. Your NOTIFY parameter is missing or doesn't specify the right value.
4. You submitted the job but JES2 hasn't gotten around to starting it yet. Maybe the system is busy at the moment.
5. The job started but became "stuck" or "hung" for some reason.
6. You specified a CLASS that doesn't start automatically. The job is still in the Input queue. Check this by going to the main SDSF panel, typing I, and pressing Enter.
7. JES2 became confused because your JOB statement is missing a comma, or a continuation line begins too far to the right, or a continuation line doesn't have // as the first two characters.

Move the cursor to the line where your job is shown, press S (for "select") and press Enter. That will open all the spooler data sets for the job as a single concatenation.

JCL that contains only a JOB card will not run. The point of this exercise is to see what the spooler output looks like in that case, and to begin learning how to find error messages in the output and look them up in the documentation. 

You can find system messages in the nine-volume set of IBM documents that begins here:

[z/OS MVS System Messages and Codes, Vol. 1](https://www.ibm.com/docs/en/zos/3.2.0?topic=zm-zos-mvs-system-messages-vol-1-aba-aom)





