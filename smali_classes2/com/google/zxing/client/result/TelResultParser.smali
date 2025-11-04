.class public final Lcom/google/zxing/client/result/TelResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "TelResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/TelResultParser;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 4

    .prologue
    .line 26
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/TelResultParser;
    move-object v1, p1

    .local v1, "x0":Lcom/google/zxing/Result;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/zxing/client/result/TelResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/TelParsedResult;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/zxing/client/result/TelResultParser;
    return-object v0
.end method

.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/TelParsedResult;
    .locals 12

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/TelResultParser;
    move-object v1, p1

    .local v1, "result":Lcom/google/zxing/Result;
    move-object v6, v1

    invoke-static {v6}, Lcom/google/zxing/client/result/TelResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 31
    .local v2, "rawText":Ljava/lang/String;
    move-object v6, v2

    const-string/jumbo v7, "tel:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v2

    const-string/jumbo v7, "TEL:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 32
    const/4 v6, 0x0

    move-object v0, v6

    .line 39
    .end local v0    # "this":Lcom/google/zxing/client/result/TelResultParser;
    :goto_0
    return-object v0

    .line 35
    .restart local v0    # "this":Lcom/google/zxing/client/result/TelResultParser;
    :cond_0
    move-object v6, v2

    const-string/jumbo v7, "TEL:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "tel:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v2

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    move-object v3, v6

    .line 37
    .local v3, "telURI":Ljava/lang/String;
    move-object v6, v2

    const/16 v7, 0x3f

    const/4 v8, 0x4

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    move v4, v6

    .line 38
    .local v4, "queryStart":I
    move v6, v4

    if-gez v6, :cond_2

    move-object v6, v2

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    :goto_2
    move-object v5, v6

    .line 39
    .local v5, "number":Ljava/lang/String;
    new-instance v6, Lcom/google/zxing/client/result/TelParsedResult;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v5

    move-object v9, v3

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Lcom/google/zxing/client/result/TelParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    goto :goto_0

    .line 35
    .end local v3    # "telURI":Ljava/lang/String;
    .end local v4    # "queryStart":I
    .end local v5    # "number":Ljava/lang/String;
    :cond_1
    move-object v6, v2

    goto :goto_1

    .line 38
    .restart local v3    # "telURI":Ljava/lang/String;
    .restart local v4    # "queryStart":I
    :cond_2
    move-object v6, v2

    const/4 v7, 0x4

    move v8, v4

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_2
.end method
