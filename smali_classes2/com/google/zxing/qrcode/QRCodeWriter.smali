.class public final Lcom/google/zxing/qrcode/QRCodeWriter;
.super Ljava/lang/Object;
.source "QRCodeWriter.java"

# interfaces
.implements Lcom/google/zxing/Writer;


# static fields
.field private static final QUIET_ZONE_SIZE:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/QRCodeWriter;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static renderResult(Lcom/google/zxing/qrcode/encoder/QRCode;III)Lcom/google/zxing/common/BitMatrix;
    .locals 27

    .prologue
    .line 87
    move-object/from16 v2, p0

    .local v2, "code":Lcom/google/zxing/qrcode/encoder/QRCode;
    move/from16 v3, p1

    .local v3, "width":I
    move/from16 v4, p2

    .local v4, "height":I
    move/from16 v5, p3

    .local v5, "quietZone":I
    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lcom/google/zxing/qrcode/encoder/QRCode;->getMatrix()Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    move-result-object v21

    move-object/from16 v6, v21

    .line 88
    .local v6, "input":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    move-object/from16 v21, v6

    if-nez v21, :cond_0

    .line 89
    new-instance v21, Ljava/lang/IllegalStateException;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    invoke-direct/range {v22 .. v22}, Ljava/lang/IllegalStateException;-><init>()V

    throw v21

    .line 91
    :cond_0
    move-object/from16 v21, v6

    invoke-virtual/range {v21 .. v21}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v21

    move/from16 v7, v21

    .line 92
    .local v7, "inputWidth":I
    move-object/from16 v21, v6

    invoke-virtual/range {v21 .. v21}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v21

    move/from16 v8, v21

    .line 93
    .local v8, "inputHeight":I
    move/from16 v21, v7

    move/from16 v22, v5

    const/16 v23, 0x1

    shl-int/lit8 v22, v22, 0x1

    add-int v21, v21, v22

    move/from16 v9, v21

    .line 94
    .local v9, "qrWidth":I
    move/from16 v21, v8

    move/from16 v22, v5

    const/16 v23, 0x1

    shl-int/lit8 v22, v22, 0x1

    add-int v21, v21, v22

    move/from16 v10, v21

    .line 95
    .local v10, "qrHeight":I
    move/from16 v21, v3

    move/from16 v22, v9

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v21

    move/from16 v11, v21

    .line 96
    .local v11, "outputWidth":I
    move/from16 v21, v4

    move/from16 v22, v10

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v21

    move/from16 v12, v21

    .line 98
    .local v12, "outputHeight":I
    move/from16 v21, v11

    move/from16 v22, v9

    div-int v21, v21, v22

    move/from16 v22, v12

    move/from16 v23, v10

    div-int v22, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v21

    move/from16 v13, v21

    .line 103
    .local v13, "multiple":I
    move/from16 v21, v11

    move/from16 v22, v7

    move/from16 v23, v13

    mul-int v22, v22, v23

    sub-int v21, v21, v22

    const/16 v22, 0x2

    div-int/lit8 v21, v21, 0x2

    move/from16 v14, v21

    .line 104
    .local v14, "leftPadding":I
    move/from16 v21, v12

    move/from16 v22, v8

    move/from16 v23, v13

    mul-int v22, v22, v23

    sub-int v21, v21, v22

    const/16 v22, 0x2

    div-int/lit8 v21, v21, 0x2

    move/from16 v15, v21

    .line 106
    .local v15, "topPadding":I
    new-instance v21, Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    move/from16 v23, v11

    move/from16 v24, v12

    invoke-direct/range {v22 .. v24}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    move-object/from16 v16, v21

    .line 108
    .local v16, "output":Lcom/google/zxing/common/BitMatrix;
    const/16 v21, 0x0

    move/from16 v17, v21

    .local v17, "inputY":I
    move/from16 v21, v15

    move/from16 v18, v21

    .local v18, "outputY":I
    :goto_0
    move/from16 v21, v17

    move/from16 v22, v8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    .line 110
    const/16 v21, 0x0

    move/from16 v19, v21

    .local v19, "inputX":I
    move/from16 v21, v14

    move/from16 v20, v21

    .local v20, "outputX":I
    :goto_1
    move/from16 v21, v19

    move/from16 v22, v7

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    .line 111
    move-object/from16 v21, v6

    move/from16 v22, v19

    move/from16 v23, v17

    invoke-virtual/range {v21 .. v23}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->get(II)B

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    .line 112
    move-object/from16 v21, v16

    move/from16 v22, v20

    move/from16 v23, v18

    move/from16 v24, v13

    move/from16 v25, v13

    invoke-virtual/range {v21 .. v25}, Lcom/google/zxing/common/BitMatrix;->setRegion(IIII)V

    .line 110
    :cond_1
    add-int/lit8 v19, v19, 0x1

    move/from16 v21, v20

    move/from16 v22, v13

    add-int v21, v21, v22

    move/from16 v20, v21

    goto :goto_1

    .line 108
    :cond_2
    add-int/lit8 v17, v17, 0x1

    move/from16 v21, v18

    move/from16 v22, v13

    add-int v21, v21, v22

    move/from16 v18, v21

    goto :goto_0

    .line 117
    .end local v19    # "inputX":I
    .end local v20    # "outputX":I
    :cond_3
    move-object/from16 v21, v16

    move-object/from16 v2, v21

    .end local v2    # "code":Lcom/google/zxing/qrcode/encoder/QRCode;
    return-object v2
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/QRCodeWriter;
    move-object v1, p1

    .local v1, "contents":Ljava/lang/String;
    move-object v2, p2

    .local v2, "format":Lcom/google/zxing/BarcodeFormat;
    move v3, p3

    .local v3, "width":I
    move v4, p4

    .local v4, "height":I
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move v9, v4

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/google/zxing/qrcode/QRCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lcom/google/zxing/qrcode/QRCodeWriter;
    return-object v0
