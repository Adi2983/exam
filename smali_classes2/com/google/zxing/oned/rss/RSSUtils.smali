.class public final Lcom/google/zxing/oned/rss/RSSUtils;
.super Ljava/lang/Object;
.source "RSSUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/RSSUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static combins(II)I
    .locals 9

    .prologue
    .line 104
    move v0, p0

    .local v0, "n":I
    move v1, p1

    .local v1, "r":I
    move v7, v0

    move v8, v1

    sub-int/2addr v7, v8

    move v8, v1

    if-le v7, v8, :cond_1

    .line 105
    move v7, v1

    move v3, v7

    .line 106
    .local v3, "minDenom":I
    move v7, v0

    move v8, v1

    sub-int/2addr v7, v8

    move v2, v7

    .line 111
    .local v2, "maxDenom":I
    :goto_0
    const/4 v7, 0x1

    move v4, v7

    .line 112
    .local v4, "val":I
    const/4 v7, 0x1

    move v5, v7

    .line 113
    .local v5, "j":I
    move v7, v0

    move v6, v7

    .local v6, "i":I
    :goto_1
    move v7, v6

    move v8, v2

    if-le v7, v8, :cond_2

    .line 114
    move v7, v4

    move v8, v6

    mul-int/2addr v7, v8

    move v4, v7

    .line 115
    move v7, v5

    move v8, v3

    if-gt v7, v8, :cond_0

    .line 116
    move v7, v4

    move v8, v5

    div-int/2addr v7, v8

    move v4, v7

    .line 117
    add-int/lit8 v5, v5, 0x1

    .line 113
    :cond_0
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 108
    .end local v2    # "maxDenom":I
    .end local v3    # "minDenom":I
    .end local v4    # "val":I
    .end local v5    # "j":I
    .end local v6    # "i":I
    :cond_1
    move v7, v0

    move v8, v1

    sub-int/2addr v7, v8

    move v3, v7

    .line 109
    .restart local v3    # "minDenom":I
    move v7, v1

    move v2, v7

    .restart local v2    # "maxDenom":I
    goto :goto_0

    .line 120
    .restart local v4    # "val":I
    .restart local v5    # "j":I
    .restart local v6    # "i":I
    :cond_2
    :goto_2
    move v7, v5

    move v8, v3

    if-gt v7, v8, :cond_3

    .line 121
    move v7, v4

    move v8, v5

    div-int/2addr v7, v8

    move v4, v7

    .line 122
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 124
    :cond_3
    move v7, v4

    move v0, v7

    .end local v0    # "n":I
    return v0
.end method

