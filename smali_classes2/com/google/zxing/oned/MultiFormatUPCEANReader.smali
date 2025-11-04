.class public final Lcom/google/zxing/oned/MultiFormatUPCEANReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "MultiFormatUPCEANReader.java"


# instance fields
.field private final readers:[Lcom/google/zxing/oned/UPCEANReader;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/MultiFormatUPCEANReader;
    move-object v1, p1

    .local v1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object v4, v0

    invoke-direct {v4}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 43
    move-object v4, v1

    if-nez v4, :cond_4

    const/4 v4, 0x0

    :goto_0
    move-object v2, v4

    .line 45
    .local v2, "possibleFormats":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/BarcodeFormat;>;"
    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v4

    .line 46
    .local v3, "readers":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/oned/UPCEANReader;>;"
    move-object v4, v2

    if-eqz v4, :cond_2

    .line 47
    move-object v4, v2

    sget-object v5, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v4, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 48
    move-object v4, v3

    new-instance v5, Lcom/google/zxing/oned/EAN13Reader;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Lcom/google/zxing/oned/EAN13Reader;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 52
    :cond_0
    :goto_1
    move-object v4, v2

    sget-object v5, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v4, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 53
    move-object v4, v3

    new-instance v5, Lcom/google/zxing/oned/EAN8Reader;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Lcom/google/zxing/oned/EAN8Reader;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 55
    :cond_1
    move-object v4, v2

    sget-object v5, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v4, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 56
    move-object v4, v3

    new-instance v5, Lcom/google/zxing/oned/UPCEReader;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Lcom/google/zxing/oned/UPCEReader;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 59
    :cond_2
    move-object v4, v3

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 60
    move-object v4, v3

    new-instance v5, Lcom/google/zxing/oned/EAN13Reader;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Lcom/google/zxing/oned/EAN13Reader;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 62
    move-object v4, v3

    new-instance v5, Lcom/google/zxing/oned/EAN8Reader;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Lcom/google/zxing/oned/EAN8Reader;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 63
    move-object v4, v3

    new-instance v5, Lcom/google/zxing/oned/UPCEReader;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Lcom/google/zxing/oned/UPCEReader;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 65
    :cond_3
    move-object v4, v0

    move-object v5, v3

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    new-array v6, v6, [Lcom/google/zxing/oned/UPCEANReader;

    invoke-interface {v5, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/google/zxing/oned/UPCEANReader;

    iput-object v5, v4, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->readers:[Lcom/google/zxing/oned/UPCEANReader;

    .line 66
    return-void

    .line 43
    .end local v2    # "possibleFormats":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/BarcodeFormat;>;"
    .end local v3    # "readers":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/oned/UPCEANReader;>;"
    :cond_4
    move-object v4, v1

    sget-object v5, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    goto/16 :goto_0

    .line 49
    .restart local v2    # "possibleFormats":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/BarcodeFormat;>;"
    .restart local v3    # "readers":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/oned/UPCEANReader;>;"
    :cond_5
    move-object v4, v2

    sget-object v5, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v4, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 50
    move-object v4, v3

    new-instance v5, Lcom/google/zxing/oned/UPCAReader;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Lcom/google/zxing/oned/UPCAReader;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v4

    goto/16 :goto_1
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 21
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
    .line 73
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/oned/MultiFormatUPCEANReader;
    move/from16 v1, p1

    .local v1, "rowNumber":I
    move-object/from16 v2, p2

    .local v2, "row":Lcom/google/zxing/common/BitArray;
    move-object/from16 v3, p3

    .local v3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object v14, v2

    invoke-static {v14}, Lcom/google/zxing/oned/UPCEANReader;->findStartGuardPattern(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v14

    move-object v4, v14

    .line 74
    .local v4, "startGuardPattern":[I
    move-object v14, v0

    iget-object v14, v14, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->readers:[Lcom/google/zxing/oned/UPCEANReader;

    move-object v5, v14

    .local v5, "arr$":[Lcom/google/zxing/oned/UPCEANReader;
    move-object v14, v5

    array-length v14, v14

    move v6, v14

    .local v6, "len$":I
    const/4 v14, 0x0

    move v7, v14

    .local v7, "i$":I
    :goto_0
    move v14, v7

    move v15, v6

    if-ge v14, v15, :cond_5

    move-object v14, v5

    move v15, v7

    aget-object v14, v14, v15

    move-object v8, v14

    .line 77
    .local v8, "reader":Lcom/google/zxing/oned/UPCEANReader;
    move-object v14, v8

    move v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    move-object/from16 v18, v3

    :try_start_0
    invoke-virtual/range {v14 .. v18}, Lcom/google/zxing/oned/UPCEANReader;->decodeRow(ILcom/google/zxing/common/BitArray;[ILjava/util/Map;)Lcom/google/zxing/Result;
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    move-object v9, v14

    .line 80
    .line 93
    .local v9, "result":Lcom/google/zxing/Result;
    move-object v14, v9

    invoke-virtual {v14}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v14

    sget-object v15, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    if-ne v14, v15, :cond_1

    move-object v14, v9

    invoke-virtual {v14}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x30

    if-ne v14, v15, :cond_1

    const/4 v14, 0x1

    :goto_1
    move v10, v14

    .line 96
    .local v10, "ean13MayBeUPCA":Z
    move-object v14, v3

    if-nez v14, :cond_2

    const/4 v14, 0x0

    :goto_2
    move-object v11, v14

    .line 98
    .local v11, "possibleFormats":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/BarcodeFormat;>;"
    move-object v14, v11

    if-eqz v14, :cond_0

    move-object v14, v11

    sget-object v15, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v14, v15}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    :cond_0
    const/4 v14, 0x1

    :goto_3
    move v12, v14

    .line 100
    .local v12, "canReturnUPCA":Z
    move v14, v10

    if-eqz v14, :cond_4

    move v14, v12

    if-eqz v14, :cond_4

    .line 102
    new-instance v14, Lcom/google/zxing/Result;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move-object/from16 v16, v9

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v9

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object v17

    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v18

    sget-object v19, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-direct/range {v15 .. v19}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    move-object v13, v14

    .line 106
    .local v13, "resultUPCA":Lcom/google/zxing/Result;
    move-object v14, v13

    move-object v15, v9

    invoke-virtual {v15}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/google/zxing/Result;->putAllMetadata(Ljava/util/Map;)V

    .line 107
    move-object v14, v13

    move-object v0, v14

    .line 109
    .end local v0    # "this":Lcom/google/zxing/oned/MultiFormatUPCEANReader;
    .end local v13    # "resultUPCA":Lcom/google/zxing/Result;
    :goto_4
    return-object v0

    .line 78
    .end local v9    # "result":Lcom/google/zxing/Result;
    .end local v10    # "ean13MayBeUPCA":Z
    .end local v11    # "possibleFormats":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/BarcodeFormat;>;"
    .end local v12    # "canReturnUPCA":Z
    .restart local v0    # "this":Lcom/google/zxing/oned/MultiFormatUPCEANReader;
    :catch_0
    move-exception v14

    move-object v10, v14

    .line 74
    .local v10, "re":Lcom/google/zxing/ReaderException;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 93
    .end local v10    # "re":Lcom/google/zxing/ReaderException;
    .restart local v9    # "result":Lcom/google/zxing/Result;
    :cond_1
    const/4 v14, 0x0

    goto :goto_1

    .line 96
    .local v10, "ean13MayBeUPCA":Z
    :cond_2
    move-object v14, v3

    sget-object v15, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Collection;

    goto :goto_2

    .line 98
    .restart local v11    # "possibleFormats":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/BarcodeFormat;>;"
    :cond_3
    const/4 v14, 0x0

    goto :goto_3

    .line 109
    .restart local v12    # "canReturnUPCA":Z
    :cond_4
    move-object v14, v9

    move-object v0, v14

    goto :goto_4

    .line 112
    .end local v8    # "reader":Lcom/google/zxing/oned/UPCEANReader;
    .end local v9    # "result":Lcom/google/zxing/Result;
    .end local v10    # "ean13MayBeUPCA":Z
    .end local v11    # "possibleFormats":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/BarcodeFormat;>;"
    .end local v12    # "canReturnUPCA":Z
    :cond_5
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v14

    throw v14
.end method

.method public reset()V
    .locals 7

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/MultiFormatUPCEANReader;
    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/oned/MultiFormatUPCEANReader;->readers:[Lcom/google/zxing/oned/UPCEANReader;

    move-object v1, v5

    .local v1, "arr$":[Lcom/google/zxing/oned/UPCEANReader;
    move-object v5, v1

    array-length v5, v5

    move v2, v5

    .local v2, "len$":I
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i$":I
    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_0

    move-object v5, v1

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 118
    .local v4, "reader":Lcom/google/zxing/Reader;
    move-object v5, v4

    invoke-interface {v5}, Lcom/google/zxing/Reader;->reset()V

    .line 117
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 120
    .end local v4    # "reader":Lcom/google/zxing/Reader;
    :cond_0
    return-void
.end method
