DEATHTO_START db 65
    db 84
    db 50
    db 48
    dw DEATHTO_ARPEGGIOTABLE
    dw DEATHTO_PITCHTABLE
    dw DEATHTO_PITCHTABLE
    dw DEATHTO_EFFECTBLOCKTABLE
    dw DEATHTO_SUBSONG0_START
DEATHTO_ARPEGGIOTABLE dw DEATHTO_ARPEGGIO1
DEATHTO_ARPEGGIO1 db 2
    db 0
    db 0
    db 0
    db 0
    db 0
    db 0
    db 0
    db 1
    db 0
    db 255
    db 128
    dw DEATHTO_PITCHTABLE-7
DEATHTO_PITCHTABLE
DEATHTO_INSTRUMENTTABLE dw DEATHTO_EMPTYINSTRUMENT
    dw DEATHTO_INSTRUMENT1
    dw DEATHTO_INSTRUMENT2
    dw DEATHTO_INSTRUMENT3
    dw DEATHTO_INSTRUMENT4
    dw DEATHTO_INSTRUMENT5
    dw DEATHTO_INSTRUMENT6
    dw DEATHTO_INSTRUMENT7
    dw DEATHTO_INSTRUMENT8
    dw DEATHTO_INSTRUMENT9
    dw DEATHTO_INSTRUMENT10
    dw DEATHTO_INSTRUMENT11
    dw DEATHTO_INSTRUMENT12
    dw DEATHTO_INSTRUMENT13
    dw DEATHTO_INSTRUMENT14
    dw DEATHTO_INSTRUMENT15
DEATHTO_EMPTYINSTRUMENT db 0
DEATHTO_EMPTYINSTRUMENT_LOOP db 0
    db 6
DEATHTO_INSTRUMENT1 db 1
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
DEATHTO_INSTRUMENT2 db 1
    db 2
    db 35
    db 12
    db 2
    db 131
    db 2
    db 131
    db 2
    db 131
    db 2
    db 131
    db 2
    db 131
    db 2
    db 131
    db 2
    db 131
DEATHTO_INSTRUMENT2_LOOP db 209
    db 7
    dw DEATHTO_INSTRUMENT2_LOOP
DEATHTO_INSTRUMENT3 db 1
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
DEATHTO_INSTRUMENT3_LOOP db 209
    db 7
    dw DEATHTO_INSTRUMENT3_LOOP
DEATHTO_INSTRUMENT4 db 1
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
DEATHTO_INSTRUMENT5 db 2
    db 249
    db 241
    db 233
    db 225
    db 217
    db 209
    db 209
    db 209
    db 209
    db 209
    db 209
    db 209
    db 209
    db 201
    db 193
    db 185
    db 177
    db 177
    db 177
    db 177
    db 177
    db 177
    db 177
    db 177
    db 177
    db 177
    db 177
    db 177
    db 177
    db 177
    db 177
    db 6
DEATHTO_INSTRUMENT6 db 2
    db 121
    db 64
    db 12
    db 241
    db 113
    db 64
    db 12
    db 241
    db 113
    db 64
    db 12
    db 233
    db 105
    db 64
    db 12
    db 233
    db 105
    db 64
    db 12
    db 225
    db 97
    db 64
    db 12
    db 225
    db 97
    db 64
    db 12
    db 225
    db 89
    db 64
    db 12
    db 217
    db 89
    db 64
    db 12
    db 217
    db 89
    db 64
    db 12
    db 209
    db 81
    db 64
    db 12
    db 209
    db 81
    db 64
    db 12
    db 209
    db 81
    db 64
    db 12
    db 209
    db 81
    db 64
    db 12
    db 201
    db 73
    db 64
    db 12
    db 201
    db 73
    db 64
    db 12
    db 201
    db 65
    db 64
    db 12
    db 193
    db 65
    db 64
    db 12
    db 193
    db 65
    db 64
    db 12
    db 193
    db 57
    db 64
    db 12
    db 185
    db 57
    db 64
    db 12
    db 185
    db 57
    db 64
    db 12
    db 177
    db 49
    db 64
    db 12
    db 177
    db 49
    db 64
    db 12
    db 177
    db 41
    db 64
    db 12
    db 169
    db 41
    db 64
    db 12
    db 169
    db 41
    db 64
    db 12
    db 161
    db 33
    db 64
    db 12
    db 161
    db 33
    db 64
    db 12
    db 161
    db 33
    db 64
    db 12
    db 153
    db 25
    db 64
    db 12
    db 153
    db 25
    db 64
    db 12
    db 153
    db 25
    db 64
    db 12
    db 145
    db 17
    db 64
    db 12
    db 145
    db 17
    db 64
    db 12
    db 145
    db 9
    db 64
    db 12
    db 137
    db 9
    db 64
    db 12
    db 137
    db 9
    db 64
    db 12
    db 137
    db 9
    db 64
    db 12
    db 6
