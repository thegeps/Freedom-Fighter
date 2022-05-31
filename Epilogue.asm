EPILOGUE_START db 65
    db 84
    db 50
    db 48
    dw EPILOGUE_ARPEGGIOTABLE
    dw EPILOGUE_PITCHTABLE
    dw EPILOGUE_PITCHTABLE
    dw EPILOGUE_EFFECTBLOCKTABLE
    dw EPILOGUE_SUBSONG0_START
EPILOGUE_ARPEGGIOTABLE dw EPILOGUE_ARPEGGIO1
    dw EPILOGUE_ARPEGGIO2
    dw EPILOGUE_ARPEGGIO3
EPILOGUE_ARPEGGIO1 db 1
    db 0
    db 4
    db 12
    db 128
    dw EPILOGUE_ARPEGGIO1+1
EPILOGUE_ARPEGGIO2 db 1
    db 0
    db 3
    db 12
    db 128
    dw EPILOGUE_ARPEGGIO2+1
EPILOGUE_ARPEGGIO3 db 1
    db 1
    db 0
    db 255
    db 0
    db 128
    dw EPILOGUE_ARPEGGIO3+1
EPILOGUE_PITCHTABLE
EPILOGUE_INSTRUMENTTABLE dw EPILOGUE_EMPTYINSTRUMENT
    dw EPILOGUE_INSTRUMENT1
    dw EPILOGUE_INSTRUMENT2
    dw EPILOGUE_INSTRUMENT3
    dw EPILOGUE_INSTRUMENT4
    dw EPILOGUE_INSTRUMENT5
    dw EPILOGUE_INSTRUMENT6
    dw EPILOGUE_INSTRUMENT7
    dw EPILOGUE_INSTRUMENT8
    dw EPILOGUE_INSTRUMENT9
    dw EPILOGUE_INSTRUMENT10
EPILOGUE_EMPTYINSTRUMENT db 0
EPILOGUE_EMPTYINSTRUMENT_LOOP db 0
    db 6
EPILOGUE_INSTRUMENT1 db 1
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
EPILOGUE_INSTRUMENT2 db 1
    db 201
    db 201
    db 209
    db 209
    db 217
    db 217
    db 225
    db 225
    db 233
    db 233
    db 241
    db 241
    db 249
    db 249
    db 241
    db 233
    db 225
    db 217
    db 209
EPILOGUE_INSTRUMENT2_LOOP db 193
    db 7
    dw EPILOGUE_INSTRUMENT2_LOOP
EPILOGUE_INSTRUMENT3 db 1
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
EPILOGUE_INSTRUMENT3_LOOP db 225
    db 7
    dw EPILOGUE_INSTRUMENT3_LOOP
EPILOGUE_INSTRUMENT4 db 1
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
EPILOGUE_INSTRUMENT5 db 1
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
EPILOGUE_INSTRUMENT6 db 3
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
EPILOGUE_INSTRUMENT7 db 1
    db 232
    db 1
    db 184
    db 1
    db 144
    db 1
    db 6
EPILOGUE_INSTRUMENT8 db 2
    db 249
    db 241
    db 225
    db 185
    db 209
    db 177
    db 153
    db 6
EPILOGUE_INSTRUMENT9 db 1
    db 249
    db 241
    db 233
    db 225
EPILOGUE_INSTRUMENT9_LOOP db 89
    db 32
    db 255
    db 255
    db 89
    db 32
    db 254
    db 255
    db 89
    db 32
    db 253
    db 255
    db 89
    db 32
    db 254
    db 255
    db 89
    db 32
    db 255
    db 255
    db 217
    db 89
    db 32
    db 1
    db 0
    db 89
    db 32
    db 2
    db 0
    db 89
    db 32
    db 3
    db 0
    db 89
    db 32
    db 2
    db 0
    db 89
    db 32
    db 1
    db 0
    db 217
    db 7
    dw EPILOGUE_INSTRUMENT9_LOOP
EPILOGUE_INSTRUMENT10 db 2
EPILOGUE_INSTRUMENT10_LOOP db 233
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
    db 7
    dw EPILOGUE_INSTRUMENT10_LOOP
