FIGHTFOR_START db 65
    db 84
    db 50
    db 48
    dw FIGHTFOR_ARPEGGIOTABLE
    dw FIGHTFOR_PITCHTABLE
    dw FIGHTFOR_PITCHTABLE
    dw FIGHTFOR_EFFECTBLOCKTABLE
    dw FIGHTFOR_SUBSONG0_START
FIGHTFOR_ARPEGGIOTABLE dw FIGHTFOR_ARPEGGIO1
    dw FIGHTFOR_ARPEGGIO2
FIGHTFOR_ARPEGGIO1 db 1
    db 0
    db 12
    db 128
    dw FIGHTFOR_ARPEGGIO1+1
FIGHTFOR_ARPEGGIO2 db 1
    db 0
    db 0
    db 12
    db 128
    dw FIGHTFOR_ARPEGGIO2+1
FIGHTFOR_PITCHTABLE
FIGHTFOR_INSTRUMENTTABLE dw FIGHTFOR_EMPTYINSTRUMENT
    dw FIGHTFOR_INSTRUMENT1
    dw FIGHTFOR_INSTRUMENT2
    dw FIGHTFOR_INSTRUMENT3
    dw FIGHTFOR_INSTRUMENT4
    dw FIGHTFOR_INSTRUMENT5
    dw FIGHTFOR_INSTRUMENT6
    dw FIGHTFOR_INSTRUMENT7
    dw FIGHTFOR_INSTRUMENT8
    dw FIGHTFOR_INSTRUMENT9
    dw FIGHTFOR_INSTRUMENT10
    dw FIGHTFOR_INSTRUMENT11
FIGHTFOR_EMPTYINSTRUMENT db 0
FIGHTFOR_EMPTYINSTRUMENT_LOOP db 0
    db 6
FIGHTFOR_INSTRUMENT1 db 1
    db 217
    db 225
    db 233
    db 225
    db 209
    db 209
    db 217
    db 209
    db 193
    db 185
    db 185
    db 177
    db 177
    db 169
    db 161
    db 161
    db 161
    db 6
FIGHTFOR_INSTRUMENT2 db 1
    db 209
    db 217
    db 241
    db 121
    db 64
    db 1
    db 241
    db 241
    db 233
    db 225
    db 217
FIGHTFOR_INSTRUMENT2_LOOP db 209
    db 7
    dw FIGHTFOR_INSTRUMENT2_LOOP
FIGHTFOR_INSTRUMENT3 db 1
    db 249
    db 113
    db 33
    db 32
    db 0
    db 113
    db 34
    db 0
    db 1
    db 105
    db 32
    db 80
    db 0
    db 89
    db 32
    db 192
    db 0
    db 73
    db 32
    db 144
    db 0
    db 57
    db 32
    db 192
    db 0
    db 41
    db 32
    db 240
    db 0
    db 25
    db 32
    db 48
    db 1
    db 6
FIGHTFOR_INSTRUMENT4 db 1
    db 248
    db 1
    db 113
    db 34
    db 246
    db 255
    db 97
    db 35
    db 226
    db 255
    db 216
    db 1
    db 80
    db 208
    db 1
    db 200
    db 1
    db 192
    db 1
    db 184
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
FIGHTFOR_INSTRUMENT5 db 1
    db 121
    db 18
    db 241
    db 233
    db 225
    db 217
    db 209
    db 201
    db 193
    db 185
    db 177
    db 169
    db 161
    db 153
    db 145
    db 137
    db 6
FIGHTFOR_INSTRUMENT6 db 1
FIGHTFOR_INSTRUMENT6_LOOP db 209
    db 7
    dw FIGHTFOR_INSTRUMENT6_LOOP
FIGHTFOR_INSTRUMENT7 db 1
    db 121
    db 33
    db 238
    db 255
    db 121
    db 33
    db 244
    db 255
    db 240
    db 1
    db 224
    db 2
    db 216
    db 2
    db 208
    db 1
    db 200
    db 1
    db 192
    db 1
    db 176
    db 1
    db 160
    db 1
    db 136
    db 1
    db 6
FIGHTFOR_INSTRUMENT8 db 1
FIGHTFOR_INSTRUMENT8_LOOP db 97
    db 64
    db 12
    db 225
    db 7
    dw FIGHTFOR_INSTRUMENT8_LOOP