DEATHTO_INSTRUMENT7 db 1
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
DEATHTO_INSTRUMENT8 db 1
    db 241
    db 6
DEATHTO_INSTRUMENT9 db 1
DEATHTO_INSTRUMENT9_LOOP db 209
    db 7
    dw DEATHTO_INSTRUMENT9_LOOP
DEATHTO_INSTRUMENT10 db 1
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
DEATHTO_INSTRUMENT11 db 1
DEATHTO_INSTRUMENT11_LOOP db 97
    db 64
    db 12
    db 225
    db 7
    dw DEATHTO_INSTRUMENT11_LOOP
DEATHTO_INSTRUMENT12 db 1
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
DEATHTO_INSTRUMENT13 db 1
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
DEATHTO_INSTRUMENT14 db 1
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
DEATHTO_INSTRUMENT15 db 1
    db 0
    db 0
    db 0
    db 0
    db 0
    db 0
    db 97
    db 64
    db 12
    db 89
    db 64
    db 1
    db 201
    db 185
    db 169
    db 153
    db 137
    db 6
DEATHTO_EFFECTBLOCKTABLE dw DEATHTO_EFFECTBLOCK_P4P0
    dw DEATHTO_EFFECTBLOCK_P4P5
    dw DEATHTO_EFFECTBLOCK_P24P43P0P3
    dw DEATHTO_EFFECTBLOCK_P5P2P8
    dw DEATHTO_EFFECTBLOCK_P4P2
    dw DEATHTO_EFFECTBLOCK_P24P41P0P3
    dw DEATHTO_EFFECTBLOCK_P24P43P0P4
    dw DEATHTO_EFFECTBLOCK_P24P47P0P3
    dw DEATHTO_EFFECTBLOCK_P24P52P0P5
    dw DEATHTO_EFFECTBLOCK_P24P36P0P1
    dw DEATHTO_EFFECTBLOCK_P24P36P0P3
    dw DEATHTO_EFFECTBLOCK_P5P3P8
    dw DEATHTO_EFFECTBLOCK_P6P0
DEATHTO_EFFECTBLOCK_P4P0 db 4
    db 0
DEATHTO_EFFECTBLOCK_P4P2 db 4
    db 2
DEATHTO_EFFECTBLOCK_P4P5 db 4
    db 5
DEATHTO_EFFECTBLOCK_P6P0 db 6
    db 0
DEATHTO_EFFECTBLOCK_P5P2P8 db 5
    db 2
    db 8
DEATHTO_EFFECTBLOCK_P5P3P8 db 5
    db 3
    db 8
DEATHTO_EFFECTBLOCK_P24P41P0P3 db 24
    db 41
    db 0
    db 3
DEATHTO_EFFECTBLOCK_P24P43P0P3 db 24
    db 43
    db 0
    db 3
DEATHTO_EFFECTBLOCK_P24P43P0P4 db 24
    db 43
    db 0
    db 4
DEATHTO_EFFECTBLOCK_P24P47P0P3 db 24
    db 47
    db 0
    db 3
DEATHTO_EFFECTBLOCK_P24P52P0P5 db 24
    db 52
    db 0
    db 5
DEATHTO_EFFECTBLOCK_P24P36P0P1 db 24
    db 36
    db 0
    db 1
DEATHTO_EFFECTBLOCK_P24P36P0P3 db 24
    db 36
    db 0
    db 3
DEATHTO_SUBSONG0_START db 2
    db 0
    db 1
    db 2
    db 22
    db 6
    db 17
DEATHTO_SUBSONG0_LINKER dw DEATHTO_SUBSONG0_TRACK2
    dw DEATHTO_SUBSONG0_TRACK26
    dw DEATHTO_SUBSONG0_TRACK3
    dw DEATHTO_SUBSONG0_LINKERBLOCK0
    dw DEATHTO_SUBSONG0_TRACK5
    dw DEATHTO_SUBSONG0_TRACK27
    dw DEATHTO_SUBSONG0_TRACK4
    dw DEATHTO_SUBSONG0_LINKERBLOCK0
