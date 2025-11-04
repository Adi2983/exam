.class public final Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;
.super Lcom/google/zxing/qrcode/QRCodeReader;
.source "QRCodeMultiReader.java"

# interfaces
.implements Lcom/google/zxing/multi/MultipleBarcodeReader;


# static fields
.field private static final EMPTY_RESULT_ARRAY:[Lcom/google/zxing/Result;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/zxing/Result;

    sput-object v0, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/Result;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/zxing/qrcode/QRCodeReader;-><init>()V

    return-void
.end method


# virtual methods
.method public decodeMultiple(Lcom/google/zxing/BinaryBitmap;)[Lcom/google/zxing/Result;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;
    move-object v1, p1

    .local v1, "image":Lcom/google/zxing/BinaryBitmap;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;->decodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)[Lcom/google/zxing/Result;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;
    return-object v0
.end method

.method public decodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)[Lcom/google/zxing/Result;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)[",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 54
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;
    move-object/from16 v1, p1

    .local v1, "image":Lcom/google/zxing/BinaryBitmap;
    move-object/from16 v2, p2

    .local v2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v14

    .line 55
    .local v3, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/Result;>;"
    new-instance v14, Lcom/google/zxing/multi/qrcode/detector/MultiDetector;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/google/zxing/multi/qrcode/detector/MultiDetector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    move-object v15, v2

    invoke-virtual {v14, v15}, Lcom/google/zxing/multi/qrcode/detector/MultiDetector;->detectMulti(Ljava/util/Map;)[Lcom/google/zxing/common/DetectorResult;

    move-result-object v14

    move-object v4, v14

    .line 56
    .local v4, "detectorResults":[Lcom/google/zxing/common/DetectorResult;
    move-object v14, v4

    move-object v5, v14

    .local v5, "arr$":[Lcom/google/zxing/common/DetectorResult;
    move-object v14, v5

    array-length v14, v14

    move v6, v14

    .local v6, "len$":I
    const/4 v14, 0x0

    move v7, v14

    .local v7, "i$":I
    :goto_0
    move v14, v7

    move v15, v6

    if-ge v14, v15, :cond_2

    move-object v14, v5

    move v15, v7

    aget-object v14, v14, v15

    move-object v8, v14

    .line 58
    .local v8, "detectorResult":Lcom/google/zxing/common/DetectorResult;
    move-object v14, v0

    :try_start_0
    invoke-virtual {v14}, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;->getDecoder()Lcom/google/zxing/qrcode/decoder/Decoder;

    move-result-object v14

    move-object v15, v8

    invoke-virtual {v15}, Lcom/google/zxing/common/DetectorResult;->getBits()Lcom/google/zxing/common/BitMatrix;

    move-result-object v15

    move-object/from16 v16, v2

    invoke-virtual/range {v14 .. v16}, Lcom/google/zxing/qrcode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v14

    move-object v9, v14

    .line 59
    .local v9, "decoderResult":Lcom/google/zxing/common/DecoderResult;
    move-object v14, v8

    invoke-virtual {v14}, Lcom/google/zxing/common/DetectorResult;->getPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v14

    move-object v10, v14

    .line 60
    .local v10, "points":[Lcom/google/zxing/ResultPoint;
    new-instance v14, Lcom/google/zxing/Result;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move-object/from16 v16, v9

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/common/DecoderResult;->getText()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v9

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/common/DecoderResult;->getRawBytes()[B

    move-result-object v17

    move-object/from16 v18, v10

    sget-object v19, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-direct/range {v15 .. v19}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    move-object v11, v14

    .line 62
    .local v11, "result":Lcom/google/zxing/Result;
    move-object v14, v9

    invoke-virtual {v14}, Lcom/google/zxing/common/DecoderResult;->getByteSegments()Ljava/util/List;

    move-result-object v14

    move-object v12, v14

    .line 63
    .local v12, "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    move-object v14, v12

    if-eqz v14, :cond_0

    .line 64
    move-object v14, v11

    sget-object v15, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    move-object/from16 v16, v12

    invoke-virtual/range {v14 .. v16}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 66
    :cond_0
    move-object v14, v9

    invoke-virtual {v14}, Lcom/google/zxing/common/DecoderResult;->getECLevel()Ljava/lang/String;

    move-result-object v14

    move-object v13, v14

    .line 67
    .local v13, "ecLevel":Ljava/lang/String;
    move-object v14, v13

    if-eqz v14, :cond_1

    .line 68
    move-object v14, v11

    sget-object v15, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    move-object/from16 v16, v13

    invoke-virtual/range {v14 .. v16}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 70
    :cond_1
    move-object v14, v3

    move-object v15, v11

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    .line 73
    .line 56
    .end local v9    # "decoderResult":Lcom/google/zxing/common/DecoderResult;
    .end local v10    # "points":[Lcom/google/zxing/ResultPoint;
    .end local v11    # "result":Lcom/google/zxing/Result;
    .end local v12    # "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v13    # "ecLevel":Ljava/lang/String;
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 71
    :catch_0
    move-exception v14

    move-object v9, v14

    goto :goto_1

    .line 75
    .end local v8    # "detectorResult":Lcom/google/zxing/common/DetectorResult;
    :cond_2
    move-object v14, v3

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 76
    sget-object v14, Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/Result;

    move-object v0, v14

    .line 78
    .end local v0    # "this":Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;
    :goto_2
    return-object v0

    .restart local v0    # "this":Lcom/google/zxing/multi/qrcode/QRCodeMultiReader;
    :cond_3
    move-object v14, v3

    move-object v15, v3

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    new-array v15, v15, [Lcom/google/zxing/Result;

    invoke-interface {v14, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Lcom/google/zxing/Result;

    move-object v0, v14

    goto :goto_2
.end method