EPILOGUE_EFFECTBLOCKTABLE dw EPILOGUE_EFFECTBLOCK_P6P0
    dw EPILOGUE_EFFECTBLOCK_P8
    dw EPILOGUE_EFFECTBLOCK_P6P1
    dw EPILOGUE_EFFECTBLOCK_P24P45P0P1
    dw EPILOGUE_EFFECTBLOCK_P24P59P112P1
    dw EPILOGUE_EFFECTBLOCK_P24P47P32P1
    dw EPILOGUE_EFFECTBLOCK_P24P53P0P1
    dw EPILOGUE_EFFECTBLOCK_P24P45P64P1
    dw EPILOGUE_EFFECTBLOCK_P24P57P32P1
    dw EPILOGUE_EFFECTBLOCK_P6P2
EPILOGUE_EFFECTBLOCK_P8 db 8
EPILOGUE_EFFECTBLOCK_P6P0 db 6
    db 0
EPILOGUE_EFFECTBLOCK_P6P1 db 6
    db 1
EPILOGUE_EFFECTBLOCK_P6P2 db 6
    db 2
EPILOGUE_EFFECTBLOCK_P24P45P0P1 db 24
    db 45
    db 0
    db 1
EPILOGUE_EFFECTBLOCK_P24P59P112P1 db 24
    db 59
    db 112
    db 1
EPILOGUE_EFFECTBLOCK_P24P47P32P1 db 24
    db 47
    db 32
    db 1
EPILOGUE_EFFECTBLOCK_P24P53P0P1 db 24
    db 53
    db 0
    db 1
EPILOGUE_EFFECTBLOCK_P24P45P64P1 db 24
    db 45
    db 64
    db 1
EPILOGUE_EFFECTBLOCK_P24P57P32P1 db 24
    db 57
    db 32
    db 1
EPILOGUE_SUBSONG0_START db 2
    db 0
    db 1
    db 0
    db 13
    db 6
    db 16
EPILOGUE_SUBSONG0_LINKER
EPILOGUE_SUBSONG0_LINKER_LOOP dw EPILOGUE_SUBSONG0_TRACK0
    dw EPILOGUE_SUBSONG0_TRACK16
    dw EPILOGUE_SUBSONG0_TRACK4
    dw EPILOGUE_SUBSONG0_LINKERBLOCK0
    dw EPILOGUE_SUBSONG0_TRACK3
    dw EPILOGUE_SUBSONG0_TRACK17
    dw EPILOGUE_SUBSONG0_TRACK6
    dw EPILOGUE_SUBSONG0_LINKERBLOCK0
    dw EPILOGUE_SUBSONG0_TRACK0
    dw EPILOGUE_SUBSONG0_TRACK5
    dw EPILOGUE_SUBSONG0_TRACK4
    dw EPILOGUE_SUBSONG0_LINKERBLOCK0
    dw EPILOGUE_SUBSONG0_TRACK3
    dw EPILOGUE_SUBSONG0_TRACK7
    dw EPILOGUE_SUBSONG0_TRACK6
    dw EPILOGUE_SUBSONG0_LINKERBLOCK0
    dw EPILOGUE_SUBSONG0_TRACK0
    dw EPILOGUE_SUBSONG0_TRACK1
    dw EPILOGUE_SUBSONG0_TRACK4
    dw EPILOGUE_SUBSONG0_LINKERBLOCK0
    dw EPILOGUE_SUBSONG0_TRACK3
    dw EPILOGUE_SUBSONG0_TRACK2
    dw EPILOGUE_SUBSONG0_TRACK6
    dw EPILOGUE_SUBSONG0_LINKERBLOCK0
    dw EPILOGUE_SUBSONG0_TRACK0
    dw EPILOGUE_SUBSONG0_TRACK1
    dw EPILOGUE_SUBSONG0_TRACK4
    dw EPILOGUE_SUBSONG0_LINKERBLOCK0
    dw EPILOGUE_SUBSONG0_TRACK3
    dw EPILOGUE_SUBSONG0_TRACK2
    dw EPILOGUE_SUBSONG0_TRACK6
    dw EPILOGUE_SUBSONG0_LINKERBLOCK0
    dw EPILOGUE_SUBSONG0_TRACK0
    dw EPILOGUE_SUBSONG0_TRACK8
    dw EPILOGUE_SUBSONG0_TRACK4
    dw EPILOGUE_SUBSONG0_LINKERBLOCK0
    dw EPILOGUE_SUBSONG0_TRACK3
    dw EPILOGUE_SUBSONG0_TRACK9
    dw EPILOGUE_SUBSONG0_TRACK6
    dw EPILOGUE_SUBSONG0_LINKERBLOCK0
    dw EPILOGUE_SUBSONG0_TRACK12
    dw EPILOGUE_SUBSONG0_TRACK10
    dw EPILOGUE_SUBSONG0_TRACK11
    dw EPILOGUE_SUBSONG0_LINKERBLOCK0
    dw EPILOGUE_SUBSONG0_TRACK12
    dw EPILOGUE_SUBSONG0_TRACK15
    dw EPILOGUE_SUBSONG0_TRACK11
    dw EPILOGUE_SUBSONG0_LINKERBLOCK0
    dw EPILOGUE_SUBSONG0_TRACK12
    dw EPILOGUE_SUBSONG0_TRACK14
    dw EPILOGUE_SUBSONG0_TRACK11
    dw EPILOGUE_SUBSONG0_LINKERBLOCK0
    dw EPILOGUE_SUBSONG0_TRACK12
    dw EPILOGUE_SUBSONG0_TRACK13
    dw EPILOGUE_SUBSONG0_TRACK11
    dw EPILOGUE_SUBSONG0_LINKERBLOCK0
    db 0
    db 0
    dw EPILOGUE_SUBSONG0_LINKER