DEATHTO_SUBSONG0_LINKER_LOOP dw DEATHTO_SUBSONG0_TRACK22
    dw DEATHTO_SUBSONG0_TRACK26
    dw DEATHTO_SUBSONG0_TRACK7
    dw DEATHTO_SUBSONG0_LINKERBLOCK0
    dw DEATHTO_SUBSONG0_TRACK23
    dw DEATHTO_SUBSONG0_TRACK27
    dw DEATHTO_SUBSONG0_TRACK11
    dw DEATHTO_SUBSONG0_LINKERBLOCK0
    dw DEATHTO_SUBSONG0_TRACK22
    dw DEATHTO_SUBSONG0_TRACK16
    dw DEATHTO_SUBSONG0_TRACK13
    dw DEATHTO_SUBSONG0_LINKERBLOCK0
    dw DEATHTO_SUBSONG0_TRACK23
    dw DEATHTO_SUBSONG0_TRACK18
    dw DEATHTO_SUBSONG0_TRACK19
    dw DEATHTO_SUBSONG0_LINKERBLOCK0
    dw DEATHTO_SUBSONG0_TRACK22
    dw DEATHTO_SUBSONG0_TRACK31
    dw DEATHTO_SUBSONG0_TRACK13
    dw DEATHTO_SUBSONG0_LINKERBLOCK0
    dw DEATHTO_SUBSONG0_TRACK23
    dw DEATHTO_SUBSONG0_TRACK32
    dw DEATHTO_SUBSONG0_TRACK19
    dw DEATHTO_SUBSONG0_LINKERBLOCK0
    dw DEATHTO_SUBSONG0_TRACK28
    dw DEATHTO_SUBSONG0_TRACK25
    dw DEATHTO_SUBSONG0_TRACK24
    dw DEATHTO_SUBSONG0_LINKERBLOCK0
    dw DEATHTO_SUBSONG0_TRACK22
    dw DEATHTO_SUBSONG0_TRACK1
    dw DEATHTO_SUBSONG0_TRACK13
    dw DEATHTO_SUBSONG0_LINKERBLOCK0
    dw DEATHTO_SUBSONG0_TRACK23
    dw DEATHTO_SUBSONG0_TRACK6
    dw DEATHTO_SUBSONG0_TRACK19
    dw DEATHTO_SUBSONG0_LINKERBLOCK0
    dw DEATHTO_SUBSONG0_TRACK9
    dw DEATHTO_SUBSONG0_TRACK12
    dw DEATHTO_SUBSONG0_TRACK13
    dw DEATHTO_SUBSONG0_LINKERBLOCK0
    dw DEATHTO_SUBSONG0_TRACK10
    dw DEATHTO_SUBSONG0_TRACK29
    dw DEATHTO_SUBSONG0_TRACK19
    dw DEATHTO_SUBSONG0_LINKERBLOCK0
    dw DEATHTO_SUBSONG0_TRACK8
    dw DEATHTO_SUBSONG0_TRACK14
    dw DEATHTO_SUBSONG0_TRACK13
    dw DEATHTO_SUBSONG0_LINKERBLOCK0
    dw DEATHTO_SUBSONG0_TRACK8
    dw DEATHTO_SUBSONG0_TRACK30
    dw DEATHTO_SUBSONG0_TRACK19
    dw DEATHTO_SUBSONG0_LINKERBLOCK0
    dw DEATHTO_SUBSONG0_TRACK28
    dw DEATHTO_SUBSONG0_TRACK25
    dw DEATHTO_SUBSONG0_TRACK24
    dw DEATHTO_SUBSONG0_LINKERBLOCK0
    dw DEATHTO_SUBSONG0_TRACK2
    dw DEATHTO_SUBSONG0_TRACK17
    dw DEATHTO_SUBSONG0_TRACK7
    dw DEATHTO_SUBSONG0_LINKERBLOCK0
    dw DEATHTO_SUBSONG0_TRACK5
    dw DEATHTO_SUBSONG0_TRACK21
    dw DEATHTO_SUBSONG0_TRACK11
    dw DEATHTO_SUBSONG0_LINKERBLOCK0
    dw DEATHTO_SUBSONG0_TRACK22
    dw DEATHTO_SUBSONG0_TRACK15
    dw DEATHTO_SUBSONG0_TRACK13
    dw DEATHTO_SUBSONG0_LINKERBLOCK0
    dw DEATHTO_SUBSONG0_TRACK23
    dw DEATHTO_SUBSONG0_TRACK20
    dw DEATHTO_SUBSONG0_TRACK19
    dw DEATHTO_SUBSONG0_LINKERBLOCK0
    dw DEATHTO_SUBSONG0_TRACK22
    dw DEATHTO_SUBSONG0_TRACK16
    dw DEATHTO_SUBSONG0_TRACK13
    dw DEATHTO_SUBSONG0_LINKERBLOCK0
    dw DEATHTO_SUBSONG0_TRACK23
    dw DEATHTO_SUBSONG0_TRACK0
    dw DEATHTO_SUBSONG0_TRACK19
    dw DEATHTO_SUBSONG0_LINKERBLOCK0
    dw DEATHTO_SUBSONG0_TRACK28
    dw DEATHTO_SUBSONG0_TRACK25
    dw DEATHTO_SUBSONG0_TRACK24
    dw DEATHTO_SUBSONG0_LINKERBLOCK0
    db 0
    db 0
    dw DEATHTO_SUBSONG0_LINKER_LOOP
