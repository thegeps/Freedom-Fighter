
PROLOGUE_START db 65
    db 84
    db 50
    db 48
    dw PROLOGUE_ARPEGGIOTABLE
    dw PROLOGUE_PITCHTABLE
    dw PROLOGUE_PITCHTABLE
    dw PROLOGUE_EFFECTBLOCKTABLE
    dw PROLOGUE_SUBSONG0_START
PROLOGUE_ARPEGGIOTABLE dw PROLOGUE_ARPEGGIO1
    dw PROLOGUE_ARPEGGIO2
    dw PROLOGUE_ARPEGGIO3
    dw PROLOGUE_ARPEGGIO4
    dw PROLOGUE_ARPEGGIO5
    dw PROLOGUE_ARPEGGIO6
    dw PROLOGUE_ARPEGGIO7
    dw PROLOGUE_ARPEGGIO8
    dw PROLOGUE_ARPEGGIO9
    dw PROLOGUE_ARPEGGIO10
    dw PROLOGUE_ARPEGGIO11
    dw PROLOGUE_ARPEGGIO12
    dw PROLOGUE_ARPEGGIO13
    dw PROLOGUE_ARPEGGIO14
    dw PROLOGUE_ARPEGGIO15
    dw PROLOGUE_ARPEGGIO16
    dw PROLOGUE_ARPEGGIO17
PROLOGUE_ARPEGGIO1 db 1
    db 0
    db 4
    db 12
    db 128
    dw PROLOGUE_ARPEGGIO1+1
PROLOGUE_ARPEGGIO2 db 1
    db 0
    db 3
    db 12
    db 128
    dw PROLOGUE_ARPEGGIO2+1
PROLOGUE_ARPEGGIO3 db 1
    db 0
    db 0
    db 12
    db 128
    dw PROLOGUE_ARPEGGIO3+1
PROLOGUE_ARPEGGIO4 db 1
    db 0
    db 0
    db 1
    db 128
    dw PROLOGUE_ARPEGGIO4+1
PROLOGUE_ARPEGGIO5 db 1
    db 0
    db 0
    db 2
    db 128
    dw PROLOGUE_ARPEGGIO5+1
PROLOGUE_ARPEGGIO6 db 1
    db 0
    db 0
    db 3
    db 128
    dw PROLOGUE_ARPEGGIO6+1
PROLOGUE_ARPEGGIO7 db 1
    db 0
    db 0
    db 4
    db 128
    dw PROLOGUE_ARPEGGIO7+1
PROLOGUE_ARPEGGIO8 db 1
    db 0
    db 0
    db 5
    db 128
    dw PROLOGUE_ARPEGGIO8+1
PROLOGUE_ARPEGGIO9 db 1
    db 0
    db 0
    db 6
    db 128
    dw PROLOGUE_ARPEGGIO9+1
PROLOGUE_ARPEGGIO10 db 1
    db 0
    db 0
    db 7
    db 128
    dw PROLOGUE_ARPEGGIO10+1
PROLOGUE_ARPEGGIO11 db 1
    db 0
    db 0
    db 8
    db 128
    dw PROLOGUE_ARPEGGIO11+1
PROLOGUE_ARPEGGIO12 db 1
    db 0
    db 0
    db 9
    db 128
    dw PROLOGUE_ARPEGGIO12+1
PROLOGUE_ARPEGGIO13 db 1
    db 0
    db 0
    db 10
    db 128
    dw PROLOGUE_ARPEGGIO13+1
PROLOGUE_ARPEGGIO14 db 1
    db 0
    db 0
    db 11
    db 128
    dw PROLOGUE_ARPEGGIO14+1
PROLOGUE_ARPEGGIO15 db 1
    db 0
    db 0
    db 13
    db 128
    dw PROLOGUE_ARPEGGIO15+1
PROLOGUE_ARPEGGIO16 db 1
    db 0
    db 0
    db 14
    db 128
    dw PROLOGUE_ARPEGGIO16+1
PROLOGUE_ARPEGGIO17 db 1
    db 0
    db 0
    db 15
    db 128
    dw PROLOGUE_ARPEGGIO17+1
