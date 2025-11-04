.class public final Lcom/google/zxing/oned/EAN13Writer;
.super Lcom/google/zxing/oned/UPCEANWriter;
.source "EAN13Writer.java"


# static fields
.field private static final CODE_WIDTH:I = 0x5f


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/EAN13Writer;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/zxing/oned/UPCEANWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/EAN13Writer;
    move-object v1, p1

    .local v1, "contents":Ljava/lang/String;
    move-object v2, p2

    .local v2, "format":Lcom/google/zxing/BarcodeFormat;
    move/from16 v3, p3

    .local v3, "width":I
    move/from16 v4, p4

    .local v4, "height":I
    move-object/from16 v5, p5

    .local v5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    move-object v6, v2

    sget-object v7, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    if-eq v6, v7, :cond_0

    .line 47
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Can only encode EAN_13, but got "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 50
    :cond_0
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    move v10, v4

    move-object v11, v5

    invoke-super/range {v6 .. v11}, Lcom/google/zxing/oned/UPCEANWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lcom/google/zxing/oned/EAN13Writer;
    return-object v0
.end method

.method public encode(Ljava/lang/String;)[Z
    .locals 14

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/EAN13Writer;
    move-object v1, p1

    .local v1, "contents":Ljava/lang/String;
    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xd

    if-eq v8, v9, :cond_0

    .line 56
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Requested contents should be 13 digits long, but got "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 60
    :cond_0
    move-object v8, v1

    :try_start_0
    invoke-static {v8}, Lcom/google/zxing/oned/UPCEANReader;->checkStandardUPCEANChecksum(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 61
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const-string/jumbo v10, "Contents do not pass checksum"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Lcom/google/zxing/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 64
    .local v2, "fe":Lcom/google/zxing/FormatException;
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const-string/jumbo v10, "Illegal contents"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 65
    .line 67
    .end local v2    # "fe":Lcom/google/zxing/FormatException;
    :cond_1
    move-object v8, v1

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v2, v8

    .line 68
    .local v2, "firstDigit":I
    sget-object v8, Lcom/google/zxing/oned/EAN13Reader;->FIRST_DIGIT_ENCODINGS:[I

    move v9, v2

    aget v8, v8, v9

    move v3, v8

    .line 69
    .local v3, "parities":I
    const/16 v8, 0x5f

    new-array v8, v8, [Z

    move-object v4, v8

    .line 70
    .local v4, "result":[Z
    const/4 v8, 0x0

    move v5, v8

    .line 72
    .local v5, "pos":I
    move v8, v5

    move-object v9, v4

    move v10, v5

    sget-object v11, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    const/4 v12, 0x1

    invoke-static {v9, v10, v11, v12}, Lcom/google/zxing/oned/EAN13Writer;->appendPattern([ZI[IZ)I

    move-result v9

    add-int/2addr v8, v9

    move v5, v8

    .line 75
    const/4 v8, 0x1

    move v6, v8

    .local v6, "i":I
    :goto_0
    move v8, v6

    const/4 v9, 0x6

    if-gt v8, v9, :cond_3

    .line 76
    move-object v8, v1

    move v9, v6

    move v10, v6

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v7, v8

    .line 77
    .local v7, "digit":I
    move v8, v3

    const/4 v9, 0x6

    move v10, v6

    rsub-int/lit8 v9, v10, 0x6

    shr-int/2addr v8, v9

    const/4 v9, 0x1

    and-int/lit8 v8, v8, 0x1

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 78
    add-int/lit8 v7, v7, 0xa

    .line 80
    :cond_2
    move v8, v5

    move-object v9, v4

    move v10, v5

    sget-object v11, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    move v12, v7

    aget-object v11, v11, v12

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Lcom/google/zxing/oned/EAN13Writer;->appendPattern([ZI[IZ)I

    move-result v9

    add-int/2addr v8, v9

    move v5, v8

    .line 75
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 83
    .end local v7    # "digit":I
    :cond_3
    move v8, v5

    move-object v9, v4

    move v10, v5

    sget-object v11, Lcom/google/zxing/oned/UPCEANReader;->MIDDLE_PATTERN:[I

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Lcom/google/zxing/oned/EAN13Writer;->appendPattern([ZI[IZ)I

    move-result v9

    add-int/2addr v8, v9

    move v5, v8

    .line 85
    const/4 v8, 0x7

    move v6, v8

    :goto_1
    move v8, v6

    const/16 v9, 0xc

    if-gt v8, v9, :cond_4

    .line 86
    move-object v8, v1

    move v9, v6

    move v10, v6

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v7, v8

    .line 87
    .restart local v7    # "digit":I
    move v8, v5

    move-object v9, v4

    move v10, v5

    sget-object v11, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    move v12, v7

    aget-object v11, v11, v12

    const/4 v12, 0x1

    invoke-static {v9, v10, v11, v12}, Lcom/google/zxing/oned/EAN13Writer;->appendPattern([ZI[IZ)I

    move-result v9

    add-int/2addr v8, v9

    move v5, v8

    .line 85
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 89
    .end local v7    # "digit":I
    :cond_4
    move v8, v5

    move-object v9, v4

    move v10, v5

    sget-object v11, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    const/4 v12, 0x1

    invoke-static {v9, v10, v11, v12}, Lcom/google/zxing/oned/EAN13Writer;->appendPattern([ZI[IZ)I

    move-result v9

    add-int/2addr v8, v9

    move v5, v8

    .line 91
    move-object v8, v4

    move-object v0, v8

    .end local v0    # "this":Lcom/google/zxing/oned/EAN13Writer;
    return-object v0
.end method
