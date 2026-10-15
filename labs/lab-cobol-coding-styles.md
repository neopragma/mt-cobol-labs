[Top](../README.md) => [Labs](../labs.md) => _COBOL coding styles_ 

# Lab: COBOL coding styles 

Goal: Write COBOL code in various styles.

## Step 1: Upload starter program

Upload program [STYLES](../samples/cobol/STYLES.cbl) to your <userid>.LAB.COBOL library. 

## Step 2: Modify STYLES per specifications 

Modify the source code of program STYLES to conform with each of the following specifications and compile it. 

### Style No. 1: 1970s Classic style.

1. All capital letters.
2. Entries in Working-Storage Section prefixed with "WS-".
3. Each Procedure Division statement terminated with a period. 
4. No explicit scope delimiters (e.g., END-IF).
5. No separate period at the end of each paragraph.
6. Paragraph names prefixed with "A100-", "B100-" etc.
7. Exit the program with STOP RUN instead of GOBACK.

### Style No. 2: 1980s Chic style.

1. Division and Section headers in all capital letters.
2. COBOL keywords in all capital letters.
3. Working-Storage entries prefixed with something "meaningful," like "COMP-" for company-related entries and "WORK-" for fields used to format output or hold intermediate values.
3. Variable names in upper camel case with hyphens between words.
4. Use periods in the Procedure Division only where absolutely necessary.
5. Use explicit scope terminators (e.g., END-IF).
6. Paragraph names prefixed with a four-digit number, e.g. "1000-", "2000-".
6. Exit the program with GOBACK.

### Style No. 3: 1990s Wish-This-Was-Java style.

1. Division and Section headers in upper camel case.
2. Working-Storage entries in upper camel case without hyphens.
3. COBOL keywords in all lower case.
4. Use periods in the Procedure Division only where absolutely necessary.
5. Use explicit scope terminators (e.g., END-IF).
6. Paragraph names prefixed with a four-digit number, e.g. "1000-", "2000-".
6. Exit the program with GOBACK.

### Style No. 4: Company Rules.

If you know the standard conventions at your company, adjust the code accordingly.