EPILOGUE_SUBSONG0_LINKERBLOCK0 db 64
    db 0
    db 0
    db 0
    dw EPILOGUE_SUBSONG0_SPEEDTRACK0
    dw EPILOGUE_SUBSONG0_EVENTTRACK0
EPILOGUE_SUBSONG0_TRACK0 db 148
    db 3
    db 60
    db 20
    db 60
    db 150
    db 4
    db 60
    db 148
    db 3
    db 60
    db 20
    db 60
    db 20
    db 60
    db 150
    db 6
    db 60
    db 148
    db 3
    db 60
    db 20
    db 60
    db 20
    db 60
    db 150
    db 4
    db 60
    db 148
    db 3
    db 60
    db 20
    db 60
    db 20
    db 60
    db 150
    db 6
    db 60
    db 148
    db 3
    db 60
    db 17
    db 60
    db 17
    db 60
    db 150
    db 4
    db 60
    db 145
    db 3
    db 60
    db 17
    db 60
    db 17
    db 60
    db 150
    db 6
    db 60
    db 145
    db 3
    db 60
    db 17
    db 60
    db 17
    db 60
    db 150
    db 4
    db 60
    db 145
    db 3
    db 60
    db 17
    db 60
    db 17
    db 60
    db 150
    db 6
    db 60
    db 145
    db 3
    db 61
    db 127
EPILOGUE_SUBSONG0_TRACK1 db 176
    db 2
    db 60
    db 44
    db 126
    db 39
    db 254
    db 49
    db 60
    db 48
    db 254
    db 44
    db 60
    db 46
    db 60
    db 48
    db 60
    db 46
    db 60
    db 44
    db 60
    db 43
    db 60
    db 41
    db 60
    db 36
    db 126
    db 32
    db 254
    db 43
    db 60
    db 41
    db 61
    db 6
    db 43
    db 60
    db 44
    db 60
    db 43
    db 60
    db 41
    db 60
    db 39
    db 61
    db 127
EPILOGUE_SUBSONG0_TRACK2 db 165
    db 2
    db 126
    db 32
    db 126
    db 41
    db 126
    db 37
    db 60
    db 39
    db 254
    db 43
    db 60
    db 44
    db 60
    db 46
    db 60
    db 44
    db 60
    db 46
    db 60
    db 49
    db 60
    db 48
    db 126
    db 159
    db 8
    db 60
    db 32
    db 60
    db 34
    db 60
    db 32
    db 60
    db 34
    db 60
    db 37
    db 60
    db 168
    db 9
    db 126
    db 41
    db 126
    db 43
    db 126
    db 40
    db 61
    db 127
