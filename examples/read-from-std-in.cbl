      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. READ-FROM-STD-IN.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
       SELECT SYSIN ASSIGN TO KEYBOARD ORGANIZATION LINE SEQUENTIAL.
       DATA DIVISION.
       FILE SECTION.
       FD SYSIN.
       01 ln PIC X(255).
          88 EOF VALUE HIGH-VALUES.
       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.
       OPEN INPUT SYSIN

       PERFORM UNTIL EOF
              DISPLAY 'hello ' ln
              READ SYSIN
                     AT END SET EOF TO TRUE
              END-READ
       END-PERFORM
       CLOSE SYSIN
       STOP RUN.