FIGHTFOR_INSTRUMENT9 db 1
    db 34
    db 131
    db 34
    db 131
    db 34
    db 131
    db 34
    db 131
    db 34
    db 131
    db 34
    db 131
    db 34
    db 131
    db 6
FIGHTFOR_INSTRUMENT10 db 1
    db 249
    db 5
    db 136
    db 89
    db 1
    db 73
    db 1
    db 57
    db 1
    db 169
    db 153
    db 145
    db 137
    db 6
FIGHTFOR_INSTRUMENT11 db 1
    db 121
    db 64
    db 12
    db 113
    db 64
    db 1
    db 233
    db 97
    db 64
    db 1
    db 217
    db 209
    db 201
    db 193
    db 185
    db 177
    db 169
    db 161
    db 153
    db 145
    db 137
    db 6
FIGHTFOR_EFFECTBLOCKTABLE dw FIGHTFOR_EFFECTBLOCK_P4P0
    dw FIGHTFOR_EFFECTBLOCK_P4P5
    dw FIGHTFOR_EFFECTBLOCK_P6P1
    dw FIGHTFOR_EFFECTBLOCK_P24P24P64P1
    dw FIGHTFOR_EFFECTBLOCK_P24P53P32P2
    dw FIGHTFOR_EFFECTBLOCK_P5P0P6P1
    dw FIGHTFOR_EFFECTBLOCK_P5P1P6P0
    dw FIGHTFOR_EFFECTBLOCK_P5P0P8
FIGHTFOR_EFFECTBLOCK_P4P0 db 4
    db 0
FIGHTFOR_EFFECTBLOCK_P4P5 db 4
    db 5
FIGHTFOR_EFFECTBLOCK_P6P1 db 6
    db 1
FIGHTFOR_EFFECTBLOCK_P24P24P64P1 db 24
    db 24
    db 64
    db 1
FIGHTFOR_EFFECTBLOCK_P24P53P32P2 db 24
    db 53
    db 32
    db 2
FIGHTFOR_EFFECTBLOCK_P5P0P8 db 5
    db 0
    db 8
FIGHTFOR_EFFECTBLOCK_P5P0P6P1 db 5
    db 0
    db 6
    db 1
FIGHTFOR_EFFECTBLOCK_P5P1P6P0 db 5
    db 1
    db 6
    db 0
FIGHTFOR_SUBSONG0_START db 2
    db 0
    db 1
    db 1
    db 20
    db 6
    db 15
FIGHTFOR_SUBSONG0_LINKER dw FIGHTFOR_SUBSONG0_TRACK0
    dw FIGHTFOR_SUBSONG0_TRACK4
    dw FIGHTFOR_SUBSONG0_TRACK3
    dw FIGHTFOR_SUBSONG0_LINKERBLOCK0
