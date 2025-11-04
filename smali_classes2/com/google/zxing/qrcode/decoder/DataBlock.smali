.class final Lcom/google/zxing/qrcode/decoder/DataBlock;
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

    .local v0, "this":Lcom/google/zxing/qrcode/decoder/DataBlock;
    move v1, p1

    .local v1, "numDataCodewords":I
    move-object v2, p2

    .local v2, "codewords":[B
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 32
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/google/zxing/qrcode/decoder/DataBlock;->numDataCodewords:I

    .line 33
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    .line 34
    return-void
.end method

.method static getDataBlocks([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)[Lcom/google/zxing/qrcode/decoder/DataBlock;
    .locals 25

    .prologue
    .line 51
    move-object/from16 v2, p0

    .local v2, "rawCodewords":[B
    move-object/from16 v3, p1

    .local v3, "version":Lcom/google/zxing/qrcode/decoder/Version;
    move-object/from16 v4, p2

    .local v4, "ecLevel":Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 52
    new-instance v18, Ljava/lang/IllegalArgumentException;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    invoke-direct/range {v19 .. v19}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v18

    .line 57
    :cond_0
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    invoke-virtual/range {v18 .. v19}, Lcom/google/zxing/qrcode/decoder/Version;->getECBlocksForLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;

    move-result-object v18

    move-object/from16 v5, v18

    .line 60
    .local v5, "ecBlocks":Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    const/16 v18, 0x0

    move/from16 v6, v18

    .line 61
    .local v6, "totalBlocks":I
    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECBlocks()[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-result-object v18

    move-object/from16 v7, v18

    .line 62
    .local v7, "ecBlockArray":[Lcom/google/zxing/qrcode/decoder/Version$ECB;
    move-object/from16 v18, v7

    move-object/from16 v8, v18

    .local v8, "arr$":[Lcom/google/zxing/qrcode/decoder/Version$ECB;
    move-object/from16 v18, v8

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v9, v18

    .local v9, "len$":I
    const/16 v18, 0x0

    move/from16 v10, v18

    .local v10, "i$":I
    :goto_0
    move/from16 v18, v10

    move/from16 v19, v9

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    move-object/from16 v18, v8

    move/from16 v19, v10

    aget-object v18, v18, v19

    move-object/from16 v11, v18

    .line 63
    .local v11, "ecBlock":Lcom/google/zxing/qrcode/decoder/Version$ECB;
    move/from16 v18, v6

    move-object/from16 v19, v11

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getCount()I

    move-result v19

    add-int v18, v18, v19

    move/from16 v6, v18

    .line 62
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 67
    .end local v11    # "ecBlock":Lcom/google/zxing/qrcode/decoder/Version$ECB;
    :cond_1
    move/from16 v18, v6

    move/from16 v0, v18

    new-array v0, v0, [Lcom/google/zxing/qrcode/decoder/DataBlock;

    move-object/from16 v18, v0

    move-object/from16 v8, v18

    .line 68
    .local v8, "result":[Lcom/google/zxing/qrcode/decoder/DataBlock;
    const/16 v18, 0x0

    move/from16 v9, v18

    .line 69
    .local v9, "numResultBlocks":I
    move-object/from16 v18, v7

    move-object/from16 v10, v18

    .local v10, "arr$":[Lcom/google/zxing/qrcode/decoder/Version$ECB;
    move-object/from16 v18, v10

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v11, v18

    .local v11, "len$":I
    const/16 v18, 0x0

    move/from16 v12, v18

    .local v12, "i$":I
    :goto_1
    move/from16 v18, v12

    move/from16 v19, v11

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    move-object/from16 v18, v10

    move/from16 v19, v12

    aget-object v18, v18, v19

    move-object/from16 v13, v18

    .line 70
    .local v13, "ecBlock":Lcom/google/zxing/qrcode/decoder/Version$ECB;
    const/16 v18, 0x0

    move/from16 v14, v18

    .local v14, "i":I
    :goto_2
    move/from16 v18, v14

    move-object/from16 v19, v13

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getCount()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    .line 71
    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getDataCodewords()I

    move-result v18

    move/from16 v15, v18

    .line 72
    .local v15, "numDataCodewords":I
    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECCodewordsPerBlock()I

    move-result v18

    move/from16 v19, v15

    add-int v18, v18, v19

    move/from16 v16, v18

    .line 73
    .local v16, "numBlockCodewords":I
    move-object/from16 v18, v8

    move/from16 v19, v9

    add-int/lit8 v9, v9, 0x1

    new-instance v20, Lcom/google/zxing/qrcode/decoder/DataBlock;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    move/from16 v22, v15

    move/from16 v23, v16

    move/from16 v0, v23

    new-array v0, v0, [B

    move-object/from16 v23, v0

    invoke-direct/range {v21 .. v23}, Lcom/google/zxing/qrcode/decoder/DataBlock;-><init>(I[B)V

    aput-object v20, v18, v19

    .line 70
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 69
    .end local v15    # "numDataCodewords":I
    .end local v16    # "numBlockCodewords":I
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 79
    .end local v13    # "ecBlock":Lcom/google/zxing/qrcode/decoder/Version$ECB;
    .end local v14    # "i":I
    :cond_3
    move-object/from16 v18, v8

    const/16 v19, 0x0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v10, v18

    .line 80
    .local v10, "shorterBlocksTotalCodewords":I
    move-object/from16 v18, v8

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    move/from16 v11, v18

    .line 81
    .end local v12    # "i$":I
    .local v11, "longerBlocksStartAt":I
    :goto_3
    move/from16 v18, v11

    if-ltz v18, :cond_4

    .line 82
    move-object/from16 v18, v8

    move/from16 v19, v11

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v12, v18

    .line 83
    .local v12, "numCodewords":I
    move/from16 v18, v12

    move/from16 v19, v10

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 84
    .line 88
    .end local v12    # "numCodewords":I
    :cond_4
    add-int/lit8 v11, v11, 0x1

    .line 90
    move/from16 v18, v10

    move-object/from16 v19, v5

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getECCodewordsPerBlock()I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v12, v18

    .line 93
    .local v12, "shorterBlocksNumDataCodewords":I
    const/16 v18, 0x0

    move/from16 v13, v18

    .line 94
    .local v13, "rawCodewordsOffset":I
    const/16 v18, 0x0

    move/from16 v14, v18

    .restart local v14    # "i":I
    :goto_4
    move/from16 v18, v14

    move/from16 v19, v12

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_7

    .line 95
    const/16 v18, 0x0

    move/from16 v15, v18

    .local v15, "j":I
    :goto_5
    move/from16 v18, v15

    move/from16 v19, v9

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_6

    .line 96
    move-object/from16 v18, v8

    move/from16 v19, v15

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    move-object/from16 v18, v0

    move/from16 v19, v14

    move-object/from16 v20, v2

    move/from16 v21, v13

    add-int/lit8 v13, v13, 0x1

    aget-byte v20, v20, v21

    aput-byte v20, v18, v19

    .line 95
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 86
    .end local v13    # "rawCodewordsOffset":I
    .end local v14    # "i":I
    .end local v15    # "j":I
    .local v12, "numCodewords":I
    :cond_5
    add-int/lit8 v11, v11, -0x1

    .line 87
    goto :goto_3

    .line 94
    .local v12, "shorterBlocksNumDataCodewords":I
    .restart local v13    # "rawCodewordsOffset":I
    .restart local v14    # "i":I
    .restart local v15    # "j":I
    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 100
    .end local v15    # "j":I
    :cond_7
    move/from16 v18, v11

    move/from16 v14, v18

    .local v14, "j":I
    :goto_6
    move/from16 v18, v14

    move/from16 v19, v9

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_8

    .line 101
    move-object/from16 v18, v8

    move/from16 v19, v14

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    move-object/from16 v18, v0

    move/from16 v19, v12

    move-object/from16 v20, v2

    move/from16 v21, v13

    add-int/lit8 v13, v13, 0x1

    aget-byte v20, v20, v21

    aput-byte v20, v18, v19

    .line 100
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 104
    :cond_8
    move-object/from16 v18, v8

    const/16 v19, 0x0

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v14, v18

    .line 105
    .local v14, "max":I
    move/from16 v18, v12

    move/from16 v15, v18

    .local v15, "i":I
    :goto_7
    move/from16 v18, v15

    move/from16 v19, v14

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_b

    .line 106
    const/16 v18, 0x0

    move/from16 v16, v18

    .local v16, "j":I
    :goto_8
    move/from16 v18, v16

    move/from16 v19, v9

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_a

    .line 107
    move/from16 v18, v16

    move/from16 v19, v11

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    move/from16 v18, v15

    :goto_9
    move/from16 v17, v18

    .line 108
    .local v17, "iOffset":I
    move-object/from16 v18, v8

    move/from16 v19, v16

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    move-object/from16 v18, v0

    move/from16 v19, v17

    move-object/from16 v20, v2

    move/from16 v21, v13

    add-int/lit8 v13, v13, 0x1

    aget-byte v20, v20, v21

    aput-byte v20, v18, v19

    .line 106
    add-int/lit8 v16, v16, 0x1

    goto :goto_8

    .line 107
    .end local v17    # "iOffset":I
    :cond_9
    move/from16 v18, v15

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    goto :goto_9

    .line 105
    :cond_a
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 111
    .end local v16    # "j":I
    :cond_b
    move-object/from16 v18, v8

    move-object/from16 v2, v18

    .end local v2    # "rawCodewords":[B
    return-object v2
.end method


# virtual methods
.method getCodewords()[B
    .locals 2

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/decoder/DataBlock;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/qrcode/decoder/DataBlock;->codewords:[B

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/qrcode/decoder/DataBlock;
    return-object v0
.end method

.method getNumDataCodewords()I
    .locals 2

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/decoder/DataBlock;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/qrcode/decoder/DataBlock;->numDataCodewords:I

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/qrcode/decoder/DataBlock;
    return v0
.end method
