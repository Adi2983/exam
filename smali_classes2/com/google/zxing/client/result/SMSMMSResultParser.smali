.class public final Lcom/google/zxing/client/result/SMSMMSResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "SMSMMSResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/SMSMMSResultParser;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method private static addNumberVia(Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "numbers":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object v1, p1

    .local v1, "vias":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object v2, p2

    .local v2, "numberPart":Ljava/lang/String;
    move-object v6, v2

    const/16 v7, 0x3b

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    move v3, v6

    .line 93
    .local v3, "numberEnd":I
    move v6, v3

    if-gez v6, :cond_0

    .line 94
    move-object v6, v0

    move-object v7, v2

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 95
    move-object v6, v1

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 107
    :goto_0
    return-void

    .line 97
    :cond_0
    move-object v6, v0

    move-object v7, v2

    const/4 v8, 0x0

    move v9, v3

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 98
    move-object v6, v2

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 100
    .local v4, "maybeVia":Ljava/lang/String;
    move-object v6, v4

    const-string/jumbo v7, "via="

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 101
    move-object v6, v4

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 105
    .local v5, "via":Ljava/lang/String;
    :goto_1
    move-object v6, v1

    move-object v7, v5

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_0

    .line 103
    .end local v5    # "via":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    move-object v5, v6

    .restart local v5    # "via":Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 4

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/SMSMMSResultParser;
    move-object v1, p1

    .local v1, "x0":Lcom/google/zxing/Result;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/zxing/client/result/SMSMMSResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/SMSParsedResult;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/zxing/client/result/SMSMMSResultParser;
    return-object v0
.end method

.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/SMSParsedResult;
    .locals 22

    .prologue
    .line 45
    move-object/from16 v1, p0

    .local v1, "this":Lcom/google/zxing/client/result/SMSMMSResultParser;
    move-object/from16 v2, p1

    .local v2, "result":Lcom/google/zxing/Result;
    move-object v15, v2

    invoke-static {v15}, Lcom/google/zxing/client/result/SMSMMSResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v15

    move-object v3, v15

    .line 46
    .local v3, "rawText":Ljava/lang/String;
    move-object v15, v3

    const-string/jumbo v16, "sms:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_0

    move-object v15, v3

    const-string/jumbo v16, "SMS:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_0

    move-object v15, v3

    const-string/jumbo v16, "mms:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_0

    move-object v15, v3

    const-string/jumbo v16, "MMS:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_0

    .line 48
    const/4 v15, 0x0

    move-object v1, v15

    .line 83
    .end local v1    # "this":Lcom/google/zxing/client/result/SMSMMSResultParser;
    :goto_0
    return-object v1

    .line 52
    .restart local v1    # "this":Lcom/google/zxing/client/result/SMSMMSResultParser;
    :cond_0
    move-object v15, v3

    invoke-static {v15}, Lcom/google/zxing/client/result/SMSMMSResultParser;->parseNameValuePairs(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v15

    move-object v4, v15

    .line 53
    .local v4, "nameValuePairs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v15, 0x0

    move-object v5, v15

    .line 54
    .local v5, "subject":Ljava/lang/String;
    const/4 v15, 0x0

    move-object v6, v15

    .line 55
    .local v6, "body":Ljava/lang/String;
    const/4 v15, 0x0

    move v7, v15

    .line 56
    .local v7, "querySyntax":Z
    move-object v15, v4

    if-eqz v15, :cond_1

    move-object v15, v4

    invoke-interface {v15}, Ljava/util/Map;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_1

    .line 57
    move-object v15, v4

    const-string/jumbo v16, "subject"

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object v5, v15

    .line 58
    move-object v15, v4

    const-string/jumbo v16, "body"

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object v6, v15

    .line 59
    const/4 v15, 0x1

    move v7, v15

    .line 63
    :cond_1
    move-object v15, v3

    const/16 v16, 0x3f

    const/16 v17, 0x4

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->indexOf(II)I

    move-result v15

    move v8, v15

    .line 66
    .local v8, "queryStart":I
    move v15, v8

    if-ltz v15, :cond_2

    move v15, v7

    if-nez v15, :cond_3

    .line 67
    :cond_2
    move-object v15, v3

    const/16 v16, 0x4

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    move-object v9, v15

    .line 72
    .local v9, "smsURIWithoutQuery":Ljava/lang/String;
    :goto_1
    const/4 v15, -0x1

    move v10, v15

    .line 74
    .local v10, "lastComma":I
    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    const/16 v17, 0x1

    invoke-direct/range {v16 .. v17}, Ljava/util/ArrayList;-><init>(I)V

    move-object v12, v15

    .line 75
    .local v12, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    const/16 v17, 0x1

    invoke-direct/range {v16 .. v17}, Ljava/util/ArrayList;-><init>(I)V

    move-object v13, v15

    .line 76
    .local v13, "vias":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    move-object v15, v9

    const/16 v16, 0x2c

    move/from16 v17, v10

    const/16 v18, 0x1

    add-int/lit8 v17, v17, 0x1

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->indexOf(II)I

    move-result v15

    move/from16 v21, v15

    move/from16 v15, v21

    move/from16 v16, v21

    move/from16 v11, v16

    .local v11, "comma":I
    move/from16 v16, v10

    move/from16 v0, v16

    if-le v15, v0, :cond_4

    .line 77
    move-object v15, v9

    move/from16 v16, v10

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    move/from16 v17, v11

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    move-object v14, v15

    .line 78
    .local v14, "numberPart":Ljava/lang/String;
    move-object v15, v12

    move-object/from16 v16, v13

    move-object/from16 v17, v14

    invoke-static/range {v15 .. v17}, Lcom/google/zxing/client/result/SMSMMSResultParser;->addNumberVia(Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;)V

    .line 79
    move v15, v11

    move v10, v15

    .line 80
    goto :goto_2

    .line 69
    .end local v9    # "smsURIWithoutQuery":Ljava/lang/String;
    .end local v10    # "lastComma":I
    .end local v11    # "comma":I
    .end local v12    # "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "vias":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "numberPart":Ljava/lang/String;
    :cond_3
    move-object v15, v3

    const/16 v16, 0x4

    move/from16 v17, v8

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    move-object v9, v15

    .restart local v9    # "smsURIWithoutQuery":Ljava/lang/String;
    goto :goto_1

    .line 81
    .restart local v10    # "lastComma":I
    .restart local v11    # "comma":I
    .restart local v12    # "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "vias":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    move-object v15, v12

    move-object/from16 v16, v13

    move-object/from16 v17, v9

    move/from16 v18, v10

    const/16 v19, 0x1

    add-int/lit8 v18, v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v15 .. v17}, Lcom/google/zxing/client/result/SMSMMSResultParser;->addNumberVia(Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/String;)V

    .line 83
    new-instance v15, Lcom/google/zxing/client/result/SMSParsedResult;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    move-object/from16 v17, v12

    move-object/from16 v18, v12

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Ljava/lang/String;

    move-object/from16 v18, v13

    move-object/from16 v19, v13

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/String;

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    invoke-direct/range {v16 .. v20}, Lcom/google/zxing/client/result/SMSParsedResult;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v15

    goto/16 :goto_0
.end method