EPILOGUE_SUBSONG0_TRACK3 db 141
    db 3
    db 60
    db 13
    db 60
    db 150
    db 4
    db 60
    db 141
    db 3
    db 60
    db 13
    db 60
    db 13
    db 60
    db 150
    db 6
    db 60
    db 141
    db 3
    db 60
    db 15
    db 60
    db 15
    db 60
    db 150
    db 4
    db 60
    db 143
    db 3
    db 60
    db 15
    db 60
    db 15
    db 60
    db 150
    db 6
    db 60
    db 143
    db 3
    db 60
    db 12
    db 60
    db 12
    db 60
    db 150
    db 4
    db 60
    db 140
    db 3
    db 60
    db 12
    db 60
    db 12
    db 60
    db 150
    db 6
    db 60
    db 140
    db 3
    db 60
    db 12
    db 60
    db 12
    db 60
    db 150
    db 4
    db 60
    db 140
    db 3
    db 60
    db 19
    db 60
    db 19
    db 60
    db 150
    db 6
    db 60
    db 152
    db 3
    db 61
    db 127
EPILOGUE_SUBSONG0_TRACK4 db 148
    db 5
    db 60
    db 167
    db 7
    db 60
    db 240
    db 8
    db 2
    db 60
    db 231
    db 7
    db 1
    db 60
    db 153
    db 5
    db 60
    db 167
    db 7
    db 60
    db 240
    db 8
    db 2
    db 60
    db 231
    db 7
    db 1
    db 60
    db 148
    db 5
    db 60
    db 167
    db 7
    db 60
    db 240
    db 8
    db 2
    db 60
    db 231
    db 7
    db 1
    db 60
    db 153
    db 5
    db 60
    db 167
    db 7
    db 60
    db 240
    db 8
    db 2
    db 60
    db 231
    db 7
    db 1
    db 60
    db 148
    db 5
    db 60
    db 167
    db 7
    db 60
    db 233
    db 8
    db 2
    db 60
    db 231
    db 7
    db 1
    db 60
    db 153
    db 5
    db 60
    db 167
    db 7
    db 60
    db 233
    db 8
    db 2
    db 60
    db 231
    db 7
    db 1
    db 60
    db 148
    db 5
    db 60
    db 167
    db 7
    db 60
    db 233
    db 8
    db 2
    db 60
    db 231
    db 7
    db 1
    db 60
    db 153
    db 5
    db 60
    db 167
    db 7
    db 60
    db 233
    db 8
    db 2
    db 60
    db 231
    db 7
    db 1
    db 61
    db 127
EPILOGUE_SUBSONG0_TRACK5 db 160
    db 8
    db 60
    db 36
    db 60
    db 39
    db 60
    db 36
    db 60
    db 44
    db 60
    db 36
    db 60
    db 39
    db 60
    db 37
    db 60
    db 36
    db 60
    db 32
    db 60
    db 27
    db 60
    db 32
    db 60
    db 37
    db 60
    db 36
    db 60
    db 34
    db 60
    db 32
    db 60
    db 29
    db 60
    db 32
    db 60
    db 36
    db 60
    db 32
    db 60
    db 41
    db 60
    db 36
    db 60
    db 37
    db 60
    db 36
    db 60
    db 29
    db 60
    db 32
    db 60
    db 36
    db 60
    db 32
    db 60
    db 37
    db 60
    db 36
    db 60
    db 34
    db 60
    db 32
    db 61
    db 127
EPILOGUE_SUBSONG0_TRACK6 db 148
    db 5
    db 60
    db 167
    db 7
    db 60
    db 229
    db 8
    db 0
    db 60
    db 231
    db 7
    db 1
    db 60
    db 153
    db 5
    db 60
    db 167
    db 7
    db 60
    db 229
    db 8
    db 0
    db 60
    db 231
    db 7
    db 1
    db 60
    db 148
    db 5
    db 60
    db 167
    db 7
    db 60
    db 231
    db 8
    db 0
    db 60
    db 231
    db 7
    db 1
    db 60
    db 153
    db 5
    db 60
    db 167
    db 7
    db 60
    db 231
    db 8
    db 0
    db 60
    db 231
    db 7
    db 1
    db 60
    db 148
    db 5
    db 60
    db 167
    db 7
    db 60
    db 228
    db 8
    db 0
    db 60
    db 231
    db 7
    db 1
    db 60
    db 153
    db 5
    db 60
    db 167
    db 7
    db 60
    db 228
    db 8
    db 0
    db 60
    db 231
    db 7
    db 1
    db 60
    db 148
    db 5
    db 60
    db 167
    db 7
    db 60
    db 228
    db 8
    db 0
    db 60
    db 231
    db 7
    db 1
    db 60
    db 153
    db 5
    db 60
    db 167
    db 7
    db 60
    db 235
    db 8
    db 0
    db 60
    db 231
    db 7
    db 1
    db 61
    db 127