PROLOGUE_PITCHTABLE
PROLOGUE_INSTRUMENTTABLE dw PROLOGUE_EMPTYINSTRUMENT
    dw PROLOGUE_INSTRUMENT1
    dw PROLOGUE_INSTRUMENT2
    dw PROLOGUE_INSTRUMENT3
    dw PROLOGUE_INSTRUMENT4
    dw PROLOGUE_INSTRUMENT5
    dw PROLOGUE_INSTRUMENT6
    dw PROLOGUE_INSTRUMENT7
    dw PROLOGUE_INSTRUMENT8
    dw PROLOGUE_INSTRUMENT9
    dw PROLOGUE_INSTRUMENT10
PROLOGUE_EMPTYINSTRUMENT db 0
PROLOGUE_EMPTYINSTRUMENT_LOOP db 0
    db 6
PROLOGUE_INSTRUMENT1 db 1
    db 185
    db 193
    db 201
    db 209
    db 225
    db 217
    db 209
    db 201
    db 193
    db 185
    db 177
    db 169
    db 161
    db 6
PROLOGUE_INSTRUMENT2 db 1
    db 5
    db 136
    db 225
    db 209
    db 177
    db 161
    db 2
    db 131
    db 2
    db 131
    db 2
    db 131
PROLOGUE_INSTRUMENT2_LOOP db 225
    db 7
    dw PROLOGUE_INSTRUMENT2_LOOP
PROLOGUE_INSTRUMENT3 db 1
    db 248
    db 1
    db 208
    db 1
    db 208
    db 1
    db 200
    db 1
    db 176
    db 1
    db 168
    db 1
    db 160
    db 1
    db 144
    db 1
    db 136
    db 1
    db 6
PROLOGUE_INSTRUMENT4 db 1
    db 249
    db 113
    db 32
    db 50
    db 0
    db 105
    db 32
    db 100
    db 0
    db 97
    db 32
    db 150
    db 0
    db 89
    db 32
    db 200
    db 0
    db 81
    db 32
    db 250
    db 0
    db 73
    db 32
    db 44
    db 1
    db 65
    db 32
    db 94
    db 1
    db 57
    db 32
    db 144
    db 1
    db 6
PROLOGUE_INSTRUMENT5 db 3
    db 248
    db 1
    db 232
    db 1
    db 224
    db 1
    db 208
    db 1
    db 192
    db 1
    db 160
    db 1
    db 144
    db 1
    db 6
PROLOGUE_INSTRUMENT6 db 1
    db 232
    db 1
    db 184
    db 1
    db 144
    db 1
    db 6
PROLOGUE_INSTRUMENT7 db 2
    db 233
    db 225
    db 209
    db 185
    db 209
    db 177
    db 153
    db 6
PROLOGUE_INSTRUMENT8 db 1
    db 233
    db 233
PROLOGUE_INSTRUMENT8_LOOP db 81
    db 32
    db 255
    db 255
    db 81
    db 32
    db 254
    db 255
    db 81
    db 32
    db 255
    db 255
    db 209
    db 81
    db 32
    db 1
    db 0
    db 81
    db 32
    db 2
    db 0
    db 81
    db 32
    db 1
    db 0
    db 209
    db 7
    dw PROLOGUE_INSTRUMENT8_LOOP
PROLOGUE_INSTRUMENT9 db 2
PROLOGUE_INSTRUMENT9_LOOP db 233
    db 209
    db 104
    db 104
    db 233
    db 209
    db 104
    db 104
    db 104
    db 233
    db 209
    db 104
    db 233
    db 233
    db 233
    db 209
    db 104
    db 104
    db 233
    db 233
    db 233
    db 233
    db 104
    db 104
    db 7
    dw PROLOGUE_INSTRUMENT9_LOOP
PROLOGUE_INSTRUMENT10 db 1
    db 0
    db 225
    db 209
    db 177
    db 161
    db 145
    db 0
    db 0
PROLOGUE_INSTRUMENT10_LOOP db 225
    db 7
    dw PROLOGUE_INSTRUMENT10_LOOP