DEATHTO_SUBSONG0_LINKERBLOCK0 db 64
    db 0
    db 0
    db 0
    dw DEATHTO_SUBSONG0_SPEEDTRACK0
    dw DEATHTO_SUBSONG0_EVENTTRACK0
DEATHTO_SUBSONG0_TRACK0 db 157
    db 5
    db 254
    db 32
    db 60
    db 36
    db 60
    db 26
    db 60
    db 27
    db 60
    db 29
    db 60
    db 31
    db 126
    db 38
    db 126
    db 39
    db 126
    db 38
    db 126
    db 36
    db 60
    db 38
    db 60
    db 39
    db 60
    db 41
    db 60
    db 43
    db 60
    db 44
    db 60
    db 43
    db 60
    db 41
    db 60
    db 43
    db 126
    db 163
    db 11
    db 60
    db 36
    db 60
    db 38
    db 60
    db 41
    db 60
    db 43
    db 60
    db 47
    db 61
    db 127
DEATHTO_SUBSONG0_TRACK1 db 223
    db 9
    db 0
    db 61
    db 14
    db 30
    db 61
    db 14
    db 24
    db 61
    db 14
    db 124
    db 7
    db 61
    db 6
    db 30
    db 61
    db 127
DEATHTO_SUBSONG0_TRACK2 db 164
    db 3
    db 61
    db 14
    db 38
    db 61
    db 14
    db 39
    db 61
    db 14
    db 42
    db 61
    db 127
DEATHTO_SUBSONG0_TRACK3 db 140
    db 2
    db 60
    db 12
    db 60
    db 140
    db 12
    db 60
    db 140
    db 2
    db 60
    db 135
    db 13
    db 60
    db 140
    db 2
    db 60
    db 12
    db 60
    db 24
    db 60
    db 14
    db 60
    db 14
    db 60
    db 142
    db 12
    db 60
    db 142
    db 2
    db 60
    db 135
    db 13
    db 60
    db 142
    db 2
    db 60
    db 14
    db 60
    db 26
    db 60
    db 12
    db 60
    db 12
    db 60
    db 140
    db 12
    db 60
    db 140
    db 2
    db 60
    db 135
    db 13
    db 60
    db 140
    db 2
    db 60
    db 12
    db 60
    db 24
    db 60
    db 14
    db 60
    db 14
    db 60
    db 142
    db 12
    db 60
    db 142
    db 2
    db 60
    db 135
    db 13
    db 60
    db 142
    db 2
    db 60
    db 14
    db 60
    db 30
    db 61
    db 127
DEATHTO_SUBSONG0_TRACK4 db 136
    db 2
    db 60
    db 8
    db 60
    db 136
    db 12
    db 60
    db 136
    db 2
    db 60
    db 135
    db 13
    db 60
    db 136
    db 2
    db 60
    db 8
    db 60
    db 20
    db 60
    db 14
    db 60
    db 14
    db 60
    db 142
    db 12
    db 60
    db 142
    db 2
    db 60
    db 135
    db 13
    db 60
    db 142
    db 2
    db 60
    db 14
    db 60
    db 26
    db 60
    db 17
    db 60
    db 17
    db 60
    db 145
    db 12
    db 60
    db 145
    db 2
    db 60
    db 135
    db 13
    db 60
    db 145
    db 2
    db 60
    db 17
    db 60
    db 29
    db 60
    db 7
    db 60
    db 7
    db 60
    db 135
    db 12
    db 60
    db 135
    db 2
    db 60
    db 135
    db 13
    db 60
    db 135
    db 2
    db 60
    db 7
    db 60
    db 19
    db 61
    db 127
DEATHTO_SUBSONG0_TRACK5 db 164
    db 3
    db 61
    db 14
    db 38
    db 61
    db 14
    db 44
    db 61
    db 14
    db 43
    db 61
    db 6
    db 47
    db 61
    db 127
DEATHTO_SUBSONG0_TRACK6 db 148
    db 9
    db 61
    db 14
    db 26
    db 61
    db 14
    db 24
    db 61
    db 14
    db 124
    db 8
    db 61
    db 6
    db 35
    db 61
    db 127
