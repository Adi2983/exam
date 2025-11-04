.class public final Lcom/google/zxing/oned/UPCAReader;
.super Lcom/google/zxing/oned/UPCEANReader;
.source "UPCAReader.java"


# instance fields
.field private final ean13Reader:Lcom/google/zxing/oned/UPCEANReader;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/UPCAReader;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/zxing/oned/UPCEANReader;-><init>()V

    .line 38
    move-object v1, v0

    new-instance v2, Lcom/google/zxing/oned/EAN13Reader;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/google/zxing/oned/EAN13Reader;-><init>()V

    iput-object v2, v1, Lcom/google/zxing/oned/UPCAReader;->ean13Reader:Lcom/google/zxing/oned/UPCEANReader;

    return-void
.end method

.method private static maybeReturnResult(Lcom/google/zxing/Result;)Lcom/google/zxing/Result;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "result":Lcom/google/zxing/Result;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 79
    .local v1, "text":Ljava/lang/String;
    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-ne v2, v3, :cond_0

    .line 80
    new-instance v2, Lcom/google/zxing/Result;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v1

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v6

    sget-object v7, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    move-object v0, v2

    .end local v0    # "result":Lcom/google/zxing/Result;
    return-object v0

    .line 82
    .restart local v0    # "result":Lcom/google/zxing/Result;
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/UPCAReader;
    move-object v1, p1

    .local v1, "image":Lcom/google/zxing/BinaryBitmap;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/oned/UPCAReader;->ean13Reader:Lcom/google/zxing/oned/UPCEANReader;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/zxing/oned/UPCEANReader;->decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;

    move-result-object v2

    invoke-static {v2}, Lcom/google/zxing/oned/UPCAReader;->maybeReturnResult(Lcom/google/zxing/Result;)Lcom/google/zxing/Result;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/zxing/oned/UPCAReader;
    return-object v0
.end method

.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 6
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
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/UPCAReader;
    move-object v1, p1

    .local v1, "image":Lcom/google/zxing/BinaryBitmap;
    move-object v2, p2

    .local v2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/oned/UPCAReader;->ean13Reader:Lcom/google/zxing/oned/UPCEANReader;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/google/zxing/oned/UPCEANReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v3

    invoke-static {v3}, Lcom/google/zxing/oned/UPCAReader;->maybeReturnResult(Lcom/google/zxing/Result;)Lcom/google/zxing/Result;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/google/zxing/oned/UPCAReader;
    return-object v0
.end method

.method protected decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/UPCAReader;
    move-object v1, p1

    .local v1, "row":Lcom/google/zxing/common/BitArray;
    move-object v2, p2

    .local v2, "startRange":[I
    move-object v3, p3

    .local v3, "resultString":Ljava/lang/StringBuilder;
    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/oned/UPCAReader;->ean13Reader:Lcom/google/zxing/oned/UPCEANReader;

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/zxing/oned/UPCEANReader;->decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I

    move-result v4

    move v0, v4

    .end local v0    # "this":Lcom/google/zxing/oned/UPCAReader;
    return v0
.end method

.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
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
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/UPCAReader;
    move v1, p1

    .local v1, "rowNumber":I
    move-object v2, p2

    .local v2, "row":Lcom/google/zxing/common/BitArray;
    move-object v3, p3

    .local v3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/oned/UPCAReader;->ean13Reader:Lcom/google/zxing/oned/UPCEANReader;

    move v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/zxing/oned/UPCEANReader;->decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v4

    invoke-static {v4}, Lcom/google/zxing/oned/UPCAReader;->maybeReturnResult(Lcom/google/zxing/Result;)Lcom/google/zxing/Result;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/google/zxing/oned/UPCAReader;
    return-object v0
.end method

.method public decodeRow(ILcom/google/zxing/common/BitArray;[ILjava/util/Map;)Lcom/google/zxing/Result;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "[I",
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
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/UPCAReader;
    move v1, p1

    .local v1, "rowNumber":I
    move-object v2, p2

    .local v2, "row":Lcom/google/zxing/common/BitArray;
    move-object v3, p3

    .local v3, "startGuardRange":[I
    move-object v4, p4

    .local v4, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/oned/UPCAReader;->ean13Reader:Lcom/google/zxing/oned/UPCEANReader;

    move v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/zxing/oned/UPCEANReader;->decodeRow(ILcom/google/zxing/common/BitArray;[ILjava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v5

    invoke-static {v5}, Lcom/google/zxing/oned/UPCAReader;->maybeReturnResult(Lcom/google/zxing/Result;)Lcom/google/zxing/Result;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lcom/google/zxing/oned/UPCAReader;
    return-object v0
.end method

.method getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/UPCAReader;
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/oned/UPCAReader;
    return-object v0
.end method
