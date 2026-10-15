       Identification Division.
       Program-Id. NAMES.
       Data Division.
       Working-Storage Section.
       01  Personal-Name.
           05  Name-Language              pic x(02).
               88  Lang-English           value "EN".
               88  Lang-Spanish           value "ES".
           05  English-Name.
               10  filler                 pic x(20).
               10  Given-Name             pic x(40).
               10  Middle-Name            pic x(40).
               10  Family-Name            pic x(60).
               10  Name-Suffix            pic x(10).
               10  filler                 pic x(20).
           05  Spanish-Name redefines English-Name.
               10  Primer-Nombre          pic x(40).
               10  Segundo-Nombre         pic x(40).
               10  Primer-Apellido        pic x(40).
               10  Segundo-Apellido       pic x(60).
               10  Sufijo-del-Nombre      pic x(10).
       Procedure Division.
           set Lang-Spanish to true
           move spaces to Spanish-Name
           move "Jose" to Primer-Nombre
           move "Luis" to Segundo-Nombre
           move "Rodrigues" to Primer-Apellido
           move "Sanchez" to Segundo-Apellido
           display "Name: " Personal-Name

           set Lang-English to true
           move spaces to English-Name
           move "Stanley" to Given-Name
           move "Thomas" to Middle-Name
           move "Kellerman" to Family-Name
           move "Jr." to Name-Suffix
           display "Name: " Personal-Name
           goback
           .
