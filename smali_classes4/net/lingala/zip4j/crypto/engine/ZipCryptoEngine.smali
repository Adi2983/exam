.class public Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;
.super Ljava/lang/Object;
.source "ZipCryptoEngine.java"


# static fields
.field private static final CRC_TABLE:[I


# instance fields
.field private final keys:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 22
    const/16 v3, 0x100

    new-array v3, v3, [I

    sput-object v3, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->CRC_TABLE:[I

    .line 25
    const/4 v3, 0x0

    move v0, v3

    .local v0, "i":I
    :goto_0
    move v3, v0

    const/16 v4, 0x100

    if-lt v3, v4, :cond_0

    .line 19
    return-void

    .line 26
    :cond_0
    move v3, v0

    move v1, v3

    .line 27
    .local v1, "r":I
    const/4 v3, 0x0

    move v2, v3

    .local v2, "j":I
    :goto_1
    move v3, v2

    const/16 v4, 0x8

    if-lt v3, v4, :cond_1

    .line 34
    sget-object v3, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->CRC_TABLE:[I

    move v4, v0

    move v5, v1

    aput v5, v3, v4

    .line 25
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28
    :cond_1
    move v3, v1

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 29
    move v3, v1

    const/4 v4, 0x1

    ushr-int/lit8 v3, v3, 0x1

    const v4, -0x12477ce0

    xor-int/2addr v3, v4

    move v1, v3

    .line 27
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 31
    :cond_2
    move v3, v1

    const/4 v4, 0x1

    ushr-int/lit8 v3, v3, 0x1

    move v1, v3

    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 21
    move-object v1, v0

    const/4 v2, 0x3

    new-array v2, v2, [I

    iput-object v2, v1, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->keys:[I

    .line 39
    return-void
.end method

.method private crc32(IB)I
    .locals 7

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;
    move v1, p1

    .local v1, "oldCrc":I
    move v2, p2

    .local v2, "charAt":B
    move v3, v1

    const/16 v4, 0x8

    ushr-int/lit8 v3, v3, 0x8

    sget-object v4, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->CRC_TABLE:[I

    move v5, v1

    move v6, v2

    xor-int/2addr v5, v6

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    xor-int/2addr v3, v4

    move v0, v3

    .end local v0    # "this":Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;
    return v0
.end method


# virtual methods
.method public decryptByte()B
    .locals 5

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;
    move-object v2, v0

    iget-object v2, v2, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->keys:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    const/4 v3, 0x2

    or-int/lit8 v2, v2, 0x2

    move v1, v2

    .line 63
    .local v1, "temp":I
    move v2, v1

    move v3, v1

    const/4 v4, 0x1

    xor-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    const/16 v3, 0x8

    ushr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    move v0, v2

    .end local v0    # "this":Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;
    return v0
.end method

.method public initKeys([C)V
    .locals 6

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;
    move-object v1, p1

    .local v1, "password":[C
    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->keys:[I

    const/4 v4, 0x0

    const v5, 0x12345678

    aput v5, v3, v4

    .line 43
    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->keys:[I

    const/4 v4, 0x1

    const v5, 0x23456789

    aput v5, v3, v4

    .line 44
    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->keys:[I

    const/4 v4, 0x2

    const v5, 0x34567890

    aput v5, v3, v4

    .line 45
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    move-object v4, v1

    array-length v4, v4

    if-lt v3, v4, :cond_0

    .line 48
    return-void

    .line 46
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    aget-char v4, v4, v5

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->updateKeys(B)V

    .line 45
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public updateKeys(B)V
    .locals 10

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;
    move v1, p1

    .local v1, "charAt":B
    move-object v2, v0

    iget-object v2, v2, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->keys:[I

    const/4 v3, 0x0

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->keys:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    move v6, v1

    invoke-direct {v4, v5, v6}, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->crc32(IB)I

    move-result v4

    aput v4, v2, v3

    .line 52
    move-object v2, v0

    iget-object v2, v2, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->keys:[I

    const/4 v3, 0x1

    move-object v8, v2

    move v9, v3

    move-object v2, v8

    move v3, v9

    move-object v4, v8

    move v5, v9

    aget v4, v4, v5

    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->keys:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    const/16 v6, 0xff

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v4, v5

    aput v4, v2, v3

    .line 53
    move-object v2, v0

    iget-object v2, v2, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->keys:[I

    const/4 v3, 0x1

    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->keys:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    const v5, 0x8088405

    mul-int/2addr v4, v5

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    aput v4, v2, v3

    .line 54
    move-object v2, v0

    iget-object v2, v2, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->keys:[I

    const/4 v3, 0x2

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->keys:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    move-object v6, v0

    iget-object v6, v6, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->keys:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    const/16 v7, 0x18

    shr-int/lit8 v6, v6, 0x18

    int-to-byte v6, v6

    invoke-direct {v4, v5, v6}, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->crc32(IB)I

    move-result v4

    aput v4, v2, v3

    .line 55
    return-void
.end method