PROLOGUE_EFFECTBLOCKTABLE dw PROLOGUE_EFFECTBLOCK_P5P0P8
    dw PROLOGUE_EFFECTBLOCK_P24P43P0P2
    dw PROLOGUE_EFFECTBLOCK_P24P67P128P0
    dw PROLOGUE_EFFECTBLOCK_P6P0
    dw PROLOGUE_EFFECTBLOCK_P4P1
    dw PROLOGUE_EFFECTBLOCK_P4P2
    dw PROLOGUE_EFFECTBLOCK_P4P3
    dw PROLOGUE_EFFECTBLOCK_P4P4
    dw PROLOGUE_EFFECTBLOCK_P4P5
    dw PROLOGUE_EFFECTBLOCK_P4P6
    dw PROLOGUE_EFFECTBLOCK_P4P7
    dw PROLOGUE_EFFECTBLOCK_P4P8
    dw PROLOGUE_EFFECTBLOCK_P6P1
    dw PROLOGUE_EFFECTBLOCK_P4P15
    dw PROLOGUE_EFFECTBLOCK_P8
    dw PROLOGUE_EFFECTBLOCK_P4P10
    dw PROLOGUE_EFFECTBLOCK_P4P13
    dw PROLOGUE_EFFECTBLOCK_P4P14
    dw PROLOGUE_EFFECTBLOCK_P6P2
    dw PROLOGUE_EFFECTBLOCK_P24P31P0P2
    dw PROLOGUE_EFFECTBLOCK_P24P60P64P1
    dw PROLOGUE_EFFECTBLOCK_P24P60P64P2
    dw PROLOGUE_EFFECTBLOCK_P24P60P128P0
    dw PROLOGUE_EFFECTBLOCK_P24P55P0P2
    dw PROLOGUE_EFFECTBLOCK_P6P3
    dw PROLOGUE_EFFECTBLOCK_P6P4
    dw PROLOGUE_EFFECTBLOCK_P6P5
    dw PROLOGUE_EFFECTBLOCK_P6P6
    dw PROLOGUE_EFFECTBLOCK_P6P7
    dw PROLOGUE_EFFECTBLOCK_P6P9
    dw PROLOGUE_EFFECTBLOCK_P6P8
    dw PROLOGUE_EFFECTBLOCK_P6P10
    dw PROLOGUE_EFFECTBLOCK_P6P11
    dw PROLOGUE_EFFECTBLOCK_P6P12
    dw PROLOGUE_EFFECTBLOCK_P6P13
    dw PROLOGUE_EFFECTBLOCK_P6P14
    dw PROLOGUE_EFFECTBLOCK_P6P15
    dw PROLOGUE_EFFECTBLOCK_P6P16
PROLOGUE_EFFECTBLOCK_P8 db 8
PROLOGUE_EFFECTBLOCK_P4P1 db 4
    db 1
PROLOGUE_EFFECTBLOCK_P4P2 db 4
    db 2
PROLOGUE_EFFECTBLOCK_P4P3 db 4
    db 3
PROLOGUE_EFFECTBLOCK_P4P4 db 4
    db 4
PROLOGUE_EFFECTBLOCK_P4P5 db 4
    db 5
PROLOGUE_EFFECTBLOCK_P4P6 db 4
    db 6
PROLOGUE_EFFECTBLOCK_P4P7 db 4
    db 7
PROLOGUE_EFFECTBLOCK_P4P8 db 4
    db 8
PROLOGUE_EFFECTBLOCK_P6P0 db 6
    db 0
PROLOGUE_EFFECTBLOCK_P6P1 db 6
    db 1
PROLOGUE_EFFECTBLOCK_P6P2 db 6
    db 2
PROLOGUE_EFFECTBLOCK_P6P3 db 6
    db 3
PROLOGUE_EFFECTBLOCK_P6P4 db 6
    db 4
PROLOGUE_EFFECTBLOCK_P6P5 db 6
    db 5
PROLOGUE_EFFECTBLOCK_P6P6 db 6
    db 6
PROLOGUE_EFFECTBLOCK_P6P7 db 6
    db 7
PROLOGUE_EFFECTBLOCK_P6P8 db 6
    db 8
PROLOGUE_EFFECTBLOCK_P6P9 db 6
    db 9
PROLOGUE_EFFECTBLOCK_P5P0P8 db 5
    db 0
    db 8
PROLOGUE_EFFECTBLOCK_P24P43P0P2 db 24
    db 43
    db 0
    db 2
PROLOGUE_EFFECTBLOCK_P24P60P128P0 db 24
    db 60
    db 128
    db 0
PROLOGUE_EFFECTBLOCK_P24P67P128P0 db 24
    db 67
    db 128
    db 0
PROLOGUE_EFFECTBLOCK_P24P55P0P2 db 24
    db 55
    db 0
    db 2