DEATHTO_SUBSONG0_TRACK7 db 140
    db 2
    db 60
    db 12
    db 60
    db 154
    db 4
    db 60
    db 140
    db 2
    db 60
    db 140
    db 12
    db 60
    db 140
    db 2
    db 60
    db 154
    db 10
    db 60
    db 140
    db 2
    db 60
    db 14
    db 60
    db 14
    db 60
    db 154
    db 4
    db 60
    db 142
    db 2
    db 60
    db 142
    db 12
    db 60
    db 142
    db 2
    db 60
    db 154
    db 10
    db 60
    db 142
    db 2
    db 60
    db 12
    db 60
    db 12
    db 60
    db 154
    db 4
    db 60
    db 140
    db 2
    db 60
    db 140
    db 12
    db 60
    db 140
    db 2
    db 60
    db 154
    db 10
    db 60
    db 140
    db 2
    db 60
    db 14
    db 60
    db 14
    db 60
    db 154
    db 4
    db 60
    db 142
    db 2
    db 60
    db 142
    db 12
    db 60
    db 142
    db 2
    db 60
    db 154
    db 10
    db 60
    db 142
    db 2
    db 61
    db 127
DEATHTO_SUBSONG0_TRACK8 db 230
    db 14
    db 3
    db 60
    db 31
    db 60
    db 34
    db 60
    db 31
    db 60
    db 38
    db 60
    db 39
    db 60
    db 38
    db 60
    db 36
    db 60
    db 31
    db 60
    db 26
    db 60
    db 33
    db 60
    db 34
    db 60
    db 36
    db 60
    db 34
    db 60
    db 33
    db 60
    db 26
    db 60
    db 22
    db 60
    db 26
    db 60
    db 29
    db 60
    db 34
    db 60
    db 38
    db 60
    db 34
    db 60
    db 29
    db 60
    db 34
    db 60
    db 33
    db 60
    db 26
    db 60
    db 30
    db 60
    db 31
    db 60
    db 33
    db 60
    db 38
    db 60
    db 34
    db 60
    db 33
    db 61
    db 127
DEATHTO_SUBSONG0_TRACK9 db 164
    db 14
    db 60
    db 31
    db 60
    db 43
    db 60
    db 36
    db 60
    db 39
    db 60
    db 31
    db 60
    db 36
    db 60
    db 39
    db 60
    db 38
    db 60
    db 33
    db 60
    db 38
    db 60
    db 39
    db 60
    db 38
    db 60
    db 42
    db 60
    db 43
    db 60
    db 42
    db 60
    db 164
    db 15
    db 60
    db 31
    db 60
    db 43
    db 60
    db 36
    db 60
    db 39
    db 60
    db 31
    db 60
    db 36
    db 60
    db 39
    db 60
    db 38
    db 60
    db 33
    db 60
    db 30
    db 60
    db 31
    db 60
    db 33
    db 60
    db 38
    db 60
    db 34
    db 60
    db 161
    db 14
    db 61
    db 127
DEATHTO_SUBSONG0_TRACK10 db 160
    db 14
    db 60
    db 29
    db 60
    db 36
    db 60
    db 29
    db 60
    db 39
    db 60
    db 29
    db 60
    db 36
    db 60
    db 39
    db 60
    db 166
    db 15
    db 60
    db 33
    db 60
    db 38
    db 60
    db 39
    db 60
    db 38
    db 60
    db 33
    db 60
    db 30
    db 60
    db 26
    db 60
    db 164
    db 14
    db 60
    db 27
    db 60
    db 24
    db 60
    db 36
    db 60
    db 39
    db 60
    db 43
    db 60
    db 36
    db 60
    db 39
    db 60
    db 26
    db 60
    db 30
    db 60
    db 31
    db 60
    db 33
    db 60
    db 38
    db 60
    db 36
    db 60
    db 34
    db 60
    db 33
    db 61
    db 127
DEATHTO_SUBSONG0_TRACK11 db 136
    db 2
    db 60
    db 8
    db 60
    db 154
    db 4
    db 60
    db 136
    db 2
    db 60
    db 136
    db 12
    db 60
    db 136
    db 2
    db 60
    db 154
    db 10
    db 60
    db 136
    db 2
    db 60
    db 14
    db 60
    db 14
    db 60
    db 154
    db 4
    db 60
    db 142
    db 2
    db 60
    db 142
    db 12
    db 60
    db 142
    db 2
    db 60
    db 154
    db 10
    db 60
    db 142
    db 2
    db 60
    db 5
    db 60
    db 5
    db 60
    db 154
    db 4
    db 60
    db 133
    db 2
    db 60
    db 133
    db 12
    db 60
    db 133
    db 2
    db 60
    db 154
    db 10
    db 60
    db 133
    db 2
    db 60
    db 7
    db 60
    db 7
    db 60
    db 154
    db 4
    db 60
    db 135
    db 2
    db 60
    db 135
    db 12
    db 60
    db 135
    db 2
    db 60
    db 154
    db 10
    db 60
    db 139
    db 2
    db 61
    db 127
