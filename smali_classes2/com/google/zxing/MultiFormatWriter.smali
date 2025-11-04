.class public final Lcom/google/zxing/MultiFormatWriter;
.super Ljava/lang/Object;
.source "MultiFormatWriter.java"

# interfaces
.implements Lcom/google/zxing/Writer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/MultiFormatWriter$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/MultiFormatWriter;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
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
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/MultiFormatWriter;
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

    invoke-virtual/range {v5 .. v10}, Lcom/google/zxing/MultiFormatWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lcom/google/zxing/MultiFormatWriter;
    return-object v0
.end method

.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 14
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
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/MultiFormatWriter;
    move-object v1, p1

    .local v1, "contents":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "format":Lcom/google/zxing/BarcodeFormat;
    move/from16 v3, p3

    .local v3, "width":I
    move/from16 v4, p4

    .local v4, "height":I
    move-object/from16 v5, p5

    .local v5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    sget-object v7, Lcom/google/zxing/MultiFormatWriter$1;->$SwitchMap$com$google$zxing$BarcodeFormat:[I

    move-object v8, v2

    invoke-virtual {v8}, Lcom/google/zxing/BarcodeFormat;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 84
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "No encoder available for format "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 57
    :pswitch_0
    new-instance v7, Lcom/google/zxing/oned/EAN8Writer;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Lcom/google/zxing/oned/EAN8Writer;-><init>()V

    move-object v6, v7

    .line 86
    .local v6, "writer":Lcom/google/zxing/Writer;
    :goto_0
    move-object v7, v6

    move-object v8, v1

    move-object v9, v2

    move v10, v3

    move v11, v4

    move-object v12, v5

    invoke-interface/range {v7 .. v12}, Lcom/google/zxing/Writer;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Lcom/google/zxing/MultiFormatWriter;
    return-object v0

    .line 60
    .end local v6    # "writer":Lcom/google/zxing/Writer;
    .restart local v0    # "this":Lcom/google/zxing/MultiFormatWriter;
    :pswitch_1
    new-instance v7, Lcom/google/zxing/oned/EAN13Writer;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Lcom/google/zxing/oned/EAN13Writer;-><init>()V

    move-object v6, v7

    .line 61
    .restart local v6    # "writer":Lcom/google/zxing/Writer;
    goto :goto_0

    .line 63
    .end local v6    # "writer":Lcom/google/zxing/Writer;
    :pswitch_2
    new-instance v7, Lcom/google/zxing/oned/UPCAWriter;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Lcom/google/zxing/oned/UPCAWriter;-><init>()V

    move-object v6, v7

    .line 64
    .restart local v6    # "writer":Lcom/google/zxing/Writer;
    goto :goto_0

    .line 66
    .end local v6    # "writer":Lcom/google/zxing/Writer;
    :pswitch_3
    new-instance v7, Lcom/google/zxing/qrcode/QRCodeWriter;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Lcom/google/zxing/qrcode/QRCodeWriter;-><init>()V

    move-object v6, v7

    .line 67
    .restart local v6    # "writer":Lcom/google/zxing/Writer;
    goto :goto_0

    .line 69
    .end local v6    # "writer":Lcom/google/zxing/Writer;
    :pswitch_4
    new-instance v7, Lcom/google/zxing/oned/Code39Writer;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Lcom/google/zxing/oned/Code39Writer;-><init>()V

    move-object v6, v7

    .line 70
    .restart local v6    # "writer":Lcom/google/zxing/Writer;
    goto :goto_0

    .line 72
    .end local v6    # "writer":Lcom/google/zxing/Writer;
    :pswitch_5
    new-instance v7, Lcom/google/zxing/oned/Code128Writer;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Lcom/google/zxing/oned/Code128Writer;-><init>()V

    move-object v6, v7

    .line 73
    .restart local v6    # "writer":Lcom/google/zxing/Writer;
    goto :goto_0

    .line 75
    .end local v6    # "writer":Lcom/google/zxing/Writer;
    :pswitch_6
    new-instance v7, Lcom/google/zxing/oned/ITFWriter;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Lcom/google/zxing/oned/ITFWriter;-><init>()V

    move-object v6, v7

    .line 76
    .restart local v6    # "writer":Lcom/google/zxing/Writer;
    goto :goto_0

    .line 78
    .end local v6    # "writer":Lcom/google/zxing/Writer;
    :pswitch_7
    new-instance v7, Lcom/google/zxing/pdf417/encoder/PDF417Writer;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Lcom/google/zxing/pdf417/encoder/PDF417Writer;-><init>()V

    move-object v6, v7

    .line 79
    .restart local v6    # "writer":Lcom/google/zxing/Writer;
    goto :goto_0

    .line 81
    .end local v6    # "writer":Lcom/google/zxing/Writer;
    :pswitch_8
    new-instance v7, Lcom/google/zxing/oned/CodaBarWriter;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Lcom/google/zxing/oned/CodaBarWriter;-><init>()V

    move-object v6, v7

    .line 82
    .restart local v6    # "writer":Lcom/google/zxing/Writer;
    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
