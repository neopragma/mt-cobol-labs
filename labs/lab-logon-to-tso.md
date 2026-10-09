[Top](../README.md) => [Labs](../labs.md) => _Log on and off TSO_ 

# Lab: Log on and off TSO

Goal: Log on and off the z/OS system.

## Step 1: Log on to TSO

Access the terminal emulator on your VM and connect to the z/OS system. On the initial screen, enter "tso \<userid\>" and press Enter. 

The system will prompt you for a password. Enter the initial password that was provided to you and press Enter. 

On your first attempt, the system will prompt you to change your password. Enter a new password in the password field and press Enter. 

The system will prompt you to confirm the new password. The display looks almost identical to the initial password entry screen, and it can seem as if the system is just repeating the original prompt. Enter the same new password you entered before and press Enter. 

At that point, the system should start the Interactive System Productivity Facility (ISPF) and present you with the ISPF Primary Option Menu. 

## Step 2: Log off TSO and disconnect from z/OS 

On the ISPF Primary Option Menu, enter "X" in the Command field and press Enter. This will end your ISPF session and land you at the TSO Ready prompt. 

At the TSO Ready prompt, type the word "logoff" and press Enter. That will end your TSO session and take you back to the initial display. 

To disconnect from z/OS from there, type "logoff" again and press Enter.