EPILOGUE_SUBSONG0_TRACK7 db 153
    db 8
    db 60
    db 29
    db 60
    db 32
    db 60
    db 29
    db 60
    db 37
    db 60
    db 29
    db 60
    db 32
    db 60
    db 31
    db 60
    db 27
    db 60
    db 31
    db 60
    db 32
    db 60
    db 31
    db 60
    db 34
    db 60
    db 31
    db 60
    db 39
    db 60
    db 34
    db 60
    db 36
    db 60
    db 31
    db 60
    db 28
    db 60
    db 24
    db 60
    db 28
    db 60
    db 29
    db 60
    db 32
    db 60
    db 31
    db 60
    db 36
    db 38
    db 40
    db 60
    db 40
    db 41
    db 43
    db 60
    db 43
    db 44
    db 46
    db 60
    db 49
    db 48
    db 46
    db 44
    db 61
    db 127
EPILOGUE_SUBSONG0_TRACK8 db 160
    db 9
    db 60
    db 31
    db 60
    db 27
    db 60
    db 24
    db 60
    db 25
    db 126
    db 24
    db 60
    db 22
    db 60
    db 24
    db 60
    db 27
    db 60
    db 24
    db 60
    db 27
    db 60
    db 32
    db 60
    db 34
    db 60
    db 36
    db 60
    db 32
    db 60
    db 41
    db 126
    db 34
    db 60
    db 36
    db 60
    db 37
    db 36
    db 34
    db 60
    db 32
    db 60
    db 34
    db 60
    db 36
    db 126
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
    db 39
    db 61
    db 127
EPILOGUE_SUBSONG0_TRACK9 db 165
    db 9
    db 60
    db 32
    db 60
    db 31
    db 60
    db 29
    db 60
    db 32
    db 34
    db 32
    db 34
    db 36
    db 60
    db 32
    db 60
    db 36
    db 60
    db 34
    db 60
    db 32
    db 60
    db 29
    db 60
    db 32
    db 34
    db 32
    db 34
    db 36
    db 60
    db 39
    db 60
    db 41
    db 60
    db 40
    db 60
    db 36
    db 60
    db 28
    db 60
    db 29
    db 60
    db 28
    db 60
    db 24
    db 60
    db 28
    db 60
    db 34
    db 36
    db 40
    db 41
    db 43
    db 44
    db 46
    db 48
    db 49
    db 55
    db 53
    db 52
    db 48
    db 61
    db 127
EPILOGUE_SUBSONG0_TRACK10 db 233
    db 9
    db 1
    db 61
    db 12
    db 124
    db 4
    db 61
    db 13
    db 124
    db 8
    db 61
    db 17
    db 37
    db 60
    db 157
    db 1
    db 60
    db 164
    db 9
    db 60
    db 157
    db 1
    db 60
    db 160
    db 9
    db 60
    db 157
    db 1
    db 60
    db 155
    db 9
    db 60
    db 157
    db 1
    db 61
    db 127
EPILOGUE_SUBSONG0_TRACK11 db 148
    db 5
    db 60
    db 167
    db 7
    db 60
    db 229
    db 8
    db 0
    db 60
    db 231
    db 7
    db 1
    db 60
    db 153
    db 5
    db 60
    db 167
    db 7
    db 60
    db 229
    db 8
    db 0
    db 60
    db 231
    db 7
    db 1
    db 60
    db 148
    db 5
    db 60
    db 167
    db 7
    db 60
    db 231
    db 8
    db 0
    db 60
    db 231
    db 7
    db 1
    db 60
    db 153
    db 5
    db 60
    db 167
    db 7
    db 60
    db 231
    db 8
    db 0
    db 60
    db 231
    db 7
    db 1
    db 60
    db 148
    db 5
    db 60
    db 167
    db 7
    db 60
    db 229
    db 8
    db 0
    db 60
    db 231
    db 7
    db 1
    db 60
    db 153
    db 5
    db 60
    db 167
    db 7
    db 60
    db 229
    db 8
    db 0
    db 60
    db 231
    db 7
    db 1
    db 60
    db 148
    db 5
    db 60
    db 167
    db 7
    db 60
    db 229
    db 8
    db 0
    db 60
    db 231
    db 7
    db 1
    db 60
    db 153
    db 5
    db 60
    db 167
    db 7
    db 60
    db 233
    db 8
    db 2
    db 60
    db 231
    db 7
    db 1
    db 61
    db 127
