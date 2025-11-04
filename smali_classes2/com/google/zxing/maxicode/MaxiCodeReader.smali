.class public final Lcom/google/zxing/maxicode/MaxiCodeReader;
.super Ljava/lang/Object;
.source "MaxiCodeReader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# static fields
.field private static final MATRIX_HEIGHT:I = 0x21

.field private static final MATRIX_WIDTH:I = 0x1e

.field private static final NO_POINTS:[Lcom/google/zxing/ResultPoint;


# instance fields
.field private final decoder:Lcom/google/zxing/maxicode/decoder/Decoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    sput-object v0, Lcom/google/zxing/maxicode/MaxiCodeReader;->NO_POINTS:[Lcom/google/zxing/ResultPoint;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/maxicode/MaxiCodeReader;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 44
    move-object v1, v0

    new-instance v2, Lcom/google/zxing/maxicode/decoder/Decoder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/google/zxing/maxicode/decoder/Decoder;-><init>()V

    iput-object v2, v1, Lcom/google/zxing/maxicode/MaxiCodeReader;->decoder:Lcom/google/zxing/maxicode/decoder/Decoder;

    return-void
.end method

.method private static extractPureBits(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 101
    move-object/from16 v0, p0

    .local v0, "image":Lcom/google/zxing/common/BitMatrix;
    move-object v11, v0

    invoke-virtual {v11}, Lcom/google/zxing/common/BitMatrix;->getEnclosingRectangle()[I

    move-result-object v11

    move-object v1, v11

    .line 102
    .local v1, "enclosingRectangle":[I
    move-object v11, v1

    if-nez v11, :cond_0

    .line 103
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v11

    throw v11

    .line 106
    :cond_0
    move-object v11, v1

    const/4 v12, 0x0

    aget v11, v11, v12

    move v2, v11

    .line 107
    .local v2, "left":I
    move-object v11, v1

    const/4 v12, 0x1

    aget v11, v11, v12

    move v3, v11

    .line 108
    .local v3, "top":I
    move-object v11, v1

    const/4 v12, 0x2

    aget v11, v11, v12

    move v4, v11

    .line 109
    .local v4, "width":I
    move-object v11, v1

    const/4 v12, 0x3

    aget v11, v11, v12

    move v5, v11

    .line 112
    .local v5, "height":I
    new-instance v11, Lcom/google/zxing/common/BitMatrix;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/16 v13, 0x1e

    const/16 v14, 0x21

    invoke-direct {v12, v13, v14}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    move-object v6, v11

    .line 113
    .local v6, "bits":Lcom/google/zxing/common/BitMatrix;
    const/4 v11, 0x0

    move v7, v11

    .local v7, "y":I
    :goto_0
    move v11, v7

    const/16 v12, 0x21

    if-ge v11, v12, :cond_3

    .line 114
    move v11, v3

    move v12, v7

    move v13, v5

    mul-int/2addr v12, v13

    move v13, v5

    const/4 v14, 0x2

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    const/16 v13, 0x21

    div-int/lit8 v12, v12, 0x21

    add-int/2addr v11, v12

    move v8, v11

    .line 115
    .local v8, "iy":I
    const/4 v11, 0x0

    move v9, v11

    .local v9, "x":I
    :goto_1
    move v11, v9

    const/16 v12, 0x1e

    if-ge v11, v12, :cond_2

    .line 116
    move v11, v2

    move v12, v9

    move v13, v4

    mul-int/2addr v12, v13

    move v13, v4

    const/4 v14, 0x2

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    move v13, v7

    const/4 v14, 0x1

    and-int/lit8 v13, v13, 0x1

    move v14, v4

    mul-int/2addr v13, v14

    const/4 v14, 0x2

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    const/16 v13, 0x1e

    div-int/lit8 v12, v12, 0x1e

    add-int/2addr v11, v12

    move v10, v11

    .line 117
    .local v10, "ix":I
    move-object v11, v0

    move v12, v10

    move v13, v8

    invoke-virtual {v11, v12, v13}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 118
    move-object v11, v6

    move v12, v9

    move v13, v7

    invoke-virtual {v11, v12, v13}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 115
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 113
    .end local v10    # "ix":I
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 122
    .end local v8    # "iy":I
    .end local v9    # "x":I
    :cond_3
    move-object v11, v6

    move-object v0, v11

    .end local v0    # "image":Lcom/google/zxing/common/BitMatrix;
    return-object v0
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
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/maxicode/MaxiCodeReader;
    move-object v1, p1

    .local v1, "image":Lcom/google/zxing/BinaryBitmap;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/maxicode/MaxiCodeReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/zxing/maxicode/MaxiCodeReader;
    return-object v0
.end method

.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 14
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

    .local v0, "this":Lcom/google/zxing/maxicode/MaxiCodeReader;
    move-object v1, p1

    .local v1, "image":Lcom/google/zxing/BinaryBitmap;
    move-object/from16 v2, p2

    .local v2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object v7, v2

    if-eqz v7, :cond_1

    move-object v7, v2

    sget-object v8, Lcom/google/zxing/DecodeHintType;->PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 68
    move-object v7, v1

    invoke-virtual {v7}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v7

    invoke-static {v7}, Lcom/google/zxing/maxicode/MaxiCodeReader;->extractPureBits(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v7

    move-object v4, v7

    .line 69
    .local v4, "bits":Lcom/google/zxing/common/BitMatrix;
    move-object v7, v0

    iget-object v7, v7, Lcom/google/zxing/maxicode/MaxiCodeReader;->decoder:Lcom/google/zxing/maxicode/decoder/Decoder;

    move-object v8, v4

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Lcom/google/zxing/maxicode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v7

    move-object v3, v7

    .line 74
    .local v3, "decoderResult":Lcom/google/zxing/common/DecoderResult;
    sget-object v7, Lcom/google/zxing/maxicode/MaxiCodeReader;->NO_POINTS:[Lcom/google/zxing/ResultPoint;

    move-object v4, v7

    .line 75
    .local v4, "points":[Lcom/google/zxing/ResultPoint;
    new-instance v7, Lcom/google/zxing/Result;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v3

    invoke-virtual {v9}, Lcom/google/zxing/common/DecoderResult;->getText()Ljava/lang/String;

    move-result-object v9

    move-object v10, v3

    invoke-virtual {v10}, Lcom/google/zxing/common/DecoderResult;->getRawBytes()[B

    move-result-object v10

    move-object v11, v4

    sget-object v12, Lcom/google/zxing/BarcodeFormat;->MAXICODE:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    move-object v5, v7

    .line 77
    .local v5, "result":Lcom/google/zxing/Result;
    move-object v7, v3

    invoke-virtual {v7}, Lcom/google/zxing/common/DecoderResult;->getECLevel()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 78
    .local v6, "ecLevel":Ljava/lang/String;
    move-object v7, v6

    if-eqz v7, :cond_0

    .line 79
    move-object v7, v5

    sget-object v8, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    move-object v9, v6

    invoke-virtual {v7, v8, v9}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 81
    :cond_0
    move-object v7, v5

    move-object v0, v7

    .end local v0    # "this":Lcom/google/zxing/maxicode/MaxiCodeReader;
    return-object v0

    .line 71
    .end local v3    # "decoderResult":Lcom/google/zxing/common/DecoderResult;
    .end local v4    # "points":[Lcom/google/zxing/ResultPoint;
    .end local v5    # "result":Lcom/google/zxing/Result;
    .end local v6    # "ecLevel":Ljava/lang/String;
    .restart local v0    # "this":Lcom/google/zxing/maxicode/MaxiCodeReader;
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v7

    throw v7
.end method

.method getDecoder()Lcom/google/zxing/maxicode/decoder/Decoder;
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/maxicode/MaxiCodeReader;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/maxicode/MaxiCodeReader;->decoder:Lcom/google/zxing/maxicode/decoder/Decoder;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/maxicode/MaxiCodeReader;
    return-object v0
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method
