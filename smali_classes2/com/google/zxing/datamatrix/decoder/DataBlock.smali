.class final Lcom/google/zxing/datamatrix/decoder/DataBlock;
.super Ljava/lang/Object;
.source "DataBlock.java"


# instance fields
.field private final codewords:[B

.field private final numDataCodewords:I


# direct methods
.method private constructor <init>(I[B)V
    .locals 5

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/datamatrix/decoder/DataBlock;
    move v1, p1

    .local v1, "numDataCodewords":I
    move-object v2, p2

    .local v2, "codewords":[B
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 32
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/google/zxing/datamatrix/decoder/DataBlock;->numDataCodewords:I

    .line 33
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    .line 34
    return-void
.end method

.method static getDataBlocks([BLcom/google/zxing/datamatrix/decoder/Version;)[Lcom/google/zxing/datamatrix/decoder/DataBlock;
    .locals 26

    .prologue
    .line 49
    move-object/from16 v2, p0

    .local v2, "rawCodewords":[B
    move-object/from16 v3, p1

    .local v3, "version":Lcom/google/zxing/datamatrix/decoder/Version;
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/datamatrix/decoder/Version;->getECBlocks()Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;

    move-result-object v19

    move-object/from16 v4, v19

    .line 52
    .local v4, "ecBlocks":Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;
    const/16 v19, 0x0

    move/from16 v5, v19

    .line 53
    .local v5, "totalBlocks":I
    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECBlocks()[Lcom/google/zxing/datamatrix/decoder/Version$ECB;

    move-result-object v19

    move-object/from16 v6, v19

    .line 54
    .local v6, "ecBlockArray":[Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    move-object/from16 v19, v6

    move-object/from16 v7, v19

    .local v7, "arr$":[Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    move-object/from16 v19, v7

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v8, v19

    .local v8, "len$":I
    const/16 v19, 0x0

    move/from16 v9, v19

    .local v9, "i$":I
    :goto_0
    move/from16 v19, v9

    move/from16 v20, v8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    move-object/from16 v19, v7

    move/from16 v20, v9

    aget-object v19, v19, v20

    move-object/from16 v10, v19

    .line 55
    .local v10, "ecBlock":Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    move/from16 v19, v5

    move-object/from16 v20, v10

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getCount()I

    move-result v20

    add-int v19, v19, v20

    move/from16 v5, v19

    .line 54
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 59
    .end local v10    # "ecBlock":Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    :cond_0
    move/from16 v19, v5

    move/from16 v0, v19

    new-array v0, v0, [Lcom/google/zxing/datamatrix/decoder/DataBlock;

    move-object/from16 v19, v0

    move-object/from16 v7, v19

    .line 60
    .local v7, "result":[Lcom/google/zxing/datamatrix/decoder/DataBlock;
    const/16 v19, 0x0

    move/from16 v8, v19

    .line 61
    .local v8, "numResultBlocks":I
    move-object/from16 v19, v6

    move-object/from16 v9, v19

    .local v9, "arr$":[Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    move-object/from16 v19, v9

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v10, v19

    .local v10, "len$":I
    const/16 v19, 0x0

    move/from16 v11, v19

    .local v11, "i$":I
    :goto_1
    move/from16 v19, v11

    move/from16 v20, v10

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    move-object/from16 v19, v9

    move/from16 v20, v11

    aget-object v19, v19, v20

    move-object/from16 v12, v19

    .line 62
    .local v12, "ecBlock":Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    const/16 v19, 0x0

    move/from16 v13, v19

    .local v13, "i":I
    :goto_2
    move/from16 v19, v13

    move-object/from16 v20, v12

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getCount()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    .line 63
    move-object/from16 v19, v12

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/datamatrix/decoder/Version$ECB;->getDataCodewords()I

    move-result v19

    move/from16 v14, v19

    .line 64
    .local v14, "numDataCodewords":I
    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECCodewords()I

    move-result v19

    move/from16 v20, v14

    add-int v19, v19, v20

    move/from16 v15, v19

    .line 65
    .local v15, "numBlockCodewords":I
    move-object/from16 v19, v7

    move/from16 v20, v8

    add-int/lit8 v8, v8, 0x1

    new-instance v21, Lcom/google/zxing/datamatrix/decoder/DataBlock;

    move-object/from16 v25, v21

    move-object/from16 v21, v25

    move-object/from16 v22, v25

    move/from16 v23, v14

    move/from16 v24, v15

    move/from16 v0, v24

    new-array v0, v0, [B

    move-object/from16 v24, v0

    invoke-direct/range {v22 .. v24}, Lcom/google/zxing/datamatrix/decoder/DataBlock;-><init>(I[B)V

    aput-object v21, v19, v20

    .line 62
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 61
    .end local v14    # "numDataCodewords":I
    .end local v15    # "numBlockCodewords":I
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 72
    .end local v12    # "ecBlock":Lcom/google/zxing/datamatrix/decoder/Version$ECB;
    .end local v13    # "i":I
    :cond_2
    move-object/from16 v19, v7

    const/16 v20, 0x0

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v9, v19

    .line 75
    .local v9, "longerBlocksTotalCodewords":I
    move/from16 v19, v9

    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/datamatrix/decoder/Version$ECBlocks;->getECCodewords()I

    move-result v20

    sub-int v19, v19, v20

    move/from16 v10, v19

    .line 76
    .local v10, "longerBlocksNumDataCodewords":I
    move/from16 v19, v10

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    move/from16 v11, v19

    .line 79
    .local v11, "shorterBlocksNumDataCodewords":I
    const/16 v19, 0x0

    move/from16 v12, v19

    .line 80
    .local v12, "rawCodewordsOffset":I
    const/16 v19, 0x0

    move/from16 v13, v19

    .restart local v13    # "i":I
    :goto_3
    move/from16 v19, v13

    move/from16 v20, v11

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_4

    .line 81
    const/16 v19, 0x0

    move/from16 v14, v19

    .local v14, "j":I
    :goto_4
    move/from16 v19, v14

    move/from16 v20, v8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    .line 82
    move-object/from16 v19, v7

    move/from16 v20, v14

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    move-object/from16 v19, v0

    move/from16 v20, v13

    move-object/from16 v21, v2

    move/from16 v22, v12

    add-int/lit8 v12, v12, 0x1

    aget-byte v21, v21, v22

    aput-byte v21, v19, v20

    .line 81
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 80
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 87
    .end local v14    # "j":I
    :cond_4
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/datamatrix/decoder/Version;->getVersionNumber()I

    move-result v19

    const/16 v20, 0x18

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    const/16 v19, 0x1

    :goto_5
    move/from16 v13, v19

    .line 88
    .local v13, "specialVersion":Z
    move/from16 v19, v13

    if-eqz v19, :cond_6

    const/16 v19, 0x8

    :goto_6
    move/from16 v14, v19

    .line 89
    .local v14, "numLongerBlocks":I
    const/16 v19, 0x0

    move/from16 v15, v19

    .local v15, "j":I
    :goto_7
    move/from16 v19, v15

    move/from16 v20, v14

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_7

    .line 90
    move-object/from16 v19, v7

    move/from16 v20, v15

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    move-object/from16 v19, v0

    move/from16 v20, v10

    const/16 v21, 0x1

    add-int/lit8 v20, v20, -0x1

    move-object/from16 v21, v2

    move/from16 v22, v12

    add-int/lit8 v12, v12, 0x1

    aget-byte v21, v21, v22

    aput-byte v21, v19, v20

    .line 89
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 87
    .end local v14    # "numLongerBlocks":I
    .end local v15    # "j":I
    .local v13, "i":I
    :cond_5
    const/16 v19, 0x0

    goto :goto_5

    .line 88
    .local v13, "specialVersion":Z
    :cond_6
    move/from16 v19, v8

    goto :goto_6

    .line 94
    .restart local v14    # "numLongerBlocks":I
    .restart local v15    # "j":I
    :cond_7
    move-object/from16 v19, v7

    const/16 v20, 0x0

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v15, v19

    .line 95
    .local v15, "max":I
    move/from16 v19, v10

    move/from16 v16, v19

    .local v16, "i":I
    :goto_8
    move/from16 v19, v16

    move/from16 v20, v15

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_a

    .line 96
    const/16 v19, 0x0

    move/from16 v17, v19

    .local v17, "j":I
    :goto_9
    move/from16 v19, v17

    move/from16 v20, v8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_9

    .line 97
    move/from16 v19, v13

    if-eqz v19, :cond_8

    move/from16 v19, v17

    const/16 v20, 0x7

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_8

    move/from16 v19, v16

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    :goto_a
    move/from16 v18, v19

    .line 98
    .local v18, "iOffset":I
    move-object/from16 v19, v7

    move/from16 v20, v17

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    move-object/from16 v19, v0

    move/from16 v20, v18

    move-object/from16 v21, v2

    move/from16 v22, v12

    add-int/lit8 v12, v12, 0x1

    aget-byte v21, v21, v22

    aput-byte v21, v19, v20

    .line 96
    add-int/lit8 v17, v17, 0x1

    goto :goto_9

    .line 97
    .end local v18    # "iOffset":I
    :cond_8
    move/from16 v19, v16

    goto :goto_a

    .line 95
    :cond_9
    add-int/lit8 v16, v16, 0x1

    goto :goto_8

    .line 102
    .end local v17    # "j":I
    :cond_a
    move/from16 v19, v12

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_b

    .line 103
    new-instance v19, Ljava/lang/IllegalArgumentException;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    invoke-direct/range {v20 .. v20}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v19

    .line 106
    :cond_b
    move-object/from16 v19, v7

    move-object/from16 v2, v19

    .end local v2    # "rawCodewords":[B
    return-object v2
.end method


# virtual methods
.method getCodewords()[B
    .locals 2

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/datamatrix/decoder/DataBlock;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/datamatrix/decoder/DataBlock;->codewords:[B

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/datamatrix/decoder/DataBlock;
    return-object v0
.end method

.method getNumDataCodewords()I
    .locals 2

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/datamatrix/decoder/DataBlock;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/datamatrix/decoder/DataBlock;->numDataCodewords:I

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/datamatrix/decoder/DataBlock;
    return v0
.end method
