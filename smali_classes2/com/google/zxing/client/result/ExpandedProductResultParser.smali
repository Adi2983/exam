.class public final Lcom/google/zxing/client/result/ExpandedProductResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "ExpandedProductResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/ExpandedProductResultParser;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method private static findAIvalue(ILjava/lang/String;)Ljava/lang/String;
    .locals 11

    .prologue
    .line 153
    move v0, p0

    .local v0, "i":I
    move-object v1, p1

    .local v1, "rawText":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v7

    .line 154
    .local v2, "buf":Ljava/lang/StringBuilder;
    move-object v7, v1

    move v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v3, v7

    .line 156
    .local v3, "c":C
    move v7, v3

    const/16 v8, 0x28

    if-eq v7, v8, :cond_0

    .line 157
    const/4 v7, 0x0

    move-object v0, v7

    .line 172
    .end local v0    # "i":I
    :goto_0
    return-object v0

    .line 160
    .restart local v0    # "i":I
    :cond_0
    move-object v7, v1

    move v8, v0

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 162
    .local v4, "rawTextAux":Ljava/lang/String;
    const/4 v7, 0x0

    move v5, v7

    .local v5, "index":I
    :goto_1
    move v7, v5

    move-object v8, v4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 163
    move-object v7, v4

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v6, v7

    .line 164
    .local v6, "currentChar":C
    move v7, v6

    const/16 v8, 0x29

    if-ne v7, v8, :cond_1

    .line 165
    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    goto :goto_0

    .line 166
    :cond_1
    move v7, v6

    const/16 v8, 0x30

    if-lt v7, v8, :cond_2

    move v7, v6

    const/16 v8, 0x39

    if-gt v7, v8, :cond_2

    .line 167
    move-object v7, v2

    move v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 162
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 169
    :cond_2
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_0

    .line 172
    .end local v6    # "currentChar":C
    :cond_3
    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    goto :goto_0
.end method