.method static elements([III)[I
    .locals 16

    .prologue
    .line 128
    move-object/from16 v0, p0

    .local v0, "eDist":[I
    move/from16 v1, p1

    .local v1, "N":I
    move/from16 v2, p2

    .local v2, "K":I
    move-object v8, v0

    array-length v8, v8

    const/4 v9, 0x2

    add-int/lit8 v8, v8, 0x2

    new-array v8, v8, [I

    move-object v3, v8

    .line 129
    .local v3, "widths":[I
    move v8, v2

    const/4 v9, 0x1

    shl-int/lit8 v8, v8, 0x1

    move v4, v8

    .line 130
    .local v4, "twoK":I
    move-object v8, v3

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput v10, v8, v9

    .line 132
    const/16 v8, 0xa

    move v6, v8

    .line 133
    .local v6, "minEven":I
    const/4 v8, 0x1

    move v7, v8

    .line 134
    .local v7, "barSum":I
    const/4 v8, 0x1

    move v5, v8

    .local v5, "i":I
    :goto_0
    move v8, v5

    move v9, v4

    const/4 v10, 0x2

    add-int/lit8 v9, v9, -0x2

    if-ge v8, v9, :cond_1

    .line 135
    move-object v8, v3

    move v9, v5

    move-object v10, v0

    move v11, v5

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    aget v10, v10, v11

    move-object v11, v3

    move v12, v5

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    aget v11, v11, v12

    sub-int/2addr v10, v11

    aput v10, v8, v9

    .line 136
    move-object v8, v3

    move v9, v5

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move-object v10, v0

    move v11, v5

    aget v10, v10, v11

    move-object v11, v3

    move v12, v5

    aget v11, v11, v12

    sub-int/2addr v10, v11

    aput v10, v8, v9

    .line 137
    move v8, v7

    move-object v9, v3

    move v10, v5

    aget v9, v9, v10

    move-object v10, v3

    move v11, v5

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    aget v10, v10, v11

    add-int/2addr v9, v10

    add-int/2addr v8, v9

    move v7, v8

    .line 138
    move-object v8, v3

    move v9, v5

    aget v8, v8, v9

    move v9, v6

    if-ge v8, v9, :cond_0

    .line 139
    move-object v8, v3

    move v9, v5

    aget v8, v8, v9

    move v6, v8

    .line 134
    :cond_0
    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 142
    :cond_1
    move-object v8, v3

    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v10, v1

    move v11, v7

    sub-int/2addr v10, v11

    aput v10, v8, v9

    .line 143
    move-object v8, v3

    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    aget v8, v8, v9

    move v9, v6

    if-ge v8, v9, :cond_2

    .line 144
    move-object v8, v3

    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    aget v8, v8, v9

    move v6, v8

    .line 146
    :cond_2
    move v8, v6

    const/4 v9, 0x1

    if-le v8, v9, :cond_3

    .line 147
    const/4 v8, 0x0

    move v5, v8

    :goto_1
    move v8, v5

    move v9, v4

    if-ge v8, v9, :cond_3

    .line 148
    move-object v8, v3

    move v9, v5

    move-object v14, v8

    move v15, v9

    move-object v8, v14

    move v9, v15

    move-object v10, v14

    move v11, v15

    aget v10, v10, v11

    move v11, v6

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    add-int/2addr v10, v11

    aput v10, v8, v9

    .line 149
    move-object v8, v3

    move v9, v5

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move-object v14, v8

    move v15, v9

    move-object v8, v14

    move v9, v15

    move-object v10, v14

    move v11, v15

    aget v10, v10, v11

    move v11, v6

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    sub-int/2addr v10, v11

    aput v10, v8, v9

    .line 147
    add-int/lit8 v5, v5, 0x2

    goto :goto_1

    .line 152
    :cond_3
    move-object v8, v3

    move-object v0, v8

    .end local v0    # "eDist":[I
    return-object v0
.end method

.method public static getRSSvalue([IIZ)I
    .locals 16

    .prologue
    .line 65
    move-object/from16 v0, p0

    .local v0, "widths":[I
    move/from16 v1, p1

    .local v1, "maxWidth":I
    move/from16 v2, p2

    .local v2, "noNarrow":Z
    move-object v12, v0

    array-length v12, v12

    move v3, v12

    .line 66
    .local v3, "elements":I
    const/4 v12, 0x0

    move v4, v12

    .line 67
    .local v4, "n":I
    move-object v12, v0

    move-object v5, v12

    .local v5, "arr$":[I
    move-object v12, v5

    array-length v12, v12

    move v6, v12

    .local v6, "len$":I
    const/4 v12, 0x0

    move v7, v12

    .local v7, "i$":I
    :goto_0
    move v12, v7

    move v13, v6

    if-ge v12, v13, :cond_0

    move-object v12, v5

    move v13, v7

    aget v12, v12, v13

    move v8, v12

    .line 68
    .local v8, "width":I
    move v12, v4

    move v13, v8

    add-int/2addr v12, v13

    move v4, v12

    .line 67
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 70
    .end local v8    # "width":I
    :cond_0
    const/4 v12, 0x0

    move v5, v12

    .line 71
    .local v5, "val":I
    const/4 v12, 0x0

    move v6, v12

    .line 72
    .local v6, "narrowMask":I
    const/4 v12, 0x0

    move v7, v12

    .local v7, "bar":I
    :goto_1
    move v12, v7

    move v13, v3

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    if-ge v12, v13, :cond_6

    .line 74
    const/4 v12, 0x1

    move v8, v12

    .local v8, "elmWidth":I
    move v12, v6

    const/4 v13, 0x1

    move v14, v7

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v6, v12

    .line 75
    :goto_2
    move v12, v8

    move-object v13, v0

    move v14, v7

    aget v13, v13, v14

    if-ge v12, v13, :cond_5

    .line 77
    move v12, v4

    move v13, v8

    sub-int/2addr v12, v13

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v13, v3

    move v14, v7

    sub-int/2addr v13, v14

    const/4 v14, 0x2

    add-int/lit8 v13, v13, -0x2

    invoke-static {v12, v13}, Lcom/google/zxing/oned/rss/RSSUtils;->combins(II)I

    move-result v12

    move v9, v12

    .line 78
    .local v9, "subVal":I
    move v12, v2

    if-eqz v12, :cond_1

    move v12, v6

    if-nez v12, :cond_1

    move v12, v4

    move v13, v8

    sub-int/2addr v12, v13

    move v13, v3

    move v14, v7

    sub-int/2addr v13, v14

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    sub-int/2addr v12, v13

    move v13, v3

    move v14, v7

    sub-int/2addr v13, v14

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    if-lt v12, v13, :cond_1

    .line 80
    move v12, v9

    move v13, v4

    move v14, v8

    sub-int/2addr v13, v14

    move v14, v3

    move v15, v7

    sub-int/2addr v14, v15

    sub-int/2addr v13, v14

    move v14, v3

    move v15, v7

    sub-int/2addr v14, v15

    const/4 v15, 0x2

    add-int/lit8 v14, v14, -0x2

    invoke-static {v13, v14}, Lcom/google/zxing/oned/rss/RSSUtils;->combins(II)I

    move-result v13

    sub-int/2addr v12, v13

    move v9, v12

    .line 83
    :cond_1
    move v12, v3

    move v13, v7

    sub-int/2addr v12, v13

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    const/4 v13, 0x1

    if-le v12, v13, :cond_4

    .line 84
    const/4 v12, 0x0

    move v10, v12

    .line 85
    .local v10, "lessVal":I
    move v12, v4

    move v13, v8

    sub-int/2addr v12, v13

    move v13, v3

    move v14, v7

    sub-int/2addr v13, v14

    const/4 v14, 0x2

    add-int/lit8 v13, v13, -0x2

    sub-int/2addr v12, v13

    move v11, v12

    .line 86
    .local v11, "mxwElement":I
    :goto_3
    move v12, v11

    move v13, v1

    if-le v12, v13, :cond_2

    .line 87
    move v12, v10

    move v13, v4

    move v14, v8

    sub-int/2addr v13, v14

    move v14, v11

    sub-int/2addr v13, v14

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    move v14, v3

    move v15, v7

    sub-int/2addr v14, v15

    const/4 v15, 0x3

    add-int/lit8 v14, v14, -0x3

    invoke-static {v13, v14}, Lcom/google/zxing/oned/rss/RSSUtils;->combins(II)I

    move-result v13

    add-int/2addr v12, v13

    move v10, v12

    .line 86
    add-int/lit8 v11, v11, -0x1

    goto :goto_3

    .line 90
    :cond_2
    move v12, v9

    move v13, v10

    move v14, v3

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    move v15, v7

    sub-int/2addr v14, v15

    mul-int/2addr v13, v14

    sub-int/2addr v12, v13

    move v9, v12

    .line 94
    .end local v10    # "lessVal":I
    .end local v11    # "mxwElement":I
    :cond_3
    :goto_4
    move v12, v5

    move v13, v9

    add-int/2addr v12, v13

    move v5, v12

    .line 76
    add-int/lit8 v8, v8, 0x1

    move v12, v6

    const/4 v13, 0x1

    move v14, v7

    shl-int/2addr v13, v14

    const/4 v14, -0x1

    xor-int/lit8 v13, v13, -0x1

    and-int/2addr v12, v13

    move v6, v12

    goto/16 :goto_2

    .line 91
    :cond_4
    move v12, v4

    move v13, v8

    sub-int/2addr v12, v13

    move v13, v1

    if-le v12, v13, :cond_3

    .line 92
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    .line 96
    .end local v9    # "subVal":I
    :cond_5
    move v12, v4

    move v13, v8

    sub-int/2addr v12, v13

    move v4, v12

    .line 72
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 98
    .end local v8    # "elmWidth":I
    :cond_6
    move v12, v5

    move v0, v12

    .end local v0    # "widths":[I
    return v0
.end method

.method static getRSSwidths(IIIIZ)[I
    .locals 16

    .prologue
    .line 25
    move/from16 v0, p0

    .local v0, "val":I
    move/from16 v1, p1

    .local v1, "n":I
    move/from16 v2, p2

    .local v2, "elements":I
    move/from16 v3, p3

    .local v3, "maxWidth":I
    move/from16 v4, p4

    .local v4, "noNarrow":Z
    move v12, v2

    new-array v12, v12, [I

    move-object v5, v12

    .line 27
    .local v5, "widths":[I
    const/4 v12, 0x0

    move v7, v12

    .line 28
    .local v7, "narrowMask":I
    const/4 v12, 0x0

    move v6, v12

    .local v6, "bar":I
    :goto_0
    move v12, v6

    move v13, v2

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    if-ge v12, v13, :cond_5

    .line 29
    move v12, v7

    const/4 v13, 0x1

    move v14, v6

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v7, v12

    .line 30
    const/4 v12, 0x1

    move v8, v12

    .line 33
    .local v8, "elmWidth":I
    :goto_1
    move v12, v1

    move v13, v8

    sub-int/2addr v12, v13

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v13, v2

    move v14, v6

    sub-int/2addr v13, v14

    const/4 v14, 0x2

    add-int/lit8 v13, v13, -0x2

    invoke-static {v12, v13}, Lcom/google/zxing/oned/rss/RSSUtils;->combins(II)I

    move-result v12

    move v9, v12

    .line 34
    .local v9, "subVal":I
    move v12, v4

    if-eqz v12, :cond_0

    move v12, v7

    if-nez v12, :cond_0

    move v12, v1

    move v13, v8

    sub-int/2addr v12, v13

    move v13, v2

    move v14, v6

    sub-int/2addr v13, v14

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    sub-int/2addr v12, v13

    move v13, v2

    move v14, v6

    sub-int/2addr v13, v14

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    if-lt v12, v13, :cond_0

    .line 36
    move v12, v9

    move v13, v1

    move v14, v8

    sub-int/2addr v13, v14

    move v14, v2

    move v15, v6

    sub-int/2addr v14, v15

    sub-int/2addr v13, v14

    move v14, v2

    move v15, v6

    sub-int/2addr v14, v15

    const/4 v15, 0x2

    add-int/lit8 v14, v14, -0x2

    invoke-static {v13, v14}, Lcom/google/zxing/oned/rss/RSSUtils;->combins(II)I

    move-result v13

    sub-int/2addr v12, v13

    move v9, v12

    .line 38
    :cond_0
    move v12, v2

    move v13, v6

    sub-int/2addr v12, v13

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    const/4 v13, 0x1

    if-le v12, v13, :cond_3

    .line 39
    const/4 v12, 0x0

    move v10, v12

    .line 40
    .local v10, "lessVal":I
    move v12, v1

    move v13, v8

    sub-int/2addr v12, v13

    move v13, v2

    move v14, v6

    sub-int/2addr v13, v14

    const/4 v14, 0x2

    add-int/lit8 v13, v13, -0x2

    sub-int/2addr v12, v13

    move v11, v12

    .line 41
    .local v11, "mxwElement":I
    :goto_2
    move v12, v11

    move v13, v3

    if-le v12, v13, :cond_1

    .line 43
    move v12, v10

    move v13, v1

    move v14, v8

    sub-int/2addr v13, v14

    move v14, v11

    sub-int/2addr v13, v14

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    move v14, v2

    move v15, v6

    sub-int/2addr v14, v15

    const/4 v15, 0x3

    add-int/lit8 v14, v14, -0x3

    invoke-static {v13, v14}, Lcom/google/zxing/oned/rss/RSSUtils;->combins(II)I

    move-result v13

    add-int/2addr v12, v13

    move v10, v12

    .line 42
    add-int/lit8 v11, v11, -0x1

    goto :goto_2

    .line 45
    :cond_1
    move v12, v9

    move v13, v10

    move v14, v2

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    move v15, v6

    sub-int/2addr v14, v15

    mul-int/2addr v13, v14

    sub-int/2addr v12, v13

    move v9, v12

    .line 49
    .end local v10    # "lessVal":I
    .end local v11    # "mxwElement":I
    :cond_2
    :goto_3
    move v12, v0

    move v13, v9

    sub-int/2addr v12, v13

    move v0, v12

    .line 50
    move v12, v0

    if-gez v12, :cond_4

    .line 51
    .line 56
    move v12, v0

    move v13, v9

    add-int/2addr v12, v13

    move v0, v12

    .line 57
    move v12, v1

    move v13, v8

    sub-int/2addr v12, v13

    move v1, v12

    .line 58
    move-object v12, v5

    move v13, v6

    move v14, v8

    aput v14, v12, v13

    .line 28
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 46
    :cond_3
    move v12, v1

    move v13, v8

    sub-int/2addr v12, v13

    move v13, v3

    if-le v12, v13, :cond_2

    .line 47
    add-int/lit8 v9, v9, -0x1

    goto :goto_3

    .line 53
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 54
    move v12, v7

    const/4 v13, 0x1

    move v14, v6

    shl-int/2addr v13, v14

    const/4 v14, -0x1

    xor-int/lit8 v13, v13, -0x1

    and-int/2addr v12, v13

    move v7, v12

    goto/16 :goto_1

    .line 60
    .end local v8    # "elmWidth":I
    .end local v9    # "subVal":I
    :cond_5
    move-object v12, v5

    move v13, v6

    move v14, v1

    aput v14, v12, v13

    .line 61
    move-object v12, v5

    move-object v0, v12

    .end local v0    # "val":I
    return-object v0
.end method
