       Identification Division.
       Program-Id. CALCULO.
       Data Division.
       Working-Storage Section.
       01  Sales-Tax-Rate           pic sv9(3)
                                    packed-decimal
                                    value +.045.
       01  Invoice-Fields.
           05  Line-1.
               10  Sale-Amount-1    pic s9(4)v9(2) packed-decimal.
               10  Units-Sold-1     pic 9(3) packed-decimal.
           05  Line-2.
               10  Sale-Amount-2    pic s9(4)v9(2) packed-decimal.
               10  Units-Sold-2     pic 9(3) packed-decimal.
           05  Final-Invoice-Amount pic s9(5)v9(2) packed-decimal.
       01  Display-Fields.
           05  Final-Invoice-Amount-Disp pic $$,$$9.99.

       Procedure Division.
           move 138.96 to Sale-Amount-1
           move 3 to Units-Sold-1
           move 305.68 to Sale-Amount-2
           move 7 to Units-Sold-2

      *-----------------------------------------------------------------
      * Fill in the calculations necessary to compute the final
      * invoice amount.
      *-----------------------------------------------------------------

      * Your code goes here...

      * END
           display "Final Invoice Amount: " Final-Invoice-Amount-Disp

           goback
           .
