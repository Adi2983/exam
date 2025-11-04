.class final Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$1;,
        Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    }
.end annotation


# static fields
.field private static final AL:I = 0x1c

.field private static final AS:I = 0x1b

.field private static final BEGIN_MACRO_PDF417_CONTROL_BLOCK:I = 0x3a0

.field private static final BEGIN_MACRO_PDF417_OPTIONAL_FIELD:I = 0x39b

.field private static final BYTE_COMPACTION_MODE_LATCH:I = 0x385

.field private static final BYTE_COMPACTION_MODE_LATCH_6:I = 0x39c

.field private static final EXP900:[Ljava/math/BigInteger;

.field private static final LL:I = 0x1b

.field private static final MACRO_PDF417_TERMINATOR:I = 0x39a

.field private static final MAX_NUMERIC_CODEWORDS:I = 0xf

.field private static final MIXED_CHARS:[C

.field private static final ML:I = 0x1c

.field private static final MODE_SHIFT_TO_BYTE_COMPACTION_MODE:I = 0x391

.field private static final NUMERIC_COMPACTION_MODE_LATCH:I = 0x386

.field private static final PAL:I = 0x1d

.field private static final PL:I = 0x19

.field private static final PS:I = 0x1d

.field private static final PUNCT_CHARS:[C

.field private static final TEXT_COMPACTION_MODE_LATCH:I = 0x384


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 58
    const/16 v2, 0x1d

    new-array v2, v2, [C

    fill-array-data v2, :array_0

    sput-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    .line 63
    const/16 v2, 0x19

    new-array v2, v2, [C

    fill-array-data v2, :array_1

    sput-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    .line 74
    const/16 v2, 0x10

    new-array v2, v2, [Ljava/math/BigInteger;

    sput-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    .line 75
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    const/4 v3, 0x0

    sget-object v4, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    aput-object v4, v2, v3

    .line 76
    const-wide/16 v2, 0x384

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    move-object v0, v2

    .line 77
    .local v0, "nineHundred":Ljava/math/BigInteger;
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    const/4 v3, 0x1

    move-object v4, v0

    aput-object v4, v2, v3

    .line 78
    const/4 v2, 0x2

    move v1, v2

    .local v1, "i":I
    :goto_0
    move v2, v1

    sget-object v3, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 79
    sget-object v2, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    move v3, v1

    sget-object v4, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    aget-object v4, v4, v5

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    aput-object v4, v2, v3

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    :cond_0
    return-void

    .line 58
    :array_0
    .array-data 2
        0x3bs
        0x3cs
        0x3es
        0x40s
        0x5bs
        0x5cs
        0x7ds
        0x5fs
        0x60s
        0x7es
        0x21s
        0xds
        0x9s
        0x2cs
        0x3as
        0xas
        0x2ds
        0x2es
        0x24s
        0x2fs
        0x22s
        0x7cs
        0x2as
        0x28s
        0x29s
        0x3fs
        0x7bs
        0x7ds
        0x27s
    .end array-data

    .line 63
    nop

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x26s
        0xds
        0x9s
        0x2cs
        0x3as
        0x23s
        0x2ds
        0x2es
        0x24s
        0x2fs
        0x2bs
        0x25s
        0x2as
        0x3ds
        0x5es
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method

.method private static byteCompaction(I[IILjava/lang/StringBuilder;)I
    .locals 18

    .prologue
    .line 361
    move/from16 v0, p0

    .local v0, "mode":I
    move-object/from16 v1, p1

    .local v1, "codewords":[I
    move/from16 v2, p2

    .local v2, "codeIndex":I
    move-object/from16 v3, p3

    .local v3, "result":Ljava/lang/StringBuilder;
    move v12, v0

    const/16 v13, 0x385

    if-ne v12, v13, :cond_7

    .line 364
    const/4 v12, 0x0

    move v4, v12

    .line 365
    .local v4, "count":I
    const-wide/16 v12, 0x0

    move-wide v5, v12

    .line 366
    .local v5, "value":J
    const/4 v12, 0x6

    new-array v12, v12, [C

    move-object v7, v12

    .line 367
    .local v7, "decodedData":[C
    const/4 v12, 0x6

    new-array v12, v12, [I

    move-object v8, v12

    .line 368
    .local v8, "byteCompactedCodewords":[I
    const/4 v12, 0x0

    move v9, v12

    .line 369
    .local v9, "end":Z
    move-object v12, v1

    move v13, v2

    add-int/lit8 v2, v2, 0x1

    aget v12, v12, v13

    move v10, v12

    .line 370
    .local v10, "nextCode":I
    :cond_0
    :goto_0
    move v12, v2

    move-object v13, v1

    const/4 v14, 0x0

    aget v13, v13, v14

    if-ge v12, v13, :cond_4

    move v12, v9

    if-nez v12, :cond_4

    .line 371
    move-object v12, v8

    move v13, v4

    add-int/lit8 v4, v4, 0x1

    move v14, v10

    aput v14, v12, v13

    .line 373
    const-wide/16 v12, 0x384

    move-wide v14, v5

    mul-long/2addr v12, v14

    move v14, v10

    int-to-long v14, v14

    add-long/2addr v12, v14

    move-wide v5, v12

    .line 374
    move-object v12, v1

    move v13, v2

    add-int/lit8 v2, v2, 0x1

    aget v12, v12, v13

    move v10, v12

    .line 376
    move v12, v10

    const/16 v13, 0x384

    if-eq v12, v13, :cond_1

    move v12, v10

    const/16 v13, 0x385

    if-eq v12, v13, :cond_1

    move v12, v10

    const/16 v13, 0x386

    if-eq v12, v13, :cond_1

    move v12, v10

    const/16 v13, 0x39c

    if-eq v12, v13, :cond_1

    move v12, v10

    const/16 v13, 0x3a0

    if-eq v12, v13, :cond_1

    move v12, v10

    const/16 v13, 0x39b

    if-eq v12, v13, :cond_1

    move v12, v10

    const/16 v13, 0x39a

    if-ne v12, v13, :cond_2

    .line 383
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 384
    const/4 v12, 0x1

    move v9, v12

    goto :goto_0

    .line 386
    :cond_2
    move v12, v4

    const/4 v13, 0x5

    rem-int/lit8 v12, v12, 0x5

    if-nez v12, :cond_0

    move v12, v4

    if-lez v12, :cond_0

    .line 389
    const/4 v12, 0x0

    move v11, v12

    .local v11, "j":I
    :goto_1
    move v12, v11

    const/4 v13, 0x6

    if-ge v12, v13, :cond_3

    .line 390
    move-object v12, v7

    const/4 v13, 0x5

    move v14, v11

    rsub-int/lit8 v13, v14, 0x5

    move-wide v14, v5

    const-wide/16 v16, 0x100

    rem-long v14, v14, v16

    long-to-int v14, v14

    int-to-char v14, v14

    aput-char v14, v12, v13

    .line 391
    move-wide v12, v5

    const/16 v14, 0x8

    shr-long/2addr v12, v14

    move-wide v5, v12

    .line 389
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 393
    :cond_3
    move-object v12, v3

    move-object v13, v7

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 394
    const/4 v12, 0x0

    move v4, v12

    goto :goto_0

    .line 400
    .end local v11    # "j":I
    :cond_4
    move v12, v2

    move-object v13, v1

    const/4 v14, 0x0

    aget v13, v13, v14

    if-ne v12, v13, :cond_5

    move v12, v10

    const/16 v13, 0x384

    if-ge v12, v13, :cond_5

    .line 401
    move-object v12, v8

    move v13, v4

    add-int/lit8 v4, v4, 0x1

    move v14, v10

    aput v14, v12, v13

    .line 407
    :cond_5
    const/4 v12, 0x0

    move v11, v12

    .local v11, "i":I
    :goto_2
    move v12, v11

    move v13, v4

    if-ge v12, v13, :cond_6

    .line 408
    move-object v12, v3

    move-object v13, v8

    move v14, v11

    aget v13, v13, v14

    int-to-char v13, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 407
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 411
    .line 448
    .end local v4    # "count":I
    .end local v5    # "value":J
    .end local v7    # "decodedData":[C
    .end local v8    # "byteCompactedCodewords":[I
    .end local v9    # "end":Z
    .end local v10    # "nextCode":I
    .end local v11    # "i":I
    :cond_6
    move v12, v2

    move v0, v12

    .end local v0    # "mode":I
    return v0

    .line 411
    .restart local v0    # "mode":I
    :cond_7
    move v12, v0

    const/16 v13, 0x39c

    if-ne v12, v13, :cond_6

    .line 414
    const/4 v12, 0x0

    move v4, v12

    .line 415
    .restart local v4    # "count":I
    const-wide/16 v12, 0x0

    move-wide v5, v12

    .line 416
    .restart local v5    # "value":J
    const/4 v12, 0x0

    move v7, v12

    .line 417
    .local v7, "end":Z
    :goto_3
    move v12, v2

    move-object v13, v1

    const/4 v14, 0x0

    aget v13, v13, v14

    if-ge v12, v13, :cond_6

    move v12, v7

    if-nez v12, :cond_6

    .line 418
    move-object v12, v1

    move v13, v2

    add-int/lit8 v2, v2, 0x1

    aget v12, v12, v13

    move v8, v12

    .line 419
    .local v8, "code":I
    move v12, v8

    const/16 v13, 0x384

    if-ge v12, v13, :cond_9

    .line 420
    add-int/lit8 v4, v4, 0x1

    .line 422
    const-wide/16 v12, 0x384

    move-wide v14, v5

    mul-long/2addr v12, v14

    move v14, v8

    int-to-long v14, v14

    add-long/2addr v12, v14

    move-wide v5, v12

    .line 435
    :cond_8
    :goto_4
    move v12, v4

    const/4 v13, 0x5

    rem-int/lit8 v12, v12, 0x5

    if-nez v12, :cond_c

    move v12, v4

    if-lez v12, :cond_c

    .line 438
    const/4 v12, 0x6

    new-array v12, v12, [C

    move-object v9, v12

    .line 439
    .local v9, "decodedData":[C
    const/4 v12, 0x0

    move v10, v12

    .local v10, "j":I
    :goto_5
    move v12, v10

    const/4 v13, 0x6

    if-ge v12, v13, :cond_b

    .line 440
    move-object v12, v9

    const/4 v13, 0x5

    move v14, v10

    rsub-int/lit8 v13, v14, 0x5

    move-wide v14, v5

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    long-to-int v14, v14

    int-to-char v14, v14

    aput-char v14, v12, v13

    .line 441
    move-wide v12, v5

    const/16 v14, 0x8

    shr-long/2addr v12, v14

    move-wide v5, v12

    .line 439
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 424
    .end local v9    # "decodedData":[C
    .end local v10    # "j":I
    :cond_9
    move v12, v8

    const/16 v13, 0x384

    if-eq v12, v13, :cond_a

    move v12, v8

    const/16 v13, 0x385

    if-eq v12, v13, :cond_a

    move v12, v8

    const/16 v13, 0x386

    if-eq v12, v13, :cond_a

    move v12, v8

    const/16 v13, 0x39c

    if-eq v12, v13, :cond_a

    move v12, v8

    const/16 v13, 0x3a0

    if-eq v12, v13, :cond_a

    move v12, v8

    const/16 v13, 0x39b

    if-eq v12, v13, :cond_a

    move v12, v8

    const/16 v13, 0x39a

    if-ne v12, v13, :cond_8

    .line 431
    :cond_a
    add-int/lit8 v2, v2, -0x1

    .line 432
    const/4 v12, 0x1

    move v7, v12

    goto :goto_4

    .line 443
    .restart local v9    # "decodedData":[C
    .restart local v10    # "j":I
    :cond_b
    move-object v12, v3

    move-object v13, v9

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 444
    const/4 v12, 0x0

    move v4, v12

    .line 446
    .end local v9    # "decodedData":[C
    .end local v10    # "j":I
    :cond_c
    goto :goto_3
.end method

.method static decode([I)Lcom/google/zxing/common/DecoderResult;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "codewords":[I
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/16 v6, 0x64

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v4

    .line 89
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v4, 0x1

    move v2, v4

    .line 90
    .local v2, "codeIndex":I
    move-object v4, v0

    move v5, v2

    add-int/lit8 v2, v2, 0x1

    aget v4, v4, v5

    move v3, v4

    .line 91
    .local v3, "code":I
    :goto_0
    move v4, v2

    move-object v5, v0

    const/4 v6, 0x0

    aget v5, v5, v6

    if-ge v4, v5, :cond_1

    .line 92
    move v4, v3

    sparse-switch v4, :sswitch_data_0

    .line 112
    add-int/lit8 v2, v2, -0x1

    .line 113
    move-object v4, v0

    move v5, v2

    move-object v6, v1

    invoke-static {v4, v5, v6}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v4

    move v2, v4

    .line 116
    :goto_1
    move v4, v2

    move-object v5, v0

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 117
    move-object v4, v0

    move v5, v2

    add-int/lit8 v2, v2, 0x1

    aget v4, v4, v5

    move v3, v4

    goto :goto_0

    .line 94
    :sswitch_0
    move-object v4, v0

    move v5, v2

    move-object v6, v1

    invoke-static {v4, v5, v6}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->textCompaction([IILjava/lang/StringBuilder;)I

    move-result v4

    move v2, v4

    .line 95
    goto :goto_1

    .line 97
    :sswitch_1
    move v4, v3

    move-object v5, v0

    move v6, v2

    move-object v7, v1

    invoke-static {v4, v5, v6, v7}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[IILjava/lang/StringBuilder;)I

    move-result v4

    move v2, v4

    .line 98
    goto :goto_1

    .line 100
    :sswitch_2
    move-object v4, v0

    move v5, v2

    move-object v6, v1

    invoke-static {v4, v5, v6}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->numericCompaction([IILjava/lang/StringBuilder;)I

    move-result v4

    move v2, v4

    .line 101
    goto :goto_1

    .line 103
    :sswitch_3
    move v4, v3

    move-object v5, v0

    move v6, v2

    move-object v7, v1

    invoke-static {v4, v5, v6, v7}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[IILjava/lang/StringBuilder;)I

    move-result v4

    move v2, v4

    .line 104
    goto :goto_1

    .line 106
    :sswitch_4
    move v4, v3

    move-object v5, v0

    move v6, v2

    move-object v7, v1

    invoke-static {v4, v5, v6, v7}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->byteCompaction(I[IILjava/lang/StringBuilder;)I

    move-result v4

    move v2, v4

    .line 107
    goto :goto_1

    .line 119
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4

    .line 122
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 123
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4

    .line 125
    :cond_2
    new-instance v4, Lcom/google/zxing/common/DecoderResult;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x0

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    move-object v0, v4

    .end local v0    # "codewords":[I
    return-object v0

    .line 92
    :sswitch_data_0
    .sparse-switch
        0x384 -> :sswitch_0
        0x385 -> :sswitch_1
        0x386 -> :sswitch_2
        0x391 -> :sswitch_3
        0x39c -> :sswitch_4
    .end sparse-switch
.end method

.method private static decodeBase900toBase10([II)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 543
    move-object v0, p0

    .local v0, "codewords":[I
    move v1, p1

    .local v1, "count":I
    sget-object v4, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    move-object v2, v4

    .line 544
    .local v2, "result":Ljava/math/BigInteger;
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v1

    if-ge v4, v5, :cond_0

    .line 545
    move-object v4, v2

    sget-object v5, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->EXP900:[Ljava/math/BigInteger;

    move v6, v1

    move v7, v3

    sub-int/2addr v6, v7

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    move-object v6, v0

    move v7, v3

    aget v6, v6, v7

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    move-object v2, v4

    .line 544
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 547
    :cond_0
    move-object v4, v2

    invoke-virtual {v4}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 548
    .local v3, "resultString":Ljava/lang/String;
    move-object v4, v3

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x31

    if-eq v4, v5, :cond_1

    .line 549
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4

    .line 551
    :cond_1
    move-object v4, v3

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "codewords":[I
    return-object v0
.end method

.method private static decodeTextCompaction([I[IILjava/lang/StringBuilder;)V
    .locals 12

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "textCompactionData":[I
    move-object v1, p1

    .local v1, "byteCompactionData":[I
    move v2, p2

    .local v2, "length":I
    move-object v3, p3

    .local v3, "result":Ljava/lang/StringBuilder;
    sget-object v9, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move-object v4, v9

    .line 214
    .local v4, "subMode":Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    sget-object v9, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move-object v5, v9

    .line 215
    .local v5, "priorToShiftMode":Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;
    const/4 v9, 0x0

    move v6, v9

    .line 216
    .local v6, "i":I
    :goto_0
    move v9, v6

    move v10, v2

    if-ge v9, v10, :cond_1d

    .line 217
    move-object v9, v0

    move v10, v6

    aget v9, v9, v10

    move v7, v9

    .line 218
    .local v7, "subModeCh":I
    const/4 v9, 0x0

    move v8, v9

    .line 219
    .local v8, "ch":C
    sget-object v9, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$1;->$SwitchMap$com$google$zxing$pdf417$decoder$DecodedBitStreamParser$Mode:[I

    move-object v10, v4

    invoke-virtual {v10}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 341
    :cond_0
    :goto_1
    move v9, v8

    if-eqz v9, :cond_1

    .line 343
    move-object v9, v3

    move v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 345
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 346
    goto :goto_0

    .line 222
    :pswitch_0
    move v9, v7

    const/16 v10, 0x1a

    if-ge v9, v10, :cond_2

    .line 224
    const/16 v9, 0x41

    move v10, v7

    add-int/2addr v9, v10

    int-to-char v9, v9

    move v8, v9

    goto :goto_1

    .line 226
    :cond_2
    move v9, v7

    const/16 v10, 0x1a

    if-ne v9, v10, :cond_3

    .line 227
    const/16 v9, 0x20

    move v8, v9

    goto :goto_1

    .line 228
    :cond_3
    move v9, v7

    const/16 v10, 0x1b

    if-ne v9, v10, :cond_4

    .line 229
    sget-object v9, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move-object v4, v9

    goto :goto_1

    .line 230
    :cond_4
    move v9, v7

    const/16 v10, 0x1c

    if-ne v9, v10, :cond_5

    .line 231
    sget-object v9, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move-object v4, v9

    goto :goto_1

    .line 232
    :cond_5
    move v9, v7

    const/16 v10, 0x1d

    if-ne v9, v10, :cond_6

    .line 234
    move-object v9, v4

    move-object v5, v9

    .line 235
    sget-object v9, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move-object v4, v9

    goto :goto_1

    .line 236
    :cond_6
    move v9, v7

    const/16 v10, 0x391

    if-ne v9, v10, :cond_7

    .line 237
    move-object v9, v3

    move-object v10, v1

    move v11, v6

    aget v10, v10, v11

    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    goto :goto_1

    .line 238
    :cond_7
    move v9, v7

    const/16 v10, 0x384

    if-ne v9, v10, :cond_0

    .line 239
    sget-object v9, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move-object v4, v9

    goto :goto_1

    .line 246
    :pswitch_1
    move v9, v7

    const/16 v10, 0x1a

    if-ge v9, v10, :cond_8

    .line 247
    const/16 v9, 0x61

    move v10, v7

    add-int/2addr v9, v10

    int-to-char v9, v9

    move v8, v9

    goto :goto_1

    .line 249
    :cond_8
    move v9, v7

    const/16 v10, 0x1a

    if-ne v9, v10, :cond_9

    .line 250
    const/16 v9, 0x20

    move v8, v9

    goto :goto_1

    .line 251
    :cond_9
    move v9, v7

    const/16 v10, 0x1b

    if-ne v9, v10, :cond_a

    .line 253
    move-object v9, v4

    move-object v5, v9

    .line 254
    sget-object v9, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move-object v4, v9

    goto :goto_1

    .line 255
    :cond_a
    move v9, v7

    const/16 v10, 0x1c

    if-ne v9, v10, :cond_b

    .line 256
    sget-object v9, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->MIXED:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move-object v4, v9

    goto :goto_1

    .line 257
    :cond_b
    move v9, v7

    const/16 v10, 0x1d

    if-ne v9, v10, :cond_c

    .line 259
    move-object v9, v4

    move-object v5, v9

    .line 260
    sget-object v9, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move-object v4, v9

    goto/16 :goto_1

    .line 261
    :cond_c
    move v9, v7

    const/16 v10, 0x391

    if-ne v9, v10, :cond_d

    .line 262
    move-object v9, v3

    move-object v10, v1

    move v11, v6

    aget v10, v10, v11

    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    goto/16 :goto_1

    .line 263
    :cond_d
    move v9, v7

    const/16 v10, 0x384

    if-ne v9, v10, :cond_0

    .line 264
    sget-object v9, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move-object v4, v9

    goto/16 :goto_1

    .line 271
    :pswitch_2
    move v9, v7

    const/16 v10, 0x19

    if-ge v9, v10, :cond_e

    .line 272
    sget-object v9, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->MIXED_CHARS:[C

    move v10, v7

    aget-char v9, v9, v10

    move v8, v9

    goto/16 :goto_1

    .line 274
    :cond_e
    move v9, v7

    const/16 v10, 0x19

    if-ne v9, v10, :cond_f

    .line 275
    sget-object v9, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move-object v4, v9

    goto/16 :goto_1

    .line 276
    :cond_f
    move v9, v7

    const/16 v10, 0x1a

    if-ne v9, v10, :cond_10

    .line 277
    const/16 v9, 0x20

    move v8, v9

    goto/16 :goto_1

    .line 278
    :cond_10
    move v9, v7

    const/16 v10, 0x1b

    if-ne v9, v10, :cond_11

    .line 279
    sget-object v9, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->LOWER:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move-object v4, v9

    goto/16 :goto_1

    .line 280
    :cond_11
    move v9, v7

    const/16 v10, 0x1c

    if-ne v9, v10, :cond_12

    .line 281
    sget-object v9, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move-object v4, v9

    goto/16 :goto_1

    .line 282
    :cond_12
    move v9, v7

    const/16 v10, 0x1d

    if-ne v9, v10, :cond_13

    .line 284
    move-object v9, v4

    move-object v5, v9

    .line 285
    sget-object v9, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->PUNCT_SHIFT:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move-object v4, v9

    goto/16 :goto_1

    .line 286
    :cond_13
    move v9, v7

    const/16 v10, 0x391

    if-ne v9, v10, :cond_14

    .line 287
    move-object v9, v3

    move-object v10, v1

    move v11, v6

    aget v10, v10, v11

    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    goto/16 :goto_1

    .line 288
    :cond_14
    move v9, v7

    const/16 v10, 0x384

    if-ne v9, v10, :cond_0

    .line 289
    sget-object v9, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move-object v4, v9

    goto/16 :goto_1

    .line 296
    :pswitch_3
    move v9, v7

    const/16 v10, 0x1d

    if-ge v9, v10, :cond_15

    .line 297
    sget-object v9, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    move v10, v7

    aget-char v9, v9, v10

    move v8, v9

    goto/16 :goto_1

    .line 299
    :cond_15
    move v9, v7

    const/16 v10, 0x1d

    if-ne v9, v10, :cond_16

    .line 300
    sget-object v9, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move-object v4, v9

    goto/16 :goto_1

    .line 301
    :cond_16
    move v9, v7

    const/16 v10, 0x391

    if-ne v9, v10, :cond_17

    .line 302
    move-object v9, v3

    move-object v10, v1

    move v11, v6

    aget v10, v10, v11

    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    goto/16 :goto_1

    .line 303
    :cond_17
    move v9, v7

    const/16 v10, 0x384

    if-ne v9, v10, :cond_0

    .line 304
    sget-object v9, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move-object v4, v9

    goto/16 :goto_1

    .line 311
    :pswitch_4
    move-object v9, v5

    move-object v4, v9

    .line 312
    move v9, v7

    const/16 v10, 0x1a

    if-ge v9, v10, :cond_18

    .line 313
    const/16 v9, 0x41

    move v10, v7

    add-int/2addr v9, v10

    int-to-char v9, v9

    move v8, v9

    goto/16 :goto_1

    .line 315
    :cond_18
    move v9, v7

    const/16 v10, 0x1a

    if-ne v9, v10, :cond_19

    .line 316
    const/16 v9, 0x20

    move v8, v9

    goto/16 :goto_1

    .line 317
    :cond_19
    move v9, v7

    const/16 v10, 0x384

    if-ne v9, v10, :cond_0

    .line 318
    sget-object v9, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move-object v4, v9

    goto/16 :goto_1

    .line 325
    :pswitch_5
    move-object v9, v5

    move-object v4, v9

    .line 326
    move v9, v7

    const/16 v10, 0x1d

    if-ge v9, v10, :cond_1a

    .line 327
    sget-object v9, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->PUNCT_CHARS:[C

    move v10, v7

    aget-char v9, v9, v10

    move v8, v9

    goto/16 :goto_1

    .line 329
    :cond_1a
    move v9, v7

    const/16 v10, 0x1d

    if-ne v9, v10, :cond_1b

    .line 330
    sget-object v9, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move-object v4, v9

    goto/16 :goto_1

    .line 331
    :cond_1b
    move v9, v7

    const/16 v10, 0x391

    if-ne v9, v10, :cond_1c

    .line 334
    move-object v9, v3

    move-object v10, v1

    move v11, v6

    aget v10, v10, v11

    int-to-char v10, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    goto/16 :goto_1

    .line 335
    :cond_1c
    move v9, v7

    const/16 v10, 0x384

    if-ne v9, v10, :cond_0

    .line 336
    sget-object v9, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;->ALPHA:Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser$Mode;

    move-object v4, v9

    goto/16 :goto_1

    .line 347
    .end local v7    # "subModeCh":I
    .end local v8    # "ch":C
    :cond_1d
    return-void

    .line 219
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static numericCompaction([IILjava/lang/StringBuilder;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 460
    move-object v0, p0

    .local v0, "codewords":[I
    move v1, p1

    .local v1, "codeIndex":I
    move-object v2, p2

    .local v2, "result":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    move v3, v8

    .line 461
    .local v3, "count":I
    const/4 v8, 0x0

    move v4, v8

    .line 463
    .local v4, "end":Z
    const/16 v8, 0xf

    new-array v8, v8, [I

    move-object v5, v8

    .line 465
    .local v5, "numericCodewords":[I
    :goto_0
    move v8, v1

    move-object v9, v0

    const/4 v10, 0x0

    aget v9, v9, v10

    if-ge v8, v9, :cond_6

    move v8, v4

    if-nez v8, :cond_6

    .line 466
    move-object v8, v0

    move v9, v1

    add-int/lit8 v1, v1, 0x1

    aget v8, v8, v9

    move v6, v8

    .line 467
    .local v6, "code":I
    move v8, v1

    move-object v9, v0

    const/4 v10, 0x0

    aget v9, v9, v10

    if-ne v8, v9, :cond_0

    .line 468
    const/4 v8, 0x1

    move v4, v8

    .line 470
    :cond_0
    move v8, v6

    const/16 v9, 0x384

    if-ge v8, v9, :cond_4

    .line 471
    move-object v8, v5

    move v9, v3

    move v10, v6

    aput v10, v8, v9

    .line 472
    add-int/lit8 v3, v3, 0x1

    .line 484
    :cond_1
    :goto_1
    move v8, v3

    const/16 v9, 0xf

    rem-int/lit8 v8, v8, 0xf

    if-eqz v8, :cond_2

    move v8, v6

    const/16 v9, 0x386

    if-eq v8, v9, :cond_2

    move v8, v4

    if-eqz v8, :cond_3

    .line 491
    :cond_2
    move-object v8, v5

    move v9, v3

    invoke-static {v8, v9}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeBase900toBase10([II)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 492
    .local v7, "s":Ljava/lang/String;
    move-object v8, v2

    move-object v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 493
    const/4 v8, 0x0

    move v3, v8

    .line 495
    .end local v7    # "s":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 474
    :cond_4
    move v8, v6

    const/16 v9, 0x384

    if-eq v8, v9, :cond_5

    move v8, v6

    const/16 v9, 0x385

    if-eq v8, v9, :cond_5

    move v8, v6

    const/16 v9, 0x39c

    if-eq v8, v9, :cond_5

    move v8, v6

    const/16 v9, 0x3a0

    if-eq v8, v9, :cond_5

    move v8, v6

    const/16 v9, 0x39b

    if-eq v8, v9, :cond_5

    move v8, v6

    const/16 v9, 0x39a

    if-ne v8, v9, :cond_1

    .line 480
    :cond_5
    add-int/lit8 v1, v1, -0x1

    .line 481
    const/4 v8, 0x1

    move v4, v8

    goto :goto_1

    .line 496
    .end local v6    # "code":I
    :cond_6
    move v8, v1

    move v0, v8

    .end local v0    # "codewords":[I
    return v0
.end method

.method private static textCompaction([IILjava/lang/StringBuilder;)I
    .locals 12

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "codewords":[I
    move v1, p1

    .local v1, "codeIndex":I
    move-object v2, p2

    .local v2, "result":Ljava/lang/StringBuilder;
    move-object v8, v0

    const/4 v9, 0x0

    aget v8, v8, v9

    const/4 v9, 0x1

    shl-int/lit8 v8, v8, 0x1

    new-array v8, v8, [I

    move-object v3, v8

    .line 142
    .local v3, "textCompactionData":[I
    move-object v8, v0

    const/4 v9, 0x0

    aget v8, v8, v9

    const/4 v9, 0x1

    shl-int/lit8 v8, v8, 0x1

    new-array v8, v8, [I

    move-object v4, v8

    .line 144
    .local v4, "byteCompactionData":[I
    const/4 v8, 0x0

    move v5, v8

    .line 145
    .local v5, "index":I
    const/4 v8, 0x0

    move v6, v8

    .line 146
    .local v6, "end":Z
    :goto_0
    move v8, v1

    move-object v9, v0

    const/4 v10, 0x0

    aget v9, v9, v10

    if-ge v8, v9, :cond_1

    move v8, v6

    if-nez v8, :cond_1

    .line 147
    move-object v8, v0

    move v9, v1

    add-int/lit8 v1, v1, 0x1

    aget v8, v8, v9

    move v7, v8

    .line 148
    .local v7, "code":I
    move v8, v7

    const/16 v9, 0x384

    if-ge v8, v9, :cond_0

    .line 149
    move-object v8, v3

    move v9, v5

    move v10, v7

    const/16 v11, 0x1e

    div-int/lit8 v10, v10, 0x1e

    aput v10, v8, v9

    .line 150
    move-object v8, v3

    move v9, v5

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v10, v7

    const/16 v11, 0x1e

    rem-int/lit8 v10, v10, 0x1e

    aput v10, v8, v9

    .line 151
    add-int/lit8 v5, v5, 0x2

    .line 184
    :goto_1
    goto :goto_0

    .line 153
    :cond_0
    move v8, v7

    sparse-switch v8, :sswitch_data_0

    goto :goto_1

    .line 156
    :sswitch_0
    move-object v8, v3

    move v9, v5

    add-int/lit8 v5, v5, 0x1

    const/16 v10, 0x384

    aput v10, v8, v9

    .line 157
    goto :goto_1

    .line 159
    :sswitch_1
    add-int/lit8 v1, v1, -0x1

    .line 160
    const/4 v8, 0x1

    move v6, v8

    .line 161
    goto :goto_1

    .line 163
    :sswitch_2
    add-int/lit8 v1, v1, -0x1

    .line 164
    const/4 v8, 0x1

    move v6, v8

    .line 165
    goto :goto_1

    .line 173
    :sswitch_3
    move-object v8, v3

    move v9, v5

    const/16 v10, 0x391

    aput v10, v8, v9

    .line 174
    move-object v8, v0

    move v9, v1

    add-int/lit8 v1, v1, 0x1

    aget v8, v8, v9

    move v7, v8

    .line 175
    move-object v8, v4

    move v9, v5

    move v10, v7

    aput v10, v8, v9

    .line 176
    add-int/lit8 v5, v5, 0x1

    .line 177
    goto :goto_1

    .line 179
    :sswitch_4
    add-int/lit8 v1, v1, -0x1

    .line 180
    const/4 v8, 0x1

    move v6, v8

    goto :goto_1

    .line 185
    .end local v7    # "code":I
    :cond_1
    move-object v8, v3

    move-object v9, v4

    move v10, v5

    move-object v11, v2

    invoke-static {v8, v9, v10, v11}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decodeTextCompaction([I[IILjava/lang/StringBuilder;)V

    .line 186
    move v8, v1

    move v0, v8

    .end local v0    # "codewords":[I
    return v0

    .line 153
    nop

    :sswitch_data_0
    .sparse-switch
        0x384 -> :sswitch_0
        0x385 -> :sswitch_1
        0x386 -> :sswitch_2
        0x391 -> :sswitch_3
        0x39c -> :sswitch_4
    .end sparse-switch
.end method
