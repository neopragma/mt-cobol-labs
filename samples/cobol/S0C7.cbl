       Identification Division.
       Program-Id. S0C7.
       Data Division.
       Working-Storage Section.
       01  Work-Area.
           05  A-Number         pic s9(5) packed-decimal.
           05  filler           pic x(7).
       Procedure Division.
           move +5 to A-Number
           add 2 to A-Number
           display "Value of A-Number is " A-Number
           move "HI DE HO" to Work-Area
           add 2 to A-Number
           display "Value of A-Number is " A-Number
           goback
           .
