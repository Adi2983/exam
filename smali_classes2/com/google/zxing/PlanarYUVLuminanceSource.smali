.class public final Lcom/google/zxing/PlanarYUVLuminanceSource;
.super Lcom/google/zxing/LuminanceSource;
.source "PlanarYUVLuminanceSource.java"


# instance fields
.field private final dataHeight:I

.field private final dataWidth:I

.field private final left:I

.field private final top:I

.field private final yuvData:[B


# direct methods
.method public constructor <init>([BIIIIIIZ)V
    .locals 13

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/PlanarYUVLuminanceSource;
    move-object v1, p1

    .local v1, "yuvData":[B
    move v2, p2

    .local v2, "dataWidth":I
    move/from16 v3, p3

    .local v3, "dataHeight":I
    move/from16 v4, p4

    .local v4, "left":I
    move/from16 v5, p5

    .local v5, "top":I
    move/from16 v6, p6

    .local v6, "width":I
    move/from16 v7, p7

    .local v7, "height":I
    move/from16 v8, p8

    .local v8, "reverseHorizontal":Z
    move-object v9, v0

    move v10, v6

    move v11, v7

    invoke-direct {v9, v10, v11}, Lcom/google/zxing/LuminanceSource;-><init>(II)V

    .line 47
    move v9, v4

    move v10, v6

    add-int/2addr v9, v10

    move v10, v2

    if-gt v9, v10, :cond_0

    move v9, v5

    move v10, v7

    add-int/2addr v9, v10

    move v10, v3

    if-le v9, v10, :cond_1

    .line 48
    :cond_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    const-string/jumbo v11, "Crop rectangle does not fit within image data."

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 51
    :cond_1
    move-object v9, v0

    move-object v10, v1

    iput-object v10, v9, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:[B

    .line 52
    move-object v9, v0

    move v10, v2

    iput v10, v9, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    .line 53
    move-object v9, v0

    move v10, v3

    iput v10, v9, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataHeight:I

    .line 54
    move-object v9, v0

    move v10, v4

    iput v10, v9, Lcom/google/zxing/PlanarYUVLuminanceSource;->left:I

    .line 55
    move-object v9, v0

    move v10, v5

    iput v10, v9, Lcom/google/zxing/PlanarYUVLuminanceSource;->top:I

    .line 56
    move v9, v8

    if-eqz v9, :cond_2

    .line 57
    move-object v9, v0

    move v10, v6

    move v11, v7

    invoke-direct {v9, v10, v11}, Lcom/google/zxing/PlanarYUVLuminanceSource;->reverseHorizontal(II)V

    .line 59
    :cond_2
    return-void
.end method

.method private reverseHorizontal(II)V
    .locals 14

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/PlanarYUVLuminanceSource;
    move v1, p1

    .local v1, "width":I
    move/from16 v2, p2

    .local v2, "height":I
    move-object v10, v0

    iget-object v10, v10, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:[B

    move-object v3, v10

    .line 143
    .local v3, "yuvData":[B
    const/4 v10, 0x0

    move v4, v10

    .local v4, "y":I
    move-object v10, v0

    iget v10, v10, Lcom/google/zxing/PlanarYUVLuminanceSource;->top:I

    move-object v11, v0

    iget v11, v11, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    mul-int/2addr v10, v11

    move-object v11, v0

    iget v11, v11, Lcom/google/zxing/PlanarYUVLuminanceSource;->left:I

    add-int/2addr v10, v11

    move v5, v10

    .local v5, "rowStart":I
    :goto_0
    move v10, v4

    move v11, v2

    if-ge v10, v11, :cond_1

    .line 144
    move v10, v5

    move v11, v1

    const/4 v12, 0x2

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    move v6, v10

    .line 145
    .local v6, "middle":I
    move v10, v5

    move v7, v10

    .local v7, "x1":I
    move v10, v5

    move v11, v1

    add-int/2addr v10, v11

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move v8, v10

    .local v8, "x2":I
    :goto_1
    move v10, v7

    move v11, v6

    if-ge v10, v11, :cond_0

    .line 146
    move-object v10, v3

    move v11, v7

    aget-byte v10, v10, v11

    move v9, v10

    .line 147
    .local v9, "temp":B
    move-object v10, v3

    move v11, v7

    move-object v12, v3

    move v13, v8

    aget-byte v12, v12, v13

    aput-byte v12, v10, v11

    .line 148
    move-object v10, v3

    move v11, v8

    move v12, v9

    aput-byte v12, v10, v11

    .line 145
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    .line 143
    .end local v9    # "temp":B
    :cond_0
    add-int/lit8 v4, v4, 0x1

    move v10, v5

    move-object v11, v0

    iget v11, v11, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    add-int/2addr v10, v11

    move v5, v10

    goto :goto_0

    .line 151
    .end local v6    # "middle":I
    .end local v7    # "x1":I
    .end local v8    # "x2":I
    :cond_1
    return-void
.end method


# virtual methods
.method public crop(IIII)Lcom/google/zxing/LuminanceSource;
    .locals 16

    .prologue
    .line 113
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/PlanarYUVLuminanceSource;
    move/from16 v1, p1

    .local v1, "left":I
    move/from16 v2, p2

    .local v2, "top":I
    move/from16 v3, p3

    .local v3, "width":I
    move/from16 v4, p4

    .local v4, "height":I
    new-instance v5, Lcom/google/zxing/PlanarYUVLuminanceSource;

    move-object v15, v5

    move-object v5, v15

    move-object v6, v15

    move-object v7, v0

    iget-object v7, v7, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:[B

    move-object v8, v0

    iget v8, v8, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    move-object v9, v0

    iget v9, v9, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataHeight:I

    move-object v10, v0

    iget v10, v10, Lcom/google/zxing/PlanarYUVLuminanceSource;->left:I

    move v11, v1

    add-int/2addr v10, v11

    move-object v11, v0

    iget v11, v11, Lcom/google/zxing/PlanarYUVLuminanceSource;->top:I

    move v12, v2

    add-int/2addr v11, v12

    move v12, v3

    move v13, v4

    const/4 v14, 0x0

    invoke-direct/range {v6 .. v14}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    move-object v0, v5

    .end local v0    # "this":Lcom/google/zxing/PlanarYUVLuminanceSource;
    return-object v0
.end method

.method public getMatrix()[B
    .locals 14

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/PlanarYUVLuminanceSource;
    move-object v9, v0

    invoke-virtual {v9}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getWidth()I

    move-result v9

    move v1, v9

    .line 78
    .local v1, "width":I
    move-object v9, v0

    invoke-virtual {v9}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getHeight()I

    move-result v9

    move v2, v9

    .line 82
    .local v2, "height":I
    move v9, v1

    move-object v10, v0

    iget v10, v10, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    if-ne v9, v10, :cond_0

    move v9, v2

    move-object v10, v0

    iget v10, v10, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataHeight:I

    if-ne v9, v10, :cond_0

    .line 83
    move-object v9, v0

    iget-object v9, v9, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:[B

    move-object v0, v9

    .line 103
    .end local v0    # "this":Lcom/google/zxing/PlanarYUVLuminanceSource;
    :goto_0
    return-object v0

    .line 86
    .restart local v0    # "this":Lcom/google/zxing/PlanarYUVLuminanceSource;
    :cond_0
    move v9, v1

    move v10, v2

    mul-int/2addr v9, v10

    move v3, v9

    .line 87
    .local v3, "area":I
    move v9, v3

    new-array v9, v9, [B

    move-object v4, v9

    .line 88
    .local v4, "matrix":[B
    move-object v9, v0

    iget v9, v9, Lcom/google/zxing/PlanarYUVLuminanceSource;->top:I

    move-object v10, v0

    iget v10, v10, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    mul-int/2addr v9, v10

    move-object v10, v0

    iget v10, v10, Lcom/google/zxing/PlanarYUVLuminanceSource;->left:I

    add-int/2addr v9, v10

    move v5, v9

    .line 91
    .local v5, "inputOffset":I
    move v9, v1

    move-object v10, v0

    iget v10, v10, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    if-ne v9, v10, :cond_1

    .line 92
    move-object v9, v0

    iget-object v9, v9, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:[B

    move v10, v5

    move-object v11, v4

    const/4 v12, 0x0

    move v13, v3

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    move-object v9, v4

    move-object v0, v9

    goto :goto_0

    .line 97
    :cond_1
    move-object v9, v0

    iget-object v9, v9, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:[B

    move-object v6, v9

    .line 98
    .local v6, "yuv":[B
    const/4 v9, 0x0

    move v7, v9

    .local v7, "y":I
    :goto_1
    move v9, v7

    move v10, v2

    if-ge v9, v10, :cond_2

    .line 99
    move v9, v7

    move v10, v1

    mul-int/2addr v9, v10

    move v8, v9

    .line 100
    .local v8, "outputOffset":I
    move-object v9, v6

    move v10, v5

    move-object v11, v4

    move v12, v8

    move v13, v1

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    move v9, v5

    move-object v10, v0

    iget v10, v10, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    add-int/2addr v9, v10

    move v5, v9

    .line 98
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 103
    .end local v8    # "outputOffset":I
    :cond_2
    move-object v9, v4

    move-object v0, v9

    goto :goto_0
.end method

.method public getRow(I[B)[B
    .locals 11

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/PlanarYUVLuminanceSource;
    move v1, p1

    .local v1, "y":I
    move-object v2, p2

    .local v2, "row":[B
    move v5, v1

    if-ltz v5, :cond_0

    move v5, v1

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getHeight()I

    move-result v6

    if-lt v5, v6, :cond_1

    .line 64
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Requested row is outside the image: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 66
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getWidth()I

    move-result v5

    move v3, v5

    .line 67
    .local v3, "width":I
    move-object v5, v2

    if-eqz v5, :cond_2

    move-object v5, v2

    array-length v5, v5

    move v6, v3

    if-ge v5, v6, :cond_3

    .line 68
    :cond_2
    move v5, v3

    new-array v5, v5, [B

    move-object v2, v5

    .line 70
    :cond_3
    move v5, v1

    move-object v6, v0

    iget v6, v6, Lcom/google/zxing/PlanarYUVLuminanceSource;->top:I

    add-int/2addr v5, v6

    move-object v6, v0

    iget v6, v6, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    mul-int/2addr v5, v6

    move-object v6, v0

    iget v6, v6, Lcom/google/zxing/PlanarYUVLuminanceSource;->left:I

    add-int/2addr v5, v6

    move v4, v5

    .line 71
    .local v4, "offset":I
    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:[B

    move v6, v4

    move-object v7, v2

    const/4 v8, 0x0

    move v9, v3

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    move-object v5, v2

    move-object v0, v5

    .end local v0    # "this":Lcom/google/zxing/PlanarYUVLuminanceSource;
    return-object v0
.end method

.method public isCropSupported()Z
    .locals 2

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/PlanarYUVLuminanceSource;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/PlanarYUVLuminanceSource;
    return v0
.end method

.method public renderCroppedGreyscaleBitmap()[I
    .locals 15

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/PlanarYUVLuminanceSource;
    move-object v10, v0

    invoke-virtual {v10}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getWidth()I

    move-result v10

    move v1, v10

    .line 125
    .local v1, "width":I
    move-object v10, v0

    invoke-virtual {v10}, Lcom/google/zxing/PlanarYUVLuminanceSource;->getHeight()I

    move-result v10

    move v2, v10

    .line 126
    .local v2, "height":I
    move v10, v1

    move v11, v2

    mul-int/2addr v10, v11

    new-array v10, v10, [I

    move-object v3, v10

    .line 127
    .local v3, "pixels":[I
    move-object v10, v0

    iget-object v10, v10, Lcom/google/zxing/PlanarYUVLuminanceSource;->yuvData:[B

    move-object v4, v10

    .line 128
    .local v4, "yuv":[B
    move-object v10, v0

    iget v10, v10, Lcom/google/zxing/PlanarYUVLuminanceSource;->top:I

    move-object v11, v0

    iget v11, v11, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    mul-int/2addr v10, v11

    move-object v11, v0

    iget v11, v11, Lcom/google/zxing/PlanarYUVLuminanceSource;->left:I

    add-int/2addr v10, v11

    move v5, v10

    .line 130
    .local v5, "inputOffset":I
    const/4 v10, 0x0

    move v6, v10

    .local v6, "y":I
    :goto_0
    move v10, v6

    move v11, v2

    if-ge v10, v11, :cond_1

    .line 131
    move v10, v6

    move v11, v1

    mul-int/2addr v10, v11

    move v7, v10

    .line 132
    .local v7, "outputOffset":I
    const/4 v10, 0x0

    move v8, v10

    .local v8, "x":I
    :goto_1
    move v10, v8

    move v11, v1

    if-ge v10, v11, :cond_0

    .line 133
    move-object v10, v4

    move v11, v5

    move v12, v8

    add-int/2addr v11, v12

    aget-byte v10, v10, v11

    const/16 v11, 0xff

    and-int/lit16 v10, v10, 0xff

    move v9, v10

    .line 134
    .local v9, "grey":I
    move-object v10, v3

    move v11, v7

    move v12, v8

    add-int/2addr v11, v12

    const/high16 v12, -0x1000000

    move v13, v9

    const v14, 0x10101

    mul-int/2addr v13, v14

    or-int/2addr v12, v13

    aput v12, v10, v11

    .line 132
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 136
    .end local v9    # "grey":I
    :cond_0
    move v10, v5

    move-object v11, v0

    iget v11, v11, Lcom/google/zxing/PlanarYUVLuminanceSource;->dataWidth:I

    add-int/2addr v10, v11

    move v5, v10

    .line 130
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 138
    .end local v7    # "outputOffset":I
    .end local v8    # "x":I
    :cond_1
    move-object v10, v3

    move-object v0, v10

    .end local v0    # "this":Lcom/google/zxing/PlanarYUVLuminanceSource;
    return-object v0
.end method
