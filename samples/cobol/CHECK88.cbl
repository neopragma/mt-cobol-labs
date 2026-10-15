       Identification Division.
       Program-Id. CHECK88.
       Data Division.
       Working-Storage Section.
       01  Test-Field             pic x.
           88  Is-Alpha           value "A".
           88  One-of-Many        value "B", "C", "D".
           88  Valid-State        value "T"
                      when set to false is "F".
       Procedure Division.
           move "A" to Test-Field
           perform Show-Values
           set Is-Alpha to true
           perform Show-Values
           move "D" to Test-Field
           perform Show-Values
           move "E" to Test-Field
           perform Show-Values
           set Valid-State to true
           perform Show-Values
           set Valid-State to false
           perform Show-Values
           goback
           .
       Show-Values.
           display "Test-Field contains " Test-Field
           if Is-Alpha
               display "Is-Alpha is true"
           else
               display "Is-Alpha is not true"
           end-if
           if One-of-Many
               display "One-of-Many is true"
           else
               display "One-of-Many is not true"
           end-if
           if Valid-State
               display "Valid-State is true"
           else
               display "Valid-State is not true"
           end-if
           .
