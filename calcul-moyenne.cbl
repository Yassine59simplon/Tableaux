       IDENTIFICATION DIVISION.
       PROGRAM-ID. CALCUL-MOYENNE.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  I                   PIC 9 VALUE 1.
       01  WS-SOMME            PIC 999 VALUE 0.
       01  WS-MOYENNE          PIC 99V99 VALUE 0.
       01  WS-NOTE-TABLE.
           05 WS-NOTE OCCURS 5 TIMES INDEXED BY IDX.
               10 VALEUR-NOTE  PIC 99.

       PROCEDURE DIVISION.
       AFFICHAGE-NOTES.

           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 5
               DISPLAY "Entrez la note " I " : "
               ACCEPT VALEUR-NOTE(I)
           END-PERFORM

           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 5
               ADD VALEUR-NOTE(I) TO WS-SOMME
           END-PERFORM

           COMPUTE WS-MOYENNE = WS-SOMME / 5

           DISPLAY "La moyenne des notes est : " WS-MOYENNE

           STOP RUN.
