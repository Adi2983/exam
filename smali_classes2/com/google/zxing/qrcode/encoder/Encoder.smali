.class public final Lcom/google/zxing/qrcode/encoder/Encoder;
.super Ljava/lang/Object;
.source "Encoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/qrcode/encoder/Encoder$1;
    }
.end annotation


# static fields
.field private static final ALPHANUMERIC_TABLE:[I

.field static final DEFAULT_BYTE_MODE_ENCODING:Ljava/lang/String; = "ISO-8859-1"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0x60

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x24
        -0x1
        -0x1
        -0x1
        0x25
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
        0x27
        0x28
        -0x1
        0x29
        0x2a
        0x2b
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x2c
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/encoder/Encoder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method static append8BitBytes(Ljava/lang/String;Lcom/google/zxing/common/BitArray;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 541
    move-object v0, p0

    .local v0, "content":Ljava/lang/String;
    move-object v1, p1

    .local v1, "bits":Lcom/google/zxing/common/BitArray;
    move-object v2, p2

    .local v2, "encoding":Ljava/lang/String;
    move-object v8, v0

    move-object v9, v2

    :try_start_0
    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    move-object v3, v8

    .line 544
    .line 545
    .local v3, "bytes":[B
    move-object v8, v3

    move-object v4, v8

    .local v4, "arr$":[B
    move-object v8, v4

    array-length v8, v8

    move v5, v8

    .local v5, "len$":I
    const/4 v8, 0x0

    move v6, v8

    .local v6, "i$":I
    :goto_0
    move v8, v6

    move v9, v5

    if-ge v8, v9, :cond_0

    move-object v8, v4

    move v9, v6

    aget-byte v8, v8, v9

    move v7, v8

    .line 546
    .local v7, "b":B
    move-object v8, v1

    move v9, v7

    const/16 v10, 0x8

    invoke-virtual {v8, v9, v10}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 545
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 542
    .end local v3    # "bytes":[B
    .end local v4    # "arr$":[B
    .end local v5    # "len$":I
    .end local v6    # "i$":I
    .end local v7    # "b":B
    :catch_0
    move-exception v8

    move-object v4, v8

    .line 543
    .local v4, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v8, Lcom/google/zxing/WriterException;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v4

    invoke-direct {v9, v10}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw v8

    .line 548
    .restart local v3    # "bytes":[B
    .local v4, "arr$":[B
    .restart local v5    # "len$":I
    .restart local v6    # "i$":I
    :cond_0
    return-void
.end method

.method static appendAlphanumericBytes(Ljava/lang/CharSequence;Lcom/google/zxing/common/BitArray;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 514
    move-object v0, p0

    .local v0, "content":Ljava/lang/CharSequence;
    move-object v1, p1

    .local v1, "bits":Lcom/google/zxing/common/BitArray;
    move-object v6, v0

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    move v2, v6

    .line 515
    .local v2, "length":I
    const/4 v6, 0x0

    move v3, v6

    .line 516
    .local v3, "i":I
    :goto_0
    move v6, v3

    move v7, v2

    if-ge v6, v7, :cond_3

    .line 517
    move-object v6, v0

    move v7, v3

    invoke-interface {v6, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/google/zxing/qrcode/encoder/Encoder;->getAlphanumericCode(I)I

    move-result v6

    move v4, v6

    .line 518
    .local v4, "code1":I
    move v6, v4

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 519
    new-instance v6, Lcom/google/zxing/WriterException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Lcom/google/zxing/WriterException;-><init>()V

    throw v6

    .line 521
    :cond_0
    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move v7, v2

    if-ge v6, v7, :cond_2

    .line 522
    move-object v6, v0

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-interface {v6, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/google/zxing/qrcode/encoder/Encoder;->getAlphanumericCode(I)I

    move-result v6

    move v5, v6

    .line 523
    .local v5, "code2":I
    move v6, v5

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 524
    new-instance v6, Lcom/google/zxing/WriterException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Lcom/google/zxing/WriterException;-><init>()V

    throw v6

    .line 527
    :cond_1
    move-object v6, v1

    move v7, v4

    const/16 v8, 0x2d

    mul-int/lit8 v7, v7, 0x2d

    move v8, v5

    add-int/2addr v7, v8

    const/16 v8, 0xb

    invoke-virtual {v6, v7, v8}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 528
    add-int/lit8 v3, v3, 0x2

    .line 534
    .end local v5    # "code2":I
    :goto_1
    goto :goto_0

    .line 531
    :cond_2
    move-object v6, v1

    move v7, v4

    const/4 v8, 0x6

    invoke-virtual {v6, v7, v8}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 532
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 535
    .end local v4    # "code1":I
    :cond_3
    return-void
.end method

.method static appendBytes(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 471
    move-object v0, p0

    .local v0, "content":Ljava/lang/String;
    move-object v1, p1

    .local v1, "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    move-object v2, p2

    .local v2, "bits":Lcom/google/zxing/common/BitArray;
    move-object v3, p3

    .local v3, "encoding":Ljava/lang/String;
    sget-object v4, Lcom/google/zxing/qrcode/encoder/Encoder$1;->$SwitchMap$com$google$zxing$qrcode$decoder$Mode:[I

    move-object v5, v1

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/decoder/Mode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 485
    new-instance v4, Lcom/google/zxing/WriterException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid mode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 473
    :pswitch_0
    move-object v4, v0

    move-object v5, v2

    invoke-static {v4, v5}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendNumericBytes(Ljava/lang/CharSequence;Lcom/google/zxing/common/BitArray;)V

    .line 474
    .line 487
    :goto_0
    return-void

    .line 476
    :pswitch_1
    move-object v4, v0

    move-object v5, v2

    invoke-static {v4, v5}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendAlphanumericBytes(Ljava/lang/CharSequence;Lcom/google/zxing/common/BitArray;)V

    .line 477
    goto :goto_0

    .line 479
    :pswitch_2
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-static {v4, v5, v6}, Lcom/google/zxing/qrcode/encoder/Encoder;->append8BitBytes(Ljava/lang/String;Lcom/google/zxing/common/BitArray;Ljava/lang/String;)V

    .line 480
    goto :goto_0

    .line 482
    :pswitch_3
    move-object v4, v0

    move-object v5, v2

    invoke-static {v4, v5}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendKanjiBytes(Ljava/lang/String;Lcom/google/zxing/common/BitArray;)V

    .line 483
    goto :goto_0

    .line 471
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static appendECI(Lcom/google/zxing/common/CharacterSetECI;Lcom/google/zxing/common/BitArray;)V
    .locals 5

    .prologue
    .line 577
    move-object v0, p0

    .local v0, "eci":Lcom/google/zxing/common/CharacterSetECI;
    move-object v1, p1

    .local v1, "bits":Lcom/google/zxing/common/BitArray;
    move-object v2, v1

    sget-object v3, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v3}, Lcom/google/zxing/qrcode/decoder/Mode;->getBits()I

    move-result v3

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 579
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/zxing/common/CharacterSetECI;->getValue()I

    move-result v3

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 580
    return-void
.end method

.method static appendKanjiBytes(Ljava/lang/String;Lcom/google/zxing/common/BitArray;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 553
    move-object v0, p0

    .local v0, "content":Ljava/lang/String;
    move-object v1, p1

    .local v1, "bits":Lcom/google/zxing/common/BitArray;
    move-object v10, v0

    :try_start_0
    const-string/jumbo v11, "Shift_JIS"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    move-object v2, v10

    .line 556
    .line 557
    .local v2, "bytes":[B
    move-object v10, v2

    array-length v10, v10

    move v3, v10

    .line 558
    .local v3, "length":I
    const/4 v10, 0x0

    move v4, v10

    .local v4, "i":I
    :goto_0
    move v10, v4

    move v11, v3

    if-ge v10, v11, :cond_3

    .line 559
    move-object v10, v2

    move v11, v4

    aget-byte v10, v10, v11

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    move v5, v10

    .line 560
    .local v5, "byte1":I
    move-object v10, v2

    move v11, v4

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    aget-byte v10, v10, v11

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    move v6, v10

    .line 561
    .local v6, "byte2":I
    move v10, v5

    const/16 v11, 0x8

    shl-int/lit8 v10, v10, 0x8

    move v11, v6

    or-int/2addr v10, v11

    move v7, v10

    .line 562
    .local v7, "code":I
    const/4 v10, -0x1

    move v8, v10

    .line 563
    .local v8, "subtracted":I
    move v10, v7

    const v11, 0x8140

    if-lt v10, v11, :cond_1

    move v10, v7

    const v11, 0x9ffc

    if-gt v10, v11, :cond_1

    .line 564
    move v10, v7

    const v11, 0x8140

    sub-int/2addr v10, v11

    move v8, v10

    .line 568
    :cond_0
    :goto_1
    move v10, v8

    const/4 v11, -0x1

    if-ne v10, v11, :cond_2

    .line 569
    new-instance v10, Lcom/google/zxing/WriterException;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    const-string/jumbo v12, "Invalid byte sequence"

    invoke-direct {v11, v12}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 554
    .end local v2    # "bytes":[B
    .end local v3    # "length":I
    .end local v4    # "i":I
    .end local v5    # "byte1":I
    .end local v6    # "byte2":I
    .end local v7    # "code":I
    .end local v8    # "subtracted":I
    :catch_0
    move-exception v10

    move-object v3, v10

    .line 555
    .local v3, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v10, Lcom/google/zxing/WriterException;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v3

    invoke-direct {v11, v12}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 565
    .restart local v2    # "bytes":[B
    .local v3, "length":I
    .restart local v4    # "i":I
    .restart local v5    # "byte1":I
    .restart local v6    # "byte2":I
    .restart local v7    # "code":I
    .restart local v8    # "subtracted":I
    :cond_1
    move v10, v7

    const v11, 0xe040

    if-lt v10, v11, :cond_0

    move v10, v7

    const v11, 0xebbf

    if-gt v10, v11, :cond_0

    .line 566
    move v10, v7

    const v11, 0xc140

    sub-int/2addr v10, v11

    move v8, v10

    goto :goto_1

    .line 571
    :cond_2
    move v10, v8

    const/16 v11, 0x8

    shr-int/lit8 v10, v10, 0x8

    const/16 v11, 0xc0

    mul-int/lit16 v10, v10, 0xc0

    move v11, v8

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    add-int/2addr v10, v11

    move v9, v10

    .line 572
    .local v9, "encoded":I
    move-object v10, v1

    move v11, v9

    const/16 v12, 0xd

    invoke-virtual {v10, v11, v12}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 558
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 574
    .end local v5    # "byte1":I
    .end local v6    # "byte2":I
    .end local v7    # "code":I
    .end local v8    # "subtracted":I
    .end local v9    # "encoded":I
    :cond_3
    return-void
.end method

.method static appendLengthInfo(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 457
    move v0, p0

    .local v0, "numLetters":I
    move-object v1, p1

    .local v1, "version":Lcom/google/zxing/qrcode/decoder/Version;
    move-object v2, p2

    .local v2, "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    move-object v3, p3

    .local v3, "bits":Lcom/google/zxing/common/BitArray;
    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v5, v6}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v5

    move v4, v5

    .line 458
    .local v4, "numBits":I
    move v5, v0

    const/4 v6, 0x1

    move v7, v4

    shl-int/2addr v6, v7

    if-lt v5, v6, :cond_0

    .line 459
    new-instance v5, Lcom/google/zxing/WriterException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " is bigger than "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    move v9, v4

    shl-int/2addr v8, v9

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 461
    :cond_0
    move-object v5, v3

    move v6, v0

    move v7, v4

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 462
    return-void
.end method

.method static appendModeInfo(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V
    .locals 5

    .prologue
    .line 449
    move-object v0, p0

    .local v0, "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    move-object v1, p1

    .local v1, "bits":Lcom/google/zxing/common/BitArray;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/zxing/qrcode/decoder/Mode;->getBits()I

    move-result v3

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 450
    return-void
.end method

.method static appendNumericBytes(Ljava/lang/CharSequence;Lcom/google/zxing/common/BitArray;)V
    .locals 11

    .prologue
    .line 490
    move-object v0, p0

    .local v0, "content":Ljava/lang/CharSequence;
    move-object v1, p1

    .local v1, "bits":Lcom/google/zxing/common/BitArray;
    move-object v7, v0

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move v2, v7

    .line 491
    .local v2, "length":I
    const/4 v7, 0x0

    move v3, v7

    .line 492
    .local v3, "i":I
    :goto_0
    move v7, v3

    move v8, v2

    if-ge v7, v8, :cond_2

    .line 493
    move-object v7, v0

    move v8, v3

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0x30

    add-int/lit8 v7, v7, -0x30

    move v4, v7

    .line 494
    .local v4, "num1":I
    move v7, v3

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    move v8, v2

    if-ge v7, v8, :cond_0

    .line 496
    move-object v7, v0

    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0x30

    add-int/lit8 v7, v7, -0x30

    move v5, v7

    .line 497
    .local v5, "num2":I
    move-object v7, v0

    move v8, v3

    const/4 v9, 0x2

    add-int/lit8 v8, v8, 0x2

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0x30

    add-int/lit8 v7, v7, -0x30

    move v6, v7

    .line 498
    .local v6, "num3":I
    move-object v7, v1

    move v8, v4

    const/16 v9, 0x64

    mul-int/lit8 v8, v8, 0x64

    move v9, v5

    const/16 v10, 0xa

    mul-int/lit8 v9, v9, 0xa

    add-int/2addr v8, v9

    move v9, v6

    add-int/2addr v8, v9

    const/16 v9, 0xa

    invoke-virtual {v7, v8, v9}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 499
    add-int/lit8 v3, v3, 0x3

    .line 510
    .end local v5    # "num2":I
    .end local v6    # "num3":I
    :goto_1
    goto :goto_0

    .line 500
    :cond_0
    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v8, v2

    if-ge v7, v8, :cond_1

    .line 502
    move-object v7, v0

    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0x30

    add-int/lit8 v7, v7, -0x30

    move v5, v7

    .line 503
    .restart local v5    # "num2":I
    move-object v7, v1

    move v8, v4

    const/16 v9, 0xa

    mul-int/lit8 v8, v8, 0xa

    move v9, v5

    add-int/2addr v8, v9

    const/4 v9, 0x7

    invoke-virtual {v7, v8, v9}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 504
    add-int/lit8 v3, v3, 0x2

    .line 505
    goto :goto_1

    .line 507
    .end local v5    # "num2":I
    :cond_1
    move-object v7, v1

    move v8, v4

    const/4 v9, 0x4

    invoke-virtual {v7, v8, v9}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 508
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 511
    .end local v4    # "num1":I
    :cond_2
    return-void
.end method

.method private static calculateMaskPenalty(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .locals 3

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "matrix":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    move-object v1, v0

    invoke-static {v1}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule1(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v1

    move-object v2, v0

    invoke-static {v2}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule2(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v2

    add-int/2addr v1, v2

    move-object v2, v0

    invoke-static {v2}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule3(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v2

    add-int/2addr v1, v2

    move-object v2, v0

    invoke-static {v2}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule4(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v2

    add-int/2addr v1, v2

    move v0, v1

    .end local v0    # "matrix":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    return v0
.end method

.method private static chooseMaskPattern(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 238
    move-object v0, p0

    .local v0, "bits":Lcom/google/zxing/common/BitArray;
    move-object v1, p1

    .local v1, "ecLevel":Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    move-object v2, p2

    .local v2, "version":Lcom/google/zxing/qrcode/decoder/Version;
    move-object/from16 v3, p3

    .local v3, "matrix":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    const v8, 0x7fffffff

    move v4, v8

    .line 239
    .local v4, "minPenalty":I
    const/4 v8, -0x1

    move v5, v8

    .line 241
    .local v5, "bestMaskPattern":I
    const/4 v8, 0x0

    move v6, v8

    .local v6, "maskPattern":I
    :goto_0
    move v8, v6

    const/16 v9, 0x8

    if-ge v8, v9, :cond_1

    .line 242
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move v11, v6

    move-object v12, v3

    invoke-static {v8, v9, v10, v11, v12}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->buildMatrix(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 243
    move-object v8, v3

    invoke-static {v8}, Lcom/google/zxing/qrcode/encoder/Encoder;->calculateMaskPenalty(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v8

    move v7, v8

    .line 244
    .local v7, "penalty":I
    move v8, v7

    move v9, v4

    if-ge v8, v9, :cond_0

    .line 245
    move v8, v7

    move v4, v8

    .line 246
    move v8, v6

    move v5, v8

    .line 241
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 249
    .end local v7    # "penalty":I
    :cond_1
    move v8, v5

    move v0, v8

    .end local v0    # "bits":Lcom/google/zxing/common/BitArray;
    return v0
.end method

.method public static chooseMode(Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/Mode;
    .locals 3

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "content":Ljava/lang/String;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseMode(Ljava/lang/String;Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "content":Ljava/lang/String;
    return-object v0
.end method

.method private static chooseMode(Ljava/lang/String;Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/Mode;
    .locals 8

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "content":Ljava/lang/String;
    move-object v1, p1

    .local v1, "encoding":Ljava/lang/String;
    const-string/jumbo v6, "Shift_JIS"

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 190
    move-object v6, v0

    invoke-static {v6}, Lcom/google/zxing/qrcode/encoder/Encoder;->isOnlyDoubleByteKanji(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    :goto_0
    move-object v0, v6

    .line 210
    .end local v0    # "content":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 190
    .restart local v0    # "content":Ljava/lang/String;
    :cond_0
    sget-object v6, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    goto :goto_0

    .line 192
    :cond_1
    const/4 v6, 0x0

    move v2, v6

    .line 193
    .local v2, "hasNumeric":Z
    const/4 v6, 0x0

    move v3, v6

    .line 194
    .local v3, "hasAlphanumeric":Z
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_2
    move v6, v4

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 195
    move-object v6, v0

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v5, v6

    .line 196
    .local v5, "c":C
    move v6, v5

    const/16 v7, 0x30

    if-lt v6, v7, :cond_2

    move v6, v5

    const/16 v7, 0x39

    if-gt v6, v7, :cond_2

    .line 197
    const/4 v6, 0x1

    move v2, v6

    .line 194
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 198
    :cond_2
    move v6, v5

    invoke-static {v6}, Lcom/google/zxing/qrcode/encoder/Encoder;->getAlphanumericCode(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    .line 199
    const/4 v6, 0x1

    move v3, v6

    goto :goto_3

    .line 201
    :cond_3
    sget-object v6, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    move-object v0, v6

    goto :goto_1

    .line 204
    .end local v5    # "c":C
    :cond_4
    move v6, v3

    if-eqz v6, :cond_5

    .line 205
    sget-object v6, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    move-object v0, v6

    goto :goto_1

    .line 207
    :cond_5
    move v6, v2

    if-eqz v6, :cond_6

    .line 208
    sget-object v6, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    move-object v0, v6

    goto :goto_1

    .line 210
    :cond_6
    sget-object v6, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    move-object v0, v6

    goto :goto_1
.end method

.method private static chooseVersion(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 254
    move v0, p0

    .local v0, "numInputBits":I
    move-object v1, p1

    .local v1, "ecLevel":Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    const/4 v9, 0x1

    move v2, v9

    .local v2, "versionNum":I
    :goto_0
    move v9, v2

    const/16 v10, 0x28

    if-gt v9, v10, :cond_1

    .line 255
    move v9, v2

    invoke-static {v9}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v9

    move-object v3, v9

    .line 257
    .local v3, "version":Lcom/google/zxing/qrcode/decoder/Version;
    move-object v9, v3

    invoke-virtual {v9}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v9

    move v4, v9

    .line 259
    .local v4, "numBytes":I
    move-object v9, v3

    move-object v10, v1

    invoke-virtual {v9, v10}, Lcom/google/zxing/qrcode/decoder/Version;->getECBlocksForLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-result-object v9

    move-object v5, v9

    .line 260
    .local v5, "ecBlocks":Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    move-object v9, v5

    invoke-virtual {v9}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getTotalECCodewords()I

    move-result v9

    move v6, v9

    .line 262
    .local v6, "numEcBytes":I
    move v9, v4

    move v10, v6

    sub-int/2addr v9, v10

    move v7, v9

    .line 263
    .local v7, "numDataBytes":I
    move v9, v0

    const/4 v10, 0x7

    add-int/lit8 v9, v9, 0x7

    const/16 v10, 0x8

    div-int/lit8 v9, v9, 0x8

    move v8, v9

    .line 264
    .local v8, "totalInputBytes":I
    move v9, v7

    move v10, v8

    if-lt v9, v10, :cond_0

    .line 265
    move-object v9, v3

    move-object v0, v9

    .end local v0    # "numInputBits":I
    return-object v0

    .line 254
    .restart local v0    # "numInputBits":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 268
    .end local v3    # "version":Lcom/google/zxing/qrcode/decoder/Version;
    .end local v4    # "numBytes":I
    .end local v5    # "ecBlocks":Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    .end local v6    # "numEcBytes":I
    .end local v7    # "numDataBytes":I
    .end local v8    # "totalInputBytes":I
    :cond_1
    new-instance v9, Lcom/google/zxing/WriterException;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    const-string/jumbo v11, "Data too big"

    invoke-direct {v10, v11}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method public static encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/encoder/QRCode;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "content":Ljava/lang/String;
    move-object v1, p1

    .local v1, "ecLevel":Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/google/zxing/qrcode/encoder/Encoder;->encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/qrcode/encoder/QRCode;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "content":Ljava/lang/String;
    return-object v0
.end method

.method public static encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/qrcode/encoder/QRCode;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/qrcode/encoder/QRCode;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 84
    move-object/from16 v2, p0

    .local v2, "content":Ljava/lang/String;
    move-object/from16 v3, p1

    .local v3, "ecLevel":Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    move-object/from16 v4, p2

    .local v4, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    move-object/from16 v22, v4

    if-nez v22, :cond_2

    const/16 v22, 0x0

    :goto_0
    move-object/from16 v5, v22

    .line 85
    .local v5, "encoding":Ljava/lang/String;
    move-object/from16 v22, v5

    if-nez v22, :cond_0

    .line 86
    const-string/jumbo v22, "ISO-8859-1"

    move-object/from16 v5, v22

    .line 91
    :cond_0
    move-object/from16 v22, v2

    move-object/from16 v23, v5

    invoke-static/range {v22 .. v23}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseMode(Ljava/lang/String;Ljava/lang/String;)Lcom/google/zxing/qrcode/decoder/Mode;

    move-result-object v22

    move-object/from16 v6, v22

    .line 95
    .local v6, "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    new-instance v22, Lcom/google/zxing/common/BitArray;

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    invoke-direct/range {v23 .. v23}, Lcom/google/zxing/common/BitArray;-><init>()V

    move-object/from16 v7, v22

    .line 98
    .local v7, "headerBits":Lcom/google/zxing/common/BitArray;
    move-object/from16 v22, v6

    sget-object v23, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_1

    const-string/jumbo v22, "ISO-8859-1"

    move-object/from16 v23, v5

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1

    .line 99
    move-object/from16 v22, v5

    invoke-static/range {v22 .. v22}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByName(Ljava/lang/String;)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v22

    move-object/from16 v8, v22

    .line 100
    .local v8, "eci":Lcom/google/zxing/common/CharacterSetECI;
    move-object/from16 v22, v8

    if-eqz v22, :cond_1

    .line 101
    move-object/from16 v22, v8

    move-object/from16 v23, v7

    invoke-static/range {v22 .. v23}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendECI(Lcom/google/zxing/common/CharacterSetECI;Lcom/google/zxing/common/BitArray;)V

    .line 106
    .end local v8    # "eci":Lcom/google/zxing/common/CharacterSetECI;
    :cond_1
    move-object/from16 v22, v6

    move-object/from16 v23, v7

    invoke-static/range {v22 .. v23}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendModeInfo(Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V

    .line 110
    new-instance v22, Lcom/google/zxing/common/BitArray;

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    invoke-direct/range {v23 .. v23}, Lcom/google/zxing/common/BitArray;-><init>()V

    move-object/from16 v8, v22

    .line 111
    .local v8, "dataBits":Lcom/google/zxing/common/BitArray;
    move-object/from16 v22, v2

    move-object/from16 v23, v6

    move-object/from16 v24, v8

    move-object/from16 v25, v5

    invoke-static/range {v22 .. v25}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendBytes(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;Ljava/lang/String;)V

    .line 117
    move-object/from16 v22, v7

    invoke-virtual/range {v22 .. v22}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v22

    move-object/from16 v23, v6

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v23

    add-int v22, v22, v23

    move-object/from16 v23, v8

    invoke-virtual/range {v23 .. v23}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v23

    add-int v22, v22, v23

    move/from16 v9, v22

    .line 120
    .local v9, "provisionalBitsNeeded":I
    move/from16 v22, v9

    move-object/from16 v23, v3

    invoke-static/range {v22 .. v23}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseVersion(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v22

    move-object/from16 v10, v22

    .line 124
    .local v10, "provisionalVersion":Lcom/google/zxing/qrcode/decoder/Version;
    move-object/from16 v22, v7

    invoke-virtual/range {v22 .. v22}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v22

    move-object/from16 v23, v6

    move-object/from16 v24, v10

    invoke-virtual/range {v23 .. v24}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v23

    add-int v22, v22, v23

    move-object/from16 v23, v8

    invoke-virtual/range {v23 .. v23}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v23

    add-int v22, v22, v23

    move/from16 v11, v22

    .line 127
    .local v11, "bitsNeeded":I
    move/from16 v22, v11

    move-object/from16 v23, v3

    invoke-static/range {v22 .. v23}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseVersion(ILcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v22

    move-object/from16 v12, v22

    .line 129
    .local v12, "version":Lcom/google/zxing/qrcode/decoder/Version;
    new-instance v22, Lcom/google/zxing/common/BitArray;

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    invoke-direct/range {v23 .. v23}, Lcom/google/zxing/common/BitArray;-><init>()V

    move-object/from16 v13, v22

    .line 130
    .local v13, "headerAndDataBits":Lcom/google/zxing/common/BitArray;
    move-object/from16 v22, v13

    move-object/from16 v23, v7

    invoke-virtual/range {v22 .. v23}, Lcom/google/zxing/common/BitArray;->appendBitArray(Lcom/google/zxing/common/BitArray;)V

    .line 132
    move-object/from16 v22, v6

    sget-object v23, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_3

    move-object/from16 v22, v8

    invoke-virtual/range {v22 .. v22}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v22

    :goto_1
    move/from16 v14, v22

    .line 133
    .local v14, "numLetters":I
    move/from16 v22, v14

    move-object/from16 v23, v12

    move-object/from16 v24, v6

    move-object/from16 v25, v13

    invoke-static/range {v22 .. v25}, Lcom/google/zxing/qrcode/encoder/Encoder;->appendLengthInfo(ILcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/Mode;Lcom/google/zxing/common/BitArray;)V

    .line 135
    move-object/from16 v22, v13

    move-object/from16 v23, v8

    invoke-virtual/range {v22 .. v23}, Lcom/google/zxing/common/BitArray;->appendBitArray(Lcom/google/zxing/common/BitArray;)V

    .line 137
    move-object/from16 v22, v12

    move-object/from16 v23, v3

    invoke-virtual/range {v22 .. v23}, Lcom/google/zxing/qrcode/decoder/Version;->getECBlocksForLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-result-object v22

    move-object/from16 v15, v22

    .line 138
    .local v15, "ecBlocks":Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    move-object/from16 v22, v12

    invoke-virtual/range {v22 .. v22}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v22

    move-object/from16 v23, v15

    invoke-virtual/range {v23 .. v23}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getTotalECCodewords()I

    move-result v23

    sub-int v22, v22, v23

    move/from16 v16, v22

    .line 141
    .local v16, "numDataBytes":I
    move/from16 v22, v16

    move-object/from16 v23, v13

    invoke-static/range {v22 .. v23}, Lcom/google/zxing/qrcode/encoder/Encoder;->terminateBits(ILcom/google/zxing/common/BitArray;)V

    .line 144
    move-object/from16 v22, v13

    move-object/from16 v23, v12

    invoke-virtual/range {v23 .. v23}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v23

    move/from16 v24, v16

    move-object/from16 v25, v15

    invoke-virtual/range {v25 .. v25}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getNumBlocks()I

    move-result v25

    invoke-static/range {v22 .. v25}, Lcom/google/zxing/qrcode/encoder/Encoder;->interleaveWithECBytes(Lcom/google/zxing/common/BitArray;III)Lcom/google/zxing/common/BitArray;

    move-result-object v22

    move-object/from16 v17, v22

    .line 149
    .local v17, "finalBits":Lcom/google/zxing/common/BitArray;
    new-instance v22, Lcom/google/zxing/qrcode/encoder/QRCode;

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    invoke-direct/range {v23 .. v23}, Lcom/google/zxing/qrcode/encoder/QRCode;-><init>()V

    move-object/from16 v18, v22

    .line 151
    .local v18, "qrCode":Lcom/google/zxing/qrcode/encoder/QRCode;
    move-object/from16 v22, v18

    move-object/from16 v23, v3

    invoke-virtual/range {v22 .. v23}, Lcom/google/zxing/qrcode/encoder/QRCode;->setECLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V

    .line 152
    move-object/from16 v22, v18

    move-object/from16 v23, v6

    invoke-virtual/range {v22 .. v23}, Lcom/google/zxing/qrcode/encoder/QRCode;->setMode(Lcom/google/zxing/qrcode/decoder/Mode;)V

    .line 153
    move-object/from16 v22, v18

    move-object/from16 v23, v12

    invoke-virtual/range {v22 .. v23}, Lcom/google/zxing/qrcode/encoder/QRCode;->setVersion(Lcom/google/zxing/qrcode/decoder/Version;)V

    .line 156
    move-object/from16 v22, v12

    invoke-virtual/range {v22 .. v22}, Lcom/google/zxing/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v22

    move/from16 v19, v22

    .line 157
    .local v19, "dimension":I
    new-instance v22, Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    move-object/from16 v27, v22

    move-object/from16 v22, v27

    move-object/from16 v23, v27

    move/from16 v24, v19

    move/from16 v25, v19

    invoke-direct/range {v23 .. v25}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;-><init>(II)V

    move-object/from16 v20, v22

    .line 158
    .local v20, "matrix":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    move-object/from16 v22, v17

    move-object/from16 v23, v3

    move-object/from16 v24, v12

    move-object/from16 v25, v20

    invoke-static/range {v22 .. v25}, Lcom/google/zxing/qrcode/encoder/Encoder;->chooseMaskPattern(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I

    move-result v22

    move/from16 v21, v22

    .line 159
    .local v21, "maskPattern":I
    move-object/from16 v22, v18

    move/from16 v23, v21

    invoke-virtual/range {v22 .. v23}, Lcom/google/zxing/qrcode/encoder/QRCode;->setMaskPattern(I)V

    .line 162
    move-object/from16 v22, v17

    move-object/from16 v23, v3

    move-object/from16 v24, v12

    move/from16 v25, v21

    move-object/from16 v26, v20

    invoke-static/range {v22 .. v26}, Lcom/google/zxing/qrcode/encoder/MatrixUtil;->buildMatrix(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Lcom/google/zxing/qrcode/decoder/Version;ILcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 163
    move-object/from16 v22, v18

    move-object/from16 v23, v20

    invoke-virtual/range {v22 .. v23}, Lcom/google/zxing/qrcode/encoder/QRCode;->setMatrix(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V

    .line 165
    move-object/from16 v22, v18

    move-object/from16 v2, v22

    .end local v2    # "content":Ljava/lang/String;
    return-object v2

    .line 84
    .end local v5    # "encoding":Ljava/lang/String;
    .end local v6    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .end local v7    # "headerBits":Lcom/google/zxing/common/BitArray;
    .end local v8    # "dataBits":Lcom/google/zxing/common/BitArray;
    .end local v9    # "provisionalBitsNeeded":I
    .end local v10    # "provisionalVersion":Lcom/google/zxing/qrcode/decoder/Version;
    .end local v11    # "bitsNeeded":I
    .end local v12    # "version":Lcom/google/zxing/qrcode/decoder/Version;
    .end local v13    # "headerAndDataBits":Lcom/google/zxing/common/BitArray;
    .end local v14    # "numLetters":I
    .end local v15    # "ecBlocks":Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    .end local v16    # "numDataBytes":I
    .end local v17    # "finalBits":Lcom/google/zxing/common/BitArray;
    .end local v18    # "qrCode":Lcom/google/zxing/qrcode/encoder/QRCode;
    .end local v19    # "dimension":I
    .end local v20    # "matrix":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .end local v21    # "maskPattern":I
    .restart local v2    # "content":Ljava/lang/String;
    :cond_2
    move-object/from16 v22, v4

    sget-object v23, Lcom/google/zxing/EncodeHintType;->CHARACTER_SET:Lcom/google/zxing/EncodeHintType;

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    goto/16 :goto_0

    .line 132
    .restart local v5    # "encoding":Ljava/lang/String;
    .restart local v6    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .restart local v7    # "headerBits":Lcom/google/zxing/common/BitArray;
    .restart local v8    # "dataBits":Lcom/google/zxing/common/BitArray;
    .restart local v9    # "provisionalBitsNeeded":I
    .restart local v10    # "provisionalVersion":Lcom/google/zxing/qrcode/decoder/Version;
    .restart local v11    # "bitsNeeded":I
    .restart local v12    # "version":Lcom/google/zxing/qrcode/decoder/Version;
    .restart local v13    # "headerAndDataBits":Lcom/google/zxing/common/BitArray;
    :cond_3
    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    goto/16 :goto_1
.end method

.method static generateECBytes([BI)[B
    .locals 12

    .prologue
    .line 431
    move-object v0, p0

    .local v0, "dataBytes":[B
    move v1, p1

    .local v1, "numEcBytesInBlock":I
    move-object v6, v0

    array-length v6, v6

    move v2, v6

    .line 432
    .local v2, "numDataBytes":I
    move v6, v2

    move v7, v1

    add-int/2addr v6, v7

    new-array v6, v6, [I

    move-object v3, v6

    .line 433
    .local v3, "toEncode":[I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move v7, v2

    if-ge v6, v7, :cond_0

    .line 434
    move-object v6, v3

    move v7, v4

    move-object v8, v0

    move v9, v4

    aget-byte v8, v8, v9

    const/16 v9, 0xff

    and-int/lit16 v8, v8, 0xff

    aput v8, v6, v7

    .line 433
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 436
    :cond_0
    new-instance v6, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    sget-object v8, Lcom/google/zxing/common/reedsolomon/GenericGF;->QR_CODE_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v7, v8}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    move-object v7, v3

    move v8, v1

    invoke-virtual {v6, v7, v8}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->encode([II)V

    .line 438
    move v6, v1

    new-array v6, v6, [B

    move-object v4, v6

    .line 439
    .local v4, "ecBytes":[B
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_1
    move v6, v5

    move v7, v1

    if-ge v6, v7, :cond_1

    .line 440
    move-object v6, v4

    move v7, v5

    move-object v8, v3

    move v9, v2

    move v10, v5

    add-int/2addr v9, v10

    aget v8, v8, v9

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 439
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 442
    :cond_1
    move-object v6, v4

    move-object v0, v6

    .end local v0    # "dataBytes":[B
    return-object v0
.end method

.method static getAlphanumericCode(I)I
    .locals 3

    .prologue
    .line 173
    move v0, p0

    .local v0, "code":I
    move v1, v0

    sget-object v2, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 174
    sget-object v1, Lcom/google/zxing/qrcode/encoder/Encoder;->ALPHANUMERIC_TABLE:[I

    move v2, v0

    aget v1, v1, v2

    move v0, v1

    .line 176
    .end local v0    # "code":I
    :goto_0
    return v0

    .restart local v0    # "code":I
    :cond_0
    const/4 v1, -0x1

    move v0, v1

    goto :goto_0
.end method

.method static getNumDataBytesAndNumECBytesForBlockID(IIII[I[I)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 312
    move/from16 v0, p0

    .local v0, "numTotalBytes":I
    move/from16 v1, p1

    .local v1, "numDataBytes":I
    move/from16 v2, p2

    .local v2, "numRSBlocks":I
    move/from16 v3, p3

    .local v3, "blockID":I
    move-object/from16 v4, p4

    .local v4, "numDataBytesInBlock":[I
    move-object/from16 v5, p5

    .local v5, "numECBytesInBlock":[I
    move v14, v3

    move v15, v2

    if-lt v14, v15, :cond_0

    .line 313
    new-instance v14, Lcom/google/zxing/WriterException;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const-string/jumbo v16, "Block ID too large"

    invoke-direct/range {v15 .. v16}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 316
    :cond_0
    move v14, v0

    move v15, v2

    rem-int/2addr v14, v15

    move v6, v14

    .line 318
    .local v6, "numRsBlocksInGroup2":I
    move v14, v2

    move v15, v6

    sub-int/2addr v14, v15

    move v7, v14

    .line 320
    .local v7, "numRsBlocksInGroup1":I
    move v14, v0

    move v15, v2

    div-int/2addr v14, v15

    move v8, v14

    .line 322
    .local v8, "numTotalBytesInGroup1":I
    move v14, v8

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    move v9, v14

    .line 324
    .local v9, "numTotalBytesInGroup2":I
    move v14, v1

    move v15, v2

    div-int/2addr v14, v15

    move v10, v14

    .line 326
    .local v10, "numDataBytesInGroup1":I
    move v14, v10

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    move v11, v14

    .line 328
    .local v11, "numDataBytesInGroup2":I
    move v14, v8

    move v15, v10

    sub-int/2addr v14, v15

    move v12, v14

    .line 330
    .local v12, "numEcBytesInGroup1":I
    move v14, v9

    move v15, v11

    sub-int/2addr v14, v15

    move v13, v14

    .line 333
    .local v13, "numEcBytesInGroup2":I
    move v14, v12

    move v15, v13

    if-eq v14, v15, :cond_1

    .line 334
    new-instance v14, Lcom/google/zxing/WriterException;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const-string/jumbo v16, "EC bytes mismatch"

    invoke-direct/range {v15 .. v16}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 337
    :cond_1
    move v14, v2

    move v15, v7

    move/from16 v16, v6

    add-int v15, v15, v16

    if-eq v14, v15, :cond_2

    .line 338
    new-instance v14, Lcom/google/zxing/WriterException;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const-string/jumbo v16, "RS blocks mismatch"

    invoke-direct/range {v15 .. v16}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 341
    :cond_2
    move v14, v0

    move v15, v10

    move/from16 v16, v12

    add-int v15, v15, v16

    move/from16 v16, v7

    mul-int v15, v15, v16

    move/from16 v16, v11

    move/from16 v17, v13

    add-int v16, v16, v17

    move/from16 v17, v6

    mul-int v16, v16, v17

    add-int v15, v15, v16

    if-eq v14, v15, :cond_3

    .line 346
    new-instance v14, Lcom/google/zxing/WriterException;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const-string/jumbo v16, "Total bytes mismatch"

    invoke-direct/range {v15 .. v16}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 349
    :cond_3
    move v14, v3

    move v15, v7

    if-ge v14, v15, :cond_4

    .line 350
    move-object v14, v4

    const/4 v15, 0x0

    move/from16 v16, v10

    aput v16, v14, v15

    .line 351
    move-object v14, v5

    const/4 v15, 0x0

    move/from16 v16, v12

    aput v16, v14, v15

    .line 356
    :goto_0
    return-void

    .line 353
    :cond_4
    move-object v14, v4

    const/4 v15, 0x0

    move/from16 v16, v11

    aput v16, v14, v15

    .line 354
    move-object v14, v5

    const/4 v15, 0x0

    move/from16 v16, v13

    aput v16, v14, v15

    goto :goto_0
.end method

.method static interleaveWithECBytes(Lcom/google/zxing/common/BitArray;III)Lcom/google/zxing/common/BitArray;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 368
    move-object/from16 v0, p0

    .local v0, "bits":Lcom/google/zxing/common/BitArray;
    move/from16 v1, p1

    .local v1, "numTotalBytes":I
    move/from16 v2, p2

    .local v2, "numDataBytes":I
    move/from16 v3, p3

    .local v3, "numRSBlocks":I
    move-object v14, v0

    invoke-virtual {v14}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v14

    move v15, v2

    if-eq v14, v15, :cond_0

    .line 369
    new-instance v14, Lcom/google/zxing/WriterException;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    const-string/jumbo v16, "Number of bits and data bytes does not match"

    invoke-direct/range {v15 .. v16}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 374
    :cond_0
    const/4 v14, 0x0

    move v4, v14

    .line 375
    .local v4, "dataBytesOffset":I
    const/4 v14, 0x0

    move v5, v14

    .line 376
    .local v5, "maxNumDataBytes":I
    const/4 v14, 0x0

    move v6, v14

    .line 379
    .local v6, "maxNumEcBytes":I
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move/from16 v16, v3

    invoke-direct/range {v15 .. v16}, Ljava/util/ArrayList;-><init>(I)V

    move-object v7, v14

    .line 381
    .local v7, "blocks":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/qrcode/encoder/BlockPair;>;"
    const/4 v14, 0x0

    move v8, v14

    .local v8, "i":I
    :goto_0
    move v14, v8

    move v15, v3

    if-ge v14, v15, :cond_1

    .line 382
    const/4 v14, 0x1

    new-array v14, v14, [I

    move-object v9, v14

    .line 383
    .local v9, "numDataBytesInBlock":[I
    const/4 v14, 0x1

    new-array v14, v14, [I

    move-object v10, v14

    .line 384
    .local v10, "numEcBytesInBlock":[I
    move v14, v1

    move v15, v2

    move/from16 v16, v3

    move/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-static/range {v14 .. v19}, Lcom/google/zxing/qrcode/encoder/Encoder;->getNumDataBytesAndNumECBytesForBlockID(IIII[I[I)V

    .line 388
    move-object v14, v9

    const/4 v15, 0x0

    aget v14, v14, v15

    move v11, v14

    .line 389
    .local v11, "size":I
    move v14, v11

    new-array v14, v14, [B

    move-object v12, v14

    .line 390
    .local v12, "dataBytes":[B
    move-object v14, v0

    const/16 v15, 0x8

    move/from16 v16, v4

    mul-int v15, v15, v16

    move-object/from16 v16, v12

    const/16 v17, 0x0

    move/from16 v18, v11

    invoke-virtual/range {v14 .. v18}, Lcom/google/zxing/common/BitArray;->toBytes(I[BII)V

    .line 391
    move-object v14, v12

    move-object v15, v10

    const/16 v16, 0x0

    aget v15, v15, v16

    invoke-static {v14, v15}, Lcom/google/zxing/qrcode/encoder/Encoder;->generateECBytes([BI)[B

    move-result-object v14

    move-object v13, v14

    .line 392
    .local v13, "ecBytes":[B
    move-object v14, v7

    new-instance v15, Lcom/google/zxing/qrcode/encoder/BlockPair;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    move-object/from16 v17, v12

    move-object/from16 v18, v13

    invoke-direct/range {v16 .. v18}, Lcom/google/zxing/qrcode/encoder/BlockPair;-><init>([B[B)V

    invoke-interface {v14, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v14

    .line 394
    move v14, v5

    move v15, v11

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    move v5, v14

    .line 395
    move v14, v6

    move-object v15, v13

    array-length v15, v15

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    move v6, v14

    .line 396
    move v14, v4

    move-object v15, v9

    const/16 v16, 0x0

    aget v15, v15, v16

    add-int/2addr v14, v15

    move v4, v14

    .line 381
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 398
    .end local v9    # "numDataBytesInBlock":[I
    .end local v10    # "numEcBytesInBlock":[I
    .end local v11    # "size":I
    .end local v12    # "dataBytes":[B
    .end local v13    # "ecBytes":[B
    :cond_1
    move v14, v2

    move v15, v4

    if-eq v14, v15, :cond_2

    .line 399
    new-instance v14, Lcom/google/zxing/WriterException;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    const-string/jumbo v16, "Data bytes does not match offset"

    invoke-direct/range {v15 .. v16}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 402
    :cond_2
    new-instance v14, Lcom/google/zxing/common/BitArray;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    invoke-direct {v15}, Lcom/google/zxing/common/BitArray;-><init>()V

    move-object v8, v14

    .line 405
    .local v8, "result":Lcom/google/zxing/common/BitArray;
    const/4 v14, 0x0

    move v9, v14

    .local v9, "i":I
    :goto_1
    move v14, v9

    move v15, v5

    if-ge v14, v15, :cond_5

    .line 406
    move-object v14, v7

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object v10, v14

    .local v10, "i$":Ljava/util/Iterator;
    :goto_2
    move-object v14, v10

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    move-object v14, v10

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/zxing/qrcode/encoder/BlockPair;

    move-object v11, v14

    .line 407
    .local v11, "block":Lcom/google/zxing/qrcode/encoder/BlockPair;
    move-object v14, v11

    invoke-virtual {v14}, Lcom/google/zxing/qrcode/encoder/BlockPair;->getDataBytes()[B

    move-result-object v14

    move-object v12, v14

    .line 408
    .restart local v12    # "dataBytes":[B
    move v14, v9

    move-object v15, v12

    array-length v15, v15

    if-ge v14, v15, :cond_3

    .line 409
    move-object v14, v8

    move-object v15, v12

    move/from16 v16, v9

    aget-byte v15, v15, v16

    const/16 v16, 0x8

    invoke-virtual/range {v14 .. v16}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 411
    :cond_3
    goto :goto_2

    .line 405
    .end local v11    # "block":Lcom/google/zxing/qrcode/encoder/BlockPair;
    .end local v12    # "dataBytes":[B
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 414
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_5
    const/4 v14, 0x0

    move v9, v14

    :goto_3
    move v14, v9

    move v15, v6

    if-ge v14, v15, :cond_8

    .line 415
    move-object v14, v7

    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object v10, v14

    .restart local v10    # "i$":Ljava/util/Iterator;
    :goto_4
    move-object v14, v10

    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    move-object v14, v10

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/zxing/qrcode/encoder/BlockPair;

    move-object v11, v14

    .line 416
    .restart local v11    # "block":Lcom/google/zxing/qrcode/encoder/BlockPair;
    move-object v14, v11

    invoke-virtual {v14}, Lcom/google/zxing/qrcode/encoder/BlockPair;->getErrorCorrectionBytes()[B

    move-result-object v14

    move-object v12, v14

    .line 417
    .local v12, "ecBytes":[B
    move v14, v9

    move-object v15, v12

    array-length v15, v15

    if-ge v14, v15, :cond_6

    .line 418
    move-object v14, v8

    move-object v15, v12

    move/from16 v16, v9

    aget-byte v15, v15, v16

    const/16 v16, 0x8

    invoke-virtual/range {v14 .. v16}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 420
    :cond_6
    goto :goto_4

    .line 414
    .end local v11    # "block":Lcom/google/zxing/qrcode/encoder/BlockPair;
    .end local v12    # "ecBytes":[B
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 422
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_8
    move v14, v1

    move-object v15, v8

    invoke-virtual {v15}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v15

    if-eq v14, v15, :cond_9

    .line 423
    new-instance v14, Lcom/google/zxing/WriterException;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v20, v16

    move-object/from16 v16, v20

    move-object/from16 v17, v20

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Interleaving error: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move/from16 v17, v1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " and "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v8

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " differ."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 427
    :cond_9
    move-object v14, v8

    move-object v0, v14

    .end local v0    # "bits":Lcom/google/zxing/common/BitArray;
    return-object v0
.end method

.method private static isOnlyDoubleByteKanji(Ljava/lang/String;)Z
    .locals 7

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "content":Ljava/lang/String;
    move-object v5, v0

    :try_start_0
    const-string/jumbo v6, "Shift_JIS"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v1, v5

    .line 219
    .line 220
    .local v1, "bytes":[B
    move-object v5, v1

    array-length v5, v5

    move v2, v5

    .line 221
    .local v2, "length":I
    move v5, v2

    const/4 v6, 0x2

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    .line 222
    const/4 v5, 0x0

    move v0, v5

    .line 230
    .end local v0    # "content":Ljava/lang/String;
    .local v3, "i":I
    :goto_0
    return v0

    .line 217
    .end local v1    # "bytes":[B
    .end local v2    # "length":I
    .end local v3    # "i":I
    .restart local v0    # "content":Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 218
    .local v2, "uee":Ljava/io/UnsupportedEncodingException;
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 224
    .restart local v1    # "bytes":[B
    .local v2, "length":I
    :cond_0
    const/4 v5, 0x0

    move v3, v5

    .restart local v3    # "i":I
    :goto_1
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_4

    .line 225
    move-object v5, v1

    move v6, v3

    aget-byte v5, v5, v6

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    move v4, v5

    .line 226
    .local v4, "byte1":I
    move v5, v4

    const/16 v6, 0x81

    if-lt v5, v6, :cond_1

    move v5, v4

    const/16 v6, 0x9f

    if-le v5, v6, :cond_3

    :cond_1
    move v5, v4

    const/16 v6, 0xe0

    if-lt v5, v6, :cond_2

    move v5, v4

    const/16 v6, 0xeb

    if-le v5, v6, :cond_3

    .line 227
    :cond_2
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 224
    :cond_3
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 230
    .end local v4    # "byte1":I
    :cond_4
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0
.end method

.method static terminateBits(ILcom/google/zxing/common/BitArray;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 275
    move v0, p0

    .local v0, "numDataBytes":I
    move-object v1, p1

    .local v1, "bits":Lcom/google/zxing/common/BitArray;
    move v6, v0

    const/4 v7, 0x3

    shl-int/lit8 v6, v6, 0x3

    move v2, v6

    .line 276
    .local v2, "capacity":I
    move-object v6, v1

    invoke-virtual {v6}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    move v7, v2

    if-le v6, v7, :cond_0

    .line 277
    new-instance v6, Lcom/google/zxing/WriterException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "data bits cannot fit in the QR Code"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v9}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " > "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 280
    :cond_0
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    :goto_0
    move v6, v3

    const/4 v7, 0x4

    if-ge v6, v7, :cond_1

    move-object v6, v1

    invoke-virtual {v6}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    move v7, v2

    if-ge v6, v7, :cond_1

    .line 281
    move-object v6, v1

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    .line 280
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 285
    :cond_1
    move-object v6, v1

    invoke-virtual {v6}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    const/4 v7, 0x7

    and-int/lit8 v6, v6, 0x7

    move v3, v6

    .line 286
    .local v3, "numBitsInLastByte":I
    move v6, v3

    if-lez v6, :cond_2

    .line 287
    move v6, v3

    move v4, v6

    .local v4, "i":I
    :goto_1
    move v6, v4

    const/16 v7, 0x8

    if-ge v6, v7, :cond_2

    .line 288
    move-object v6, v1

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    .line 287
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 292
    .end local v4    # "i":I
    :cond_2
    move v6, v0

    move-object v7, v1

    invoke-virtual {v7}, Lcom/google/zxing/common/BitArray;->getSizeInBytes()I

    move-result v7

    sub-int/2addr v6, v7

    move v4, v6

    .line 293
    .local v4, "numPaddingBytes":I
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_2
    move v6, v5

    move v7, v4

    if-ge v6, v7, :cond_4

    .line 294
    move-object v6, v1

    move v7, v5

    const/4 v8, 0x1

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_3

    const/16 v7, 0xec

    :goto_3
    const/16 v8, 0x8

    invoke-virtual {v6, v7, v8}, Lcom/google/zxing/common/BitArray;->appendBits(II)V

    .line 293
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 294
    :cond_3
    const/16 v7, 0x11

    goto :goto_3

    .line 296
    :cond_4
    move-object v6, v1

    invoke-virtual {v6}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v6

    move v7, v2

    if-eq v6, v7, :cond_5

    .line 297
    new-instance v6, Lcom/google/zxing/WriterException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string/jumbo v8, "Bits size does not equal capacity"

    invoke-direct {v7, v8}, Lcom/google/zxing/WriterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 299
    :cond_5
    return-void
.end method
