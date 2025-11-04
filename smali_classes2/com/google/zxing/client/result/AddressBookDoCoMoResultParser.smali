.class public final Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;
.super Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;
.source "AddressBookDoCoMoResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;-><init>()V

    return-void
.end method

.method private static parseName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    move-object v2, v0

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    move v1, v2

    .line 83
    .local v1, "comma":I
    move v2, v1

    if-ltz v2, :cond_0

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v0

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    const/4 v4, 0x0

    move v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 87
    .end local v0    # "name":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "name":Ljava/lang/String;
    :cond_0
    move-object v2, v0

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;
    .locals 30

    .prologue
    .line 40
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;
    move-object/from16 v1, p1

    .local v1, "result":Lcom/google/zxing/Result;
    move-object v13, v1

    invoke-static {v13}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v13

    move-object v2, v13

    .line 41
    .local v2, "rawText":Ljava/lang/String;
    move-object v13, v2

    const-string/jumbo v14, "MECARD:"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 42
    const/4 v13, 0x0

    move-object v0, v13

    .line 65
    .end local v0    # "this":Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;
    :goto_0
    return-object v0

    .line 44
    .restart local v0    # "this":Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;
    :cond_0
    const-string/jumbo v13, "N:"

    move-object v14, v2

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v13

    move-object v3, v13

    .line 45
    .local v3, "rawName":[Ljava/lang/String;
    move-object v13, v3

    if-nez v13, :cond_1

    .line 46
    const/4 v13, 0x0

    move-object v0, v13

    goto :goto_0

    .line 48
    :cond_1
    move-object v13, v3

    const/4 v14, 0x0

    aget-object v13, v13, v14

    invoke-static {v13}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->parseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v4, v13

    .line 49
    .local v4, "name":Ljava/lang/String;
    const-string/jumbo v13, "SOUND:"

    move-object v14, v2

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    move-object v5, v13

    .line 50
    .local v5, "pronunciation":Ljava/lang/String;
    const-string/jumbo v13, "TEL:"

    move-object v14, v2

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v13

    move-object v6, v13

    .line 51
    .local v6, "phoneNumbers":[Ljava/lang/String;
    const-string/jumbo v13, "EMAIL:"

    move-object v14, v2

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v13

    move-object v7, v13

    .line 52
    .local v7, "emails":[Ljava/lang/String;
    const-string/jumbo v13, "NOTE:"

    move-object v14, v2

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    move-object v8, v13

    .line 53
    .local v8, "note":Ljava/lang/String;
    const-string/jumbo v13, "ADR:"

    move-object v14, v2

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v13

    move-object v9, v13

    .line 54
    .local v9, "addresses":[Ljava/lang/String;
    const-string/jumbo v13, "BDAY:"

    move-object v14, v2

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    move-object v10, v13

    .line 55
    .local v10, "birthday":Ljava/lang/String;
    move-object v13, v10

    if-eqz v13, :cond_2

    move-object v13, v10

    const/16 v14, 0x8

    invoke-static {v13, v14}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->isStringOfDigits(Ljava/lang/CharSequence;I)Z

    move-result v13

    if-nez v13, :cond_2

    .line 57
    const/4 v13, 0x0

    move-object v10, v13

    .line 59
    :cond_2
    const-string/jumbo v13, "URL:"

    move-object v14, v2

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    move-object v11, v13

    .line 63
    .local v11, "url":Ljava/lang/String;
    const-string/jumbo v13, "ORG:"

    move-object v14, v2

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    move-object v12, v13

    .line 65
    .local v12, "org":Ljava/lang/String;
    new-instance v13, Lcom/google/zxing/client/result/AddressBookParsedResult;

    move-object/from16 v29, v13

    move-object/from16 v13, v29

    move-object/from16 v14, v29

    move-object v15, v4

    invoke-static {v15}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->maybeWrap(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    const/16 v18, 0x0

    move-object/from16 v19, v7

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v22, v8

    move-object/from16 v23, v9

    const/16 v24, 0x0

    move-object/from16 v25, v12

    move-object/from16 v26, v10

    const/16 v27, 0x0

    move-object/from16 v28, v11

    invoke-direct/range {v14 .. v28}, Lcom/google/zxing/client/result/AddressBookParsedResult;-><init>([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v13

    goto/16 :goto_0
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;
    move-object v1, p1

    .local v1, "x0":Lcom/google/zxing/Result;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;
    return-object v0
.end method