PROLOGUE_EFFECTBLOCK_P24P31P0P2 db 24
    db 31
    db 0
    db 2
PROLOGUE_EFFECTBLOCK_P24P60P64P1 db 24
    db 60
    db 64
    db 1
PROLOGUE_EFFECTBLOCK_P24P60P64P2 db 24
    db 60
    db 64
    db 2
PROLOGUE_EFFECTBLOCK_P4P10 db 4
    db 10
PROLOGUE_EFFECTBLOCK_P4P13 db 4
    db 13
PROLOGUE_EFFECTBLOCK_P4P14 db 4
    db 14
PROLOGUE_EFFECTBLOCK_P4P15 db 4
    db 15
PROLOGUE_EFFECTBLOCK_P6P10 db 6
    db 10
PROLOGUE_EFFECTBLOCK_P6P11 db 6
    db 11
PROLOGUE_EFFECTBLOCK_P6P12 db 6
    db 12
PROLOGUE_EFFECTBLOCK_P6P13 db 6
    db 13
PROLOGUE_EFFECTBLOCK_P6P14 db 6
    db 14
PROLOGUE_EFFECTBLOCK_P6P15 db 6
    db 15
PROLOGUE_EFFECTBLOCK_P6P16 db 6
    db 16
PROLOGUE_SUBSONG0_START db 2
    db 0
    db 1
    db 0
    db 13
    db 6
    db 19
PROLOGUE_SUBSONG0_LINKER
PROLOGUE_SUBSONG0_LINKER_LOOP dw PROLOGUE_SUBSONG0_TRACK5
    dw PROLOGUE_SUBSONG0_TRACK6
    dw PROLOGUE_SUBSONG0_TRACK7
    dw PROLOGUE_SUBSONG0_LINKERBLOCK0
    dw PROLOGUE_SUBSONG0_TRACK8
    dw PROLOGUE_SUBSONG0_TRACK9
    dw PROLOGUE_SUBSONG0_TRACK10
    dw PROLOGUE_SUBSONG0_LINKERBLOCK0
    dw PROLOGUE_SUBSONG0_TRACK3
    dw PROLOGUE_SUBSONG0_TRACK4
    dw PROLOGUE_SUBSONG0_TRACK2
    dw PROLOGUE_SUBSONG0_LINKERBLOCK0
    dw PROLOGUE_SUBSONG0_TRACK3
    dw PROLOGUE_SUBSONG0_TRACK11
    dw PROLOGUE_SUBSONG0_TRACK2
    dw PROLOGUE_SUBSONG0_LINKERBLOCK0
    dw PROLOGUE_SUBSONG0_TRACK3
    dw PROLOGUE_SUBSONG0_TRACK1
    dw PROLOGUE_SUBSONG0_TRACK0
    dw PROLOGUE_SUBSONG0_LINKERBLOCK0
    dw PROLOGUE_SUBSONG0_TRACK3
    dw PROLOGUE_SUBSONG0_TRACK1
    dw PROLOGUE_SUBSONG0_TRACK0
    dw PROLOGUE_SUBSONG0_LINKERBLOCK0
    dw PROLOGUE_SUBSONG0_TRACK12
    dw PROLOGUE_SUBSONG0_TRACK13
    dw PROLOGUE_SUBSONG0_TRACK0
    dw PROLOGUE_SUBSONG0_LINKERBLOCK0
    dw PROLOGUE_SUBSONG0_TRACK12
    dw PROLOGUE_SUBSONG0_TRACK23
    dw PROLOGUE_SUBSONG0_TRACK0
    dw PROLOGUE_SUBSONG0_LINKERBLOCK0
    dw PROLOGUE_SUBSONG0_TRACK12
    dw PROLOGUE_SUBSONG0_TRACK19
    dw PROLOGUE_SUBSONG0_TRACK17
    dw PROLOGUE_SUBSONG0_LINKERBLOCK0
    dw PROLOGUE_SUBSONG0_TRACK12
    dw PROLOGUE_SUBSONG0_TRACK20
    dw PROLOGUE_SUBSONG0_TRACK18
    dw PROLOGUE_SUBSONG0_LINKERBLOCK0
    dw PROLOGUE_SUBSONG0_TRACK12
    dw PROLOGUE_SUBSONG0_TRACK21
    dw PROLOGUE_SUBSONG0_TRACK17
    dw PROLOGUE_SUBSONG0_LINKERBLOCK0
    dw PROLOGUE_SUBSONG0_TRACK12
    dw PROLOGUE_SUBSONG0_TRACK22
    dw PROLOGUE_SUBSONG0_TRACK18
    dw PROLOGUE_SUBSONG0_LINKERBLOCK0
    dw PROLOGUE_SUBSONG0_TRACK15
    dw PROLOGUE_SUBSONG0_TRACK14
    dw PROLOGUE_SUBSONG0_TRACK16
    dw PROLOGUE_SUBSONG0_LINKERBLOCK0
    dw PROLOGUE_SUBSONG0_TRACK9
    dw PROLOGUE_SUBSONG0_TRACK9
    dw PROLOGUE_SUBSONG0_TRACK9
    dw PROLOGUE_SUBSONG0_LINKERBLOCK0
    db 0
    db 0
    dw PROLOGUE_SUBSONG0_LINKER
