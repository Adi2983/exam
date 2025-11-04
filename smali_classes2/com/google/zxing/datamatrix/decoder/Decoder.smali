.class public final Lcom/google/zxing/datamatrix/decoder/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# instance fields
.field private final rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/datamatrix/decoder/Decoder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    move-object v1, v0

    new-instance v2, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sget-object v4, Lcom/google/zxing/common/reedsolomon/GenericGF;->DATA_MATRIX_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v3, v4}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    iput-object v2, v1, Lcom/google/zxing/datamatrix/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    .line 39
    return-void
.end method

.method private correctErrors([BI)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/datamatrix/decoder/Decoder;
    move-object v1, p1

    .local v1, "codewordBytes":[B
    move v2, p2

    .local v2, "numDataCodewords":I
    move-object v7, v1

    array-length v7, v7

    move v3, v7

    .line 119
    .local v3, "numCodewords":I
    move v7, v3

    new-array v7, v7, [I

    move-object v4, v7

    .line 120
    .local v4, "codewordsInts":[I
    const/4 v7, 0x0

    move v5, v7

    .local v5, "i":I
    :goto_0
    move v7, v5

    move v8, v3

    if-ge v7, v8, :cond_0

    .line 121
    move-object v7, v4

    move v8, v5

    move-object v9, v1

    move v10, v5

    aget-byte v9, v9, v10

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    aput v9, v7, v8

    .line 120
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 123
    :cond_0
    move-object v7, v1

    array-length v7, v7

    move v8, v2

    sub-int/2addr v7, v8

    move v5, v7

    .line 125
    .local v5, "numECCodewords":I
    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lcom/google/zxing/datamatrix/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    move-object v8, v4

    move v9, v5

    invoke-virtual {v7, v8, v9}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .line 131
    const/4 v7, 0x0

    move v6, v7

    .local v6, "i":I
    :goto_1
    move v7, v6

    move v8, v2

    if-ge v7, v8, :cond_1

    .line 132
    move-object v7, v1

    move v8, v6

    move-object v9, v4

    move v10, v6

    aget v9, v9, v10

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 131
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 126
    .end local v6    # "i":I
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 127
    .local v6, "rse":Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v7

    throw v7

    .line 134
    .local v6, "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 75
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/datamatrix/decoder/Decoder;
    move-object/from16 v1, p1

    .local v1, "bits":Lcom/google/zxing/common/BitMatrix;
    new-instance v14, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    move-object/from16 v16, v1

    invoke-direct/range {v15 .. v16}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    move-object v2, v14

    .line 76
    .local v2, "parser":Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;
    move-object v14, v2

    invoke-virtual {v14}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->getVersion()Lcom/google/zxing/datamatrix/decoder/Version;

    move-result-object v14

    move-object v3, v14

    .line 79
    .local v3, "version":Lcom/google/zxing/datamatrix/decoder/Version;
    move-object v14, v2

    invoke-virtual {v14}, Lcom/google/zxing/datamatrix/decoder/BitMatrixParser;->readCodewords()[B

    move-result-object v14

    move-object v4, v14

    .line 81
    .local v4, "codewords":[B
    move-object v14, v4

    move-object v15, v3

    invoke-static {v14, v15}, Lcom/google/zxing/datamatrix/decoder/DataBlock;->getDataBlocks([BLcom/google/zxing/datamatrix/decoder/Version;)[Lcom/google/zxing/datamatrix/decoder/DataBlock;

    move-result-object v14

    move-object v5, v14

    .line 83
    .local v5, "dataBlocks":[Lcom/google/zxing/datamatrix/decoder/DataBlock;
    move-object v14, v5

    array-length v14, v14

    move v6, v14

    .line 86
    .local v6, "dataBlocksCount":I
    const/4 v14, 0x0

    move v7, v14

    .line 87
    .local v7, "totalBytes":I
    move-object v14, v5

    move-object v8, v14

    .local v8, "arr$":[Lcom/google/zxing/datamatrix/decoder/DataBlock;
    move-object v14, v8

    array-length v14, v14

    move v9, v14

    .local v9, "len$":I
    const/4 v14, 0x0

    move v10, v14

    .local v10, "i$":I
    :goto_0
    move v14, v10

    move v15, v9

    if-ge v14, v15, :cond_0

    move-object v14, v8

    move v15, v10

    aget-object v14, v14, v15

    move-object v11, v14

    .line 88
    .local v11, "db":Lcom/google/zxing/datamatrix/decoder/DataBlock;
    move v14, v7

    move-object v15, v11

    invoke-virtual {v15}, Lcom/google/zxing/datamatrix/decoder/DataBlock;->getNumDataCodewords()I

    move-result v15

    add-int/2addr v14, v15

    move v7, v14

    .line 87
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 90
    .end local v11    # "db":Lcom/google/zxing/datamatrix/decoder/DataBlock;
    :cond_0
    move v14, v7

    new-array v14, v14, [B

    move-object v8, v14

    .line 93
    .local v8, "resultBytes":[B
    const/4 v14, 0x0

    move v9, v14

    .end local v10    # "i$":I
    .local v9, "j":I
    :goto_1
    move v14, v9

    move v15, v6

    if-ge v14, v15, :cond_2

    .line 94
    move-object v14, v5

    move v15, v9

    aget-object v14, v14, v15

    move-object v10, v14

    .line 95
    .local v10, "dataBlock":Lcom/google/zxing/datamatrix/decoder/DataBlock;
    move-object v14, v10

    invoke-virtual {v14}, Lcom/google/zxing/datamatrix/decoder/DataBlock;->getCodewords()[B

    move-result-object v14

    move-object v11, v14

    .line 96
    .local v11, "codewordBytes":[B
    move-object v14, v10

    invoke-virtual {v14}, Lcom/google/zxing/datamatrix/decoder/DataBlock;->getNumDataCodewords()I

    move-result v14

    move v12, v14

    .line 97
    .local v12, "numDataCodewords":I
    move-object v14, v0

    move-object v15, v11

    move/from16 v16, v12

    invoke-direct/range {v14 .. v16}, Lcom/google/zxing/datamatrix/decoder/Decoder;->correctErrors([BI)V

    .line 98
    const/4 v14, 0x0

    move v13, v14

    .local v13, "i":I
    :goto_2
    move v14, v13

    move v15, v12

    if-ge v14, v15, :cond_1

    .line 100
    move-object v14, v8

    move v15, v13

    move/from16 v16, v6

    mul-int v15, v15, v16

    move/from16 v16, v9

    add-int v15, v15, v16

    move-object/from16 v16, v11

    move/from16 v17, v13

    aget-byte v16, v16, v17

    aput-byte v16, v14, v15

    .line 98
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 93
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 105
    .end local v10    # "dataBlock":Lcom/google/zxing/datamatrix/decoder/DataBlock;
    .end local v11    # "codewordBytes":[B
    .end local v12    # "numDataCodewords":I
    .end local v13    # "i":I
    :cond_2
    move-object v14, v8

    invoke-static {v14}, Lcom/google/zxing/datamatrix/decoder/DecodedBitStreamParser;->decode([B)Lcom/google/zxing/common/DecoderResult;

    move-result-object v14

    move-object v0, v14

    .end local v0    # "this":Lcom/google/zxing/datamatrix/decoder/Decoder;
    return-object v0
.end method

.method public decode([[Z)Lcom/google/zxing/common/DecoderResult;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/datamatrix/decoder/Decoder;
    move-object v1, p1

    .local v1, "image":[[Z
    move-object v6, v1

    array-length v6, v6

    move v2, v6

    .line 52
    .local v2, "dimension":I
    new-instance v6, Lcom/google/zxing/common/BitMatrix;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move v8, v2

    invoke-direct {v7, v8}, Lcom/google/zxing/common/BitMatrix;-><init>(I)V

    move-object v3, v6

    .line 53
    .local v3, "bits":Lcom/google/zxing/common/BitMatrix;
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move v7, v2

    if-ge v6, v7, :cond_2

    .line 54
    const/4 v6, 0x0

    move v5, v6

    .local v5, "j":I
    :goto_1
    move v6, v5

    move v7, v2

    if-ge v6, v7, :cond_1

    .line 55
    move-object v6, v1

    move v7, v4

    aget-object v6, v6, v7

    move v7, v5

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_0

    .line 56
    move-object v6, v3

    move v7, v5

    move v8, v4

    invoke-virtual {v6, v7, v8}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 54
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 53
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 60
    .end local v5    # "j":I
    :cond_2
    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v6, v7}, Lcom/google/zxing/datamatrix/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lcom/google/zxing/datamatrix/decoder/Decoder;
    return-object v0
.end method
