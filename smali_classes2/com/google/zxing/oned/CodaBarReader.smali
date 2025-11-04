.class public final Lcom/google/zxing/oned/CodaBarReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "CodaBarReader.java"


# static fields
.field static final ALPHABET:[C

.field private static final ALPHABET_STRING:Ljava/lang/String; = "0123456789-$:/.+ABCD"

.field static final CHARACTER_ENCODINGS:[I

.field private static final MAX_ACCEPTABLE:I = 0x200

.field private static final MIN_CHARACTER_LENGTH:I = 0x3

.field private static final PADDING:I = 0x180

.field private static final STARTEND_ENCODING:[C


# instance fields
.field private counterLength:I

.field private counters:[I

.field private final decodeRowResult:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-string/jumbo v0, "0123456789-$:/.+ABCD"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    .line 49
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    .line 60
    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    return-void

    .line 49
    nop

    :array_0
    .array-data 4
        0x3
        0x6
        0x9
        0x60
        0x12
        0x42
        0x21
        0x24
        0x30
        0x48
        0xc
        0x18
        0x45
        0x51
        0x54
        0x15
        0x1a
        0x29
        0xb
        0xe
    .end array-data

    .line 60
    :array_1
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/CodaBarReader;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 73
    move-object v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v2, v1, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    .line 74
    move-object v1, v0

    const/16 v2, 0x50

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    .line 75
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    .line 76
    return-void
.end method

.method static arrayContains([CC)Z
    .locals 8

    .prologue
    .line 278
    move-object v0, p0

    .local v0, "array":[C
    move v1, p1

    .local v1, "key":C
    move-object v6, v0

    if-eqz v6, :cond_1

    .line 279
    move-object v6, v0

    move-object v2, v6

    .local v2, "arr$":[C
    move-object v6, v2

    array-length v6, v6

    move v3, v6

    .local v3, "len$":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i$":I
    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    move-object v6, v2

    move v7, v4

    aget-char v6, v6, v7

    move v5, v6

    .line 280
    .local v5, "c":C
    move v6, v5

    move v7, v1

    if-ne v6, v7, :cond_0

    .line 281
    const/4 v6, 0x1

    move v0, v6

    .line 285
    .end local v0    # "array":[C
    .end local v2    # "arr$":[C
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    .end local v5    # "c":C
    :goto_1
    return v0

    .line 279
    .restart local v0    # "array":[C
    .restart local v2    # "arr$":[C
    .restart local v3    # "len$":I
    .restart local v4    # "i$":I
    .restart local v5    # "c":C
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 285
    .end local v2    # "arr$":[C
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    .end local v5    # "c":C
    :cond_1
    const/4 v6, 0x0

    move v0, v6

    goto :goto_1
.end method

.method private counterAppend(I)V
    .locals 9

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/CodaBarReader;
    move v1, p1

    .local v1, "e":I
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    move-object v4, v0

    iget v4, v4, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    move v5, v1

    aput v5, v3, v4

    .line 251
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    .line 252
    move-object v3, v0

    iget v3, v3, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    array-length v4, v4

    if-lt v3, v4, :cond_0

    .line 253
    move-object v3, v0

    iget v3, v3, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    const/4 v4, 0x2

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [I

    move-object v2, v3

    .line 254
    .local v2, "temp":[I
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v0

    iget v7, v7, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 255
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    .line 257
    .end local v2    # "temp":[I
    :cond_0
    return-void
.end method

.method private findStartPattern()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/CodaBarReader;
    const/4 v5, 0x1

    move v1, v5

    .local v1, "i":I
    :goto_0
    move v5, v1

    move-object v6, v0

    iget v6, v6, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    if-ge v5, v6, :cond_3

    .line 261
    move-object v5, v0

    move v6, v1

    invoke-direct {v5, v6}, Lcom/google/zxing/oned/CodaBarReader;->toNarrowWidePattern(I)I

    move-result v5

    move v2, v5

    .line 262
    .local v2, "charOffset":I
    move v5, v2

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    sget-object v5, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    sget-object v6, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    move v7, v2

    aget-char v6, v6, v7

    invoke-static {v5, v6}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 265
    const/4 v5, 0x0

    move v3, v5

    .line 266
    .local v3, "patternSize":I
    move v5, v1

    move v4, v5

    .local v4, "j":I
    :goto_1
    move v5, v4

    move v6, v1

    const/4 v7, 0x7

    add-int/lit8 v6, v6, 0x7

    if-ge v5, v6, :cond_0

    .line 267
    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    move v7, v4

    aget v6, v6, v7

    add-int/2addr v5, v6

    move v3, v5

    .line 266
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 269
    :cond_0
    move v5, v1

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    move v6, v1

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    aget v5, v5, v6

    move v6, v3

    const/4 v7, 0x2

    div-int/lit8 v6, v6, 0x2

    if-lt v5, v6, :cond_2

    .line 270
    :cond_1
    move v5, v1

    move v0, v5

    .end local v0    # "this":Lcom/google/zxing/oned/CodaBarReader;
    return v0

    .line 260
    .end local v3    # "patternSize":I
    .end local v4    # "j":I
    .restart local v0    # "this":Lcom/google/zxing/oned/CodaBarReader;
    :cond_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 274
    .end local v2    # "charOffset":I
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v5

    throw v5
.end method

.method private setCounters(Lcom/google/zxing/common/BitArray;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/CodaBarReader;
    move-object v1, p1

    .local v1, "row":Lcom/google/zxing/common/BitArray;
    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    .line 230
    move-object v6, v1

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v6

    move v2, v6

    .line 231
    .local v2, "i":I
    move-object v6, v1

    invoke-virtual {v6}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    move v3, v6

    .line 232
    .local v3, "end":I
    move v6, v2

    move v7, v3

    if-lt v6, v7, :cond_0

    .line 233
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6

    .line 235
    :cond_0
    const/4 v6, 0x1

    move v4, v6

    .line 236
    .local v4, "isWhite":Z
    const/4 v6, 0x0

    move v5, v6

    .line 237
    .local v5, "count":I
    :goto_0
    move v6, v2

    move v7, v3

    if-ge v6, v7, :cond_3

    .line 238
    move-object v6, v1

    move v7, v2

    invoke-virtual {v6, v7}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v6

    move v7, v4

    xor-int/2addr v6, v7

    if-eqz v6, :cond_1

    .line 239
    add-int/lit8 v5, v5, 0x1

    .line 237
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 241
    :cond_1
    move-object v6, v0

    move v7, v5

    invoke-direct {v6, v7}, Lcom/google/zxing/oned/CodaBarReader;->counterAppend(I)V

    .line 242
    const/4 v6, 0x1

    move v5, v6

    .line 243
    move v6, v4

    if-nez v6, :cond_2

    const/4 v6, 0x1

    :goto_2
    move v4, v6

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 246
    :cond_3
    move-object v6, v0

    move v7, v5

    invoke-direct {v6, v7}, Lcom/google/zxing/oned/CodaBarReader;->counterAppend(I)V

    .line 247
    return-void
.end method

.method private toNarrowWidePattern(I)I
    .locals 15

    .prologue
    .line 290
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/CodaBarReader;
    move/from16 v1, p1

    .local v1, "position":I
    move v10, v1

    const/4 v11, 0x7

    add-int/lit8 v10, v10, 0x7

    move v2, v10

    .line 291
    .local v2, "end":I
    move v10, v2

    move-object v11, v0

    iget v11, v11, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    if-lt v10, v11, :cond_0

    .line 292
    const/4 v10, -0x1

    move v0, v10

    .line 326
    .end local v0    # "this":Lcom/google/zxing/oned/CodaBarReader;
    :goto_0
    return v0

    .line 295
    .restart local v0    # "this":Lcom/google/zxing/oned/CodaBarReader;
    :cond_0
    const/4 v10, 0x2

    new-array v10, v10, [I

    fill-array-data v10, :array_0

    move-object v3, v10

    .line 296
    .local v3, "maxes":[I
    const/4 v10, 0x2

    new-array v10, v10, [I

    fill-array-data v10, :array_1

    move-object v4, v10

    .line 297
    .local v4, "mins":[I
    const/4 v10, 0x2

    new-array v10, v10, [I

    fill-array-data v10, :array_2

    move-object v5, v10

    .line 299
    .local v5, "thresholds":[I
    const/4 v10, 0x0

    move v6, v10

    .local v6, "i":I
    :goto_1
    move v10, v6

    const/4 v11, 0x2

    if-ge v10, v11, :cond_4

    .line 300
    move v10, v1

    move v11, v6

    add-int/2addr v10, v11

    move v7, v10

    .local v7, "j":I
    :goto_2
    move v10, v7

    move v11, v2

    if-ge v10, v11, :cond_3

    .line 301
    move-object v10, v0

    iget-object v10, v10, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    move v11, v7

    aget v10, v10, v11

    move-object v11, v4

    move v12, v6

    aget v11, v11, v12

    if-ge v10, v11, :cond_1

    .line 302
    move-object v10, v4

    move v11, v6

    move-object v12, v0

    iget-object v12, v12, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    move v13, v7

    aget v12, v12, v13

    aput v12, v10, v11

    .line 304
    :cond_1
    move-object v10, v0

    iget-object v10, v10, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    move v11, v7

    aget v10, v10, v11

    move-object v11, v3

    move v12, v6

    aget v11, v11, v12

    if-le v10, v11, :cond_2

    .line 305
    move-object v10, v3

    move v11, v6

    move-object v12, v0

    iget-object v12, v12, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    move v13, v7

    aget v12, v12, v13

    aput v12, v10, v11

    .line 300
    :cond_2
    add-int/lit8 v7, v7, 0x2

    goto :goto_2

    .line 308
    :cond_3
    move-object v10, v5

    move v11, v6

    move-object v12, v4

    move v13, v6

    aget v12, v12, v13

    move-object v13, v3

    move v14, v6

    aget v13, v13, v14

    add-int/2addr v12, v13

    const/4 v13, 0x2

    div-int/lit8 v12, v12, 0x2

    aput v12, v10, v11

    .line 299
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 311
    .end local v7    # "j":I
    :cond_4
    const/16 v10, 0x80

    move v6, v10

    .line 312
    .local v6, "bitmask":I
    const/4 v10, 0x0

    move v7, v10

    .line 313
    .local v7, "pattern":I
    const/4 v10, 0x0

    move v8, v10

    .local v8, "i":I
    :goto_3
    move v10, v8

    const/4 v11, 0x7

    if-ge v10, v11, :cond_6

    .line 314
    move v10, v8

    const/4 v11, 0x1

    and-int/lit8 v10, v10, 0x1

    move v9, v10

    .line 315
    .local v9, "barOrSpace":I
    move v10, v6

    const/4 v11, 0x1

    shr-int/lit8 v10, v10, 0x1

    move v6, v10

    .line 316
    move-object v10, v0

    iget-object v10, v10, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    move v11, v1

    move v12, v8

    add-int/2addr v11, v12

    aget v10, v10, v11

    move-object v11, v5

    move v12, v9

    aget v11, v11, v12

    if-le v10, v11, :cond_5

    .line 317
    move v10, v7

    move v11, v6

    or-int/2addr v10, v11

    move v7, v10

    .line 313
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 321
    .end local v9    # "barOrSpace":I
    :cond_6
    const/4 v10, 0x0

    move v8, v10

    :goto_4
    move v10, v8

    sget-object v11, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    array-length v11, v11

    if-ge v10, v11, :cond_8

    .line 322
    sget-object v10, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    move v11, v8

    aget v10, v10, v11

    move v11, v7

    if-ne v10, v11, :cond_7

    .line 323
    move v10, v8

    move v0, v10

    goto/16 :goto_0

    .line 321
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 326
    :cond_8
    const/4 v10, -0x1

    move v0, v10

    goto/16 :goto_0

    .line 295
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 296
    :array_1
    .array-data 4
        0x7fffffff
        0x7fffffff
    .end array-data

    .line 297
    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 26
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
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 81
    move-object/from16 v1, p0

    .local v1, "this":Lcom/google/zxing/oned/CodaBarReader;
    move/from16 v2, p1

    .local v2, "rowNumber":I
    move-object/from16 v3, p2

    .local v3, "row":Lcom/google/zxing/common/BitArray;
    move-object/from16 v4, p3

    .local v4, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object v14, v1

    move-object v15, v3

    invoke-direct {v14, v15}, Lcom/google/zxing/oned/CodaBarReader;->setCounters(Lcom/google/zxing/common/BitArray;)V

    .line 82
    move-object v14, v1

    invoke-direct {v14}, Lcom/google/zxing/oned/CodaBarReader;->findStartPattern()I

    move-result v14

    move v5, v14

    .line 83
    .local v5, "startOffset":I
    move v14, v5

    move v6, v14

    .line 85
    .local v6, "nextStart":I
    move-object v14, v1

    iget-object v14, v14, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 87
    :cond_0
    move-object v14, v1

    move v15, v6

    invoke-direct {v14, v15}, Lcom/google/zxing/oned/CodaBarReader;->toNarrowWidePattern(I)I

    move-result v14

    move v7, v14

    .line 88
    .local v7, "charOffset":I
    move v14, v7

    const/4 v15, -0x1

    if-ne v14, v15, :cond_1

    .line 89
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v14

    throw v14

    .line 94
    :cond_1
    move-object v14, v1

    iget-object v14, v14, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    move v15, v7

    int-to-char v15, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 95
    add-int/lit8 v6, v6, 0x8

    .line 97
    move-object v14, v1

    iget-object v14, v14, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_2

    sget-object v14, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    sget-object v15, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    move/from16 v16, v7

    aget-char v15, v15, v16

    invoke-static {v14, v15}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 99
    .line 104
    :goto_0
    move-object v14, v1

    iget-object v14, v14, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    move v15, v6

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    aget v14, v14, v15

    move v7, v14

    .line 105
    .local v7, "trailingWhitespace":I
    const/4 v14, 0x0

    move v8, v14

    .line 106
    .local v8, "lastPatternSize":I
    const/4 v14, -0x8

    move v9, v14

    .local v9, "i":I
    :goto_1
    move v14, v9

    const/4 v15, -0x1

    if-ge v14, v15, :cond_3

    .line 107
    move v14, v8

    move-object v15, v1

    iget-object v15, v15, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    move/from16 v16, v6

    move/from16 v17, v9

    add-int v16, v16, v17

    aget v15, v15, v16

    add-int/2addr v14, v15

    move v8, v14

    .line 106
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 101
    .end local v8    # "lastPatternSize":I
    .end local v9    # "i":I
    .local v7, "charOffset":I
    :cond_2
    move v14, v6

    move-object v15, v1

    iget v15, v15, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    if-lt v14, v15, :cond_0

    goto :goto_0

    .line 113
    .local v7, "trailingWhitespace":I
    .restart local v8    # "lastPatternSize":I
    .restart local v9    # "i":I
    :cond_3
    move v14, v6

    move-object v15, v1

    iget v15, v15, Lcom/google/zxing/oned/CodaBarReader;->counterLength:I

    if-ge v14, v15, :cond_4

    move v14, v7

    move v15, v8

    const/16 v16, 0x2

    div-int/lit8 v15, v15, 0x2

    if-ge v14, v15, :cond_4

    .line 114
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v14

    throw v14

    .line 117
    :cond_4
    move-object v14, v1

    move v15, v5

    invoke-virtual {v14, v15}, Lcom/google/zxing/oned/CodaBarReader;->validatePattern(I)V

    .line 120
    const/4 v14, 0x0

    move v9, v14

    :goto_2
    move v14, v9

    move-object v15, v1

    iget-object v15, v15, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-ge v14, v15, :cond_5

    .line 121
    move-object v14, v1

    iget-object v14, v14, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    move v15, v9

    sget-object v16, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    move-object/from16 v17, v0

    move/from16 v18, v9

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v17

    aget-char v16, v16, v17

    invoke-virtual/range {v14 .. v16}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 120
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 124
    :cond_5
    move-object v14, v1

    iget-object v14, v14, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v14

    move v9, v14

    .line 125
    .local v9, "startchar":C
    sget-object v14, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    move v15, v9

    invoke-static {v14, v15}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v14

    if-nez v14, :cond_6

    .line 126
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v14

    throw v14

    .line 128
    :cond_6
    move-object v14, v1

    iget-object v14, v14, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    move-object v15, v1

    iget-object v15, v15, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v14

    move v10, v14

    .line 129
    .local v10, "endchar":C
    sget-object v14, Lcom/google/zxing/oned/CodaBarReader;->STARTEND_ENCODING:[C

    move v15, v10

    invoke-static {v14, v15}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v14

    if-nez v14, :cond_7

    .line 130
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v14

    throw v14

    .line 134
    :cond_7
    move-object v14, v1

    iget-object v14, v14, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    const/4 v15, 0x3

    if-gt v14, v15, :cond_8

    .line 136
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v14

    throw v14

    .line 139
    :cond_8
    move-object v14, v1

    iget-object v14, v14, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    move-object v15, v1

    iget-object v15, v15, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 140
    move-object v14, v1

    iget-object v14, v14, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 142
    const/4 v14, 0x0

    move v11, v14

    .line 143
    .local v11, "runningCount":I
    const/4 v14, 0x0

    move v12, v14

    .local v12, "i":I
    :goto_3
    move v14, v12

    move v15, v5

    if-ge v14, v15, :cond_9

    .line 144
    move v14, v11

    move-object v15, v1

    iget-object v15, v15, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    move/from16 v16, v12

    aget v15, v15, v16

    add-int/2addr v14, v15

    move v11, v14

    .line 143
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 146
    :cond_9
    move v14, v11

    int-to-float v14, v14

    move v12, v14

    .line 147
    .local v12, "left":F
    move v14, v5

    move v13, v14

    .local v13, "i":I
    :goto_4
    move v14, v13

    move v15, v6

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    if-ge v14, v15, :cond_a

    .line 148
    move v14, v11

    move-object v15, v1

    iget-object v15, v15, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    move/from16 v16, v13

    aget v15, v15, v16

    add-int/2addr v14, v15

    move v11, v14

    .line 147
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 150
    :cond_a
    move v14, v11

    int-to-float v14, v14

    move v13, v14

    .line 151
    .local v13, "right":F
    new-instance v14, Lcom/google/zxing/Result;

    move-object/from16 v25, v14

    move-object/from16 v14, v25

    move-object/from16 v15, v25

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v18, v0

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    const/16 v20, 0x0

    new-instance v21, Lcom/google/zxing/ResultPoint;

    move-object/from16 v25, v21

    move-object/from16 v21, v25

    move-object/from16 v22, v25

    move/from16 v23, v12

    move/from16 v24, v2

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    invoke-direct/range {v22 .. v24}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v21, v19, v20

    move-object/from16 v25, v18

    move-object/from16 v18, v25

    move-object/from16 v19, v25

    const/16 v20, 0x1

    new-instance v21, Lcom/google/zxing/ResultPoint;

    move-object/from16 v25, v21

    move-object/from16 v21, v25

    move-object/from16 v22, v25

    move/from16 v23, v13

    move/from16 v24, v2

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    invoke-direct/range {v22 .. v24}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v21, v19, v20

    sget-object v19, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    invoke-direct/range {v15 .. v19}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    move-object v1, v14

    .end local v1    # "this":Lcom/google/zxing/oned/CodaBarReader;
    return-object v1
.end method

.method validatePattern(I)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 162
    move-object/from16 v1, p0

    .local v1, "this":Lcom/google/zxing/oned/CodaBarReader;
    move/from16 v2, p1

    .local v2, "start":I
    const/4 v14, 0x4

    new-array v14, v14, [I

    fill-array-data v14, :array_0

    move-object v3, v14

    .line 163
    .local v3, "sizes":[I
    const/4 v14, 0x4

    new-array v14, v14, [I

    fill-array-data v14, :array_1

    move-object v4, v14

    .line 164
    .local v4, "counts":[I
    move-object v14, v1

    iget-object v14, v14, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    move v5, v14

    .line 168
    .local v5, "end":I
    move v14, v2

    move v6, v14

    .line 169
    .local v6, "pos":I
    const/4 v14, 0x0

    move v7, v14

    .line 170
    .local v7, "i":I
    :goto_0
    sget-object v14, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    move-object v15, v1

    iget-object v15, v15, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    move/from16 v16, v7

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v15

    aget v14, v14, v15

    move v8, v14

    .line 171
    .local v8, "pattern":I
    const/4 v14, 0x6

    move v9, v14

    .local v9, "j":I
    :goto_1
    move v14, v9

    if-ltz v14, :cond_0

    .line 174
    move v14, v9

    const/4 v15, 0x1

    and-int/lit8 v14, v14, 0x1

    move v15, v8

    const/16 v16, 0x1

    and-int/lit8 v15, v15, 0x1

    const/16 v16, 0x2

    mul-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    move v10, v14

    .line 175
    .local v10, "category":I
    move-object v14, v3

    move v15, v10

    move-object/from16 v21, v14

    move/from16 v22, v15

    move-object/from16 v14, v21

    move/from16 v15, v22

    move-object/from16 v16, v21

    move/from16 v17, v22

    aget v16, v16, v17

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    move-object/from16 v17, v0

    move/from16 v18, v6

    move/from16 v19, v9

    add-int v18, v18, v19

    aget v17, v17, v18

    add-int v16, v16, v17

    aput v16, v14, v15

    .line 176
    move-object v14, v4

    move v15, v10

    move-object/from16 v21, v14

    move/from16 v22, v15

    move-object/from16 v14, v21

    move/from16 v15, v22

    move-object/from16 v16, v21

    move/from16 v17, v22

    aget v16, v16, v17

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    aput v16, v14, v15

    .line 177
    move v14, v8

    const/4 v15, 0x1

    shr-int/lit8 v14, v14, 0x1

    move v8, v14

    .line 171
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 179
    .end local v10    # "category":I
    :cond_0
    move v14, v7

    move v15, v5

    if-lt v14, v15, :cond_1

    .line 180
    .line 187
    const/4 v14, 0x4

    new-array v14, v14, [I

    move-object v7, v14

    .line 188
    .local v7, "maxes":[I
    const/4 v14, 0x4

    new-array v14, v14, [I

    move-object v8, v14

    .line 192
    .local v8, "mins":[I
    const/4 v14, 0x0

    move v9, v14

    .local v9, "i":I
    :goto_2
    move v14, v9

    const/4 v15, 0x2

    if-ge v14, v15, :cond_2

    .line 193
    move-object v14, v8

    move v15, v9

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 194
    move-object v14, v8

    move v15, v9

    const/16 v16, 0x2

    add-int/lit8 v15, v15, 0x2

    move-object/from16 v16, v3

    move/from16 v17, v9

    aget v16, v16, v17

    const/16 v17, 0x8

    shl-int/lit8 v16, v16, 0x8

    move-object/from16 v17, v4

    move/from16 v18, v9

    aget v17, v17, v18

    div-int v16, v16, v17

    move-object/from16 v17, v3

    move/from16 v18, v9

    const/16 v19, 0x2

    add-int/lit8 v18, v18, 0x2

    aget v17, v17, v18

    const/16 v18, 0x8

    shl-int/lit8 v17, v17, 0x8

    move-object/from16 v18, v4

    move/from16 v19, v9

    const/16 v20, 0x2

    add-int/lit8 v19, v19, 0x2

    aget v18, v18, v19

    div-int v17, v17, v18

    add-int v16, v16, v17

    const/16 v17, 0x1

    shr-int/lit8 v16, v16, 0x1

    aput v16, v14, v15

    .line 196
    move-object v14, v7

    move v15, v9

    move-object/from16 v16, v8

    move/from16 v17, v9

    const/16 v18, 0x2

    add-int/lit8 v17, v17, 0x2

    aget v16, v16, v17

    aput v16, v14, v15

    .line 197
    move-object v14, v7

    move v15, v9

    const/16 v16, 0x2

    add-int/lit8 v15, v15, 0x2

    move-object/from16 v16, v3

    move/from16 v17, v9

    const/16 v18, 0x2

    add-int/lit8 v17, v17, 0x2

    aget v16, v16, v17

    const/16 v17, 0x200

    move/from16 v0, v16

    mul-int/lit16 v0, v0, 0x200

    move/from16 v16, v0

    const/16 v17, 0x180

    move/from16 v0, v16

    add-int/lit16 v0, v0, 0x180

    move/from16 v16, v0

    move-object/from16 v17, v4

    move/from16 v18, v9

    const/16 v19, 0x2

    add-int/lit8 v18, v18, 0x2

    aget v17, v17, v18

    div-int v16, v16, v17

    aput v16, v14, v15

    .line 192
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 183
    .local v7, "i":I
    .local v8, "pattern":I
    .local v9, "j":I
    :cond_1
    add-int/lit8 v6, v6, 0x8

    .line 169
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 201
    .local v7, "maxes":[I
    .local v8, "mins":[I
    .local v9, "i":I
    :cond_2
    move v14, v2

    move v6, v14

    .line 202
    const/4 v14, 0x0

    move v9, v14

    .line 203
    :goto_3
    sget-object v14, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    move-object v15, v1

    iget-object v15, v15, Lcom/google/zxing/oned/CodaBarReader;->decodeRowResult:Ljava/lang/StringBuilder;

    move/from16 v16, v9

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v15

    aget v14, v14, v15

    move v10, v14

    .line 204
    .local v10, "pattern":I
    const/4 v14, 0x6

    move v11, v14

    .local v11, "j":I
    :goto_4
    move v14, v11

    if-ltz v14, :cond_5

    .line 207
    move v14, v11

    const/4 v15, 0x1

    and-int/lit8 v14, v14, 0x1

    move v15, v10

    const/16 v16, 0x1

    and-int/lit8 v15, v15, 0x1

    const/16 v16, 0x2

    mul-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    move v12, v14

    .line 208
    .local v12, "category":I
    move-object v14, v1

    iget-object v14, v14, Lcom/google/zxing/oned/CodaBarReader;->counters:[I

    move v15, v6

    move/from16 v16, v11

    add-int v15, v15, v16

    aget v14, v14, v15

    const/16 v15, 0x8

    shl-int/lit8 v14, v14, 0x8

    move v13, v14

    .line 209
    .local v13, "size":I
    move v14, v13

    move-object v15, v8

    move/from16 v16, v12

    aget v15, v15, v16

    if-lt v14, v15, :cond_3

    move v14, v13

    move-object v15, v7

    move/from16 v16, v12

    aget v15, v15, v16

    if-le v14, v15, :cond_4

    .line 210
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v14

    throw v14

    .line 212
    :cond_4
    move v14, v10

    const/4 v15, 0x1

    shr-int/lit8 v14, v14, 0x1

    move v10, v14

    .line 204
    add-int/lit8 v11, v11, -0x1

    goto :goto_4

    .line 214
    .end local v12    # "category":I
    .end local v13    # "size":I
    :cond_5
    move v14, v9

    move v15, v5

    if-lt v14, v15, :cond_6

    .line 215
    .line 219
    return-void

    .line 217
    :cond_6
    add-int/lit8 v6, v6, 0x8

    .line 202
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 162
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    .line 163
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
