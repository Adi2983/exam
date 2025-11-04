.class public final Lcom/google/zxing/client/result/URLTOResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "URLTOResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/URLTOResultParser;
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

    .local v0, "this":Lcom/google/zxing/client/result/URLTOResultParser;
    move-object v1, p1

    .local v1, "x0":Lcom/google/zxing/Result;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/zxing/client/result/URLTOResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/URIParsedResult;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/zxing/client/result/URLTOResultParser;
    return-object v0
.end method

.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/URIParsedResult;
    .locals 11

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/URLTOResultParser;
    move-object v1, p1

    .local v1, "result":Lcom/google/zxing/Result;
    move-object v6, v1

    invoke-static {v6}, Lcom/google/zxing/client/result/URLTOResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 33
    .local v2, "rawText":Ljava/lang/String;
    move-object v6, v2

    const-string/jumbo v7, "urlto:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v2

    const-string/jumbo v7, "URLTO:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 34
    const/4 v6, 0x0

    move-object v0, v6

    .line 42
    .end local v0    # "this":Lcom/google/zxing/client/result/URLTOResultParser;
    :goto_0
    return-object v0

    .line 36
    .restart local v0    # "this":Lcom/google/zxing/client/result/URLTOResultParser;
    :cond_0
    move-object v6, v2

    const/16 v7, 0x3a

    const/4 v8, 0x6

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    move v3, v6

    .line 37
    .local v3, "titleEnd":I
    move v6, v3

    if-gez v6, :cond_1

    .line 38
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    .line 40
    :cond_1
    move v6, v3

    const/4 v7, 0x6

    if-gt v6, v7, :cond_2

    const/4 v6, 0x0

    :goto_1
    move-object v4, v6

    .line 41
    .local v4, "title":Ljava/lang/String;
    move-object v6, v2

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 42
    .local v5, "uri":Ljava/lang/String;
    new-instance v6, Lcom/google/zxing/client/result/URIParsedResult;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v5

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/client/result/URIParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    goto :goto_0

    .line 40
    .end local v4    # "title":Ljava/lang/String;
    .end local v5    # "uri":Ljava/lang/String;
    :cond_2
    move-object v6, v2

    const/4 v7, 0x6

    move v8, v3

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method
