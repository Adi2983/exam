.class public final Lcom/google/zxing/client/result/WifiResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "WifiResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/WifiResultParser;
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

    .local v0, "this":Lcom/google/zxing/client/result/WifiResultParser;
    move-object v1, p1

    .local v1, "x0":Lcom/google/zxing/Result;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/zxing/client/result/WifiResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/WifiParsedResult;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/zxing/client/result/WifiResultParser;
    return-object v0
.end method

.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/WifiParsedResult;
    .locals 14

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/WifiResultParser;
    move-object v1, p1

    .local v1, "result":Lcom/google/zxing/Result;
    move-object v7, v1

    invoke-static {v7}, Lcom/google/zxing/client/result/WifiResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 36
    .local v2, "rawText":Ljava/lang/String;
    move-object v7, v2

    const-string/jumbo v8, "WIFI:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 37
    const/4 v7, 0x0

    move-object v0, v7

    .line 49
    .end local v0    # "this":Lcom/google/zxing/client/result/WifiResultParser;
    :goto_0
    return-object v0

    .line 39
    .restart local v0    # "this":Lcom/google/zxing/client/result/WifiResultParser;
    :cond_0
    const-string/jumbo v7, "S:"

    move-object v8, v2

    const/16 v9, 0x3b

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 40
    .local v3, "ssid":Ljava/lang/String;
    move-object v7, v3

    if-eqz v7, :cond_1

    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    .line 41
    :cond_1
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_0

    .line 43
    :cond_2
    const-string/jumbo v7, "P:"

    move-object v8, v2

    const/16 v9, 0x3b

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 44
    .local v4, "pass":Ljava/lang/String;
    const-string/jumbo v7, "T:"

    move-object v8, v2

    const/16 v9, 0x3b

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 45
    .local v5, "type":Ljava/lang/String;
    move-object v7, v5

    if-nez v7, :cond_3

    .line 46
    const-string/jumbo v7, "nopass"

    move-object v5, v7

    .line 48
    :cond_3
    const-string/jumbo v7, "B:"

    move-object v8, v2

    const/16 v9, 0x3b

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Lcom/google/zxing/client/result/WifiResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    move v6, v7

    .line 49
    .local v6, "hidden":Z
    new-instance v7, Lcom/google/zxing/client/result/WifiParsedResult;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v5

    move-object v10, v3

    move-object v11, v4

    move v12, v6

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/google/zxing/client/result/WifiParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v0, v7

    goto :goto_0
.end method
