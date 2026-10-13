[Top](../README.md) => [Labs](../labs.md) => _Your first COBOL program_ 

# Lab: Your first COBOL program

Goal: Write, compile, and execute COBOL program.

## Step 1: Create libraries if necessary 

If you haven't already done so, allocate PDSEs for the following:

- <userid>.LAB.COBOL - COBOL source library (RECFM=FB, LRECL=80)
- <userid>.LAB.PROGLIB - Program library (RECFM=U)

## Step 2: Write the program 

Using the sample "Hello, world!" program as a guide, code your own "hello" program in COBOL. Have it write something else besides "Hello, world!" so the output will be distinct. 

The program source goes into a new member in your <userid>.LAB.COBOL library.

**Note:** At this point you're working by rote based on an example. We will soon dive into the details of coding each COBOL division. 

## Step 3: 

Using the sample that was demonstrated as a guide, write a jobstream that compiles and binds a batch COBOL program. Use the JCL to compile and bind your new program. 

For COBOL.SYSIN, specify your COBOL source library with the member name you created.

For LKED.SYSLMOD, specify your program library with the same member name as the source.

## Step 4: Run the program and check the output 

Add a new member to your JCL library to contain a jobstream to execute your new program. 

You'll need a JOBLIB statement or STEPLIB statement to tell JES2 to include your program library in the search path, so it can find your executable.

View the output in SDSF to verify the program emitted your "hello" message.