PROLOGUE_SUBSONG0_LINKERBLOCK0 db 64
    db 0
    db 0
    db 0
    dw PROLOGUE_SUBSONG0_SPEEDTRACK0
    dw PROLOGUE_SUBSONG0_EVENTTRACK0
PROLOGUE_SUBSONG0_TRACK0 db 136
    db 2
    db 60
    db 8
    db 60
    db 20
    db 15
    db 150
    db 6
    db 136
    db 2
    db 10
    db 60
    db 10
    db 60
    db 20
    db 22
    db 150
    db 6
    db 152
    db 2
    db 12
    db 60
    db 12
    db 60
    db 22
    db 24
    db 150
    db 6
    db 152
    db 2
    db 12
    db 60
    db 12
    db 60
    db 27
    db 24
    db 150
    db 6
    db 152
    db 2
    db 8
    db 60
    db 8
    db 60
    db 20
    db 15
    db 150
    db 6
    db 136
    db 2
    db 10
    db 60
    db 10
    db 60
    db 20
    db 22
    db 150
    db 6
    db 152
    db 2
    db 12
    db 60
    db 12
    db 60
    db 22
    db 24
    db 150
    db 6
    db 152
    db 2
    db 12
    db 60
    db 12
    db 60
    db 19
    db 22
    db 150
    db 6
    db 152
    db 2
    db 61
    db 127
PROLOGUE_SUBSONG0_TRACK1 db 236
    db 1
    db 14
    db 60
    db 48
    db 60
    db 51
    db 60
    db 44
    db 60
    db 46
    db 60
    db 51
    db 60
    db 53
    db 60
    db 51
    db 60
    db 48
    db 50
    db 51
    db 53
    db 55
    db 63
    db 75
    db 55
    db 53
    db 51
    db 50
    db 51
    db 50
    db 48
    db 43
    db 44
    db 41
    db 236
    db 7
    db 3
    db 60
    db 44
    db 60
    db 51
    db 60
    db 44
    db 60
    db 46
    db 60
    db 46
    db 60
    db 44
    db 60
    db 46
    db 60
    db 247
    db 1
    db 14
    db 53
    db 51
    db 50
    db 51
    db 50
    db 48
    db 46
    db 48
    db 46
    db 43
    db 41
    db 43
    db 41
    db 39
    db 38
    db 61
    db 127
PROLOGUE_SUBSONG0_TRACK2 db 140
    db 2
    db 60
    db 12
    db 60
    db 22
    db 24
    db 150
    db 6
    db 152
    db 2
    db 12
    db 60
    db 12
    db 60
    db 22
    db 24
    db 150
    db 6
    db 152
    db 2
    db 12
    db 60
    db 12
    db 60
    db 22
    db 24
    db 150
    db 6
    db 152
    db 2
    db 12
    db 60
    db 12
    db 60
    db 22
    db 24
    db 150
    db 6
    db 152
    db 2
    db 12
    db 60
    db 12
    db 60
    db 22
    db 24
    db 150
    db 6
    db 152
    db 2
    db 12
    db 60
    db 12
    db 60
    db 22
    db 24
    db 150
    db 6
    db 152
    db 2
    db 12
    db 60
    db 12
    db 60
    db 22
    db 24
    db 150
    db 6
    db 152
    db 2
    db 12
    db 60
    db 12
    db 60
    db 22
    db 24
    db 150
    db 6
    db 152
    db 2
    db 61
    db 127
