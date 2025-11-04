.class public final Lcom/google/zxing/aztec/AztecReader;
.super Ljava/lang/Object;
.source "AztecReader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/aztec/AztecReader;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/aztec/AztecReader;
    move-object v1, p1

    .local v1, "image":Lcom/google/zxing/BinaryBitmap;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/aztec/AztecReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/zxing/aztec/AztecReader;
    return-object v0
.end method

.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 17
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
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 60
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/aztec/AztecReader;
    move-object/from16 v1, p1

    .local v1, "image":Lcom/google/zxing/BinaryBitmap;
    move-object/from16 v2, p2

    .local v2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    new-instance v10, Lcom/google/zxing/aztec/detector/Detector;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v1

    invoke-virtual {v12}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/google/zxing/aztec/detector/Detector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    invoke-virtual {v10}, Lcom/google/zxing/aztec/detector/Detector;->detect()Lcom/google/zxing/aztec/AztecDetectorResult;

    move-result-object v10

    move-object v3, v10

    .line 61
    .local v3, "detectorResult":Lcom/google/zxing/aztec/AztecDetectorResult;
    move-object v10, v3

    invoke-virtual {v10}, Lcom/google/zxing/aztec/AztecDetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v10

    move-object v4, v10

    .line 63
    .local v4, "points":[Lcom/google/zxing/ResultPoint;
    move-object v10, v2

    if-eqz v10, :cond_0

    .line 64
    move-object v10, v2

    sget-object v11, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/zxing/ResultPointCallback;

    move-object v5, v10

    .line 65
    .local v5, "rpcb":Lcom/google/zxing/ResultPointCallback;
    move-object v10, v5

    if-eqz v10, :cond_0

    .line 66
    move-object v10, v4

    move-object v6, v10

    .local v6, "arr$":[Lcom/google/zxing/ResultPoint;
    move-object v10, v6

    array-length v10, v10

    move v7, v10

    .local v7, "len$":I
    const/4 v10, 0x0

    move v8, v10

    .local v8, "i$":I
    :goto_0
    move v10, v8

    move v11, v7

    if-ge v10, v11, :cond_0

    move-object v10, v6

    move v11, v8

    aget-object v10, v10, v11

    move-object v9, v10

    .line 67
    .local v9, "point":Lcom/google/zxing/ResultPoint;
    move-object v10, v5

    move-object v11, v9

    invoke-interface {v10, v11}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 66
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 72
    .end local v5    # "rpcb":Lcom/google/zxing/ResultPointCallback;
    .end local v6    # "arr$":[Lcom/google/zxing/ResultPoint;
    .end local v7    # "len$":I
    .end local v8    # "i$":I
    .end local v9    # "point":Lcom/google/zxing/ResultPoint;
    :cond_0
    new-instance v10, Lcom/google/zxing/aztec/decoder/Decoder;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    invoke-direct {v11}, Lcom/google/zxing/aztec/decoder/Decoder;-><init>()V

    move-object v11, v3

    invoke-virtual {v10, v11}, Lcom/google/zxing/aztec/decoder/Decoder;->decode(Lcom/google/zxing/aztec/AztecDetectorResult;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v10

    move-object v5, v10

    .line 74
    .local v5, "decoderResult":Lcom/google/zxing/common/DecoderResult;
    new-instance v10, Lcom/google/zxing/Result;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object v12, v5

    invoke-virtual {v12}, Lcom/google/zxing/common/DecoderResult;->getText()Ljava/lang/String;

    move-result-object v12

    move-object v13, v5

    invoke-virtual {v13}, Lcom/google/zxing/common/DecoderResult;->getRawBytes()[B

    move-result-object v13

    move-object v14, v4

    sget-object v15, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    move-object v6, v10

    .line 76
    .local v6, "result":Lcom/google/zxing/Result;
    move-object v10, v5

    invoke-virtual {v10}, Lcom/google/zxing/common/DecoderResult;->getByteSegments()Ljava/util/List;

    move-result-object v10

    move-object v7, v10

    .line 77
    .local v7, "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    move-object v10, v7

    if-eqz v10, :cond_1

    .line 78
    move-object v10, v6

    sget-object v11, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    move-object v12, v7

    invoke-virtual {v10, v11, v12}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 80
    :cond_1
    move-object v10, v5

    invoke-virtual {v10}, Lcom/google/zxing/common/DecoderResult;->getECLevel()Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 81
    .local v8, "ecLevel":Ljava/lang/String;
    move-object v10, v8

    if-eqz v10, :cond_2

    .line 82
    move-object v10, v6

    sget-object v11, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    move-object v12, v8

    invoke-virtual {v10, v11, v12}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 85
    :cond_2
    move-object v10, v6

    move-object v0, v10

    .end local v0    # "this":Lcom/google/zxing/aztec/AztecReader;
    return-object v0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method
