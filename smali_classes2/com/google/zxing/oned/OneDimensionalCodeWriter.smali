.class public abstract Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.super Ljava/lang/Object;
.source "OneDimensionalCodeWriter.java"

# interfaces
.implements Lcom/google/zxing/Writer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/OneDimensionalCodeWriter;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static appendPattern([ZI[IZ)I
    .locals 14

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "target":[Z
    move v1, p1

    .local v1, "pos":I
    move-object/from16 v2, p2

    .local v2, "pattern":[I
    move/from16 v3, p3

    .local v3, "startColor":Z
    move v11, v3

    move v4, v11

    .line 105
    .local v4, "color":Z
    const/4 v11, 0x0

    move v5, v11

    .line 106
    .local v5, "numAdded":I
    move-object v11, v2

    move-object v6, v11

    .local v6, "arr$":[I
    move-object v11, v6

    array-length v11, v11

    move v7, v11

    .local v7, "len$":I
    const/4 v11, 0x0

    move v8, v11

    .local v8, "i$":I
    :goto_0
    move v11, v8

    move v12, v7

    if-ge v11, v12, :cond_2

    move-object v11, v6

    move v12, v8

    aget v11, v11, v12

    move v9, v11

    .line 107
    .local v9, "len":I
    const/4 v11, 0x0

    move v10, v11

    .local v10, "j":I
    :goto_1
    move v11, v10

    move v12, v9

    if-ge v11, v12, :cond_0

    .line 108
    move-object v11, v0

    move v12, v1

    add-int/lit8 v1, v1, 0x1

    move v13, v4

    aput-boolean v13, v11, v12

    .line 107
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 110
    :cond_0
    move v11, v5

    move v12, v9

    add-int/2addr v11, v12

    move v5, v11

    .line 111
    move v11, v4

    if-nez v11, :cond_1

    const/4 v11, 0x1

    :goto_2
    move v4, v11

    .line 106
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 111
    :cond_1
    const/4 v11, 0x0

    goto :goto_2

    .line 113
    .end local v9    # "len":I
    .end local v10    # "j":I
    :cond_2
    move v11, v5

    move v0, v11

    .end local v0    # "target":[Z
    return v0
.end method

.method private static renderResult([ZIII)Lcom/google/zxing/common/BitMatrix;
    .locals 19

    .prologue
    .line 78
    move-object/from16 v0, p0

    .local v0, "code":[Z
    move/from16 v1, p1

    .local v1, "width":I
    move/from16 v2, p2

    .local v2, "height":I
    move/from16 v3, p3

    .local v3, "sidesMargin":I
    move-object v13, v0

    array-length v13, v13

    move v4, v13

    .line 80
    .local v4, "inputWidth":I
    move v13, v4

    move v14, v3

    add-int/2addr v13, v14

    move v5, v13

    .line 81
    .local v5, "fullWidth":I
    move v13, v1

    move v14, v5

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    move v6, v13

    .line 82
    .local v6, "outputWidth":I
    const/4 v13, 0x1

    move v14, v2

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    move v7, v13

    .line 84
    .local v7, "outputHeight":I
    move v13, v6

    move v14, v5

    div-int/2addr v13, v14

    move v8, v13

    .line 85
    .local v8, "multiple":I
    move v13, v6

    move v14, v4

    move v15, v8

    mul-int/2addr v14, v15

    sub-int/2addr v13, v14

    const/4 v14, 0x2

    div-int/lit8 v13, v13, 0x2

    move v9, v13

    .line 87
    .local v9, "leftPadding":I
    new-instance v13, Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move v15, v6

    move/from16 v16, v7

    invoke-direct/range {v14 .. v16}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    move-object v10, v13

    .line 88
    .local v10, "output":Lcom/google/zxing/common/BitMatrix;
    const/4 v13, 0x0

    move v11, v13

    .local v11, "inputX":I
    move v13, v9

    move v12, v13

    .local v12, "outputX":I
    :goto_0
    move v13, v11

    move v14, v4

    if-ge v13, v14, :cond_1

    .line 89
    move-object v13, v0

    move v14, v11

    aget-boolean v13, v13, v14

    if-eqz v13, :cond_0

    .line 90
    move-object v13, v10

    move v14, v12

    const/4 v15, 0x0

    move/from16 v16, v8

    move/from16 v17, v7

    invoke-virtual/range {v13 .. v17}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    .line 88
    :cond_0
    add-int/lit8 v11, v11, 0x1

    move v13, v12

    move v14, v8

    add-int/2addr v13, v14

    move v12, v13

    goto :goto_0

    .line 93
    :cond_1
    move-object v13, v10

    move-object v0, v13

    .end local v0    # "code":[Z
    return-object v0
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/OneDimensionalCodeWriter;
    move-object v1, p1

    .local v1, "contents":Ljava/lang/String;
    move-object v2, p2

    .local v2, "format":Lcom/google/zxing/BarcodeFormat;
    move v3, p3

    .local v3, "width":I
    move v4, p4

    .local v4, "height":I
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move v9, v4

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lcom/google/zxing/oned/OneDimensionalCodeWriter;
    return-object v0
.end method

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
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/OneDimensionalCodeWriter;
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
    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_0

    .line 54
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string/jumbo v10, "Found empty contents"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 57
    :cond_0
    move v8, v3

    if-ltz v8, :cond_1

    move v8, v4

    if-gez v8, :cond_2

    .line 58
    :cond_1
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Negative size is not allowed. Input: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x78

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    move v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 62
    :cond_2
    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->getDefaultMargin()I

    move-result v8

    move v6, v8

    .line 63
    .local v6, "sidesMargin":I
    move-object v8, v5

    if-eqz v8, :cond_3

    .line 64
    move-object v8, v5

    sget-object v9, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    move-object v7, v8

    .line 65
    .local v7, "sidesMarginInt":Ljava/lang/Integer;
    move-object v8, v7

    if-eqz v8, :cond_3

    .line 66
    move-object v8, v7

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move v6, v8

    .line 70
    .end local v7    # "sidesMarginInt":Ljava/lang/Integer;
    :cond_3
    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v8, v9}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;)[Z

    move-result-object v8

    move-object v7, v8

    .line 71
    .local v7, "code":[Z
    move-object v8, v7

    move v9, v3

    move v10, v4

    move v11, v6

    invoke-static {v8, v9, v10, v11}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->renderResult([ZIII)Lcom/google/zxing/common/BitMatrix;

    move-result-object v8

    move-object v0, v8

    .end local v0    # "this":Lcom/google/zxing/oned/OneDimensionalCodeWriter;
    return-object v0
.end method

.method public abstract encode(Ljava/lang/String;)[Z
.end method

.method public getDefaultMargin()I
    .locals 2

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/OneDimensionalCodeWriter;
    const/16 v1, 0xa

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/oned/OneDimensionalCodeWriter;
    return v0
.end method
