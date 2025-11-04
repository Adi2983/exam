.class final Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;
.super Ljava/lang/Object;
.source "BitMatrixParser.java"


# instance fields
.field private final mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

.field private final readMappingMatrix:Lcom/google/zxing/common/BitMatrix;

.field private final version:Lcom/google/zxing/datamatrix/decoder/Version;


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;
    move-object v1, p1

    .local v1, "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 36
    move-object v3, v1

    invoke-virtual {v3}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v3

    move v2, v3

    .line 37
    .local v2, "dimension":I
    move v3, v2

    const/16 v4, 0x8

    if-lt v3, v4, :cond_0

    move v3, v2

    const/16 v4, 0x90

    if-gt v3, v4, :cond_0

    move v3, v2

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 38
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 41
    :cond_1
    move-object v3, v0

    move-object v4, v1

    invoke-static {v4}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readVersion(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/datamatrix/decoder/Version;

    move-result-object v4

    iput-object v4, v3, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    .line 42
    move-object v3, v0

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->extractDataRegion(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v4

    iput-object v4, v3, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

    .line 43
    move-object v3, v0

    new-instance v4, Lcom/google/zxing/common/BitMatrix;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v6}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v6

    move-object v7, v0

    iget-object v7, v7, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v7}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v7

    invoke-direct {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    iput-object v4, v3, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readMappingMatrix:Lcom/google/zxing/common/BitMatrix;

    .line 44
    return-void
.end method

.method private static readVersion(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/datamatrix/decoder/Version;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v3

    move v1, v3

    .line 63
    .local v1, "numRows":I
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v3

    move v2, v3

    .line 64
    .local v2, "numColumns":I
    move v3, v1

    move v4, v2

    invoke-static {v3, v4}, Lcom/google/zxing/datamatrix/decoder/Version;->getVersionForDimensions(II)Lcom/google/zxing/datamatrix/decoder/Version;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    return-object v0
.end method


# virtual methods
.method extractDataRegion(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;
    .locals 28

    .prologue
    .line 403
    move-object/from16 v2, p0

    .local v2, "this":Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;
    move-object/from16 v3, p1

    .local v3, "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/zxing/datamatrix/decoder/Version;->getSymbolSizeRows()I

    move-result v23

    move/from16 v4, v23

    .line 404
    .local v4, "symbolSizeRows":I
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/zxing/datamatrix/decoder/Version;->getSymbolSizeColumns()I

    move-result v23

    move/from16 v5, v23

    .line 406
    .local v5, "symbolSizeColumns":I
    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v23

    move/from16 v24, v4

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 407
    new-instance v23, Ljava/lang/IllegalArgumentException;

    move-object/from16 v27, v23

    move-object/from16 v23, v27

    move-object/from16 v24, v27

    const-string/jumbo v25, "Dimension of bitMarix must match the version size"

    invoke-direct/range {v24 .. v25}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 410
    :cond_0
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/zxing/datamatrix/decoder/Version;->getDataRegionSizeRows()I

    move-result v23

    move/from16 v6, v23

    .line 411
    .local v6, "dataRegionSizeRows":I
    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/google/zxing/datamatrix/decoder/Version;->getDataRegionSizeColumns()I

    move-result v23

    move/from16 v7, v23

    .line 413
    .local v7, "dataRegionSizeColumns":I
    move/from16 v23, v4

    move/from16 v24, v6

    div-int v23, v23, v24

    move/from16 v8, v23

    .line 414
    .local v8, "numDataRegionsRow":I
    move/from16 v23, v5

    move/from16 v24, v7

    div-int v23, v23, v24

    move/from16 v9, v23

    .line 416
    .local v9, "numDataRegionsColumn":I
    move/from16 v23, v8

    move/from16 v24, v6

    mul-int v23, v23, v24

    move/from16 v10, v23

    .line 417
    .local v10, "sizeDataRegionRow":I
    move/from16 v23, v9

    move/from16 v24, v7

    mul-int v23, v23, v24

    move/from16 v11, v23

    .line 419
    .local v11, "sizeDataRegionColumn":I
    new-instance v23, Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v27, v23

    move-object/from16 v23, v27

    move-object/from16 v24, v27

    move/from16 v25, v11

    move/from16 v26, v10

    invoke-direct/range {v24 .. v26}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    move-object/from16 v12, v23

    .line 420
    .local v12, "bitMatrixWithoutAlignment":Lcom/google/zxing/common/BitMatrix;
    const/16 v23, 0x0

    move/from16 v13, v23

    .local v13, "dataRegionRow":I
    :goto_0
    move/from16 v23, v13

    move/from16 v24, v8

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_5

    .line 421
    move/from16 v23, v13

    move/from16 v24, v6

    mul-int v23, v23, v24

    move/from16 v14, v23

    .line 422
    .local v14, "dataRegionRowOffset":I
    const/16 v23, 0x0

    move/from16 v15, v23

    .local v15, "dataRegionColumn":I
    :goto_1
    move/from16 v23, v15

    move/from16 v24, v9

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_4

    .line 423
    move/from16 v23, v15

    move/from16 v24, v7

    mul-int v23, v23, v24

    move/from16 v16, v23

    .line 424
    .local v16, "dataRegionColumnOffset":I
    const/16 v23, 0x0

    move/from16 v17, v23

    .local v17, "i":I
    :goto_2
    move/from16 v23, v17

    move/from16 v24, v6

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_3

    .line 425
    move/from16 v23, v13

    move/from16 v24, v6

    const/16 v25, 0x2

    add-int/lit8 v24, v24, 0x2

    mul-int v23, v23, v24

    const/16 v24, 0x1

    add-int/lit8 v23, v23, 0x1

    move/from16 v24, v17

    add-int v23, v23, v24

    move/from16 v18, v23

    .line 426
    .local v18, "readRowOffset":I
    move/from16 v23, v14

    move/from16 v24, v17

    add-int v23, v23, v24

    move/from16 v19, v23

    .line 427
    .local v19, "writeRowOffset":I
    const/16 v23, 0x0

    move/from16 v20, v23

    .local v20, "j":I
    :goto_3
    move/from16 v23, v20

    move/from16 v24, v7

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_2

    .line 428
    move/from16 v23, v15

    move/from16 v24, v7

    const/16 v25, 0x2

    add-int/lit8 v24, v24, 0x2

    mul-int v23, v23, v24

    const/16 v24, 0x1

    add-int/lit8 v23, v23, 0x1

    move/from16 v24, v20

    add-int v23, v23, v24

    move/from16 v21, v23

    .line 429
    .local v21, "readColumnOffset":I
    move-object/from16 v23, v3

    move/from16 v24, v21

    move/from16 v25, v18

    invoke-virtual/range {v23 .. v25}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 430
    move/from16 v23, v16

    move/from16 v24, v20

    add-int v23, v23, v24

    move/from16 v22, v23

    .line 431
    .local v22, "writeColumnOffset":I
    move-object/from16 v23, v12

    move/from16 v24, v22

    move/from16 v25, v19

    invoke-virtual/range {v23 .. v25}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 427
    .end local v22    # "writeColumnOffset":I
    :cond_1
    add-int/lit8 v20, v20, 0x1

    goto :goto_3

    .line 424
    .end local v21    # "readColumnOffset":I
    :cond_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 422
    .end local v18    # "readRowOffset":I
    .end local v19    # "writeRowOffset":I
    .end local v20    # "j":I
    :cond_3
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    .line 420
    .end local v16    # "dataRegionColumnOffset":I
    .end local v17    # "i":I
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 437
    .end local v14    # "dataRegionRowOffset":I
    .end local v15    # "dataRegionColumn":I
    :cond_5
    move-object/from16 v23, v12

    move-object/from16 v2, v23

    .end local v2    # "this":Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;
    return-object v2
.end method

.method getVersion()Lcom/google/zxing/datamatrix/decoder/Version;
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;
    return-object v0
.end method

.method readCodewords()[B
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 77
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;
    move-object v11, v0

    iget-object v11, v11, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    invoke-virtual {v11}, Lcom/google/zxing/datamatrix/decoder/Version;->getTotalCodewords()I

    move-result v11

    new-array v11, v11, [B

    move-object v1, v11

    .line 78
    .local v1, "result":[B
    const/4 v11, 0x0

    move v2, v11

    .line 80
    .local v2, "resultOffset":I
    const/4 v11, 0x4

    move v3, v11

    .line 81
    .local v3, "row":I
    const/4 v11, 0x0

    move v4, v11

    .line 83
    .local v4, "column":I
    move-object v11, v0

    iget-object v11, v11, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v11}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v11

    move v5, v11

    .line 84
    .local v5, "numRows":I
    move-object v11, v0

    iget-object v11, v11, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v11}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v11

    move v6, v11

    .line 86
    .local v6, "numColumns":I
    const/4 v11, 0x0

    move v7, v11

    .line 87
    .local v7, "corner1Read":Z
    const/4 v11, 0x0

    move v8, v11

    .line 88
    .local v8, "corner2Read":Z
    const/4 v11, 0x0

    move v9, v11

    .line 89
    .local v9, "corner3Read":Z
    const/4 v11, 0x0

    move v10, v11

    .line 94
    .local v10, "corner4Read":Z
    :cond_0
    move v11, v3

    move v12, v5

    if-ne v11, v12, :cond_1

    move v11, v4

    if-nez v11, :cond_1

    move v11, v7

    if-nez v11, :cond_1

    .line 95
    move-object v11, v1

    move v12, v2

    add-int/lit8 v2, v2, 0x1

    move-object v13, v0

    move v14, v5

    move v15, v6

    invoke-virtual {v13, v14, v15}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readCorner1(II)I

    move-result v13

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 96
    add-int/lit8 v3, v3, -0x2

    .line 97
    add-int/lit8 v4, v4, 0x2

    .line 98
    const/4 v11, 0x1

    move v7, v11

    .line 137
    :goto_0
    move v11, v3

    move v12, v5

    if-lt v11, v12, :cond_0

    move v11, v4

    move v12, v6

    if-lt v11, v12, :cond_0

    .line 139
    move v11, v2

    move-object v12, v0

    iget-object v12, v12, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->version:Lcom/google/zxing/datamatrix/decoder/Version;

    invoke-virtual {v12}, Lcom/google/zxing/datamatrix/decoder/Version;->getTotalCodewords()I

    move-result v12

    if-eq v11, v12, :cond_a

    .line 140
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v11

    throw v11

    .line 99
    :cond_1
    move v11, v3

    move v12, v5

    const/4 v13, 0x2

    add-int/lit8 v12, v12, -0x2

    if-ne v11, v12, :cond_2

    move v11, v4

    if-nez v11, :cond_2

    move v11, v6

    const/4 v12, 0x3

    and-int/lit8 v11, v11, 0x3

    if-eqz v11, :cond_2

    move v11, v8

    if-nez v11, :cond_2

    .line 100
    move-object v11, v1

    move v12, v2

    add-int/lit8 v2, v2, 0x1

    move-object v13, v0

    move v14, v5

    move v15, v6

    invoke-virtual {v13, v14, v15}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readCorner2(II)I

    move-result v13

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 101
    add-int/lit8 v3, v3, -0x2

    .line 102
    add-int/lit8 v4, v4, 0x2

    .line 103
    const/4 v11, 0x1

    move v8, v11

    goto :goto_0

    .line 104
    :cond_2
    move v11, v3

    move v12, v5

    const/4 v13, 0x4

    add-int/lit8 v12, v12, 0x4

    if-ne v11, v12, :cond_3

    move v11, v4

    const/4 v12, 0x2

    if-ne v11, v12, :cond_3

    move v11, v6

    const/4 v12, 0x7

    and-int/lit8 v11, v11, 0x7

    if-nez v11, :cond_3

    move v11, v9

    if-nez v11, :cond_3

    .line 105
    move-object v11, v1

    move v12, v2

    add-int/lit8 v2, v2, 0x1

    move-object v13, v0

    move v14, v5

    move v15, v6

    invoke-virtual {v13, v14, v15}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readCorner3(II)I

    move-result v13

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 106
    add-int/lit8 v3, v3, -0x2

    .line 107
    add-int/lit8 v4, v4, 0x2

    .line 108
    const/4 v11, 0x1

    move v9, v11

    goto :goto_0

    .line 109
    :cond_3
    move v11, v3

    move v12, v5

    const/4 v13, 0x2

    add-int/lit8 v12, v12, -0x2

    if-ne v11, v12, :cond_4

    move v11, v4

    if-nez v11, :cond_4

    move v11, v6

    const/4 v12, 0x7

    and-int/lit8 v11, v11, 0x7

    const/4 v12, 0x4

    if-ne v11, v12, :cond_4

    move v11, v10

    if-nez v11, :cond_4

    .line 110
    move-object v11, v1

    move v12, v2

    add-int/lit8 v2, v2, 0x1

    move-object v13, v0

    move v14, v5

    move v15, v6

    invoke-virtual {v13, v14, v15}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readCorner4(II)I

    move-result v13

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 111
    add-int/lit8 v3, v3, -0x2

    .line 112
    add-int/lit8 v4, v4, 0x2

    .line 113
    const/4 v11, 0x1

    move v10, v11

    goto/16 :goto_0

    .line 117
    :cond_4
    move v11, v3

    move v12, v5

    if-ge v11, v12, :cond_5

    move v11, v4

    if-ltz v11, :cond_5

    move-object v11, v0

    iget-object v11, v11, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readMappingMatrix:Lcom/google/zxing/common/BitMatrix;

    move v12, v4

    move v13, v3

    invoke-virtual {v11, v12, v13}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    if-nez v11, :cond_5

    .line 118
    move-object v11, v1

    move v12, v2

    add-int/lit8 v2, v2, 0x1

    move-object v13, v0

    move v14, v3

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    invoke-virtual/range {v13 .. v17}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readUtah(IIII)I

    move-result v13

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 120
    :cond_5
    add-int/lit8 v3, v3, -0x2

    .line 121
    add-int/lit8 v4, v4, 0x2

    .line 122
    move v11, v3

    if-ltz v11, :cond_6

    move v11, v4

    move v12, v6

    if-lt v11, v12, :cond_4

    .line 123
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 124
    add-int/lit8 v4, v4, 0x3

    .line 128
    :cond_7
    move v11, v3

    if-ltz v11, :cond_8

    move v11, v4

    move v12, v6

    if-ge v11, v12, :cond_8

    move-object v11, v0

    iget-object v11, v11, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readMappingMatrix:Lcom/google/zxing/common/BitMatrix;

    move v12, v4

    move v13, v3

    invoke-virtual {v11, v12, v13}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    if-nez v11, :cond_8

    .line 129
    move-object v11, v1

    move v12, v2

    add-int/lit8 v2, v2, 0x1

    move-object v13, v0

    move v14, v3

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, v6

    invoke-virtual/range {v13 .. v17}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readUtah(IIII)I

    move-result v13

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 131
    :cond_8
    add-int/lit8 v3, v3, 0x2

    .line 132
    add-int/lit8 v4, v4, -0x2

    .line 133
    move v11, v3

    move v12, v5

    if-ge v11, v12, :cond_9

    move v11, v4

    if-gez v11, :cond_7

    .line 134
    :cond_9
    add-int/lit8 v3, v3, 0x3

    .line 135
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 142
    :cond_a
    move-object v11, v1

    move-object v0, v11

    .end local v0    # "this":Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;
    return-object v0
.end method

.method readCorner1(II)I
    .locals 9

    .prologue
    .line 225
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;
    move v1, p1

    .local v1, "numRows":I
    move v2, p2

    .local v2, "numColumns":I
    const/4 v4, 0x0

    move v3, v4

    .line 226
    .local v3, "currentByte":I
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x0

    move v7, v1

    move v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 227
    move v4, v3

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 229
    :cond_0
    move v4, v3

    const/4 v5, 0x1

    shl-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 230
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x1

    move v7, v1

    move v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 231
    move v4, v3

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 233
    :cond_1
    move v4, v3

    const/4 v5, 0x1

    shl-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 234
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x2

    move v7, v1

    move v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 235
    move v4, v3

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 237
    :cond_2
    move v4, v3

    const/4 v5, 0x1

    shl-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 238
    move-object v4, v0

    const/4 v5, 0x0

    move v6, v2

    const/4 v7, 0x2

    add-int/lit8 v6, v6, -0x2

    move v7, v1

    move v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 239
    move v4, v3

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 241
    :cond_3
    move v4, v3

    const/4 v5, 0x1

    shl-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 242
    move-object v4, v0

    const/4 v5, 0x0

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v7, v1

    move v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 243
    move v4, v3

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 245
    :cond_4
    move v4, v3

    const/4 v5, 0x1

    shl-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 246
    move-object v4, v0

    const/4 v5, 0x1

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v7, v1

    move v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 247
    move v4, v3

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 249
    :cond_5
    move v4, v3

    const/4 v5, 0x1

    shl-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 250
    move-object v4, v0

    const/4 v5, 0x2

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v7, v1

    move v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 251
    move v4, v3

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 253
    :cond_6
    move v4, v3

    const/4 v5, 0x1

    shl-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 254
    move-object v4, v0

    const/4 v5, 0x3

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v7, v1

    move v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 255
    move v4, v3

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 257
    :cond_7
    move v4, v3

    move v0, v4

    .end local v0    # "this":Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;
    return v0
.end method

.method readCorner2(II)I
    .locals 9

    .prologue
    .line 270
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;
    move v1, p1

    .local v1, "numRows":I
    move v2, p2

    .local v2, "numColumns":I
    const/4 v4, 0x0

    move v3, v4

    .line 271
    .local v3, "currentByte":I
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x3

    add-int/lit8 v5, v5, -0x3

    const/4 v6, 0x0

    move v7, v1

    move v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 272
    move v4, v3

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 274
    :cond_0
    move v4, v3

    const/4 v5, 0x1

    shl-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 275
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x2

    add-int/lit8 v5, v5, -0x2

    const/4 v6, 0x0

    move v7, v1

    move v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 276
    move v4, v3

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 278
    :cond_1
    move v4, v3

    const/4 v5, 0x1

    shl-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 279
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x0

    move v7, v1

    move v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 280
    move v4, v3

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 282
    :cond_2
    move v4, v3

    const/4 v5, 0x1

    shl-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 283
    move-object v4, v0

    const/4 v5, 0x0

    move v6, v2

    const/4 v7, 0x4

    add-int/lit8 v6, v6, -0x4

    move v7, v1

    move v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 284
    move v4, v3

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 286
    :cond_3
    move v4, v3

    const/4 v5, 0x1

    shl-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 287
    move-object v4, v0

    const/4 v5, 0x0

    move v6, v2

    const/4 v7, 0x3

    add-int/lit8 v6, v6, -0x3

    move v7, v1

    move v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 288
    move v4, v3

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 290
    :cond_4
    move v4, v3

    const/4 v5, 0x1

    shl-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 291
    move-object v4, v0

    const/4 v5, 0x0

    move v6, v2

    const/4 v7, 0x2

    add-int/lit8 v6, v6, -0x2

    move v7, v1

    move v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 292
    move v4, v3

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 294
    :cond_5
    move v4, v3

    const/4 v5, 0x1

    shl-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 295
    move-object v4, v0

    const/4 v5, 0x0

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v7, v1

    move v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 296
    move v4, v3

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 298
    :cond_6
    move v4, v3

    const/4 v5, 0x1

    shl-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 299
    move-object v4, v0

    const/4 v5, 0x1

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v7, v1

    move v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 300
    move v4, v3

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 302
    :cond_7
    move v4, v3

    move v0, v4

    .end local v0    # "this":Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;
    return v0
.end method

.method readCorner3(II)I
    .locals 9

    .prologue
    .line 315
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;
    move v1, p1

    .local v1, "numRows":I
    move v2, p2

    .local v2, "numColumns":I
    const/4 v4, 0x0

    move v3, v4

    .line 316
    .local v3, "currentByte":I
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x0

    move v7, v1

    move v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 317
    move v4, v3

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 319
    :cond_0
    move v4, v3

    const/4 v5, 0x1

    shl-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 320
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v7, v1

    move v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 321
    move v4, v3

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 323
    :cond_1
    move v4, v3

    const/4 v5, 0x1

    shl-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 324
    move-object v4, v0

    const/4 v5, 0x0

    move v6, v2

    const/4 v7, 0x3

    add-int/lit8 v6, v6, -0x3

    move v7, v1

    move v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 325
    move v4, v3

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 327
    :cond_2
    move v4, v3

    const/4 v5, 0x1

    shl-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 328
    move-object v4, v0

    const/4 v5, 0x0

    move v6, v2

    const/4 v7, 0x2

    add-int/lit8 v6, v6, -0x2

    move v7, v1

    move v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 329
    move v4, v3

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 331
    :cond_3
    move v4, v3

    const/4 v5, 0x1

    shl-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 332
    move-object v4, v0

    const/4 v5, 0x0

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v7, v1

    move v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 333
    move v4, v3

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 335
    :cond_4
    move v4, v3

    const/4 v5, 0x1

    shl-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 336
    move-object v4, v0

    const/4 v5, 0x1

    move v6, v2

    const/4 v7, 0x3

    add-int/lit8 v6, v6, -0x3

    move v7, v1

    move v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 337
    move v4, v3

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 339
    :cond_5
    move v4, v3

    const/4 v5, 0x1

    shl-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 340
    move-object v4, v0

    const/4 v5, 0x1

    move v6, v2

    const/4 v7, 0x2

    add-int/lit8 v6, v6, -0x2

    move v7, v1

    move v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 341
    move v4, v3

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 343
    :cond_6
    move v4, v3

    const/4 v5, 0x1

    shl-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 344
    move-object v4, v0

    const/4 v5, 0x1

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v7, v1

    move v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 345
    move v4, v3

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 347
    :cond_7
    move v4, v3

    move v0, v4

    .end local v0    # "this":Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;
    return v0
.end method

.method readCorner4(II)I
    .locals 9

    .prologue
    .line 360
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;
    move v1, p1

    .local v1, "numRows":I
    move v2, p2

    .local v2, "numColumns":I
    const/4 v4, 0x0

    move v3, v4

    .line 361
    .local v3, "currentByte":I
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x3

    add-int/lit8 v5, v5, -0x3

    const/4 v6, 0x0

    move v7, v1

    move v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 362
    move v4, v3

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 364
    :cond_0
    move v4, v3

    const/4 v5, 0x1

    shl-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 365
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x2

    add-int/lit8 v5, v5, -0x2

    const/4 v6, 0x0

    move v7, v1

    move v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 366
    move v4, v3

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 368
    :cond_1
    move v4, v3

    const/4 v5, 0x1

    shl-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 369
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    const/4 v6, 0x0

    move v7, v1

    move v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 370
    move v4, v3

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 372
    :cond_2
    move v4, v3

    const/4 v5, 0x1

    shl-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 373
    move-object v4, v0

    const/4 v5, 0x0

    move v6, v2

    const/4 v7, 0x2

    add-int/lit8 v6, v6, -0x2

    move v7, v1

    move v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 374
    move v4, v3

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 376
    :cond_3
    move v4, v3

    const/4 v5, 0x1

    shl-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 377
    move-object v4, v0

    const/4 v5, 0x0

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v7, v1

    move v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 378
    move v4, v3

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 380
    :cond_4
    move v4, v3

    const/4 v5, 0x1

    shl-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 381
    move-object v4, v0

    const/4 v5, 0x1

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v7, v1

    move v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 382
    move v4, v3

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 384
    :cond_5
    move v4, v3

    const/4 v5, 0x1

    shl-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 385
    move-object v4, v0

    const/4 v5, 0x2

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v7, v1

    move v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 386
    move v4, v3

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 388
    :cond_6
    move v4, v3

    const/4 v5, 0x1

    shl-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 389
    move-object v4, v0

    const/4 v5, 0x3

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v7, v1

    move v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 390
    move v4, v3

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    move v3, v4

    .line 392
    :cond_7
    move v4, v3

    move v0, v4

    .end local v0    # "this":Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;
    return v0
.end method

.method readModule(IIII)Z
    .locals 9

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;
    move v1, p1

    .local v1, "row":I
    move v2, p2

    .local v2, "column":I
    move v3, p3

    .local v3, "numRows":I
    move v4, p4

    .local v4, "numColumns":I
    move v5, v1

    if-gez v5, :cond_0

    .line 157
    move v5, v1

    move v6, v3

    add-int/2addr v5, v6

    move v1, v5

    .line 158
    move v5, v2

    const/4 v6, 0x4

    move v7, v3

    const/4 v8, 0x4

    add-int/lit8 v7, v7, 0x4

    const/4 v8, 0x7

    and-int/lit8 v7, v7, 0x7

    rsub-int/lit8 v6, v7, 0x4

    add-int/2addr v5, v6

    move v2, v5

    .line 160
    :cond_0
    move v5, v2

    if-gez v5, :cond_1

    .line 161
    move v5, v2

    move v6, v4

    add-int/2addr v5, v6

    move v2, v5

    .line 162
    move v5, v1

    const/4 v6, 0x4

    move v7, v4

    const/4 v8, 0x4

    add-int/lit8 v7, v7, 0x4

    const/4 v8, 0x7

    and-int/lit8 v7, v7, 0x7

    rsub-int/lit8 v6, v7, 0x4

    add-int/2addr v5, v6

    move v1, v5

    .line 164
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readMappingMatrix:Lcom/google/zxing/common/BitMatrix;

    move v6, v2

    move v7, v1

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 165
    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->mappingBitMatrix:Lcom/google/zxing/common/BitMatrix;

    move v6, v2

    move v7, v1

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    move v0, v5

    .end local v0    # "this":Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;
    return v0
.end method

.method readUtah(IIII)I
    .locals 11

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;
    move v1, p1

    .local v1, "row":I
    move v2, p2

    .local v2, "column":I
    move v3, p3

    .local v3, "numRows":I
    move v4, p4

    .local v4, "numColumns":I
    const/4 v6, 0x0

    move v5, v6

    .line 181
    .local v5, "currentByte":I
    move-object v6, v0

    move v7, v1

    const/4 v8, 0x2

    add-int/lit8 v7, v7, -0x2

    move v8, v2

    const/4 v9, 0x2

    add-int/lit8 v8, v8, -0x2

    move v9, v3

    move v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 182
    move v6, v5

    const/4 v7, 0x1

    or-int/lit8 v6, v6, 0x1

    move v5, v6

    .line 184
    :cond_0
    move v6, v5

    const/4 v7, 0x1

    shl-int/lit8 v6, v6, 0x1

    move v5, v6

    .line 185
    move-object v6, v0

    move v7, v1

    const/4 v8, 0x2

    add-int/lit8 v7, v7, -0x2

    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v9, v3

    move v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 186
    move v6, v5

    const/4 v7, 0x1

    or-int/lit8 v6, v6, 0x1

    move v5, v6

    .line 188
    :cond_1
    move v6, v5

    const/4 v7, 0x1

    shl-int/lit8 v6, v6, 0x1

    move v5, v6

    .line 189
    move-object v6, v0

    move v7, v1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v8, v2

    const/4 v9, 0x2

    add-int/lit8 v8, v8, -0x2

    move v9, v3

    move v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 190
    move v6, v5

    const/4 v7, 0x1

    or-int/lit8 v6, v6, 0x1

    move v5, v6

    .line 192
    :cond_2
    move v6, v5

    const/4 v7, 0x1

    shl-int/lit8 v6, v6, 0x1

    move v5, v6

    .line 193
    move-object v6, v0

    move v7, v1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v9, v3

    move v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 194
    move v6, v5

    const/4 v7, 0x1

    or-int/lit8 v6, v6, 0x1

    move v5, v6

    .line 196
    :cond_3
    move v6, v5

    const/4 v7, 0x1

    shl-int/lit8 v6, v6, 0x1

    move v5, v6

    .line 197
    move-object v6, v0

    move v7, v1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 198
    move v6, v5

    const/4 v7, 0x1

    or-int/lit8 v6, v6, 0x1

    move v5, v6

    .line 200
    :cond_4
    move v6, v5

    const/4 v7, 0x1

    shl-int/lit8 v6, v6, 0x1

    move v5, v6

    .line 201
    move-object v6, v0

    move v7, v1

    move v8, v2

    const/4 v9, 0x2

    add-int/lit8 v8, v8, -0x2

    move v9, v3

    move v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 202
    move v6, v5

    const/4 v7, 0x1

    or-int/lit8 v6, v6, 0x1

    move v5, v6

    .line 204
    :cond_5
    move v6, v5

    const/4 v7, 0x1

    shl-int/lit8 v6, v6, 0x1

    move v5, v6

    .line 205
    move-object v6, v0

    move v7, v1

    move v8, v2

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v9, v3

    move v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 206
    move v6, v5

    const/4 v7, 0x1

    or-int/lit8 v6, v6, 0x1

    move v5, v6

    .line 208
    :cond_6
    move v6, v5

    const/4 v7, 0x1

    shl-int/lit8 v6, v6, 0x1

    move v5, v6

    .line 209
    move-object v6, v0

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readModule(IIII)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 210
    move v6, v5

    const/4 v7, 0x1

    or-int/lit8 v6, v6, 0x1

    move v5, v6

    .line 212
    :cond_7
    move v6, v5

    move v0, v6

    .end local v0    # "this":Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;
    return v0
.end method
