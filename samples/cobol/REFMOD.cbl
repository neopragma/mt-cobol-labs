       Identification Division.
       Program-Id. REFMOD.
       Data Division.
       Working-Storage Section.
       01  Field-1                pic x(30).
       01  Field-2                pic x(30).
       Procedure Division.
           perform Initialize-Fields

      * Lab start

      * 1. Using Reference Modification, write a MOVE statement that
      * places the value "ALPHA" in positions 18-22 in Field-1, with
      * no change to the rest of the field.

           perform Show-Fields

      * 2. Write two MOVE statements that will result in Field-1
      * having the value "A PHALANX" in positions 18-26, with no
      * change to the rest of the field. The first statement will
      * overwrite the "L" in "ALPHA" with a space. The second
      * statement will insert "LANX" after "A PHA".

           perform Show-Fields

      * 3. Write two MOVE statements that will result in Field-2
      * having the value "A PHALANX WON'T STOP A T-34"
      * in positions 1-27, with no change to the rest of the field.
      * The first MOVE statement must pull the value "A PHALANX" from
      * Field-1 and not just move the complete text as a literal.

           perform Show-Fields

      * 4. Look up PERFORM VARYING in the IBM COBOL documentation.
      * Write a PERFORM statement that uses Reference Modification
      * to iterate through Field-2 looking for the value "TOP".
      * When your code finds the value "TOP", display the position
      * within Field-2 where the value was found.
      * Once your code has found the value "TOP", it can stop looking.
      * (PERFORM VARYING has not yet been covered in class.)
      *
      * Hint: Your code will see the following:
      * Iteration 1: "A P"
      * Iteration 2: " PH"
      * Iteration 3: "PHA"
      * Iteration 9: "X W"
      * Iteration 10: " WO"
      * etc.

      * End
           goback
           .
       Initialize-Fields.
           move "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX" to Field-1.
           move "OOOOOOOOOOOOOOOOOOOOOOOOOOOOOO" to Field-1.
           .
       Show-Fields.
           display "                   1         2         3"
           display "          123456789012345678901234567890"
           display "Field-1: " Field-1
           display "Field-2: " Field-2
           display space