FIGHTFOR_SUBSONG0_LINKER_LOOP dw FIGHTFOR_SUBSONG0_TRACK5
    dw FIGHTFOR_SUBSONG0_TRACK4
    dw FIGHTFOR_SUBSONG0_TRACK3
    dw FIGHTFOR_SUBSONG0_LINKERBLOCK0
    dw FIGHTFOR_SUBSONG0_TRACK5
    dw FIGHTFOR_SUBSONG0_TRACK4
    dw FIGHTFOR_SUBSONG0_TRACK3
    dw FIGHTFOR_SUBSONG0_LINKERBLOCK0
    dw FIGHTFOR_SUBSONG0_TRACK7
    dw FIGHTFOR_SUBSONG0_TRACK4
    dw FIGHTFOR_SUBSONG0_TRACK3
    dw FIGHTFOR_SUBSONG0_LINKERBLOCK0
    dw FIGHTFOR_SUBSONG0_TRACK7
    dw FIGHTFOR_SUBSONG0_TRACK4
    dw FIGHTFOR_SUBSONG0_TRACK3
    dw FIGHTFOR_SUBSONG0_LINKERBLOCK0
    dw FIGHTFOR_SUBSONG0_TRACK8
    dw FIGHTFOR_SUBSONG0_TRACK9
    dw FIGHTFOR_SUBSONG0_TRACK10
    dw FIGHTFOR_SUBSONG0_LINKERBLOCK0
    dw FIGHTFOR_SUBSONG0_TRACK8
    dw FIGHTFOR_SUBSONG0_TRACK4
    dw FIGHTFOR_SUBSONG0_TRACK3
    dw FIGHTFOR_SUBSONG0_LINKERBLOCK0
    dw FIGHTFOR_SUBSONG0_TRACK11
    dw FIGHTFOR_SUBSONG0_TRACK4
    dw FIGHTFOR_SUBSONG0_TRACK3
    dw FIGHTFOR_SUBSONG0_LINKERBLOCK0
    dw FIGHTFOR_SUBSONG0_TRACK11
    dw FIGHTFOR_SUBSONG0_TRACK4
    dw FIGHTFOR_SUBSONG0_TRACK3
    dw FIGHTFOR_SUBSONG0_LINKERBLOCK0
    dw FIGHTFOR_SUBSONG0_TRACK8
    dw FIGHTFOR_SUBSONG0_TRACK9
    dw FIGHTFOR_SUBSONG0_TRACK10
    dw FIGHTFOR_SUBSONG0_LINKERBLOCK0
    dw FIGHTFOR_SUBSONG0_TRACK12
    dw FIGHTFOR_SUBSONG0_TRACK9
    dw FIGHTFOR_SUBSONG0_TRACK13
    dw FIGHTFOR_SUBSONG0_LINKERBLOCK0
    dw FIGHTFOR_SUBSONG0_TRACK14
    dw FIGHTFOR_SUBSONG0_TRACK4
    dw FIGHTFOR_SUBSONG0_TRACK3
    dw FIGHTFOR_SUBSONG0_LINKERBLOCK0
    dw FIGHTFOR_SUBSONG0_TRACK15
    dw FIGHTFOR_SUBSONG0_TRACK4
    dw FIGHTFOR_SUBSONG0_TRACK3
    dw FIGHTFOR_SUBSONG0_LINKERBLOCK0
    dw FIGHTFOR_SUBSONG0_TRACK1
    dw FIGHTFOR_SUBSONG0_TRACK4
    dw FIGHTFOR_SUBSONG0_TRACK3
    dw FIGHTFOR_SUBSONG0_LINKERBLOCK0
    dw FIGHTFOR_SUBSONG0_TRACK2
    dw FIGHTFOR_SUBSONG0_TRACK9
    dw FIGHTFOR_SUBSONG0_TRACK13
    dw FIGHTFOR_SUBSONG0_LINKERBLOCK0
    dw FIGHTFOR_SUBSONG0_TRACK6
    dw FIGHTFOR_SUBSONG0_TRACK4
    dw FIGHTFOR_SUBSONG0_TRACK3
    dw FIGHTFOR_SUBSONG0_LINKERBLOCK0
    dw FIGHTFOR_SUBSONG0_TRACK16
    dw FIGHTFOR_SUBSONG0_TRACK4
    dw FIGHTFOR_SUBSONG0_TRACK3
    dw FIGHTFOR_SUBSONG0_LINKERBLOCK0
    dw FIGHTFOR_SUBSONG0_TRACK6
    dw FIGHTFOR_SUBSONG0_TRACK4
    dw FIGHTFOR_SUBSONG0_TRACK3
    dw FIGHTFOR_SUBSONG0_LINKERBLOCK0
    dw FIGHTFOR_SUBSONG0_TRACK16
    dw FIGHTFOR_SUBSONG0_TRACK4
    dw FIGHTFOR_SUBSONG0_TRACK3
    dw FIGHTFOR_SUBSONG0_LINKERBLOCK0
    dw FIGHTFOR_SUBSONG0_TRACK1
    dw FIGHTFOR_SUBSONG0_TRACK4
    dw FIGHTFOR_SUBSONG0_TRACK3
    dw FIGHTFOR_SUBSONG0_LINKERBLOCK0
    dw FIGHTFOR_SUBSONG0_TRACK2
    dw FIGHTFOR_SUBSONG0_TRACK4
    dw FIGHTFOR_SUBSONG0_TRACK3
    dw FIGHTFOR_SUBSONG0_LINKERBLOCK0
    db 0
    db 0
    dw FIGHTFOR_SUBSONG0_LINKER_LOOP
FIGHTFOR_SUBSONG0_LINKERBLOCK0 db 64
    db 0
    db 0
    db 0
    dw FIGHTFOR_SUBSONG0_SPEEDTRACK0
    dw FIGHTFOR_SUBSONG0_EVENTTRACK0
