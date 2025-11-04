.class public final Lcom/google/zxing/client/result/ProductResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "ProductResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/ProductResultParser;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 4

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/ProductResultParser;
    move-object v1, p1

    .local v1, "x0":Lcom/google/zxing/Result;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/zxing/client/result/ProductResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ProductParsedResult;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/zxing/client/result/ProductResultParser;
    return-object v0
.end method

.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ProductParsedResult;
    .locals 12

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/ProductResultParser;
    move-object v1, p1

    .local v1, "result":Lcom/google/zxing/Result;
    move-object v7, v1

    invoke-virtual {v7}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v7

    move-object v2, v7

    .line 34
    .local v2, "format":Lcom/google/zxing/BarcodeFormat;
    move-object v7, v2

    sget-object v8, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    if-eq v7, v8, :cond_0

    move-object v7, v2

    sget-object v8, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    if-eq v7, v8, :cond_0

    move-object v7, v2

    sget-object v8, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    if-eq v7, v8, :cond_0

    move-object v7, v2

    sget-object v8, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    if-eq v7, v8, :cond_0

    .line 36
    const/4 v7, 0x0

    move-object v0, v7

    .line 56
    .end local v0    # "this":Lcom/google/zxing/client/result/ProductResultParser;
    :goto_0
    return-object v0

    .line 38
    .restart local v0    # "this":Lcom/google/zxing/client/result/ProductResultParser;
    :cond_0
    move-object v7, v1

    invoke-static {v7}, Lcom/google/zxing/client/result/ProductResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 39
    .local v3, "rawText":Ljava/lang/String;
    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move v4, v7

    .line 40
    .local v4, "length":I
    const/4 v7, 0x0

    move v5, v7

    .local v5, "x":I
    :goto_1
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_3

    .line 41
    move-object v7, v3

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v6, v7

    .line 42
    .local v6, "c":C
    move v7, v6

    const/16 v8, 0x30

    if-lt v7, v8, :cond_1

    move v7, v6

    const/16 v8, 0x39

    if-le v7, v8, :cond_2

    .line 43
    :cond_1
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_0

    .line 40
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 50
    .end local v6    # "c":C
    :cond_3
    move-object v7, v2

    sget-object v8, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    if-ne v7, v8, :cond_4

    .line 51
    move-object v7, v3

    invoke-static {v7}, Lcom/google/zxing/oned/UPCEReader;->convertUPCEtoUPCA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 56
    .local v5, "normalizedProductID":Ljava/lang/String;
    :goto_2
    new-instance v7, Lcom/google/zxing/client/result/ProductParsedResult;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v3

    move-object v10, v5

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/client/result/ProductParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v7

    goto :goto_0

    .line 53
    .local v5, "x":I
    :cond_4
    move-object v7, v3

    move-object v5, v7

    .local v5, "normalizedProductID":Ljava/lang/String;
    goto :goto_2
.end method
