.class public final Lcom/google/zxing/client/result/EmailAddressResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "EmailAddressResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/EmailAddressResultParser;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/EmailAddressParsedResult;
    .locals 16

    .prologue
    .line 33
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/EmailAddressResultParser;
    move-object/from16 v1, p1

    .local v1, "result":Lcom/google/zxing/Result;
    move-object v8, v1

    invoke-static {v8}, Lcom/google/zxing/client/result/EmailAddressResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 35
    .local v2, "rawText":Ljava/lang/String;
    move-object v8, v2

    const-string/jumbo v9, "mailto:"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    move-object v8, v2

    const-string/jumbo v9, "MAILTO:"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 37
    :cond_0
    move-object v8, v2

    const/4 v9, 0x7

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 38
    .local v3, "emailAddress":Ljava/lang/String;
    move-object v8, v3

    const/16 v9, 0x3f

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    move v4, v8

    .line 39
    .local v4, "queryStart":I
    move v8, v4

    if-ltz v8, :cond_1

    .line 40
    move-object v8, v3

    const/4 v9, 0x0

    move v10, v4

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 42
    :cond_1
    move-object v8, v2

    invoke-static {v8}, Lcom/google/zxing/client/result/EmailAddressResultParser;->parseNameValuePairs(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v8

    move-object v5, v8

    .line 43
    .local v5, "nameValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x0

    move-object v6, v8

    .line 44
    .local v6, "subject":Ljava/lang/String;
    const/4 v8, 0x0

    move-object v7, v8

    .line 45
    .local v7, "body":Ljava/lang/String;
    move-object v8, v5

    if-eqz v8, :cond_3

    .line 46
    move-object v8, v3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_2

    .line 47
    move-object v8, v5

    const-string/jumbo v9, "to"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v3, v8

    .line 49
    :cond_2
    move-object v8, v5

    const-string/jumbo v9, "subject"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v6, v8

    .line 50
    move-object v8, v5

    const-string/jumbo v9, "body"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v7, v8

    .line 52
    :cond_3
    new-instance v8, Lcom/google/zxing/client/result/EmailAddressParsedResult;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v3

    move-object v11, v6

    move-object v12, v7

    move-object v13, v2

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/google/zxing/client/result/EmailAddressParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v8

    .line 58
    .end local v0    # "this":Lcom/google/zxing/client/result/EmailAddressResultParser;
    .end local v3    # "emailAddress":Ljava/lang/String;
    .end local v4    # "queryStart":I
    .end local v5    # "nameValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "subject":Ljava/lang/String;
    .end local v7    # "body":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 54
    .restart local v0    # "this":Lcom/google/zxing/client/result/EmailAddressResultParser;
    :cond_4
    move-object v8, v2

    invoke-static {v8}, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;->isBasicallyValidEmailAddress(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 55
    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_0

    .line 57
    :cond_5
    move-object v8, v2

    move-object v3, v8

    .line 58
    .restart local v3    # "emailAddress":Ljava/lang/String;
    new-instance v8, Lcom/google/zxing/client/result/EmailAddressParsedResult;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    move-object v10, v3

    const/4 v11, 0x0

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    move-object v15, v13

    move-object v13, v15

    move-object v14, v15

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "mailto:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v14, v3

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/google/zxing/client/result/EmailAddressParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v8

    goto :goto_0
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 4

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/EmailAddressResultParser;
    move-object v1, p1

    .local v1, "x0":Lcom/google/zxing/Result;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/zxing/client/result/EmailAddressResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/EmailAddressParsedResult;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/zxing/client/result/EmailAddressResultParser;
    return-object v0
.end method