FIGHTFOR_SUBSONG0_TRACK0 db 61
    db 127
FIGHTFOR_SUBSONG0_TRACK1 db 225
    db 8
    db 2
    db 124
    db 3
    db 61
    db 127
FIGHTFOR_SUBSONG0_TRACK2 db 61
    db 47
    db 144
    db 11
    db 16
    db 62
    db 20
    db 20
    db 62
    db 21
    db 21
    db 62
    db 23
    db 23
    db 61
    db 127
FIGHTFOR_SUBSONG0_TRACK3 db 137
    db 10
    db 60
    db 149
    db 4
    db 60
    db 154
    db 3
    db 60
    db 153
    db 7
    db 60
    db 137
    db 10
    db 60
    db 149
    db 4
    db 60
    db 154
    db 3
    db 60
    db 153
    db 7
    db 60
    db 137
    db 10
    db 60
    db 149
    db 4
    db 60
    db 154
    db 3
    db 60
    db 153
    db 7
    db 60
    db 137
    db 10
    db 60
    db 149
    db 4
    db 60
    db 154
    db 3
    db 60
    db 153
    db 7
    db 60
    db 137
    db 10
    db 60
    db 149
    db 4
    db 60
    db 154
    db 3
    db 60
    db 153
    db 7
    db 60
    db 137
    db 3
    db 60
    db 149
    db 4
    db 60
    db 154
    db 3
    db 60
    db 153
    db 7
    db 60
    db 137
    db 10
    db 60
    db 149
    db 4
    db 60
    db 154
    db 3
    db 60
    db 153
    db 7
    db 60
    db 137
    db 3
    db 60
    db 149
    db 4
    db 60
    db 154
    db 3
    db 60
    db 153
    db 7
    db 61
    db 127
FIGHTFOR_SUBSONG0_TRACK4 db 149
    db 9
    db 60
    db 21
    db 21
    db 24
    db 60
    db 21
    db 60
    db 9
    db 60
    db 33
    db 60
    db 24
    db 60
    db 21
    db 60
    db 21
    db 60
    db 21
    db 60
    db 24
    db 60
    db 21
    db 60
    db 9
    db 60
    db 33
    db 33
    db 24
    db 60
    db 21
    db 60
    db 26
    db 60
    db 14
    db 60
    db 24
    db 60
    db 26
    db 60
    db 14
    db 60
    db 26
    db 60
    db 24
    db 60
    db 21
    db 60
    db 16
    db 60
    db 16
    db 60
    db 28
    db 60
    db 26
    db 60
    db 16
    db 60
    db 28
    db 60
    db 26
    db 60
    db 24
    db 61
    db 127
FIGHTFOR_SUBSONG0_TRACK5 db 225
    db 5
    db 5
    db 126
    db 36
    db 60
    db 35
    db 60
    db 33
    db 126
    db 38
    db 60
    db 40
    db 60
    db 36
    db 60
    db 31
    db 60
    db 28
    db 60
    db 31
    db 60
    db 33
    db 126
    db 33
    db 60
    db 35
    db 60
    db 36
    db 60
    db 33
    db 60
    db 40
    db 60
    db 33
    db 60
    db 36
    db 60
    db 43
    db 60
    db 42
    db 60
    db 38
    db 60
    db 28
    db 60
    db 35
    db 60
    db 40
    db 60
    db 35
    db 60
    db 38
    db 60
    db 36
    db 60
    db 35
    db 60
    db 31
    db 61
    db 127
FIGHTFOR_SUBSONG0_TRACK6 db 168
    db 6
    db 61
    db 8
    db 39
    db 60
    db 40
    db 60
    db 41
    db 60
    db 40
    db 61
    db 8
    db 44
    db 60
    db 41
    db 60
    db 40
    db 60
    db 38
    db 61
    db 14
    db 35
    db 60
    db 36
    db 60
    db 38
    db 60
    db 41
    db 60
    db 44
    db 45
    db 47
    db 45
    db 47
    db 48
    db 47
    db 50
    db 61
    db 127
