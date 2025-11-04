.class public final Lcom/google/zxing/datamatrix/DataMatrixReader;
.super Ljava/lang/Object;
.source "DataMatrixReader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# static fields
.field private static final NO_POINTS:[Lcom/google/zxing/ResultPoint;


# instance fields
.field private final decoder:Lcom/google/zxing/datamatrix/decoder/Decoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    sput-object v0, Lcom/google/zxing/datamatrix/DataMatrixReader;->NO_POINTS:[Lcom/google/zxing/ResultPoint;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/datamatrix/DataMatrixReader;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 47
    move-object v1, v0

    new-instance v2, Lcom/google/zxing/datamatrix/decoder/Decoder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/google/zxing/datamatrix/decoder/Decoder;-><init>()V

    iput-object v2, v1, Lcom/google/zxing/datamatrix/DataMatrixReader;->decoder:Lcom/google/zxing/datamatrix/decoder/Decoder;

    return-void
.end method

.method private static extractPureBits(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 105
    move-object/from16 v2, p0

    .local v2, "image":Lcom/google/zxing/common/BitMatrix;
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/common/BitMatrix;->getTopLeftOnBit()[I

    move-result-object v17

    move-object/from16 v3, v17

    .line 106
    .local v3, "leftTopBlack":[I
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/common/BitMatrix;->getBottomRightOnBit()[I

    move-result-object v17

    move-object/from16 v4, v17

    .line 107
    .local v4, "rightBottomBlack":[I
    move-object/from16 v17, v3

    if-eqz v17, :cond_0

    move-object/from16 v17, v4

    if-nez v17, :cond_1

    .line 108
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v17

    throw v17

    .line 111
    :cond_1
    move-object/from16 v17, v3

    move-object/from16 v18, v2

    invoke-static/range {v17 .. v18}, Lcom/google/zxing/datamatrix/DataMatrixReader;->moduleSize([ILcom/google/zxing/common/BitMatrix;)I

    move-result v17

    move/from16 v5, v17

    .line 113
    .local v5, "moduleSize":I
    move-object/from16 v17, v3

    const/16 v18, 0x1

    aget v17, v17, v18

    move/from16 v6, v17

    .line 114
    .local v6, "top":I
    move-object/from16 v17, v4

    const/16 v18, 0x1

    aget v17, v17, v18

    move/from16 v7, v17

    .line 115
    .local v7, "bottom":I
    move-object/from16 v17, v3

    const/16 v18, 0x0

    aget v17, v17, v18

    move/from16 v8, v17

    .line 116
    .local v8, "left":I
    move-object/from16 v17, v4

    const/16 v18, 0x0

    aget v17, v17, v18

    move/from16 v9, v17

    .line 118
    .local v9, "right":I
    move/from16 v17, v9

    move/from16 v18, v8

    sub-int v17, v17, v18

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    move/from16 v18, v5

    div-int v17, v17, v18

    move/from16 v10, v17

    .line 119
    .local v10, "matrixWidth":I
    move/from16 v17, v7

    move/from16 v18, v6

    sub-int v17, v17, v18

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    move/from16 v18, v5

    div-int v17, v17, v18

    move/from16 v11, v17

    .line 120
    .local v11, "matrixHeight":I
    move/from16 v17, v10

    if-lez v17, :cond_2

    move/from16 v17, v11

    if-gtz v17, :cond_3

    .line 121
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v17

    throw v17

    .line 127
    :cond_3
    move/from16 v17, v5

    const/16 v18, 0x1

    shr-int/lit8 v17, v17, 0x1

    move/from16 v12, v17

    .line 128
    .local v12, "nudge":I
    move/from16 v17, v6

    move/from16 v18, v12

    add-int v17, v17, v18

    move/from16 v6, v17

    .line 129
    move/from16 v17, v8

    move/from16 v18, v12

    add-int v17, v17, v18

    move/from16 v8, v17

    .line 132
    new-instance v17, Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    move/from16 v19, v10

    move/from16 v20, v11

    invoke-direct/range {v18 .. v20}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    move-object/from16 v13, v17

    .line 133
    .local v13, "bits":Lcom/google/zxing/common/BitMatrix;
    const/16 v17, 0x0

    move/from16 v14, v17

    .local v14, "y":I
    :goto_0
    move/from16 v17, v14

    move/from16 v18, v11

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    .line 134
    move/from16 v17, v6

    move/from16 v18, v14

    move/from16 v19, v5

    mul-int v18, v18, v19

    add-int v17, v17, v18

    move/from16 v15, v17

    .line 135
    .local v15, "iOffset":I
    const/16 v17, 0x0

    move/from16 v16, v17

    .local v16, "x":I
    :goto_1
    move/from16 v17, v16

    move/from16 v18, v10

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    .line 136
    move-object/from16 v17, v2

    move/from16 v18, v8

    move/from16 v19, v16

    move/from16 v20, v5

    mul-int v19, v19, v20

    add-int v18, v18, v19

    move/from16 v19, v15

    invoke-virtual/range {v17 .. v19}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 137
    move-object/from16 v17, v13

    move/from16 v18, v16

    move/from16 v19, v14

    invoke-virtual/range {v17 .. v19}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 135
    :cond_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 133
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 141
    .end local v15    # "iOffset":I
    .end local v16    # "x":I
    :cond_6
    move-object/from16 v17, v13

    move-object/from16 v2, v17

    .end local v2    # "image":Lcom/google/zxing/common/BitMatrix;
    return-object v2
.end method

.method private static moduleSize([ILcom/google/zxing/common/BitMatrix;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "leftTopBlack":[I
    move-object v1, p1

    .local v1, "image":Lcom/google/zxing/common/BitMatrix;
    move-object v6, v1

    invoke-virtual {v6}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v6

    move v2, v6

    .line 146
    .local v2, "width":I
    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    move v3, v6

    .line 147
    .local v3, "x":I
    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    move v4, v6

    .line 148
    .local v4, "y":I
    :goto_0
    move v6, v3

    move v7, v2

    if-ge v6, v7, :cond_0

    move-object v6, v1

    move v7, v3

    move v8, v4

    invoke-virtual {v6, v7, v8}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 149
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 151
    :cond_0
    move v6, v3

    move v7, v2

    if-ne v6, v7, :cond_1

    .line 152
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6

    .line 155
    :cond_1
    move v6, v3

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    sub-int/2addr v6, v7

    move v5, v6

    .line 156
    .local v5, "moduleSize":I
    move v6, v5

    if-nez v6, :cond_2

    .line 157
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6

    .line 159
    :cond_2
    move v6, v5

    move v0, v6

    .end local v0    # "leftTopBlack":[I
    return v0
.end method


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/datamatrix/DataMatrixReader;
    move-object v1, p1

    .local v1, "image":Lcom/google/zxing/BinaryBitmap;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/datamatrix/DataMatrixReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/zxing/datamatrix/DataMatrixReader;
    return-object v0
.end method

.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/datamatrix/DataMatrixReader;
    move-object/from16 v1, p1

    .local v1, "image":Lcom/google/zxing/BinaryBitmap;
    move-object/from16 v2, p2

    .local v2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object v8, v2

    if-eqz v8, :cond_2

    move-object v8, v2

    sget-object v9, Lcom/google/zxing/DecodeHintType;->PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v8, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 68
    move-object v8, v1

    invoke-virtual {v8}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v8

    invoke-static {v8}, Lcom/google/zxing/datamatrix/DataMatrixReader;->extractPureBits(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v8

    move-object v5, v8

    .line 69
    .local v5, "bits":Lcom/google/zxing/common/BitMatrix;
    move-object v8, v0

    iget-object v8, v8, Lcom/google/zxing/datamatrix/DataMatrixReader;->decoder:Lcom/google/zxing/datamatrix/decoder/Decoder;

    move-object v9, v5

    invoke-virtual {v8, v9}, Lcom/google/zxing/datamatrix/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v8

    move-object v3, v8

    .line 70
    .local v3, "decoderResult":Lcom/google/zxing/common/DecoderResult;
    sget-object v8, Lcom/google/zxing/datamatrix/DataMatrixReader;->NO_POINTS:[Lcom/google/zxing/ResultPoint;

    move-object v4, v8

    .line 76
    .end local v5    # "bits":Lcom/google/zxing/common/BitMatrix;
    .local v4, "points":[Lcom/google/zxing/ResultPoint;
    :goto_0
    new-instance v8, Lcom/google/zxing/Result;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v3

    invoke-virtual {v10}, Lcom/google/zxing/common/DecoderResult;->getText()Ljava/lang/String;

    move-result-object v10

    move-object v11, v3

    invoke-virtual {v11}, Lcom/google/zxing/common/DecoderResult;->getRawBytes()[B

    move-result-object v11

    move-object v12, v4

    sget-object v13, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    move-object v5, v8

    .line 78
    .local v5, "result":Lcom/google/zxing/Result;
    move-object v8, v3

    invoke-virtual {v8}, Lcom/google/zxing/common/DecoderResult;->getByteSegments()Ljava/util/List;

    move-result-object v8

    move-object v6, v8

    .line 79
    .local v6, "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    move-object v8, v6

    if-eqz v8, :cond_0

    .line 80
    move-object v8, v5

    sget-object v9, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    move-object v10, v6

    invoke-virtual {v8, v9, v10}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 82
    :cond_0
    move-object v8, v3

    invoke-virtual {v8}, Lcom/google/zxing/common/DecoderResult;->getECLevel()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 83
    .local v7, "ecLevel":Ljava/lang/String;
    move-object v8, v7

    if-eqz v8, :cond_1

    .line 84
    move-object v8, v5

    sget-object v9, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    move-object v10, v7

    invoke-virtual {v8, v9, v10}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 86
    :cond_1
    move-object v8, v5

    move-object v0, v8

    .end local v0    # "this":Lcom/google/zxing/datamatrix/DataMatrixReader;
    return-object v0

    .line 72
    .end local v3    # "decoderResult":Lcom/google/zxing/common/DecoderResult;
    .end local v4    # "points":[Lcom/google/zxing/ResultPoint;
    .end local v5    # "result":Lcom/google/zxing/Result;
    .end local v6    # "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v7    # "ecLevel":Ljava/lang/String;
    .restart local v0    # "this":Lcom/google/zxing/datamatrix/DataMatrixReader;
    :cond_2
    new-instance v8, Lcom/google/zxing/datamatrix/detector/Detector;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v1

    invoke-virtual {v10}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/google/zxing/datamatrix/detector/Detector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    invoke-virtual {v8}, Lcom/google/zxing/datamatrix/detector/Detector;->detect()Lcom/google/zxing/common/DetectorResult;

    move-result-object v8

    move-object v5, v8

    .line 73
    .local v5, "detectorResult":Lcom/google/zxing/common/DetectorResult;
    move-object v8, v0

    iget-object v8, v8, Lcom/google/zxing/datamatrix/DataMatrixReader;->decoder:Lcom/google/zxing/datamatrix/decoder/Decoder;

    move-object v9, v5

    invoke-virtual {v9}, Lcom/google/zxing/common/DetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/zxing/datamatrix/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v8

    move-object v3, v8

    .line 74
    .restart local v3    # "decoderResult":Lcom/google/zxing/common/DecoderResult;
    move-object v8, v5

    invoke-virtual {v8}, Lcom/google/zxing/common/DetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v8

    move-object v4, v8

    .restart local v4    # "points":[Lcom/google/zxing/ResultPoint;
    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method
