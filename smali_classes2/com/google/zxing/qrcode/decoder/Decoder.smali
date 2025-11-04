.class public final Lcom/google/zxing/qrcode/decoder/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# instance fields
.field private final rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/decoder/Decoder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 41
    move-object v1, v0

    new-instance v2, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sget-object v4, Lcom/google/zxing/common/reedsolomon/GenericGF;->QR_CODE_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v3, v4}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    iput-object v2, v1, Lcom/google/zxing/qrcode/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    .line 42
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
    .line 127
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/decoder/Decoder;
    move-object v1, p1

    .local v1, "codewordBytes":[B
    move v2, p2

    .local v2, "numDataCodewords":I
    move-object v7, v1

    array-length v7, v7

    move v3, v7

    .line 129
    .local v3, "numCodewords":I
    move v7, v3

    new-array v7, v7, [I

    move-object v4, v7

    .line 130
    .local v4, "codewordsInts":[I
    const/4 v7, 0x0

    move v5, v7

    .local v5, "i":I
    :goto_0
    move v7, v5

    move v8, v3

    if-ge v7, v8, :cond_0

    .line 131
    move-object v7, v4

    move v8, v5

    move-object v9, v1

    move v10, v5

    aget-byte v9, v9, v10

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    aput v9, v7, v8

    .line 130
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 133
    :cond_0
    move-object v7, v1

    array-length v7, v7

    move v8, v2

    sub-int/2addr v7, v8

    move v5, v7

    .line 135
    .local v5, "numECCodewords":I
    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lcom/google/zxing/qrcode/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    move-object v8, v4

    move v9, v5

    invoke-virtual {v7, v8, v9}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .line 141
    const/4 v7, 0x0

    move v6, v7

    .local v6, "i":I
    :goto_1
    move v7, v6

    move v8, v2

    if-ge v7, v8, :cond_1

    .line 142
    move-object v7, v1

    move v8, v6

    move-object v9, v4

    move v10, v6

    aget v9, v9, v10

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 141
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 136
    .end local v6    # "i":I
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 137
    .local v6, "rse":Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v7

    throw v7

    .line 144
    .local v6, "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/decoder/Decoder;
    move-object v1, p1

    .local v1, "bits":Lcom/google/zxing/common/BitMatrix;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/zxing/qrcode/decoder/Decoder;
    return-object v0
.end method

.method public decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitMatrix;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DecoderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 87
    move-object/from16 v2, p0

    .local v2, "this":Lcom/google/zxing/qrcode/decoder/Decoder;
    move-object/from16 v3, p1

    .local v3, "bits":Lcom/google/zxing/common/BitMatrix;
    move-object/from16 v4, p2

    .local v4, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    new-instance v20, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    move-object/from16 v22, v3

    invoke-direct/range {v21 .. v22}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    move-object/from16 v5, v20

    .line 88
    .local v5, "parser":Lcom/google/zxing/qrcode/decoder/BitMatrixParser;
    move-object/from16 v20, v5

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readVersion()Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v20

    move-object/from16 v6, v20

    .line 89
    .local v6, "version":Lcom/google/zxing/qrcode/decoder/Version;
    move-object/from16 v20, v5

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readFormatInformation()Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->getErrorCorrectionLevel()Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-result-object v20

    move-object/from16 v7, v20

    .line 92
    .local v7, "ecLevel":Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    move-object/from16 v20, v5

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readCodewords()[B

    move-result-object v20

    move-object/from16 v8, v20

    .line 94
    .local v8, "codewords":[B
    move-object/from16 v20, v8

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    invoke-static/range {v20 .. v22}, Lcom/google/zxing/qrcode/decoder/DataBlock;->getDataBlocks([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)[Lcom/google/zxing/qrcode/decoder/DataBlock;

    move-result-object v20

    move-object/from16 v9, v20

    .line 97
    .local v9, "dataBlocks":[Lcom/google/zxing/qrcode/decoder/DataBlock;
    const/16 v20, 0x0

    move/from16 v10, v20

    .line 98
    .local v10, "totalBytes":I
    move-object/from16 v20, v9

    move-object/from16 v11, v20

    .local v11, "arr$":[Lcom/google/zxing/qrcode/decoder/DataBlock;
    move-object/from16 v20, v11

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v12, v20

    .local v12, "len$":I
    const/16 v20, 0x0

    move/from16 v13, v20

    .local v13, "i$":I
    :goto_0
    move/from16 v20, v13

    move/from16 v21, v12

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    move-object/from16 v20, v11

    move/from16 v21, v13

    aget-object v20, v20, v21

    move-object/from16 v14, v20

    .line 99
    .local v14, "dataBlock":Lcom/google/zxing/qrcode/decoder/DataBlock;
    move/from16 v20, v10

    move-object/from16 v21, v14

    invoke-virtual/range {v21 .. v21}, Lcom/google/zxing/qrcode/decoder/DataBlock;->getNumDataCodewords()I

    move-result v21

    add-int v20, v20, v21

    move/from16 v10, v20

    .line 98
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 101
    .end local v14    # "dataBlock":Lcom/google/zxing/qrcode/decoder/DataBlock;
    :cond_0
    move/from16 v20, v10

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v20, v0

    move-object/from16 v11, v20

    .line 102
    .local v11, "resultBytes":[B
    const/16 v20, 0x0

    move/from16 v12, v20

    .line 105
    .local v12, "resultOffset":I
    move-object/from16 v20, v9

    move-object/from16 v13, v20

    .local v13, "arr$":[Lcom/google/zxing/qrcode/decoder/DataBlock;
    move-object/from16 v20, v13

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v14, v20

    .local v14, "len$":I
    const/16 v20, 0x0

    move/from16 v15, v20

    .local v15, "i$":I
    :goto_1
    move/from16 v20, v15

    move/from16 v21, v14

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    move-object/from16 v20, v13

    move/from16 v21, v15

    aget-object v20, v20, v21

    move-object/from16 v16, v20

    .line 106
    .local v16, "dataBlock":Lcom/google/zxing/qrcode/decoder/DataBlock;
    move-object/from16 v20, v16

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/qrcode/decoder/DataBlock;->getCodewords()[B

    move-result-object v20

    move-object/from16 v17, v20

    .line 107
    .local v17, "codewordBytes":[B
    move-object/from16 v20, v16

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/qrcode/decoder/DataBlock;->getNumDataCodewords()I

    move-result v20

    move/from16 v18, v20

    .line 108
    .local v18, "numDataCodewords":I
    move-object/from16 v20, v2

    move-object/from16 v21, v17

    move/from16 v22, v18

    invoke-direct/range {v20 .. v22}, Lcom/google/zxing/qrcode/decoder/Decoder;->correctErrors([BI)V

    .line 109
    const/16 v20, 0x0

    move/from16 v19, v20

    .local v19, "i":I
    :goto_2
    move/from16 v20, v19

    move/from16 v21, v18

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    .line 110
    move-object/from16 v20, v11

    move/from16 v21, v12

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v22, v17

    move/from16 v23, v19

    aget-byte v22, v22, v23

    aput-byte v22, v20, v21

    .line 109
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 105
    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 115
    .end local v16    # "dataBlock":Lcom/google/zxing/qrcode/decoder/DataBlock;
    .end local v17    # "codewordBytes":[B
    .end local v18    # "numDataCodewords":I
    .end local v19    # "i":I
    :cond_2
    move-object/from16 v20, v11

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v4

    invoke-static/range {v20 .. v23}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decode([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v20

    move-object/from16 v2, v20

    .end local v2    # "this":Lcom/google/zxing/qrcode/decoder/Decoder;
    return-object v2
.end method

.method public decode([[Z)Lcom/google/zxing/common/DecoderResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/decoder/Decoder;
    move-object v1, p1

    .local v1, "image":[[Z
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode([[ZLjava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/zxing/qrcode/decoder/Decoder;
    return-object v0
.end method

.method public decode([[ZLjava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[Z",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DecoderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/decoder/Decoder;
    move-object v1, p1

    .local v1, "image":[[Z
    move-object v2, p2

    .local v2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object v7, v1

    array-length v7, v7

    move v3, v7

    .line 60
    .local v3, "dimension":I
    new-instance v7, Lcom/google/zxing/common/BitMatrix;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move v9, v3

    invoke-direct {v8, v9}, Lcom/google/zxing/common/BitMatrix;-><init>(I)V

    move-object v4, v7

    .line 61
    .local v4, "bits":Lcom/google/zxing/common/BitMatrix;
    const/4 v7, 0x0

    move v5, v7

    .local v5, "i":I
    :goto_0
    move v7, v5

    move v8, v3

    if-ge v7, v8, :cond_2

    .line 62
    const/4 v7, 0x0

    move v6, v7

    .local v6, "j":I
    :goto_1
    move v7, v6

    move v8, v3

    if-ge v7, v8, :cond_1

    .line 63
    move-object v7, v1

    move v8, v5

    aget-object v7, v7, v8

    move v8, v6

    aget-boolean v7, v7, v8

    if-eqz v7, :cond_0

    .line 64
    move-object v7, v4

    move v8, v6

    move v9, v5

    invoke-virtual {v7, v8, v9}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 62
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 61
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 68
    .end local v6    # "j":I
    :cond_2
    move-object v7, v0

    move-object v8, v4

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Lcom/google/zxing/qrcode/decoder/Decoder;
    return-object v0
.end method
