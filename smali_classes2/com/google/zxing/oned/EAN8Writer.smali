.class public final Lcom/google/zxing/oned/EAN8Writer;
.super Lcom/google/zxing/oned/UPCEANWriter;
.source "EAN8Writer.java"


# static fields
.field private static final CODE_WIDTH:I = 0x43


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/EAN8Writer;
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
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/EAN8Writer;
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

    sget-object v7, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    if-eq v6, v7, :cond_0

    .line 46
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Can only encode EAN_8, but got "

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

    .end local v0    # "this":Lcom/google/zxing/oned/EAN8Writer;
    return-object v0
.end method

.method public encode(Ljava/lang/String;)[Z
    .locals 12

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/EAN8Writer;
    move-object v1, p1

    .local v1, "contents":Ljava/lang/String;
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    .line 59
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Requested contents should be 8 digits long, but got "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 63
    :cond_0
    const/16 v6, 0x43

    new-array v6, v6, [Z

    move-object v2, v6

    .line 64
    .local v2, "result":[Z
    const/4 v6, 0x0

    move v3, v6

    .line 66
    .local v3, "pos":I
    move v6, v3

    move-object v7, v2

    move v8, v3

    sget-object v9, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    const/4 v10, 0x1

    invoke-static {v7, v8, v9, v10}, Lcom/google/zxing/oned/EAN8Writer;->appendPattern([ZI[IZ)I

    move-result v7

    add-int/2addr v6, v7

    move v3, v6

    .line 68
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    const/4 v7, 0x3

    if-gt v6, v7, :cond_1

    .line 69
    move-object v6, v1

    move v7, v4

    move v8, v4

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v5, v6

    .line 70
    .local v5, "digit":I
    move v6, v3

    move-object v7, v2

    move v8, v3

    sget-object v9, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    move v10, v5

    aget-object v9, v9, v10

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Lcom/google/zxing/oned/EAN8Writer;->appendPattern([ZI[IZ)I

    move-result v7

    add-int/2addr v6, v7

    move v3, v6

    .line 68
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 73
    .end local v5    # "digit":I
    :cond_1
    move v6, v3

    move-object v7, v2

    move v8, v3

    sget-object v9, Lcom/google/zxing/oned/UPCEANReader;->MIDDLE_PATTERN:[I

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Lcom/google/zxing/oned/EAN8Writer;->appendPattern([ZI[IZ)I

    move-result v7

    add-int/2addr v6, v7

    move v3, v6

    .line 75
    const/4 v6, 0x4

    move v4, v6

    :goto_1
    move v6, v4

    const/4 v7, 0x7

    if-gt v6, v7, :cond_2

    .line 76
    move-object v6, v1

    move v7, v4

    move v8, v4

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v5, v6

    .line 77
    .restart local v5    # "digit":I
    move v6, v3

    move-object v7, v2

    move v8, v3

    sget-object v9, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    move v10, v5

    aget-object v9, v9, v10

    const/4 v10, 0x1

    invoke-static {v7, v8, v9, v10}, Lcom/google/zxing/oned/EAN8Writer;->appendPattern([ZI[IZ)I

    move-result v7

    add-int/2addr v6, v7

    move v3, v6

    .line 75
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 79
    .end local v5    # "digit":I
    :cond_2
    move v6, v3

    move-object v7, v2

    move v8, v3

    sget-object v9, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    const/4 v10, 0x1

    invoke-static {v7, v8, v9, v10}, Lcom/google/zxing/oned/EAN8Writer;->appendPattern([ZI[IZ)I

    move-result v7

    add-int/2addr v6, v7

    move v3, v6

    .line 81
    move-object v6, v2

    move-object v0, v6

    .end local v0    # "this":Lcom/google/zxing/oned/EAN8Writer;
    return-object v0
.end method