PROLOGUE_SUBSONG0_TRACK3 db 133
    db 4
    db 60
    db 145
    db 3
    db 60
    db 140
    db 5
    db 126
    db 133
    db 4
    db 60
    db 145
    db 3
    db 60
    db 145
    db 6
    db 60
    db 41
    db 60
    db 133
    db 4
    db 60
    db 145
    db 3
    db 60
    db 140
    db 5
    db 126
    db 133
    db 4
    db 60
    db 145
    db 3
    db 60
    db 145
    db 6
    db 29
    db 41
    db 60
    db 133
    db 4
    db 60
    db 145
    db 3
    db 60
    db 140
    db 5
    db 126
    db 133
    db 4
    db 60
    db 145
    db 3
    db 60
    db 145
    db 6
    db 60
    db 41
    db 60
    db 133
    db 4
    db 60
    db 145
    db 3
    db 60
    db 140
    db 5
    db 126
    db 133
    db 4
    db 60
    db 145
    db 3
    db 60
    db 145
    db 6
    db 29
    db 41
    db 61
    db 127
PROLOGUE_SUBSONG0_TRACK4 db 231
    db 8
    db 3
    db 61
    db 14
    db 100
    db 12
    db 61
    db 14
    db 98
    db 3
    db 61
    db 14
    db 95
    db 12
    db 61
    db 127
PROLOGUE_SUBSONG0_TRACK5 db 192
    db 8
    db 0
    db 61
    db 30
    db 124
    db 19
    db 61
    db 127
PROLOGUE_SUBSONG0_TRACK6 db 204
    db 8
    db 0
    db 61
    db 30
    db 124
    db 1
    db 61
    db 127
PROLOGUE_SUBSONG0_TRACK7 db 228
    db 9
    db 0
    db 61
    db 127
PROLOGUE_SUBSONG0_TRACK8 db 61
    db 31
    db 133
    db 4
    db 60
    db 145
    db 3
    db 60
    db 140
    db 5
    db 126
    db 133
    db 4
    db 60
    db 145
    db 3
    db 60
    db 145
    db 6
    db 60
    db 41
    db 60
    db 133
    db 4
    db 60
    db 145
    db 3
    db 60
    db 140
    db 5
    db 126
    db 133
    db 4
    db 60
    db 145
    db 3
    db 60
    db 145
    db 6
    db 60
    db 41
    db 61
    db 127
PROLOGUE_SUBSONG0_TRACK9 db 61
    db 127
PROLOGUE_SUBSONG0_TRACK10 db 190
    db 124
    db 1
    db 61
    db 26
    db 140
    db 2
    db 60
    db 12
    db 60
    db 22
    db 24
    db 150
    db 6
    db 152
    db 2
    db 12
    db 60
    db 12
    db 60
    db 22
    db 24
    db 150
    db 6
    db 152
    db 2
    db 12
    db 60
    db 12
    db 60
    db 22
    db 24
    db 150
    db 6
    db 152
    db 2
    db 12
    db 60
    db 12
    db 60
    db 22
    db 24
    db 150
    db 6
    db 152
    db 2
    db 61
    db 127
PROLOGUE_SUBSONG0_TRACK11 db 231
    db 8
    db 3
    db 61
    db 14
    db 100
    db 12
    db 61
    db 14
    db 38
    db 61
    db 14
    db 31
    db 61
    db 127
PROLOGUE_SUBSONG0_TRACK12 db 133
    db 4
    db 60
    db 145
    db 3
    db 60
    db 140
    db 5
    db 126
    db 133
    db 4
    db 60
    db 145
    db 3
    db 60
    db 140
    db 5
    db 60
    db 169
    db 6
    db 29
    db 133
    db 4
    db 60
    db 145
    db 3
    db 60
    db 140
    db 5
    db 126
    db 133
    db 4
    db 60
    db 145
    db 3
    db 60
    db 140
    db 5
    db 60
    db 169
    db 6
    db 29
    db 133
    db 4
    db 60
    db 145
    db 3
    db 60
    db 140
    db 5
    db 126
    db 133
    db 4
    db 60
    db 145
    db 3
    db 60
    db 140
    db 5
    db 60
    db 169
    db 6
    db 29
    db 133
    db 4
    db 60
    db 145
    db 3
    db 60
    db 140
    db 5
    db 126
    db 133
    db 4
    db 60
    db 145
    db 3
    db 60
    db 140
    db 5
    db 60
    db 169
    db 6
    db 29
    db 61
    db 127
