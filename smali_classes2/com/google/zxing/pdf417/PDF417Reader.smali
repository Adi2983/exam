.class public final Lcom/google/zxing/pdf417/PDF417Reader;
.super Ljava/lang/Object;
.source "PDF417Reader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# static fields
.field private static final NO_POINTS:[Lcom/google/zxing/ResultPoint;


# instance fields
.field private final decoder:Lcom/google/zxing/pdf417/decoder/Decoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    sput-object v0, Lcom/google/zxing/pdf417/PDF417Reader;->NO_POINTS:[Lcom/google/zxing/ResultPoint;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/PDF417Reader;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 45
    move-object v1, v0

    new-instance v2, Lcom/google/zxing/pdf417/decoder/Decoder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/google/zxing/pdf417/decoder/Decoder;-><init>()V

    iput-object v2, v1, Lcom/google/zxing/pdf417/PDF417Reader;->decoder:Lcom/google/zxing/pdf417/decoder/Decoder;

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
    .line 93
    move-object/from16 v2, p0

    .local v2, "image":Lcom/google/zxing/common/BitMatrix;
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/common/BitMatrix;->getTopLeftOnBit()[I

    move-result-object v17

    move-object/from16 v3, v17

    .line 94
    .local v3, "leftTopBlack":[I
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/common/BitMatrix;->getBottomRightOnBit()[I

    move-result-object v17

    move-object/from16 v4, v17

    .line 95
    .local v4, "rightBottomBlack":[I
    move-object/from16 v17, v3

    if-eqz v17, :cond_0

    move-object/from16 v17, v4

    if-nez v17, :cond_1

    .line 96
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v17

    throw v17

    .line 99
    :cond_1
    move-object/from16 v17, v3

    move-object/from16 v18, v2

    invoke-static/range {v17 .. v18}, Lcom/google/zxing/pdf417/PDF417Reader;->moduleSize([ILcom/google/zxing/common/BitMatrix;)I

    move-result v17

    move/from16 v5, v17

    .line 101
    .local v5, "moduleSize":I
    move-object/from16 v17, v3

    const/16 v18, 0x1

    aget v17, v17, v18

    move/from16 v6, v17

    .line 102
    .local v6, "top":I
    move-object/from16 v17, v4

    const/16 v18, 0x1

    aget v17, v17, v18

    move/from16 v7, v17

    .line 103
    .local v7, "bottom":I
    move-object/from16 v17, v3

    const/16 v18, 0x0

    aget v17, v17, v18

    move/from16 v18, v6

    move-object/from16 v19, v2

    invoke-static/range {v17 .. v19}, Lcom/google/zxing/pdf417/PDF417Reader;->findPatternStart(IILcom/google/zxing/common/BitMatrix;)I

    move-result v17

    move/from16 v8, v17

    .line 104
    .local v8, "left":I
    move-object/from16 v17, v3

    const/16 v18, 0x0

    aget v17, v17, v18

    move/from16 v18, v6

    move-object/from16 v19, v2

    invoke-static/range {v17 .. v19}, Lcom/google/zxing/pdf417/PDF417Reader;->findPatternEnd(IILcom/google/zxing/common/BitMatrix;)I

    move-result v17

    move/from16 v9, v17

    .line 106
    .local v9, "right":I
    move/from16 v17, v9

    move/from16 v18, v8

    sub-int v17, v17, v18

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    move/from16 v18, v5

    div-int v17, v17, v18

    move/from16 v10, v17

    .line 107
    .local v10, "matrixWidth":I
    move/from16 v17, v7

    move/from16 v18, v6

    sub-int v17, v17, v18

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    move/from16 v18, v5

    div-int v17, v17, v18

    move/from16 v11, v17

    .line 108
    .local v11, "matrixHeight":I
    move/from16 v17, v10

    if-lez v17, :cond_2

    move/from16 v17, v11

    if-gtz v17, :cond_3

    .line 109
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v17

    throw v17

    .line 115
    :cond_3
    move/from16 v17, v5

    const/16 v18, 0x1

    shr-int/lit8 v17, v17, 0x1

    move/from16 v12, v17

    .line 116
    .local v12, "nudge":I
    move/from16 v17, v6

    move/from16 v18, v12

    add-int v17, v17, v18

    move/from16 v6, v17

    .line 117
    move/from16 v17, v8

    move/from16 v18, v12

    add-int v17, v17, v18

    move/from16 v8, v17

    .line 120
    new-instance v17, Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    move/from16 v19, v10

    move/from16 v20, v11

    invoke-direct/range {v18 .. v20}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    move-object/from16 v13, v17

    .line 121
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

    .line 122
    move/from16 v17, v6

    move/from16 v18, v14

    move/from16 v19, v5

    mul-int v18, v18, v19

    add-int v17, v17, v18

    move/from16 v15, v17

    .line 123
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

    .line 124
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

    .line 125
    move-object/from16 v17, v13

    move/from16 v18, v16

    move/from16 v19, v14

    invoke-virtual/range {v17 .. v19}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 123
    :cond_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 121
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 129
    .end local v15    # "iOffset":I
    .end local v16    # "x":I
    :cond_6
    move-object/from16 v17, v13

    move-object/from16 v2, v17

    .end local v2    # "image":Lcom/google/zxing/common/BitMatrix;
    return-object v2
.end method

.method private static findPatternEnd(IILcom/google/zxing/common/BitMatrix;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 172
    move v0, p0

    .local v0, "x":I
    move v1, p1

    .local v1, "y":I
    move-object v2, p2

    .local v2, "image":Lcom/google/zxing/common/BitMatrix;
    move-object v8, v2

    invoke-virtual {v8}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v8

    move v3, v8

    .line 173
    .local v3, "width":I
    move v8, v3

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    move v4, v8

    .line 175
    .local v4, "end":I
    :goto_0
    move v8, v4

    move v9, v0

    if-le v8, v9, :cond_0

    move-object v8, v2

    move v9, v4

    move v10, v1

    invoke-virtual {v8, v9, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-nez v8, :cond_0

    .line 176
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 178
    :cond_0
    const/4 v8, 0x0

    move v5, v8

    .line 179
    .local v5, "transitions":I
    const/4 v8, 0x1

    move v6, v8

    .line 180
    .local v6, "black":Z
    :goto_1
    move v8, v4

    move v9, v0

    if-le v8, v9, :cond_2

    move v8, v5

    const/16 v9, 0x9

    if-ge v8, v9, :cond_2

    .line 181
    add-int/lit8 v4, v4, -0x1

    .line 182
    move-object v8, v2

    move v9, v4

    move v10, v1

    invoke-virtual {v8, v9, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    move v7, v8

    .line 183
    .local v7, "newBlack":Z
    move v8, v6

    move v9, v7

    if-eq v8, v9, :cond_1

    .line 184
    add-int/lit8 v5, v5, 0x1

    .line 186
    :cond_1
    move v8, v7

    move v6, v8

    .line 187
    goto :goto_1

    .line 188
    .end local v7    # "newBlack":Z
    :cond_2
    move v8, v4

    move v9, v0

    if-ne v8, v9, :cond_3

    .line 189
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v8

    throw v8

    .line 191
    :cond_3
    move v8, v4

    move v0, v8

    .end local v0    # "x":I
    return v0
.end method

.method private static findPatternStart(IILcom/google/zxing/common/BitMatrix;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 152
    move v0, p0

    .local v0, "x":I
    move v1, p1

    .local v1, "y":I
    move-object v2, p2

    .local v2, "image":Lcom/google/zxing/common/BitMatrix;
    move-object v8, v2

    invoke-virtual {v8}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v8

    move v3, v8

    .line 153
    .local v3, "width":I
    move v8, v0

    move v4, v8

    .line 155
    .local v4, "start":I
    const/4 v8, 0x0

    move v5, v8

    .line 156
    .local v5, "transitions":I
    const/4 v8, 0x1

    move v6, v8

    .line 157
    .local v6, "black":Z
    :goto_0
    move v8, v4

    move v9, v3

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    if-ge v8, v9, :cond_1

    move v8, v5

    const/16 v9, 0x8

    if-ge v8, v9, :cond_1

    .line 158
    add-int/lit8 v4, v4, 0x1

    .line 159
    move-object v8, v2

    move v9, v4

    move v10, v1

    invoke-virtual {v8, v9, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    move v7, v8

    .line 160
    .local v7, "newBlack":Z
    move v8, v6

    move v9, v7

    if-eq v8, v9, :cond_0

    .line 161
    add-int/lit8 v5, v5, 0x1

    .line 163
    :cond_0
    move v8, v7

    move v6, v8

    .line 164
    goto :goto_0

    .line 165
    .end local v7    # "newBlack":Z
    :cond_1
    move v8, v4

    move v9, v3

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    if-ne v8, v9, :cond_2

    .line 166
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v8

    throw v8

    .line 168
    :cond_2
    move v8, v4

    move v0, v8

    .end local v0    # "x":I
    return v0
.end method

.method private static moduleSize([ILcom/google/zxing/common/BitMatrix;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "leftTopBlack":[I
    move-object v1, p1

    .local v1, "image":Lcom/google/zxing/common/BitMatrix;
    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    move v2, v6

    .line 134
    .local v2, "x":I
    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    move v3, v6

    .line 135
    .local v3, "y":I
    move-object v6, v1

    invoke-virtual {v6}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v6

    move v4, v6

    .line 136
    .local v4, "width":I
    :goto_0
    move v6, v2

    move v7, v4

    if-ge v6, v7, :cond_0

    move-object v6, v1

    move v7, v2

    move v8, v3

    invoke-virtual {v6, v7, v8}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 137
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 139
    :cond_0
    move v6, v2

    move v7, v4

    if-ne v6, v7, :cond_1

    .line 140
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6

    .line 143
    :cond_1
    move v6, v2

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    sub-int/2addr v6, v7

    const/4 v7, 0x3

    ushr-int/lit8 v6, v6, 0x3

    move v5, v6

    .line 144
    .local v5, "moduleSize":I
    move v6, v5

    if-nez v6, :cond_2

    .line 145
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6

    .line 148
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
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/PDF417Reader;
    move-object v1, p1

    .local v1, "image":Lcom/google/zxing/BinaryBitmap;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/pdf417/PDF417Reader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/zxing/pdf417/PDF417Reader;
    return-object v0
.end method

.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 13
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
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/PDF417Reader;
    move-object v1, p1

    .local v1, "image":Lcom/google/zxing/BinaryBitmap;
    move-object v2, p2

    .local v2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object v6, v2

    if-eqz v6, :cond_0

    move-object v6, v2

    sget-object v7, Lcom/google/zxing/DecodeHintType;->PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 65
    move-object v6, v1

    invoke-virtual {v6}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v6

    invoke-static {v6}, Lcom/google/zxing/pdf417/PDF417Reader;->extractPureBits(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v6

    move-object v5, v6

    .line 66
    .local v5, "bits":Lcom/google/zxing/common/BitMatrix;
    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/pdf417/PDF417Reader;->decoder:Lcom/google/zxing/pdf417/decoder/Decoder;

    move-object v7, v5

    invoke-virtual {v6, v7}, Lcom/google/zxing/pdf417/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v6

    move-object v3, v6

    .line 67
    .local v3, "decoderResult":Lcom/google/zxing/common/DecoderResult;
    sget-object v6, Lcom/google/zxing/pdf417/PDF417Reader;->NO_POINTS:[Lcom/google/zxing/ResultPoint;

    move-object v4, v6

    .line 73
    .end local v5    # "bits":Lcom/google/zxing/common/BitMatrix;
    .local v4, "points":[Lcom/google/zxing/ResultPoint;
    :goto_0
    new-instance v6, Lcom/google/zxing/Result;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v3

    invoke-virtual {v8}, Lcom/google/zxing/common/DecoderResult;->getText()Ljava/lang/String;

    move-result-object v8

    move-object v9, v3

    invoke-virtual {v9}, Lcom/google/zxing/common/DecoderResult;->getRawBytes()[B

    move-result-object v9

    move-object v10, v4

    sget-object v11, Lcom/google/zxing/BarcodeFormat;->PDF_417:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    move-object v0, v6

    .end local v0    # "this":Lcom/google/zxing/pdf417/PDF417Reader;
    return-object v0

    .line 69
    .end local v3    # "decoderResult":Lcom/google/zxing/common/DecoderResult;
    .end local v4    # "points":[Lcom/google/zxing/ResultPoint;
    .restart local v0    # "this":Lcom/google/zxing/pdf417/PDF417Reader;
    :cond_0
    new-instance v6, Lcom/google/zxing/pdf417/detector/Detector;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v1

    invoke-direct {v7, v8}, Lcom/google/zxing/pdf417/detector/Detector;-><init>(Lcom/google/zxing/BinaryBitmap;)V

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/detector/Detector;->detect()Lcom/google/zxing/common/DetectorResult;

    move-result-object v6

    move-object v5, v6

    .line 70
    .local v5, "detectorResult":Lcom/google/zxing/common/DetectorResult;
    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/pdf417/PDF417Reader;->decoder:Lcom/google/zxing/pdf417/decoder/Decoder;

    move-object v7, v5

    invoke-virtual {v7}, Lcom/google/zxing/common/DetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/zxing/pdf417/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v6

    move-object v3, v6

    .line 71
    .restart local v3    # "decoderResult":Lcom/google/zxing/common/DecoderResult;
    move-object v6, v5

    invoke-virtual {v6}, Lcom/google/zxing/common/DetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v6

    move-object v4, v6

    .restart local v4    # "points":[Lcom/google/zxing/ResultPoint;
    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method
