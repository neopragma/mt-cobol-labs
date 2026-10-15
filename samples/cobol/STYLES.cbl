       Identification Division.
       Program-Id. STYLES.
       Data Division.
       Working-Storage Section.
       01  company-info.
           05  company-name               pic x(60).
           05  company-inception.
               10  inception-year         pic x(04).
               10  inception-month        pic x(02).
               10  inception-day          pic x(02).
           05  company-standing           pic x.
               88 in-good-standing        value "1".
       01  show-standing                  pic x(03).
       Procedure Division.
           perform initialization
           move "ACME Corporation" to company-name
           move "19470415" to company-inception
           set in-good-standing to true
           perform display-company-info
           goback
           .
       initialization.
           move spaces to company-info show-standing
           .
       display-company-info.
           display "Company Name: " company-name
           display "Inception: " inception-year "-"
                                 inception-month "-"
                                 inception-day
           if in-good-standing
               move "yes" to show-standing
           else
               move "no" to show-standing
           end-if
           display "In good standing: " show-standing
           .
