.class final Lcom/google/zxing/oned/UPCEANExtension2Support;
.super Ljava/lang/Object;
.source "UPCEANExtension2Support.java"


# instance fields
.field private final decodeMiddleCounters:[I

.field private final decodeRowStringBuffer:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>()V
    .locals 5

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/UPCEANExtension2Support;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 34
    move-object v1, v0

    const/4 v2, 0x4

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/google/zxing/oned/UPCEANExtension2Support;->decodeMiddleCounters:[I

    .line 35
    move-object v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, v1, Lcom/google/zxing/oned/UPCEANExtension2Support;->decodeRowStringBuffer:Ljava/lang/StringBuilder;

    return-void
.end method

.method private static parseExtensionString(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/ResultMetadataType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "raw":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 105
    const/4 v2, 0x0

    move-object v0, v2

    .line 109
    .end local v0    # "raw":Ljava/lang/String;
    .local v1, "result":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;>;"
    :goto_0
    return-object v0

    .line 107
    .end local v1    # "result":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;>;"
    .restart local v0    # "raw":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/util/EnumMap;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-class v4, Lcom/google/zxing/ResultMetadataType;

    invoke-direct {v3, v4}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    move-object v1, v2

    .line 108
    .restart local v1    # "result":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;>;"
    move-object v2, v1

    sget-object v3, Lcom/google/zxing/ResultMetadataType;->ISSUE_NUMBER:Lcom/google/zxing/ResultMetadataType;

    move-object v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 109
    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 61
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/oned/UPCEANExtension2Support;
    move-object/from16 v1, p1

    .local v1, "row":Lcom/google/zxing/common/BitArray;
    move-object/from16 v2, p2

    .local v2, "startRange":[I
    move-object/from16 v3, p3

    .local v3, "resultString":Ljava/lang/StringBuilder;
    move-object v14, v0

    iget-object v14, v14, Lcom/google/zxing/oned/UPCEANExtension2Support;->decodeMiddleCounters:[I

    move-object v4, v14

    .line 62
    .local v4, "counters":[I
    move-object v14, v4

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 63
    move-object v14, v4

    const/4 v15, 0x1

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 64
    move-object v14, v4

    const/4 v15, 0x2

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 65
    move-object v14, v4

    const/4 v15, 0x3

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 66
    move-object v14, v1

    invoke-virtual {v14}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v14

    move v5, v14

    .line 67
    .local v5, "end":I
    move-object v14, v2

    const/4 v15, 0x1

    aget v14, v14, v15

    move v6, v14

    .line 69
    .local v6, "rowOffset":I
    const/4 v14, 0x0

    move v7, v14

    .line 71
    .local v7, "checkParity":I
    const/4 v14, 0x0

    move v8, v14

    .local v8, "x":I
    :goto_0
    move v14, v8

    const/4 v15, 0x2

    if-ge v14, v15, :cond_3

    move v14, v6

    move v15, v5

    if-ge v14, v15, :cond_3

    .line 72
    move-object v14, v1

    move-object v15, v4

    move/from16 v16, v6

    sget-object v17, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    invoke-static/range {v14 .. v17}, Lcom/google/zxing/oned/UPCEANReader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v14

    move v9, v14

    .line 73
    .local v9, "bestMatch":I
    move-object v14, v3

    const/16 v15, 0x30

    move/from16 v16, v9

    const/16 v17, 0xa

    rem-int/lit8 v16, v16, 0xa

    add-int v15, v15, v16

    int-to-char v15, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 74
    move-object v14, v4

    move-object v10, v14

    .local v10, "arr$":[I
    move-object v14, v10

    array-length v14, v14

    move v11, v14

    .local v11, "len$":I
    const/4 v14, 0x0

    move v12, v14

    .local v12, "i$":I
    :goto_1
    move v14, v12

    move v15, v11

    if-ge v14, v15, :cond_0

    move-object v14, v10

    move v15, v12

    aget v14, v14, v15

    move v13, v14

    .line 75
    .local v13, "counter":I
    move v14, v6

    move v15, v13

    add-int/2addr v14, v15

    move v6, v14

    .line 74
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 77
    .end local v13    # "counter":I
    :cond_0
    move v14, v9

    const/16 v15, 0xa

    if-lt v14, v15, :cond_1

    .line 78
    move v14, v7

    const/4 v15, 0x1

    const/16 v16, 0x1

    move/from16 v17, v8

    rsub-int/lit8 v16, v17, 0x1

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move v7, v14

    .line 80
    :cond_1
    move v14, v8

    const/4 v15, 0x1

    if-eq v14, v15, :cond_2

    .line 82
    move-object v14, v1

    move v15, v6

    invoke-virtual {v14, v15}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v14

    move v6, v14

    .line 83
    move-object v14, v1

    move v15, v6

    invoke-virtual {v14, v15}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v14

    move v6, v14

    .line 71
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 87
    .end local v9    # "bestMatch":I
    .end local v10    # "arr$":[I
    .end local v11    # "len$":I
    .end local v12    # "i$":I
    :cond_3
    move-object v14, v3

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    const/4 v15, 0x2

    if-eq v14, v15, :cond_4

    .line 88
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v14

    throw v14

    .line 91
    :cond_4
    move-object v14, v3

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    const/4 v15, 0x4

    rem-int/lit8 v14, v14, 0x4

    move v15, v7

    if-eq v14, v15, :cond_5

    .line 92
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v14

    throw v14

    .line 95
    :cond_5
    move v14, v6

    move v0, v14

    .end local v0    # "this":Lcom/google/zxing/oned/UPCEANExtension2Support;
    return v0
.end method

.method decodeRow(ILcom/google/zxing/common/BitArray;[I)Lcom/google/zxing/Result;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 39
    move-object/from16 v1, p0

    .local v1, "this":Lcom/google/zxing/oned/UPCEANExtension2Support;
    move/from16 v2, p1

    .local v2, "rowNumber":I
    move-object/from16 v3, p2

    .local v3, "row":Lcom/google/zxing/common/BitArray;
    move-object/from16 v4, p3

    .local v4, "extensionStartRange":[I
    move-object v10, v1

    iget-object v10, v10, Lcom/google/zxing/oned/UPCEANExtension2Support;->decodeRowStringBuffer:Ljava/lang/StringBuilder;

    move-object v5, v10

    .line 40
    .local v5, "result":Ljava/lang/StringBuilder;
    move-object v10, v5

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 41
    move-object v10, v1

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    invoke-virtual {v10, v11, v12, v13}, Lcom/google/zxing/oned/UPCEANExtension2Support;->decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I

    move-result v10

    move v6, v10

    .line 43
    .local v6, "end":I
    move-object v10, v5

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    .line 44
    .local v7, "resultString":Ljava/lang/String;
    move-object v10, v7

    invoke-static {v10}, Lcom/google/zxing/oned/UPCEANExtension2Support;->parseExtensionString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v10

    move-object v8, v10

    .line 46
    .local v8, "extensionData":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;>;"
    new-instance v10, Lcom/google/zxing/Result;

    move-object/from16 v22, v10

    move-object/from16 v10, v22

    move-object/from16 v11, v22

    move-object v12, v7

    const/4 v13, 0x0

    const/4 v14, 0x2

    new-array v14, v14, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    const/16 v16, 0x0

    new-instance v17, Lcom/google/zxing/ResultPoint;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v19, v4

    const/16 v20, 0x0

    aget v19, v19, v20

    move-object/from16 v20, v4

    const/16 v21, 0x1

    aget v20, v20, v21

    add-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    move/from16 v20, v2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-direct/range {v18 .. v20}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v17, v15, v16

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    const/16 v16, 0x1

    new-instance v17, Lcom/google/zxing/ResultPoint;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move/from16 v19, v6

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v20, v2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-direct/range {v18 .. v20}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v17, v15, v16

    sget-object v15, Lcom/google/zxing/BarcodeFormat;->UPC_EAN_EXTENSION:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    move-object v9, v10

    .line 54
    .local v9, "extensionResult":Lcom/google/zxing/Result;
    move-object v10, v8

    if-eqz v10, :cond_0

    .line 55
    move-object v10, v9

    move-object v11, v8

    invoke-virtual {v10, v11}, Lcom/google/zxing/Result;->putAllMetadata(Ljava/util/Map;)V

    .line 57
    :cond_0
    move-object v10, v9

    move-object v1, v10

    .end local v1    # "this":Lcom/google/zxing/oned/UPCEANExtension2Support;
    return-object v1
.end method
