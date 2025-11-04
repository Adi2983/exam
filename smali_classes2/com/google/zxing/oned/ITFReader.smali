.class public final Lcom/google/zxing/oned/ITFReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "ITFReader.java"


# static fields
.field private static final DEFAULT_ALLOWED_LENGTHS:[I

.field private static final END_PATTERN_REVERSED:[I

.field private static final MAX_AVG_VARIANCE:I = 0x6b

.field private static final MAX_INDIVIDUAL_VARIANCE:I = 0xcc

.field private static final N:I = 0x1

.field static final PATTERNS:[[I

.field private static final START_PATTERN:[I

.field private static final W:I = 0x3


# instance fields
.field private narrowLineWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 53
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/ITFReader;->DEFAULT_ALLOWED_LENGTHS:[I

    .line 64
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/oned/ITFReader;->START_PATTERN:[I

    .line 65
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/zxing/oned/ITFReader;->END_PATTERN_REVERSED:[I

    .line 70
    const/16 v0, 0xa

    new-array v0, v0, [[I

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x0

    const/4 v3, 0x5

    new-array v3, v3, [I

    fill-array-data v3, :array_3

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x1

    const/4 v3, 0x5

    new-array v3, v3, [I

    fill-array-data v3, :array_4

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x2

    const/4 v3, 0x5

    new-array v3, v3, [I

    fill-array-data v3, :array_5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x3

    const/4 v3, 0x5

    new-array v3, v3, [I

    fill-array-data v3, :array_6

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x4

    const/4 v3, 0x5

    new-array v3, v3, [I

    fill-array-data v3, :array_7

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x5

    const/4 v3, 0x5

    new-array v3, v3, [I

    fill-array-data v3, :array_8

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x6

    const/4 v3, 0x5

    new-array v3, v3, [I

    fill-array-data v3, :array_9

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x7

    const/4 v3, 0x5

    new-array v3, v3, [I

    fill-array-data v3, :array_a

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x8

    const/4 v3, 0x5

    new-array v3, v3, [I

    fill-array-data v3, :array_b

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x9

    const/4 v3, 0x5

    new-array v3, v3, [I

    fill-array-data v3, :array_c

    aput-object v3, v1, v2

    sput-object v0, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    return-void

    .line 53
    :array_0
    .array-data 4
        0x2c
        0x18
        0x14
        0x12
        0x10
        0xe
        0xc
        0xa
        0x8
        0x6
    .end array-data

    .line 64
    :array_1
    .array-data 4
        0x1
        0x1
        0x1
        0x1
    .end array-data

    .line 65
    :array_2
    .array-data 4
        0x1
        0x1
        0x3
    .end array-data

    .line 70
    :array_3
    .array-data 4
        0x1
        0x1
        0x3
        0x3
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x3
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x3
        0x1
        0x1
        0x3
    .end array-data

    :array_6
    .array-data 4
        0x3
        0x3
        0x1
        0x1
        0x1
    .end array-data

    :array_7
    .array-data 4
        0x1
        0x1
        0x3
        0x1
        0x3
    .end array-data

    :array_8
    .array-data 4
        0x3
        0x1
        0x3
        0x1
        0x1
    .end array-data

    :array_9
    .array-data 4
        0x1
        0x3
        0x3
        0x1
        0x1
    .end array-data

    :array_a
    .array-data 4
        0x1
        0x1
        0x1
        0x3
        0x3
    .end array-data

    :array_b
    .array-data 4
        0x3
        0x1
        0x1
        0x3
        0x1
    .end array-data

    :array_c
    .array-data 4
        0x1
        0x3
        0x1
        0x3
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/ITFReader;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 56
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lcom/google/zxing/oned/ITFReader;->narrowLineWidth:I

    return-void
.end method

.method private static decodeDigit([I)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 329
    move-object v0, p0

    .local v0, "counters":[I
    const/16 v7, 0x6b

    move v1, v7

    .line 330
    .local v1, "bestVariance":I
    const/4 v7, -0x1

    move v2, v7

    .line 331
    .local v2, "bestMatch":I
    sget-object v7, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    array-length v7, v7

    move v3, v7

    .line 332
    .local v3, "max":I
    const/4 v7, 0x0

    move v4, v7

    .local v4, "i":I
    :goto_0
    move v7, v4

    move v8, v3

    if-ge v7, v8, :cond_1

    .line 333
    sget-object v7, Lcom/google/zxing/oned/ITFReader;->PATTERNS:[[I

    move v8, v4

    aget-object v7, v7, v8

    move-object v5, v7

    .line 334
    .local v5, "pattern":[I
    move-object v7, v0

    move-object v8, v5

    const/16 v9, 0xcc

    invoke-static {v7, v8, v9}, Lcom/google/zxing/oned/ITFReader;->patternMatchVariance([I[II)I

    move-result v7

    move v6, v7

    .line 335
    .local v6, "variance":I
    move v7, v6

    move v8, v1

    if-ge v7, v8, :cond_0

    .line 336
    move v7, v6

    move v1, v7

    .line 337
    move v7, v4

    move v2, v7

    .line 332
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 340
    .end local v5    # "pattern":[I
    .end local v6    # "variance":I
    :cond_1
    move v7, v2

    if-ltz v7, :cond_2

    .line 341
    move v7, v2

    move v0, v7

    .end local v0    # "counters":[I
    return v0

    .line 343
    .restart local v0    # "counters":[I
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v7

    throw v7
.end method

.method private static decodeMiddle(Lcom/google/zxing/common/BitArray;IILjava/lang/StringBuilder;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 142
    move-object/from16 v0, p0

    .local v0, "row":Lcom/google/zxing/common/BitArray;
    move/from16 v1, p1

    .local v1, "payloadStart":I
    move/from16 v2, p2

    .local v2, "payloadEnd":I
    move-object/from16 v3, p3

    .local v3, "resultString":Ljava/lang/StringBuilder;
    const/16 v12, 0xa

    new-array v12, v12, [I

    move-object v4, v12

    .line 143
    .local v4, "counterDigitPair":[I
    const/4 v12, 0x5

    new-array v12, v12, [I

    move-object v5, v12

    .line 144
    .local v5, "counterBlack":[I
    const/4 v12, 0x5

    new-array v12, v12, [I

    move-object v6, v12

    .line 146
    .local v6, "counterWhite":[I
    :goto_0
    move v12, v1

    move v13, v2

    if-ge v12, v13, :cond_2

    .line 149
    move-object v12, v0

    move v13, v1

    move-object v14, v4

    invoke-static {v12, v13, v14}, Lcom/google/zxing/oned/ITFReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 151
    const/4 v12, 0x0

    move v7, v12

    .local v7, "k":I
    :goto_1
    move v12, v7

    const/4 v13, 0x5

    if-ge v12, v13, :cond_0

    .line 152
    move v12, v7

    const/4 v13, 0x1

    shl-int/lit8 v12, v12, 0x1

    move v8, v12

    .line 153
    .local v8, "twoK":I
    move-object v12, v5

    move v13, v7

    move-object v14, v4

    move v15, v8

    aget v14, v14, v15

    aput v14, v12, v13

    .line 154
    move-object v12, v6

    move v13, v7

    move-object v14, v4

    move v15, v8

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    aget v14, v14, v15

    aput v14, v12, v13

    .line 151
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 157
    .end local v8    # "twoK":I
    :cond_0
    move-object v12, v5

    invoke-static {v12}, Lcom/google/zxing/oned/ITFReader;->decodeDigit([I)I

    move-result v12

    move v7, v12

    .line 158
    .local v7, "bestMatch":I
    move-object v12, v3

    const/16 v13, 0x30

    move v14, v7

    add-int/2addr v13, v14

    int-to-char v13, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 159
    move-object v12, v6

    invoke-static {v12}, Lcom/google/zxing/oned/ITFReader;->decodeDigit([I)I

    move-result v12

    move v7, v12

    .line 160
    move-object v12, v3

    const/16 v13, 0x30

    move v14, v7

    add-int/2addr v13, v14

    int-to-char v13, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 162
    move-object v12, v4

    move-object v8, v12

    .local v8, "arr$":[I
    move-object v12, v8

    array-length v12, v12

    move v9, v12

    .local v9, "len$":I
    const/4 v12, 0x0

    move v10, v12

    .local v10, "i$":I
    :goto_2
    move v12, v10

    move v13, v9

    if-ge v12, v13, :cond_1

    move-object v12, v8

    move v13, v10

    aget v12, v12, v13

    move v11, v12

    .line 163
    .local v11, "counterDigit":I
    move v12, v1

    move v13, v11

    add-int/2addr v12, v13

    move v1, v12

    .line 162
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 165
    .end local v11    # "counterDigit":I
    :cond_1
    goto :goto_0

    .line 166
    .end local v7    # "bestMatch":I
    .end local v8    # "arr$":[I
    .end local v9    # "len$":I
    .end local v10    # "i$":I
    :cond_2
    return-void
.end method

.method private static findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 289
    move-object/from16 v0, p0

    .local v0, "row":Lcom/google/zxing/common/BitArray;
    move/from16 v1, p1

    .local v1, "rowOffset":I
    move-object/from16 v2, p2

    .local v2, "pattern":[I
    move-object v10, v2

    array-length v10, v10

    move v3, v10

    .line 290
    .local v3, "patternLength":I
    move v10, v3

    new-array v10, v10, [I

    move-object v4, v10

    .line 291
    .local v4, "counters":[I
    move-object v10, v0

    invoke-virtual {v10}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v10

    move v5, v10

    .line 292
    .local v5, "width":I
    const/4 v10, 0x0

    move v6, v10

    .line 294
    .local v6, "isWhite":Z
    const/4 v10, 0x0

    move v7, v10

    .line 295
    .local v7, "counterPosition":I
    move v10, v1

    move v8, v10

    .line 296
    .local v8, "patternStart":I
    move v10, v1

    move v9, v10

    .local v9, "x":I
    :goto_0
    move v10, v9

    move v11, v5

    if-ge v10, v11, :cond_4

    .line 297
    move-object v10, v0

    move v11, v9

    invoke-virtual {v10, v11}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v10

    move v11, v6

    xor-int/2addr v10, v11

    if-eqz v10, :cond_0

    .line 298
    move-object v10, v4

    move v11, v7

    move-object/from16 v16, v10

    move/from16 v17, v11

    move-object/from16 v10, v16

    move/from16 v11, v17

    move-object/from16 v12, v16

    move/from16 v13, v17

    aget v12, v12, v13

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    aput v12, v10, v11

    .line 296
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 300
    :cond_0
    move v10, v7

    move v11, v3

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    if-ne v10, v11, :cond_2

    .line 301
    move-object v10, v4

    move-object v11, v2

    const/16 v12, 0xcc

    invoke-static {v10, v11, v12}, Lcom/google/zxing/oned/ITFReader;->patternMatchVariance([I[II)I

    move-result v10

    const/16 v11, 0x6b

    if-ge v10, v11, :cond_1

    .line 302
    const/4 v10, 0x2

    new-array v10, v10, [I

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x0

    move v13, v8

    aput v13, v11, v12

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/4 v12, 0x1

    move v13, v9

    aput v13, v11, v12

    move-object v0, v10

    .end local v0    # "row":Lcom/google/zxing/common/BitArray;
    return-object v0

    .line 304
    .restart local v0    # "row":Lcom/google/zxing/common/BitArray;
    :cond_1
    move v10, v8

    move-object v11, v4

    const/4 v12, 0x0

    aget v11, v11, v12

    move-object v12, v4

    const/4 v13, 0x1

    aget v12, v12, v13

    add-int/2addr v11, v12

    add-int/2addr v10, v11

    move v8, v10

    .line 305
    move-object v10, v4

    const/4 v11, 0x2

    move-object v12, v4

    const/4 v13, 0x0

    move v14, v3

    const/4 v15, 0x2

    add-int/lit8 v14, v14, -0x2

    invoke-static {v10, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 306
    move-object v10, v4

    move v11, v3

    const/4 v12, 0x2

    add-int/lit8 v11, v11, -0x2

    const/4 v12, 0x0

    aput v12, v10, v11

    .line 307
    move-object v10, v4

    move v11, v3

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    const/4 v12, 0x0

    aput v12, v10, v11

    .line 308
    add-int/lit8 v7, v7, -0x1

    .line 312
    :goto_2
    move-object v10, v4

    move v11, v7

    const/4 v12, 0x1

    aput v12, v10, v11

    .line 313
    move v10, v6

    if-nez v10, :cond_3

    const/4 v10, 0x1

    :goto_3
    move v6, v10

    goto :goto_1

    .line 310
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 313
    :cond_3
    const/4 v10, 0x0

    goto :goto_3

    .line 316
    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v10

    throw v10
.end method

.method private static skipWhiteSpace(Lcom/google/zxing/common/BitArray;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "row":Lcom/google/zxing/common/BitArray;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v3

    move v1, v3

    .line 230
    .local v1, "width":I
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v3

    move v2, v3

    .line 231
    .local v2, "endStart":I
    move v3, v2

    move v4, v1

    if-ne v3, v4, :cond_0

    .line 232
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v3

    throw v3

    .line 235
    :cond_0
    move v3, v2

    move v0, v3

    .end local v0    # "row":Lcom/google/zxing/common/BitArray;
    return v0
.end method

.method private validateQuietZone(Lcom/google/zxing/common/BitArray;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 207
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/ITFReader;
    move-object v1, p1

    .local v1, "row":Lcom/google/zxing/common/BitArray;
    move v2, p2

    .local v2, "startPattern":I
    move-object v5, v0

    iget v5, v5, Lcom/google/zxing/oned/ITFReader;->narrowLineWidth:I

    const/16 v6, 0xa

    mul-int/lit8 v5, v5, 0xa

    move v3, v5

    .line 209
    .local v3, "quietCount":I
    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v3

    if-lez v5, :cond_0

    move v5, v4

    if-ltz v5, :cond_0

    .line 210
    move-object v5, v1

    move v6, v4

    invoke-virtual {v5, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 211
    .line 215
    :cond_0
    move v5, v3

    if-eqz v5, :cond_2

    .line 217
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v5

    throw v5

    .line 213
    :cond_1
    add-int/lit8 v3, v3, -0x1

    .line 209
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 219
    :cond_2
    return-void
.end method


# virtual methods
.method decodeEnd(Lcom/google/zxing/common/BitArray;)[I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/ITFReader;
    move-object v1, p1

    .local v1, "row":Lcom/google/zxing/common/BitArray;
    move-object v7, v1

    invoke-virtual {v7}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 252
    move-object v7, v1

    :try_start_0
    invoke-static {v7}, Lcom/google/zxing/oned/ITFReader;->skipWhiteSpace(Lcom/google/zxing/common/BitArray;)I

    move-result v7

    move v2, v7

    .line 253
    .local v2, "endStart":I
    move-object v7, v1

    move v8, v2

    sget-object v9, Lcom/google/zxing/oned/ITFReader;->END_PATTERN_REVERSED:[I

    invoke-static {v7, v8, v9}, Lcom/google/zxing/oned/ITFReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I

    move-result-object v7

    move-object v3, v7

    .line 258
    .local v3, "endPattern":[I
    move-object v7, v0

    move-object v8, v1

    move-object v9, v3

    const/4 v10, 0x0

    aget v9, v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/oned/ITFReader;->validateQuietZone(Lcom/google/zxing/common/BitArray;I)V

    .line 263
    move-object v7, v3

    const/4 v8, 0x0

    aget v7, v7, v8

    move v4, v7

    .line 264
    .local v4, "temp":I
    move-object v7, v3

    const/4 v8, 0x0

    move-object v9, v1

    invoke-virtual {v9}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v9

    move-object v10, v3

    const/4 v11, 0x1

    aget v10, v10, v11

    sub-int/2addr v9, v10

    aput v9, v7, v8

    .line 265
    move-object v7, v3

    const/4 v8, 0x1

    move-object v9, v1

    invoke-virtual {v9}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v9

    move v10, v4

    sub-int/2addr v9, v10

    aput v9, v7, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    move-object v7, v3

    move-object v5, v7

    .line 270
    move-object v7, v1

    invoke-virtual {v7}, Lcom/google/zxing/common/BitArray;->reverse()V

    move-object v7, v5

    move-object v0, v7

    .end local v0    # "this":Lcom/google/zxing/oned/ITFReader;
    return-object v0

    .end local v2    # "endStart":I
    .end local v3    # "endPattern":[I
    .end local v4    # "temp":I
    .restart local v0    # "this":Lcom/google/zxing/oned/ITFReader;
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v1

    invoke-virtual {v7}, Lcom/google/zxing/common/BitArray;->reverse()V

    move-object v7, v6

    throw v7
.end method

.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 29
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
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 88
    move-object/from16 v2, p0

    .local v2, "this":Lcom/google/zxing/oned/ITFReader;
    move/from16 v3, p1

    .local v3, "rowNumber":I
    move-object/from16 v4, p2

    .local v4, "row":Lcom/google/zxing/common/BitArray;
    move-object/from16 v5, p3

    .local v5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object/from16 v17, v2

    move-object/from16 v18, v4

    invoke-virtual/range {v17 .. v18}, Lcom/google/zxing/oned/ITFReader;->decodeStart(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v17

    move-object/from16 v6, v17

    .line 89
    .local v6, "startRange":[I
    move-object/from16 v17, v2

    move-object/from16 v18, v4

    invoke-virtual/range {v17 .. v18}, Lcom/google/zxing/oned/ITFReader;->decodeEnd(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v17

    move-object/from16 v7, v17

    .line 91
    .local v7, "endRange":[I
    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v28, v17

    move-object/from16 v17, v28

    move-object/from16 v18, v28

    const/16 v19, 0x14

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v8, v17

    .line 92
    .local v8, "result":Ljava/lang/StringBuilder;
    move-object/from16 v17, v4

    move-object/from16 v18, v6

    const/16 v19, 0x1

    aget v18, v18, v19

    move-object/from16 v19, v7

    const/16 v20, 0x0

    aget v19, v19, v20

    move-object/from16 v20, v8

    invoke-static/range {v17 .. v20}, Lcom/google/zxing/oned/ITFReader;->decodeMiddle(Lcom/google/zxing/common/BitArray;IILjava/lang/StringBuilder;)V

    .line 93
    move-object/from16 v17, v8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v9, v17

    .line 95
    .local v9, "resultString":Ljava/lang/String;
    const/16 v17, 0x0

    move-object/from16 v10, v17

    .line 96
    .local v10, "allowedLengths":[I
    move-object/from16 v17, v5

    if-eqz v17, :cond_0

    .line 97
    move-object/from16 v17, v5

    sget-object v18, Lcom/google/zxing/DecodeHintType;->ALLOWED_LENGTHS:Lcom/google/zxing/DecodeHintType;

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [I

    check-cast v17, [I

    move-object/from16 v10, v17

    .line 100
    :cond_0
    move-object/from16 v17, v10

    if-nez v17, :cond_1

    .line 101
    sget-object v17, Lcom/google/zxing/oned/ITFReader;->DEFAULT_ALLOWED_LENGTHS:[I

    move-object/from16 v10, v17

    .line 106
    :cond_1
    move-object/from16 v17, v9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v11, v17

    .line 107
    .local v11, "length":I
    const/16 v17, 0x0

    move/from16 v12, v17

    .line 108
    .local v12, "lengthOK":Z
    move-object/from16 v17, v10

    move-object/from16 v13, v17

    .local v13, "arr$":[I
    move-object/from16 v17, v13

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v14, v17

    .local v14, "len$":I
    const/16 v17, 0x0

    move/from16 v15, v17

    .local v15, "i$":I
    :goto_0
    move/from16 v17, v15

    move/from16 v18, v14

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    move-object/from16 v17, v13

    move/from16 v18, v15

    aget v17, v17, v18

    move/from16 v16, v17

    .line 109
    .local v16, "allowedLength":I
    move/from16 v17, v11

    move/from16 v18, v16

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 110
    const/16 v17, 0x1

    move/from16 v12, v17

    .line 114
    .end local v16    # "allowedLength":I
    :cond_2
    move/from16 v17, v12

    if-nez v17, :cond_4

    .line 115
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v17

    throw v17

    .line 108
    .restart local v16    # "allowedLength":I
    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 118
    .end local v16    # "allowedLength":I
    :cond_4
    new-instance v17, Lcom/google/zxing/Result;

    move-object/from16 v28, v17

    move-object/from16 v17, v28

    move-object/from16 v18, v28

    move-object/from16 v19, v9

    const/16 v20, 0x0

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v21, v0

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    const/16 v23, 0x0

    new-instance v24, Lcom/google/zxing/ResultPoint;

    move-object/from16 v28, v24

    move-object/from16 v24, v28

    move-object/from16 v25, v28

    move-object/from16 v26, v6

    const/16 v27, 0x1

    aget v26, v26, v27

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v27, v3

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    invoke-direct/range {v25 .. v27}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v24, v22, v23

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    const/16 v23, 0x1

    new-instance v24, Lcom/google/zxing/ResultPoint;

    move-object/from16 v28, v24

    move-object/from16 v24, v28

    move-object/from16 v25, v28

    move-object/from16 v26, v7

    const/16 v27, 0x0

    aget v26, v26, v27

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move/from16 v27, v3

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    invoke-direct/range {v25 .. v27}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v24, v22, v23

    sget-object v22, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    invoke-direct/range {v18 .. v22}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    move-object/from16 v2, v17

    .end local v2    # "this":Lcom/google/zxing/oned/ITFReader;
    return-object v2
.end method

.method decodeStart(Lcom/google/zxing/common/BitArray;)[I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/ITFReader;
    move-object v1, p1

    .local v1, "row":Lcom/google/zxing/common/BitArray;
    move-object v4, v1

    invoke-static {v4}, Lcom/google/zxing/oned/ITFReader;->skipWhiteSpace(Lcom/google/zxing/common/BitArray;)I

    move-result v4

    move v2, v4

    .line 178
    .local v2, "endStart":I
    move-object v4, v1

    move v5, v2

    sget-object v6, Lcom/google/zxing/oned/ITFReader;->START_PATTERN:[I

    invoke-static {v4, v5, v6}, Lcom/google/zxing/oned/ITFReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;I[I)[I

    move-result-object v4

    move-object v3, v4

    .line 183
    .local v3, "startPattern":[I
    move-object v4, v0

    move-object v5, v3

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object v6, v3

    const/4 v7, 0x0

    aget v6, v6, v7

    sub-int/2addr v5, v6

    const/4 v6, 0x2

    shr-int/lit8 v5, v5, 0x2

    iput v5, v4, Lcom/google/zxing/oned/ITFReader;->narrowLineWidth:I

    .line 185
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/oned/ITFReader;->validateQuietZone(Lcom/google/zxing/common/BitArray;I)V

    .line 187
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lcom/google/zxing/oned/ITFReader;
    return-object v0
.end method
