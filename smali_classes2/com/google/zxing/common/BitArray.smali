.class public final Lcom/google/zxing/common/BitArray;
.super Ljava/lang/Object;
.source "BitArray.java"


# instance fields
.field private bits:[I

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/BitArray;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 30
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/google/zxing/common/BitArray;->size:I

    .line 31
    move-object v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 32
    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/BitArray;
    move v1, p1

    .local v1, "size":I
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 35
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/zxing/common/BitArray;->size:I

    .line 36
    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Lcom/google/zxing/common/BitArray;->makeArray(I)[I

    move-result-object v3

    iput-object v3, v2, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 37
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 8

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/BitArray;
    move v1, p1

    .local v1, "size":I
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v4, v4

    const/4 v5, 0x5

    shl-int/lit8 v4, v4, 0x5

    if-le v3, v4, :cond_0

    .line 49
    move v3, v1

    invoke-static {v3}, Lcom/google/zxing/common/BitArray;->makeArray(I)[I

    move-result-object v3

    move-object v2, v3

    .line 50
    .local v2, "newBits":[I
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/common/BitArray;->bits:[I

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v7, v7

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 51
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 53
    .end local v2    # "newBits":[I
    :cond_0
    return-void
.end method

.method private static makeArray(I)[I
    .locals 3

    .prologue
    .line 306
    move v0, p0

    .local v0, "size":I
    move v1, v0

    const/16 v2, 0x1f

    add-int/lit8 v1, v1, 0x1f

    const/4 v2, 0x5

    shr-int/lit8 v1, v1, 0x5

    new-array v1, v1, [I

    move-object v0, v1

    .end local v0    # "size":I
    return-object v0
.end method


# virtual methods
.method public appendBit(Z)V
    .locals 10

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/BitArray;
    move v1, p1

    .local v1, "bit":Z
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/google/zxing/common/BitArray;->size:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v2, v3}, Lcom/google/zxing/common/BitArray;->ensureCapacity(I)V

    .line 222
    move v2, v1

    if-eqz v2, :cond_0

    .line 223
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/common/BitArray;->bits:[I

    move-object v3, v0

    iget v3, v3, Lcom/google/zxing/common/BitArray;->size:I

    const/4 v4, 0x5

    shr-int/lit8 v3, v3, 0x5

    move-object v8, v2

    move v9, v3

    move-object v2, v8

    move v3, v9

    move-object v4, v8

    move v5, v9

    aget v4, v4, v5

    const/4 v5, 0x1

    move-object v6, v0

    iget v6, v6, Lcom/google/zxing/common/BitArray;->size:I

    const/16 v7, 0x1f

    and-int/lit8 v6, v6, 0x1f

    shl-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v2, v3

    .line 225
    :cond_0
    move-object v2, v0

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    iget v3, v3, Lcom/google/zxing/common/BitArray;->size:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/google/zxing/common/BitArray;->size:I

    .line 226
    return-void
.end method

.method public appendBitArray(Lcom/google/zxing/common/BitArray;)V
    .locals 7

    .prologue
    .line 244
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/BitArray;
    move-object v1, p1

    .local v1, "other":Lcom/google/zxing/common/BitArray;
    move-object v4, v1

    iget v4, v4, Lcom/google/zxing/common/BitArray;->size:I

    move v2, v4

    .line 245
    .local v2, "otherSize":I
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/google/zxing/common/BitArray;->size:I

    move v6, v2

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Lcom/google/zxing/common/BitArray;->ensureCapacity(I)V

    .line 246
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 247
    move-object v4, v0

    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    .line 246
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 249
    :cond_0
    return-void
.end method

.method public appendBits(II)V
    .locals 9

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/BitArray;
    move v1, p1

    .local v1, "value":I
    move v2, p2

    .local v2, "numBits":I
    move v4, v2

    if-ltz v4, :cond_0

    move v4, v2

    const/16 v5, 0x20

    if-le v4, v5, :cond_1

    .line 235
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string/jumbo v6, "Num bits must be between 0 and 32"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 237
    :cond_1
    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lcom/google/zxing/common/BitArray;->size:I

    move v6, v2

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Lcom/google/zxing/common/BitArray;->ensureCapacity(I)V

    .line 238
    move v4, v2

    move v3, v4

    .local v3, "numBitsLeft":I
    :goto_0
    move v4, v3

    if-lez v4, :cond_3

    .line 239
    move-object v4, v0

    move v5, v1

    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    shr-int/2addr v5, v6

    const/4 v6, 0x1

    and-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v4, v5}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    .line 238
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 239
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 241
    :cond_3
    return-void
.end method

.method public clear()V
    .locals 6

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/BitArray;
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v3, v3

    move v1, v3

    .line 174
    .local v1, "max":I
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move v4, v1

    if-ge v3, v4, :cond_0

    .line 175
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/common/BitArray;->bits:[I

    move v4, v2

    const/4 v5, 0x0

    aput v5, v3, v4

    .line 174
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 177
    :cond_0
    return-void
.end method

.method public flip(I)V
    .locals 10

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/BitArray;
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/common/BitArray;->bits:[I

    move v3, v1

    const/4 v4, 0x5

    shr-int/lit8 v3, v3, 0x5

    move-object v8, v2

    move v9, v3

    move-object v2, v8

    move v3, v9

    move-object v4, v8

    move v5, v9

    aget v4, v4, v5

    const/4 v5, 0x1

    move v6, v1

    const/16 v7, 0x1f

    and-int/lit8 v6, v6, 0x1f

    shl-int/2addr v5, v6

    xor-int/2addr v4, v5

    aput v4, v2, v3

    .line 79
    return-void
.end method

.method public get(I)Z
    .locals 6

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/BitArray;
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/common/BitArray;->bits:[I

    move v3, v1

    const/4 v4, 0x5

    shr-int/lit8 v3, v3, 0x5

    aget v2, v2, v3

    const/4 v3, 0x1

    move v4, v1

    const/16 v5, 0x1f

    and-int/lit8 v4, v4, 0x1f

    shl-int/2addr v3, v4

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/google/zxing/common/BitArray;
    return v0

    .restart local v0    # "this":Lcom/google/zxing/common/BitArray;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getBitArray()[I
    .locals 2

    .prologue
    .line 288
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/BitArray;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/common/BitArray;->bits:[I

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/common/BitArray;
    return-object v0
.end method

.method public getNextSet(I)I
    .locals 9

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/BitArray;
    move v1, p1

    .local v1, "from":I
    move v5, v1

    move-object v6, v0

    iget v6, v6, Lcom/google/zxing/common/BitArray;->size:I

    if-lt v5, v6, :cond_0

    .line 89
    move-object v5, v0

    iget v5, v5, Lcom/google/zxing/common/BitArray;->size:I

    move v0, v5

    .line 102
    .end local v0    # "this":Lcom/google/zxing/common/BitArray;
    :goto_0
    return v0

    .line 91
    .restart local v0    # "this":Lcom/google/zxing/common/BitArray;
    :cond_0
    move v5, v1

    const/4 v6, 0x5

    shr-int/lit8 v5, v5, 0x5

    move v2, v5

    .line 92
    .local v2, "bitsOffset":I
    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/common/BitArray;->bits:[I

    move v6, v2

    aget v5, v5, v6

    move v3, v5

    .line 94
    .local v3, "currentBits":I
    move v5, v3

    const/4 v6, 0x1

    move v7, v1

    const/16 v8, 0x1f

    and-int/lit8 v7, v7, 0x1f

    shl-int/2addr v6, v7

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    const/4 v7, -0x1

    xor-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    move v3, v5

    .line 95
    :goto_1
    move v5, v3

    if-nez v5, :cond_2

    .line 96
    add-int/lit8 v2, v2, 0x1

    move v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v6, v6

    if-ne v5, v6, :cond_1

    .line 97
    move-object v5, v0

    iget v5, v5, Lcom/google/zxing/common/BitArray;->size:I

    move v0, v5

    goto :goto_0

    .line 99
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/common/BitArray;->bits:[I

    move v6, v2

    aget v5, v5, v6

    move v3, v5

    goto :goto_1

    .line 101
    :cond_2
    move v5, v2

    const/4 v6, 0x5

    shl-int/lit8 v5, v5, 0x5

    move v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v6

    add-int/2addr v5, v6

    move v4, v5

    .line 102
    .local v4, "result":I
    move v5, v4

    move-object v6, v0

    iget v6, v6, Lcom/google/zxing/common/BitArray;->size:I

    if-le v5, v6, :cond_3

    move-object v5, v0

    iget v5, v5, Lcom/google/zxing/common/BitArray;->size:I

    :goto_2
    move v0, v5

    goto :goto_0

    :cond_3
    move v5, v4

    goto :goto_2
.end method

.method public getNextUnset(I)I
    .locals 9

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/BitArray;
    move v1, p1

    .local v1, "from":I
    move v5, v1

    move-object v6, v0

    iget v6, v6, Lcom/google/zxing/common/BitArray;->size:I

    if-lt v5, v6, :cond_0

    .line 110
    move-object v5, v0

    iget v5, v5, Lcom/google/zxing/common/BitArray;->size:I

    move v0, v5

    .line 123
    .end local v0    # "this":Lcom/google/zxing/common/BitArray;
    :goto_0
    return v0

    .line 112
    .restart local v0    # "this":Lcom/google/zxing/common/BitArray;
    :cond_0
    move v5, v1

    const/4 v6, 0x5

    shr-int/lit8 v5, v5, 0x5

    move v2, v5

    .line 113
    .local v2, "bitsOffset":I
    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/common/BitArray;->bits:[I

    move v6, v2

    aget v5, v5, v6

    const/4 v6, -0x1

    xor-int/lit8 v5, v5, -0x1

    move v3, v5

    .line 115
    .local v3, "currentBits":I
    move v5, v3

    const/4 v6, 0x1

    move v7, v1

    const/16 v8, 0x1f

    and-int/lit8 v7, v7, 0x1f

    shl-int/2addr v6, v7

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    const/4 v7, -0x1

    xor-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    move v3, v5

    .line 116
    :goto_1
    move v5, v3

    if-nez v5, :cond_2

    .line 117
    add-int/lit8 v2, v2, 0x1

    move v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v6, v6

    if-ne v5, v6, :cond_1

    .line 118
    move-object v5, v0

    iget v5, v5, Lcom/google/zxing/common/BitArray;->size:I

    move v0, v5

    goto :goto_0

    .line 120
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/common/BitArray;->bits:[I

    move v6, v2

    aget v5, v5, v6

    const/4 v6, -0x1

    xor-int/lit8 v5, v5, -0x1

    move v3, v5

    goto :goto_1

    .line 122
    :cond_2
    move v5, v2

    const/4 v6, 0x5

    shl-int/lit8 v5, v5, 0x5

    move v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v6

    add-int/2addr v5, v6

    move v4, v5

    .line 123
    .local v4, "result":I
    move v5, v4

    move-object v6, v0

    iget v6, v6, Lcom/google/zxing/common/BitArray;->size:I

    if-le v5, v6, :cond_3

    move-object v5, v0

    iget v5, v5, Lcom/google/zxing/common/BitArray;->size:I

    :goto_2
    move v0, v5

    goto :goto_0

    :cond_3
    move v5, v4

    goto :goto_2
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/BitArray;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/common/BitArray;->size:I

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/common/BitArray;
    return v0
.end method

.method public getSizeInBytes()I
    .locals 3

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/BitArray;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/common/BitArray;->size:I

    const/4 v2, 0x7

    add-int/lit8 v1, v1, 0x7

    const/4 v2, 0x3

    shr-int/lit8 v1, v1, 0x3

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/common/BitArray;
    return v0
.end method

.method public isRange(IIZ)Z
    .locals 15

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/BitArray;
    move/from16 v1, p1

    .local v1, "start":I
    move/from16 v2, p2

    .local v2, "end":I
    move/from16 v3, p3

    .local v3, "value":Z
    move v11, v2

    move v12, v1

    if-ge v11, v12, :cond_0

    .line 190
    new-instance v11, Ljava/lang/IllegalArgumentException;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v11

    .line 192
    :cond_0
    move v11, v2

    move v12, v1

    if-ne v11, v12, :cond_1

    .line 193
    const/4 v11, 0x1

    move v0, v11

    .line 217
    .end local v0    # "this":Lcom/google/zxing/common/BitArray;
    :goto_0
    return v0

    .line 195
    .restart local v0    # "this":Lcom/google/zxing/common/BitArray;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 196
    move v11, v1

    const/4 v12, 0x5

    shr-int/lit8 v11, v11, 0x5

    move v4, v11

    .line 197
    .local v4, "firstInt":I
    move v11, v2

    const/4 v12, 0x5

    shr-int/lit8 v11, v11, 0x5

    move v5, v11

    .line 198
    .local v5, "lastInt":I
    move v11, v4

    move v6, v11

    .local v6, "i":I
    :goto_1
    move v11, v6

    move v12, v5

    if-gt v11, v12, :cond_8

    .line 199
    move v11, v6

    move v12, v4

    if-le v11, v12, :cond_3

    const/4 v11, 0x0

    :goto_2
    move v7, v11

    .line 200
    .local v7, "firstBit":I
    move v11, v6

    move v12, v5

    if-ge v11, v12, :cond_4

    const/16 v11, 0x1f

    :goto_3
    move v8, v11

    .line 202
    .local v8, "lastBit":I
    move v11, v7

    if-nez v11, :cond_5

    move v11, v8

    const/16 v12, 0x1f

    if-ne v11, v12, :cond_5

    .line 203
    const/4 v11, -0x1

    move v9, v11

    .line 213
    .local v9, "mask":I
    :cond_2
    move-object v11, v0

    iget-object v11, v11, Lcom/google/zxing/common/BitArray;->bits:[I

    move v12, v6

    aget v11, v11, v12

    move v12, v9

    and-int/2addr v11, v12

    move v12, v3

    if-eqz v12, :cond_6

    move v12, v9

    :goto_4
    if-eq v11, v12, :cond_7

    .line 214
    const/4 v11, 0x0

    move v0, v11

    goto :goto_0

    .line 199
    .end local v7    # "firstBit":I
    .end local v8    # "lastBit":I
    .end local v9    # "mask":I
    :cond_3
    move v11, v1

    const/16 v12, 0x1f

    and-int/lit8 v11, v11, 0x1f

    goto :goto_2

    .line 200
    .restart local v7    # "firstBit":I
    :cond_4
    move v11, v2

    const/16 v12, 0x1f

    and-int/lit8 v11, v11, 0x1f

    goto :goto_3

    .line 205
    .restart local v8    # "lastBit":I
    :cond_5
    const/4 v11, 0x0

    move v9, v11

    .line 206
    .restart local v9    # "mask":I
    move v11, v7

    move v10, v11

    .local v10, "j":I
    :goto_5
    move v11, v10

    move v12, v8

    if-gt v11, v12, :cond_2

    .line 207
    move v11, v9

    const/4 v12, 0x1

    move v13, v10

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v9, v11

    .line 206
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 213
    .end local v10    # "j":I
    :cond_6
    const/4 v12, 0x0

    goto :goto_4

    .line 198
    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 217
    .end local v7    # "firstBit":I
    .end local v8    # "lastBit":I
    .end local v9    # "mask":I
    :cond_8
    const/4 v11, 0x1

    move v0, v11

    goto :goto_0
.end method

.method public reverse()V
    .locals 12

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/BitArray;
    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v4, v4

    new-array v4, v4, [I

    move-object v1, v4

    .line 296
    .local v1, "newBits":[I
    move-object v4, v0

    iget v4, v4, Lcom/google/zxing/common/BitArray;->size:I

    move v2, v4

    .line 297
    .local v2, "size":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_1

    .line 298
    move-object v4, v0

    move v5, v2

    move v6, v3

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 299
    move-object v4, v1

    move v5, v3

    const/4 v6, 0x5

    shr-int/lit8 v5, v5, 0x5

    move-object v10, v4

    move v11, v5

    move-object v4, v10

    move v5, v11

    move-object v6, v10

    move v7, v11

    aget v6, v6, v7

    const/4 v7, 0x1

    move v8, v3

    const/16 v9, 0x1f

    and-int/lit8 v8, v8, 0x1f

    shl-int/2addr v7, v8

    or-int/2addr v6, v7

    aput v6, v4, v5

    .line 297
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 302
    :cond_1
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 303
    return-void
.end method

.method public set(I)V
    .locals 10

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/BitArray;
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/common/BitArray;->bits:[I

    move v3, v1

    const/4 v4, 0x5

    shr-int/lit8 v3, v3, 0x5

    move-object v8, v2

    move v9, v3

    move-object v2, v8

    move v3, v9

    move-object v4, v8

    move v5, v9

    aget v4, v4, v5

    const/4 v5, 0x1

    move v6, v1

    const/16 v7, 0x1f

    and-int/lit8 v6, v6, 0x1f

    shl-int/2addr v5, v6

    or-int/2addr v4, v5

    aput v4, v2, v3

    .line 70
    return-void
.end method

.method public setBulk(II)V
    .locals 6

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/BitArray;
    move v1, p1

    .local v1, "i":I
    move v2, p2

    .local v2, "newBits":I
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/common/BitArray;->bits:[I

    move v4, v1

    const/4 v5, 0x5

    shr-int/lit8 v4, v4, 0x5

    move v5, v2

    aput v5, v3, v4

    .line 135
    return-void
.end method

.method public setRange(II)V
    .locals 16

    .prologue
    .line 144
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/common/BitArray;
    move/from16 v1, p1

    .local v1, "start":I
    move/from16 v2, p2

    .local v2, "end":I
    move v10, v2

    move v11, v1

    if-ge v10, v11, :cond_0

    .line 145
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v10

    .line 147
    :cond_0
    move v10, v2

    move v11, v1

    if-ne v10, v11, :cond_1

    .line 148
    .line 167
    :goto_0
    return-void

    .line 150
    :cond_1
    add-int/lit8 v2, v2, -0x1

    .line 151
    move v10, v1

    const/4 v11, 0x5

    shr-int/lit8 v10, v10, 0x5

    move v3, v10

    .line 152
    .local v3, "firstInt":I
    move v10, v2

    const/4 v11, 0x5

    shr-int/lit8 v10, v10, 0x5

    move v4, v10

    .line 153
    .local v4, "lastInt":I
    move v10, v3

    move v5, v10

    .local v5, "i":I
    :goto_1
    move v10, v5

    move v11, v4

    if-gt v10, v11, :cond_6

    .line 154
    move v10, v5

    move v11, v3

    if-le v10, v11, :cond_3

    const/4 v10, 0x0

    :goto_2
    move v6, v10

    .line 155
    .local v6, "firstBit":I
    move v10, v5

    move v11, v4

    if-ge v10, v11, :cond_4

    const/16 v10, 0x1f

    :goto_3
    move v7, v10

    .line 157
    .local v7, "lastBit":I
    move v10, v6

    if-nez v10, :cond_5

    move v10, v7

    const/16 v11, 0x1f

    if-ne v10, v11, :cond_5

    .line 158
    const/4 v10, -0x1

    move v8, v10

    .line 165
    .local v8, "mask":I
    :cond_2
    move-object v10, v0

    iget-object v10, v10, Lcom/google/zxing/common/BitArray;->bits:[I

    move v11, v5

    move-object v14, v10

    move v15, v11

    move-object v10, v14

    move v11, v15

    move-object v12, v14

    move v13, v15

    aget v12, v12, v13

    move v13, v8

    or-int/2addr v12, v13

    aput v12, v10, v11

    .line 153
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 154
    .end local v6    # "firstBit":I
    .end local v7    # "lastBit":I
    .end local v8    # "mask":I
    :cond_3
    move v10, v1

    const/16 v11, 0x1f

    and-int/lit8 v10, v10, 0x1f

    goto :goto_2

    .line 155
    .restart local v6    # "firstBit":I
    :cond_4
    move v10, v2

    const/16 v11, 0x1f

    and-int/lit8 v10, v10, 0x1f

    goto :goto_3

    .line 160
    .restart local v7    # "lastBit":I
    :cond_5
    const/4 v10, 0x0

    move v8, v10

    .line 161
    .restart local v8    # "mask":I
    move v10, v6

    move v9, v10

    .local v9, "j":I
    :goto_4
    move v10, v9

    move v11, v7

    if-gt v10, v11, :cond_2

    .line 162
    move v10, v8

    const/4 v11, 0x1

    move v12, v9

    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    move v8, v10

    .line 161
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 167
    .end local v6    # "firstBit":I
    .end local v7    # "lastBit":I
    .end local v8    # "mask":I
    .end local v9    # "j":I
    :cond_6
    goto :goto_0
.end method

.method public toBytes(I[BII)V
    .locals 12

    .prologue
    .line 271
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/BitArray;
    move v1, p1

    .local v1, "bitOffset":I
    move-object v2, p2

    .local v2, "array":[B
    move v3, p3

    .local v3, "offset":I
    move/from16 v4, p4

    .local v4, "numBytes":I
    const/4 v8, 0x0

    move v5, v8

    .local v5, "i":I
    :goto_0
    move v8, v5

    move v9, v4

    if-ge v8, v9, :cond_2

    .line 272
    const/4 v8, 0x0

    move v6, v8

    .line 273
    .local v6, "theByte":I
    const/4 v8, 0x0

    move v7, v8

    .local v7, "j":I
    :goto_1
    move v8, v7

    const/16 v9, 0x8

    if-ge v8, v9, :cond_1

    .line 274
    move-object v8, v0

    move v9, v1

    invoke-virtual {v8, v9}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 275
    move v8, v6

    const/4 v9, 0x1

    const/4 v10, 0x7

    move v11, v7

    rsub-int/lit8 v10, v11, 0x7

    shl-int/2addr v9, v10

    or-int/2addr v8, v9

    move v6, v8

    .line 277
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 273
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 279
    :cond_1
    move-object v8, v2

    move v9, v3

    move v10, v5

    add-int/2addr v9, v10

    move v10, v6

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    .line 271
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 281
    .end local v6    # "theByte":I
    .end local v7    # "j":I
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 311
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/BitArray;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget v5, v5, Lcom/google/zxing/common/BitArray;->size:I

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v3

    .line 312
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/google/zxing/common/BitArray;->size:I

    if-ge v3, v4, :cond_2

    .line 313
    move v3, v2

    const/4 v4, 0x7

    and-int/lit8 v3, v3, 0x7

    if-nez v3, :cond_0

    .line 314
    move-object v3, v1

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 316
    :cond_0
    move-object v3, v1

    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x58

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 312
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 316
    :cond_1
    const/16 v4, 0x2e

    goto :goto_1

    .line 318
    :cond_2
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/google/zxing/common/BitArray;
    return-object v0
.end method

.method public xor(Lcom/google/zxing/common/BitArray;)V
    .locals 10

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/BitArray;
    move-object v1, p1

    .local v1, "other":Lcom/google/zxing/common/BitArray;
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v3, v3

    move-object v4, v1

    iget-object v4, v4, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v4, v4

    if-eq v3, v4, :cond_0

    .line 253
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string/jumbo v5, "Sizes don\'t match"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 255
    :cond_0
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 258
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/common/BitArray;->bits:[I

    move v4, v2

    move-object v8, v3

    move v9, v4

    move-object v3, v8

    move v4, v9

    move-object v5, v8

    move v6, v9

    aget v5, v5, v6

    move-object v6, v1

    iget-object v6, v6, Lcom/google/zxing/common/BitArray;->bits:[I

    move v7, v2

    aget v6, v6, v7

    xor-int/2addr v5, v6

    aput v5, v3, v4

    .line 255
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 260
    :cond_1
    return-void
.end method