PROLOGUE_SUBSONG0_TRACK13 db 228
    db 9
    db 14
    db 61
    db 6
    db 34
    db 61
    db 6
    db 31
    db 61
    db 10
    db 39
    db 60
    db 38
    db 60
    db 36
    db 61
    db 6
    db 38
    db 61
    db 6
    db 39
    db 61
    db 6
    db 43
    db 126
    db 31
    db 61
    db 127
PROLOGUE_SUBSONG0_TRACK14 db 228
    db 9
    db 0
    db 61
    db 6
    db 98
    db 4
    db 61
    db 6
    db 100
    db 5
    db 254
    db 124
    db 6
    db 254
    db 107
    db 7
    db 126
    db 36
    db 60
    db 124
    db 8
    db 254
    db 102
    db 9
    db 126
    db 124
    db 10
    db 126
    db 103
    db 11
    db 126
    db 124
    db 15
    db 126
    db 124
    db 16
    db 126
    db 124
    db 17
    db 62
    db 124
    db 13
    db 61
    db 127
PROLOGUE_SUBSONG0_TRACK15 db 197
    db 4
    db 0
    db 60
    db 145
    db 3
    db 60
    db 140
    db 5
    db 126
    db 197
    db 4
    db 4
    db 60
    db 145
    db 3
    db 60
    db 140
    db 5
    db 60
    db 169
    db 6
    db 29
    db 197
    db 4
    db 5
    db 60
    db 145
    db 3
    db 60
    db 140
    db 5
    db 60
    db 124
    db 6
    db 60
    db 133
    db 4
    db 60
    db 145
    db 3
    db 60
    db 204
    db 5
    db 7
    db 60
    db 169
    db 6
    db 29
    db 133
    db 4
    db 60
    db 209
    db 3
    db 8
    db 60
    db 140
    db 5
    db 126
    db 197
    db 4
    db 9
    db 60
    db 145
    db 3
    db 60
    db 204
    db 5
    db 10
    db 60
    db 169
    db 6
    db 29
    db 197
    db 4
    db 11
    db 60
    db 145
    db 3
    db 60
    db 204
    db 5
    db 15
    db 126
    db 197
    db 4
    db 16
    db 60
    db 145
    db 3
    db 60
    db 204
    db 5
    db 17
    db 60
    db 169
    db 6
    db 93
    db 13
    db 61
    db 127
PROLOGUE_SUBSONG0_TRACK16 db 200
    db 2
    db 0
    db 60
    db 8
    db 60
    db 20
    db 15
    db 150
    db 6
    db 136
    db 2
    db 74
    db 4
    db 60
    db 10
    db 60
    db 20
    db 22
    db 150
    db 6
    db 152
    db 2
    db 76
    db 5
    db 60
    db 140
    db 10
    db 60
    db 22
    db 24
    db 214
    db 6
    db 6
    db 152
    db 10
    db 12
    db 60
    db 12
    db 60
    db 91
    db 7
    db 24
    db 150
    db 6
    db 152
    db 10
    db 8
    db 60
    db 72
    db 8
    db 60
    db 20
    db 15
    db 150
    db 6
    db 136
    db 10
    db 74
    db 9
    db 60
    db 10
    db 60
    db 84
    db 10
    db 22
    db 150
    db 6
    db 152
    db 10
    db 76
    db 11
    db 60
    db 12
    db 60
    db 86
    db 15
    db 24
    db 150
    db 6
    db 152
    db 10
    db 76
    db 16
    db 60
    db 12
    db 60
    db 83
    db 17
    db 22
    db 150
    db 6
    db 216
    db 10
    db 13
    db 61
    db 127
PROLOGUE_SUBSONG0_TRACK17 db 140
    db 2
    db 60
    db 12
    db 60
    db 22
    db 24
    db 150
    db 6
    db 152
    db 2
    db 12
    db 60
    db 12
    db 60
    db 19
    db 22
    db 150
    db 6
    db 152
    db 2
    db 12
    db 60
    db 12
    db 60
    db 22
    db 24
    db 150
    db 6
    db 152
    db 2
    db 12
    db 60
    db 12
    db 60
    db 19
    db 22
    db 150
    db 6
    db 152
    db 2
    db 10
    db 60
    db 10
    db 60
    db 20
    db 22
    db 150
    db 6
    db 152
    db 2
    db 10
    db 60
    db 10
    db 60
    db 20
    db 22
    db 150
    db 6
    db 152
    db 2
    db 10
    db 60
    db 10
    db 60
    db 20
    db 22
    db 150
    db 6
    db 152
    db 2
    db 10
    db 60
    db 10
    db 60
    db 20
    db 22
    db 150
    db 6
    db 152
    db 2
    db 61
    db 127
