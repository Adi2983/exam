.class public final Lcom/google/zxing/oned/Code93Reader;
.super Lcom/google/zxing/oned/OneDReader;
.source "Code93Reader.java"


# static fields
.field private static final ALPHABET:[C

.field private static final ALPHABET_STRING:Ljava/lang/String; = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

.field private static final ASTERISK_ENCODING:I

.field private static final CHARACTER_ENCODINGS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    const-string/jumbo v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/Code93Reader;->ALPHABET:[C

    .line 46
    const/16 v0, 0x30

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    .line 54
    sget-object v0, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    const/16 v1, 0x2f

    aget v0, v0, v1

    sput v0, Lcom/google/zxing/oned/Code93Reader;->ASTERISK_ENCODING:I

    return-void

    .line 46
    nop

    :array_0
    .array-data 4
        0x114
        0x148
        0x144
        0x142
        0x128
        0x124
        0x122
        0x150
        0x112
        0x10a
        0x1a8
        0x1a4
        0x1a2
        0x194
        0x192
        0x18a
        0x168
        0x164
        0x162
        0x134
        0x11a
        0x158
        0x14c
        0x146
        0x12c
        0x116
        0x1b4
        0x1b2
        0x1ac
        0x1a6
        0x196
        0x19a
        0x16c
        0x166
        0x136
        0x13a
        0x12e
        0x1d4
        0x1d2
        0x1ca
        0x16e
        0x176
        0x1ae
        0x126
        0x1da
        0x1d6
        0x132
        0x15e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/Code93Reader;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    return-void
.end method

.method private static checkChecksums(Ljava/lang/CharSequence;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 243
    move-object v0, p0

    .local v0, "result":Ljava/lang/CharSequence;
    move-object v2, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v1, v2

    .line 244
    .local v1, "length":I
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x2

    add-int/lit8 v3, v3, -0x2

    const/16 v4, 0x14

    invoke-static {v2, v3, v4}, Lcom/google/zxing/oned/Code93Reader;->checkOneChecksum(Ljava/lang/CharSequence;II)V

    .line 245
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    const/16 v4, 0xf

    invoke-static {v2, v3, v4}, Lcom/google/zxing/oned/Code93Reader;->checkOneChecksum(Ljava/lang/CharSequence;II)V

    .line 246
    return-void
.end method

.method private static checkOneChecksum(Ljava/lang/CharSequence;II)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "result":Ljava/lang/CharSequence;
    move v1, p1

    .local v1, "checkPosition":I
    move v2, p2

    .local v2, "weightMax":I
    const/4 v6, 0x1

    move v3, v6

    .line 251
    .local v3, "weight":I
    const/4 v6, 0x0

    move v4, v6

    .line 252
    .local v4, "total":I
    move v6, v1

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v5, v6

    .local v5, "i":I
    :goto_0
    move v6, v5

    if-ltz v6, :cond_1

    .line 253
    move v6, v4

    move v7, v3

    const-string/jumbo v8, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. $/+%abcd*"

    move-object v9, v0

    move v10, v5

    invoke-interface {v9, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    move v4, v6

    .line 254
    add-int/lit8 v3, v3, 0x1

    move v6, v3

    move v7, v2

    if-le v6, v7, :cond_0

    .line 255
    const/4 v6, 0x1

    move v3, v6

    .line 252
    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 258
    :cond_1
    move-object v6, v0

    move v7, v1

    invoke-interface {v6, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    sget-object v7, Lcom/google/zxing/oned/Code93Reader;->ALPHABET:[C

    move v8, v4

    const/16 v9, 0x2f

    rem-int/lit8 v8, v8, 0x2f

    aget-char v7, v7, v8

    if-eq v6, v7, :cond_2

    .line 259
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v6

    throw v6

    .line 261
    :cond_2
    return-void
.end method

.method private static decodeExtended(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "encoded":Ljava/lang/CharSequence;
    move-object v7, v0

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move v1, v7

    .line 185
    .local v1, "length":I
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move v9, v1

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v7

    .line 186
    .local v2, "decoded":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    move v3, v7

    .local v3, "i":I
    :goto_0
    move v7, v3

    move v8, v1

    if-ge v7, v8, :cond_8

    .line 187
    move-object v7, v0

    move v8, v3

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    move v4, v7

    .line 188
    .local v4, "c":C
    move v7, v4

    const/16 v8, 0x61

    if-lt v7, v8, :cond_7

    move v7, v4

    const/16 v8, 0x64

    if-gt v7, v8, :cond_7

    .line 189
    move v7, v3

    move v8, v1

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    if-lt v7, v8, :cond_0

    .line 190
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    .line 192
    :cond_0
    move-object v7, v0

    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    move v5, v7

    .line 193
    .local v5, "next":C
    const/4 v7, 0x0

    move v6, v7

    .line 194
    .local v6, "decodedChar":C
    move v7, v4

    packed-switch v7, :pswitch_data_0

    .line 232
    :goto_1
    move-object v7, v2

    move v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 234
    add-int/lit8 v3, v3, 0x1

    .line 186
    .end local v5    # "next":C
    .end local v6    # "decodedChar":C
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 197
    .restart local v5    # "next":C
    .restart local v6    # "decodedChar":C
    :pswitch_0
    move v7, v5

    const/16 v8, 0x41

    if-lt v7, v8, :cond_1

    move v7, v5

    const/16 v8, 0x5a

    if-gt v7, v8, :cond_1

    .line 198
    move v7, v5

    const/16 v8, 0x20

    add-int/lit8 v7, v7, 0x20

    int-to-char v7, v7

    move v6, v7

    goto :goto_1

    .line 200
    :cond_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    .line 205
    :pswitch_1
    move v7, v5

    const/16 v8, 0x41

    if-lt v7, v8, :cond_2

    move v7, v5

    const/16 v8, 0x5a

    if-gt v7, v8, :cond_2

    .line 206
    move v7, v5

    const/16 v8, 0x40

    add-int/lit8 v7, v7, -0x40

    int-to-char v7, v7

    move v6, v7

    goto :goto_1

    .line 208
    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    .line 213
    :pswitch_2
    move v7, v5

    const/16 v8, 0x41

    if-lt v7, v8, :cond_3

    move v7, v5

    const/16 v8, 0x45

    if-gt v7, v8, :cond_3

    .line 214
    move v7, v5

    const/16 v8, 0x26

    add-int/lit8 v7, v7, -0x26

    int-to-char v7, v7

    move v6, v7

    goto :goto_1

    .line 215
    :cond_3
    move v7, v5

    const/16 v8, 0x46

    if-lt v7, v8, :cond_4

    move v7, v5

    const/16 v8, 0x57

    if-gt v7, v8, :cond_4

    .line 216
    move v7, v5

    const/16 v8, 0xb

    add-int/lit8 v7, v7, -0xb

    int-to-char v7, v7

    move v6, v7

    goto :goto_1

    .line 218
    :cond_4
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    .line 223
    :pswitch_3
    move v7, v5

    const/16 v8, 0x41

    if-lt v7, v8, :cond_5

    move v7, v5

    const/16 v8, 0x4f

    if-gt v7, v8, :cond_5

    .line 224
    move v7, v5

    const/16 v8, 0x20

    add-int/lit8 v7, v7, -0x20

    int-to-char v7, v7

    move v6, v7

    goto :goto_1

    .line 225
    :cond_5
    move v7, v5

    const/16 v8, 0x5a

    if-ne v7, v8, :cond_6

    .line 226
    const/16 v7, 0x3a

    move v6, v7

    goto :goto_1

    .line 228
    :cond_6
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    .line 236
    .end local v5    # "next":C
    .end local v6    # "decodedChar":C
    :cond_7
    move-object v7, v2

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    goto :goto_2

    .line 239
    .end local v4    # "c":C
    :cond_8
    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "encoded":Ljava/lang/CharSequence;
    return-object v0

    .line 194
    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private static findAsteriskPattern(Lcom/google/zxing/common/BitArray;)[I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 115
    move-object/from16 v0, p0

    .local v0, "row":Lcom/google/zxing/common/BitArray;
    move-object v9, v0

    invoke-virtual {v9}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v9

    move v1, v9

    .line 116
    .local v1, "width":I
    move-object v9, v0

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v9

    move v2, v9

    .line 118
    .local v2, "rowOffset":I
    const/4 v9, 0x0

    move v3, v9

    .line 119
    .local v3, "counterPosition":I
    const/4 v9, 0x6

    new-array v9, v9, [I

    move-object v4, v9

    .line 120
    .local v4, "counters":[I
    move v9, v2

    move v5, v9

    .line 121
    .local v5, "patternStart":I
    const/4 v9, 0x0

    move v6, v9

    .line 122
    .local v6, "isWhite":Z
    move-object v9, v4

    array-length v9, v9

    move v7, v9

    .line 124
    .local v7, "patternLength":I
    move v9, v2

    move v8, v9

    .local v8, "i":I
    :goto_0
    move v9, v8

    move v10, v1

    if-ge v9, v10, :cond_4

    .line 125
    move-object v9, v0

    move v10, v8

    invoke-virtual {v9, v10}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    move v10, v6

    xor-int/2addr v9, v10

    if-eqz v9, :cond_0

    .line 126
    move-object v9, v4

    move v10, v3

    move-object v15, v9

    move/from16 v16, v10

    move-object v9, v15

    move/from16 v10, v16

    move-object v11, v15

    move/from16 v12, v16

    aget v11, v11, v12

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    aput v11, v9, v10

    .line 124
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 128
    :cond_0
    move v9, v3

    move v10, v7

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    if-ne v9, v10, :cond_2

    .line 129
    move-object v9, v4

    invoke-static {v9}, Lcom/google/zxing/oned/Code93Reader;->toPattern([I)I

    move-result v9

    sget v10, Lcom/google/zxing/oned/Code93Reader;->ASTERISK_ENCODING:I

    if-ne v9, v10, :cond_1

    .line 130
    const/4 v9, 0x2

    new-array v9, v9, [I

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x0

    move v12, v5

    aput v12, v10, v11

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x1

    move v12, v8

    aput v12, v10, v11

    move-object v0, v9

    .end local v0    # "row":Lcom/google/zxing/common/BitArray;
    return-object v0

    .line 132
    .restart local v0    # "row":Lcom/google/zxing/common/BitArray;
    :cond_1
    move v9, v5

    move-object v10, v4

    const/4 v11, 0x0

    aget v10, v10, v11

    move-object v11, v4

    const/4 v12, 0x1

    aget v11, v11, v12

    add-int/2addr v10, v11

    add-int/2addr v9, v10

    move v5, v9

    .line 133
    move-object v9, v4

    const/4 v10, 0x2

    move-object v11, v4

    const/4 v12, 0x0

    move v13, v7

    const/4 v14, 0x2

    add-int/lit8 v13, v13, -0x2

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    move-object v9, v4

    move v10, v7

    const/4 v11, 0x2

    add-int/lit8 v10, v10, -0x2

    const/4 v11, 0x0

    aput v11, v9, v10

    .line 135
    move-object v9, v4

    move v10, v7

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    const/4 v11, 0x0

    aput v11, v9, v10

    .line 136
    add-int/lit8 v3, v3, -0x1

    .line 140
    :goto_2
    move-object v9, v4

    move v10, v3

    const/4 v11, 0x1

    aput v11, v9, v10

    .line 141
    move v9, v6

    if-nez v9, :cond_3

    const/4 v9, 0x1

    :goto_3
    move v6, v9

    goto :goto_1

    .line 138
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 141
    :cond_3
    const/4 v9, 0x0

    goto :goto_3

    .line 144
    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9
.end method

.method private static patternToChar(I)C
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 175
    move v0, p0

    .local v0, "pattern":I
    const/4 v2, 0x0

    move v1, v2

    .local v1, "i":I
    :goto_0
    move v2, v1

    sget-object v3, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 176
    sget-object v2, Lcom/google/zxing/oned/Code93Reader;->CHARACTER_ENCODINGS:[I

    move v3, v1

    aget v2, v2, v3

    move v3, v0

    if-ne v2, v3, :cond_0

    .line 177
    sget-object v2, Lcom/google/zxing/oned/Code93Reader;->ALPHABET:[C

    move v3, v1

    aget-char v2, v2, v3

    move v0, v2

    .end local v0    # "pattern":I
    return v0

    .line 175
    .restart local v0    # "pattern":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2
.end method

.method private static toPattern([I)I
    .locals 10

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "counters":[I
    move-object v8, v0

    array-length v8, v8

    move v1, v8

    .line 149
    .local v1, "max":I
    const/4 v8, 0x0

    move v2, v8

    .line 150
    .local v2, "sum":I
    move-object v8, v0

    move-object v3, v8

    .local v3, "arr$":[I
    move-object v8, v3

    array-length v8, v8

    move v4, v8

    .local v4, "len$":I
    const/4 v8, 0x0

    move v5, v8

    .local v5, "i$":I
    :goto_0
    move v8, v5

    move v9, v4

    if-ge v8, v9, :cond_0

    move-object v8, v3

    move v9, v5

    aget v8, v8, v9

    move v6, v8

    .line 151
    .local v6, "counter":I
    move v8, v2

    move v9, v6

    add-int/2addr v8, v9

    move v2, v8

    .line 150
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 153
    .end local v6    # "counter":I
    :cond_0
    const/4 v8, 0x0

    move v3, v8

    .line 154
    .local v3, "pattern":I
    const/4 v8, 0x0

    move v4, v8

    .end local v5    # "i$":I
    .local v4, "i":I
    :goto_1
    move v8, v4

    move v9, v1

    if-ge v8, v9, :cond_6

    .line 155
    move-object v8, v0

    move v9, v4

    aget v8, v8, v9

    const/16 v9, 0x8

    shl-int/lit8 v8, v8, 0x8

    const/16 v9, 0x9

    mul-int/lit8 v8, v8, 0x9

    move v9, v2

    div-int/2addr v8, v9

    move v5, v8

    .line 156
    .local v5, "scaledShifted":I
    move v8, v5

    const/16 v9, 0x8

    shr-int/lit8 v8, v8, 0x8

    move v6, v8

    .line 157
    .local v6, "scaledUnshifted":I
    move v8, v5

    const/16 v9, 0xff

    and-int/lit16 v8, v8, 0xff

    const/16 v9, 0x7f

    if-le v8, v9, :cond_1

    .line 158
    add-int/lit8 v6, v6, 0x1

    .line 160
    :cond_1
    move v8, v6

    const/4 v9, 0x1

    if-lt v8, v9, :cond_2

    move v8, v6

    const/4 v9, 0x4

    if-le v8, v9, :cond_3

    .line 161
    :cond_2
    const/4 v8, -0x1

    move v0, v8

    .line 171
    .end local v0    # "counters":[I
    .end local v5    # "scaledShifted":I
    .end local v6    # "scaledUnshifted":I
    :goto_2
    return v0

    .line 163
    .restart local v0    # "counters":[I
    .restart local v5    # "scaledShifted":I
    .restart local v6    # "scaledUnshifted":I
    :cond_3
    move v8, v4

    const/4 v9, 0x1

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_5

    .line 164
    const/4 v8, 0x0

    move v7, v8

    .local v7, "j":I
    :goto_3
    move v8, v7

    move v9, v6

    if-ge v8, v9, :cond_4

    .line 165
    move v8, v3

    const/4 v9, 0x1

    shl-int/lit8 v8, v8, 0x1

    const/4 v9, 0x1

    or-int/lit8 v8, v8, 0x1

    move v3, v8

    .line 164
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 154
    .end local v7    # "j":I
    :cond_4
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 168
    :cond_5
    move v8, v3

    move v9, v6

    shl-int/2addr v8, v9

    move v3, v8

    goto :goto_4

    .line 171
    .end local v5    # "scaledShifted":I
    .end local v6    # "scaledUnshifted":I
    :cond_6
    move v8, v3

    move v0, v8

    goto :goto_2
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 60
    move-object/from16 v2, p0

    .local v2, "this":Lcom/google/zxing/oned/Code93Reader;
    move/from16 v3, p1

    .local v3, "rowNumber":I
    move-object/from16 v4, p2

    .local v4, "row":Lcom/google/zxing/common/BitArray;
    move-object/from16 v5, p3

    .local v5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object/from16 v18, v4

    invoke-static/range {v18 .. v18}, Lcom/google/zxing/oned/Code93Reader;->findAsteriskPattern(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v18

    move-object/from16 v6, v18

    .line 62
    .local v6, "start":[I
    move-object/from16 v18, v4

    move-object/from16 v19, v6

    const/16 v20, 0x1

    aget v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v18

    move/from16 v7, v18

    .line 63
    .local v7, "nextStart":I
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v18

    move/from16 v8, v18

    .line 65
    .local v8, "end":I
    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v29, v18

    move-object/from16 v18, v29

    move-object/from16 v19, v29

    const/16 v20, 0x14

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v9, v18

    .line 66
    .local v9, "result":Ljava/lang/StringBuilder;
    const/16 v18, 0x6

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    move-object/from16 v10, v18

    .line 70
    .local v10, "counters":[I
    :cond_0
    move-object/from16 v18, v4

    move/from16 v19, v7

    move-object/from16 v20, v10

    invoke-static/range {v18 .. v20}, Lcom/google/zxing/oned/Code93Reader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 71
    move-object/from16 v18, v10

    invoke-static/range {v18 .. v18}, Lcom/google/zxing/oned/Code93Reader;->toPattern([I)I

    move-result v18

    move/from16 v13, v18

    .line 72
    .local v13, "pattern":I
    move/from16 v18, v13

    if-gez v18, :cond_1

    .line 73
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v18

    throw v18

    .line 75
    :cond_1
    move/from16 v18, v13

    invoke-static/range {v18 .. v18}, Lcom/google/zxing/oned/Code93Reader;->patternToChar(I)C

    move-result v18

    move/from16 v11, v18

    .line 76
    .local v11, "decodedChar":C
    move-object/from16 v18, v9

    move/from16 v19, v11

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 77
    move/from16 v18, v7

    move/from16 v12, v18

    .line 78
    .local v12, "lastStart":I
    move-object/from16 v18, v10

    move-object/from16 v14, v18

    .local v14, "arr$":[I
    move-object/from16 v18, v14

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v15, v18

    .local v15, "len$":I
    const/16 v18, 0x0

    move/from16 v16, v18

    .local v16, "i$":I
    :goto_0
    move/from16 v18, v16

    move/from16 v19, v15

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    move-object/from16 v18, v14

    move/from16 v19, v16

    aget v18, v18, v19

    move/from16 v17, v18

    .line 79
    .local v17, "counter":I
    move/from16 v18, v7

    move/from16 v19, v17

    add-int v18, v18, v19

    move/from16 v7, v18

    .line 78
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 82
    .end local v17    # "counter":I
    :cond_2
    move-object/from16 v18, v4

    move/from16 v19, v7

    invoke-virtual/range {v18 .. v19}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v18

    move/from16 v7, v18

    .line 83
    move/from16 v18, v11

    const/16 v19, 0x2a

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 84
    move-object/from16 v18, v9

    move-object/from16 v19, v9

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 87
    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    move-object/from16 v18, v4

    move/from16 v19, v7

    invoke-virtual/range {v18 .. v19}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v18

    if-nez v18, :cond_4

    .line 88
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v18

    throw v18

    .line 91
    :cond_4
    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    .line 93
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v18

    throw v18

    .line 96
    :cond_5
    move-object/from16 v18, v9

    invoke-static/range {v18 .. v18}, Lcom/google/zxing/oned/Code93Reader;->checkChecksums(Ljava/lang/CharSequence;)V

    .line 98
    move-object/from16 v18, v9

    move-object/from16 v19, v9

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    const/16 v20, 0x2

    add-int/lit8 v19, v19, -0x2

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 100
    move-object/from16 v18, v9

    invoke-static/range {v18 .. v18}, Lcom/google/zxing/oned/Code93Reader;->decodeExtended(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v13, v18

    .line 102
    .local v13, "resultString":Ljava/lang/String;
    move-object/from16 v18, v6

    const/16 v19, 0x1

    aget v18, v18, v19

    move-object/from16 v19, v6

    const/16 v20, 0x0

    aget v19, v19, v20

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move/from16 v14, v18

    .line 103
    .local v14, "left":F
    move/from16 v18, v7

    move/from16 v19, v12

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move/from16 v15, v18

    .line 104
    .local v15, "right":F
    new-instance v18, Lcom/google/zxing/Result;

    move-object/from16 v29, v18

    move-object/from16 v18, v29

    move-object/from16 v19, v29

    move-object/from16 v20, v13

    const/16 v21, 0x0

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v22, v0

    move-object/from16 v29, v22

    move-object/from16 v22, v29

    move-object/from16 v23, v29

    const/16 v24, 0x0

    new-instance v25, Lcom/google/zxing/ResultPoint;

    move-object/from16 v29, v25

    move-object/from16 v25, v29

    move-object/from16 v26, v29

    move/from16 v27, v14

    move/from16 v28, v3

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    invoke-direct/range {v26 .. v28}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v25, v23, v24

    move-object/from16 v29, v22

    move-object/from16 v22, v29

    move-object/from16 v23, v29

    const/16 v24, 0x1

    new-instance v25, Lcom/google/zxing/ResultPoint;

    move-object/from16 v29, v25

    move-object/from16 v25, v29

    move-object/from16 v26, v29

    move/from16 v27, v15

    move/from16 v28, v3

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    invoke-direct/range {v26 .. v28}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v25, v23, v24

    sget-object v23, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    invoke-direct/range {v19 .. v23}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    move-object/from16 v2, v18

    .end local v2    # "this":Lcom/google/zxing/oned/Code93Reader;
    return-object v2
.end method