FIGHTFOR_SUBSONG0_TRACK7 db 232
    db 2
    db 2
    db 61
    db 6
    db 36
    db 61
    db 6
    db 28
    db 60
    db 33
    db 60
    db 36
    db 60
    db 40
    db 61
    db 8
    db 42
    db 61
    db 6
    db 38
    db 61
    db 6
    db 28
    db 60
    db 32
    db 60
    db 35
    db 60
    db 40
    db 126
    db 35
    db 61
    db 127
FIGHTFOR_SUBSONG0_TRACK8 db 228
    db 1
    db 0
    db 60
    db 35
    db 60
    db 36
    db 60
    db 33
    db 60
    db 36
    db 60
    db 35
    db 60
    db 36
    db 60
    db 33
    db 60
    db 36
    db 60
    db 35
    db 60
    db 36
    db 60
    db 33
    db 60
    db 36
    db 60
    db 35
    db 60
    db 38
    db 60
    db 33
    db 60
    db 26
    db 60
    db 29
    db 60
    db 33
    db 60
    db 38
    db 60
    db 33
    db 60
    db 38
    db 60
    db 41
    db 60
    db 38
    db 60
    db 28
    db 60
    db 32
    db 60
    db 33
    db 60
    db 35
    db 60
    db 40
    db 60
    db 38
    db 60
    db 36
    db 60
    db 35
    db 61
    db 127
FIGHTFOR_SUBSONG0_TRACK9 db 149
    db 9
    db 60
    db 21
    db 21
    db 24
    db 60
    db 21
    db 60
    db 9
    db 60
    db 33
    db 60
    db 36
    db 60
    db 33
    db 60
    db 21
    db 60
    db 21
    db 60
    db 24
    db 60
    db 21
    db 60
    db 9
    db 60
    db 33
    db 33
    db 24
    db 60
    db 21
    db 60
    db 26
    db 60
    db 14
    db 60
    db 24
    db 60
    db 26
    db 60
    db 14
    db 60
    db 26
    db 60
    db 24
    db 60
    db 21
    db 60
    db 16
    db 60
    db 16
    db 60
    db 28
    db 60
    db 32
    db 60
    db 28
    db 60
    db 26
    db 60
    db 24
    db 60
    db 23
    db 61
    db 127
FIGHTFOR_SUBSONG0_TRACK10 db 137
    db 3
    db 60
    db 149
    db 4
    db 60
    db 154
    db 3
    db 60
    db 153
    db 7
    db 60
    db 137
    db 3
    db 60
    db 149
    db 4
    db 60
    db 154
    db 3
    db 60
    db 153
    db 7
    db 60
    db 137
    db 3
    db 60
    db 149
    db 4
    db 60
    db 154
    db 3
    db 60
    db 153
    db 7
    db 60
    db 137
    db 3
    db 60
    db 149
    db 4
    db 60
    db 154
    db 3
    db 60
    db 153
    db 7
    db 60
    db 137
    db 3
    db 60
    db 149
    db 4
    db 60
    db 154
    db 3
    db 60
    db 153
    db 7
    db 60
    db 137
    db 3
    db 60
    db 149
    db 4
    db 60
    db 154
    db 3
    db 60
    db 153
    db 7
    db 60
    db 137
    db 3
    db 60
    db 149
    db 4
    db 60
    db 154
    db 3
    db 60
    db 153
    db 7
    db 60
    db 180
    db 1
    db 60
    db 50
    db 60
    db 48
    db 60
    db 47
    db 61
    db 127
FIGHTFOR_SUBSONG0_TRACK11 db 232
    db 2
    db 7
    db 61
    db 8
    db 38
    db 60
    db 40
    db 60
    db 36
    db 60
    db 33
    db 61
    db 8
    db 28
    db 60
    db 33
    db 60
    db 36
    db 60
    db 124
    db 4
    db 61
    db 14
    db 40
    db 60
    db 104
    db 1
    db 60
    db 97
    db 0
    db 60
    db 97
    db 1
    db 60
    db 99
    db 0
    db 60
    db 99
    db 1
    db 60
    db 92
    db 0
    db 60
    db 92
    db 1
    db 61
    db 127