.method private static findValue(ILjava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 176
    move v0, p0

    .local v0, "i":I
    move-object v1, p1

    .local v1, "rawText":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v6

    .line 177
    .local v2, "buf":Ljava/lang/StringBuilder;
    move-object v6, v1

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 179
    .local v3, "rawTextAux":Ljava/lang/String;
    const/4 v6, 0x0

    move v4, v6

    .local v4, "index":I
    :goto_0
    move v6, v4

    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 180
    move-object v6, v3

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v5, v6

    .line 181
    .local v5, "c":C
    move v6, v5

    const/16 v7, 0x28

    if-ne v6, v7, :cond_0

    .line 184
    move v6, v4

    move-object v7, v3

    invoke-static {v6, v7}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->findAIvalue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    .line 185
    move-object v6, v2

    const/16 v7, 0x28

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 179
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 190
    :cond_0
    move-object v6, v2

    move v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    goto :goto_1

    .line 193
    .end local v5    # "c":C
    :cond_1
    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "i":I
    return-object v0
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ExpandedProductParsedResult;
    .locals 40

    .prologue
    .line 45
    move-object/from16 v2, p0

    .local v2, "this":Lcom/google/zxing/client/result/ExpandedProductResultParser;
    move-object/from16 v3, p1

    .local v3, "result":Lcom/google/zxing/Result;
    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v23

    move-object/from16 v4, v23

    .line 46
    .local v4, "format":Lcom/google/zxing/BarcodeFormat;
    move-object/from16 v23, v4

    sget-object v24, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 48
    const/16 v23, 0x0

    move-object/from16 v2, v23

    .line 136
    .end local v2    # "this":Lcom/google/zxing/client/result/ExpandedProductResultParser;
    :goto_0
    return-object v2

    .line 51
    .restart local v2    # "this":Lcom/google/zxing/client/result/ExpandedProductResultParser;
    :cond_0
    move-object/from16 v23, v3

    invoke-static/range {v23 .. v23}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v5, v23

    .line 52
    .local v5, "rawText":Ljava/lang/String;
    move-object/from16 v23, v5

    if-nez v23, :cond_1

    .line 54
    const/16 v23, 0x0

    move-object/from16 v2, v23

    goto :goto_0

    .line 57
    :cond_1
    const/16 v23, 0x0

    move-object/from16 v6, v23

    .line 58
    .local v6, "productID":Ljava/lang/String;
    const/16 v23, 0x0

    move-object/from16 v7, v23

    .line 59
    .local v7, "sscc":Ljava/lang/String;
    const/16 v23, 0x0

    move-object/from16 v8, v23

    .line 60
    .local v8, "lotNumber":Ljava/lang/String;
    const/16 v23, 0x0

    move-object/from16 v9, v23

    .line 61
    .local v9, "productionDate":Ljava/lang/String;
    const/16 v23, 0x0

    move-object/from16 v10, v23

    .line 62
    .local v10, "packagingDate":Ljava/lang/String;
    const/16 v23, 0x0

    move-object/from16 v11, v23

    .line 63
    .local v11, "bestBeforeDate":Ljava/lang/String;
    const/16 v23, 0x0

    move-object/from16 v12, v23

    .line 64
    .local v12, "expirationDate":Ljava/lang/String;
    const/16 v23, 0x0

    move-object/from16 v13, v23

    .line 65
    .local v13, "weight":Ljava/lang/String;
    const/16 v23, 0x0

    move-object/from16 v14, v23

    .line 66
    .local v14, "weightType":Ljava/lang/String;
    const/16 v23, 0x0

    move-object/from16 v15, v23

    .line 67
    .local v15, "weightIncrement":Ljava/lang/String;
    const/16 v23, 0x0

    move-object/from16 v16, v23

    .line 68
    .local v16, "price":Ljava/lang/String;
    const/16 v23, 0x0

    move-object/from16 v17, v23

    .line 69
    .local v17, "priceIncrement":Ljava/lang/String;
    const/16 v23, 0x0

    move-object/from16 v18, v23

    .line 70
    .local v18, "priceCurrency":Ljava/lang/String;
    new-instance v23, Ljava/util/HashMap;

    move-object/from16 v39, v23

    move-object/from16 v23, v39

    move-object/from16 v24, v39

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v19, v23

    .line 72
    .local v19, "uncommonAIs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v23, 0x0

    move/from16 v20, v23

    .line 74
    .local v20, "i":I
    :goto_1
    move/from16 v23, v20

    move-object/from16 v24, v5

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_13

    .line 75
    move/from16 v23, v20

    move-object/from16 v24, v5

    invoke-static/range {v23 .. v24}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->findAIvalue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v21, v23

    .line 76
    .local v21, "ai":Ljava/lang/String;
    move-object/from16 v23, v21

    if-nez v23, :cond_2

    .line 79
    const/16 v23, 0x0

    move-object/from16 v2, v23

    goto :goto_0

    .line 81
    :cond_2
    move/from16 v23, v20

    move-object/from16 v24, v21

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    const/16 v25, 0x2

    add-int/lit8 v24, v24, 0x2

    add-int v23, v23, v24

    move/from16 v20, v23

    .line 82
    move/from16 v23, v20

    move-object/from16 v24, v5

    invoke-static/range {v23 .. v24}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->findValue(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v22, v23

    .line 83
    .local v22, "value":Ljava/lang/String;
    move/from16 v23, v20

    move-object/from16 v24, v22

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    add-int v23, v23, v24

    move/from16 v20, v23

    .line 85
    const-string/jumbo v23, "00"

    move-object/from16 v24, v21

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 86
    move-object/from16 v23, v22

    move-object/from16 v7, v23

    .line 134
    :goto_2
    goto :goto_1

    .line 87
    :cond_3
    const-string/jumbo v23, "01"

    move-object/from16 v24, v21

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 88
    move-object/from16 v23, v22

    move-object/from16 v6, v23

    goto :goto_2

    .line 89
    :cond_4
    const-string/jumbo v23, "10"

    move-object/from16 v24, v21

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 90
    move-object/from16 v23, v22

    move-object/from16 v8, v23

    goto :goto_2

    .line 91
    :cond_5
    const-string/jumbo v23, "11"

    move-object/from16 v24, v21

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 92
    move-object/from16 v23, v22

    move-object/from16 v9, v23

    goto :goto_2

    .line 93
    :cond_6
    const-string/jumbo v23, "13"

    move-object/from16 v24, v21

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 94
    move-object/from16 v23, v22

    move-object/from16 v10, v23

    goto :goto_2

    .line 95
    :cond_7
    const-string/jumbo v23, "15"

    move-object/from16 v24, v21

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 96
    move-object/from16 v23, v22

    move-object/from16 v11, v23

    goto :goto_2

    .line 97
    :cond_8
    const-string/jumbo v23, "17"

    move-object/from16 v24, v21

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 98
    move-object/from16 v23, v22

    move-object/from16 v12, v23

    goto :goto_2

    .line 99
    :cond_9
    const-string/jumbo v23, "3100"

    move-object/from16 v24, v21

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_a

    const-string/jumbo v23, "3101"

    move-object/from16 v24, v21

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_a

    const-string/jumbo v23, "3102"

    move-object/from16 v24, v21

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_a

    const-string/jumbo v23, "3103"

    move-object/from16 v24, v21

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_a

    const-string/jumbo v23, "3104"

    move-object/from16 v24, v21

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_a

    const-string/jumbo v23, "3105"

    move-object/from16 v24, v21

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_a

    const-string/jumbo v23, "3106"

    move-object/from16 v24, v21

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_a

    const-string/jumbo v23, "3107"

    move-object/from16 v24, v21

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_a

    const-string/jumbo v23, "3108"

    move-object/from16 v24, v21

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_a

    const-string/jumbo v23, "3109"

    move-object/from16 v24, v21

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_b

    .line 104
    :cond_a
    move-object/from16 v23, v22

    move-object/from16 v13, v23

    .line 105
    const-string/jumbo v23, "KG"

    move-object/from16 v14, v23

    .line 106
    move-object/from16 v23, v21

    const/16 v24, 0x3

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v15, v23

    goto/16 :goto_2

    .line 107
    :cond_b
    const-string/jumbo v23, "3200"

    move-object/from16 v24, v21

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_c

    const-string/jumbo v23, "3201"

    move-object/from16 v24, v21

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_c

    const-string/jumbo v23, "3202"

    move-object/from16 v24, v21

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_c

    const-string/jumbo v23, "3203"

    move-object/from16 v24, v21

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_c

    const-string/jumbo v23, "3204"

    move-object/from16 v24, v21

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_c

    const-string/jumbo v23, "3205"

    move-object/from16 v24, v21

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_c

    const-string/jumbo v23, "3206"

    move-object/from16 v24, v21

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_c

    const-string/jumbo v23, "3207"

    move-object/from16 v24, v21

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_c

    const-string/jumbo v23, "3208"

    move-object/from16 v24, v21

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_c

    const-string/jumbo v23, "3209"

    move-object/from16 v24, v21

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_d

    .line 112
    :cond_c
    move-object/from16 v23, v22

    move-object/from16 v13, v23

    .line 113
    const-string/jumbo v23, "LB"

    move-object/from16 v14, v23

    .line 114
    move-object/from16 v23, v21

    const/16 v24, 0x3

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v15, v23

    goto/16 :goto_2

    .line 115
    :cond_d
    const-string/jumbo v23, "3920"

    move-object/from16 v24, v21

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_e

    const-string/jumbo v23, "3921"

    move-object/from16 v24, v21

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_e

    const-string/jumbo v23, "3922"

    move-object/from16 v24, v21

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_e

    const-string/jumbo v23, "3923"

    move-object/from16 v24, v21

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_f

    .line 117
    :cond_e
    move-object/from16 v23, v22

    move-object/from16 v16, v23

    .line 118
    move-object/from16 v23, v21

    const/16 v24, 0x3

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v17, v23

    goto/16 :goto_2

    .line 119
    :cond_f
    const-string/jumbo v23, "3930"

    move-object/from16 v24, v21

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_10

    const-string/jumbo v23, "3931"

    move-object/from16 v24, v21

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_10

    const-string/jumbo v23, "3932"

    move-object/from16 v24, v21

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_10

    const-string/jumbo v23, "3933"

    move-object/from16 v24, v21

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_12

    .line 121
    :cond_10
    move-object/from16 v23, v22

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_11

    .line 125
    const/16 v23, 0x0

    move-object/from16 v2, v23

    goto/16 :goto_0

    .line 127
    :cond_11
    move-object/from16 v23, v22

    const/16 v24, 0x3

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v16, v23

    .line 128
    move-object/from16 v23, v22

    const/16 v24, 0x0

    const/16 v25, 0x3

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v18, v23

    .line 129
    move-object/from16 v23, v21

    const/16 v24, 0x3

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v17, v23

    goto/16 :goto_2

    .line 132
    :cond_12
    move-object/from16 v23, v19

    move-object/from16 v24, v21

    move-object/from16 v25, v22

    invoke-interface/range {v23 .. v25}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    goto/16 :goto_2

    .line 136
    .end local v21    # "ai":Ljava/lang/String;
    .end local v22    # "value":Ljava/lang/String;
    :cond_13
    new-instance v23, Lcom/google/zxing/client/result/ExpandedProductParsedResult;

    move-object/from16 v39, v23

    move-object/from16 v23, v39

    move-object/from16 v24, v39

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move-object/from16 v28, v9

    move-object/from16 v29, v10

    move-object/from16 v30, v11

    move-object/from16 v31, v12

    move-object/from16 v32, v13

    move-object/from16 v33, v14

    move-object/from16 v34, v15

    move-object/from16 v35, v16

    move-object/from16 v36, v17

    move-object/from16 v37, v18

    move-object/from16 v38, v19

    invoke-direct/range {v24 .. v38}, Lcom/google/zxing/client/result/ExpandedProductParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    move-object/from16 v2, v23

    goto/16 :goto_0
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 4

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/ExpandedProductResultParser;
    move-object v1, p1

    .local v1, "x0":Lcom/google/zxing/Result;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/zxing/client/result/ExpandedProductResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ExpandedProductParsedResult;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/zxing/client/result/ExpandedProductResultParser;
    return-object v0
.end method
