.class public final Lcom/google/zxing/RGBLuminanceSource;
.super Lcom/google/zxing/LuminanceSource;
.source "RGBLuminanceSource.java"


# instance fields
.field private final dataHeight:I

.field private final dataWidth:I

.field private final left:I

.field private final luminances:[B

.field private final top:I


# direct methods
.method public constructor <init>(II[I)V
    .locals 15

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/RGBLuminanceSource;
    move/from16 v1, p1

    .local v1, "width":I
    move/from16 v2, p2

    .local v2, "height":I
    move-object/from16 v3, p3

    .local v3, "pixels":[I
    move-object v11, v0

    move v12, v1

    move v13, v2

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/LuminanceSource;-><init>(II)V

    .line 37
    move-object v11, v0

    move v12, v1

    iput v12, v11, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    .line 38
    move-object v11, v0

    move v12, v2

    iput v12, v11, Lcom/google/zxing/RGBLuminanceSource;->dataHeight:I

    .line 39
    move-object v11, v0

    const/4 v12, 0x0

    iput v12, v11, Lcom/google/zxing/RGBLuminanceSource;->left:I

    .line 40
    move-object v11, v0

    const/4 v12, 0x0

    iput v12, v11, Lcom/google/zxing/RGBLuminanceSource;->top:I

    .line 44
    move-object v11, v0

    move v12, v1

    move v13, v2

    mul-int/2addr v12, v13

    new-array v12, v12, [B

    iput-object v12, v11, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    .line 45
    const/4 v11, 0x0

    move v4, v11

    .local v4, "y":I
    :goto_0
    move v11, v4

    move v12, v2

    if-ge v11, v12, :cond_2

    .line 46
    move v11, v4

    move v12, v1

    mul-int/2addr v11, v12

    move v5, v11

    .line 47
    .local v5, "offset":I
    const/4 v11, 0x0

    move v6, v11

    .local v6, "x":I
    :goto_1
    move v11, v6

    move v12, v1

    if-ge v11, v12, :cond_1

    .line 48
    move-object v11, v3

    move v12, v5

    move v13, v6

    add-int/2addr v12, v13

    aget v11, v11, v12

    move v7, v11

    .line 49
    .local v7, "pixel":I
    move v11, v7

    const/16 v12, 0x10

    shr-int/lit8 v11, v11, 0x10

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    move v8, v11

    .line 50
    .local v8, "r":I
    move v11, v7

    const/16 v12, 0x8

    shr-int/lit8 v11, v11, 0x8

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    move v9, v11

    .line 51
    .local v9, "g":I
    move v11, v7

    const/16 v12, 0xff

    and-int/lit16 v11, v11, 0xff

    move v10, v11

    .line 52
    .local v10, "b":I
    move v11, v8

    move v12, v9

    if-ne v11, v12, :cond_0

    move v11, v9

    move v12, v10

    if-ne v11, v12, :cond_0

    .line 54
    move-object v11, v0

    iget-object v11, v11, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    move v12, v5

    move v13, v6

    add-int/2addr v12, v13

    move v13, v8

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    .line 47
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 57
    :cond_0
    move-object v11, v0

    iget-object v11, v11, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    move v12, v5

    move v13, v6

    add-int/2addr v12, v13

    move v13, v8

    move v14, v9

    add-int/2addr v13, v14

    move v14, v9

    add-int/2addr v13, v14

    move v14, v10

    add-int/2addr v13, v14

    const/4 v14, 0x2

    shr-int/lit8 v13, v13, 0x2

    int-to-byte v13, v13

    aput-byte v13, v11, v12

    goto :goto_2

    .line 45
    .end local v7    # "pixel":I
    .end local v8    # "r":I
    .end local v9    # "g":I
    .end local v10    # "b":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 61
    .end local v5    # "offset":I
    .end local v6    # "x":I
    :cond_2
    return-void
.end method

.method private constructor <init>([BIIIIII)V
    .locals 12

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/RGBLuminanceSource;
    move-object v1, p1

    .local v1, "pixels":[B
    move v2, p2

    .local v2, "dataWidth":I
    move v3, p3

    .local v3, "dataHeight":I
    move/from16 v4, p4

    .local v4, "left":I
    move/from16 v5, p5

    .local v5, "top":I
    move/from16 v6, p6

    .local v6, "width":I
    move/from16 v7, p7

    .local v7, "height":I
    move-object v8, v0

    move v9, v6

    move v10, v7

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/LuminanceSource;-><init>(II)V

    .line 71
    move v8, v4

    move v9, v6

    add-int/2addr v8, v9

    move v9, v2

    if-gt v8, v9, :cond_0

    move v8, v5

    move v9, v7

    add-int/2addr v8, v9

    move v9, v3

    if-le v8, v9, :cond_1

    .line 72
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string/jumbo v10, "Crop rectangle does not fit within image data."

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 74
    :cond_1
    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    .line 75
    move-object v8, v0

    move v9, v2

    iput v9, v8, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    .line 76
    move-object v8, v0

    move v9, v3

    iput v9, v8, Lcom/google/zxing/RGBLuminanceSource;->dataHeight:I

    .line 77
    move-object v8, v0

    move v9, v4

    iput v9, v8, Lcom/google/zxing/RGBLuminanceSource;->left:I

    .line 78
    move-object v8, v0

    move v9, v5

    iput v9, v8, Lcom/google/zxing/RGBLuminanceSource;->top:I

    .line 79
    return-void
.end method


# virtual methods
.method public crop(IIII)Lcom/google/zxing/LuminanceSource;
    .locals 15

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/RGBLuminanceSource;
    move/from16 v1, p1

    .local v1, "left":I
    move/from16 v2, p2

    .local v2, "top":I
    move/from16 v3, p3

    .local v3, "width":I
    move/from16 v4, p4

    .local v4, "height":I
    new-instance v5, Lcom/google/zxing/RGBLuminanceSource;

    move-object v14, v5

    move-object v5, v14

    move-object v6, v14

    move-object v7, v0

    iget-object v7, v7, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    move-object v8, v0

    iget v8, v8, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    move-object v9, v0

    iget v9, v9, Lcom/google/zxing/RGBLuminanceSource;->dataHeight:I

    move-object v10, v0

    iget v10, v10, Lcom/google/zxing/RGBLuminanceSource;->left:I

    move v11, v1

    add-int/2addr v10, v11

    move-object v11, v0

    iget v11, v11, Lcom/google/zxing/RGBLuminanceSource;->top:I

    move v12, v2

    add-int/2addr v11, v12

    move v12, v3

    move v13, v4

    invoke-direct/range {v6 .. v13}, Lcom/google/zxing/RGBLuminanceSource;-><init>([BIIIIII)V

    move-object v0, v5

    .end local v0    # "this":Lcom/google/zxing/RGBLuminanceSource;
    return-object v0
.end method

.method public getMatrix()[B
    .locals 14

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/RGBLuminanceSource;
    move-object v9, v0

    invoke-virtual {v9}, Lcom/google/zxing/RGBLuminanceSource;->getWidth()I

    move-result v9

    move v1, v9

    .line 98
    .local v1, "width":I
    move-object v9, v0

    invoke-virtual {v9}, Lcom/google/zxing/RGBLuminanceSource;->getHeight()I

    move-result v9

    move v2, v9

    .line 102
    .local v2, "height":I
    move v9, v1

    move-object v10, v0

    iget v10, v10, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    if-ne v9, v10, :cond_0

    move v9, v2

    move-object v10, v0

    iget v10, v10, Lcom/google/zxing/RGBLuminanceSource;->dataHeight:I

    if-ne v9, v10, :cond_0

    .line 103
    move-object v9, v0

    iget-object v9, v9, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    move-object v0, v9

    .line 123
    .end local v0    # "this":Lcom/google/zxing/RGBLuminanceSource;
    :goto_0
    return-object v0

    .line 106
    .restart local v0    # "this":Lcom/google/zxing/RGBLuminanceSource;
    :cond_0
    move v9, v1

    move v10, v2

    mul-int/2addr v9, v10

    move v3, v9

    .line 107
    .local v3, "area":I
    move v9, v3

    new-array v9, v9, [B

    move-object v4, v9

    .line 108
    .local v4, "matrix":[B
    move-object v9, v0

    iget v9, v9, Lcom/google/zxing/RGBLuminanceSource;->top:I

    move-object v10, v0

    iget v10, v10, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    mul-int/2addr v9, v10

    move-object v10, v0

    iget v10, v10, Lcom/google/zxing/RGBLuminanceSource;->left:I

    add-int/2addr v9, v10

    move v5, v9

    .line 111
    .local v5, "inputOffset":I
    move v9, v1

    move-object v10, v0

    iget v10, v10, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    if-ne v9, v10, :cond_1

    .line 112
    move-object v9, v0

    iget-object v9, v9, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    move v10, v5

    move-object v11, v4

    const/4 v12, 0x0

    move v13, v3

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    move-object v9, v4

    move-object v0, v9

    goto :goto_0

    .line 117
    :cond_1
    move-object v9, v0

    iget-object v9, v9, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    move-object v6, v9

    .line 118
    .local v6, "rgb":[B
    const/4 v9, 0x0

    move v7, v9

    .local v7, "y":I
    :goto_1
    move v9, v7

    move v10, v2

    if-ge v9, v10, :cond_2

    .line 119
    move v9, v7

    move v10, v1

    mul-int/2addr v9, v10

    move v8, v9

    .line 120
    .local v8, "outputOffset":I
    move-object v9, v6

    move v10, v5

    move-object v11, v4

    move v12, v8

    move v13, v1

    invoke-static {v9, v10, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    move v9, v5

    move-object v10, v0

    iget v10, v10, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    add-int/2addr v9, v10

    move v5, v9

    .line 118
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 123
    .end local v8    # "outputOffset":I
    :cond_2
    move-object v9, v4

    move-object v0, v9

    goto :goto_0
.end method

.method public getRow(I[B)[B
    .locals 11

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/RGBLuminanceSource;
    move v1, p1

    .local v1, "y":I
    move-object v2, p2

    .local v2, "row":[B
    move v5, v1

    if-ltz v5, :cond_0

    move v5, v1

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/zxing/RGBLuminanceSource;->getHeight()I

    move-result v6

    if-lt v5, v6, :cond_1

    .line 84
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

    .line 86
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/zxing/RGBLuminanceSource;->getWidth()I

    move-result v5

    move v3, v5

    .line 87
    .local v3, "width":I
    move-object v5, v2

    if-eqz v5, :cond_2

    move-object v5, v2

    array-length v5, v5

    move v6, v3

    if-ge v5, v6, :cond_3

    .line 88
    :cond_2
    move v5, v3

    new-array v5, v5, [B

    move-object v2, v5

    .line 90
    :cond_3
    move v5, v1

    move-object v6, v0

    iget v6, v6, Lcom/google/zxing/RGBLuminanceSource;->top:I

    add-int/2addr v5, v6

    move-object v6, v0

    iget v6, v6, Lcom/google/zxing/RGBLuminanceSource;->dataWidth:I

    mul-int/2addr v5, v6

    move-object v6, v0

    iget v6, v6, Lcom/google/zxing/RGBLuminanceSource;->left:I

    add-int/2addr v5, v6

    move v4, v5

    .line 91
    .local v4, "offset":I
    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/RGBLuminanceSource;->luminances:[B

    move v6, v4

    move-object v7, v2

    const/4 v8, 0x0

    move v9, v3

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    move-object v5, v2

    move-object v0, v5

    .end local v0    # "this":Lcom/google/zxing/RGBLuminanceSource;
    return-object v0
.end method

.method public isCropSupported()Z
    .locals 2

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/RGBLuminanceSource;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/RGBLuminanceSource;
    return v0
.end method
