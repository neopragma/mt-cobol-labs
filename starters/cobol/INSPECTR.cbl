       Identification Division.
       Program-Id. INSPECTR.
       Data Division.
       Working-Storage Section.
       01  City-List.
           05  filler pic x(100) value
               "Boston,Chicago;New York City,Los Angeles;Atlanta".

       01  Name-Parts.
           05  Name-Lang           pic x(2).
               88  English         value "EN".
               88  Spanish         value "ES".
           05  English-Name.
               10  First-Name      pic x(30).
               10  Middle-Name     pic x(30).
               10  Last-Name       pic x(30).
               10  filler          pic x(30).
           05  Spanish-Name redefines English-Name.
               10  Primer-Nombre   pic x(30).
               10  Segundo-Nombre  pic x(30).
               10  Primer-Apellido pic x(30).
               10  Segundo-Apellido pic x(30).
       01  Formatted-Name          pic x(120).

       01  Text-with-Embedded-Spaces.
           05  filler pic x(60) value
               "   With   friends like     these  who needs   enemies?".

       Procedure Division.
      *-----------------------------------------------------------------
      * 1. Extract city names from a delimited list.
      *    Add any necessary entries in the Working-Storage Section.
      *    Use the UNSTRING statement to extract the first three city
      *    names from the list. Ignore the remainder of the list.
      *    Use a DISPLAY statement to output the three city names.
      *-----------------------------------------------------------------

      *-----------------------------------------------------------------
      * 2. Assemble name parts into a form suitable for display.
      *    Replace the CONTINUE statement in paragraph Format-Name with
      *    logic to format either an English or Spanish name.
      *    Use STRING to assemble the name fields into a single value
      *    formatted like the following examples:
      *    - "Smith, John T." for an English name
      *    - "Enrique D. Benitez S." for a Spanish name
      *-----------------------------------------------------------------
           move spaces to Name-Parts
           set English to true
           move "Paul" to First-Name
           move "Michael" to Middle-Name
           move "Tanner" to Last-Name
           perform Format-Name
           display "Name is: " Formatted-Name

           move spaces to Name-Parts
           set Spanish to true
           move "Daniel" to Primer-Nombre
           move "Alejandro" to Segundo-Nombre
           move "Guillen" to Primer-Apellido
           move "Hernandez" to Segundo-Apellido
           perform Format-Name
           display "Name is: " Formatted-Name

      *-----------------------------------------------------------------
      * 3. Remove extra spaces from a string, leaving just one space
      *    in between the tokens (words) in the string.
      *    Add code as necessary to the Working-Storage Section and the
      *    Procedure Division to remove extraneous spaces from the
      *    value of Text-with-Embedded-Spaces.
      *    Use DISPLAY to show the resulting value.
      *-----------------------------------------------------------------

           goback
           .
       Format-Name.
           continue
           .
