.class public Lnet/lingala/zip4j/crypto/StandardDecrypter;
.super Ljava/lang/Object;
.source "StandardDecrypter.java"

# interfaces
.implements Lnet/lingala/zip4j/crypto/IDecrypter;


# instance fields
.field private crc:[B

.field private fileHeader:Lnet/lingala/zip4j/model/FileHeader;

.field private zipCryptoEngine:Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/model/FileHeader;[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/StandardDecrypter;
    move-object v1, p1

    .local v1, "fileHeader":Lnet/lingala/zip4j/model/FileHeader;
    move-object v2, p2

    .local v2, "headerBytes":[B
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 28
    move-object v3, v0

    const/4 v4, 0x4

    new-array v4, v4, [B

    iput-object v4, v3, Lnet/lingala/zip4j/crypto/StandardDecrypter;->crc:[B

    .line 32
    move-object v3, v1

    if-nez v3, :cond_0

    .line 33
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "one of more of the input parameters were null in StandardDecryptor"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 36
    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lnet/lingala/zip4j/crypto/StandardDecrypter;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    .line 37
    move-object v3, v0

    new-instance v4, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;-><init>()V

    iput-object v4, v3, Lnet/lingala/zip4j/crypto/StandardDecrypter;->zipCryptoEngine:Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;

    .line 38
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/crypto/StandardDecrypter;->init([B)V

    .line 39
    return-void
.end method


# virtual methods
.method public decryptData([B)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/StandardDecrypter;
    move-object v1, p1

    .local v1, "buff":[B
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    array-length v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lnet/lingala/zip4j/crypto/StandardDecrypter;->decryptData([BII)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lnet/lingala/zip4j/crypto/StandardDecrypter;
    return v0
.end method

.method public decryptData([BII)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/StandardDecrypter;
    move-object v1, p1

    .local v1, "buff":[B
    move v2, p2

    .local v2, "start":I
    move v3, p3

    .local v3, "len":I
    move v6, v2

    if-ltz v6, :cond_0

    move v6, v3

    if-gez v6, :cond_1

    .line 47
    :cond_0
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string/jumbo v8, "one of the input parameters were null in standard decrpyt data"

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 51
    :cond_1
    move v6, v2

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move v7, v2

    move v8, v3

    add-int/2addr v7, v8

    if-lt v6, v7, :cond_2

    .line 57
    move v6, v3

    move v0, v6

    .end local v0    # "this":Lnet/lingala/zip4j/crypto/StandardDecrypter;
    return v0

    .line 52
    .restart local v0    # "this":Lnet/lingala/zip4j/crypto/StandardDecrypter;
    :cond_2
    move-object v6, v1

    move v7, v4

    :try_start_0
    aget-byte v6, v6, v7

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    move v5, v6

    .line 53
    .local v5, "val":I
    move v6, v5

    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/crypto/StandardDecrypter;->zipCryptoEngine:Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;

    invoke-virtual {v7}, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->decryptByte()B

    move-result v7

    xor-int/2addr v6, v7

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    move v5, v6

    .line 54
    move-object v6, v0

    iget-object v6, v6, Lnet/lingala/zip4j/crypto/StandardDecrypter;->zipCryptoEngine:Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;

    move v7, v5

    int-to-byte v7, v7

    invoke-virtual {v6, v7}, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->updateKeys(B)V

    .line 55
    move-object v6, v1

    move v7, v4

    move v8, v5

    int-to-byte v8, v8

    aput-byte v8, v6, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 58
    .end local v5    # "val":I
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 59
    .local v4, "e":Ljava/lang/Exception;
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v4

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public init([B)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/StandardDecrypter;
    move-object v1, p1

    .local v1, "headerBytes":[B
    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/crypto/StandardDecrypter;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/FileHeader;->getCrcBuff()[B

    move-result-object v5

    move-object v2, v5

    .line 65
    .local v2, "crcBuff":[B
    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/crypto/StandardDecrypter;->crc:[B

    const/4 v6, 0x3

    move-object v7, v2

    const/4 v8, 0x3

    aget-byte v7, v7, v8

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 66
    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/crypto/StandardDecrypter;->crc:[B

    const/4 v6, 0x2

    move-object v7, v2

    const/4 v8, 0x3

    aget-byte v7, v7, v8

    const/16 v8, 0x8

    shr-int/lit8 v7, v7, 0x8

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 67
    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/crypto/StandardDecrypter;->crc:[B

    const/4 v6, 0x1

    move-object v7, v2

    const/4 v8, 0x3

    aget-byte v7, v7, v8

    const/16 v8, 0x10

    shr-int/lit8 v7, v7, 0x10

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 68
    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/crypto/StandardDecrypter;->crc:[B

    const/4 v6, 0x0

    move-object v7, v2

    const/4 v8, 0x3

    aget-byte v7, v7, v8

    const/16 v8, 0x18

    shr-int/lit8 v7, v7, 0x18

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 70
    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/crypto/StandardDecrypter;->crc:[B

    const/4 v6, 0x2

    aget-byte v5, v5, v6

    if-gtz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/crypto/StandardDecrypter;->crc:[B

    const/4 v6, 0x1

    aget-byte v5, v5, v6

    if-gtz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/crypto/StandardDecrypter;->crc:[B

    const/4 v6, 0x0

    aget-byte v5, v5, v6

    if-lez v5, :cond_1

    .line 71
    :cond_0
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "Invalid CRC in File Header"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 73
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/crypto/StandardDecrypter;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/FileHeader;->getPassword()[C

    move-result-object v5

    if-eqz v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/crypto/StandardDecrypter;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/FileHeader;->getPassword()[C

    move-result-object v5

    array-length v5, v5

    if-gtz v5, :cond_3

    .line 74
    :cond_2
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "Wrong password!"

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 77
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/crypto/StandardDecrypter;->zipCryptoEngine:Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;

    move-object v6, v0

    iget-object v6, v6, Lnet/lingala/zip4j/crypto/StandardDecrypter;->fileHeader:Lnet/lingala/zip4j/model/FileHeader;

    invoke-virtual {v6}, Lnet/lingala/zip4j/model/FileHeader;->getPassword()[C

    move-result-object v6

    invoke-virtual {v5, v6}, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->initKeys([C)V

    .line 80
    move-object v5, v1

    const/4 v6, 0x0

    :try_start_0
    aget-byte v5, v5, v6

    move v3, v5

    .line 81
    .local v3, "result":I
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    const/16 v6, 0xc

    if-lt v5, v6, :cond_4

    .line 95
    return-void

    .line 88
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/crypto/StandardDecrypter;->zipCryptoEngine:Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;

    move v6, v3

    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/crypto/StandardDecrypter;->zipCryptoEngine:Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;

    invoke-virtual {v7}, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->decryptByte()B

    move-result v7

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    invoke-virtual {v5, v6}, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->updateKeys(B)V

    .line 89
    move v5, v4

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0xc

    if-eq v5, v6, :cond_5

    .line 90
    move-object v5, v1

    move v6, v4

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    aget-byte v5, v5, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v5

    .line 81
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 92
    .end local v3    # "result":I
    .end local v4    # "i":I
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 93
    .local v3, "e":Ljava/lang/Exception;
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v3

    invoke-direct {v6, v7}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method
