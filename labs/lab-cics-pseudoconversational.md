[Top](../README.md) => [Labs](../labs.md) => _Pseudoconversational_ 

# Lab: Pseudoconversational

Goals: 
1. Convert the program you developed in the previous lab to be pseudoconversational.
2. Compile and bind the program.
3. Define the program to CICS as a program resource.
4. Use CEDF to step through the program.

## Step 1: Enhance program UnnnPG1.

Modify the program so that it uses a channel and container to support pseudoconversational operation. For now, store a single byte in the container. You will extend that later.

### General flow.

1. GET CONTAINER.
2. If it doesn't exist, this is the first pass in the user conversation. In that case, don't do the RECEIVE MAP step. Skip to the PUT CONTAINER step.
3. RECEIVE MAP.
4. Check EIBAID. If the user pressed F12, do the "end" process described below.
5. SEND MAP.
6. Move any value you like into the container area.
7. PUT CONTAINER.
8. RETURN to CICS specifying the name of the channel. 

### "End" process.

1. SEND ERASE to clear the screen.
2. RETURN to CICS without specifying a channel and container, so the system will "forget" the conversation. 

## Step 2: Compile and bind the program.

Use your CICS COBOL compile JCL to compile and bind this program. 

## Step 4: "New" the program in the CICS environment

Use the CEMT transaction to tell CICS there is a new version of the executable.

## Step 5: Use CEDF to step through the program

Run your transaction with and without CEDF. 