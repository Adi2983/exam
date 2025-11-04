.class public final Lcom/google/zxing/oned/Code39Reader;
.super Lcom/google/zxing/oned/OneDReader;
.source "Code39Reader.java"


# static fields
.field private static final ALPHABET:[C

.field static final ALPHABET_STRING:Ljava/lang/String; = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"

.field private static final ASTERISK_ENCODING:I

.field static final CHARACTER_ENCODINGS:[I


# instance fields
.field private final extendedMode:Z

.field private final usingCheckDigit:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    const-string/jumbo v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/Code39Reader;->ALPHABET:[C

    .line 46
    const/16 v0, 0x2c

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    .line 54
    sget-object v0, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    const/16 v1, 0x27

    aget v0, v0, v1

    sput v0, Lcom/google/zxing/oned/Code39Reader;->ASTERISK_ENCODING:I

    return-void

    .line 46
    nop

    :array_0
    .array-data 4
        0x34
        0x121
        0x61
        0x160
        0x31
        0x130
        0x70
        0x25
        0x124
        0x64
        0x109
        0x49
        0x148
        0x19
        0x118
        0x58
        0xd
        0x10c
        0x4c
        0x1c
        0x103
        0x43
        0x142
        0x13
        0x112
        0x52
        0x7
        0x106
        0x46
        0x16
        0x181
        0xc1
        0x1c0
        0x91
        0x190
        0xd0
        0x85
        0x184
        0xc4
        0x94
        0xa8
        0xa2
        0x8a
        0x2a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/Code39Reader;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 64
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/zxing/oned/Code39Reader;->usingCheckDigit:Z

    .line 65
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/zxing/oned/Code39Reader;->extendedMode:Z

    .line 66
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/Code39Reader;
    move v1, p1

    .local v1, "usingCheckDigit":Z
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 76
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/zxing/oned/Code39Reader;->usingCheckDigit:Z

    .line 77
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/zxing/oned/Code39Reader;->extendedMode:Z

    .line 78
    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 5

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/Code39Reader;
    move v1, p1

    .local v1, "usingCheckDigit":Z
    move v2, p2

    .local v2, "extendedMode":Z
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 91
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Lcom/google/zxing/oned/Code39Reader;->usingCheckDigit:Z

    .line 92
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lcom/google/zxing/oned/Code39Reader;->extendedMode:Z

    .line 93
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
    .line 262
    move-object v0, p0

    .local v0, "encoded":Ljava/lang/CharSequence;
    move-object v7, v0

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move v1, v7

    .line 263
    .local v1, "length":I
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move v9, v1

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v7

    .line 264
    .local v2, "decoded":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    move v3, v7

    .local v3, "i":I
    :goto_0
    move v7, v3

    move v8, v1

    if-ge v7, v8, :cond_8

    .line 265
    move-object v7, v0

    move v8, v3

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    move v4, v7

    .line 266
    .local v4, "c":C
    move v7, v4

    const/16 v8, 0x2b

    if-eq v7, v8, :cond_0

    move v7, v4

    const/16 v8, 0x24

    if-eq v7, v8, :cond_0

    move v7, v4

    const/16 v8, 0x25

    if-eq v7, v8, :cond_0

    move v7, v4

    const/16 v8, 0x2f

    if-ne v7, v8, :cond_7

    .line 267
    :cond_0
    move-object v7, v0

    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    move v5, v7

    .line 268
    .local v5, "next":C
    const/4 v7, 0x0

    move v6, v7

    .line 269
    .local v6, "decodedChar":C
    move v7, v4

    sparse-switch v7, :sswitch_data_0

    .line 307
    :goto_1
    move-object v7, v2

    move v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 309
    add-int/lit8 v3, v3, 0x1

    .line 264
    .end local v5    # "next":C
    .end local v6    # "decodedChar":C
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 272
    .restart local v5    # "next":C
    .restart local v6    # "decodedChar":C
    :sswitch_0
    move v7, v5

    const/16 v8, 0x41

    if-lt v7, v8, :cond_1

    move v7, v5

    const/16 v8, 0x5a

    if-gt v7, v8, :cond_1

    .line 273
    move v7, v5

    const/16 v8, 0x20

    add-int/lit8 v7, v7, 0x20

    int-to-char v7, v7

    move v6, v7

    goto :goto_1

    .line 275
    :cond_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    .line 280
    :sswitch_1
    move v7, v5

    const/16 v8, 0x41

    if-lt v7, v8, :cond_2

    move v7, v5

    const/16 v8, 0x5a

    if-gt v7, v8, :cond_2

    .line 281
    move v7, v5

    const/16 v8, 0x40

    add-int/lit8 v7, v7, -0x40

    int-to-char v7, v7

    move v6, v7

    goto :goto_1

    .line 283
    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    .line 288
    :sswitch_2
    move v7, v5

    const/16 v8, 0x41

    if-lt v7, v8, :cond_3

    move v7, v5

    const/16 v8, 0x45

    if-gt v7, v8, :cond_3

    .line 289
    move v7, v5

    const/16 v8, 0x26

    add-int/lit8 v7, v7, -0x26

    int-to-char v7, v7

    move v6, v7

    goto :goto_1

    .line 290
    :cond_3
    move v7, v5

    const/16 v8, 0x46

    if-lt v7, v8, :cond_4

    move v7, v5

    const/16 v8, 0x57

    if-gt v7, v8, :cond_4

    .line 291
    move v7, v5

    const/16 v8, 0xb

    add-int/lit8 v7, v7, -0xb

    int-to-char v7, v7

    move v6, v7

    goto :goto_1

    .line 293
    :cond_4
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    .line 298
    :sswitch_3
    move v7, v5

    const/16 v8, 0x41

    if-lt v7, v8, :cond_5

    move v7, v5

    const/16 v8, 0x4f

    if-gt v7, v8, :cond_5

    .line 299
    move v7, v5

    const/16 v8, 0x20

    add-int/lit8 v7, v7, -0x20

    int-to-char v7, v7

    move v6, v7

    goto :goto_1

    .line 300
    :cond_5
    move v7, v5

    const/16 v8, 0x5a

    if-ne v7, v8, :cond_6

    .line 301
    const/16 v7, 0x3a

    move v6, v7

    goto :goto_1

    .line 303
    :cond_6
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    .line 311
    .end local v5    # "next":C
    .end local v6    # "decodedChar":C
    :cond_7
    move-object v7, v2

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    goto :goto_2

    .line 314
    .end local v4    # "c":C
    :cond_8
    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "encoded":Ljava/lang/CharSequence;
    return-object v0

    .line 269
    :sswitch_data_0
    .sparse-switch
        0x24 -> :sswitch_1
        0x25 -> :sswitch_2
        0x2b -> :sswitch_0
        0x2f -> :sswitch_3
    .end sparse-switch
.end method

.method private static findAsteriskPattern(Lcom/google/zxing/common/BitArray;[I)[I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 174
    move-object/from16 v0, p0

    .local v0, "row":Lcom/google/zxing/common/BitArray;
    move-object/from16 v1, p1

    .local v1, "counters":[I
    move-object v9, v0

    invoke-virtual {v9}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v9

    move v2, v9

    .line 175
    .local v2, "width":I
    move-object v9, v0

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v9

    move v3, v9

    .line 177
    .local v3, "rowOffset":I
    const/4 v9, 0x0

    move v4, v9

    .line 178
    .local v4, "counterPosition":I
    move v9, v3

    move v5, v9

    .line 179
    .local v5, "patternStart":I
    const/4 v9, 0x0

    move v6, v9

    .line 180
    .local v6, "isWhite":Z
    move-object v9, v1

    array-length v9, v9

    move v7, v9

    .line 182
    .local v7, "patternLength":I
    move v9, v3

    move v8, v9

    .local v8, "i":I
    :goto_0
    move v9, v8

    move v10, v2

    if-ge v9, v10, :cond_4

    .line 183
    move-object v9, v0

    move v10, v8

    invoke-virtual {v9, v10}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v9

    move v10, v6

    xor-int/2addr v9, v10

    if-eqz v9, :cond_0

    .line 184
    move-object v9, v1

    move v10, v4

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

    .line 182
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 186
    :cond_0
    move v9, v4

    move v10, v7

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    if-ne v9, v10, :cond_2

    .line 188
    move-object v9, v1

    invoke-static {v9}, Lcom/google/zxing/oned/Code39Reader;->toNarrowWidePattern([I)I

    move-result v9

    sget v10, Lcom/google/zxing/oned/Code39Reader;->ASTERISK_ENCODING:I

    if-ne v9, v10, :cond_1

    move-object v9, v0

    const/4 v10, 0x0

    move v11, v5

    move v12, v8

    move v13, v5

    sub-int/2addr v12, v13

    const/4 v13, 0x1

    shr-int/lit8 v12, v12, 0x1

    sub-int/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    move v11, v5

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 190
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

    .line 192
    .restart local v0    # "row":Lcom/google/zxing/common/BitArray;
    :cond_1
    move v9, v5

    move-object v10, v1

    const/4 v11, 0x0

    aget v10, v10, v11

    move-object v11, v1

    const/4 v12, 0x1

    aget v11, v11, v12

    add-int/2addr v10, v11

    add-int/2addr v9, v10

    move v5, v9

    .line 193
    move-object v9, v1

    const/4 v10, 0x2

    move-object v11, v1

    const/4 v12, 0x0

    move v13, v7

    const/4 v14, 0x2

    add-int/lit8 v13, v13, -0x2

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    move-object v9, v1

    move v10, v7

    const/4 v11, 0x2

    add-int/lit8 v10, v10, -0x2

    const/4 v11, 0x0

    aput v11, v9, v10

    .line 195
    move-object v9, v1

    move v10, v7

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    const/4 v11, 0x0

    aput v11, v9, v10

    .line 196
    add-int/lit8 v4, v4, -0x1

    .line 200
    :goto_2
    move-object v9, v1

    move v10, v4

    const/4 v11, 0x1

    aput v11, v9, v10

    .line 201
    move v9, v6

    if-nez v9, :cond_3

    const/4 v9, 0x1

    :goto_3
    move v6, v9

    goto :goto_1

    .line 198
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 201
    :cond_3
    const/4 v9, 0x0

    goto :goto_3

    .line 204
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
    .line 253
    move v0, p0

    .local v0, "pattern":I
    const/4 v2, 0x0

    move v1, v2

    .local v1, "i":I
    :goto_0
    move v2, v1

    sget-object v3, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 254
    sget-object v2, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    move v3, v1

    aget v2, v2, v3

    move v3, v0

    if-ne v2, v3, :cond_0

    .line 255
    sget-object v2, Lcom/google/zxing/oned/Code39Reader;->ALPHABET:[C

    move v3, v1

    aget-char v2, v2, v3

    move v0, v2

    .end local v0    # "pattern":I
    return v0

    .line 253
    .restart local v0    # "pattern":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 258
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2
.end method

.method private static toNarrowWidePattern([I)I
    .locals 13

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "counters":[I
    move-object v9, v0

    array-length v9, v9

    move v1, v9

    .line 211
    .local v1, "numCounters":I
    const/4 v9, 0x0

    move v2, v9

    .line 214
    .local v2, "maxNarrowCounter":I
    :cond_0
    const v9, 0x7fffffff

    move v4, v9

    .line 215
    .local v4, "minCounter":I
    move-object v9, v0

    move-object v5, v9

    .local v5, "arr$":[I
    move-object v9, v5

    array-length v9, v9

    move v6, v9

    .local v6, "len$":I
    const/4 v9, 0x0

    move v7, v9

    .local v7, "i$":I
    :goto_0
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_2

    move-object v9, v5

    move v10, v7

    aget v9, v9, v10

    move v8, v9

    .line 216
    .local v8, "counter":I
    move v9, v8

    move v10, v4

    if-ge v9, v10, :cond_1

    move v9, v8

    move v10, v2

    if-le v9, v10, :cond_1

    .line 217
    move v9, v8

    move v4, v9

    .line 215
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 220
    .end local v8    # "counter":I
    :cond_2
    move v9, v4

    move v2, v9

    .line 221
    const/4 v9, 0x0

    move v3, v9

    .line 222
    .local v3, "wideCounters":I
    const/4 v9, 0x0

    move v5, v9

    .line 223
    .local v5, "totalWideCountersWidth":I
    const/4 v9, 0x0

    move v6, v9

    .line 224
    .local v6, "pattern":I
    const/4 v9, 0x0

    move v7, v9

    .local v7, "i":I
    :goto_1
    move v9, v7

    move v10, v1

    if-ge v9, v10, :cond_4

    .line 225
    move-object v9, v0

    move v10, v7

    aget v9, v9, v10

    move v8, v9

    .line 226
    .restart local v8    # "counter":I
    move-object v9, v0

    move v10, v7

    aget v9, v9, v10

    move v10, v2

    if-le v9, v10, :cond_3

    .line 227
    move v9, v6

    const/4 v10, 0x1

    move v11, v1

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    move v12, v7

    sub-int/2addr v11, v12

    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    move v6, v9

    .line 228
    add-int/lit8 v3, v3, 0x1

    .line 229
    move v9, v5

    move v10, v8

    add-int/2addr v9, v10

    move v5, v9

    .line 224
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 232
    .end local v8    # "counter":I
    :cond_4
    move v9, v3

    const/4 v10, 0x3

    if-ne v9, v10, :cond_7

    .line 236
    const/4 v9, 0x0

    move v7, v9

    :goto_2
    move v9, v7

    move v10, v1

    if-ge v9, v10, :cond_6

    move v9, v3

    if-lez v9, :cond_6

    .line 237
    move-object v9, v0

    move v10, v7

    aget v9, v9, v10

    move v8, v9

    .line 238
    .restart local v8    # "counter":I
    move-object v9, v0

    move v10, v7

    aget v9, v9, v10

    move v10, v2

    if-le v9, v10, :cond_5

    .line 239
    add-int/lit8 v3, v3, -0x1

    .line 241
    move v9, v8

    const/4 v10, 0x1

    shl-int/lit8 v9, v9, 0x1

    move v10, v5

    if-lt v9, v10, :cond_5

    .line 242
    const/4 v9, -0x1

    move v0, v9

    .line 249
    .end local v0    # "counters":[I
    .end local v8    # "counter":I
    :goto_3
    return v0

    .line 236
    .restart local v0    # "counters":[I
    .restart local v8    # "counter":I
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 246
    .end local v8    # "counter":I
    :cond_6
    move v9, v6

    move v0, v9

    goto :goto_3

    .line 248
    :cond_7
    move v9, v3

    const/4 v10, 0x3

    if-gt v9, v10, :cond_0

    .line 249
    const/4 v9, -0x1

    move v0, v9

    goto :goto_3
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
    .line 99
    move-object/from16 v2, p0

    .local v2, "this":Lcom/google/zxing/oned/Code39Reader;
    move/from16 v3, p1

    .local v3, "rowNumber":I
    move-object/from16 v4, p2

    .local v4, "row":Lcom/google/zxing/common/BitArray;
    move-object/from16 v5, p3

    .local v5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    const/16 v18, 0x9

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    move-object/from16 v6, v18

    .line 100
    .local v6, "counters":[I
    move-object/from16 v18, v4

    move-object/from16 v19, v6

    invoke-static/range {v18 .. v19}, Lcom/google/zxing/oned/Code39Reader;->findAsteriskPattern(Lcom/google/zxing/common/BitArray;[I)[I

    move-result-object v18

    move-object/from16 v7, v18

    .line 102
    .local v7, "start":[I
    move-object/from16 v18, v4

    move-object/from16 v19, v7

    const/16 v20, 0x1

    aget v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v18

    move/from16 v8, v18

    .line 103
    .local v8, "nextStart":I
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v18

    move/from16 v9, v18

    .line 105
    .local v9, "end":I
    new-instance v18, Ljava/lang/StringBuilder;

    move-object/from16 v29, v18

    move-object/from16 v18, v29

    move-object/from16 v19, v29

    const/16 v20, 0x14

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v10, v18

    .line 109
    .local v10, "result":Ljava/lang/StringBuilder;
    :cond_0
    move-object/from16 v18, v4

    move/from16 v19, v8

    move-object/from16 v20, v6

    invoke-static/range {v18 .. v20}, Lcom/google/zxing/oned/Code39Reader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 110
    move-object/from16 v18, v6

    invoke-static/range {v18 .. v18}, Lcom/google/zxing/oned/Code39Reader;->toNarrowWidePattern([I)I

    move-result v18

    move/from16 v13, v18

    .line 111
    .local v13, "pattern":I
    move/from16 v18, v13

    if-gez v18, :cond_1

    .line 112
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v18

    throw v18

    .line 114
    :cond_1
    move/from16 v18, v13

    invoke-static/range {v18 .. v18}, Lcom/google/zxing/oned/Code39Reader;->patternToChar(I)C

    move-result v18

    move/from16 v11, v18

    .line 115
    .local v11, "decodedChar":C
    move-object/from16 v18, v10

    move/from16 v19, v11

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 116
    move/from16 v18, v8

    move/from16 v12, v18

    .line 117
    .local v12, "lastStart":I
    move-object/from16 v18, v6

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

    .line 118
    .local v17, "counter":I
    move/from16 v18, v8

    move/from16 v19, v17

    add-int v18, v18, v19

    move/from16 v8, v18

    .line 117
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 121
    .end local v17    # "counter":I
    :cond_2
    move-object/from16 v18, v4

    move/from16 v19, v8

    invoke-virtual/range {v18 .. v19}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v18

    move/from16 v8, v18

    .line 122
    move/from16 v18, v11

    const/16 v19, 0x2a

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 123
    move-object/from16 v18, v10

    move-object/from16 v19, v10

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->length()I

    move-result v19

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 126
    const/16 v18, 0x0

    move/from16 v13, v18

    .line 127
    .local v13, "lastPatternSize":I
    move-object/from16 v18, v6

    move-object/from16 v14, v18

    move-object/from16 v18, v14

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v15, v18

    const/16 v18, 0x0

    move/from16 v16, v18

    :goto_1
    move/from16 v18, v16

    move/from16 v19, v15

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    move-object/from16 v18, v14

    move/from16 v19, v16

    aget v18, v18, v19

    move/from16 v17, v18

    .line 128
    .restart local v17    # "counter":I
    move/from16 v18, v13

    move/from16 v19, v17

    add-int v18, v18, v19

    move/from16 v13, v18

    .line 127
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 130
    .end local v17    # "counter":I
    :cond_3
    move/from16 v18, v8

    move/from16 v19, v12

    sub-int v18, v18, v19

    move/from16 v19, v13

    sub-int v18, v18, v19

    move/from16 v14, v18

    .line 133
    .local v14, "whiteSpaceAfterEnd":I
    move/from16 v18, v8

    move/from16 v19, v9

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_4

    move/from16 v18, v14

    const/16 v19, 0x1

    shr-int/lit8 v18, v18, 0x1

    move/from16 v19, v13

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    .line 134
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v18

    throw v18

    .line 137
    :cond_4
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/google/zxing/oned/Code39Reader;->usingCheckDigit:Z

    move/from16 v18, v0

    if-eqz v18, :cond_7

    .line 138
    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    move/from16 v15, v18

    .line 139
    .local v15, "max":I
    const/16 v18, 0x0

    move/from16 v16, v18

    .line 140
    .local v16, "total":I
    const/16 v18, 0x0

    move/from16 v17, v18

    .local v17, "i":I
    :goto_2
    move/from16 v18, v17

    move/from16 v19, v15

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    .line 141
    move/from16 v18, v16

    const-string/jumbo v19, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"

    move-object/from16 v20, v10

    move/from16 v21, v17

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->indexOf(I)I

    move-result v19

    add-int v18, v18, v19

    move/from16 v16, v18

    .line 140
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 143
    :cond_5
    move-object/from16 v18, v10

    move/from16 v19, v15

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v18

    sget-object v19, Lcom/google/zxing/oned/Code39Reader;->ALPHABET:[C

    move/from16 v20, v16

    const/16 v21, 0x2b

    rem-int/lit8 v20, v20, 0x2b

    aget-char v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    .line 144
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v18

    throw v18

    .line 146
    :cond_6
    move-object/from16 v18, v10

    move/from16 v19, v15

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 149
    .end local v15    # "max":I
    .end local v16    # "total":I
    .end local v17    # "i":I
    :cond_7
    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->length()I

    move-result v18

    if-nez v18, :cond_8

    .line 151
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v18

    throw v18

    .line 155
    :cond_8
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/google/zxing/oned/Code39Reader;->extendedMode:Z

    move/from16 v18, v0

    if-eqz v18, :cond_9

    .line 156
    move-object/from16 v18, v10

    invoke-static/range {v18 .. v18}, Lcom/google/zxing/oned/Code39Reader;->decodeExtended(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v15, v18

    .line 161
    .local v15, "resultString":Ljava/lang/String;
    :goto_3
    move-object/from16 v18, v7

    const/16 v19, 0x1

    aget v18, v18, v19

    move-object/from16 v19, v7

    const/16 v20, 0x0

    aget v19, v19, v20

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move/from16 v16, v18

    .line 162
    .local v16, "left":F
    move/from16 v18, v8

    move/from16 v19, v12

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    div-float v18, v18, v19

    move/from16 v17, v18

    .line 163
    .local v17, "right":F
    new-instance v18, Lcom/google/zxing/Result;

    move-object/from16 v29, v18

    move-object/from16 v18, v29

    move-object/from16 v19, v29

    move-object/from16 v20, v15

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

    move/from16 v27, v16

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

    move/from16 v27, v17

    move/from16 v28, v3

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    invoke-direct/range {v26 .. v28}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v25, v23, v24

    sget-object v23, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    invoke-direct/range {v19 .. v23}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    move-object/from16 v2, v18

    .end local v2    # "this":Lcom/google/zxing/oned/Code39Reader;
    return-object v2

    .line 158
    .end local v15    # "resultString":Ljava/lang/String;
    .end local v16    # "left":F
    .end local v17    # "right":F
    .restart local v2    # "this":Lcom/google/zxing/oned/Code39Reader;
    :cond_9
    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v15, v18

    .restart local v15    # "resultString":Ljava/lang/String;
    goto/16 :goto_3
.end method
