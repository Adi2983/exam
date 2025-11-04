.class public final Lcom/google/zxing/client/result/ISBNResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "ISBNResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/ISBNResultParser;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ISBNParsedResult;
    .locals 9

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/ISBNResultParser;
    move-object v1, p1

    .local v1, "result":Lcom/google/zxing/Result;
    move-object v5, v1

    invoke-virtual {v5}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v5

    move-object v2, v5

    .line 35
    .local v2, "format":Lcom/google/zxing/BarcodeFormat;
    move-object v5, v2

    sget-object v6, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    if-eq v5, v6, :cond_0

    .line 36
    const/4 v5, 0x0

    move-object v0, v5

    .line 47
    .end local v0    # "this":Lcom/google/zxing/client/result/ISBNResultParser;
    :goto_0
    return-object v0

    .line 38
    .restart local v0    # "this":Lcom/google/zxing/client/result/ISBNResultParser;
    :cond_0
    move-object v5, v1

    invoke-static {v5}, Lcom/google/zxing/client/result/ISBNResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 39
    .local v3, "rawText":Ljava/lang/String;
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v4, v5

    .line 40
    .local v4, "length":I
    move v5, v4

    const/16 v6, 0xd

    if-eq v5, v6, :cond_1

    .line 41
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    .line 43
    :cond_1
    move-object v5, v3

    const-string/jumbo v6, "978"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    move-object v5, v3

    const-string/jumbo v6, "979"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 44
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    .line 47
    :cond_2
    new-instance v5, Lcom/google/zxing/client/result/ISBNParsedResult;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v3

    invoke-direct {v6, v7}, Lcom/google/zxing/client/result/ISBNParsedResult;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    goto :goto_0
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 4

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/ISBNResultParser;
    move-object v1, p1

    .local v1, "x0":Lcom/google/zxing/Result;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/zxing/client/result/ISBNResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ISBNParsedResult;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/zxing/client/result/ISBNResultParser;
    return-object v0
.end method
