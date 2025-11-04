.class final Lcom/google/zxing/qrcode/encoder/MaskUtil;
.super Ljava/lang/Object;
.source "MaskUtil.java"


# static fields
.field private static final N1:I = 0x3

.field private static final N2:I = 0x3

.field private static final N3:I = 0x28

.field private static final N4:I = 0xa


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/encoder/MaskUtil;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method static applyMaskPenaltyRule1(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .locals 4

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "matrix":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    move-object v1, v0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule1Internal(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I

    move-result v1

    move-object v2, v0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/zxing/qrcode/encoder/MaskUtil;->applyMaskPenaltyRule1Internal(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I

    move-result v2

    add-int/2addr v1, v2

    move v0, v1

    .end local v0    # "matrix":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    return v0
.end method

.method private static applyMaskPenaltyRule1Internal(Lcom/google/zxing/qrcode/encoder/ByteMatrix;Z)I
    .locals 15

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "matrix":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    move/from16 v1, p1

    .local v1, "isHorizontal":Z
    const/4 v11, 0x0

    move v2, v11

    .line 193
    .local v2, "penalty":I
    move v11, v1

    if-eqz v11, :cond_0

    move-object v11, v0

    invoke-virtual {v11}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v11

    :goto_0
    move v3, v11

    .line 194
    .local v3, "iLimit":I
    move v11, v1

    if-eqz v11, :cond_1

    move-object v11, v0

    invoke-virtual {v11}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v11

    :goto_1
    move v4, v11

    .line 195
    .local v4, "jLimit":I
    move-object v11, v0

    invoke-virtual {v11}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getArray()[[B

    move-result-object v11

    move-object v5, v11

    .line 196
    .local v5, "array":[[B
    const/4 v11, 0x0

    move v6, v11

    .local v6, "i":I
    :goto_2
    move v11, v6

    move v12, v3

    if-ge v11, v12, :cond_7

    .line 197
    const/4 v11, 0x0

    move v7, v11

    .line 198
    .local v7, "numSameBitCells":I
    const/4 v11, -0x1

    move v8, v11

    .line 199
    .local v8, "prevBit":I
    const/4 v11, 0x0

    move v9, v11

    .local v9, "j":I
    :goto_3
    move v11, v9

    move v12, v4

    if-ge v11, v12, :cond_5

    .line 200
    move v11, v1

    if-eqz v11, :cond_2

    move-object v11, v5

    move v12, v6

    aget-object v11, v11, v12

    move v12, v9

    aget-byte v11, v11, v12

    :goto_4
    move v10, v11

    .line 201
    .local v10, "bit":I
    move v11, v10

    move v12, v8

    if-ne v11, v12, :cond_3

    .line 202
    add-int/lit8 v7, v7, 0x1

    .line 199
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 193
    .end local v3    # "iLimit":I
    .end local v4    # "jLimit":I
    .end local v5    # "array":[[B
    .end local v6    # "i":I
    .end local v7    # "numSameBitCells":I
    .end local v8    # "prevBit":I
    .end local v9    # "j":I
    .end local v10    # "bit":I
    :cond_0
    move-object v11, v0

    invoke-virtual {v11}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v11

    goto :goto_0

    .line 194
    .restart local v3    # "iLimit":I
    :cond_1
    move-object v11, v0

    invoke-virtual {v11}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v11

    goto :goto_1

    .line 200
    .restart local v4    # "jLimit":I
    .restart local v5    # "array":[[B
    .restart local v6    # "i":I
    .restart local v7    # "numSameBitCells":I
    .restart local v8    # "prevBit":I
    .restart local v9    # "j":I
    :cond_2
    move-object v11, v5

    move v12, v9

    aget-object v11, v11, v12

    move v12, v6

    aget-byte v11, v11, v12

    goto :goto_4

    .line 204
    .restart local v10    # "bit":I
    :cond_3
    move v11, v7

    const/4 v12, 0x5

    if-lt v11, v12, :cond_4

    .line 205
    move v11, v2

    const/4 v12, 0x3

    move v13, v7

    const/4 v14, 0x5

    add-int/lit8 v13, v13, -0x5

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    move v2, v11

    .line 207
    :cond_4
    const/4 v11, 0x1

    move v7, v11

    .line 208
    move v11, v10

    move v8, v11

    goto :goto_5

    .line 211
    .end local v10    # "bit":I
    :cond_5
    move v11, v7

    const/4 v12, 0x5

    if-le v11, v12, :cond_6

    .line 212
    move v11, v2

    const/4 v12, 0x3

    move v13, v7

    const/4 v14, 0x5

    add-int/lit8 v13, v13, -0x5

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    move v2, v11

    .line 196
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 215
    .end local v7    # "numSameBitCells":I
    .end local v8    # "prevBit":I
    .end local v9    # "j":I
    :cond_7
    move v11, v2

    move v0, v11

    .end local v0    # "matrix":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    return v0
.end method

.method static applyMaskPenaltyRule2(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .locals 12

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "matrix":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    const/4 v8, 0x0

    move v1, v8

    .line 51
    .local v1, "penalty":I
    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getArray()[[B

    move-result-object v8

    move-object v2, v8

    .line 52
    .local v2, "array":[[B
    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v8

    move v3, v8

    .line 53
    .local v3, "width":I
    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v8

    move v4, v8

    .line 54
    .local v4, "height":I
    const/4 v8, 0x0

    move v5, v8

    .local v5, "y":I
    :goto_0
    move v8, v5

    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    if-ge v8, v9, :cond_2

    .line 55
    const/4 v8, 0x0

    move v6, v8

    .local v6, "x":I
    :goto_1
    move v8, v6

    move v9, v3

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    if-ge v8, v9, :cond_1

    .line 56
    move-object v8, v2

    move v9, v5

    aget-object v8, v8, v9

    move v9, v6

    aget-byte v8, v8, v9

    move v7, v8

    .line 57
    .local v7, "value":I
    move v8, v7

    move-object v9, v2

    move v10, v5

    aget-object v9, v9, v10

    move v10, v6

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    aget-byte v9, v9, v10

    if-ne v8, v9, :cond_0

    move v8, v7

    move-object v9, v2

    move v10, v5

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    aget-object v9, v9, v10

    move v10, v6

    aget-byte v9, v9, v10

    if-ne v8, v9, :cond_0

    move v8, v7

    move-object v9, v2

    move v10, v5

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    aget-object v9, v9, v10

    move v10, v6

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    aget-byte v9, v9, v10

    if-ne v8, v9, :cond_0

    .line 58
    add-int/lit8 v1, v1, 0x1

    .line 55
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 54
    .end local v7    # "value":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 62
    .end local v6    # "x":I
    :cond_2
    const/4 v8, 0x3

    move v9, v1

    mul-int/2addr v8, v9

    move v0, v8

    .end local v0    # "matrix":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    return v0
.end method

.method static applyMaskPenaltyRule3(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .locals 10

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "matrix":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    const/4 v7, 0x0

    move v1, v7

    .line 72
    .local v1, "penalty":I
    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getArray()[[B

    move-result-object v7

    move-object v2, v7

    .line 73
    .local v2, "array":[[B
    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v7

    move v3, v7

    .line 74
    .local v3, "width":I
    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v7

    move v4, v7

    .line 75
    .local v4, "height":I
    const/4 v7, 0x0

    move v5, v7

    .local v5, "y":I
    :goto_0
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_7

    .line 76
    const/4 v7, 0x0

    move v6, v7

    .local v6, "x":I
    :goto_1
    move v7, v6

    move v8, v3

    if-ge v7, v8, :cond_6

    .line 78
    move v7, v6

    const/4 v8, 0x6

    add-int/lit8 v7, v7, 0x6

    move v8, v3

    if-ge v7, v8, :cond_2

    move-object v7, v2

    move v8, v5

    aget-object v7, v7, v8

    move v8, v6

    aget-byte v7, v7, v8

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    move-object v7, v2

    move v8, v5

    aget-object v7, v7, v8

    move v8, v6

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    aget-byte v7, v7, v8

    if-nez v7, :cond_2

    move-object v7, v2

    move v8, v5

    aget-object v7, v7, v8

    move v8, v6

    const/4 v9, 0x2

    add-int/lit8 v8, v8, 0x2

    aget-byte v7, v7, v8

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    move-object v7, v2

    move v8, v5

    aget-object v7, v7, v8

    move v8, v6

    const/4 v9, 0x3

    add-int/lit8 v8, v8, 0x3

    aget-byte v7, v7, v8

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    move-object v7, v2

    move v8, v5

    aget-object v7, v7, v8

    move v8, v6

    const/4 v9, 0x4

    add-int/lit8 v8, v8, 0x4

    aget-byte v7, v7, v8

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    move-object v7, v2

    move v8, v5

    aget-object v7, v7, v8

    move v8, v6

    const/4 v9, 0x5

    add-int/lit8 v8, v8, 0x5

    aget-byte v7, v7, v8

    if-nez v7, :cond_2

    move-object v7, v2

    move v8, v5

    aget-object v7, v7, v8

    move v8, v6

    const/4 v9, 0x6

    add-int/lit8 v8, v8, 0x6

    aget-byte v7, v7, v8

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    move v7, v6

    const/16 v8, 0xa

    add-int/lit8 v7, v7, 0xa

    move v8, v3

    if-ge v7, v8, :cond_0

    move-object v7, v2

    move v8, v5

    aget-object v7, v7, v8

    move v8, v6

    const/4 v9, 0x7

    add-int/lit8 v8, v8, 0x7

    aget-byte v7, v7, v8

    if-nez v7, :cond_0

    move-object v7, v2

    move v8, v5

    aget-object v7, v7, v8

    move v8, v6

    const/16 v9, 0x8

    add-int/lit8 v8, v8, 0x8

    aget-byte v7, v7, v8

    if-nez v7, :cond_0

    move-object v7, v2

    move v8, v5

    aget-object v7, v7, v8

    move v8, v6

    const/16 v9, 0x9

    add-int/lit8 v8, v8, 0x9

    aget-byte v7, v7, v8

    if-nez v7, :cond_0

    move-object v7, v2

    move v8, v5

    aget-object v7, v7, v8

    move v8, v6

    const/16 v9, 0xa

    add-int/lit8 v8, v8, 0xa

    aget-byte v7, v7, v8

    if-eqz v7, :cond_1

    :cond_0
    move v7, v6

    const/4 v8, 0x4

    add-int/lit8 v7, v7, -0x4

    if-ltz v7, :cond_2

    move-object v7, v2

    move v8, v5

    aget-object v7, v7, v8

    move v8, v6

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    aget-byte v7, v7, v8

    if-nez v7, :cond_2

    move-object v7, v2

    move v8, v5

    aget-object v7, v7, v8

    move v8, v6

    const/4 v9, 0x2

    add-int/lit8 v8, v8, -0x2

    aget-byte v7, v7, v8

    if-nez v7, :cond_2

    move-object v7, v2

    move v8, v5

    aget-object v7, v7, v8

    move v8, v6

    const/4 v9, 0x3

    add-int/lit8 v8, v8, -0x3

    aget-byte v7, v7, v8

    if-nez v7, :cond_2

    move-object v7, v2

    move v8, v5

    aget-object v7, v7, v8

    move v8, v6

    const/4 v9, 0x4

    add-int/lit8 v8, v8, -0x4

    aget-byte v7, v7, v8

    if-nez v7, :cond_2

    .line 96
    :cond_1
    add-int/lit8 v1, v1, 0x28

    .line 98
    :cond_2
    move v7, v5

    const/4 v8, 0x6

    add-int/lit8 v7, v7, 0x6

    move v8, v4

    if-ge v7, v8, :cond_5

    move-object v7, v2

    move v8, v5

    aget-object v7, v7, v8

    move v8, v6

    aget-byte v7, v7, v8

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    move-object v7, v2

    move v8, v5

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    aget-object v7, v7, v8

    move v8, v6

    aget-byte v7, v7, v8

    if-nez v7, :cond_5

    move-object v7, v2

    move v8, v5

    const/4 v9, 0x2

    add-int/lit8 v8, v8, 0x2

    aget-object v7, v7, v8

    move v8, v6

    aget-byte v7, v7, v8

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    move-object v7, v2

    move v8, v5

    const/4 v9, 0x3

    add-int/lit8 v8, v8, 0x3

    aget-object v7, v7, v8

    move v8, v6

    aget-byte v7, v7, v8

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    move-object v7, v2

    move v8, v5

    const/4 v9, 0x4

    add-int/lit8 v8, v8, 0x4

    aget-object v7, v7, v8

    move v8, v6

    aget-byte v7, v7, v8

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    move-object v7, v2

    move v8, v5

    const/4 v9, 0x5

    add-int/lit8 v8, v8, 0x5

    aget-object v7, v7, v8

    move v8, v6

    aget-byte v7, v7, v8

    if-nez v7, :cond_5

    move-object v7, v2

    move v8, v5

    const/4 v9, 0x6

    add-int/lit8 v8, v8, 0x6

    aget-object v7, v7, v8

    move v8, v6

    aget-byte v7, v7, v8

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    move v7, v5

    const/16 v8, 0xa

    add-int/lit8 v7, v7, 0xa

    move v8, v4

    if-ge v7, v8, :cond_3

    move-object v7, v2

    move v8, v5

    const/4 v9, 0x7

    add-int/lit8 v8, v8, 0x7

    aget-object v7, v7, v8

    move v8, v6

    aget-byte v7, v7, v8

    if-nez v7, :cond_3

    move-object v7, v2

    move v8, v5

    const/16 v9, 0x8

    add-int/lit8 v8, v8, 0x8

    aget-object v7, v7, v8

    move v8, v6

    aget-byte v7, v7, v8

    if-nez v7, :cond_3

    move-object v7, v2

    move v8, v5

    const/16 v9, 0x9

    add-int/lit8 v8, v8, 0x9

    aget-object v7, v7, v8

    move v8, v6

    aget-byte v7, v7, v8

    if-nez v7, :cond_3

    move-object v7, v2

    move v8, v5

    const/16 v9, 0xa

    add-int/lit8 v8, v8, 0xa

    aget-object v7, v7, v8

    move v8, v6

    aget-byte v7, v7, v8

    if-eqz v7, :cond_4

    :cond_3
    move v7, v5

    const/4 v8, 0x4

    add-int/lit8 v7, v7, -0x4

    if-ltz v7, :cond_5

    move-object v7, v2

    move v8, v5

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    aget-object v7, v7, v8

    move v8, v6

    aget-byte v7, v7, v8

    if-nez v7, :cond_5

    move-object v7, v2

    move v8, v5

    const/4 v9, 0x2

    add-int/lit8 v8, v8, -0x2

    aget-object v7, v7, v8

    move v8, v6

    aget-byte v7, v7, v8

    if-nez v7, :cond_5

    move-object v7, v2

    move v8, v5

    const/4 v9, 0x3

    add-int/lit8 v8, v8, -0x3

    aget-object v7, v7, v8

    move v8, v6

    aget-byte v7, v7, v8

    if-nez v7, :cond_5

    move-object v7, v2

    move v8, v5

    const/4 v9, 0x4

    add-int/lit8 v8, v8, -0x4

    aget-object v7, v7, v8

    move v8, v6

    aget-byte v7, v7, v8

    if-nez v7, :cond_5

    .line 116
    :cond_4
    add-int/lit8 v1, v1, 0x28

    .line 76
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 75
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 120
    .end local v6    # "x":I
    :cond_7
    move v7, v1

    move v0, v7

    .end local v0    # "matrix":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    return v0
.end method

.method static applyMaskPenaltyRule4(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)I
    .locals 14

    .prologue
    .line 128
    move-object v1, p0

    .local v1, "matrix":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    const/4 v10, 0x0

    move v2, v10

    .line 129
    .local v2, "numDarkCells":I
    move-object v10, v1

    invoke-virtual {v10}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getArray()[[B

    move-result-object v10

    move-object v3, v10

    .line 130
    .local v3, "array":[[B
    move-object v10, v1

    invoke-virtual {v10}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v10

    move v4, v10

    .line 131
    .local v4, "width":I
    move-object v10, v1

    invoke-virtual {v10}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v10

    move v5, v10

    .line 132
    .local v5, "height":I
    const/4 v10, 0x0

    move v6, v10

    .local v6, "y":I
    :goto_0
    move v10, v6

    move v11, v5

    if-ge v10, v11, :cond_2

    .line 133
    move-object v10, v3

    move v11, v6

    aget-object v10, v10, v11

    move-object v7, v10

    .line 134
    .local v7, "arrayY":[B
    const/4 v10, 0x0

    move v8, v10

    .local v8, "x":I
    :goto_1
    move v10, v8

    move v11, v4

    if-ge v10, v11, :cond_1

    .line 135
    move-object v10, v7

    move v11, v8

    aget-byte v10, v10, v11

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 136
    add-int/lit8 v2, v2, 0x1

    .line 134
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 132
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 140
    .end local v7    # "arrayY":[B
    .end local v8    # "x":I
    :cond_2
    move-object v10, v1

    invoke-virtual {v10}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getHeight()I

    move-result v10

    move-object v11, v1

    invoke-virtual {v11}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->getWidth()I

    move-result v11

    mul-int/2addr v10, v11

    move v6, v10

    .line 141
    .local v6, "numTotalCells":I
    move v10, v2

    int-to-double v10, v10

    move v12, v6

    int-to-double v12, v12

    div-double/2addr v10, v12

    move-wide v7, v10

    .line 142
    .local v7, "darkRatio":D
    move-wide v10, v7

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    const-wide/high16 v12, 0x4034000000000000L    # 20.0

    mul-double/2addr v10, v12

    double-to-int v10, v10

    move v9, v10

    .line 143
    .local v9, "fivePercentVariances":I
    move v10, v9

    const/16 v11, 0xa

    mul-int/lit8 v10, v10, 0xa

    move v1, v10

    .end local v1    # "matrix":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    return v1
.end method

.method static getDataMaskBit(III)Z
    .locals 10

    .prologue
    .line 153
    move v0, p0

    .local v0, "maskPattern":I
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v5, v0

    packed-switch v5, :pswitch_data_0

    .line 182
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid mask pattern: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 155
    :pswitch_0
    move v5, v2

    move v6, v1

    add-int/2addr v5, v6

    const/4 v6, 0x1

    and-int/lit8 v5, v5, 0x1

    move v3, v5

    .line 184
    .local v3, "intermediate":I
    :goto_0
    move v5, v3

    if-nez v5, :cond_0

    const/4 v5, 0x1

    :goto_1
    move v0, v5

    .end local v0    # "maskPattern":I
    return v0

    .line 158
    .end local v3    # "intermediate":I
    .restart local v0    # "maskPattern":I
    :pswitch_1
    move v5, v2

    const/4 v6, 0x1

    and-int/lit8 v5, v5, 0x1

    move v3, v5

    .line 159
    .restart local v3    # "intermediate":I
    goto :goto_0

    .line 161
    .end local v3    # "intermediate":I
    :pswitch_2
    move v5, v1

    const/4 v6, 0x3

    rem-int/lit8 v5, v5, 0x3

    move v3, v5

    .line 162
    .restart local v3    # "intermediate":I
    goto :goto_0

    .line 164
    .end local v3    # "intermediate":I
    :pswitch_3
    move v5, v2

    move v6, v1

    add-int/2addr v5, v6

    const/4 v6, 0x3

    rem-int/lit8 v5, v5, 0x3

    move v3, v5

    .line 165
    .restart local v3    # "intermediate":I
    goto :goto_0

    .line 167
    .end local v3    # "intermediate":I
    :pswitch_4
    move v5, v2

    const/4 v6, 0x1

    ushr-int/lit8 v5, v5, 0x1

    move v6, v1

    const/4 v7, 0x3

    div-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    const/4 v6, 0x1

    and-int/lit8 v5, v5, 0x1

    move v3, v5

    .line 168
    .restart local v3    # "intermediate":I
    goto :goto_0

    .line 170
    .end local v3    # "intermediate":I
    :pswitch_5
    move v5, v2

    move v6, v1

    mul-int/2addr v5, v6

    move v4, v5

    .line 171
    .local v4, "temp":I
    move v5, v4

    const/4 v6, 0x1

    and-int/lit8 v5, v5, 0x1

    move v6, v4

    const/4 v7, 0x3

    rem-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    move v3, v5

    .line 172
    .restart local v3    # "intermediate":I
    goto :goto_0

    .line 174
    .end local v3    # "intermediate":I
    .end local v4    # "temp":I
    :pswitch_6
    move v5, v2

    move v6, v1

    mul-int/2addr v5, v6

    move v4, v5

    .line 175
    .restart local v4    # "temp":I
    move v5, v4

    const/4 v6, 0x1

    and-int/lit8 v5, v5, 0x1

    move v6, v4

    const/4 v7, 0x3

    rem-int/lit8 v6, v6, 0x3

    add-int/2addr v5, v6

    const/4 v6, 0x1

    and-int/lit8 v5, v5, 0x1

    move v3, v5

    .line 176
    .restart local v3    # "intermediate":I
    goto :goto_0

    .line 178
    .end local v3    # "intermediate":I
    .end local v4    # "temp":I
    :pswitch_7
    move v5, v2

    move v6, v1

    mul-int/2addr v5, v6

    move v4, v5

    .line 179
    .restart local v4    # "temp":I
    move v5, v4

    const/4 v6, 0x3

    rem-int/lit8 v5, v5, 0x3

    move v6, v2

    move v7, v1

    add-int/2addr v6, v7

    const/4 v7, 0x1

    and-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    const/4 v6, 0x1

    and-int/lit8 v5, v5, 0x1

    move v3, v5

    .line 180
    .restart local v3    # "intermediate":I
    goto :goto_0

    .line 184
    .end local v4    # "temp":I
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 153
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
