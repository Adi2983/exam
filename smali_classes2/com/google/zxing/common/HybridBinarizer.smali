.class public final Lcom/google/zxing/common/HybridBinarizer;
.super Lcom/google/zxing/common/GlobalHistogramBinarizer;
.source "HybridBinarizer.java"


# static fields
.field private static final BLOCK_SIZE:I = 0x8

.field private static final BLOCK_SIZE_MASK:I = 0x7

.field private static final BLOCK_SIZE_POWER:I = 0x3

.field private static final MINIMUM_DIMENSION:I = 0x28

.field private static final MIN_DYNAMIC_RANGE:I = 0x18


# instance fields
.field private matrix:Lcom/google/zxing/common/BitMatrix;


# direct methods
.method public constructor <init>(Lcom/google/zxing/LuminanceSource;)V
    .locals 4

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/HybridBinarizer;
    move-object v1, p1

    .local v1, "source":Lcom/google/zxing/LuminanceSource;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/zxing/common/GlobalHistogramBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    .line 54
    return-void
.end method

.method private static calculateBlackPoints([BIIII)[[I
    .locals 26

    .prologue
    .line 166
    move-object/from16 v2, p0

    .local v2, "luminances":[B
    move/from16 v3, p1

    .local v3, "subWidth":I
    move/from16 v4, p2

    .local v4, "subHeight":I
    move/from16 v5, p3

    .local v5, "width":I
    move/from16 v6, p4

    .local v6, "height":I
    move/from16 v21, v4

    move/from16 v22, v3

    filled-new-array/range {v21 .. v22}, [I

    move-result-object v22

    sget-object v21, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static/range {v21 .. v22}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [[I

    move-object/from16 v7, v21

    .line 167
    .local v7, "blackPoints":[[I
    const/16 v21, 0x0

    move/from16 v8, v21

    .local v8, "y":I
    :goto_0
    move/from16 v21, v8

    move/from16 v22, v4

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_a

    .line 168
    move/from16 v21, v8

    const/16 v22, 0x3

    shl-int/lit8 v21, v21, 0x3

    move/from16 v9, v21

    .line 169
    .local v9, "yoffset":I
    move/from16 v21, v6

    const/16 v22, 0x8

    add-int/lit8 v21, v21, -0x8

    move/from16 v10, v21

    .line 170
    .local v10, "maxYOffset":I
    move/from16 v21, v9

    move/from16 v22, v10

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_0

    .line 171
    move/from16 v21, v10

    move/from16 v9, v21

    .line 173
    :cond_0
    const/16 v21, 0x0

    move/from16 v11, v21

    .local v11, "x":I
    :goto_1
    move/from16 v21, v11

    move/from16 v22, v3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_9

    .line 174
    move/from16 v21, v11

    const/16 v22, 0x3

    shl-int/lit8 v21, v21, 0x3

    move/from16 v12, v21

    .line 175
    .local v12, "xoffset":I
    move/from16 v21, v5

    const/16 v22, 0x8

    add-int/lit8 v21, v21, -0x8

    move/from16 v13, v21

    .line 176
    .local v13, "maxXOffset":I
    move/from16 v21, v12

    move/from16 v22, v13

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_1

    .line 177
    move/from16 v21, v13

    move/from16 v12, v21

    .line 179
    :cond_1
    const/16 v21, 0x0

    move/from16 v14, v21

    .line 180
    .local v14, "sum":I
    const/16 v21, 0xff

    move/from16 v15, v21

    .line 181
    .local v15, "min":I
    const/16 v21, 0x0

    move/from16 v16, v21

    .line 182
    .local v16, "max":I
    const/16 v21, 0x0

    move/from16 v17, v21

    .local v17, "yy":I
    move/from16 v21, v9

    move/from16 v22, v5

    mul-int v21, v21, v22

    move/from16 v22, v12

    add-int v21, v21, v22

    move/from16 v18, v21

    .local v18, "offset":I
    :goto_2
    move/from16 v21, v17

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    .line 183
    const/16 v21, 0x0

    move/from16 v19, v21

    .local v19, "xx":I
    :goto_3
    move/from16 v21, v19

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_4

    .line 184
    move-object/from16 v21, v2

    move/from16 v22, v18

    move/from16 v23, v19

    add-int v22, v22, v23

    aget-byte v21, v21, v22

    const/16 v22, 0xff

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    move/from16 v20, v21

    .line 185
    .local v20, "pixel":I
    move/from16 v21, v14

    move/from16 v22, v20

    add-int v21, v21, v22

    move/from16 v14, v21

    .line 187
    move/from16 v21, v20

    move/from16 v22, v15

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    .line 188
    move/from16 v21, v20

    move/from16 v15, v21

    .line 190
    :cond_2
    move/from16 v21, v20

    move/from16 v22, v16

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_3

    .line 191
    move/from16 v21, v20

    move/from16 v16, v21

    .line 183
    :cond_3
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 195
    .end local v20    # "pixel":I
    :cond_4
    move/from16 v21, v16

    move/from16 v22, v15

    sub-int v21, v21, v22

    const/16 v22, 0x18

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_6

    .line 197
    add-int/lit8 v17, v17, 0x1

    move/from16 v21, v18

    move/from16 v22, v5

    add-int v21, v21, v22

    move/from16 v18, v21

    :goto_4
    move/from16 v21, v17

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_6

    .line 198
    const/16 v21, 0x0

    move/from16 v19, v21

    :goto_5
    move/from16 v21, v19

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_5

    .line 199
    move/from16 v21, v14

    move-object/from16 v22, v2

    move/from16 v23, v18

    move/from16 v24, v19

    add-int v23, v23, v24

    aget-byte v22, v22, v23

    const/16 v23, 0xff

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    add-int v21, v21, v22

    move/from16 v14, v21

    .line 198
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 197
    :cond_5
    add-int/lit8 v17, v17, 0x1

    move/from16 v21, v18

    move/from16 v22, v5

    add-int v21, v21, v22

    move/from16 v18, v21

    goto :goto_4

    .line 182
    :cond_6
    add-int/lit8 v17, v17, 0x1

    move/from16 v21, v18

    move/from16 v22, v5

    add-int v21, v21, v22

    move/from16 v18, v21

    goto/16 :goto_2

    .line 206
    .end local v19    # "xx":I
    :cond_7
    move/from16 v21, v14

    const/16 v22, 0x6

    shr-int/lit8 v21, v21, 0x6

    move/from16 v17, v21

    .line 207
    .local v17, "average":I
    move/from16 v21, v16

    move/from16 v22, v15

    sub-int v21, v21, v22

    const/16 v22, 0x18

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_8

    .line 214
    move/from16 v21, v15

    const/16 v22, 0x1

    shr-int/lit8 v21, v21, 0x1

    move/from16 v17, v21

    .line 216
    move/from16 v21, v8

    if-lez v21, :cond_8

    move/from16 v21, v11

    if-lez v21, :cond_8

    .line 224
    move-object/from16 v21, v7

    move/from16 v22, v8

    const/16 v23, 0x1

    add-int/lit8 v22, v22, -0x1

    aget-object v21, v21, v22

    move/from16 v22, v11

    aget v21, v21, v22

    const/16 v22, 0x2

    move-object/from16 v23, v7

    move/from16 v24, v8

    aget-object v23, v23, v24

    move/from16 v24, v11

    const/16 v25, 0x1

    add-int/lit8 v24, v24, -0x1

    aget v23, v23, v24

    mul-int v22, v22, v23

    add-int v21, v21, v22

    move-object/from16 v22, v7

    move/from16 v23, v8

    const/16 v24, 0x1

    add-int/lit8 v23, v23, -0x1

    aget-object v22, v22, v23

    move/from16 v23, v11

    const/16 v24, 0x1

    add-int/lit8 v23, v23, -0x1

    aget v22, v22, v23

    add-int v21, v21, v22

    const/16 v22, 0x2

    shr-int/lit8 v21, v21, 0x2

    move/from16 v18, v21

    .line 226
    .local v18, "averageNeighborBlackPoint":I
    move/from16 v21, v15

    move/from16 v22, v18

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_8

    .line 227
    move/from16 v21, v18

    move/from16 v17, v21

    .line 231
    .end local v18    # "averageNeighborBlackPoint":I
    :cond_8
    move-object/from16 v21, v7

    move/from16 v22, v8

    aget-object v21, v21, v22

    move/from16 v22, v11

    move/from16 v23, v17

    aput v23, v21, v22

    .line 173
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 167
    .end local v12    # "xoffset":I
    .end local v13    # "maxXOffset":I
    .end local v14    # "sum":I
    .end local v15    # "min":I
    .end local v16    # "max":I
    .end local v17    # "average":I
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 234
    .end local v9    # "yoffset":I
    .end local v10    # "maxYOffset":I
    .end local v11    # "x":I
    :cond_a
    move-object/from16 v21, v7

    move-object/from16 v2, v21

    .end local v2    # "luminances":[B
    return-object v2
.end method

.method private static calculateThresholdForBlock([BIIII[[ILcom/google/zxing/common/BitMatrix;)V
    .locals 26

    .prologue
    .line 108
    move-object/from16 v2, p0

    .local v2, "luminances":[B
    move/from16 v3, p1

    .local v3, "subWidth":I
    move/from16 v4, p2

    .local v4, "subHeight":I
    move/from16 v5, p3

    .local v5, "width":I
    move/from16 v6, p4

    .local v6, "height":I
    move-object/from16 v7, p5

    .local v7, "blackPoints":[[I
    move-object/from16 v8, p6

    .local v8, "matrix":Lcom/google/zxing/common/BitMatrix;
    const/16 v20, 0x0

    move/from16 v9, v20

    .local v9, "y":I
    :goto_0
    move/from16 v20, v9

    move/from16 v21, v4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    .line 109
    move/from16 v20, v9

    const/16 v21, 0x3

    shl-int/lit8 v20, v20, 0x3

    move/from16 v10, v20

    .line 110
    .local v10, "yoffset":I
    move/from16 v20, v6

    const/16 v21, 0x8

    add-int/lit8 v20, v20, -0x8

    move/from16 v11, v20

    .line 111
    .local v11, "maxYOffset":I
    move/from16 v20, v10

    move/from16 v21, v11

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_0

    .line 112
    move/from16 v20, v11

    move/from16 v10, v20

    .line 114
    :cond_0
    const/16 v20, 0x0

    move/from16 v12, v20

    .local v12, "x":I
    :goto_1
    move/from16 v20, v12

    move/from16 v21, v3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_3

    .line 115
    move/from16 v20, v12

    const/16 v21, 0x3

    shl-int/lit8 v20, v20, 0x3

    move/from16 v13, v20

    .line 116
    .local v13, "xoffset":I
    move/from16 v20, v5

    const/16 v21, 0x8

    add-int/lit8 v20, v20, -0x8

    move/from16 v14, v20

    .line 117
    .local v14, "maxXOffset":I
    move/from16 v20, v13

    move/from16 v21, v14

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_1

    .line 118
    move/from16 v20, v14

    move/from16 v13, v20

    .line 120
    :cond_1
    move/from16 v20, v12

    const/16 v21, 0x2

    move/from16 v22, v3

    const/16 v23, 0x3

    add-int/lit8 v22, v22, -0x3

    invoke-static/range {v20 .. v22}, Lcom/google/zxing/common/HybridBinarizer;->cap(III)I

    move-result v20

    move/from16 v15, v20

    .line 121
    .local v15, "left":I
    move/from16 v20, v9

    const/16 v21, 0x2

    move/from16 v22, v4

    const/16 v23, 0x3

    add-int/lit8 v22, v22, -0x3

    invoke-static/range {v20 .. v22}, Lcom/google/zxing/common/HybridBinarizer;->cap(III)I

    move-result v20

    move/from16 v16, v20

    .line 122
    .local v16, "top":I
    const/16 v20, 0x0

    move/from16 v17, v20

    .line 123
    .local v17, "sum":I
    const/16 v20, -0x2

    move/from16 v18, v20

    .local v18, "z":I
    :goto_2
    move/from16 v20, v18

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_2

    .line 124
    move-object/from16 v20, v7

    move/from16 v21, v16

    move/from16 v22, v18

    add-int v21, v21, v22

    aget-object v20, v20, v21

    move-object/from16 v19, v20

    .line 125
    .local v19, "blackRow":[I
    move/from16 v20, v17

    move-object/from16 v21, v19

    move/from16 v22, v15

    const/16 v23, 0x2

    add-int/lit8 v22, v22, -0x2

    aget v21, v21, v22

    move-object/from16 v22, v19

    move/from16 v23, v15

    const/16 v24, 0x1

    add-int/lit8 v23, v23, -0x1

    aget v22, v22, v23

    add-int v21, v21, v22

    move-object/from16 v22, v19

    move/from16 v23, v15

    aget v22, v22, v23

    add-int v21, v21, v22

    move-object/from16 v22, v19

    move/from16 v23, v15

    const/16 v24, 0x1

    add-int/lit8 v23, v23, 0x1

    aget v22, v22, v23

    add-int v21, v21, v22

    move-object/from16 v22, v19

    move/from16 v23, v15

    const/16 v24, 0x2

    add-int/lit8 v23, v23, 0x2

    aget v22, v22, v23

    add-int v21, v21, v22

    add-int v20, v20, v21

    move/from16 v17, v20

    .line 123
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 127
    .end local v19    # "blackRow":[I
    :cond_2
    move/from16 v20, v17

    const/16 v21, 0x19

    div-int/lit8 v20, v20, 0x19

    move/from16 v18, v20

    .line 128
    .local v18, "average":I
    move-object/from16 v20, v2

    move/from16 v21, v13

    move/from16 v22, v10

    move/from16 v23, v18

    move/from16 v24, v5

    move-object/from16 v25, v8

    invoke-static/range {v20 .. v25}, Lcom/google/zxing/common/HybridBinarizer;->thresholdBlock([BIIIILcom/google/zxing/common/BitMatrix;)V

    .line 114
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 108
    .end local v13    # "xoffset":I
    .end local v14    # "maxXOffset":I
    .end local v15    # "left":I
    .end local v16    # "top":I
    .end local v17    # "sum":I
    .end local v18    # "average":I
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 131
    .end local v10    # "yoffset":I
    .end local v11    # "maxYOffset":I
    .end local v12    # "x":I
    :cond_4
    return-void
.end method

.method private static cap(III)I
    .locals 5

    .prologue
    .line 134
    move v0, p0

    .local v0, "value":I
    move v1, p1

    .local v1, "min":I
    move v2, p2

    .local v2, "max":I
    move v3, v0

    move v4, v1

    if-ge v3, v4, :cond_0

    move v3, v1

    :goto_0
    move v0, v3

    .end local v0    # "value":I
    return v0

    .restart local v0    # "value":I
    :cond_0
    move v3, v0

    move v4, v2

    if-le v3, v4, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v0

    goto :goto_0
.end method

.method private static thresholdBlock([BIIIILcom/google/zxing/common/BitMatrix;)V
    .locals 13

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "luminances":[B
    move v1, p1

    .local v1, "xoffset":I
    move v2, p2

    .local v2, "yoffset":I
    move/from16 v3, p3

    .local v3, "threshold":I
    move/from16 v4, p4

    .local v4, "stride":I
    move-object/from16 v5, p5

    .local v5, "matrix":Lcom/google/zxing/common/BitMatrix;
    const/4 v9, 0x0

    move v6, v9

    .local v6, "y":I
    move v9, v2

    move v10, v4

    mul-int/2addr v9, v10

    move v10, v1

    add-int/2addr v9, v10

    move v7, v9

    .local v7, "offset":I
    :goto_0
    move v9, v6

    const/16 v10, 0x8

    if-ge v9, v10, :cond_2

    .line 147
    const/4 v9, 0x0

    move v8, v9

    .local v8, "x":I
    :goto_1
    move v9, v8

    const/16 v10, 0x8

    if-ge v9, v10, :cond_1

    .line 149
    move-object v9, v0

    move v10, v7

    move v11, v8

    add-int/2addr v10, v11

    aget-byte v9, v9, v10

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    move v10, v3

    if-gt v9, v10, :cond_0

    .line 150
    move-object v9, v5

    move v10, v1

    move v11, v8

    add-int/2addr v10, v11

    move v11, v2

    move v12, v6

    add-int/2addr v11, v12

    invoke-virtual {v9, v10, v11}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 147
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 146
    :cond_1
    add-int/lit8 v6, v6, 0x1

    move v9, v7

    move v10, v4

    add-int/2addr v9, v10

    move v7, v9

    goto :goto_0

    .line 154
    .end local v8    # "x":I
    :cond_2
    return-void
.end method


# virtual methods
.method public createBinarizer(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Binarizer;
    .locals 6

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/HybridBinarizer;
    move-object v1, p1

    .local v1, "source":Lcom/google/zxing/LuminanceSource;
    new-instance v2, Lcom/google/zxing/common/HybridBinarizer;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/google/zxing/common/HybridBinarizer;
    return-object v0
.end method

.method public getBlackMatrix()Lcom/google/zxing/common/BitMatrix;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 63
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/common/HybridBinarizer;
    move-object v9, v0

    iget-object v9, v9, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    if-eqz v9, :cond_0

    .line 64
    move-object v9, v0

    iget-object v9, v9, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    move-object v0, v9

    .line 88
    .end local v0    # "this":Lcom/google/zxing/common/HybridBinarizer;
    .local v1, "source":Lcom/google/zxing/LuminanceSource;
    .local v2, "width":I
    .local v3, "height":I
    :goto_0
    return-object v0

    .line 66
    .end local v1    # "source":Lcom/google/zxing/LuminanceSource;
    .end local v2    # "width":I
    .end local v3    # "height":I
    .restart local v0    # "this":Lcom/google/zxing/common/HybridBinarizer;
    :cond_0
    move-object v9, v0

    invoke-virtual {v9}, Lcom/google/zxing/common/HybridBinarizer;->getLuminanceSource()Lcom/google/zxing/LuminanceSource;

    move-result-object v9

    move-object v1, v9

    .line 67
    .restart local v1    # "source":Lcom/google/zxing/LuminanceSource;
    move-object v9, v1

    invoke-virtual {v9}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v9

    move v2, v9

    .line 68
    .restart local v2    # "width":I
    move-object v9, v1

    invoke-virtual {v9}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    move-result v9

    move v3, v9

    .line 69
    .restart local v3    # "height":I
    move v9, v2

    const/16 v10, 0x28

    if-lt v9, v10, :cond_3

    move v9, v3

    const/16 v10, 0x28

    if-lt v9, v10, :cond_3

    .line 70
    move-object v9, v1

    invoke-virtual {v9}, Lcom/google/zxing/LuminanceSource;->getMatrix()[B

    move-result-object v9

    move-object v4, v9

    .line 71
    .local v4, "luminances":[B
    move v9, v2

    const/4 v10, 0x3

    shr-int/lit8 v9, v9, 0x3

    move v5, v9

    .line 72
    .local v5, "subWidth":I
    move v9, v2

    const/4 v10, 0x7

    and-int/lit8 v9, v9, 0x7

    if-eqz v9, :cond_1

    .line 73
    add-int/lit8 v5, v5, 0x1

    .line 75
    :cond_1
    move v9, v3

    const/4 v10, 0x3

    shr-int/lit8 v9, v9, 0x3

    move v6, v9

    .line 76
    .local v6, "subHeight":I
    move v9, v3

    const/4 v10, 0x7

    and-int/lit8 v9, v9, 0x7

    if-eqz v9, :cond_2

    .line 77
    add-int/lit8 v6, v6, 0x1

    .line 79
    :cond_2
    move-object v9, v4

    move v10, v5

    move v11, v6

    move v12, v2

    move v13, v3

    invoke-static {v9, v10, v11, v12, v13}, Lcom/google/zxing/common/HybridBinarizer;->calculateBlackPoints([BIIII)[[I

    move-result-object v9

    move-object v7, v9

    .line 81
    .local v7, "blackPoints":[[I
    new-instance v9, Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    move v11, v2

    move v12, v3

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    move-object v8, v9

    .line 82
    .local v8, "newMatrix":Lcom/google/zxing/common/BitMatrix;
    move-object v9, v4

    move v10, v5

    move v11, v6

    move v12, v2

    move v13, v3

    move-object v14, v7

    move-object v15, v8

    invoke-static/range {v9 .. v15}, Lcom/google/zxing/common/HybridBinarizer;->calculateThresholdForBlock([BIIII[[ILcom/google/zxing/common/BitMatrix;)V

    .line 83
    move-object v9, v0

    move-object v10, v8

    iput-object v10, v9, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    .line 84
    .line 88
    .end local v4    # "luminances":[B
    .end local v5    # "subWidth":I
    .end local v6    # "subHeight":I
    .end local v7    # "blackPoints":[[I
    .end local v8    # "newMatrix":Lcom/google/zxing/common/BitMatrix;
    :goto_1
    move-object v9, v0

    iget-object v9, v9, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    move-object v0, v9

    goto :goto_0

    .line 86
    :cond_3
    move-object v9, v0

    move-object v10, v0

    invoke-super {v10}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v10

    iput-object v10, v9, Lcom/google/zxing/common/HybridBinarizer;->matrix:Lcom/google/zxing/common/BitMatrix;

    goto :goto_1
.end method
