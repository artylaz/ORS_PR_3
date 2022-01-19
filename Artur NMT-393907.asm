org 7C00h

start:

MOV AH, 13h
MOV AL, 1
INT 10h
 MOV    CX,     28
 MOV    BL,     01001111b
 MOV    DL,     48
 MOV    DH,     1
 MOV    BP,     string
 INT    10h

 MOV    CX,  50
 MOV    BL,  00001010b
 MOV    DL,  1

  MOV    DH,  10
  MOV    BP,  a
  INT    10h

  MOV    DH,  11
  MOV    BP,  b
  INT    10h

  MOV    DH,  12
  MOV    BP,  c
  INT    10h

  MOV    DH,  13
  MOV    BP,  d
  INT    10h

  MOV    DH,  14
  MOV    BP,  e
  INT    10h

string  DB      'Lazarishin Artur NMT-393907'
a   DB   '                                       0     '
b   DB   '                                      000    '
c   DB   '                                     00000   '
d   DB   '                                    0000000  '
e   DB   '                                   000000000 '

exit:


db 510-($-$$) dup 0
dw 0AA55h