.end method

.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/QRCodeWriter;
    move-object/from16 v1, p1

    .local v1, "contents":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "format":Lcom/google/zxing/BarcodeFormat;
    move/from16 v3, p3

    .local v3, "width":I
    move/from16 v4, p4

    .local v4, "height":I
    move-object/from16 v5, p5

    .local v5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    move-object v10, v1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_0

    .line 55
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const-string/jumbo v12, "Found empty contents"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 58
    :cond_0
    move-object v10, v2

    sget-object v11, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    if-eq v10, v11, :cond_1

    .line 59
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v14, v12

    move-object v12, v14

    move-object v13, v14

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Can only encode QR_CODE, but got "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v2

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 62
    :cond_1
    move v10, v3

    if-ltz v10, :cond_2

    move v10, v4

    if-gez v10, :cond_3

    .line 63
    :cond_2
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v14, v12

    move-object v12, v14

    move-object v13, v14

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Requested dimensions are too small: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move v13, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x78

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    move v13, v4

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 67
    :cond_3
    sget-object v10, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->L:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-object v6, v10

    .line 68
    .local v6, "errorCorrectionLevel":Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    const/4 v10, 0x4

    move v7, v10

    .line 69
    .local v7, "quietZone":I
    move-object v10, v5

    if-eqz v10, :cond_5

    .line 70
    move-object v10, v5

    sget-object v11, Lcom/google/zxing/EncodeHintType;->ERROR_CORRECTION:Lcom/google/zxing/EncodeHintType;

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-object v8, v10

    .line 71
    .local v8, "requestedECLevel":Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    move-object v10, v8

    if-eqz v10, :cond_4

    .line 72
    move-object v10, v8

    move-object v6, v10

    .line 74
    :cond_4
    move-object v10, v5

    sget-object v11, Lcom/google/zxing/EncodeHintType;->MARGIN:Lcom/google/zxing/EncodeHintType;

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    move-object v9, v10

    .line 75
    .local v9, "quietZoneInt":Ljava/lang/Integer;
    move-object v10, v9

    if-eqz v10, :cond_5

    .line 76
    move-object v10, v9

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move v7, v10

    .line 80
    .end local v8    # "requestedECLevel":Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .end local v9    # "quietZoneInt":Ljava/lang/Integer;
    :cond_5
    move-object v10, v1

    move-object v11, v6

    move-object v12, v5

    invoke-static {v10, v11, v12}, Lcom/google/zxing/qrcode/encoder/Encoder;->encode(Ljava/lang/String;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/qrcode/encoder/QRCode;

    move-result-object v10

    move-object v8, v10

    .line 81
    .local v8, "code":Lcom/google/zxing/qrcode/encoder/QRCode;
    move-object v10, v8

    move v11, v3

    move v12, v4

    move v13, v7

    invoke-static {v10, v11, v12, v13}, Lcom/google/zxing/qrcode/QRCodeWriter;->renderResult(Lcom/google/zxing/qrcode/encoder/QRCode;III)Lcom/google/zxing/common/BitMatrix;

    move-result-object v10

    move-object v0, v10

    .end local v0    # "this":Lcom/google/zxing/qrcode/QRCodeWriter;
    return-object v0
.end method