DEATHTO_SUBSONG0_TRACK12 db 167
    db 14
    db 60
    db 36
    db 60
    db 48
    db 60
    db 39
    db 60
    db 43
    db 60
    db 36
    db 60
    db 39
    db 60
    db 43
    db 60
    db 42
    db 60
    db 38
    db 60
    db 42
    db 60
    db 43
    db 60
    db 42
    db 60
    db 45
    db 60
    db 48
    db 60
    db 45
    db 60
    db 36
    db 60
    db 31
    db 60
    db 43
    db 60
    db 36
    db 60
    db 39
    db 60
    db 31
    db 60
    db 36
    db 60
    db 39
    db 60
    db 38
    db 60
    db 33
    db 60
    db 30
    db 60
    db 31
    db 60
    db 33
    db 60
    db 38
    db 60
    db 34
    db 60
    db 33
    db 61
    db 127
DEATHTO_SUBSONG0_TRACK13 db 135
    db 13
    db 60
    db 140
    db 2
    db 60
    db 154
    db 4
    db 60
    db 140
    db 12
    db 152
    db 2
    db 12
    db 60
    db 12
    db 60
    db 154
    db 10
    db 60
    db 140
    db 2
    db 147
    db 10
    db 135
    db 13
    db 60
    db 142
    db 2
    db 60
    db 154
    db 4
    db 60
    db 142
    db 12
    db 154
    db 2
    db 14
    db 60
    db 14
    db 60
    db 154
    db 10
    db 60
    db 142
    db 2
    db 60
    db 135
    db 13
    db 60
    db 140
    db 2
    db 60
    db 154
    db 4
    db 60
    db 140
    db 12
    db 152
    db 2
    db 12
    db 60
    db 12
    db 60
    db 154
    db 10
    db 60
    db 140
    db 2
    db 147
    db 10
    db 135
    db 13
    db 60
    db 142
    db 2
    db 60
    db 154
    db 4
    db 60
    db 142
    db 12
    db 154
    db 2
    db 14
    db 60
    db 14
    db 60
    db 154
    db 10
    db 60
    db 142
    db 2
    db 135
    db 13
    db 61
    db 127
DEATHTO_SUBSONG0_TRACK14 db 228
    db 6
    db 11
    db 126
    db 38
    db 126
    db 39
    db 126
    db 36
    db 126
    db 43
    db 126
    db 38
    db 126
    db 34
    db 126
    db 38
    db 126
    db 36
    db 126
    db 38
    db 126
    db 39
    db 126
    db 43
    db 126
    db 38
    db 126
    db 33
    db 126
    db 38
    db 61
    db 127
DEATHTO_SUBSONG0_TRACK15 db 164
    db 9
    db 61
    db 6
    db 39
    db 61
    db 6
    db 38
    db 61
    db 6
    db 31
    db 61
    db 6
    db 39
    db 61
    db 6
    db 36
    db 61
    db 6
    db 38
    db 61
    db 6
    db 31
    db 61
    db 127
DEATHTO_SUBSONG0_TRACK16 db 228
    db 5
    db 12
    db 61
    db 6
    db 38
    db 126
    db 39
    db 126
    db 38
    db 61
    db 6
    db 31
    db 61
    db 6
    db 36
    db 60
    db 38
    db 60
    db 39
    db 60
    db 36
    db 60
    db 43
    db 126
    db 36
    db 126
    db 38
    db 61
    db 6
    db 31
    db 61
    db 127
DEATHTO_SUBSONG0_TRACK17 db 176
    db 6
    db 61
    db 14
    db 176
    db 1
    db 44
    db 43
    db 41
    db 43
    db 41
    db 39
    db 38
    db 36
    db 60
    db 38
    db 39
    db 41
    db 60
    db 43
    db 60
    db 164
    db 6
    db 61
    db 14
    db 166
    db 1
    db 39
    db 42
    db 43
    db 45
    db 60
    db 43
    db 42
    db 38
    db 61
    db 127
DEATHTO_SUBSONG0_TRACK18 db 164
    db 5
    db 126
    db 36
    db 60
    db 38
    db 60
    db 39
    db 60
    db 36
    db 60
    db 38
    db 60
    db 39
    db 60
    db 38
    db 126
    db 43
    db 60
    db 44
    db 60
    db 43
    db 61
    db 6
    db 100
    db 0
    db 100
    db 1
    db 102
    db 0
    db 102
    db 1
    db 103
    db 0
    db 103
    db 1
    db 100
    db 0
    db 100
    db 1
    db 107
    db 0
    db 107
    db 1
    db 100
    db 0
    db 60
    db 47
    db 60
    db 44
    db 60
    db 43
    db 254
    db 26
    db 60
    db 27
    db 60
    db 29
    db 60
    db 31
    db 60
    db 35
    db 61
    db 127
