.class public Lnet/lingala/zip4j/util/Raw;
.super Ljava/lang/Object;
.source "Raw.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/util/Raw;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bitArrayToByte([I)B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 120
    move-object v1, p0

    .local v1, "bitArray":[I
    move-object v4, v1

    if-nez v4, :cond_0

    .line 121
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const-string/jumbo v6, "bit array is null, cannot calculate byte from bits"

    invoke-direct {v5, v6}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 124
    :cond_0
    move-object v4, v1

    array-length v4, v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 125
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const-string/jumbo v6, "invalid bit array length, cannot calculate byte"

    invoke-direct {v5, v6}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 128
    :cond_1
    move-object v4, v1

    invoke-static {v4}, Lnet/lingala/zip4j/util/Raw;->checkBits([I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 129
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const-string/jumbo v6, "invalid bits provided, bits contain other values than 0 or 1"

    invoke-direct {v5, v6}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 132
    :cond_2
    const/4 v4, 0x0

    move v2, v4

    .line 133
    .local v2, "retNum":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v1

    array-length v5, v5

    if-lt v4, v5, :cond_3

    .line 137
    move v4, v2

    int-to-byte v4, v4

    move v1, v4

    .end local v1    # "bitArray":[I
    return v1

    .line 134
    .restart local v1    # "bitArray":[I
    :cond_3
    move v4, v2

    int-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    move v8, v3

    int-to-double v8, v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    move-object v8, v1

    move v9, v3

    aget v8, v8, v9

    int-to-double v8, v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v4, v4

    move v2, v4

    .line 133
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static checkBits([I)Z
    .locals 4

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "bitArray":[I
    const/4 v2, 0x0

    move v1, v2

    .local v1, "i":I
    :goto_0
    move v2, v1

    move-object v3, v0

    array-length v3, v3

    if-lt v2, v3, :cond_0

    .line 146
    const/4 v2, 0x1

    move v0, v2

    .end local v0    # "bitArray":[I
    :goto_1
    return v0

    .line 142
    .restart local v0    # "bitArray":[I
    :cond_0
    move-object v2, v0

    move v3, v1

    aget v2, v2, v3

    if-eqz v2, :cond_1

    move-object v2, v0

    move v3, v1

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 143
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1

    .line 141
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static convertCharArrayToByteArray([C)[B
    .locals 8

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "charArray":[C
    move-object v3, v0

    if-nez v3, :cond_0

    .line 175
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 178
    :cond_0
    move-object v3, v0

    array-length v3, v3

    new-array v3, v3, [B

    move-object v1, v3

    .line 179
    .local v1, "bytes":[B
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v0

    array-length v4, v4

    if-lt v3, v4, :cond_1

    .line 182
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "charArray":[C
    return-object v0

    .line 180
    .restart local v0    # "charArray":[C
    :cond_1
    move-object v3, v1

    move v4, v2

    move-object v5, v0

    move v6, v2

    aget-char v5, v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 179
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static prepareBuffAESIVBytes([BII)V
    .locals 7

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "buff":[B
    move v1, p1

    .local v1, "nonce":I
    move v2, p2

    .local v2, "length":I
    move-object v3, v0

    const/4 v4, 0x0

    move v5, v1

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 151
    move-object v3, v0

    const/4 v4, 0x1

    move v5, v1

    const/16 v6, 0x8

    shr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 152
    move-object v3, v0

    const/4 v4, 0x2

    move v5, v1

    const/16 v6, 0x10

    shr-int/lit8 v5, v5, 0x10

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 153
    move-object v3, v0

    const/4 v4, 0x3

    move v5, v1

    const/16 v6, 0x18

    shr-int/lit8 v5, v5, 0x18

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 154
    move-object v3, v0

    const/4 v4, 0x4

    const/4 v5, 0x0

    aput-byte v5, v3, v4

    .line 155
    move-object v3, v0

    const/4 v4, 0x5

    const/4 v5, 0x0

    aput-byte v5, v3, v4

    .line 156
    move-object v3, v0

    const/4 v4, 0x6

    const/4 v5, 0x0

    aput-byte v5, v3, v4

    .line 157
    move-object v3, v0

    const/4 v4, 0x7

    const/4 v5, 0x0

    aput-byte v5, v3, v4

    .line 158
    move-object v3, v0

    const/16 v4, 0x8

    const/4 v5, 0x0

    aput-byte v5, v3, v4

    .line 159
    move-object v3, v0

    const/16 v4, 0x9

    const/4 v5, 0x0

    aput-byte v5, v3, v4

    .line 160
    move-object v3, v0

    const/16 v4, 0xa

    const/4 v5, 0x0

    aput-byte v5, v3, v4

    .line 161
    move-object v3, v0

    const/16 v4, 0xb

    const/4 v5, 0x0

    aput-byte v5, v3, v4

    .line 162
    move-object v3, v0

    const/16 v4, 0xc

    const/4 v5, 0x0

    aput-byte v5, v3, v4

    .line 163
    move-object v3, v0

    const/16 v4, 0xd

    const/4 v5, 0x0

    aput-byte v5, v3, v4

    .line 164
    move-object v3, v0

    const/16 v4, 0xe

    const/4 v5, 0x0

    aput-byte v5, v3, v4

    .line 165
    move-object v3, v0

    const/16 v4, 0xf

    const/4 v5, 0x0

    aput-byte v5, v3, v4

    .line 166
    return-void
.end method

.method public static readIntLittleEndian([BI)I
    .locals 7

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "b":[B
    move v1, p1

    .local v1, "off":I
    move-object v2, v0

    move v3, v1

    aget-byte v2, v2, v3

    const/16 v3, 0xff

    and-int/lit16 v2, v2, 0xff

    move-object v3, v0

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x8

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    .line 70
    move-object v3, v0

    move v4, v1

    const/4 v5, 0x2

    add-int/lit8 v4, v4, 0x2

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    move-object v4, v0

    move v5, v1

    const/4 v6, 0x3

    add-int/lit8 v5, v5, 0x3

    aget-byte v4, v4, v5

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x8

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    const/16 v4, 0x10

    shl-int/lit8 v3, v3, 0x10

    .line 69
    or-int/2addr v2, v3

    move v0, v2

    .end local v0    # "b":[B
    return v0
.end method

.method public static readLeInt(Ljava/io/DataInput;[B)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "di":Ljava/io/DataInput;
    move-object v1, p1

    .local v1, "b":[B
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x4

    :try_start_0
    invoke-interface {v3, v4, v5, v6}, Ljava/io/DataInput;->readFully([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    move-object v3, v1

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    move-object v4, v1

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x8

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    .line 53
    move-object v4, v1

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    move-object v5, v1

    const/4 v6, 0x3

    aget-byte v5, v5, v6

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0x8

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/16 v5, 0x10

    shl-int/lit8 v4, v4, 0x10

    .line 52
    or-int/2addr v3, v4

    move v0, v3

    .end local v0    # "di":Ljava/io/DataInput;
    return v0

    .line 49
    .restart local v0    # "di":Ljava/io/DataInput;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 50
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v2

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static readLongLittleEndian([BI)J
    .locals 9

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "array":[B
    move v1, p1

    .local v1, "pos":I
    const-wide/16 v4, 0x0

    move-wide v2, v4

    .line 28
    .local v2, "temp":J
    move-wide v4, v2

    move-object v6, v0

    move v7, v1

    const/4 v8, 0x7

    add-int/lit8 v7, v7, 0x7

    aget-byte v6, v6, v7

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long/2addr v4, v6

    move-wide v2, v4

    .line 29
    move-wide v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    move-wide v2, v4

    .line 30
    move-wide v4, v2

    move-object v6, v0

    move v7, v1

    const/4 v8, 0x6

    add-int/lit8 v7, v7, 0x6

    aget-byte v6, v6, v7

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long/2addr v4, v6

    move-wide v2, v4

    .line 31
    move-wide v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    move-wide v2, v4

    .line 32
    move-wide v4, v2

    move-object v6, v0

    move v7, v1

    const/4 v8, 0x5

    add-int/lit8 v7, v7, 0x5

    aget-byte v6, v6, v7

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long/2addr v4, v6

    move-wide v2, v4

    .line 33
    move-wide v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    move-wide v2, v4

    .line 34
    move-wide v4, v2

    move-object v6, v0

    move v7, v1

    const/4 v8, 0x4

    add-int/lit8 v7, v7, 0x4

    aget-byte v6, v6, v7

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long/2addr v4, v6

    move-wide v2, v4

    .line 35
    move-wide v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    move-wide v2, v4

    .line 36
    move-wide v4, v2

    move-object v6, v0

    move v7, v1

    const/4 v8, 0x3

    add-int/lit8 v7, v7, 0x3

    aget-byte v6, v6, v7

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long/2addr v4, v6

    move-wide v2, v4

    .line 37
    move-wide v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    move-wide v2, v4

    .line 38
    move-wide v4, v2

    move-object v6, v0

    move v7, v1

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    aget-byte v6, v6, v7

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long/2addr v4, v6

    move-wide v2, v4

    .line 39
    move-wide v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    move-wide v2, v4

    .line 40
    move-wide v4, v2

    move-object v6, v0

    move v7, v1

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    aget-byte v6, v6, v7

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long/2addr v4, v6

    move-wide v2, v4

    .line 41
    move-wide v4, v2

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    move-wide v2, v4

    .line 42
    move-wide v4, v2

    move-object v6, v0

    move v7, v1

    aget-byte v6, v6, v7

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    int-to-long v6, v6

    or-long/2addr v4, v6

    move-wide v2, v4

    .line 43
    move-wide v4, v2

    move-wide v0, v4

    .end local v0    # "array":[B
    return-wide v0
.end method

.method public static final readShortBigEndian([BI)S
    .locals 7

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "array":[B
    move v1, p1

    .local v1, "pos":I
    const/4 v3, 0x0

    move v2, v3

    .line 62
    .local v2, "temp":S
    move v3, v2

    move-object v4, v0

    move v5, v1

    aget-byte v4, v4, v5

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    int-to-short v3, v3

    move v2, v3

    .line 63
    move v3, v2

    const/16 v4, 0x8

    shl-int/lit8 v3, v3, 0x8

    int-to-short v3, v3

    move v2, v3

    .line 64
    move v3, v2

    move-object v4, v0

    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    aget-byte v4, v4, v5

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    int-to-short v3, v3

    move v2, v3

    .line 65
    move v3, v2

    move v0, v3

    .end local v0    # "array":[B
    return v0
.end method

.method public static readShortLittleEndian([BI)I
    .locals 6

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "b":[B
    move v1, p1

    .local v1, "off":I
    move-object v2, v0

    move v3, v1

    aget-byte v2, v2, v3

    const/16 v3, 0xff

    and-int/lit16 v2, v2, 0xff

    move-object v3, v0

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    aget-byte v3, v3, v4

    const/16 v4, 0xff

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x8

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    move v0, v2

    .end local v0    # "b":[B
    return v0
.end method

.method public static toByteArray(I)[B
    .locals 6

    .prologue
    .line 83
    move v0, p0

    .local v0, "in":I
    const/4 v2, 0x4

    new-array v2, v2, [B

    move-object v1, v2

    .line 85
    .local v1, "out":[B
    move-object v2, v1

    const/4 v3, 0x0

    move v4, v0

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 86
    move-object v2, v1

    const/4 v3, 0x1

    move v4, v0

    const/16 v5, 0x8

    shr-int/lit8 v4, v4, 0x8

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 87
    move-object v2, v1

    const/4 v3, 0x2

    move v4, v0

    const/16 v5, 0x10

    shr-int/lit8 v4, v4, 0x10

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 88
    move-object v2, v1

    const/4 v3, 0x3

    move v4, v0

    const/16 v5, 0x18

    shr-int/lit8 v4, v4, 0x18

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 90
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "in":I
    return-object v0
.end method

.method public static toByteArray(II)[B
    .locals 9

    .prologue
    .line 74
    move v0, p0

    .local v0, "in":I
    move v1, p1

    .local v1, "outSize":I
    move v5, v1

    new-array v5, v5, [B

    move-object v2, v5

    .line 75
    .local v2, "out":[B
    move v5, v0

    invoke-static {v5}, Lnet/lingala/zip4j/util/Raw;->toByteArray(I)[B

    move-result-object v5

    move-object v3, v5

    .line 76
    .local v3, "intArray":[B
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move-object v6, v3

    array-length v6, v6

    if-ge v5, v6, :cond_0

    move v5, v4

    move v6, v1

    if-lt v5, v6, :cond_1

    .line 79
    :cond_0
    move-object v5, v2

    move-object v0, v5

    .end local v0    # "in":I
    return-object v0

    .line 77
    .restart local v0    # "in":I
    :cond_1
    move-object v5, v2

    move v6, v4

    move-object v7, v3

    move v8, v4

    aget-byte v7, v7, v8

    aput-byte v7, v5, v6

    .line 76
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static final writeIntLittleEndian([BII)V
    .locals 7

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "array":[B
    move v1, p1

    .local v1, "pos":I
    move v2, p2

    .local v2, "value":I
    move-object v3, v0

    move v4, v1

    const/4 v5, 0x3

    add-int/lit8 v4, v4, 0x3

    move v5, v2

    const/16 v6, 0x18

    ushr-int/lit8 v5, v5, 0x18

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 102
    move-object v3, v0

    move v4, v1

    const/4 v5, 0x2

    add-int/lit8 v4, v4, 0x2

    move v5, v2

    const/16 v6, 0x10

    ushr-int/lit8 v5, v5, 0x10

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 103
    move-object v3, v0

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v5, v2

    const/16 v6, 0x8

    ushr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 104
    move-object v3, v0

    move v4, v1

    move v5, v2

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 106
    return-void
.end method

.method public static writeLongLittleEndian([BIJ)V
    .locals 10

    .prologue
    .line 109
    move-object v0, p0

    .local v0, "array":[B
    move v1, p1

    .local v1, "pos":I
    move-wide v2, p2

    .local v2, "value":J
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x7

    add-int/lit8 v5, v5, 0x7

    move-wide v6, v2

    const/16 v8, 0x38

    ushr-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 110
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x6

    add-int/lit8 v5, v5, 0x6

    move-wide v6, v2

    const/16 v8, 0x30

    ushr-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 111
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x5

    add-int/lit8 v5, v5, 0x5

    move-wide v6, v2

    const/16 v8, 0x28

    ushr-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 112
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x4

    add-int/lit8 v5, v5, 0x4

    move-wide v6, v2

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 113
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x3

    add-int/lit8 v5, v5, 0x3

    move-wide v6, v2

    const/16 v8, 0x18

    ushr-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 114
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x2

    add-int/lit8 v5, v5, 0x2

    move-wide v6, v2

    const/16 v8, 0x10

    ushr-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 115
    move-object v4, v0

    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move-wide v6, v2

    const/16 v8, 0x8

    ushr-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 116
    move-object v4, v0

    move v5, v1

    move-wide v6, v2

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 117
    return-void
.end method

.method public static final writeShortLittleEndian([BIS)V
    .locals 7

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "array":[B
    move v1, p1

    .local v1, "pos":I
    move v2, p2

    .local v2, "value":S
    move-object v3, v0

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move v5, v2

    const/16 v6, 0x8

    ushr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 96
    move-object v3, v0

    move v4, v1

    move v5, v2

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 98
    return-void
.end method
