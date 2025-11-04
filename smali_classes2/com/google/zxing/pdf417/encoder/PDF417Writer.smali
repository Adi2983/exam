.class public final Lcom/google/zxing/pdf417/encoder/PDF417Writer;
.super Ljava/lang/Object;
.source "PDF417Writer.java"

# interfaces
.implements Lcom/google/zxing/Writer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/encoder/PDF417Writer;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bitMatrixFromEncoder(Lcom/google/zxing/pdf417/encoder/PDF417;Ljava/lang/String;II)Lcom/google/zxing/common/BitMatrix;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 102
    move-object/from16 v0, p0

    .local v0, "encoder":Lcom/google/zxing/pdf417/encoder/PDF417;
    move-object/from16 v1, p1

    .local v1, "contents":Ljava/lang/String;
    move/from16 v2, p2

    .local v2, "width":I
    move/from16 v3, p3

    .local v3, "height":I
    const/4 v13, 0x2

    move v4, v13

    .line 103
    .local v4, "errorCorrectionLevel":I
    move-object v13, v0

    move-object v14, v1

    move v15, v4

    invoke-virtual {v13, v14, v15}, Lcom/google/zxing/pdf417/encoder/PDF417;->generateBarcodeLogic(Ljava/lang/String;I)V

    .line 105
    const/4 v13, 0x2

    move v5, v13

    .line 106
    .local v5, "lineThickness":I
    const/4 v13, 0x4

    move v6, v13

    .line 107
    .local v6, "aspectRatio":I
    move-object v13, v0

    invoke-virtual {v13}, Lcom/google/zxing/pdf417/encoder/PDF417;->getBarcodeMatrix()Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;

    move-result-object v13

    move v14, v5

    move v15, v6

    move/from16 v16, v5

    mul-int v15, v15, v16

    invoke-virtual {v13, v14, v15}, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->getScaledMatrix(II)[[B

    move-result-object v13

    move-object v7, v13

    .line 108
    .local v7, "originalScale":[[B
    const/4 v13, 0x0

    move v8, v13

    .line 109
    .local v8, "rotated":Z
    move v13, v3

    move v14, v2

    if-le v13, v14, :cond_2

    const/4 v13, 0x1

    :goto_0
    move-object v14, v7

    const/4 v15, 0x0

    aget-object v14, v14, v15

    array-length v14, v14

    move-object v15, v7

    array-length v15, v15

    if-ge v14, v15, :cond_3

    const/4 v14, 0x1

    :goto_1
    xor-int/2addr v13, v14

    if-eqz v13, :cond_0

    .line 110
    move-object v13, v7

    invoke-static {v13}, Lcom/google/zxing/pdf417/encoder/PDF417Writer;->rotateArray([[B)[[B

    move-result-object v13

    move-object v7, v13

    .line 111
    const/4 v13, 0x1

    move v8, v13

    .line 114
    :cond_0
    move v13, v2

    move-object v14, v7

    const/4 v15, 0x0

    aget-object v14, v14, v15

    array-length v14, v14

    div-int/2addr v13, v14

    move v9, v13

    .line 115
    .local v9, "scaleX":I
    move v13, v3

    move-object v14, v7

    array-length v14, v14

    div-int/2addr v13, v14

    move v10, v13

    .line 118
    .local v10, "scaleY":I
    move v13, v9

    move v14, v10

    if-ge v13, v14, :cond_4

    .line 119
    move v13, v9

    move v11, v13

    .line 124
    .local v11, "scale":I
    :goto_2
    move v13, v11

    const/4 v14, 0x1

    if-le v13, v14, :cond_5

    .line 125
    move-object v13, v0

    invoke-virtual {v13}, Lcom/google/zxing/pdf417/encoder/PDF417;->getBarcodeMatrix()Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;

    move-result-object v13

    move v14, v11

    move v15, v5

    mul-int/2addr v14, v15

    move v15, v11

    move/from16 v16, v6

    mul-int v15, v15, v16

    move/from16 v16, v5

    mul-int v15, v15, v16

    invoke-virtual {v13, v14, v15}, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->getScaledMatrix(II)[[B

    move-result-object v13

    move-object v12, v13

    .line 127
    .local v12, "scaledMatrix":[[B
    move v13, v8

    if-eqz v13, :cond_1

    .line 128
    move-object v13, v12

    invoke-static {v13}, Lcom/google/zxing/pdf417/encoder/PDF417Writer;->rotateArray([[B)[[B

    move-result-object v13

    move-object v12, v13

    .line 130
    :cond_1
    move-object v13, v12

    invoke-static {v13}, Lcom/google/zxing/pdf417/encoder/PDF417Writer;->bitMatrixFrombitArray([[B)Lcom/google/zxing/common/BitMatrix;

    move-result-object v13

    move-object v0, v13

    .line 132
    .end local v0    # "encoder":Lcom/google/zxing/pdf417/encoder/PDF417;
    .end local v12    # "scaledMatrix":[[B
    :goto_3
    return-object v0

    .line 109
    .end local v9    # "scaleX":I
    .end local v10    # "scaleY":I
    .end local v11    # "scale":I
    .restart local v0    # "encoder":Lcom/google/zxing/pdf417/encoder/PDF417;
    :cond_2
    const/4 v13, 0x0

    goto :goto_0

    :cond_3
    const/4 v14, 0x0

    goto :goto_1

    .line 121
    .restart local v9    # "scaleX":I
    .restart local v10    # "scaleY":I
    :cond_4
    move v13, v10

    move v11, v13

    .restart local v11    # "scale":I
    goto :goto_2

    .line 132
    :cond_5
    move-object v13, v7

    invoke-static {v13}, Lcom/google/zxing/pdf417/encoder/PDF417Writer;->bitMatrixFrombitArray([[B)Lcom/google/zxing/common/BitMatrix;

    move-result-object v13

    move-object v0, v13

    goto :goto_3
.end method

.method private static bitMatrixFrombitArray([[B)Lcom/google/zxing/common/BitMatrix;
    .locals 13

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "input":[[B
    const/16 v6, 0x1e

    move v1, v6

    .line 146
    .local v1, "whiteSpace":I
    new-instance v6, Lcom/google/zxing/common/BitMatrix;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    const/4 v9, 0x0

    aget-object v8, v8, v9

    array-length v8, v8

    const/4 v9, 0x2

    move v10, v1

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    move-object v9, v0

    array-length v9, v9

    const/4 v10, 0x2

    move v11, v1

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    move-object v2, v6

    .line 147
    .local v2, "output":Lcom/google/zxing/common/BitMatrix;
    move-object v6, v2

    invoke-virtual {v6}, Lcom/google/zxing/common/BitMatrix;->clear()V

    .line 148
    const/4 v6, 0x0

    move v3, v6

    .local v3, "y":I
    move-object v6, v2

    invoke-virtual {v6}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v6

    move v7, v1

    sub-int/2addr v6, v7

    move v4, v6

    .local v4, "yOutput":I
    :goto_0
    move v6, v3

    move-object v7, v0

    array-length v7, v7

    if-ge v6, v7, :cond_2

    .line 149
    const/4 v6, 0x0

    move v5, v6

    .local v5, "x":I
    :goto_1
    move v6, v5

    move-object v7, v0

    const/4 v8, 0x0

    aget-object v7, v7, v8

    array-length v7, v7

    if-ge v6, v7, :cond_1

    .line 151
    move-object v6, v0

    move v7, v3

    aget-object v6, v6, v7

    move v7, v5

    aget-byte v6, v6, v7

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 152
    move-object v6, v2

    move v7, v5

    move v8, v1

    add-int/2addr v7, v8

    move v8, v4

    invoke-virtual {v6, v7, v8}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 149
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 148
    :cond_1
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 156
    .end local v5    # "x":I
    :cond_2
    move-object v6, v2

    move-object v0, v6

    .end local v0    # "input":[[B
    return-object v0
.end method

.method private static rotateArray([[B)[[B
    .locals 9

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "bitarray":[[B
    move-object v5, v0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    array-length v5, v5

    move-object v6, v0

    array-length v6, v6

    filled-new-array {v5, v6}, [I

    move-result-object v6

    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[B

    move-object v1, v5

    .line 164
    .local v1, "temp":[[B
    const/4 v5, 0x0

    move v2, v5

    .local v2, "ii":I
    :goto_0
    move v5, v2

    move-object v6, v0

    array-length v6, v6

    if-ge v5, v6, :cond_1

    .line 167
    move-object v5, v0

    array-length v5, v5

    move v6, v2

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    .line 168
    .local v3, "inverseii":I
    const/4 v5, 0x0

    move v4, v5

    .local v4, "jj":I
    :goto_1
    move v5, v4

    move-object v6, v0

    const/4 v7, 0x0

    aget-object v6, v6, v7

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 169
    move-object v5, v1

    move v6, v4

    aget-object v5, v5, v6

    move v6, v3

    move-object v7, v0

    move v8, v2

    aget-object v7, v7, v8

    move v8, v4

    aget-byte v7, v7, v8

    aput-byte v7, v5, v6

    .line 168
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 164
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    .end local v3    # "inverseii":I
    .end local v4    # "jj":I
    :cond_1
    move-object v5, v1

    move-object v0, v5

    .end local v0    # "bitarray":[[B
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
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/encoder/PDF417Writer;
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

    invoke-virtual/range {v5 .. v10}, Lcom/google/zxing/pdf417/encoder/PDF417Writer;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lcom/google/zxing/pdf417/encoder/PDF417Writer;
    return-object v0
.end method

.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 14
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
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/encoder/PDF417Writer;
    move-object v1, p1

    .local v1, "contents":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "format":Lcom/google/zxing/BarcodeFormat;
    move/from16 v3, p3

    .local v3, "width":I
    move/from16 v4, p4

    .local v4, "height":I
    move-object/from16 v5, p5

    .local v5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    move-object v8, v2

    sget-object v9, Lcom/google/zxing/BarcodeFormat;->PDF_417:Lcom/google/zxing/BarcodeFormat;

    if-eq v8, v9, :cond_0

    .line 41
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Can only encode PDF_417, but got "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 44
    :cond_0
    new-instance v8, Lcom/google/zxing/pdf417/encoder/PDF417;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Lcom/google/zxing/pdf417/encoder/PDF417;-><init>()V

    move-object v6, v8

    .line 46
    .local v6, "encoder":Lcom/google/zxing/pdf417/encoder/PDF417;
    move-object v8, v5

    if-eqz v8, :cond_3

    .line 47
    move-object v8, v5

    sget-object v9, Lcom/google/zxing/EncodeHintType;->PDF417_COMPACT:Lcom/google/zxing/EncodeHintType;

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 48
    move-object v8, v6

    move-object v9, v5

    sget-object v10, Lcom/google/zxing/EncodeHintType;->PDF417_COMPACT:Lcom/google/zxing/EncodeHintType;

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v8, v9}, Lcom/google/zxing/pdf417/encoder/PDF417;->setCompact(Z)V

    .line 50
    :cond_1
    move-object v8, v5

    sget-object v9, Lcom/google/zxing/EncodeHintType;->PDF417_COMPACTION:Lcom/google/zxing/EncodeHintType;

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 51
    move-object v8, v6

    move-object v9, v5

    sget-object v10, Lcom/google/zxing/EncodeHintType;->PDF417_COMPACTION:Lcom/google/zxing/EncodeHintType;

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/zxing/pdf417/encoder/Compaction;

    invoke-virtual {v8, v9}, Lcom/google/zxing/pdf417/encoder/PDF417;->setCompaction(Lcom/google/zxing/pdf417/encoder/Compaction;)V

    .line 53
    :cond_2
    move-object v8, v5

    sget-object v9, Lcom/google/zxing/EncodeHintType;->PDF417_DIMENSIONS:Lcom/google/zxing/EncodeHintType;

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 54
    move-object v8, v5

    sget-object v9, Lcom/google/zxing/EncodeHintType;->PDF417_DIMENSIONS:Lcom/google/zxing/EncodeHintType;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/zxing/pdf417/encoder/Dimensions;

    move-object v7, v8

    .line 55
    .local v7, "dimensions":Lcom/google/zxing/pdf417/encoder/Dimensions;
    move-object v8, v6

    move-object v9, v7

    invoke-virtual {v9}, Lcom/google/zxing/pdf417/encoder/Dimensions;->getMaxCols()I

    move-result v9

    move-object v10, v7

    invoke-virtual {v10}, Lcom/google/zxing/pdf417/encoder/Dimensions;->getMinCols()I

    move-result v10

    move-object v11, v7

    invoke-virtual {v11}, Lcom/google/zxing/pdf417/encoder/Dimensions;->getMaxRows()I

    move-result v11

    move-object v12, v7

    invoke-virtual {v12}, Lcom/google/zxing/pdf417/encoder/Dimensions;->getMinRows()I

    move-result v12

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/google/zxing/pdf417/encoder/PDF417;->setDimensions(IIII)V

    .line 62
    .end local v7    # "dimensions":Lcom/google/zxing/pdf417/encoder/Dimensions;
    :cond_3
    move-object v8, v6

    move-object v9, v1

    move v10, v3

    move v11, v4

    invoke-static {v8, v9, v10, v11}, Lcom/google/zxing/pdf417/encoder/PDF417Writer;->bitMatrixFromEncoder(Lcom/google/zxing/pdf417/encoder/PDF417;Ljava/lang/String;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object v8

    move-object v0, v8

    .end local v0    # "this":Lcom/google/zxing/pdf417/encoder/PDF417Writer;
    return-object v0
.end method

.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;ZIIIIIILcom/google/zxing/pdf417/encoder/Compaction;)Lcom/google/zxing/common/BitMatrix;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 88
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/encoder/PDF417Writer;
    move-object/from16 v1, p1

    .local v1, "contents":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "format":Lcom/google/zxing/BarcodeFormat;
    move/from16 v3, p3

    .local v3, "compact":Z
    move/from16 v4, p4

    .local v4, "width":I
    move/from16 v5, p5

    .local v5, "height":I
    move/from16 v6, p6

    .local v6, "minCols":I
    move/from16 v7, p7

    .local v7, "maxCols":I
    move/from16 v8, p8

    .local v8, "minRows":I
    move/from16 v9, p9

    .local v9, "maxRows":I
    move-object/from16 v10, p10

    .local v10, "compaction":Lcom/google/zxing/pdf417/encoder/Compaction;
    new-instance v12, Ljava/util/EnumMap;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    const-class v14, Lcom/google/zxing/EncodeHintType;

    invoke-direct {v13, v14}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    move-object v11, v12

    .line 89
    .local v11, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;Ljava/lang/Object;>;"
    move-object v12, v11

    sget-object v13, Lcom/google/zxing/EncodeHintType;->PDF417_COMPACT:Lcom/google/zxing/EncodeHintType;

    move v14, v3

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 90
    move-object v12, v11

    sget-object v13, Lcom/google/zxing/EncodeHintType;->PDF417_COMPACTION:Lcom/google/zxing/EncodeHintType;

    move-object v14, v10

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 91
    move-object v12, v11

    sget-object v13, Lcom/google/zxing/EncodeHintType;->PDF417_DIMENSIONS:Lcom/google/zxing/EncodeHintType;

    new-instance v14, Lcom/google/zxing/pdf417/encoder/Dimensions;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v9

    invoke-direct/range {v15 .. v19}, Lcom/google/zxing/pdf417/encoder/Dimensions;-><init>(IIII)V

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 92
    move-object v12, v0

    move-object v13, v1

    move-object v14, v2

    move v15, v4

    move/from16 v16, v5

    move-object/from16 v17, v11

    invoke-virtual/range {v12 .. v17}, Lcom/google/zxing/pdf417/encoder/PDF417Writer;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v12

    move-object v0, v12

    .end local v0    # "this":Lcom/google/zxing/pdf417/encoder/PDF417Writer;
    return-object v0
.end method