DEATHTO_SUBSONG0_TRACK19 db 135
    db 13
    db 60
    db 136
    db 2
    db 60
    db 154
    db 4
    db 60
    db 136
    db 12
    db 148
    db 2
    db 8
    db 60
    db 8
    db 60
    db 154
    db 10
    db 60
    db 148
    db 2
    db 147
    db 10
    db 135
    db 13
    db 60
    db 142
    db 2
    db 60
    db 154
    db 4
    db 60
    db 142
    db 12
    db 154
    db 2
    db 14
    db 60
    db 14
    db 60
    db 154
    db 10
    db 60
    db 142
    db 2
    db 60
    db 135
    db 13
    db 60
    db 133
    db 2
    db 60
    db 154
    db 4
    db 60
    db 133
    db 12
    db 145
    db 2
    db 5
    db 60
    db 5
    db 60
    db 154
    db 10
    db 60
    db 145
    db 2
    db 147
    db 10
    db 135
    db 13
    db 60
    db 135
    db 2
    db 60
    db 154
    db 4
    db 60
    db 135
    db 12
    db 147
    db 2
    db 7
    db 60
    db 7
    db 60
    db 154
    db 10
    db 60
    db 147
    db 2
    db 135
    db 13
    db 61
    db 127
DEATHTO_SUBSONG0_TRACK20 db 160
    db 9
    db 61
    db 6
    db 36
    db 61
    db 6
    db 31
    db 61
    db 6
    db 38
    db 61
    db 6
    db 32
    db 61
    db 6
    db 29
    db 61
    db 6
    db 31
    db 61
    db 6
    db 35
    db 61
    db 127
DEATHTO_SUBSONG0_TRACK21 db 176
    db 6
    db 61
    db 14
    db 170
    db 1
    db 43
    db 45
    db 42
    db 48
    db 47
    db 45
    db 43
    db 42
    db 61
    db 6
    db 164
    db 6
    db 61
    db 14
    db 170
    db 1
    db 43
    db 44
    db 43
    db 44
    db 47
    db 48
    db 47
    db 48
    db 50
    db 51
    db 50
    db 47
    db 61
    db 127
DEATHTO_SUBSONG0_TRACK22 db 228
    db 14
    db 4
    db 60
    db 31
    db 60
    db 39
    db 60
    db 31
    db 60
    db 43
    db 60
    db 31
    db 60
    db 39
    db 60
    db 36
    db 60
    db 38
    db 60
    db 31
    db 60
    db 35
    db 60
    db 31
    db 60
    db 38
    db 60
    db 31
    db 60
    db 41
    db 60
    db 39
    db 60
    db 36
    db 60
    db 31
    db 60
    db 39
    db 60
    db 31
    db 60
    db 43
    db 60
    db 31
    db 60
    db 48
    db 60
    db 31
    db 60
    db 47
    db 60
    db 43
    db 60
    db 41
    db 60
    db 39
    db 60
    db 31
    db 60
    db 36
    db 60
    db 39
    db 60
    db 42
    db 61
    db 127
DEATHTO_SUBSONG0_TRACK23 db 224
    db 14
    db 4
    db 60
    db 29
    db 60
    db 36
    db 60
    db 32
    db 60
    db 39
    db 60
    db 36
    db 60
    db 38
    db 60
    db 32
    db 60
    db 26
    db 60
    db 31
    db 60
    db 35
    db 60
    db 31
    db 60
    db 38
    db 60
    db 31
    db 60
    db 35
    db 60
    db 36
    db 60
    db 32
    db 60
    db 36
    db 60
    db 39
    db 60
    db 36
    db 60
    db 43
    db 60
    db 39
    db 60
    db 36
    db 60
    db 32
    db 60
    db 31
    db 60
    db 35
    db 60
    db 38
    db 60
    db 35
    db 60
    db 43
    db 60
    db 39
    db 60
    db 38
    db 60
    db 35
    db 61
    db 127
DEATHTO_SUBSONG0_TRACK24 db 140
    db 2
    db 60
    db 12
    db 60
    db 154
    db 4
    db 60
    db 140
    db 12
    db 152
    db 2
    db 12
    db 60
    db 12
    db 60
    db 154
    db 10
    db 60
    db 150
    db 2
    db 147
    db 10
    db 135
    db 13
    db 60
    db 140
    db 2
    db 60
    db 154
    db 4
    db 60
    db 140
    db 12
    db 152
    db 2
    db 12
    db 60
    db 12
    db 60
    db 154
    db 10
    db 60
    db 147
    db 2
    db 60
    db 135
    db 13
    db 60
    db 140
    db 2
    db 60
    db 154
    db 4
    db 60
    db 140
    db 12
    db 152
    db 2
    db 12
    db 60
    db 12
    db 60
    db 154
    db 10
    db 60
    db 150
    db 2
    db 147
    db 10
    db 140
    db 2
    db 60
    db 140
    db 12
    db 152
    db 2
    db 15
    db 60
    db 143
    db 12
    db 155
    db 2
    db 17
    db 60
    db 145
    db 12
    db 157
    db 2
    db 19
    db 60
    db 147
    db 12
    db 143
    db 2
    db 61
    db 127
