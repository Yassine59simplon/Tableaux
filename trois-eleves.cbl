       IDENTIFICATION DIVISION.
       PROGRAM-ID. tableaux-test.
       AUTHOR. Yassine.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       77 WS-I-E             PIC 9 VALUE 1.
       77 WS-I-M             PIC 9 VALUE 1.

      * Tableau des notes : 3 élèves x 4 matières
       01 WS-NOTES.
          05 WS-ELEVE-TAB OCCURS 3 TIMES.
             10 WS-MATIERE-TAB OCCURS 4 TIMES.
                15 WS-NOTE PIC 99.
       
      * Noms des élèves
       01 WS-NOMS.
          05 WS-NOM-ELEVE OCCURS 3 TIMES.
             10 WS-NOM PIC A(20).


       PROCEDURE DIVISION.
       
      * Saisie des noms des élèves
           PERFORM VARYING WS-I-E FROM 1 BY 1 UNTIL WS-I-E > 3
               DISPLAY "Entrez le nom de l'élève " WS-I-E ":"
               ACCEPT WS-NOM(WS-I-E)
           END-PERFORM
           

           PERFORM VARYING WS-I-E FROM 1 BY 1 UNTIL
           WS-I-E > 3
            PERFORM VARYING WS-I-M FROM 1 BY 1 UNTIL
              WS-I-M > 4  
              DISPLAY "Entrez la note "WS-I-E" pour matiere "WS-I-M ":"
              ACCEPT WS-NOTE(WS-I-E, WS-I-M)

            END-PERFORM
            
           END-PERFORM.


           PERFORM VARYING WS-I-E FROM 1 BY 1 UNTIL
           WS-I-E > 3
           DISPLAY "Eleve" WS-I-E
            PERFORM VARYING WS-I-M FROM 1 BY 1 UNTIL
               WS-I-M > 4
               DISPLAY "Matiere" WS-I-M ":" WS-NOTE(WS-I-E, WS-I-M)
            END-PERFORM 

           END-PERFORM.  
 