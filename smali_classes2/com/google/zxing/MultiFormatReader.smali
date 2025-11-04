.class public final Lcom/google/zxing/MultiFormatReader;
.super Ljava/lang/Object;
.source "MultiFormatReader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# instance fields
.field private hints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;"
        }
    .end annotation
.end field

.field private readers:[Lcom/google/zxing/Reader;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/MultiFormatReader;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private decodeInternal(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/MultiFormatReader;
    move-object v1, p1

    .local v1, "image":Lcom/google/zxing/BinaryBitmap;
    move-object v7, v0

    iget-object v7, v7, Lcom/google/zxing/MultiFormatReader;->readers:[Lcom/google/zxing/Reader;

    if-eqz v7, :cond_0

    .line 168
    move-object v7, v0

    iget-object v7, v7, Lcom/google/zxing/MultiFormatReader;->readers:[Lcom/google/zxing/Reader;

    move-object v2, v7

    .local v2, "arr$":[Lcom/google/zxing/Reader;
    move-object v7, v2

    array-length v7, v7

    move v3, v7

    .local v3, "len$":I
    const/4 v7, 0x0

    move v4, v7

    .local v4, "i$":I
    :goto_0
    move v7, v4

    move v8, v3

    if-ge v7, v8, :cond_0

    move-object v7, v2

    move v8, v4

    aget-object v7, v7, v8

    move-object v5, v7

    .line 170
    .local v5, "reader":Lcom/google/zxing/Reader;
    move-object v7, v5

    move-object v8, v1

    move-object v9, v0

    :try_start_0
    iget-object v9, v9, Lcom/google/zxing/MultiFormatReader;->hints:Ljava/util/Map;

    invoke-interface {v7, v8, v9}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Lcom/google/zxing/MultiFormatReader;
    return-object v0

    .line 171
    .restart local v0    # "this":Lcom/google/zxing/MultiFormatReader;
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 168
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 176
    .end local v2    # "arr$":[Lcom/google/zxing/Reader;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    .end local v5    # "reader":Lcom/google/zxing/Reader;
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v7

    throw v7
.end method


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/MultiFormatReader;
    move-object v1, p1

    .local v1, "image":Lcom/google/zxing/BinaryBitmap;
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 55
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/zxing/MultiFormatReader;->decodeInternal(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/zxing/MultiFormatReader;
    return-object v0
.end method

.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 5
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
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/MultiFormatReader;
    move-object v1, p1

    .local v1, "image":Lcom/google/zxing/BinaryBitmap;
    move-object v2, p2

    .local v2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 69
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/zxing/MultiFormatReader;->decodeInternal(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/google/zxing/MultiFormatReader;
    return-object v0
.end method

.method public decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/MultiFormatReader;
    move-object v1, p1

    .local v1, "image":Lcom/google/zxing/BinaryBitmap;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/MultiFormatReader;->readers:[Lcom/google/zxing/Reader;

    if-nez v2, :cond_0

    .line 83
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 85
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/zxing/MultiFormatReader;->decodeInternal(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/zxing/MultiFormatReader;
    return-object v0
.end method

.method public reset()V
    .locals 7

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/MultiFormatReader;
    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/MultiFormatReader;->readers:[Lcom/google/zxing/Reader;

    if-eqz v5, :cond_0

    .line 160
    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/MultiFormatReader;->readers:[Lcom/google/zxing/Reader;

    move-object v1, v5

    .local v1, "arr$":[Lcom/google/zxing/Reader;
    move-object v5, v1

    array-length v5, v5

    move v2, v5

    .local v2, "len$":I
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i$":I
    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_0

    move-object v5, v1

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 161
    .local v4, "reader":Lcom/google/zxing/Reader;
    move-object v5, v4

    invoke-interface {v5}, Lcom/google/zxing/Reader;->reset()V

    .line 160
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 164
    .end local v1    # "arr$":[Lcom/google/zxing/Reader;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    .end local v4    # "reader":Lcom/google/zxing/Reader;
    :cond_0
    return-void
.end method

.method public setHints(Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/MultiFormatReader;
    move-object v1, p1

    .local v1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/google/zxing/MultiFormatReader;->hints:Ljava/util/Map;

    .line 98
    move-object v6, v1

    if-eqz v6, :cond_a

    move-object v6, v1

    sget-object v7, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    const/4 v6, 0x1

    :goto_0
    move v2, v6

    .line 99
    .local v2, "tryHarder":Z
    move-object v6, v1

    if-nez v6, :cond_b

    const/4 v6, 0x0

    :goto_1
    move-object v3, v6

    .line 101
    .local v3, "formats":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/BarcodeFormat;>;"
    new-instance v6, Ljava/util/ArrayList;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v6

    .line 102
    .local v4, "readers":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/Reader;>;"
    move-object v6, v3

    if-eqz v6, :cond_7

    .line 103
    move-object v6, v3

    sget-object v7, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v6, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v3

    sget-object v7, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v6, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v3

    sget-object v7, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v6, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v3

    sget-object v7, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v6, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v3

    sget-object v7, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v6, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v3

    sget-object v7, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v6, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v3

    sget-object v7, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v6, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v3

    sget-object v7, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v6, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v3

    sget-object v7, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v6, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v3

    sget-object v7, Lcom/google/zxing/BarcodeFormat;->RSS_14:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v6, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v3

    sget-object v7, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v6, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    :cond_0
    const/4 v6, 0x1

    :goto_2
    move v5, v6

    .line 116
    .local v5, "addOneDReader":Z
    move v6, v5

    if-eqz v6, :cond_1

    move v6, v2

    if-nez v6, :cond_1

    .line 117
    move-object v6, v4

    new-instance v7, Lcom/google/zxing/oned/MultiFormatOneDReader;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v1

    invoke-direct {v8, v9}, Lcom/google/zxing/oned/MultiFormatOneDReader;-><init>(Ljava/util/Map;)V

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 119
    :cond_1
    move-object v6, v3

    sget-object v7, Lcom/google/zxing/BarcodeFormat;->QR_CODE:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v6, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 120
    move-object v6, v4

    new-instance v7, Lcom/google/zxing/qrcode/QRCodeReader;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Lcom/google/zxing/qrcode/QRCodeReader;-><init>()V

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 122
    :cond_2
    move-object v6, v3

    sget-object v7, Lcom/google/zxing/BarcodeFormat;->DATA_MATRIX:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v6, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 123
    move-object v6, v4

    new-instance v7, Lcom/google/zxing/datamatrix/DataMatrixReader;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Lcom/google/zxing/datamatrix/DataMatrixReader;-><init>()V

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 125
    :cond_3
    move-object v6, v3

    sget-object v7, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v6, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 126
    move-object v6, v4

    new-instance v7, Lcom/google/zxing/aztec/AztecReader;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Lcom/google/zxing/aztec/AztecReader;-><init>()V

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 128
    :cond_4
    move-object v6, v3

    sget-object v7, Lcom/google/zxing/BarcodeFormat;->PDF_417:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v6, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 129
    move-object v6, v4

    new-instance v7, Lcom/google/zxing/pdf417/PDF417Reader;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Lcom/google/zxing/pdf417/PDF417Reader;-><init>()V

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 131
    :cond_5
    move-object v6, v3

    sget-object v7, Lcom/google/zxing/BarcodeFormat;->MAXICODE:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v6, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 132
    move-object v6, v4

    new-instance v7, Lcom/google/zxing/maxicode/MaxiCodeReader;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Lcom/google/zxing/maxicode/MaxiCodeReader;-><init>()V

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 135
    :cond_6
    move v6, v5

    if-eqz v6, :cond_7

    move v6, v2

    if-eqz v6, :cond_7

    .line 136
    move-object v6, v4

    new-instance v7, Lcom/google/zxing/oned/MultiFormatOneDReader;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v1

    invoke-direct {v8, v9}, Lcom/google/zxing/oned/MultiFormatOneDReader;-><init>(Ljava/util/Map;)V

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 139
    .end local v5    # "addOneDReader":Z
    :cond_7
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 140
    move v6, v2

    if-nez v6, :cond_8

    .line 141
    move-object v6, v4

    new-instance v7, Lcom/google/zxing/oned/MultiFormatOneDReader;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v1

    invoke-direct {v8, v9}, Lcom/google/zxing/oned/MultiFormatOneDReader;-><init>(Ljava/util/Map;)V

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 144
    :cond_8
    move-object v6, v4

    new-instance v7, Lcom/google/zxing/qrcode/QRCodeReader;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Lcom/google/zxing/qrcode/QRCodeReader;-><init>()V

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 145
    move-object v6, v4

    new-instance v7, Lcom/google/zxing/datamatrix/DataMatrixReader;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Lcom/google/zxing/datamatrix/DataMatrixReader;-><init>()V

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 146
    move-object v6, v4

    new-instance v7, Lcom/google/zxing/aztec/AztecReader;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Lcom/google/zxing/aztec/AztecReader;-><init>()V

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 147
    move-object v6, v4

    new-instance v7, Lcom/google/zxing/pdf417/PDF417Reader;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Lcom/google/zxing/pdf417/PDF417Reader;-><init>()V

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 148
    move-object v6, v4

    new-instance v7, Lcom/google/zxing/maxicode/MaxiCodeReader;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Lcom/google/zxing/maxicode/MaxiCodeReader;-><init>()V

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 150
    move v6, v2

    if-eqz v6, :cond_9

    .line 151
    move-object v6, v4

    new-instance v7, Lcom/google/zxing/oned/MultiFormatOneDReader;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v1

    invoke-direct {v8, v9}, Lcom/google/zxing/oned/MultiFormatOneDReader;-><init>(Ljava/util/Map;)V

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 154
    :cond_9
    move-object v6, v0

    move-object v7, v4

    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result v8

    new-array v8, v8, [Lcom/google/zxing/Reader;

    invoke-interface {v7, v8}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/google/zxing/Reader;

    iput-object v7, v6, Lcom/google/zxing/MultiFormatReader;->readers:[Lcom/google/zxing/Reader;

    .line 155
    return-void

    .line 98
    .end local v2    # "tryHarder":Z
    .end local v3    # "formats":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/BarcodeFormat;>;"
    .end local v4    # "readers":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/Reader;>;"
    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 99
    .restart local v2    # "tryHarder":Z
    :cond_b
    move-object v6, v1

    sget-object v7, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Collection;

    goto/16 :goto_1

    .line 103
    .restart local v3    # "formats":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/BarcodeFormat;>;"
    .restart local v4    # "readers":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/Reader;>;"
    :cond_c
    const/4 v6, 0x0

    goto/16 :goto_2
.end method