DEATHTO_SUBSONG0_TRACK25 db 235
    db 11
    db 3
    db 124
    db 9
    db 61
    db 45
    db 135
    db 13
    db 61
    db 127
DEATHTO_SUBSONG0_TRACK26 db 159
    db 9
    db 61
    db 12
    db 124
    db 2
    db 60
    db 26
    db 61
    db 12
    db 124
    db 5
    db 60
    db 24
    db 61
    db 12
    db 124
    db 2
    db 60
    db 26
    db 61
    db 127
DEATHTO_SUBSONG0_TRACK27 db 148
    db 9
    db 61
    db 12
    db 124
    db 10
    db 60
    db 19
    db 61
    db 14
    db 20
    db 61
    db 12
    db 124
    db 6
    db 60
    db 26
    db 61
    db 6
    db 19
    db 61
    db 127
DEATHTO_SUBSONG0_TRACK28 db 176
    db 8
    db 43
    db 36
    db 48
    db 43
    db 36
    db 48
    db 43
    db 36
    db 48
    db 43
    db 36
    db 48
    db 43
    db 46
    db 43
    db 48
    db 43
    db 36
    db 48
    db 43
    db 36
    db 48
    db 43
    db 36
    db 48
    db 43
    db 36
    db 48
    db 43
    db 51
    db 43
    db 48
    db 43
    db 36
    db 48
    db 43
    db 36
    db 48
    db 43
    db 36
    db 48
    db 43
    db 36
    db 48
    db 43
    db 55
    db 43
    db 135
    db 13
    db 7
    db 60
    db 7
    db 154
    db 4
    db 60
    db 135
    db 13
    db 154
    db 10
    db 60
    db 135
    db 13
    db 154
    db 10
    db 60
    db 26
    db 60
    db 135
    db 13
    db 154
    db 10
    db 61
    db 127
DEATHTO_SUBSONG0_TRACK29 db 164
    db 14
    db 60
    db 32
    db 60
    db 39
    db 60
    db 32
    db 60
    db 44
    db 60
    db 32
    db 60
    db 39
    db 60
    db 44
    db 60
    db 38
    db 60
    db 33
    db 60
    db 38
    db 60
    db 39
    db 60
    db 38
    db 60
    db 33
    db 60
    db 30
    db 60
    db 38
    db 60
    db 39
    db 60
    db 32
    db 60
    db 27
    db 60
    db 39
    db 60
    db 44
    db 60
    db 51
    db 60
    db 55
    db 60
    db 51
    db 60
    db 50
    db 60
    db 54
    db 60
    db 43
    db 60
    db 45
    db 60
    db 50
    db 60
    db 48
    db 60
    db 46
    db 60
    db 45
    db 61
    db 127
DEATHTO_SUBSONG0_TRACK30 db 164
    db 6
    db 126
    db 34
    db 126
    db 32
    db 126
    db 29
    db 126
    db 31
    db 126
    db 32
    db 126
    db 31
    db 126
    db 38
    db 126
    db 39
    db 126
    db 38
    db 126
    db 36
    db 126
    db 39
    db 126
    db 43
    db 126
    db 38
    db 126
    db 35
    db 61
    db 127
DEATHTO_SUBSONG0_TRACK31 db 164
    db 5
    db 254
    db 38
    db 60
    db 39
    db 254
    db 36
    db 60
    db 38
    db 126
    db 38
    db 60
    db 39
    db 60
    db 38
    db 61
    db 6
    db 36
    db 254
    db 38
    db 60
    db 39
    db 254
    db 43
    db 60
    db 38
    db 126
    db 147
    db 7
    db 60
    db 20
    db 60
    db 23
    db 60
    db 24
    db 60
    db 23
    db 60
    db 20
    db 61
    db 127
DEATHTO_SUBSONG0_TRACK32 db 157
    db 5
    db 254
    db 32
    db 60
    db 36
    db 60
    db 26
    db 60
    db 27
    db 60
    db 29
    db 60
    db 31
    db 126
    db 38
    db 126
    db 39
    db 126
    db 38
    db 126
    db 36
    db 60
    db 38
    db 60
    db 39
    db 60
    db 41
    db 60
    db 43
    db 60
    db 44
    db 60
    db 43
    db 60
    db 41
    db 60
    db 43
    db 61
    db 127
DEATHTO_SUBSONG0_SPEEDTRACK0 db 255
DEATHTO_SUBSONG0_EVENTTRACK0 db 255