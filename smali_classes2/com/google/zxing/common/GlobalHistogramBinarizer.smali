.class public Lcom/google/zxing/common/GlobalHistogramBinarizer;
.super Lcom/google/zxing/Binarizer;
.source "GlobalHistogramBinarizer.java"


# static fields
.field private static final EMPTY:[B

.field private static final LUMINANCE_BITS:I = 0x5

.field private static final LUMINANCE_BUCKETS:I = 0x20

.field private static final LUMINANCE_SHIFT:I = 0x3


# instance fields
.field private final buckets:[I

.field private luminances:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/google/zxing/common/GlobalHistogramBinarizer;->EMPTY:[B

    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/LuminanceSource;)V
    .locals 4

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/GlobalHistogramBinarizer;
    move-object v1, p1

    .local v1, "source":Lcom/google/zxing/LuminanceSource;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/zxing/Binarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    .line 46
    move-object v2, v0

    sget-object v3, Lcom/google/zxing/common/GlobalHistogramBinarizer;->EMPTY:[B

    iput-object v3, v2, Lcom/google/zxing/common/GlobalHistogramBinarizer;->luminances:[B

    .line 47
    move-object v2, v0

    const/16 v3, 0x20

    new-array v3, v3, [I

    iput-object v3, v2, Lcom/google/zxing/common/GlobalHistogramBinarizer;->buckets:[I

    .line 48
    return-void
.end method

.method private static estimateBlackPoint([I)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 141
    move-object/from16 v0, p0

    .local v0, "buckets":[I
    move-object v12, v0

    array-length v12, v12

    move v1, v12

    .line 142
    .local v1, "numBuckets":I
    const/4 v12, 0x0

    move v2, v12

    .line 143
    .local v2, "maxBucketCount":I
    const/4 v12, 0x0

    move v3, v12

    .line 144
    .local v3, "firstPeak":I
    const/4 v12, 0x0

    move v4, v12

    .line 145
    .local v4, "firstPeakSize":I
    const/4 v12, 0x0

    move v5, v12

    .local v5, "x":I
    :goto_0
    move v12, v5

    move v13, v1

    if-ge v12, v13, :cond_2

    .line 146
    move-object v12, v0

    move v13, v5

    aget v12, v12, v13

    move v13, v4

    if-le v12, v13, :cond_0

    .line 147
    move v12, v5

    move v3, v12

    .line 148
    move-object v12, v0

    move v13, v5

    aget v12, v12, v13

    move v4, v12

    .line 150
    :cond_0
    move-object v12, v0

    move v13, v5

    aget v12, v12, v13

    move v13, v2

    if-le v12, v13, :cond_1

    .line 151
    move-object v12, v0

    move v13, v5

    aget v12, v12, v13

    move v2, v12

    .line 145
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 156
    :cond_2
    const/4 v12, 0x0

    move v5, v12

    .line 157
    .local v5, "secondPeak":I
    const/4 v12, 0x0

    move v6, v12

    .line 158
    .local v6, "secondPeakScore":I
    const/4 v12, 0x0

    move v7, v12

    .local v7, "x":I
    :goto_1
    move v12, v7

    move v13, v1

    if-ge v12, v13, :cond_4

    .line 159
    move v12, v7

    move v13, v3

    sub-int/2addr v12, v13

    move v8, v12

    .line 161
    .local v8, "distanceToBiggest":I
    move-object v12, v0

    move v13, v7

    aget v12, v12, v13

    move v13, v8

    mul-int/2addr v12, v13

    move v13, v8

    mul-int/2addr v12, v13

    move v9, v12

    .line 162
    .local v9, "score":I
    move v12, v9

    move v13, v6

    if-le v12, v13, :cond_3

    .line 163
    move v12, v7

    move v5, v12

    .line 164
    move v12, v9

    move v6, v12

    .line 158
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 169
    .end local v8    # "distanceToBiggest":I
    .end local v9    # "score":I
    :cond_4
    move v12, v3

    move v13, v5

    if-le v12, v13, :cond_5

    .line 170
    move v12, v3

    move v7, v12

    .line 171
    .local v7, "temp":I
    move v12, v5

    move v3, v12

    .line 172
    move v12, v7

    move v5, v12

    .line 177
    .end local v7    # "temp":I
    :cond_5
    move v12, v5

    move v13, v3

    sub-int/2addr v12, v13

    move v13, v1

    const/4 v14, 0x4

    shr-int/lit8 v13, v13, 0x4

    if-gt v12, v13, :cond_6

    .line 178
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v12

    throw v12

    .line 182
    :cond_6
    move v12, v5

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v7, v12

    .line 183
    .local v7, "bestValley":I
    const/4 v12, -0x1

    move v8, v12

    .line 184
    .local v8, "bestValleyScore":I
    move v12, v5

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v9, v12

    .local v9, "x":I
    :goto_2
    move v12, v9

    move v13, v3

    if-le v12, v13, :cond_8

    .line 185
    move v12, v9

    move v13, v3

    sub-int/2addr v12, v13

    move v10, v12

    .line 186
    .local v10, "fromFirst":I
    move v12, v10

    move v13, v10

    mul-int/2addr v12, v13

    move v13, v5

    move v14, v9

    sub-int/2addr v13, v14

    mul-int/2addr v12, v13

    move v13, v2

    move-object v14, v0

    move v15, v9

    aget v14, v14, v15

    sub-int/2addr v13, v14

    mul-int/2addr v12, v13

    move v11, v12

    .line 187
    .local v11, "score":I
    move v12, v11

    move v13, v8

    if-le v12, v13, :cond_7

    .line 188
    move v12, v9

    move v7, v12

    .line 189
    move v12, v11

    move v8, v12

    .line 184
    :cond_7
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 193
    .end local v10    # "fromFirst":I
    .end local v11    # "score":I
    :cond_8
    move v12, v7

    const/4 v13, 0x3

    shl-int/lit8 v12, v12, 0x3

    move v0, v12

    .end local v0    # "buckets":[I
    return v0
.end method

.method private initArrays(I)V
    .locals 6

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/GlobalHistogramBinarizer;
    move v1, p1

    .local v1, "luminanceSize":I
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/common/GlobalHistogramBinarizer;->luminances:[B

    array-length v3, v3

    move v4, v1

    if-ge v3, v4, :cond_0

    .line 132
    move-object v3, v0

    move v4, v1

    new-array v4, v4, [B

    iput-object v4, v3, Lcom/google/zxing/common/GlobalHistogramBinarizer;->luminances:[B

    .line 134
    :cond_0
    const/4 v3, 0x0

    move v2, v3

    .local v2, "x":I
    :goto_0
    move v3, v2

    const/16 v4, 0x20

    if-ge v3, v4, :cond_1

    .line 135
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/common/GlobalHistogramBinarizer;->buckets:[I

    move v4, v2

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 134
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    :cond_1
    return-void
.end method


# virtual methods
.method public createBinarizer(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Binarizer;
    .locals 6

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/GlobalHistogramBinarizer;
    move-object v1, p1

    .local v1, "source":Lcom/google/zxing/LuminanceSource;
    new-instance v2, Lcom/google/zxing/common/GlobalHistogramBinarizer;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/zxing/common/GlobalHistogramBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/google/zxing/common/GlobalHistogramBinarizer;
    return-object v0
.end method

.method public getBlackMatrix()Lcom/google/zxing/common/BitMatrix;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 88
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/common/GlobalHistogramBinarizer;
    move-object v12, v0

    invoke-virtual {v12}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->getLuminanceSource()Lcom/google/zxing/LuminanceSource;

    move-result-object v12

    move-object v1, v12

    .line 89
    .local v1, "source":Lcom/google/zxing/LuminanceSource;
    move-object v12, v1

    invoke-virtual {v12}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v12

    move v2, v12

    .line 90
    .local v2, "width":I
    move-object v12, v1

    invoke-virtual {v12}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    move-result v12

    move v3, v12

    .line 91
    .local v3, "height":I
    new-instance v12, Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move v14, v2

    move v15, v3

    invoke-direct {v13, v14, v15}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    move-object v4, v12

    .line 95
    .local v4, "matrix":Lcom/google/zxing/common/BitMatrix;
    move-object v12, v0

    move v13, v2

    invoke-direct {v12, v13}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->initArrays(I)V

    .line 96
    move-object v12, v0

    iget-object v12, v12, Lcom/google/zxing/common/GlobalHistogramBinarizer;->buckets:[I

    move-object v5, v12

    .line 97
    .local v5, "localBuckets":[I
    const/4 v12, 0x1

    move v6, v12

    .local v6, "y":I
    :goto_0
    move v12, v6

    const/4 v13, 0x5

    if-ge v12, v13, :cond_1

    .line 98
    move v12, v3

    move v13, v6

    mul-int/2addr v12, v13

    const/4 v13, 0x5

    div-int/lit8 v12, v12, 0x5

    move v7, v12

    .line 99
    .local v7, "row":I
    move-object v12, v1

    move v13, v7

    move-object v14, v0

    iget-object v14, v14, Lcom/google/zxing/common/GlobalHistogramBinarizer;->luminances:[B

    invoke-virtual {v12, v13, v14}, Lcom/google/zxing/LuminanceSource;->getRow(I[B)[B

    move-result-object v12

    move-object v8, v12

    .line 100
    .local v8, "localLuminances":[B
    move v12, v2

    const/4 v13, 0x2

    shl-int/lit8 v12, v12, 0x2

    const/4 v13, 0x5

    div-int/lit8 v12, v12, 0x5

    move v9, v12

    .line 101
    .local v9, "right":I
    move v12, v2

    const/4 v13, 0x5

    div-int/lit8 v12, v12, 0x5

    move v10, v12

    .local v10, "x":I
    :goto_1
    move v12, v10

    move v13, v9

    if-ge v12, v13, :cond_0

    .line 102
    move-object v12, v8

    move v13, v10

    aget-byte v12, v12, v13

    const/16 v13, 0xff

    and-int/lit16 v12, v12, 0xff

    move v11, v12

    .line 103
    .local v11, "pixel":I
    move-object v12, v5

    move v13, v11

    const/4 v14, 0x3

    shr-int/lit8 v13, v13, 0x3

    move-object/from16 v16, v12

    move/from16 v17, v13

    move-object/from16 v12, v16

    move/from16 v13, v17

    move-object/from16 v14, v16

    move/from16 v15, v17

    aget v14, v14, v15

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    aput v14, v12, v13

    .line 101
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 97
    .end local v11    # "pixel":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 106
    .end local v7    # "row":I
    .end local v8    # "localLuminances":[B
    .end local v9    # "right":I
    .end local v10    # "x":I
    :cond_1
    move-object v12, v5

    invoke-static {v12}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->estimateBlackPoint([I)I

    move-result v12

    move v6, v12

    .line 111
    .local v6, "blackPoint":I
    move-object v12, v1

    invoke-virtual {v12}, Lcom/google/zxing/LuminanceSource;->getMatrix()[B

    move-result-object v12

    move-object v7, v12

    .line 112
    .local v7, "localLuminances":[B
    const/4 v12, 0x0

    move v8, v12

    .local v8, "y":I
    :goto_2
    move v12, v8

    move v13, v3

    if-ge v12, v13, :cond_4

    .line 113
    move v12, v8

    move v13, v2

    mul-int/2addr v12, v13

    move v9, v12

    .line 114
    .local v9, "offset":I
    const/4 v12, 0x0

    move v10, v12

    .restart local v10    # "x":I
    :goto_3
    move v12, v10

    move v13, v2

    if-ge v12, v13, :cond_3

    .line 115
    move-object v12, v7

    move v13, v9

    move v14, v10

    add-int/2addr v13, v14

    aget-byte v12, v12, v13

    const/16 v13, 0xff

    and-int/lit16 v12, v12, 0xff

    move v11, v12

    .line 116
    .restart local v11    # "pixel":I
    move v12, v11

    move v13, v6

    if-ge v12, v13, :cond_2

    .line 117
    move-object v12, v4

    move v13, v10

    move v14, v8

    invoke-virtual {v12, v13, v14}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 114
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 112
    .end local v11    # "pixel":I
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 122
    .end local v9    # "offset":I
    .end local v10    # "x":I
    :cond_4
    move-object v12, v4

    move-object v0, v12

    .end local v0    # "this":Lcom/google/zxing/common/GlobalHistogramBinarizer;
    return-object v0
.end method

.method public getBlackRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 53
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/common/GlobalHistogramBinarizer;
    move/from16 v1, p1

    .local v1, "y":I
    move-object/from16 v2, p2

    .local v2, "row":Lcom/google/zxing/common/BitArray;
    move-object v13, v0

    invoke-virtual {v13}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->getLuminanceSource()Lcom/google/zxing/LuminanceSource;

    move-result-object v13

    move-object v3, v13

    .line 54
    .local v3, "source":Lcom/google/zxing/LuminanceSource;
    move-object v13, v3

    invoke-virtual {v13}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v13

    move v4, v13

    .line 55
    .local v4, "width":I
    move-object v13, v2

    if-eqz v13, :cond_0

    move-object v13, v2

    invoke-virtual {v13}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v13

    move v14, v4

    if-ge v13, v14, :cond_1

    .line 56
    :cond_0
    new-instance v13, Lcom/google/zxing/common/BitArray;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move v15, v4

    invoke-direct {v14, v15}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    move-object v2, v13

    .line 61
    :goto_0
    move-object v13, v0

    move v14, v4

    invoke-direct {v13, v14}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->initArrays(I)V

    .line 62
    move-object v13, v3

    move v14, v1

    move-object v15, v0

    iget-object v15, v15, Lcom/google/zxing/common/GlobalHistogramBinarizer;->luminances:[B

    invoke-virtual {v13, v14, v15}, Lcom/google/zxing/LuminanceSource;->getRow(I[B)[B

    move-result-object v13

    move-object v5, v13

    .line 63
    .local v5, "localLuminances":[B
    move-object v13, v0

    iget-object v13, v13, Lcom/google/zxing/common/GlobalHistogramBinarizer;->buckets:[I

    move-object v6, v13

    .line 64
    .local v6, "localBuckets":[I
    const/4 v13, 0x0

    move v7, v13

    .local v7, "x":I
    :goto_1
    move v13, v7

    move v14, v4

    if-ge v13, v14, :cond_2

    .line 65
    move-object v13, v5

    move v14, v7

    aget-byte v13, v13, v14

    const/16 v14, 0xff

    and-int/lit16 v13, v13, 0xff

    move v8, v13

    .line 66
    .local v8, "pixel":I
    move-object v13, v6

    move v14, v8

    const/4 v15, 0x3

    shr-int/lit8 v14, v14, 0x3

    move-object/from16 v17, v13

    move/from16 v18, v14

    move-object/from16 v13, v17

    move/from16 v14, v18

    move-object/from16 v15, v17

    move/from16 v16, v18

    aget v15, v15, v16

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    aput v15, v13, v14

    .line 64
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 58
    .end local v5    # "localLuminances":[B
    .end local v6    # "localBuckets":[I
    .end local v7    # "x":I
    .end local v8    # "pixel":I
    :cond_1
    move-object v13, v2

    invoke-virtual {v13}, Lcom/google/zxing/common/BitArray;->clear()V

    goto :goto_0

    .line 68
    .restart local v5    # "localLuminances":[B
    .restart local v6    # "localBuckets":[I
    .restart local v7    # "x":I
    :cond_2
    move-object v13, v6

    invoke-static {v13}, Lcom/google/zxing/common/GlobalHistogramBinarizer;->estimateBlackPoint([I)I

    move-result v13

    move v7, v13

    .line 70
    .local v7, "blackPoint":I
    move-object v13, v5

    const/4 v14, 0x0

    aget-byte v13, v13, v14

    const/16 v14, 0xff

    and-int/lit16 v13, v13, 0xff

    move v8, v13

    .line 71
    .local v8, "left":I
    move-object v13, v5

    const/4 v14, 0x1

    aget-byte v13, v13, v14

    const/16 v14, 0xff

    and-int/lit16 v13, v13, 0xff

    move v9, v13

    .line 72
    .local v9, "center":I
    const/4 v13, 0x1

    move v10, v13

    .local v10, "x":I
    :goto_2
    move v13, v10

    move v14, v4

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    if-ge v13, v14, :cond_4

    .line 73
    move-object v13, v5

    move v14, v10

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    aget-byte v13, v13, v14

    const/16 v14, 0xff

    and-int/lit16 v13, v13, 0xff

    move v11, v13

    .line 75
    .local v11, "right":I
    move v13, v9

    const/4 v14, 0x2

    shl-int/lit8 v13, v13, 0x2

    move v14, v8

    sub-int/2addr v13, v14

    move v14, v11

    sub-int/2addr v13, v14

    const/4 v14, 0x1

    shr-int/lit8 v13, v13, 0x1

    move v12, v13

    .line 76
    .local v12, "luminance":I
    move v13, v12

    move v14, v7

    if-ge v13, v14, :cond_3

    .line 77
    move-object v13, v2

    move v14, v10

    invoke-virtual {v13, v14}, Lcom/google/zxing/common/BitArray;->set(I)V

    .line 79
    :cond_3
    move v13, v9

    move v8, v13

    .line 80
    move v13, v11

    move v9, v13

    .line 72
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 82
    .end local v11    # "right":I
    .end local v12    # "luminance":I
    :cond_4
    move-object v13, v2

    move-object v0, v13

    .end local v0    # "this":Lcom/google/zxing/common/GlobalHistogramBinarizer;
    return-object v0
.end method
