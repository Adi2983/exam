.class public final Lcom/google/zxing/client/result/BookmarkDoCoMoResultParser;
.super Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;
.source "BookmarkDoCoMoResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/BookmarkDoCoMoResultParser;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 4

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/BookmarkDoCoMoResultParser;
    move-object v1, p1

    .local v1, "x0":Lcom/google/zxing/Result;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/zxing/client/result/BookmarkDoCoMoResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/URIParsedResult;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/zxing/client/result/BookmarkDoCoMoResultParser;
    return-object v0
.end method

.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/URIParsedResult;
    .locals 11

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/BookmarkDoCoMoResultParser;
    move-object v1, p1

    .local v1, "result":Lcom/google/zxing/Result;
    move-object v6, v1

    invoke-virtual {v6}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 29
    .local v2, "rawText":Ljava/lang/String;
    move-object v6, v2

    const-string/jumbo v7, "MEBKM:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 30
    const/4 v6, 0x0

    move-object v0, v6

    .line 38
    .end local v0    # "this":Lcom/google/zxing/client/result/BookmarkDoCoMoResultParser;
    :goto_0
    return-object v0

    .line 32
    .restart local v0    # "this":Lcom/google/zxing/client/result/BookmarkDoCoMoResultParser;
    :cond_0
    const-string/jumbo v6, "TITLE:"

    move-object v7, v2

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/google/zxing/client/result/BookmarkDoCoMoResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 33
    .local v3, "title":Ljava/lang/String;
    const-string/jumbo v6, "URL:"

    move-object v7, v2

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/google/zxing/client/result/BookmarkDoCoMoResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 34
    .local v4, "rawUri":[Ljava/lang/String;
    move-object v6, v4

    if-nez v6, :cond_1

    .line 35
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    .line 37
    :cond_1
    move-object v6, v4

    const/4 v7, 0x0

    aget-object v6, v6, v7

    move-object v5, v6

    .line 38
    .local v5, "uri":Ljava/lang/String;
    move-object v6, v5

    invoke-static {v6}, Lcom/google/zxing/client/result/URIResultParser;->isBasicallyValidURI(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Lcom/google/zxing/client/result/URIParsedResult;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v5

    move-object v9, v3

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/client/result/URIParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object v0, v6

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method
