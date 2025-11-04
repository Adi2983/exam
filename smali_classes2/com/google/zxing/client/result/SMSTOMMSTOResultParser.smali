.class public final Lcom/google/zxing/client/result/SMSTOMMSTOResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "SMSTOMMSTOResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/SMSTOMMSTOResultParser;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 4

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/SMSTOMMSTOResultParser;
    move-object v1, p1

    .local v1, "x0":Lcom/google/zxing/Result;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/zxing/client/result/SMSTOMMSTOResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/SMSParsedResult;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/zxing/client/result/SMSTOMMSTOResultParser;
    return-object v0
.end method

.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/SMSParsedResult;
    .locals 13

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/SMSTOMMSTOResultParser;
    move-object v1, p1

    .local v1, "result":Lcom/google/zxing/Result;
    move-object v6, v1

    invoke-static {v6}, Lcom/google/zxing/client/result/SMSTOMMSTOResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 36
    .local v2, "rawText":Ljava/lang/String;
    move-object v6, v2

    const-string/jumbo v7, "smsto:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v2

    const-string/jumbo v7, "SMSTO:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v2

    const-string/jumbo v7, "mmsto:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v2

    const-string/jumbo v7, "MMSTO:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 38
    const/4 v6, 0x0

    move-object v0, v6

    .line 49
    .end local v0    # "this":Lcom/google/zxing/client/result/SMSTOMMSTOResultParser;
    :goto_0
    return-object v0

    .line 42
    .restart local v0    # "this":Lcom/google/zxing/client/result/SMSTOMMSTOResultParser;
    :cond_0
    move-object v6, v2

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 43
    .local v3, "number":Ljava/lang/String;
    const/4 v6, 0x0

    move-object v4, v6

    .line 44
    .local v4, "body":Ljava/lang/String;
    move-object v6, v3

    const/16 v7, 0x3a

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    move v5, v6

    .line 45
    .local v5, "bodyStart":I
    move v6, v5

    if-ltz v6, :cond_1

    .line 46
    move-object v6, v3

    move v7, v5

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 47
    move-object v6, v3

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 49
    :cond_1
    new-instance v6, Lcom/google/zxing/client/result/SMSParsedResult;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v11, v4

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/google/zxing/client/result/SMSParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    goto :goto_0
.end method
