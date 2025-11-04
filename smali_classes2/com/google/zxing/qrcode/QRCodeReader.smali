.class public Lcom/google/zxing/qrcode/QRCodeReader;
.super Ljava/lang/Object;
.source "QRCodeReader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# static fields
.field private static final NO_POINTS:[Lcom/google/zxing/ResultPoint;


# instance fields
.field private final decoder:Lcom/google/zxing/qrcode/decoder/Decoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    sput-object v0, Lcom/google/zxing/qrcode/QRCodeReader;->NO_POINTS:[Lcom/google/zxing/ResultPoint;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/QRCodeReader;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 47
    move-object v1, v0

    new-instance v2, Lcom/google/zxing/qrcode/decoder/Decoder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/google/zxing/qrcode/decoder/Decoder;-><init>()V

    iput-object v2, v1, Lcom/google/zxing/qrcode/QRCodeReader;->decoder:Lcom/google/zxing/qrcode/decoder/Decoder;

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
    .line 109
    move-object/from16 v2, p0

    .local v2, "image":Lcom/google/zxing/common/BitMatrix;
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/common/BitMatrix;->getTopLeftOnBit()[I

    move-result-object v17

    move-object/from16 v3, v17

    .line 110
    .local v3, "leftTopBlack":[I
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/common/BitMatrix;->getBottomRightOnBit()[I

    move-result-object v17

    move-object/from16 v4, v17

    .line 111
    .local v4, "rightBottomBlack":[I
    move-object/from16 v17, v3

    if-eqz v17, :cond_0

    move-object/from16 v17, v4

    if-nez v17, :cond_1

    .line 112
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v17

    throw v17

    .line 115
    :cond_1
    move-object/from16 v17, v3

    move-object/from16 v18, v2

    invoke-static/range {v17 .. v18}, Lcom/google/zxing/qrcode/QRCodeReader;->moduleSize([ILcom/google/zxing/common/BitMatrix;)F

    move-result v17

    move/from16 v5, v17

    .line 117
    .local v5, "moduleSize":F
    move-object/from16 v17, v3

    const/16 v18, 0x1

    aget v17, v17, v18

    move/from16 v6, v17

    .line 118
    .local v6, "top":I
    move-object/from16 v17, v4

    const/16 v18, 0x1

    aget v17, v17, v18

    move/from16 v7, v17

    .line 119
    .local v7, "bottom":I
    move-object/from16 v17, v3

    const/16 v18, 0x0

    aget v17, v17, v18

    move/from16 v8, v17

    .line 120
    .local v8, "left":I
    move-object/from16 v17, v4

    const/16 v18, 0x0

    aget v17, v17, v18

    move/from16 v9, v17

    .line 122
    .local v9, "right":I
    move/from16 v17, v7

    move/from16 v18, v6

    sub-int v17, v17, v18

    move/from16 v18, v9

    move/from16 v19, v8

    sub-int v18, v18, v19

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    .line 125
    move/from16 v17, v8

    move/from16 v18, v7

    move/from16 v19, v6

    sub-int v18, v18, v19

    add-int v17, v17, v18

    move/from16 v9, v17

    .line 128
    :cond_2
    move/from16 v17, v9

    move/from16 v18, v8

    sub-int v17, v17, v18

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v18, v5

    div-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v17

    move/from16 v10, v17

    .line 129
    .local v10, "matrixWidth":I
    move/from16 v17, v7

    move/from16 v18, v6

    sub-int v17, v17, v18

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v18, v5

    div-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v17

    move/from16 v11, v17

    .line 130
    .local v11, "matrixHeight":I
    move/from16 v17, v10

    if-lez v17, :cond_3

    move/from16 v17, v11

    if-gtz v17, :cond_4

    .line 131
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v17

    throw v17

    .line 133
    :cond_4
    move/from16 v17, v11

    move/from16 v18, v10

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    .line 135
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v17

    throw v17

    .line 141
    :cond_5
    move/from16 v17, v5

    const/high16 v18, 0x40000000    # 2.0f

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v12, v17

    .line 142
    .local v12, "nudge":I
    move/from16 v17, v6

    move/from16 v18, v12

    add-int v17, v17, v18

    move/from16 v6, v17

    .line 143
    move/from16 v17, v8

    move/from16 v18, v12

    add-int v17, v17, v18

    move/from16 v8, v17

    .line 146
    new-instance v17, Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    move/from16 v19, v10

    move/from16 v20, v11

    invoke-direct/range {v18 .. v20}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    move-object/from16 v13, v17

    .line 147
    .local v13, "bits":Lcom/google/zxing/common/BitMatrix;
    const/16 v17, 0x0

    move/from16 v14, v17

    .local v14, "y":I
    :goto_0
    move/from16 v17, v14

    move/from16 v18, v11

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_8

    .line 148
    move/from16 v17, v6

    move/from16 v18, v14

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v19, v5

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v15, v17

    .line 149
    .local v15, "iOffset":I
    const/16 v17, 0x0

    move/from16 v16, v17

    .local v16, "x":I
    :goto_1
    move/from16 v17, v16

    move/from16 v18, v10

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    .line 150
    move-object/from16 v17, v2

    move/from16 v18, v8

    move/from16 v19, v16

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v20, v5

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v19, v15

    invoke-virtual/range {v17 .. v19}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 151
    move-object/from16 v17, v13

    move/from16 v18, v16

    move/from16 v19, v14

    invoke-virtual/range {v17 .. v19}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 149
    :cond_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 147
    :cond_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 155
    .end local v15    # "iOffset":I
    .end local v16    # "x":I
    :cond_8
    move-object/from16 v17, v13

    move-object/from16 v2, v17

    .end local v2    # "image":Lcom/google/zxing/common/BitMatrix;
    return-object v2
.end method

.method private static moduleSize([ILcom/google/zxing/common/BitMatrix;)F
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "leftTopBlack":[I
    move-object v1, p1

    .local v1, "image":Lcom/google/zxing/common/BitMatrix;
    move-object v8, v1

    invoke-virtual {v8}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v8

    move v2, v8

    .line 160
    .local v2, "height":I
    move-object v8, v1

    invoke-virtual {v8}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v8

    move v3, v8

    .line 161
    .local v3, "width":I
    move-object v8, v0

    const/4 v9, 0x0

    aget v8, v8, v9

    move v4, v8

    .line 162
    .local v4, "x":I
    move-object v8, v0

    const/4 v9, 0x1

    aget v8, v8, v9

    move v5, v8

    .line 163
    .local v5, "y":I
    const/4 v8, 0x1

    move v6, v8

    .line 164
    .local v6, "inBlack":Z
    const/4 v8, 0x0

    move v7, v8

    .line 165
    .local v7, "transitions":I
    :goto_0
    move v8, v4

    move v9, v3

    if-ge v8, v9, :cond_0

    move v8, v5

    move v9, v2

    if-ge v8, v9, :cond_0

    .line 166
    move v8, v6

    move-object v9, v1

    move v10, v4

    move v11, v5

    invoke-virtual {v9, v10, v11}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v9

    if-eq v8, v9, :cond_3

    .line 167
    add-int/lit8 v7, v7, 0x1

    move v8, v7

    const/4 v9, 0x5

    if-ne v8, v9, :cond_2

    .line 168
    .line 175
    :cond_0
    move v8, v4

    move v9, v3

    if-eq v8, v9, :cond_1

    move v8, v5

    move v9, v2

    if-ne v8, v9, :cond_5

    .line 176
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v8

    throw v8

    .line 170
    :cond_2
    move v8, v6

    if-nez v8, :cond_4

    const/4 v8, 0x1

    :goto_1
    move v6, v8

    .line 172
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 173
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 170
    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .line 178
    :cond_5
    move v8, v4

    move-object v9, v0

    const/4 v10, 0x0

    aget v9, v9, v10

    sub-int/2addr v8, v9

    int-to-float v8, v8

    const/high16 v9, 0x40e00000    # 7.0f

    div-float/2addr v8, v9

    move v0, v8

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
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/QRCodeReader;
    move-object v1, p1

    .local v1, "image":Lcom/google/zxing/BinaryBitmap;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/qrcode/QRCodeReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/zxing/qrcode/QRCodeReader;
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
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/QRCodeReader;
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

    .line 72
    move-object v8, v1

    invoke-virtual {v8}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v8

    invoke-static {v8}, Lcom/google/zxing/qrcode/QRCodeReader;->extractPureBits(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v8

    move-object v5, v8

    .line 73
    .local v5, "bits":Lcom/google/zxing/common/BitMatrix;
    move-object v8, v0

    iget-object v8, v8, Lcom/google/zxing/qrcode/QRCodeReader;->decoder:Lcom/google/zxing/qrcode/decoder/Decoder;

    move-object v9, v5

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v8

    move-object v3, v8

    .line 74
    .local v3, "decoderResult":Lcom/google/zxing/common/DecoderResult;
    sget-object v8, Lcom/google/zxing/qrcode/QRCodeReader;->NO_POINTS:[Lcom/google/zxing/ResultPoint;

    move-object v4, v8

    .line 81
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

    sget-object v13, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    move-object v5, v8

    .line 82
    .local v5, "result":Lcom/google/zxing/Result;
    move-object v8, v3

    invoke-virtual {v8}, Lcom/google/zxing/common/DecoderResult;->getByteSegments()Ljava/util/List;

    move-result-object v8

    move-object v6, v8

    .line 83
    .local v6, "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    move-object v8, v6

    if-eqz v8, :cond_0

    .line 84
    move-object v8, v5

    sget-object v9, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    move-object v10, v6

    invoke-virtual {v8, v9, v10}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 86
    :cond_0
    move-object v8, v3

    invoke-virtual {v8}, Lcom/google/zxing/common/DecoderResult;->getECLevel()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 87
    .local v7, "ecLevel":Ljava/lang/String;
    move-object v8, v7

    if-eqz v8, :cond_1

    .line 88
    move-object v8, v5

    sget-object v9, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    move-object v10, v7

    invoke-virtual {v8, v9, v10}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 90
    :cond_1
    move-object v8, v5

    move-object v0, v8

    .end local v0    # "this":Lcom/google/zxing/qrcode/QRCodeReader;
    return-object v0

    .line 76
    .end local v3    # "decoderResult":Lcom/google/zxing/common/DecoderResult;
    .end local v4    # "points":[Lcom/google/zxing/ResultPoint;
    .end local v5    # "result":Lcom/google/zxing/Result;
    .end local v6    # "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v7    # "ecLevel":Ljava/lang/String;
    .restart local v0    # "this":Lcom/google/zxing/qrcode/QRCodeReader;
    :cond_2
    new-instance v8, Lcom/google/zxing/qrcode/detector/Detector;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v1

    invoke-virtual {v10}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/google/zxing/qrcode/detector/Detector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    move-object v9, v2

    invoke-virtual {v8, v9}, Lcom/google/zxing/qrcode/detector/Detector;->detect(Ljava/util/Map;)Lcom/google/zxing/common/DetectorResult;

    move-result-object v8

    move-object v5, v8

    .line 77
    .local v5, "detectorResult":Lcom/google/zxing/common/DetectorResult;
    move-object v8, v0

    iget-object v8, v8, Lcom/google/zxing/qrcode/QRCodeReader;->decoder:Lcom/google/zxing/qrcode/decoder/Decoder;

    move-object v9, v5

    invoke-virtual {v9}, Lcom/google/zxing/common/DetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    move-result-object v9

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v8

    move-object v3, v8

    .line 78
    .restart local v3    # "decoderResult":Lcom/google/zxing/common/DecoderResult;
    move-object v8, v5

    invoke-virtual {v8}, Lcom/google/zxing/common/DetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v8

    move-object v4, v8

    .restart local v4    # "points":[Lcom/google/zxing/ResultPoint;
    goto :goto_0
.end method

.method protected getDecoder()Lcom/google/zxing/qrcode/decoder/Decoder;
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/QRCodeReader;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/qrcode/QRCodeReader;->decoder:Lcom/google/zxing/qrcode/decoder/Decoder;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/qrcode/QRCodeReader;
    return-object v0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method
