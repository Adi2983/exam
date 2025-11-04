.class public final Lcom/google/zxing/common/BitSource;
.super Ljava/lang/Object;
.source "BitSource.java"


# instance fields
.field private bitOffset:I

.field private byteOffset:I

.field private final bytes:[B


# direct methods
.method public constructor <init>([B)V
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/BitSource;
    move-object v1, p1

    .local v1, "bytes":[B
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 39
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/zxing/common/BitSource;->bytes:[B

    .line 40
    return-void
.end method


# virtual methods
.method public available()I
    .locals 4

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/BitSource;
    const/16 v1, 0x8

    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/common/BitSource;->bytes:[B

    array-length v2, v2

    move-object v3, v0

    iget v3, v3, Lcom/google/zxing/common/BitSource;->byteOffset:I

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    move-object v2, v0

    iget v2, v2, Lcom/google/zxing/common/BitSource;->bitOffset:I

    sub-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/common/BitSource;
    return v0
.end method

.method public getBitOffset()I
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/BitSource;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/common/BitSource;->bitOffset:I

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/common/BitSource;
    return v0
.end method

.method public getByteOffset()I
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/BitSource;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/common/BitSource;->byteOffset:I

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/common/BitSource;
    return v0
.end method

.method public readBits(I)I
    .locals 11

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/BitSource;
    move v1, p1

    .local v1, "numBits":I
    move v7, v1

    const/4 v8, 0x1

    if-lt v7, v8, :cond_0

    move v7, v1

    const/16 v8, 0x20

    if-gt v7, v8, :cond_0

    move v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v8

    if-le v7, v8, :cond_1

    .line 64
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move v9, v1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 67
    :cond_1
    const/4 v7, 0x0

    move v2, v7

    .line 70
    .local v2, "result":I
    move-object v7, v0

    iget v7, v7, Lcom/google/zxing/common/BitSource;->bitOffset:I

    if-lez v7, :cond_2

    .line 71
    const/16 v7, 0x8

    move-object v8, v0

    iget v8, v8, Lcom/google/zxing/common/BitSource;->bitOffset:I

    rsub-int/lit8 v7, v8, 0x8

    move v3, v7

    .line 72
    .local v3, "bitsLeft":I
    move v7, v1

    move v8, v3

    if-ge v7, v8, :cond_3

    move v7, v1

    :goto_0
    move v4, v7

    .line 73
    .local v4, "toRead":I
    move v7, v3

    move v8, v4

    sub-int/2addr v7, v8

    move v5, v7

    .line 74
    .local v5, "bitsToNotRead":I
    const/16 v7, 0xff

    const/16 v8, 0x8

    move v9, v4

    rsub-int/lit8 v8, v9, 0x8

    shr-int/2addr v7, v8

    move v8, v5

    shl-int/2addr v7, v8

    move v6, v7

    .line 75
    .local v6, "mask":I
    move-object v7, v0

    iget-object v7, v7, Lcom/google/zxing/common/BitSource;->bytes:[B

    move-object v8, v0

    iget v8, v8, Lcom/google/zxing/common/BitSource;->byteOffset:I

    aget-byte v7, v7, v8

    move v8, v6

    and-int/2addr v7, v8

    move v8, v5

    shr-int/2addr v7, v8

    move v2, v7

    .line 76
    move v7, v1

    move v8, v4

    sub-int/2addr v7, v8

    move v1, v7

    .line 77
    move-object v7, v0

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    iget v8, v8, Lcom/google/zxing/common/BitSource;->bitOffset:I

    move v9, v4

    add-int/2addr v8, v9

    iput v8, v7, Lcom/google/zxing/common/BitSource;->bitOffset:I

    .line 78
    move-object v7, v0

    iget v7, v7, Lcom/google/zxing/common/BitSource;->bitOffset:I

    const/16 v8, 0x8

    if-ne v7, v8, :cond_2

    .line 79
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Lcom/google/zxing/common/BitSource;->bitOffset:I

    .line 80
    move-object v7, v0

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    iget v8, v8, Lcom/google/zxing/common/BitSource;->byteOffset:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/google/zxing/common/BitSource;->byteOffset:I

    .line 85
    .end local v3    # "bitsLeft":I
    .end local v4    # "toRead":I
    .end local v5    # "bitsToNotRead":I
    .end local v6    # "mask":I
    :cond_2
    move v7, v1

    if-lez v7, :cond_5

    .line 86
    :goto_1
    move v7, v1

    const/16 v8, 0x8

    if-lt v7, v8, :cond_4

    .line 87
    move v7, v2

    const/16 v8, 0x8

    shl-int/lit8 v7, v7, 0x8

    move-object v8, v0

    iget-object v8, v8, Lcom/google/zxing/common/BitSource;->bytes:[B

    move-object v9, v0

    iget v9, v9, Lcom/google/zxing/common/BitSource;->byteOffset:I

    aget-byte v8, v8, v9

    const/16 v9, 0xff

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    move v2, v7

    .line 88
    move-object v7, v0

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    iget v8, v8, Lcom/google/zxing/common/BitSource;->byteOffset:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/google/zxing/common/BitSource;->byteOffset:I

    .line 89
    add-int/lit8 v1, v1, -0x8

    goto :goto_1

    .line 72
    .restart local v3    # "bitsLeft":I
    :cond_3
    move v7, v3

    goto :goto_0

    .line 93
    .end local v3    # "bitsLeft":I
    :cond_4
    move v7, v1

    if-lez v7, :cond_5

    .line 94
    const/16 v7, 0x8

    move v8, v1

    rsub-int/lit8 v7, v8, 0x8

    move v3, v7

    .line 95
    .local v3, "bitsToNotRead":I
    const/16 v7, 0xff

    move v8, v3

    shr-int/2addr v7, v8

    move v8, v3

    shl-int/2addr v7, v8

    move v4, v7

    .line 96
    .local v4, "mask":I
    move v7, v2

    move v8, v1

    shl-int/2addr v7, v8

    move-object v8, v0

    iget-object v8, v8, Lcom/google/zxing/common/BitSource;->bytes:[B

    move-object v9, v0

    iget v9, v9, Lcom/google/zxing/common/BitSource;->byteOffset:I

    aget-byte v8, v8, v9

    move v9, v4

    and-int/2addr v8, v9

    move v9, v3

    shr-int/2addr v8, v9

    or-int/2addr v7, v8

    move v2, v7

    .line 97
    move-object v7, v0

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    iget v8, v8, Lcom/google/zxing/common/BitSource;->bitOffset:I

    move v9, v1

    add-int/2addr v8, v9

    iput v8, v7, Lcom/google/zxing/common/BitSource;->bitOffset:I

    .line 101
    .end local v3    # "bitsToNotRead":I
    .end local v4    # "mask":I
    :cond_5
    move v7, v2

    move v0, v7

    .end local v0    # "this":Lcom/google/zxing/common/BitSource;
    return v0
.end method
