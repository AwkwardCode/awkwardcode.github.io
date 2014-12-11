       IDENTIFICATION DIVISION.
       PROGRAM-ID. SIMPLE-APP.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 VAR-MENU.
           02 PILIHAN PIC 9.
       01 VAR-ULANG.
           02 ULANG PIC A.
           88 YA VALUE 'Y', 'y'.
           88 TIDAK VALUE 'T', 't'.
       01 VAR-BIODATA.
           02 NAMA PIC A(20).
           02 KELAS PIC X(6).
           02 NPM PIC X(8).
       01 VAR-NILAI.
           02 UTS PIC 99.
           02 UAS PIC 99.
           02 HASIL PIC 999.
       01 VAR-LOOPING.
           02 JUMLAH PIC 9.
           02 X PIC 9.
           02 Y PIC 9.
           02 Z PIC ZZ.
       SCREEN SECTION.
       01 CLS.
           02 BLANK SCREEN.
       01 INPUT-MENU.
           02 LINE 1 COLUMN 4 VALUE '-- MENU --'.
           02 LINE 3 COLUMN 1 VALUE '1. INPUT OUTPUT'.
           02 LINE 4 COLUMN 1 VALUE '2. KONDISI'.
           02 LINE 5 COLUMN 1 VALUE '3. PERULANGAN'.
           02 LINE 6 COLUMN 1 VALUE '4. EXIT'.
           02 LINE 8 COLUMN 1 VALUE 'MASUKAN PILIHAN :'.
           02 COLUMN PLUS 1 PIC 9 TO PILIHAN.
       01 INPUT-BIODATA.
           02 LINE 1 COLUMN 1 VALUE 'INPUT OUTPUT'.
           02 LINE 3 COLUMN 1 VALUE 'MASUKAN NAMA  :'.
           02 COLUMN PLUS 1 PIC A(20) TO NAMA.
           02 LINE 4 COLUMN 1 VALUE 'MASUKAN KELAS :'.
           02 COLUMN PLUS 1 PIC X(6) TO KELAS.
           02 LINE 5 COLUMN 1 VALUE 'MASUKAN NPM   :'.
           02 COLUMN PLUS 1 PIC X(8) TO NPM.
       01 INPUT-NILAI.
           02 LINE 1 COLUMN 1 VALUE 'KONDISI'.
           02 LINE 3 COLUMN 1 VALUE 'MASUKAN NILAI UTS :'.
           02 COLUMN PLUS 1 PIC 99 TO UTS.
           02 LINE 4 COLUMN 1 VALUE 'MASUKAN NILAI UAS :'.
           02 COLUMN PLUS 1 PIC 99 TO UAS.
       01 INPUT-LOOPING.
           02 LINE 1 COLUMN 1 VALUE 'LOOPING'.
           02 LINE 3 COLUMN 1 VALUE 'MASUKAN BANYAK LOOPING :'.
           02 COLUMN PLUS 1 PIC 9 TO JUMLAH.
       PROCEDURE DIVISION.
       SHOW-MENU.
           DISPLAY CLS.
           DISPLAY INPUT-MENU.
           ACCEPT INPUT-MENU.
           IF PILIHAN = 1 GO TO SHOW-BIODATA.
           IF PILIHAN = 2 GO TO SHOW-NILAI.
           IF PILIHAN = 3 GO TO SHOW-LOOPING.
           IF PILIHAN = 4 GO TO FINISH ELSE GO TO INPUTAN-SALAH.
       SHOW-BIODATA.
           DISPLAY CLS.
           DISPLAY INPUT-BIODATA.
           ACCEPT INPUT-BIODATA.
           DISPLAY SPACE.
           DISPLAY '-----------------------------'.
           DISPLAY 'NAMA ANDA ', NAMA.
           DISPLAY 'KELAS ANDA ', KELAS.
           DISPLAY 'NPM ANDA ', NPM.
           GO TO REPEAT-PROGRAM.
       SHOW-NILAI.
           DISPLAY CLS.
           DISPLAY INPUT-NILAI.
           ACCEPT INPUT-NILAI.
           DISPLAY SPACE.
           DISPLAY '-----------------------------'.
           COMPUTE HASIL = (UTS * 0.7) + (UAS * 0.3).
           IF HASIL > 70 DISPLAY 'LULUS'
           ELSE DISPLAY 'GAGAL'.
           GO TO REPEAT-PROGRAM.
       SHOW-LOOPING.
           DISPLAY CLS.
           DISPLAY INPUT-LOOPING.
           ACCEPT INPUT-LOOPING.
           DISPLAY SPACE.
           DISPLAY '-----------------------------'.
           PERFORM DO-LOOP
           VARYING X FROM 1 BY 1 UNTIL X > JUMLAH
               AFTER Y FROM 1 BY 1 UNTIL Y > X.
           GO TO REPEAT-PROGRAM.
       DO-LOOP.
           MOVE Y TO Z.
           DISPLAY (, ) Z, ' '.
           IF X = Y DISPLAY SPACE.
       INPUTAN-SALAH.
           DISPLAY SPACE.
           STOP, 'SALAH MEMASUKAN INPUTAN'.
           GO TO SHOW-MENU.
       REPEAT-PROGRAM.
           DISPLAY SPACE.
           DISPLAY 'KEMBALI KE MENU ? [Y/T]'.
           ACCEPT ULANG.
           IF YA GO TO SHOW-MENU.
           STOP RUN.
       FINISH.
           STOP RUN.