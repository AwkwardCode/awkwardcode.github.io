       IDENTIFICATION DIVISION.
       PROGRAM-ID. TEST.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 VARIABEL.
           02 PIL PIC 9.
           02 NILAI PIC 9.
           02 A PIC 9.
           02 B PIC 9.
           02 B1 PIC ZZ.
           02 NAMA PIC A(20).
           02 KELAS PIC X(5).
           02 NPM PIC 9(8).
           02 UTS PIC 99.
           02 UAS PIC 99.
           02 HASIL PIC 99.
           02 ULANG PIC A.
           88 YA VALUE 'Y', 'y'.
           88 TIDAK VALUE 'T', 't'.
       SCREEN SECTION.
       01 CLS.
           02 BLANK SCREEN.
       01 MENU.
           02 LINE 3 COLUMN 5 VALUE '>>PROGRAM MENU<<'.
           02 LINE 4 COLUMN 5 VALUE ' 1. INPUT OUTPUT '.
           02 LINE 5 COLUMN 5 VALUE ' 2. KONDISI '.
           02 LINE 6 COLUMN 5 VALUE ' 3. PERULANGAN '.
           02 LINE 7 COLUMN 5 VALUE ' 4. EXIT '.
           02 LINE 8 COLUMN 5 VALUE ' MASUKKAN PILIHAN ANDA : '.
           02 COLUMN PLUS 2 PIC 9 TO PIL.
       01 BIODATA.
           02 LINE 14 COLUMN 5 VALUE 'NAMA : '.
           02 COLUMN PLUS 1 TO NAMA.
           02 LINE 15 COLUMN 5 VALUE 'KELAS : '.
           02 COLUMN PLUS 1 TO KELAS.
           02 LINE 16 COLUMN 5 VALUE 'NPM : '.
           02 COLUMN PLUS 1 TO NPM.
       PROCEDURE DIVISION.
       TAMPIL-MENU.
           DISPLAY CLS.
           DISPLAY MENU.
           ACCEPT MENU.
           IF PIL = 1 GO TO AWAL1.
           IF PIL = 2 GO TO AWAL2.
           IF PIL = 3 GO TO AWAL3.
           IF PIL = 4 GO TO AKHIR ELSE GO TO SALAH.
       AWAL1.
           DISPLAY (13, 5) 'PROGRAM BIODATA'.
           DISPLAY BIODATA.
           DISPLAY NAMA.
           DISPLAY KELAS.
           DISPLAY NPM.
           GO TO PILIHAN.
       AWAL2.
           DISPLAY (13, 5) 'PROGRAM KONDISI'.
           DISPLAY 'MASUKKAN NILAI UTS ANDA : ' ACCEPT UTS.
           DISPLAY 'MASUKKAN NILAI UAS ANDA : ' ACCEPT UAS.
           COMPUTE  HASIL = ( UTS * 0.7 ) + ( UAS * 0.3 ).
           IF HASIL > 70 DISPLAY 'LULUS
           ELSE DISPLAY 'GAGAL'.
           GO TO PILIHAN.
       AWAL3.
           DISPLAY (13, 5) 'PROGRAM PERULANGAN'.
           DISPLAY 'MASUKKAN ANGKA : ' ACCEPT NILAI.
           PERFORM TAMPIL
           VARYING A FROM 1 BY 1 UNTIL A > NILAI
               AFTER B FROM 1 BY 1 UNTIL B > A.
           GO TO PILIHAN.
       SALAH.
           DISPLAY (13, 5) ' '.
           STOP, 'SALAH MASUKKAN INPUTAN'.
           GO TO TAMPIL-MENU.
       AKHIR.
           DISPLAY (13, 5) 'TERIMAKASIH'.
           STOP RUN.
       PILIHAN.
           DISPLAY ' '.
           DISPLAY 'KEMBALI KE MENU ? [Y/T]'.
           ACCEPT ULANG.
           IF YA GO TO TAMPIL-MENU.
           STOP RUN.
       TAMPIL.
           MOVE B TO B1.
           DISLAY (, ) B1, ' '.
           IF A = B DISPLAY SPACE.
       SELESAI.
           STOP RUN.
