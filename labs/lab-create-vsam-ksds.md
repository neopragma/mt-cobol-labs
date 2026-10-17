[Top](../README.md) => [Labs](../labs.md) => _Create VSAM KSDS_ 

# Lab: Create VSAM KSDS

Goals:
1. Given a problem description, design an appropriate record layout for a master file to support the solution.
2. Based on the record layout you designed, define a VSAM KSDS using IDCAMS.
3. Based on the record layout you designed, code a COBOL copybook containing Data Division entries for the layout.
4. Based on the problem description and supporting documentation, design, write, and test a batch COBOL program to satisfy the requirements.

## Step 1: Understand the problem description 

A sports organization that promotes and operates tournaments wants to implement a computerized player rating system so that they can create fair draws for the competitors in their events. The nature of the sport is one-on-one competition (such as handball, wrestling, or rock-paper-scissors). 

The organizers have decided to use Arpad Elo's chess rating system as the basis for their own. They have also discovered that the USA Table Tennis association has implemented a rating system based on Elo's, but simpler. 

The two rating systems are described in the following documents:

- [Elo Rating System](../documents/Elo-Rating-System.pdf)
- [USATT Ratings Calculation](../documents/USATT-Ratings-Calculation.pdf)

The scope of your project is to implement support for adjusting the ratings of two players who have completed a match, when both players already have a rating in the system. Functionality to handle unrated or underrated players is deferred for a future release of the product. That means you have to update the master file, but you don't have to handle adding new records or deleting records.

The match results must be processed in chronological order.

The All-Knowing, All-Seeing System Architects have handed down to you, inscribed upon two massive stone tablets, the following high-level technical specifications:

- The master file is to be a VSAM KSDS.
- A batch job will update the master file following each tournament.
- A QSAM input data set will contain the results of the matches from the tournament.
- A QSAM output data set will record any input records that were invalid, and the reason(s) they were deemed invalid.

Your team's Technical Lead has also shared a few ideas regarding the solution:

- Use meaningful names for programs, files, variables, paragraphs, etc. Don't just say "input-file", "master-file", "extra-field", "paragraph-17", or (heaven forbid) "i" or "j".
- Structure your source code in a logical way that other people can follow.
- Make sure the thing works before we hand it off to the Testing Department. We don't want to be embarrassed again, like last time. 

The details, and the ever-present and whimsical devil within them, are left to you. 

The remaining steps are in the nature of gentle suggestions. It's up to you to solve the problem. Do it your way (but still satisfy the requirements).

## Step 2: Design the record layout for the master file

Determine what kinds of data values are relevant to the problem and solution. Design a record layout and a primary key for the KSDS that will support the solution without unnecessary fluff. 

Design a record layout for the tournament results data set that provides all the information necessary to adjust the competitor's ratings. 

Design a record layout for the error file that includes whatever information you think will help people understand what's wrong with the data. 

## Step 3: Create COBOL copybooks for the record layouts

Create a COBOL copybook containing Data Division entries for each of the three data sets. 

## Step 4: Create the initial records for the master file 

Set up an idempotent IDCAMS job that refreshes (that is, deletes and then defines) the master file and loads it with an initial set of records for several competitors. You can re-run this job whenever you need to start over, for testing or demonstration purposes. 

## Step 5: Create the tournament results file 

Create the data for the tournament results file and write a job that idempotently deletes, allocates, and loads the file. 

## Step 6: Write the ratings adjustment program 

Write a batch COBOL program that reads the tournament results file, applies the match outcomes to the players' ratings, and updates the master file accordingly. Write any invalid input records to a sequential data set.

## Step 7: Test the solution 

Write down a plan for checking the behavior of the solution under various operational conditions and with various data set issues. Then develop a way to run the test plan as many times as you might need.

## Step 8: Prepare for your demo

Be prepared to explain the rationale for the design choices you made.
