      *sesire trois notes dans un tableaux.
       IDENTIFICATION DIVISION.
       PROGRAM-ID. tableaux.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       
       01 WS-TABLEAUX.
           03 WS-ELEVE OCCURS 3 TIMES.
             05 WS-NOTE PIC 99.
             05 WS-NOM PIC X(20).
       77 WS-INDEX PIC 9.

       PROCEDURE DIVISION.

       PERFORM VARYING WS-INDEX FROM 1 BY 1 UNTIL WS-INDEX > 3
           DISPLAY "SESIRE LA NOTE"
           ACCEPT WS-NOTE(WS-INDEX)
       
       END-PERFORM.
           DISPLAY "WS-TABLEAUX".
           DISPLAY WS-TABLEAUX.
           
       PERFORM VARYING WS-INDEX FROM 1 BY 1 UNTIL WS-INDEX > 3
           DISPLAY "WS-NOTE" WS-INDEX
           DISPLAY WS-NOTE(WS-INDEX)
       
       END-PERFORM.  

       STOP RUN.  

       