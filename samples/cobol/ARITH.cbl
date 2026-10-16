       Identification Division.
       Program-Id. ARITH.
       Data Division.
       Working-Storage Section.
       01  Numerical-Items-Usage-Display.
      *-----------------------------------------------------------------
      * Usage display numerical items can be used in calculations or
      * displayed on screens and reports. The compiler must generate
      * object code to convert the items into Packed Decimal format
      * before the calculation, and convert the result back to display
      * format after the calculation.
      *-----------------------------------------------------------------

      *-----------------------------------------------------------------
      * In memory: 1234567 looks like x'F1F2F3F4F5F6F7'
      *-----------------------------------------------------------------
           05  Unsigned-Number-Verbose    picture is 9(7)
                                          usage is display.
           05  Unsigned-Number-Concise    pic 9(7).

      *-----------------------------------------------------------------
      * In memory: +1234567 looks like x'F1F2F3F4F5F6C7' <= overpunch
      *            -1234567 looks like x'F1F2F3F4F5F6D7' <= overpunch
      *             1234567 looks like x'F1F2F3F4F5F6F7'
      *-----------------------------------------------------------------
           05  Signed-Number-Verbose      picture is s9(7)
                                          usage is display.
           05  Signed-Number-Concise      pic s9(7).

      *-----------------------------------------------------------------
      * To accommodate data received from systems that use different
      * numerical formats, we can specify that the sign is separate
      * from the field and whether the sign occupies the byte before
      * or the byte after the value. An external sign occupies one byte.
      *-----------------------------------------------------------------

      *-----------------------------------------------------------------
      * In memory: +1234567 looks like x'4EF1F2F3F4F5F6F7' (8 bytes)
      *            -1234567 looks like x'60F1F2F3F4F5F6F7'
      *             1234567 looks like x'40F1F2F3F4F5F6F7'
      *-----------------------------------------------------------------
           05  Leading-Sign-Verbose       picture is s9(7)
                                          usage is display
                                          sign is leading separate.
           05  Leading-Sign-Concise       picture is s9(7)
                                          sign leading separate.

      *-----------------------------------------------------------------
      * In memory: +1234567 looks like x'F1F2F3F4F5F6F74E' (8 bytes)
      *            -1234567 looks like x'F1F2F3F4F5F6F760'
      *             1234567 looks like x'F1F2F3F4F5F6F740'
      *-----------------------------------------------------------------
           05  Trailing-Sign-Verbose      picture is s9(7)
                                          usage is display
                                          sign is trailing separate.
           05  Trailing-Sign-Concise      picture is s9(7)
                                          sign trailing separate.

       01  Implied-Decimal-Point.
      *-----------------------------------------------------------------
      * The implied decimal point is a hint to the compiler. It uses the
      * hint to determine how to generate object code to perform
      * calculations correctly. The implied decimal point does not
      * occupy any space in virtual storage.
      *-----------------------------------------------------------------

      *-----------------------------------------------------------------
      * In memory:  12345.987 looks like x'F1F2F3F4F5F9F8F7'
      *-----------------------------------------------------------------
           05  Unsigned-with-Decimal-Verbose picture is 9(5)v9(3)
                                          usage is display.
           05  Unsigned-with-Decimal-Concise pic 9(5)v9(3).

      *-----------------------------------------------------------------
      * In memory: +12345.987 looks like x'F1F2F3F4F5F9F8C7' <= overpun
      *            -12345.987 looks like x'F1F2F3F4F5F9F8D7' <= overpun
      *             12345.987 looks like x'F1F2F3F4F5F9F8F7'
      *-----------------------------------------------------------------
           05  Signed-with-Decimal-Verbose picture is s9(5)v9(3)
                                          usage is display.
           05  Signed-with-Decimal-Concise pic s9(5)v9(3).

       01  Packed-Decimal-Values.
      *-----------------------------------------------------------------
      * Packed Decimal is an IBM S/360 - z/OS data format used by
      * decimal arithmetic instructions in the instruction set.
      * It consists of decimal digits "packed" into nybbles (half-bytes)
      * with the sign indicated in the last byte.
      * Packed Decimal entries can specify an implied decimal point.
      *-----------------------------------------------------------------

      *-----------------------------------------------------------------
      * In memory:  12345.987 looks like x'1234567F' (4 bytes)
      *-----------------------------------------------------------------
           05  Unsigned-Packed-Verbose      picture is s9(5)v9(3)
                                            usage is packed-decimal.
           05  Unsigned-Packed-Concise      pic s9(5)v9(3)
                                            packed-decimal.
           05  Unsigned-Packed-Old-Verbose  picture is s9(5)v9(3)
                                            usage is computational-3.
           05  Unsigned-Packed-Old-Concise  picture is s9(5)v9(3)
                                            comp-3.

      *-----------------------------------------------------------------
      * In memory:  12345.987 looks like x'1234567F' (4 bytes)
      *            -12345.987 looks like x'1234567D' (4 bytes)
      *             12345.987 looks like x'1234567F' (4 bytes)
      *-----------------------------------------------------------------
           05  Signed-Packed-Verbose        picture is s9(5)v9(3)
                                            usage is packed-decimal.
           05  Signed-Packed-Concise        pic s9(5)v9(3)
                                            packed-decimal.
           05  Signed-Packed-Old-Verbose    picture is s9(5)v9(3)
                                            usage is computational-3.
           05  Signed-Packed-Old-Concise    picture is s9(5)v9(3)
                                            comp-3.
       01  Binary-Values.
      *-----------------------------------------------------------------
      * In business applications, binary values are used for table
      * indices and pointers (addresses).
      *
      * Usage can be:
      *     BINARY
      *     COMPUTATIONAL
      *     COMP
      *     COMPUTATIONAL-4
      *     COMP-4
      *
      * Those specifications all have the same meaning.
      *
      * Values can be signed or unsigned and fields can have an implied
      * decimal point.
      *
      * The picture clause determines the size of the item in memory.
      *-----------------------------------------------------------------
           05  Unsigned-Binary-1      pic 9(1) binary.  *> 2 bytes
           05  Unsigned-Binary-4      pic 9(4) binary.  *> 2 bytes
           05  Unsigned-Binary-5      pic 9(5) binary.  *> 4 bytes
           05  Unsigned-Binary-9      pic 9(9) binary.  *> 4 bytes
           05  Unsigned-Binary-10     pic 9(10) binary. *> 8 bytes
           05  Unsigned-Binary-18     pic 9(10) binary. *> 8 bytes
           05  Signed-Binary-1        pic s9(1) binary.  *> 2 bytes
           05  Signed-Binary-4        pic s9(4) binary.  *> 2 bytes
           05  Signed-Binary-5        pic s9(5) binary.  *> 4 bytes
           05  Signed-Binary-9        pic s9(9) binary.  *> 4 bytes
           05  Signed-Binary-10       pic s9(10) binary. *> 8 bytes
           05  Signed-Binary-18       pic s9(10) binary. *> 8 bytes

       01  Floating-Point-Values.
      *-----------------------------------------------------------------
      * z/OS and COBOL support floating point numerical formats, but
      * these are not used in business applications.
      *
      * COMPUTATIONAL-1 or COMP-1 is single precision floating point.
      * COMPUTATIONAL-2 or COMP-2 is double precision floating point.
      *
      * Note: No picture clause is specified for COMP-1 or COMP-2.
      *-----------------------------------------------------------------
           05  Signed-Single-Precision   comp-1. *> 4 bytes
           05  Signed-Double-Precision   comp-2. *> 8 bytes

       01  Numeric-Edited-Formats.
      *-----------------------------------------------------------------
      * Numeric edited formats are used for numerical values that are
      * displayed for humans to read, on reports and screens and in
      * DISPLAY statements. The compiler generates object code that
      * follows the specifications given in an "edit mask" in the
      * picture clause to handle display-related details like leading
      * zeroes, digit separators, decimal points, and currency signs.
      * All these are "usage is display".
      *-----------------------------------------------------------------
           05  Suppressed-Zeroes-No-Decimal pic z,zz9.    *> 435
           05  Suppressed-Leading-Zeroes   pic z,zz9.99.  *> 435.15
           05  Suppressed-Zeroes-with-Sign pic -z,zz9.99. *> -435.15
           05  Fixed-Currency-Sign         pic $z,zz9.99. *> $  435.15
           05  Floating-Currency-Sign      pic $$,$$9.99. *>   $435.15
           05  Floating-Currency-with-Sign pic -$$,$$9.99. *> -$435.15
           05  Floating-Currency-Trailing  pic $$,$$9.99-. *>  $435.15-

       01  Work-Fields.
           05  Unsigned-Remainder          pic 9(3).
       Procedure Division.
      *-----------------------------------------------------------------
      * English-like arithmetic statements.
      *-----------------------------------------------------------------

      * Example 1
           move +1549 to Signed-Packed-Concise
           add 2.75 to Signed-Packed-Concise
           move Signed-Packed-Concise to Suppressed-Zeroes-with-Sign
           display "Result of example 1: " Suppressed-Zeroes-with-Sign

      * Example 2
           move -13.5 to Signed-Packed-Concise
           add 500 to Signed-Packed-Concise
               giving Suppressed-Zeroes-with-Sign
           end-add
           display "Result of example 2: " Suppressed-Zeroes-with-Sign

      * Example 3
           move 44 to Signed-Packed-Concise
           subtract 500 from Signed-Packed-Concise
               giving Suppressed-Zeroes-with-Sign
           end-subtract
           display "Result of example 3: " Suppressed-Zeroes-with-Sign

      * Example 5
           move 9 to Signed-Packed-Concise
           multiply Signed-Packed-Concise by 100
               giving Suppressed-Zeroes-with-Sign
           end-multiply
           display "Result of example 5: " Suppressed-Zeroes-with-Sign

      * Example 6
           move 8192 to Signed-Packed-Concise
           divide Signed-Packed-Concise by 1024
               giving Suppressed-Zeroes-with-Sign
           end-divide
           display "Result of example 6: " Suppressed-Zeroes-with-Sign

      * Example 7
           move 17  to Unsigned-Number-Concise
           divide 5 into Unsigned-Number-Concise
               giving Suppressed-Zeroes-No-Decimal
               remainder Unsigned-Remainder
           end-divide
           display "Result of example 7: " Suppressed-Zeroes-No-Decimal
               " with remainder " Unsigned-Remainder

      *-----------------------------------------------------------------
      * Compute statements.
      *-----------------------------------------------------------------

      * Example 8
           move +1549 to Signed-Packed-Concise
           compute Suppressed-Zeroes-with-Sign =
               Signed-Packed-Concise + 2.75
           end-compute
           display "Result of example 8: " Suppressed-Zeroes-with-Sign

      * Example 9
           move 800 to Signed-Packed-Verbose
           move 13 to Signed-Packed-Concise
           compute Suppressed-Zeroes-with-Sign =
               (Signed-Packed-Verbose + Signed-Packed-Concise) / 2
           end-compute
           display "Result of example 9: " Suppressed-Zeroes-with-Sign

           goback
           .
