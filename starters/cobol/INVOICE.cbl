       Identification Division.
       Program-Id. INVOICE.
      *****************************************************************
      * Starter code for lab exercise on COBOL tables.
      *****************************************************************
       Data Division.
       Working-Storage Section.
       01  Inv-Line-Count               pic 9(2).
       01  Invoice.
           05  Inv-Total                pic s9(13)v99.
           05  Inv-Line occurs 1 to 10 times
                        depending on Inv-Line-Count
                        indexed by Line-Ix.
               10  Inv-Line-Total       pic s9(11)v99.
               10  Inv-Line-Item occurs 10 times
                                 indexed by Item-Ix.
                   15  Inv-Product      pic x(8).
                   15  Inv-Unit-Price   pic s9(5)v99.
                   15  Inv-Quantity     pic 9(5).
                   15  Inv-Ext-Price    pic s9(7)v99.
                   15  Inv-Sales-Tax    pic sv9(5).

       Procedure Division.
      * Table initialization - don't change this.
           move 2 to Inv-Line-Count
           move "ABCDEFGH" to Inv-Product    ( 1 1 )
           move +15.47     to Inv-Unit-Price ( 1 1 )
           move 2          to Inv-Quantity   ( 1 1 )
           move +0.025     to Inv-Sales-Tax  ( 1 1 )
           move "BCDEFGHI" to Inv-Product    ( 1 2 )
           move +66.12     to Inv-Unit-Price ( 1 2 )
           move 1          to Inv-Quantity   ( 1 2 )
           move +0.025     to Inv-Sales-Tax  ( 1 2 )
           move "CDEFGHIJ" to Inv-Product    ( 1 3 )
           move +2.88      to Inv-Unit-Price ( 1 3 )
           move 6          to Inv-Quantity   ( 1 3 )
           move +0.000     to Inv-Sales-Tax  ( 1 3 )
           move "DEFGHIJK" to Inv-Product    ( 1 4 )
           move +29.99     to Inv-Unit-Price ( 1 4 )
           move 3          to Inv-Quantity   ( 1 4 )
           move +0.025     to Inv-Sales-Tax  ( 1 4 )
           move spaces     to Inv-Product    ( 1 5 )
           move "EFGHIJKL" to Inv-Product    ( 2 1 )
           move +3.50      to Inv-Unit-Price ( 2 1 )
           move 9          to Inv-Quantity   ( 2 1 )
           move +0.025     to Inv-Sales-Tax  ( 2 1 )
           move "FGHIJKLM" to Inv-Product    ( 2 2 )
           move +2.44      to Inv-Unit-Price ( 2 2 )
           move 8          to Inv-Quantity   ( 2 2 )
           move +0.025     to Inv-Sales-Tax  ( 2 2 )
           move spaces     to Inv-Product    ( 2 3 )

      *-----------------------------------------------------------------
      * Iterate over the table to compute the invoice total.
      *
      * For each line item, multiply unit price by quantity and apply
      * the salex tax.
      *
      * Sum the line item amounts and sum the line totals to get the
      * invoice total.
      *-----------------------------------------------------------------

           goback
           .
