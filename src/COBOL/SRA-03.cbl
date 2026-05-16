
       IDENTIFICATION DIVISION.
       PROGRAM-ID. SRA03.

       ENVIRONMENT DIVISION.

       DATA DIVISION.

       WORKING-STORAGE SECTION.

       01 WS-CUSTOMER-ID        PIC X(10).
       01 WS-STATUS             PIC X(01).

       PROCEDURE DIVISION.

           DISPLAY 'PROCESS STARTED'.

           PERFORM VALIDATE-CUSTOMER.

           DISPLAY 'PROCESS COMPLETED'.

           STOP RUN.

       VALIDATE-CUSTOMER.

           IF WS-CUSTOMER-ID = SPACES
               MOVE 'E' TO WS-STATUS
           ELSE
               MOVE 'S' TO WS-STATUS
           END-IF.

    