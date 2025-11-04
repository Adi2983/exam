.class public final Lcom/google/zxing/client/result/SMTPResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "SMTPResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/SMTPResultParser;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/EmailAddressParsedResult;
    .locals 15

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/SMTPResultParser;
    move-object/from16 v1, p1

    .local v1, "result":Lcom/google/zxing/Result;
    move-object v8, v1

    invoke-static {v8}, Lcom/google/zxing/client/result/SMTPResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 34
    .local v2, "rawText":Ljava/lang/String;
    move-object v8, v2

    const-string/jumbo v9, "smtp:"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    move-object v8, v2

    const-string/jumbo v9, "SMTP:"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 35
    const/4 v8, 0x0

    move-object v0, v8

    .line 51
    .end local v0    # "this":Lcom/google/zxing/client/result/SMTPResultParser;
    :goto_0
    return-object v0

    .line 37
    .restart local v0    # "this":Lcom/google/zxing/client/result/SMTPResultParser;
    :cond_0
    move-object v8, v2

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 38
    .local v3, "emailAddress":Ljava/lang/String;
    const/4 v8, 0x0

    move-object v4, v8

    .line 39
    .local v4, "subject":Ljava/lang/String;
    const/4 v8, 0x0

    move-object v5, v8

    .line 40
    .local v5, "body":Ljava/lang/String;
    move-object v8, v3

    const/16 v9, 0x3a

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    move v6, v8

    .line 41
    .local v6, "colon":I
    move v8, v6

    if-ltz v8, :cond_1

    .line 42
    move-object v8, v3

    move v9, v6

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 43
    move-object v8, v3

    const/4 v9, 0x0

    move v10, v6

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 44
    move-object v8, v4

    const/16 v9, 0x3a

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    move v6, v8

    .line 45
    move v8, v6

    if-ltz v8, :cond_1

    .line 46
    move-object v8, v4

    move v9, v6

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 47
    move-object v8, v4

    const/4 v9, 0x0

    move v10, v6

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 50
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mailto:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 51
    .local v7, "mailtoURI":Ljava/lang/String;
    new-instance v8, Lcom/google/zxing/client/result/EmailAddressParsedResult;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    move-object v13, v7

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/google/zxing/client/result/EmailAddressParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v8

    goto :goto_0
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 4

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/SMTPResultParser;
    move-object v1, p1

    .local v1, "x0":Lcom/google/zxing/Result;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/zxing/client/result/SMTPResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/EmailAddressParsedResult;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/zxing/client/result/SMTPResultParser;
    return-object v0
.end method
