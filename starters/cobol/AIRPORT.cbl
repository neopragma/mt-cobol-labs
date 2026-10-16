       Identification Division.
       Program-Id. AIRPORT.
      *****************************************************************
      * Starter code for lab exercise on COBOL tables.
      *****************************************************************
       Data Division.
       Working-Storage Section.
       01  Airport-Table-Data.
           05  filler                   pic x(3) value "ATL".
           05  filler                   pic x(4) value "KATL".
           05  filler                   pic x(30) value "Atlanta".
           05  filler                   pic x(70) value
               "Hartsfield-Jackson Atlanta International Airport".
           05  filler                   pic x(3) value "CAN".
           05  filler                   pic x(4) value "ZGGG".
           05  filler                   pic x(30) value "Guangzhou".
           05  filler                   pic x(70) value
               "Guangzhou Baiyun International Airport".
           05  filler                   pic x(3) value "DEN".
           05  filler                   pic x(4) value "KDEN".
           05  filler                   pic x(30) value "Denver".
           05  filler                   pic x(70) value
               "Denver International Airport".
           05  filler                   pic x(3) value "DFW".
           05  filler                   pic x(4) value "KDFW".
           05  filler                   pic x(30) value "Dallas".
           05  filler                   pic x(70) value
               "Dallas-Ft. Worth International Airport".
           05  filler                   pic x(3) value "IST".
           05  filler                   pic x(4) value "LTFM".
           05  filler                   pic x(30) value "Istanbul".
           05  filler                   pic x(70) value
               "Istanbul Airport".
           05  filler                   pic x(3) value "LKA".
           05  filler                   pic x(4) value "WRKL".
           05  filler pic x(30) value "Nusa Tenggara Timur".
           05  filler                   pic x(70) value
               "Gewayentana Airport".
           05  filler                   pic x(3) value "LOS".
           05  filler                   pic x(4) value "DNMM".
           05  filler                   pic x(30) value "Lagos".
           05  filler                   pic x(70) value
               "Murtala Mohammed International Airport".
           05  filler                   pic x(3) value "SYD".
           05  filler                   pic x(4) value "YSSY".
           05  filler                   pic x(30) value "Sydney".
           05  filler                   pic x(70) value
               "Sydney Airport".

       01  Airport-Table redefines Airport-Table-Data.
           05  Airport-Info occurs 8 times
                   ascending Airport-IATA-Code
                   indexed by Airport-Ix.
               10  Airport-IATA-Code    pic x(3).
               10  Airport-ICAO-Code    pic x(4).
               10  Airport-Nearest-City pic x(30).
               10  Airport-Name         pic x(70).

       01  Search-City-Name             pic x(30).
       01  Search-IATA-Code             pic x(3).
       01  Inv-Total-Display            pic $,$$$,$$$,$$$,$$9.99+.

       Procedure Division.

      *-----------------------------------------------------------------
      * 1. Search the airport table for a city name.
      *    If the city is found in the table, display
      *    "<airport name> is near <city name>".
      *    If the city is not found in the table, display
      *    "No airport found near <city name>".
      *
      *    You can use SEARCH or PERFORM VARYING to search the table.
      *    Code your search logic in a separate paragraph and perform
      *    the paragraph once for each of the following city names:
      *    - Guangzhou
      *    - Fargo
      *-----------------------------------------------------------------


      *-----------------------------------------------------------------
      * 2. Do a binary search of the airport table.
      *    The airport table is already in order by IATA code.
      *    If the city is found in the table, display
      *    "<IATA code> is assigned to <airport name>".
      *    If IATA code is not found in the table, display
      *    "No airport found with IATA code <IATA code>".
      *
      *    Use SEARCH ALL to search the table.
      *    Code your search logic in a separate paragraph and perform
      *    the paragraph once for each of the following IATA codes:
      *    - LOS
      *    - XYZ
      *-----------------------------------------------------------------


           goback
           .
