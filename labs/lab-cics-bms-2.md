[Top](../README.md) => [Labs](../labs.md) => _BMS 2_ 

# Lab: BMS 2

Goals: 
1. Create a program that SENDs and RECEIVEs the BMS map you developed in the previous lab.
2. Compile and bind the program.
3. Define the program to CICS as a program resource.
4. Use CEDF to step through the program.

## Step 1: Code the program

Name the program UnnnPG1.

The flow of logic is as follows: 

SEND MAP(UnnnMP1) MAPSET(UnnnPS1) . . . 
Loop:
RECEIVE MAP(UnnnMP1) MAPSET(UnnnPS1) . . .
If user pressed F12, RETURN 
MOVE EIBTRNID to TRNIDO, MOVE EIBTASKN to TASKNO
SEND MAP(UnnnMP1) MAPSET(UnnnPS1) . . . 

The program is not doing any real work yet. It is only sending and receiving the map.

## Step 2: Compile and bind the program.

Use your CICS COBOL compile JCL to compile and bind this program. 

## Step 4: Define the program as a program resource in CICS 

Use CEDA to define and install the mapset as a program resource. If your userid lacks the necessary access rights, the instructor will do it for you while you watch.

Define transaction Unnn as a transaction resource and install it. Associate it with program UnnnPG1.

## Step 5: Use CEDF to step through the program

The CEDF transaction will stop before and after each CICS command in your program, as well as when your program starts and just before it ends. It is a (very limited) debugger for CICS applications. 