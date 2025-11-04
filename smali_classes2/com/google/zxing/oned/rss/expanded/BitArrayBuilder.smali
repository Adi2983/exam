.class final Lcom/google/zxing/oned/rss/expanded/BitArrayBuilder;
.super Ljava/lang/Object;
.source "BitArrayBuilder.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/BitArrayBuilder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method static buildBitArray(Ljava/util/List;)Lcom/google/zxing/common/BitArray;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/expanded/ExpandedPair;",
            ">;)",
            "Lcom/google/zxing/common/BitArray;"
        }
    .end annotation

    .prologue
    .line 43
    move-object/from16 v0, p0

    .local v0, "pairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    move-object v12, v0

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    const/4 v13, 0x1

    shl-int/lit8 v12, v12, 0x1

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v1, v12

    .line 44
    .local v1, "charNumber":I
    move-object v12, v0

    move-object v13, v0

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    invoke-virtual {v12}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v12

    if-nez v12, :cond_0

    .line 45
    add-int/lit8 v1, v1, -0x1

    .line 48
    :cond_0
    const/16 v12, 0xc

    move v13, v1

    mul-int/2addr v12, v13

    move v2, v12

    .line 50
    .local v2, "size":I
    new-instance v12, Lcom/google/zxing/common/BitArray;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    move v14, v2

    invoke-direct {v13, v14}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    move-object v3, v12

    .line 51
    .local v3, "binary":Lcom/google/zxing/common/BitArray;
    const/4 v12, 0x0

    move v4, v12

    .line 53
    .local v4, "accPos":I
    move-object v12, v0

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    move-object v5, v12

    .line 54
    .local v5, "firstPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    move-object v12, v5

    invoke-virtual {v12}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v12

    move v6, v12

    .line 55
    .local v6, "firstValue":I
    const/16 v12, 0xb

    move v7, v12

    .local v7, "i":I
    :goto_0
    move v12, v7

    if-ltz v12, :cond_2

    .line 56
    move v12, v6

    const/4 v13, 0x1

    move v14, v7

    shl-int/2addr v13, v14

    and-int/2addr v12, v13

    if-eqz v12, :cond_1

    .line 57
    move-object v12, v3

    move v13, v4

    invoke-virtual {v12, v13}, Lcom/google/zxing/common/BitArray;->set(I)V

    .line 59
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 55
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 62
    :cond_2
    const/4 v12, 0x1

    move v7, v12

    :goto_1
    move v12, v7

    move-object v13, v0

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_7

    .line 63
    move-object v12, v0

    move v13, v7

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;

    move-object v8, v12

    .line 65
    .local v8, "currentPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    move-object v12, v8

    invoke-virtual {v12}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getLeftChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v12

    move v9, v12

    .line 66
    .local v9, "leftValue":I
    const/16 v12, 0xb

    move v10, v12

    .local v10, "j":I
    :goto_2
    move v12, v10

    if-ltz v12, :cond_4

    .line 67
    move v12, v9

    const/4 v13, 0x1

    move v14, v10

    shl-int/2addr v13, v14

    and-int/2addr v12, v13

    if-eqz v12, :cond_3

    .line 68
    move-object v12, v3

    move v13, v4

    invoke-virtual {v12, v13}, Lcom/google/zxing/common/BitArray;->set(I)V

    .line 70
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 66
    add-int/lit8 v10, v10, -0x1

    goto :goto_2

    .line 73
    :cond_4
    move-object v12, v8

    invoke-virtual {v12}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v12

    if-eqz v12, :cond_6

    .line 74
    move-object v12, v8

    invoke-virtual {v12}, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v12

    move v10, v12

    .line 75
    .local v10, "rightValue":I
    const/16 v12, 0xb

    move v11, v12

    .local v11, "j":I
    :goto_3
    move v12, v11

    if-ltz v12, :cond_6

    .line 76
    move v12, v10

    const/4 v13, 0x1

    move v14, v11

    shl-int/2addr v13, v14

    and-int/2addr v12, v13

    if-eqz v12, :cond_5

    .line 77
    move-object v12, v3

    move v13, v4

    invoke-virtual {v12, v13}, Lcom/google/zxing/common/BitArray;->set(I)V

    .line 79
    :cond_5
    add-int/lit8 v4, v4, 0x1

    .line 75
    add-int/lit8 v11, v11, -0x1

    goto :goto_3

    .line 62
    .end local v10    # "rightValue":I
    .end local v11    # "j":I
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 83
    .end local v8    # "currentPair":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    .end local v9    # "leftValue":I
    :cond_7
    move-object v12, v3

    move-object v0, v12

    .end local v0    # "pairs":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/oned/rss/expanded/ExpandedPair;>;"
    return-object v0
.end method