EPILOGUE_SUBSONG0_TRACK12 db 141
    db 3
    db 60
    db 13
    db 60
    db 150
    db 4
    db 60
    db 141
    db 3
    db 60
    db 13
    db 60
    db 13
    db 60
    db 150
    db 6
    db 60
    db 141
    db 3
    db 60
    db 15
    db 60
    db 15
    db 60
    db 150
    db 4
    db 60
    db 143
    db 3
    db 60
    db 15
    db 60
    db 15
    db 60
    db 150
    db 6
    db 60
    db 143
    db 3
    db 60
    db 10
    db 60
    db 10
    db 60
    db 150
    db 4
    db 60
    db 138
    db 3
    db 60
    db 10
    db 60
    db 10
    db 60
    db 150
    db 6
    db 60
    db 138
    db 3
    db 60
    db 10
    db 60
    db 10
    db 60
    db 150
    db 4
    db 60
    db 138
    db 3
    db 60
    db 10
    db 60
    db 150
    db 6
    db 60
    db 150
    db 3
    db 60
    db 150
    db 6
    db 61
    db 127
EPILOGUE_SUBSONG0_TRACK13 db 181
    db 10
    db 61
    db 14
    db 124
    db 3
    db 124
    db 9
    db 61
    db 13
    db 233
    db 2
    db 1
    db 61
    db 6
    db 43
    db 61
    db 6
    db 44
    db 61
    db 6
    db 37
    db 61
    db 127
EPILOGUE_SUBSONG0_TRACK14 db 221
    db 9
    db 1
    db 61
    db 6
    db 177
    db 10
    db 61
    db 6
    db 159
    db 9
    db 61
    db 6
    db 177
    db 10
    db 61
    db 6
    db 169
    db 9
    db 61
    db 11
    db 124
    db 6
    db 62
    db 37
    db 60
    db 157
    db 1
    db 60
    db 164
    db 9
    db 60
    db 157
    db 1
    db 60
    db 160
    db 9
    db 60
    db 157
    db 1
    db 60
    db 155
    db 9
    db 60
    db 157
    db 1
    db 61
    db 127
EPILOGUE_SUBSONG0_TRACK15 db 157
    db 9
    db 61
    db 11
    db 124
    db 5
    db 61
    db 13
    db 32
    db 60
    db 29
    db 61
    db 16
    db 27
    db 60
    db 157
    db 1
    db 60
    db 160
    db 9
    db 60
    db 157
    db 1
    db 60
    db 162
    db 9
    db 60
    db 157
    db 1
    db 60
    db 165
    db 9
    db 60
    db 164
    db 1
    db 61
    db 127
EPILOGUE_SUBSONG0_TRACK16 db 167
    db 9
    db 61
    db 24
    db 36
    db 62
    db 34
    db 62
    db 36
    db 61
    db 26
    db 37
    db 60
    db 36
    db 61
    db 127
EPILOGUE_SUBSONG0_TRACK17 db 160
    db 9
    db 126
    db 124
    db 7
    db 61
    db 10
    db 31
    db 61
    db 6
    db 37
    db 61
    db 6
    db 36
    db 61
    db 14
    db 159
    db 8
    db 60
    db 29
    db 60
    db 28
    db 60
    db 25
    db 60
    db 24
    db 60
    db 28
    db 60
    db 29
    db 60
    db 31
    db 61
    db 127
EPILOGUE_SUBSONG0_SPEEDTRACK0 db 14
    db 253
EPILOGUE_SUBSONG0_EVENTTRACK0 db 255