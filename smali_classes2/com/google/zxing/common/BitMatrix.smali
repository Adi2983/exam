.class public final Lcom/google/zxing/common/BitMatrix;
.super Ljava/lang/Object;
.source "BitMatrix.java"


# instance fields
.field private final bits:[I

.field private final height:I

.field private final rowSize:I

.field private final width:I


# direct methods
.method public constructor <init>(I)V
    .locals 5

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/BitMatrix;
    move v1, p1

    .local v1, "dimension":I
    move-object v2, v0

    move v3, v1

    move v4, v1

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    .line 44
    return-void
.end method

.method public constructor <init>(II)V
    .locals 7

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/BitMatrix;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 47
    move v3, v1

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    move v3, v2

    const/4 v4, 0x1

    if-ge v3, v4, :cond_1

    .line 48
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Both dimensions must be greater than 0"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 50
    :cond_1
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/google/zxing/common/BitMatrix;->width:I

    .line 51
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/google/zxing/common/BitMatrix;->height:I

    .line 52
    move-object v3, v0

    move v4, v1

    const/16 v5, 0x1f

    add-int/lit8 v4, v4, 0x1f

    const/4 v5, 0x5

    shr-int/lit8 v4, v4, 0x5

    iput v4, v3, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    .line 53
    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    move v5, v2

    mul-int/2addr v4, v5

    new-array v4, v4, [I

    iput-object v4, v3, Lcom/google/zxing/common/BitMatrix;->bits:[I

    .line 54
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 6

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/BitMatrix;
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v3, v3

    move v1, v3

    .line 95
    .local v1, "max":I
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move v4, v1

    if-ge v3, v4, :cond_0

    .line 96
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/common/BitMatrix;->bits:[I

    move v4, v2

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 95
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/BitMatrix;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v4, v1

    instance-of v4, v4, Lcom/google/zxing/common/BitMatrix;

    if-nez v4, :cond_0

    .line 272
    const/4 v4, 0x0

    move v0, v4

    .line 284
    .end local v0    # "this":Lcom/google/zxing/common/BitMatrix;
    :goto_0
    return v0

    .line 274
    .restart local v0    # "this":Lcom/google/zxing/common/BitMatrix;
    :cond_0
    move-object v4, v1

    check-cast v4, Lcom/google/zxing/common/BitMatrix;

    move-object v2, v4

    .line 275
    .local v2, "other":Lcom/google/zxing/common/BitMatrix;
    move-object v4, v0

    iget v4, v4, Lcom/google/zxing/common/BitMatrix;->width:I

    move-object v5, v2

    iget v5, v5, Lcom/google/zxing/common/BitMatrix;->width:I

    if-ne v4, v5, :cond_1

    move-object v4, v0

    iget v4, v4, Lcom/google/zxing/common/BitMatrix;->height:I

    move-object v5, v2

    iget v5, v5, Lcom/google/zxing/common/BitMatrix;->height:I

    if-ne v4, v5, :cond_1

    move-object v4, v0

    iget v4, v4, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    move-object v5, v2

    iget v5, v5, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    if-ne v4, v5, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v4, v4

    move-object v5, v2

    iget-object v5, v5, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v5, v5

    if-eq v4, v5, :cond_2

    .line 277
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 279
    :cond_2
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_1
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v5, v5

    if-ge v4, v5, :cond_4

    .line 280
    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/common/BitMatrix;->bits:[I

    move v5, v3

    aget v4, v4, v5

    move-object v5, v2

    iget-object v5, v5, Lcom/google/zxing/common/BitMatrix;->bits:[I

    move v6, v3

    aget v5, v5, v6

    if-eq v4, v5, :cond_3

    .line 281
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 279
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 284
    :cond_4
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0
.end method

.method public flip(II)V
    .locals 12

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/BitMatrix;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v4, v2

    move-object v5, v0

    iget v5, v5, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v4, v5

    move v5, v1

    const/4 v6, 0x5

    shr-int/lit8 v5, v5, 0x5

    add-int/2addr v4, v5

    move v3, v4

    .line 87
    .local v3, "offset":I
    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/common/BitMatrix;->bits:[I

    move v5, v3

    move-object v10, v4

    move v11, v5

    move-object v4, v10

    move v5, v11

    move-object v6, v10

    move v7, v11

    aget v6, v6, v7

    const/4 v7, 0x1

    move v8, v1

    const/16 v9, 0x1f

    and-int/lit8 v8, v8, 0x1f

    shl-int/2addr v7, v8

    xor-int/2addr v6, v7

    aput v6, v4, v5

    .line 88
    return-void
.end method

.method public get(II)Z
    .locals 7

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/BitMatrix;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v4, v2

    move-object v5, v0

    iget v5, v5, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v4, v5

    move v5, v1

    const/4 v6, 0x5

    shr-int/lit8 v5, v5, 0x5

    add-int/2addr v4, v5

    move v3, v4

    .line 65
    .local v3, "offset":I
    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/common/BitMatrix;->bits:[I

    move v5, v3

    aget v4, v4, v5

    move v5, v1

    const/16 v6, 0x1f

    and-int/lit8 v5, v5, 0x1f

    ushr-int/2addr v4, v5

    const/4 v5, 0x1

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    .end local v0    # "this":Lcom/google/zxing/common/BitMatrix;
    return v0

    .restart local v0    # "this":Lcom/google/zxing/common/BitMatrix;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getBottomRightOnBit()[I
    .locals 11

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/BitMatrix;
    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v6, v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v1, v6

    .line 235
    .local v1, "bitsOffset":I
    :goto_0
    move v6, v1

    if-ltz v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/common/BitMatrix;->bits:[I

    move v7, v1

    aget v6, v6, v7

    if-nez v6, :cond_0

    .line 236
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 238
    :cond_0
    move v6, v1

    if-gez v6, :cond_1

    .line 239
    const/4 v6, 0x0

    move-object v0, v6

    .line 252
    .end local v0    # "this":Lcom/google/zxing/common/BitMatrix;
    :goto_1
    return-object v0

    .line 242
    .restart local v0    # "this":Lcom/google/zxing/common/BitMatrix;
    :cond_1
    move v6, v1

    move-object v7, v0

    iget v7, v7, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    div-int/2addr v6, v7

    move v2, v6

    .line 243
    .local v2, "y":I
    move v6, v1

    move-object v7, v0

    iget v7, v7, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    rem-int/2addr v6, v7

    const/4 v7, 0x5

    shl-int/lit8 v6, v6, 0x5

    move v3, v6

    .line 245
    .local v3, "x":I
    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/common/BitMatrix;->bits:[I

    move v7, v1

    aget v6, v6, v7

    move v4, v6

    .line 246
    .local v4, "theBits":I
    const/16 v6, 0x1f

    move v5, v6

    .line 247
    .local v5, "bit":I
    :goto_2
    move v6, v4

    move v7, v5

    ushr-int/2addr v6, v7

    if-nez v6, :cond_2

    .line 248
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 250
    :cond_2
    move v6, v3

    move v7, v5

    add-int/2addr v6, v7

    move v3, v6

    .line 252
    const/4 v6, 0x2

    new-array v6, v6, [I

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move v9, v3

    aput v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move v9, v2

    aput v9, v7, v8

    move-object v0, v6

    goto :goto_1
.end method

.method public getEnclosingRectangle()[I
    .locals 14

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/BitMatrix;
    move-object v9, v0

    iget v9, v9, Lcom/google/zxing/common/BitMatrix;->width:I

    move v1, v9

    .line 162
    .local v1, "left":I
    move-object v9, v0

    iget v9, v9, Lcom/google/zxing/common/BitMatrix;->height:I

    move v2, v9

    .line 163
    .local v2, "top":I
    const/4 v9, -0x1

    move v3, v9

    .line 164
    .local v3, "right":I
    const/4 v9, -0x1

    move v4, v9

    .line 166
    .local v4, "bottom":I
    const/4 v9, 0x0

    move v5, v9

    .local v5, "y":I
    :goto_0
    move v9, v5

    move-object v10, v0

    iget v10, v10, Lcom/google/zxing/common/BitMatrix;->height:I

    if-ge v9, v10, :cond_7

    .line 167
    const/4 v9, 0x0

    move v6, v9

    .local v6, "x32":I
    :goto_1
    move v9, v6

    move-object v10, v0

    iget v10, v10, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    if-ge v9, v10, :cond_6

    .line 168
    move-object v9, v0

    iget-object v9, v9, Lcom/google/zxing/common/BitMatrix;->bits:[I

    move v10, v5

    move-object v11, v0

    iget v11, v11, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v10, v11

    move v11, v6

    add-int/2addr v10, v11

    aget v9, v9, v10

    move v7, v9

    .line 169
    .local v7, "theBits":I
    move v9, v7

    if-eqz v9, :cond_5

    .line 170
    move v9, v5

    move v10, v2

    if-ge v9, v10, :cond_0

    .line 171
    move v9, v5

    move v2, v9

    .line 173
    :cond_0
    move v9, v5

    move v10, v4

    if-le v9, v10, :cond_1

    .line 174
    move v9, v5

    move v4, v9

    .line 176
    :cond_1
    move v9, v6

    const/16 v10, 0x20

    mul-int/lit8 v9, v9, 0x20

    move v10, v1

    if-ge v9, v10, :cond_3

    .line 177
    const/4 v9, 0x0

    move v8, v9

    .line 178
    .local v8, "bit":I
    :goto_2
    move v9, v7

    const/16 v10, 0x1f

    move v11, v8

    rsub-int/lit8 v10, v11, 0x1f

    shl-int/2addr v9, v10

    if-nez v9, :cond_2

    .line 179
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 181
    :cond_2
    move v9, v6

    const/16 v10, 0x20

    mul-int/lit8 v9, v9, 0x20

    move v10, v8

    add-int/2addr v9, v10

    move v10, v1

    if-ge v9, v10, :cond_3

    .line 182
    move v9, v6

    const/16 v10, 0x20

    mul-int/lit8 v9, v9, 0x20

    move v10, v8

    add-int/2addr v9, v10

    move v1, v9

    .line 185
    .end local v8    # "bit":I
    :cond_3
    move v9, v6

    const/16 v10, 0x20

    mul-int/lit8 v9, v9, 0x20

    const/16 v10, 0x1f

    add-int/lit8 v9, v9, 0x1f

    move v10, v3

    if-le v9, v10, :cond_5

    .line 186
    const/16 v9, 0x1f

    move v8, v9

    .line 187
    .restart local v8    # "bit":I
    :goto_3
    move v9, v7

    move v10, v8

    ushr-int/2addr v9, v10

    if-nez v9, :cond_4

    .line 188
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 190
    :cond_4
    move v9, v6

    const/16 v10, 0x20

    mul-int/lit8 v9, v9, 0x20

    move v10, v8

    add-int/2addr v9, v10

    move v10, v3

    if-le v9, v10, :cond_5

    .line 191
    move v9, v6

    const/16 v10, 0x20

    mul-int/lit8 v9, v9, 0x20

    move v10, v8

    add-int/2addr v9, v10

    move v3, v9

    .line 167
    .end local v8    # "bit":I
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 166
    .end local v7    # "theBits":I
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 198
    .end local v6    # "x32":I
    :cond_7
    move v9, v3

    move v10, v1

    sub-int/2addr v9, v10

    move v5, v9

    .line 199
    .local v5, "width":I
    move v9, v4

    move v10, v2

    sub-int/2addr v9, v10

    move v6, v9

    .line 201
    .local v6, "height":I
    move v9, v5

    if-ltz v9, :cond_8

    move v9, v6

    if-gez v9, :cond_9

    .line 202
    :cond_8
    const/4 v9, 0x0

    move-object v0, v9

    .line 205
    .end local v0    # "this":Lcom/google/zxing/common/BitMatrix;
    :goto_4
    return-object v0

    .restart local v0    # "this":Lcom/google/zxing/common/BitMatrix;
    :cond_9
    const/4 v9, 0x4

    new-array v9, v9, [I

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move v12, v1

    aput v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x1

    move v12, v2

    aput v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x2

    move v12, v5

    aput v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x3

    move v12, v6

    aput v12, v10, v11

    move-object v0, v9

    goto :goto_4
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/BitMatrix;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/common/BitMatrix;->height:I

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/common/BitMatrix;
    return v0
.end method

.method public getRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
    .locals 11

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/BitMatrix;
    move v1, p1

    .local v1, "y":I
    move-object v2, p2

    .local v2, "row":Lcom/google/zxing/common/BitArray;
    move-object v5, v2

    if-eqz v5, :cond_0

    move-object v5, v2

    invoke-virtual {v5}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    move-object v6, v0

    iget v6, v6, Lcom/google/zxing/common/BitMatrix;->width:I

    if-ge v5, v6, :cond_1

    .line 138
    :cond_0
    new-instance v5, Lcom/google/zxing/common/BitArray;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    iget v7, v7, Lcom/google/zxing/common/BitMatrix;->width:I

    invoke-direct {v6, v7}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    move-object v2, v5

    .line 140
    :cond_1
    move v5, v1

    move-object v6, v0

    iget v6, v6, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v5, v6

    move v3, v5

    .line 141
    .local v3, "offset":I
    const/4 v5, 0x0

    move v4, v5

    .local v4, "x":I
    :goto_0
    move v5, v4

    move-object v6, v0

    iget v6, v6, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    if-ge v5, v6, :cond_2

    .line 142
    move-object v5, v2

    move v6, v4

    const/4 v7, 0x5

    shl-int/lit8 v6, v6, 0x5

    move-object v7, v0

    iget-object v7, v7, Lcom/google/zxing/common/BitMatrix;->bits:[I

    move v8, v3

    move v9, v4

    add-int/2addr v8, v9

    aget v7, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitArray;->setBulk(II)V

    .line 141
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 144
    :cond_2
    move-object v5, v2

    move-object v0, v5

    .end local v0    # "this":Lcom/google/zxing/common/BitMatrix;
    return-object v0
.end method

.method public getTopLeftOnBit()[I
    .locals 11

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/BitMatrix;
    const/4 v6, 0x0

    move v1, v6

    .line 215
    .local v1, "bitsOffset":I
    :goto_0
    move v6, v1

    move-object v7, v0

    iget-object v7, v7, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v7, v7

    if-ge v6, v7, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/common/BitMatrix;->bits:[I

    move v7, v1

    aget v6, v6, v7

    if-nez v6, :cond_0

    .line 216
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    :cond_0
    move v6, v1

    move-object v7, v0

    iget-object v7, v7, Lcom/google/zxing/common/BitMatrix;->bits:[I

    array-length v7, v7

    if-ne v6, v7, :cond_1

    .line 219
    const/4 v6, 0x0

    move-object v0, v6

    .line 230
    .end local v0    # "this":Lcom/google/zxing/common/BitMatrix;
    :goto_1
    return-object v0

    .line 221
    .restart local v0    # "this":Lcom/google/zxing/common/BitMatrix;
    :cond_1
    move v6, v1

    move-object v7, v0

    iget v7, v7, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    div-int/2addr v6, v7

    move v2, v6

    .line 222
    .local v2, "y":I
    move v6, v1

    move-object v7, v0

    iget v7, v7, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    rem-int/2addr v6, v7

    const/4 v7, 0x5

    shl-int/lit8 v6, v6, 0x5

    move v3, v6

    .line 224
    .local v3, "x":I
    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/common/BitMatrix;->bits:[I

    move v7, v1

    aget v6, v6, v7

    move v4, v6

    .line 225
    .local v4, "theBits":I
    const/4 v6, 0x0

    move v5, v6

    .line 226
    .local v5, "bit":I
    :goto_2
    move v6, v4

    const/16 v7, 0x1f

    move v8, v5

    rsub-int/lit8 v7, v8, 0x1f

    shl-int/2addr v6, v7

    if-nez v6, :cond_2

    .line 227
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 229
    :cond_2
    move v6, v3

    move v7, v5

    add-int/2addr v6, v7

    move v3, v6

    .line 230
    const/4 v6, 0x2

    new-array v6, v6, [I

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move v9, v3

    aput v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move v9, v2

    aput v9, v7, v8

    move-object v0, v6

    goto :goto_1
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/BitMatrix;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/common/BitMatrix;->width:I

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/common/BitMatrix;
    return v0
.end method

.method public hashCode()I
    .locals 8

    .prologue
    .line 289
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/BitMatrix;
    move-object v6, v0

    iget v6, v6, Lcom/google/zxing/common/BitMatrix;->width:I

    move v1, v6

    .line 290
    .local v1, "hash":I
    const/16 v6, 0x1f

    move v7, v1

    mul-int/2addr v6, v7

    move-object v7, v0

    iget v7, v7, Lcom/google/zxing/common/BitMatrix;->width:I

    add-int/2addr v6, v7

    move v1, v6

    .line 291
    const/16 v6, 0x1f

    move v7, v1

    mul-int/2addr v6, v7

    move-object v7, v0

    iget v7, v7, Lcom/google/zxing/common/BitMatrix;->height:I

    add-int/2addr v6, v7

    move v1, v6

    .line 292
    const/16 v6, 0x1f

    move v7, v1

    mul-int/2addr v6, v7

    move-object v7, v0

    iget v7, v7, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    add-int/2addr v6, v7

    move v1, v6

    .line 293
    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/common/BitMatrix;->bits:[I

    move-object v2, v6

    .local v2, "arr$":[I
    move-object v6, v2

    array-length v6, v6

    move v3, v6

    .local v3, "len$":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i$":I
    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_0

    move-object v6, v2

    move v7, v4

    aget v6, v6, v7

    move v5, v6

    .line 294
    .local v5, "bit":I
    const/16 v6, 0x1f

    move v7, v1

    mul-int/2addr v6, v7

    move v7, v5

    add-int/2addr v6, v7

    move v1, v6

    .line 293
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 296
    .end local v5    # "bit":I
    :cond_0
    move v6, v1

    move v0, v6

    .end local v0    # "this":Lcom/google/zxing/common/BitMatrix;
    return v0
.end method

.method public set(II)V
    .locals 12

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/BitMatrix;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v4, v2

    move-object v5, v0

    iget v5, v5, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v4, v5

    move v5, v1

    const/4 v6, 0x5

    shr-int/lit8 v5, v5, 0x5

    add-int/2addr v4, v5

    move v3, v4

    .line 76
    .local v3, "offset":I
    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/common/BitMatrix;->bits:[I

    move v5, v3

    move-object v10, v4

    move v11, v5

    move-object v4, v10

    move v5, v11

    move-object v6, v10

    move v7, v11

    aget v6, v6, v7

    const/4 v7, 0x1

    move v8, v1

    const/16 v9, 0x1f

    and-int/lit8 v8, v8, 0x1f

    shl-int/2addr v7, v8

    or-int/2addr v6, v7

    aput v6, v4, v5

    .line 77
    return-void
.end method

.method public setRegion(IIII)V
    .locals 18

    .prologue
    .line 109
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/common/BitMatrix;
    move/from16 v1, p1

    .local v1, "left":I
    move/from16 v2, p2

    .local v2, "top":I
    move/from16 v3, p3

    .local v3, "width":I
    move/from16 v4, p4

    .local v4, "height":I
    move v10, v2

    if-ltz v10, :cond_0

    move v10, v1

    if-gez v10, :cond_1

    .line 110
    :cond_0
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const-string/jumbo v12, "Left and top must be nonnegative"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 112
    :cond_1
    move v10, v4

    const/4 v11, 0x1

    if-lt v10, v11, :cond_2

    move v10, v3

    const/4 v11, 0x1

    if-ge v10, v11, :cond_3

    .line 113
    :cond_2
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const-string/jumbo v12, "Height and width must be at least 1"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 115
    :cond_3
    move v10, v1

    move v11, v3

    add-int/2addr v10, v11

    move v5, v10

    .line 116
    .local v5, "right":I
    move v10, v2

    move v11, v4

    add-int/2addr v10, v11

    move v6, v10

    .line 117
    .local v6, "bottom":I
    move v10, v6

    move-object v11, v0

    iget v11, v11, Lcom/google/zxing/common/BitMatrix;->height:I

    if-gt v10, v11, :cond_4

    move v10, v5

    move-object v11, v0

    iget v11, v11, Lcom/google/zxing/common/BitMatrix;->width:I

    if-le v10, v11, :cond_5

    .line 118
    :cond_4
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const-string/jumbo v12, "The region must fit inside the matrix"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 120
    :cond_5
    move v10, v2

    move v7, v10

    .local v7, "y":I
    :goto_0
    move v10, v7

    move v11, v6

    if-ge v10, v11, :cond_7

    .line 121
    move v10, v7

    move-object v11, v0

    iget v11, v11, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v10, v11

    move v8, v10

    .line 122
    .local v8, "offset":I
    move v10, v1

    move v9, v10

    .local v9, "x":I
    :goto_1
    move v10, v9

    move v11, v5

    if-ge v10, v11, :cond_6

    .line 123
    move-object v10, v0

    iget-object v10, v10, Lcom/google/zxing/common/BitMatrix;->bits:[I

    move v11, v8

    move v12, v9

    const/4 v13, 0x5

    shr-int/lit8 v12, v12, 0x5

    add-int/2addr v11, v12

    move-object/from16 v16, v10

    move/from16 v17, v11

    move-object/from16 v10, v16

    move/from16 v11, v17

    move-object/from16 v12, v16

    move/from16 v13, v17

    aget v12, v12, v13

    const/4 v13, 0x1

    move v14, v9

    const/16 v15, 0x1f

    and-int/lit8 v14, v14, 0x1f

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    aput v12, v10, v11

    .line 122
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 120
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 126
    .end local v8    # "offset":I
    .end local v9    # "x":I
    :cond_7
    return-void
.end method

.method public setRow(ILcom/google/zxing/common/BitArray;)V
    .locals 8

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/BitMatrix;
    move v1, p1

    .local v1, "y":I
    move-object v2, p2

    .local v2, "row":Lcom/google/zxing/common/BitArray;
    move-object v3, v2

    invoke-virtual {v3}, Lcom/google/zxing/common/BitArray;->getBitArray()[I

    move-result-object v3

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/common/BitMatrix;->bits:[I

    move v6, v1

    move-object v7, v0

    iget v7, v7, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    mul-int/2addr v6, v7

    move-object v7, v0

    iget v7, v7, Lcom/google/zxing/common/BitMatrix;->rowSize:I

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 301
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/BitMatrix;
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    iget v6, v6, Lcom/google/zxing/common/BitMatrix;->height:I

    move-object v7, v0

    iget v7, v7, Lcom/google/zxing/common/BitMatrix;->width:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    mul-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v4

    .line 302
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    move v2, v4

    .local v2, "y":I
    :goto_0
    move v4, v2

    move-object v5, v0

    iget v5, v5, Lcom/google/zxing/common/BitMatrix;->height:I

    if-ge v4, v5, :cond_2

    .line 303
    const/4 v4, 0x0

    move v3, v4

    .local v3, "x":I
    :goto_1
    move v4, v3

    move-object v5, v0

    iget v5, v5, Lcom/google/zxing/common/BitMatrix;->width:I

    if-ge v4, v5, :cond_1

    .line 304
    move-object v4, v1

    move-object v5, v0

    move v6, v3

    move v7, v2

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "X "

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 303
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 304
    :cond_0
    const-string/jumbo v5, "  "

    goto :goto_2

    .line 306
    :cond_1
    move-object v4, v1

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 302
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 308
    .end local v3    # "x":I
    :cond_2
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/google/zxing/common/BitMatrix;
    return-object v0
.end method
