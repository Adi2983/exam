.class public final Lcom/google/zxing/client/result/AddressBookAUResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "AddressBookAUResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/AddressBookAUResultParser;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method private static matchMultipleValuePrefix(Ljava/lang/String;ILjava/lang/String;Z)[Ljava/lang/String;
    .locals 12

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "prefix":Ljava/lang/String;
    move v1, p1

    .local v1, "max":I
    move-object v2, p2

    .local v2, "rawText":Ljava/lang/String;
    move v3, p3

    .local v3, "trim":Z
    const/4 v7, 0x0

    move-object v4, v7

    .line 73
    .local v4, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    move v5, v7

    .local v5, "i":I
    :goto_0
    move v7, v5

    move v8, v1

    if-gt v7, v8, :cond_0

    .line 74
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v2

    const/16 v9, 0xd

    move v10, v3

    invoke-static {v7, v8, v9, v10}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 75
    .local v6, "value":Ljava/lang/String;
    move-object v7, v6

    if-nez v7, :cond_1

    .line 76
    .line 83
    .end local v6    # "value":Ljava/lang/String;
    :cond_0
    move-object v7, v4

    if-nez v7, :cond_3

    .line 84
    const/4 v7, 0x0

    move-object v0, v7

    .line 86
    .end local v0    # "prefix":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 78
    .restart local v0    # "prefix":Ljava/lang/String;
    .restart local v6    # "value":Ljava/lang/String;
    :cond_1
    move-object v7, v4

    if-nez v7, :cond_2

    .line 79
    new-instance v7, Ljava/util/ArrayList;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move v9, v1

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v7

    .line 81
    :cond_2
    move-object v7, v4

    move-object v8, v6

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 73
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 86
    .end local v6    # "value":Ljava/lang/String;
    :cond_3
    move-object v7, v4

    move-object v8, v4

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    move-object v0, v7

    goto :goto_1
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;
    .locals 27

    .prologue
    .line 36
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/AddressBookAUResultParser;
    move-object/from16 v1, p1

    .local v1, "result":Lcom/google/zxing/Result;
    move-object v10, v1

    invoke-static {v10}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v10

    move-object v2, v10

    .line 38
    .local v2, "rawText":Ljava/lang/String;
    move-object v10, v2

    const-string/jumbo v11, "MEMORY"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v10, v2

    const-string/jumbo v11, "\r\n"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 39
    :cond_0
    const/4 v10, 0x0

    move-object v0, v10

    .line 52
    .end local v0    # "this":Lcom/google/zxing/client/result/AddressBookAUResultParser;
    :goto_0
    return-object v0

    .line 44
    .restart local v0    # "this":Lcom/google/zxing/client/result/AddressBookAUResultParser;
    :cond_1
    const-string/jumbo v10, "NAME1:"

    move-object v11, v2

    const/16 v12, 0xd

    const/4 v13, 0x1

    invoke-static {v10, v11, v12, v13}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v10

    move-object v3, v10

    .line 45
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v10, "NAME2:"

    move-object v11, v2

    const/16 v12, 0xd

    const/4 v13, 0x1

    invoke-static {v10, v11, v12, v13}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v10

    move-object v4, v10

    .line 47
    .local v4, "pronunciation":Ljava/lang/String;
    const-string/jumbo v10, "TEL"

    const/4 v11, 0x3

    move-object v12, v2

    const/4 v13, 0x1

    invoke-static {v10, v11, v12, v13}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->matchMultipleValuePrefix(Ljava/lang/String;ILjava/lang/String;Z)[Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    .line 48
    .local v5, "phoneNumbers":[Ljava/lang/String;
    const-string/jumbo v10, "MAIL"

    const/4 v11, 0x3

    move-object v12, v2

    const/4 v13, 0x1

    invoke-static {v10, v11, v12, v13}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->matchMultipleValuePrefix(Ljava/lang/String;ILjava/lang/String;Z)[Ljava/lang/String;

    move-result-object v10

    move-object v6, v10

    .line 49
    .local v6, "emails":[Ljava/lang/String;
    const-string/jumbo v10, "MEMORY:"

    move-object v11, v2

    const/16 v12, 0xd

    const/4 v13, 0x0

    invoke-static {v10, v11, v12, v13}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    .line 50
    .local v7, "note":Ljava/lang/String;
    const-string/jumbo v10, "ADD:"

    move-object v11, v2

    const/16 v12, 0xd

    const/4 v13, 0x1

    invoke-static {v10, v11, v12, v13}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 51
    .local v8, "address":Ljava/lang/String;
    move-object v10, v8

    if-nez v10, :cond_2

    const/4 v10, 0x0

    :goto_1
    move-object v9, v10

    .line 52
    .local v9, "addresses":[Ljava/lang/String;
    new-instance v10, Lcom/google/zxing/client/result/AddressBookParsedResult;

    move-object/from16 v26, v10

    move-object/from16 v10, v26

    move-object/from16 v11, v26

    move-object v12, v3

    invoke-static {v12}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->maybeWrap(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    move-object v13, v4

    move-object v14, v5

    const/4 v15, 0x0

    move-object/from16 v16, v6

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v19, v7

    move-object/from16 v20, v9

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-direct/range {v11 .. v25}, Lcom/google/zxing/client/result/AddressBookParsedResult;-><init>([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v10

    goto :goto_0

    .line 51
    .end local v9    # "addresses":[Ljava/lang/String;
    :cond_2
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    move-object/from16 v26, v10

    move-object/from16 v10, v26

    move-object/from16 v11, v26

    const/4 v12, 0x0

    move-object v13, v8

    aput-object v13, v11, v12

    goto :goto_1
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 4

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/AddressBookAUResultParser;
    move-object v1, p1

    .local v1, "x0":Lcom/google/zxing/Result;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/zxing/client/result/AddressBookAUResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/zxing/client/result/AddressBookAUResultParser;
    return-object v0
.end method
