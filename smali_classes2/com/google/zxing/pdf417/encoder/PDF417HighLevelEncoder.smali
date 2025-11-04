.class final Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;
.super Ljava/lang/Object;
.source "PDF417HighLevelEncoder.java"


# static fields
.field private static final BYTE_COMPACTION:I = 0x1

.field private static final LATCH_TO_BYTE:I = 0x39c

.field private static final LATCH_TO_BYTE_PADDED:I = 0x385

.field private static final LATCH_TO_NUMERIC:I = 0x386

.field private static final LATCH_TO_TEXT:I = 0x384

.field private static final MIXED:[B

.field private static final NUMERIC_COMPACTION:I = 0x2

.field private static final PUNCTUATION:[B

.field private static final SHIFT_TO_BYTE:I = 0x391

.field private static final SUBMODE_ALPHA:I = 0x0

.field private static final SUBMODE_LOWER:I = 0x1

.field private static final SUBMODE_MIXED:I = 0x2

.field private static final SUBMODE_PUNCTUATION:I = 0x3

.field private static final TEXT_COMPACTION:I

.field private static final TEXT_MIXED_RAW:[B

.field private static final TEXT_PUNCTUATION_RAW:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 97
    const/16 v2, 0x1e

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    sput-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_MIXED_RAW:[B

    .line 104
    const/16 v2, 0x1e

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    sput-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_PUNCTUATION_RAW:[B

    .line 108
    const/16 v2, 0x80

    new-array v2, v2, [B

    sput-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    .line 109
    const/16 v2, 0x80

    new-array v2, v2, [B

    sput-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    .line 116
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    const/4 v3, -0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 117
    const/4 v2, 0x0

    move v0, v2

    .local v0, "i":B
    :goto_0
    move v2, v0

    sget-object v3, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_MIXED_RAW:[B

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 118
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_MIXED_RAW:[B

    move v3, v0

    aget-byte v2, v2, v3

    move v1, v2

    .line 119
    .local v1, "b":B
    move v2, v1

    if-lez v2, :cond_0

    .line 120
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    move v3, v1

    move v4, v0

    aput-byte v4, v2, v3

    .line 117
    :cond_0
    move v2, v0

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    move v0, v2

    goto :goto_0

    .line 123
    .end local v1    # "b":B
    :cond_1
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    const/4 v3, -0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 124
    const/4 v2, 0x0

    move v0, v2

    :goto_1
    move v2, v0

    sget-object v3, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_PUNCTUATION_RAW:[B

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 125
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->TEXT_PUNCTUATION_RAW:[B

    move v3, v0

    aget-byte v2, v2, v3

    move v1, v2

    .line 126
    .restart local v1    # "b":B
    move v2, v1

    if-lez v2, :cond_2

    .line 127
    sget-object v2, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    move v3, v1

    move v4, v0

    aput-byte v4, v2, v3

    .line 124
    :cond_2
    move v2, v0

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    move v0, v2

    goto :goto_1

    .line 130
    .end local v1    # "b":B
    :cond_3
    return-void

    .line 97
    nop

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x26t
        0xdt
        0x9t
        0x2ct
        0x3at
        0x23t
        0x2dt
        0x2et
        0x24t
        0x2ft
        0x2bt
        0x25t
        0x2at
        0x3dt
        0x5et
        0x0t
        0x20t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 104
    nop

    :array_1
    .array-data 1
        0x3bt
        0x3ct
        0x3et
        0x40t
        0x5bt
        0x5ct
        0x5dt
        0x5ft
        0x60t
        0x7et
        0x21t
        0xdt
        0x9t
        0x2ct
        0x3at
        0xat
        0x2dt
        0x2et
        0x24t
        0x2ft
        0x22t
        0x7ct
        0x2at
        0x28t
        0x29t
        0x3ft
        0x7bt
        0x7dt
        0x27t
        0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 112
    return-void
.end method

.method private static determineConsecutiveBinaryCount(Ljava/lang/CharSequence;[BI)I
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 517
    move-object v0, p0

    .local v0, "msg":Ljava/lang/CharSequence;
    move-object v1, p1

    .local v1, "bytes":[B
    move/from16 v2, p2

    .local v2, "startpos":I
    move-object v9, v0

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v9

    move v3, v9

    .line 518
    .local v3, "len":I
    move v9, v2

    move v4, v9

    .line 519
    .local v4, "idx":I
    :goto_0
    move v9, v4

    move v10, v3

    if-ge v9, v10, :cond_7

    .line 520
    move-object v9, v0

    move v10, v4

    invoke-interface {v9, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    move v5, v9

    .line 521
    .local v5, "ch":C
    const/4 v9, 0x0

    move v6, v9

    .line 523
    .local v6, "numericCount":I
    :goto_1
    move v9, v6

    const/16 v10, 0xd

    if-ge v9, v10, :cond_0

    move v9, v5

    invoke-static {v9}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 524
    add-int/lit8 v6, v6, 0x1

    .line 526
    move v9, v4

    move v10, v6

    add-int/2addr v9, v10

    move v7, v9

    .line 527
    .local v7, "i":I
    move v9, v7

    move v10, v3

    if-lt v9, v10, :cond_1

    .line 528
    .line 532
    .end local v7    # "i":I
    :cond_0
    move v9, v6

    const/16 v10, 0xd

    if-lt v9, v10, :cond_2

    .line 533
    move v9, v4

    move v10, v2

    sub-int/2addr v9, v10

    move v0, v9

    .line 557
    .end local v0    # "msg":Ljava/lang/CharSequence;
    .end local v5    # "ch":C
    .end local v6    # "numericCount":I
    :goto_2
    return v0

    .line 530
    .restart local v0    # "msg":Ljava/lang/CharSequence;
    .restart local v5    # "ch":C
    .restart local v6    # "numericCount":I
    .restart local v7    # "i":I
    :cond_1
    move-object v9, v0

    move v10, v7

    invoke-interface {v9, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    move v5, v9

    .line 531
    goto :goto_1

    .line 535
    .end local v7    # "i":I
    :cond_2
    const/4 v9, 0x0

    move v7, v9

    .line 536
    .local v7, "textCount":I
    :goto_3
    move v9, v7

    const/4 v10, 0x5

    if-ge v9, v10, :cond_3

    move v9, v5

    invoke-static {v9}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isText(C)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 537
    add-int/lit8 v7, v7, 0x1

    .line 538
    move v9, v4

    move v10, v7

    add-int/2addr v9, v10

    move v8, v9

    .line 539
    .local v8, "i":I
    move v9, v8

    move v10, v3

    if-lt v9, v10, :cond_4

    .line 540
    .line 544
    .end local v8    # "i":I
    :cond_3
    move v9, v7

    const/4 v10, 0x5

    if-lt v9, v10, :cond_5

    .line 545
    move v9, v4

    move v10, v2

    sub-int/2addr v9, v10

    move v0, v9

    goto :goto_2

    .line 542
    .restart local v8    # "i":I
    :cond_4
    move-object v9, v0

    move v10, v8

    invoke-interface {v9, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    move v5, v9

    .line 543
    goto :goto_3

    .line 547
    .end local v8    # "i":I
    :cond_5
    move-object v9, v0

    move v10, v4

    invoke-interface {v9, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    move v5, v9

    .line 552
    move-object v9, v1

    move v10, v4

    aget-byte v9, v9, v10

    const/16 v10, 0x3f

    if-ne v9, v10, :cond_6

    move v9, v5

    const/16 v10, 0x3f

    if-eq v9, v10, :cond_6

    .line 553
    new-instance v9, Lcom/google/zxing/WriterException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Non-encodable character detected: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move v12, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " (Unicode: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move v12, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x29

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 555
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 556
    goto/16 :goto_0

    .line 557
    .end local v5    # "ch":C
    .end local v6    # "numericCount":I
    .end local v7    # "textCount":I
    :cond_7
    move v9, v4

    move v10, v2

    sub-int/2addr v9, v10

    move v0, v9

    goto :goto_2
.end method

.method private static determineConsecutiveDigitCount(Ljava/lang/CharSequence;I)I
    .locals 8

    .prologue
    .line 453
    move-object v0, p0

    .local v0, "msg":Ljava/lang/CharSequence;
    move v1, p1

    .local v1, "startpos":I
    const/4 v6, 0x0

    move v2, v6

    .line 454
    .local v2, "count":I
    move-object v6, v0

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    move v3, v6

    .line 455
    .local v3, "len":I
    move v6, v1

    move v4, v6

    .line 456
    .local v4, "idx":I
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    .line 457
    move-object v6, v0

    move v7, v4

    invoke-interface {v6, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    move v5, v6

    .line 458
    .local v5, "ch":C
    :cond_0
    :goto_0
    move v6, v5

    invoke-static {v6}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    .line 459
    add-int/lit8 v2, v2, 0x1

    .line 460
    add-int/lit8 v4, v4, 0x1

    .line 461
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_0

    .line 462
    move-object v6, v0

    move v7, v4

    invoke-interface {v6, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    move v5, v6

    goto :goto_0

    .line 466
    .end local v5    # "ch":C
    :cond_1
    move v6, v2

    move v0, v6

    .end local v0    # "msg":Ljava/lang/CharSequence;
    return v0
.end method

.method private static determineConsecutiveTextCount(Ljava/lang/CharSequence;I)I
    .locals 8

    .prologue
    .line 477
    move-object v0, p0

    .local v0, "msg":Ljava/lang/CharSequence;
    move v1, p1

    .local v1, "startpos":I
    move-object v6, v0

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    move v2, v6

    .line 478
    .local v2, "len":I
    move v6, v1

    move v3, v6

    .line 479
    .local v3, "idx":I
    :goto_0
    move v6, v3

    move v7, v2

    if-ge v6, v7, :cond_4

    .line 480
    move-object v6, v0

    move v7, v3

    invoke-interface {v6, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    move v4, v6

    .line 481
    .local v4, "ch":C
    const/4 v6, 0x0

    move v5, v6

    .line 482
    .local v5, "numericCount":I
    :cond_0
    :goto_1
    move v6, v5

    const/16 v7, 0xd

    if-ge v6, v7, :cond_1

    move v6, v4

    invoke-static {v6}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v3

    move v7, v2

    if-ge v6, v7, :cond_1

    .line 483
    add-int/lit8 v5, v5, 0x1

    .line 484
    add-int/lit8 v3, v3, 0x1

    .line 485
    move v6, v3

    move v7, v2

    if-ge v6, v7, :cond_0

    .line 486
    move-object v6, v0

    move v7, v3

    invoke-interface {v6, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    move v4, v6

    goto :goto_1

    .line 489
    :cond_1
    move v6, v5

    const/16 v7, 0xd

    if-lt v6, v7, :cond_2

    .line 490
    move v6, v3

    move v7, v1

    sub-int/2addr v6, v7

    move v7, v5

    sub-int/2addr v6, v7

    move v0, v6

    .line 504
    .end local v0    # "msg":Ljava/lang/CharSequence;
    .end local v4    # "ch":C
    .end local v5    # "numericCount":I
    :goto_2
    return v0

    .line 492
    .restart local v0    # "msg":Ljava/lang/CharSequence;
    .restart local v4    # "ch":C
    .restart local v5    # "numericCount":I
    :cond_2
    move v6, v5

    if-lez v6, :cond_3

    .line 494
    goto :goto_0

    .line 496
    :cond_3
    move-object v6, v0

    move v7, v3

    invoke-interface {v6, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    move v4, v6

    .line 499
    move v6, v4

    invoke-static {v6}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isText(C)Z

    move-result v6

    if-nez v6, :cond_5

    .line 500
    .line 504
    .end local v4    # "ch":C
    .end local v5    # "numericCount":I
    :cond_4
    move v6, v3

    move v7, v1

    sub-int/2addr v6, v7

    move v0, v6

    goto :goto_2

    .line 502
    .restart local v4    # "ch":C
    .restart local v5    # "numericCount":I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 503
    goto :goto_0
.end method

.method private static encodeBinary([BIIILjava/lang/StringBuilder;)V
    .locals 16

    .prologue
    .line 361
    move-object/from16 v0, p0

    .local v0, "bytes":[B
    move/from16 v1, p1

    .local v1, "startpos":I
    move/from16 v2, p2

    .local v2, "count":I
    move/from16 v3, p3

    .local v3, "startmode":I
    move-object/from16 v4, p4

    .local v4, "sb":Ljava/lang/StringBuilder;
    move v10, v2

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    move v10, v3

    if-nez v10, :cond_0

    .line 362
    move-object v10, v4

    const/16 v11, 0x391

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 365
    :cond_0
    move v10, v1

    move v5, v10

    .line 367
    .local v5, "idx":I
    move v10, v2

    const/4 v11, 0x6

    if-lt v10, v11, :cond_4

    .line 368
    move-object v10, v4

    const/16 v11, 0x39c

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 369
    const/4 v10, 0x5

    new-array v10, v10, [C

    move-object v6, v10

    .line 370
    .local v6, "chars":[C
    :goto_0
    move v10, v1

    move v11, v2

    add-int/2addr v10, v11

    move v11, v5

    sub-int/2addr v10, v11

    const/4 v11, 0x6

    if-lt v10, v11, :cond_4

    .line 371
    const-wide/16 v10, 0x0

    move-wide v7, v10

    .line 372
    .local v7, "t":J
    const/4 v10, 0x0

    move v9, v10

    .local v9, "i":I
    :goto_1
    move v10, v9

    const/4 v11, 0x6

    if-ge v10, v11, :cond_1

    .line 373
    move-wide v10, v7

    const/16 v12, 0x8

    shl-long/2addr v10, v12

    move-wide v7, v10

    .line 374
    move-wide v10, v7

    move-object v12, v0

    move v13, v5

    move v14, v9

    add-int/2addr v13, v14

    aget-byte v12, v12, v13

    const/16 v13, 0xff

    and-int/lit16 v12, v12, 0xff

    int-to-long v12, v12

    add-long/2addr v10, v12

    move-wide v7, v10

    .line 372
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 376
    :cond_1
    const/4 v10, 0x0

    move v9, v10

    :goto_2
    move v10, v9

    const/4 v11, 0x5

    if-ge v10, v11, :cond_2

    .line 377
    move-object v10, v6

    move v11, v9

    move-wide v12, v7

    const-wide/16 v14, 0x384

    rem-long/2addr v12, v14

    long-to-int v12, v12

    int-to-char v12, v12

    aput-char v12, v10, v11

    .line 378
    move-wide v10, v7

    const-wide/16 v12, 0x384

    div-long/2addr v10, v12

    move-wide v7, v10

    .line 376
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 380
    :cond_2
    move-object v10, v6

    array-length v10, v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move v9, v10

    :goto_3
    move v10, v9

    if-ltz v10, :cond_3

    .line 381
    move-object v10, v4

    move-object v11, v6

    move v12, v9

    aget-char v11, v11, v12

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 380
    add-int/lit8 v9, v9, -0x1

    goto :goto_3

    .line 383
    :cond_3
    add-int/lit8 v5, v5, 0x6

    .line 384
    goto :goto_0

    .line 387
    .end local v6    # "chars":[C
    .end local v7    # "t":J
    .end local v9    # "i":I
    :cond_4
    move v10, v5

    move v11, v1

    move v12, v2

    add-int/2addr v11, v12

    if-ge v10, v11, :cond_5

    .line 388
    move-object v10, v4

    const/16 v11, 0x385

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 390
    :cond_5
    move v10, v5

    move v6, v10

    .local v6, "i":I
    :goto_4
    move v10, v6

    move v11, v1

    move v12, v2

    add-int/2addr v11, v12

    if-ge v10, v11, :cond_6

    .line 391
    move-object v10, v0

    move v11, v6

    aget-byte v10, v10, v11

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    move v7, v10

    .line 392
    .local v7, "ch":I
    move-object v10, v4

    move v11, v7

    int-to-char v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 390
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 394
    .end local v7    # "ch":I
    :cond_6
    return-void
.end method

.method static encodeHighLevel(Ljava/lang/String;Lcom/google/zxing/pdf417/encoder/Compaction;)Ljava/lang/String;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 152
    move-object/from16 v0, p0

    .local v0, "msg":Ljava/lang/String;
    move-object/from16 v1, p1

    .local v1, "compaction":Lcom/google/zxing/pdf417/encoder/Compaction;
    const/4 v11, 0x0

    move-object v2, v11

    .line 155
    .local v2, "bytes":[B
    new-instance v11, Ljava/lang/StringBuilder;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v0

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v3, v11

    .line 157
    .local v3, "sb":Ljava/lang/StringBuilder;
    move-object v11, v0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    move v4, v11

    .line 158
    .local v4, "len":I
    const/4 v11, 0x0

    move v5, v11

    .line 159
    .local v5, "p":I
    const/4 v11, 0x0

    move v6, v11

    .line 162
    .local v6, "textSubMode":I
    move-object v11, v1

    sget-object v12, Lcom/google/zxing/pdf417/encoder/Compaction;->TEXT:Lcom/google/zxing/pdf417/encoder/Compaction;

    if-ne v11, v12, :cond_1

    .line 163
    move-object v11, v0

    move v12, v5

    move v13, v4

    move-object v14, v3

    move v15, v6

    invoke-static {v11, v12, v13, v14, v15}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeText(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)I

    move-result v11

    .line 216
    :cond_0
    :goto_0
    move-object v11, v3

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v0, v11

    .end local v0    # "msg":Ljava/lang/String;
    return-object v0

    .line 165
    .restart local v0    # "msg":Ljava/lang/String;
    :cond_1
    move-object v11, v1

    sget-object v12, Lcom/google/zxing/pdf417/encoder/Compaction;->BYTE:Lcom/google/zxing/pdf417/encoder/Compaction;

    if-ne v11, v12, :cond_2

    .line 166
    move-object v11, v0

    invoke-static {v11}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->getBytesForMessage(Ljava/lang/String;)[B

    move-result-object v11

    move-object v2, v11

    .line 167
    move-object v11, v2

    move v12, v5

    move-object v13, v2

    array-length v13, v13

    const/4 v14, 0x1

    move-object v15, v3

    invoke-static {v11, v12, v13, v14, v15}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeBinary([BIIILjava/lang/StringBuilder;)V

    goto :goto_0

    .line 169
    :cond_2
    move-object v11, v1

    sget-object v12, Lcom/google/zxing/pdf417/encoder/Compaction;->NUMERIC:Lcom/google/zxing/pdf417/encoder/Compaction;

    if-ne v11, v12, :cond_3

    .line 170
    move-object v11, v3

    const/16 v12, 0x386

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 171
    move-object v11, v0

    move v12, v5

    move v13, v4

    move-object v14, v3

    invoke-static {v11, v12, v13, v14}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeNumeric(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    goto :goto_0

    .line 174
    :cond_3
    const/4 v11, 0x0

    move v7, v11

    .line 175
    .local v7, "encodingMode":I
    :goto_1
    move v11, v5

    move v12, v4

    if-ge v11, v12, :cond_0

    .line 176
    move-object v11, v0

    move v12, v5

    invoke-static {v11, v12}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->determineConsecutiveDigitCount(Ljava/lang/CharSequence;I)I

    move-result v11

    move v8, v11

    .line 177
    .local v8, "n":I
    move v11, v8

    const/16 v12, 0xd

    if-lt v11, v12, :cond_4

    .line 178
    move-object v11, v3

    const/16 v12, 0x386

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 179
    const/4 v11, 0x2

    move v7, v11

    .line 180
    const/4 v11, 0x0

    move v6, v11

    .line 181
    move-object v11, v0

    move v12, v5

    move v13, v8

    move-object v14, v3

    invoke-static {v11, v12, v13, v14}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeNumeric(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    .line 182
    move v11, v5

    move v12, v8

    add-int/2addr v11, v12

    move v5, v11

    .line 213
    :goto_2
    goto :goto_1

    .line 184
    :cond_4
    move-object v11, v0

    move v12, v5

    invoke-static {v11, v12}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->determineConsecutiveTextCount(Ljava/lang/CharSequence;I)I

    move-result v11

    move v9, v11

    .line 185
    .local v9, "t":I
    move v11, v9

    const/4 v12, 0x5

    if-ge v11, v12, :cond_5

    move v11, v8

    move v12, v4

    if-ne v11, v12, :cond_7

    .line 186
    :cond_5
    move v11, v7

    if-eqz v11, :cond_6

    .line 187
    move-object v11, v3

    const/16 v12, 0x384

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 188
    const/4 v11, 0x0

    move v7, v11

    .line 189
    const/4 v11, 0x0

    move v6, v11

    .line 191
    :cond_6
    move-object v11, v0

    move v12, v5

    move v13, v9

    move-object v14, v3

    move v15, v6

    invoke-static {v11, v12, v13, v14, v15}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeText(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)I

    move-result v11

    move v6, v11

    .line 192
    move v11, v5

    move v12, v9

    add-int/2addr v11, v12

    move v5, v11

    goto :goto_2

    .line 194
    :cond_7
    move-object v11, v2

    if-nez v11, :cond_8

    .line 195
    move-object v11, v0

    invoke-static {v11}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->getBytesForMessage(Ljava/lang/String;)[B

    move-result-object v11

    move-object v2, v11

    .line 197
    :cond_8
    move-object v11, v0

    move-object v12, v2

    move v13, v5

    invoke-static {v11, v12, v13}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->determineConsecutiveBinaryCount(Ljava/lang/CharSequence;[BI)I

    move-result v11

    move v10, v11

    .line 198
    .local v10, "b":I
    move v11, v10

    if-nez v11, :cond_9

    .line 199
    const/4 v11, 0x1

    move v10, v11

    .line 201
    :cond_9
    move v11, v10

    const/4 v12, 0x1

    if-ne v11, v12, :cond_a

    move v11, v7

    if-nez v11, :cond_a

    .line 203
    move-object v11, v2

    move v12, v5

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object v15, v3

    invoke-static {v11, v12, v13, v14, v15}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeBinary([BIIILjava/lang/StringBuilder;)V

    .line 210
    :goto_3
    move v11, v5

    move v12, v10

    add-int/2addr v11, v12

    move v5, v11

    goto :goto_2

    .line 206
    :cond_a
    move-object v11, v2

    move v12, v5

    move v13, v10

    move v14, v7

    move-object v15, v3

    invoke-static {v11, v12, v13, v14, v15}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->encodeBinary([BIIILjava/lang/StringBuilder;)V

    .line 207
    const/4 v11, 0x1

    move v7, v11

    .line 208
    const/4 v11, 0x0

    move v6, v11

    goto :goto_3
.end method

.method private static encodeNumeric(Ljava/lang/String;IILjava/lang/StringBuilder;)V
    .locals 18

    .prologue
    .line 397
    move-object/from16 v0, p0

    .local v0, "msg":Ljava/lang/String;
    move/from16 v1, p1

    .local v1, "startpos":I
    move/from16 v2, p2

    .local v2, "count":I
    move-object/from16 v3, p3

    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    move v4, v12

    .line 398
    .local v4, "idx":I
    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move v14, v2

    const/4 v15, 0x3

    div-int/lit8 v14, v14, 0x3

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v5, v12

    .line 399
    .local v5, "tmp":Ljava/lang/StringBuilder;
    const-wide/16 v12, 0x384

    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v12

    move-object v6, v12

    .line 400
    .local v6, "num900":Ljava/math/BigInteger;
    const-wide/16 v12, 0x0

    invoke-static {v12, v13}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v12

    move-object v7, v12

    .line 401
    .local v7, "num0":Ljava/math/BigInteger;
    :goto_0
    move v12, v4

    move v13, v2

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    if-ge v12, v13, :cond_2

    .line 402
    move-object v12, v5

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 403
    const/16 v12, 0x2c

    move v13, v2

    move v14, v4

    sub-int/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    move v8, v12

    .line 404
    .local v8, "len":I
    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v13, 0x31

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v0

    move v14, v1

    move v15, v4

    add-int/2addr v14, v15

    move v15, v1

    move/from16 v16, v4

    add-int v15, v15, v16

    move/from16 v16, v8

    add-int v15, v15, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v9, v12

    .line 405
    .local v9, "part":Ljava/lang/String;
    new-instance v12, Ljava/math/BigInteger;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v9

    invoke-direct {v13, v14}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    move-object v10, v12

    .line 407
    .local v10, "bigint":Ljava/math/BigInteger;
    :cond_0
    move-object v12, v10

    move-object v13, v6

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    move-object v11, v12

    .line 408
    .local v11, "c":Ljava/math/BigInteger;
    move-object v12, v5

    move-object v13, v11

    invoke-virtual {v13}, Ljava/math/BigInteger;->intValue()I

    move-result v13

    int-to-char v13, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 409
    move-object v12, v10

    move-object v13, v6

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    move-object v10, v12

    .line 410
    move-object v12, v10

    move-object v13, v7

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 413
    move-object v12, v5

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v11, v12

    .local v11, "i":I
    :goto_1
    move v12, v11

    if-ltz v12, :cond_1

    .line 414
    move-object v12, v3

    move-object v13, v5

    move v14, v11

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 413
    add-int/lit8 v11, v11, -0x1

    goto :goto_1

    .line 416
    :cond_1
    move v12, v4

    move v13, v8

    add-int/2addr v12, v13

    move v4, v12

    .line 417
    goto/16 :goto_0

    .line 418
    .end local v8    # "len":I
    .end local v9    # "part":Ljava/lang/String;
    .end local v10    # "bigint":Ljava/math/BigInteger;
    .end local v11    # "i":I
    :cond_2
    return-void
.end method

.method private static encodeText(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)I
    .locals 16

    .prologue
    .line 235
    move-object/from16 v0, p0

    .local v0, "msg":Ljava/lang/CharSequence;
    move/from16 v1, p1

    .local v1, "startpos":I
    move/from16 v2, p2

    .local v2, "count":I
    move-object/from16 v3, p3

    .local v3, "sb":Ljava/lang/StringBuilder;
    move/from16 v4, p4

    .local v4, "initialSubmode":I
    new-instance v12, Ljava/lang/StringBuilder;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    move v14, v2

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v5, v12

    .line 236
    .local v5, "tmp":Ljava/lang/StringBuilder;
    move v12, v4

    move v6, v12

    .line 237
    .local v6, "submode":I
    const/4 v12, 0x0

    move v7, v12

    .line 239
    .local v7, "idx":I
    :goto_0
    move-object v12, v0

    move v13, v1

    move v14, v7

    add-int/2addr v13, v14

    invoke-interface {v12, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    move v8, v12

    .line 240
    .local v8, "ch":C
    move v12, v6

    packed-switch v12, :pswitch_data_0

    .line 315
    move v12, v8

    invoke-static {v12}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isPunctuation(C)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 316
    move-object v12, v5

    sget-object v13, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    move v14, v8

    aget-byte v13, v13, v14

    int-to-char v13, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 323
    :goto_1
    add-int/lit8 v7, v7, 0x1

    .line 324
    move v12, v7

    move v13, v2

    if-lt v12, v13, :cond_d

    .line 325
    .line 328
    const/4 v12, 0x0

    move v8, v12

    .line 329
    .local v8, "h":C
    move-object v12, v5

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    move v9, v12

    .line 330
    .local v9, "len":I
    const/4 v12, 0x0

    move v10, v12

    .local v10, "i":I
    :goto_2
    move v12, v10

    move v13, v9

    if-ge v12, v13, :cond_10

    .line 331
    move v12, v10

    const/4 v13, 0x2

    rem-int/lit8 v12, v12, 0x2

    if-eqz v12, :cond_e

    const/4 v12, 0x1

    :goto_3
    move v11, v12

    .line 332
    .local v11, "odd":Z
    move v12, v11

    if-eqz v12, :cond_f

    .line 333
    move v12, v8

    const/16 v13, 0x1e

    mul-int/lit8 v12, v12, 0x1e

    move-object v13, v5

    move v14, v10

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v13

    add-int/2addr v12, v13

    int-to-char v12, v12

    move v8, v12

    .line 334
    move-object v12, v3

    move v13, v8

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 330
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 242
    .end local v9    # "len":I
    .end local v10    # "i":I
    .end local v11    # "odd":Z
    .local v8, "ch":C
    :pswitch_0
    move v12, v8

    invoke-static {v12}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaUpper(C)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 243
    move v12, v8

    const/16 v13, 0x20

    if-ne v12, v13, :cond_0

    .line 244
    move-object v12, v5

    const/16 v13, 0x1a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    goto :goto_1

    .line 246
    :cond_0
    move-object v12, v5

    move v13, v8

    const/16 v14, 0x41

    add-int/lit8 v13, v13, -0x41

    int-to-char v13, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    goto :goto_1

    .line 249
    :cond_1
    move v12, v8

    invoke-static {v12}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaLower(C)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 250
    const/4 v12, 0x1

    move v6, v12

    .line 251
    move-object v12, v5

    const/16 v13, 0x1b

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 252
    goto/16 :goto_0

    .line 253
    :cond_2
    move v12, v8

    invoke-static {v12}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isMixed(C)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 254
    const/4 v12, 0x2

    move v6, v12

    .line 255
    move-object v12, v5

    const/16 v13, 0x1c

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 256
    goto/16 :goto_0

    .line 258
    :cond_3
    move-object v12, v5

    const/16 v13, 0x1d

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 259
    move-object v12, v5

    sget-object v13, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    move v14, v8

    aget-byte v13, v13, v14

    int-to-char v13, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 260
    goto/16 :goto_1

    .line 265
    :pswitch_1
    move v12, v8

    invoke-static {v12}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaLower(C)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 266
    move v12, v8

    const/16 v13, 0x20

    if-ne v12, v13, :cond_4

    .line 267
    move-object v12, v5

    const/16 v13, 0x1a

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    goto/16 :goto_1

    .line 269
    :cond_4
    move-object v12, v5

    move v13, v8

    const/16 v14, 0x61

    add-int/lit8 v13, v13, -0x61

    int-to-char v13, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    goto/16 :goto_1

    .line 272
    :cond_5
    move v12, v8

    invoke-static {v12}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaUpper(C)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 273
    move-object v12, v5

    const/16 v13, 0x1b

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 274
    move-object v12, v5

    move v13, v8

    const/16 v14, 0x41

    add-int/lit8 v13, v13, -0x41

    int-to-char v13, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 276
    goto/16 :goto_1

    .line 277
    :cond_6
    move v12, v8

    invoke-static {v12}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isMixed(C)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 278
    const/4 v12, 0x2

    move v6, v12

    .line 279
    move-object v12, v5

    const/16 v13, 0x1c

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 280
    goto/16 :goto_0

    .line 282
    :cond_7
    move-object v12, v5

    const/16 v13, 0x1d

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 283
    move-object v12, v5

    sget-object v13, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    move v14, v8

    aget-byte v13, v13, v14

    int-to-char v13, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 284
    goto/16 :goto_1

    .line 289
    :pswitch_2
    move v12, v8

    invoke-static {v12}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isMixed(C)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 290
    move-object v12, v5

    sget-object v13, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    move v14, v8

    aget-byte v13, v13, v14

    int-to-char v13, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    goto/16 :goto_1

    .line 292
    :cond_8
    move v12, v8

    invoke-static {v12}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaUpper(C)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 293
    const/4 v12, 0x0

    move v6, v12

    .line 294
    move-object v12, v5

    const/16 v13, 0x1c

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 295
    goto/16 :goto_0

    .line 296
    :cond_9
    move v12, v8

    invoke-static {v12}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isAlphaLower(C)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 297
    const/4 v12, 0x1

    move v6, v12

    .line 298
    move-object v12, v5

    const/16 v13, 0x1b

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 299
    goto/16 :goto_0

    .line 301
    :cond_a
    move v12, v1

    move v13, v7

    add-int/2addr v12, v13

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v13, v2

    if-ge v12, v13, :cond_b

    .line 302
    move-object v12, v0

    move v13, v1

    move v14, v7

    add-int/2addr v13, v14

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    invoke-interface {v12, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    move v9, v12

    .line 303
    .local v9, "next":C
    move v12, v9

    invoke-static {v12}, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->isPunctuation(C)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 304
    const/4 v12, 0x3

    move v6, v12

    .line 305
    move-object v12, v5

    const/16 v13, 0x19

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 306
    goto/16 :goto_0

    .line 309
    .end local v9    # "next":C
    :cond_b
    move-object v12, v5

    const/16 v13, 0x1d

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 310
    move-object v12, v5

    sget-object v13, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    move v14, v8

    aget-byte v13, v13, v14

    int-to-char v13, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 313
    goto/16 :goto_1

    .line 318
    :cond_c
    const/4 v12, 0x0

    move v6, v12

    .line 319
    move-object v12, v5

    const/16 v13, 0x1d

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 320
    goto/16 :goto_0

    .line 327
    :cond_d
    goto/16 :goto_0

    .line 331
    .local v8, "h":C
    .local v9, "len":I
    .restart local v10    # "i":I
    :cond_e
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 336
    .restart local v11    # "odd":Z
    :cond_f
    move-object v12, v5

    move v13, v10

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v12

    move v8, v12

    goto/16 :goto_4

    .line 339
    .end local v11    # "odd":Z
    :cond_10
    move v12, v9

    const/4 v13, 0x2

    rem-int/lit8 v12, v12, 0x2

    if-eqz v12, :cond_11

    .line 340
    move-object v12, v3

    move v13, v8

    const/16 v14, 0x1e

    mul-int/lit8 v13, v13, 0x1e

    const/16 v14, 0x1d

    add-int/lit8 v13, v13, 0x1d

    int-to-char v13, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 342
    :cond_11
    move v12, v6

    move v0, v12

    .end local v0    # "msg":Ljava/lang/CharSequence;
    return v0

    .line 240
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getBytesForMessage(Ljava/lang/String;)[B
    .locals 2

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "msg":Ljava/lang/String;
    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    move-object v0, v1

    .end local v0    # "msg":Ljava/lang/String;
    return-object v0
.end method

.method private static isAlphaLower(C)Z
    .locals 3

    .prologue
    .line 430
    move v0, p0

    .local v0, "ch":C
    move v1, v0

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    move v1, v0

    const/16 v2, 0x61

    if-lt v1, v2, :cond_1

    move v1, v0

    const/16 v2, 0x7a

    if-gt v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "ch":C
    return v0

    .restart local v0    # "ch":C
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isAlphaUpper(C)Z
    .locals 3

    .prologue
    .line 426
    move v0, p0

    .local v0, "ch":C
    move v1, v0

    const/16 v2, 0x20

    if-eq v1, v2, :cond_0

    move v1, v0

    const/16 v2, 0x41

    if-lt v1, v2, :cond_1

    move v1, v0

    const/16 v2, 0x5a

    if-gt v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "ch":C
    return v0

    .restart local v0    # "ch":C
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isDigit(C)Z
    .locals 3

    .prologue
    .line 422
    move v0, p0

    .local v0, "ch":C
    move v1, v0

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    move v1, v0

    const/16 v2, 0x39

    if-gt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "ch":C
    return v0

    .restart local v0    # "ch":C
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isMixed(C)Z
    .locals 3

    .prologue
    .line 434
    move v0, p0

    .local v0, "ch":C
    sget-object v1, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->MIXED:[B

    move v2, v0

    aget-byte v1, v1, v2

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "ch":C
    return v0

    .restart local v0    # "ch":C
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isPunctuation(C)Z
    .locals 3

    .prologue
    .line 438
    move v0, p0

    .local v0, "ch":C
    sget-object v1, Lcom/google/zxing/pdf417/encoder/PDF417HighLevelEncoder;->PUNCTUATION:[B

    move v2, v0

    aget-byte v1, v1, v2

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "ch":C
    return v0

    .restart local v0    # "ch":C
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isText(C)Z
    .locals 3

    .prologue
    .line 442
    move v0, p0

    .local v0, "ch":C
    move v1, v0

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    move v1, v0

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    move v1, v0

    const/16 v2, 0xd

    if-eq v1, v2, :cond_0

    move v1, v0

    const/16 v2, 0x20

    if-lt v1, v2, :cond_1

    move v1, v0

    const/16 v2, 0x7e

    if-gt v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "ch":C
    return v0

    .restart local v0    # "ch":C
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