FIGHTFOR_SUBSONG0_TRACK12 db 164
    db 1
    db 60
    db 35
    db 60
    db 36
    db 60
    db 33
    db 60
    db 36
    db 60
    db 35
    db 60
    db 36
    db 60
    db 33
    db 60
    db 36
    db 60
    db 35
    db 60
    db 36
    db 60
    db 33
    db 60
    db 36
    db 60
    db 35
    db 60
    db 38
    db 60
    db 33
    db 60
    db 26
    db 60
    db 29
    db 60
    db 33
    db 60
    db 38
    db 60
    db 33
    db 60
    db 38
    db 60
    db 41
    db 60
    db 38
    db 60
    db 28
    db 32
    db 33
    db 32
    db 33
    db 35
    db 33
    db 35
    db 36
    db 35
    db 36
    db 38
    db 36
    db 38
    db 40
    db 45
    db 61
    db 127
FIGHTFOR_SUBSONG0_TRACK13 db 137
    db 3
    db 60
    db 149
    db 4
    db 60
    db 154
    db 3
    db 60
    db 153
    db 7
    db 60
    db 137
    db 3
    db 60
    db 149
    db 4
    db 60
    db 154
    db 3
    db 60
    db 153
    db 7
    db 60
    db 137
    db 3
    db 60
    db 149
    db 4
    db 60
    db 154
    db 3
    db 60
    db 153
    db 7
    db 60
    db 137
    db 3
    db 60
    db 149
    db 4
    db 60
    db 154
    db 3
    db 60
    db 153
    db 7
    db 60
    db 137
    db 3
    db 60
    db 149
    db 4
    db 60
    db 154
    db 3
    db 60
    db 153
    db 7
    db 60
    db 137
    db 3
    db 60
    db 149
    db 4
    db 60
    db 154
    db 3
    db 60
    db 153
    db 7
    db 60
    db 168
    db 3
    db 21
    db 62
    db 33
    db 21
    db 62
    db 35
    db 21
    db 62
    db 36
    db 21
    db 61
    db 127
FIGHTFOR_SUBSONG0_TRACK14 db 173
    db 5
    db 43
    db 40
    db 45
    db 43
    db 40
    db 38
    db 36
    db 38
    db 36
    db 33
    db 38
    db 36
    db 33
    db 38
    db 33
    db 33
    db 31
    db 28
    db 33
    db 31
    db 28
    db 33
    db 35
    db 36
    db 33
    db 28
    db 36
    db 33
    db 28
    db 36
    db 33
    db 38
    db 40
    db 41
    db 38
    db 40
    db 41
    db 38
    db 41
    db 38
    db 40
    db 41
    db 38
    db 40
    db 41
    db 40
    db 38
    db 40
    db 41
    db 40
    db 39
    db 40
    db 41
    db 40
    db 39
    db 40
    db 41
    db 40
    db 38
    db 36
    db 35
    db 33
    db 32
    db 61
    db 127
FIGHTFOR_SUBSONG0_TRACK15 db 173
    db 5
    db 47
    db 48
    db 45
    db 47
    db 48
    db 45
    db 48
    db 45
    db 47
    db 48
    db 45
    db 47
    db 48
    db 50
    db 48
    db 33
    db 35
    db 36
    db 33
    db 35
    db 36
    db 33
    db 35
    db 33
    db 35
    db 36
    db 33
    db 35
    db 36
    db 38
    db 36
    db 50
    db 52
    db 53
    db 50
    db 52
    db 53
    db 50
    db 53
    db 50
    db 52
    db 53
    db 50
    db 52
    db 53
    db 55
    db 53
    db 52
    db 50
    db 48
    db 47
    db 48
    db 47
    db 45
    db 44
    db 45
    db 44
    db 41
    db 40
    db 41
    db 40
    db 38
    db 35
    db 61
    db 127
FIGHTFOR_SUBSONG0_TRACK16 db 180
    db 6
    db 61
    db 8
    db 53
    db 60
    db 50
    db 60
    db 51
    db 60
    db 52
    db 61
    db 8
    db 55
    db 60
    db 53
    db 60
    db 52
    db 60
    db 50
    db 61
    db 6
    db 45
    db 61
    db 6
    db 53
    db 52
    db 50
    db 48
    db 50
    db 48
    db 47
    db 45
    db 47
    db 45
    db 44
    db 41
    db 44
    db 41
    db 40
    db 102
    db 6
    db 61
    db 127
FIGHTFOR_SUBSONG0_SPEEDTRACK0 db 10
    db 253
FIGHTFOR_SUBSONG0_EVENTTRACK0 db 255