PROLOGUE_SUBSONG0_TRACK18 db 145
    db 2
    db 60
    db 17
    db 60
    db 27
    db 29
    db 150
    db 6
    db 152
    db 2
    db 17
    db 60
    db 17
    db 60
    db 27
    db 29
    db 150
    db 6
    db 152
    db 2
    db 10
    db 60
    db 10
    db 60
    db 20
    db 22
    db 150
    db 6
    db 152
    db 2
    db 10
    db 60
    db 10
    db 60
    db 20
    db 22
    db 150
    db 6
    db 152
    db 2
    db 12
    db 60
    db 12
    db 60
    db 22
    db 24
    db 150
    db 6
    db 152
    db 2
    db 12
    db 60
    db 12
    db 60
    db 19
    db 22
    db 150
    db 6
    db 152
    db 2
    db 8
    db 60
    db 8
    db 60
    db 19
    db 20
    db 150
    db 6
    db 148
    db 2
    db 10
    db 60
    db 10
    db 60
    db 20
    db 22
    db 150
    db 6
    db 145
    db 2
    db 61
    db 127
PROLOGUE_SUBSONG0_TRACK19 db 238
    db 8
    db 14
    db 60
    db 124
    db 2
    db 61
    db 18
    db 48
    db 126
    db 46
    db 126
    db 43
    db 60
    db 124
    db 21
    db 61
    db 20
    db 39
    db 60
    db 41
    db 60
    db 39
    db 60
    db 36
    db 60
    db 39
    db 61
    db 127
PROLOGUE_SUBSONG0_TRACK20 db 62
    db 124
    db 22
    db 61
    db 18
    db 169
    db 8
    db 126
    db 39
    db 126
    db 34
    db 60
    db 124
    db 23
    db 61
    db 14
    db 240
    db 1
    db 18
    db 60
    db 48
    db 60
    db 46
    db 60
    db 43
    db 60
    db 48
    db 60
    db 48
    db 60
    db 43
    db 60
    db 46
    db 61
    db 127
PROLOGUE_SUBSONG0_TRACK21 db 238
    db 8
    db 14
    db 60
    db 124
    db 2
    db 61
    db 18
    db 46
    db 60
    db 48
    db 60
    db 46
    db 60
    db 43
    db 60
    db 39
    db 126
    db 124
    db 20
    db 61
    db 18
    db 39
    db 60
    db 41
    db 60
    db 39
    db 60
    db 36
    db 60
    db 39
    db 61
    db 127
PROLOGUE_SUBSONG0_TRACK22 db 169
    db 8
    db 126
    db 43
    db 126
    db 44
    db 126
    db 41
    db 126
    db 34
    db 126
    db 38
    db 60
    db 39
    db 126
    db 38
    db 60
    db 36
    db 60
    db 34
    db 60
    db 36
    db 61
    db 15
    db 124
    db 24
    db 124
    db 25
    db 124
    db 26
    db 124
    db 27
    db 124
    db 28
    db 124
    db 30
    db 124
    db 29
    db 124
    db 31
    db 124
    db 32
    db 124
    db 33
    db 124
    db 34
    db 124
    db 18
    db 124
    db 35
    db 124
    db 36
    db 124
    db 37
    db 61
    db 127
PROLOGUE_SUBSONG0_TRACK23 db 228
    db 9
    db 14
    db 61
    db 6
    db 34
    db 61
    db 6
    db 36
    db 61
    db 10
    db 38
    db 60
    db 39
    db 60
    db 36
    db 61
    db 6
    db 38
    db 61
    db 6
    db 39
    db 61
    db 6
    db 43
    db 126
    db 31
    db 61
    db 127
PROLOGUE_SUBSONG0_SPEEDTRACK0 db 255
PROLOGUE_SUBSONG0_EVENTTRACK0 db 255