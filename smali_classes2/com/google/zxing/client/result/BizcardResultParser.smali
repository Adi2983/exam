.class public final Lcom/google/zxing/client/result/BizcardResultParser;
.super Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;
.source "BizcardResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/BizcardResultParser;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;-><init>()V

    return-void
.end method

.method private static buildName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "firstName":Ljava/lang/String;
    move-object v1, p1

    .local v1, "lastName":Ljava/lang/String;
    move-object v2, v0

    if-nez v2, :cond_0

    .line 92
    move-object v2, v1

    move-object v0, v2

    .line 94
    .end local v0    # "firstName":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "firstName":Ljava/lang/String;
    :cond_0
    move-object v2, v1

    if-nez v2, :cond_1

    move-object v2, v0

    :goto_1
    move-object v0, v2

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private static buildPhoneNumbers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 9

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "number1":Ljava/lang/String;
    move-object v1, p1

    .local v1, "number2":Ljava/lang/String;
    move-object v2, p2

    .local v2, "number3":Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const/4 v7, 0x3

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v5

    .line 74
    .local v3, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v5, v0

    if-eqz v5, :cond_0

    .line 75
    move-object v5, v3

    move-object v6, v0

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 77
    :cond_0
    move-object v5, v1

    if-eqz v5, :cond_1

    .line 78
    move-object v5, v3

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 80
    :cond_1
    move-object v5, v2

    if-eqz v5, :cond_2

    .line 81
    move-object v5, v3

    move-object v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 83
    :cond_2
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v4, v5

    .line 84
    .local v4, "size":I
    move v5, v4

    if-nez v5, :cond_3

    .line 85
    const/4 v5, 0x0

    move-object v0, v5

    .line 87
    .end local v0    # "number1":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "number1":Ljava/lang/String;
    :cond_3
    move-object v5, v3

    move v6, v4

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    move-object v0, v5

    goto :goto_0
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;
    .locals 30

    .prologue
    .line 39
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/BizcardResultParser;
    move-object/from16 v1, p1

    .local v1, "result":Lcom/google/zxing/Result;
    move-object v13, v1

    invoke-static {v13}, Lcom/google/zxing/client/result/BizcardResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v13

    move-object v2, v13

    .line 40
    .local v2, "rawText":Ljava/lang/String;
    move-object v13, v2

    const-string/jumbo v14, "BIZCARD:"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 41
    const/4 v13, 0x0

    move-object v0, v13

    .line 54
    .end local v0    # "this":Lcom/google/zxing/client/result/BizcardResultParser;
    :goto_0
    return-object v0

    .line 43
    .restart local v0    # "this":Lcom/google/zxing/client/result/BizcardResultParser;
    :cond_0
    const-string/jumbo v13, "N:"

    move-object v14, v2

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/google/zxing/client/result/BizcardResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    move-object v3, v13

    .line 44
    .local v3, "firstName":Ljava/lang/String;
    const-string/jumbo v13, "X:"

    move-object v14, v2

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/google/zxing/client/result/BizcardResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    move-object v4, v13

    .line 45
    .local v4, "lastName":Ljava/lang/String;
    move-object v13, v3

    move-object v14, v4

    invoke-static {v13, v14}, Lcom/google/zxing/client/result/BizcardResultParser;->buildName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v5, v13

    .line 46
    .local v5, "fullName":Ljava/lang/String;
    const-string/jumbo v13, "T:"

    move-object v14, v2

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/google/zxing/client/result/BizcardResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    move-object v6, v13

    .line 47
    .local v6, "title":Ljava/lang/String;
    const-string/jumbo v13, "C:"

    move-object v14, v2

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/google/zxing/client/result/BizcardResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    move-object v7, v13

    .line 48
    .local v7, "org":Ljava/lang/String;
    const-string/jumbo v13, "A:"

    move-object v14, v2

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/google/zxing/client/result/BizcardResultParser;->matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v13

    move-object v8, v13

    .line 49
    .local v8, "addresses":[Ljava/lang/String;
    const-string/jumbo v13, "B:"

    move-object v14, v2

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/google/zxing/client/result/BizcardResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    move-object v9, v13

    .line 50
    .local v9, "phoneNumber1":Ljava/lang/String;
    const-string/jumbo v13, "M:"

    move-object v14, v2

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/google/zxing/client/result/BizcardResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    move-object v10, v13

    .line 51
    .local v10, "phoneNumber2":Ljava/lang/String;
    const-string/jumbo v13, "F:"

    move-object v14, v2

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/google/zxing/client/result/BizcardResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    move-object v11, v13

    .line 52
    .local v11, "phoneNumber3":Ljava/lang/String;
    const-string/jumbo v13, "E:"

    move-object v14, v2

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/google/zxing/client/result/BizcardResultParser;->matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    move-object v12, v13

    .line 54
    .local v12, "email":Ljava/lang/String;
    new-instance v13, Lcom/google/zxing/client/result/AddressBookParsedResult;

    move-object/from16 v29, v13

    move-object/from16 v13, v29

    move-object/from16 v14, v29

    move-object v15, v5

    invoke-static {v15}, Lcom/google/zxing/client/result/BizcardResultParser;->maybeWrap(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    invoke-static/range {v17 .. v19}, Lcom/google/zxing/client/result/BizcardResultParser;->buildPhoneNumbers(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v19, v12

    invoke-static/range {v19 .. v19}, Lcom/google/zxing/client/result/BizcardResultParser;->maybeWrap(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v23, v8

    const/16 v24, 0x0

    move-object/from16 v25, v7

    const/16 v26, 0x0

    move-object/from16 v27, v6

    const/16 v28, 0x0

    invoke-direct/range {v14 .. v28}, Lcom/google/zxing/client/result/AddressBookParsedResult;-><init>([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v13

    goto/16 :goto_0
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 4

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/BizcardResultParser;
    move-object v1, p1

    .local v1, "x0":Lcom/google/zxing/Result;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/zxing/client/result/BizcardResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/zxing/client/result/BizcardResultParser;
    return-object v0
.end method
