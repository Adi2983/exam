.class public Lnet/lingala/zip4j/crypto/StandardEncrypter;
.super Ljava/lang/Object;
.source "StandardEncrypter.java"

# interfaces
.implements Lnet/lingala/zip4j/crypto/IEncrypter;


# instance fields
.field private headerBytes:[B

.field private zipCryptoEngine:Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;


# direct methods
.method public constructor <init>([CI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/StandardEncrypter;
    move-object v1, p1

    .local v1, "password":[C
    move v2, p2

    .local v2, "crc":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 31
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    array-length v3, v3

    if-gtz v3, :cond_1

    .line 32
    :cond_0
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "input password is null or empty in standard encrpyter constructor"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 35
    :cond_1
    move-object v3, v0

    new-instance v4, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;-><init>()V

    iput-object v4, v3, Lnet/lingala/zip4j/crypto/StandardEncrypter;->zipCryptoEngine:Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;

    .line 37
    move-object v3, v0

    const/16 v4, 0xc

    new-array v4, v4, [B

    iput-object v4, v3, Lnet/lingala/zip4j/crypto/StandardEncrypter;->headerBytes:[B

    .line 38
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lnet/lingala/zip4j/crypto/StandardEncrypter;->init([CI)V

    .line 39
    return-void
.end method

.method private init([CI)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/StandardEncrypter;
    move-object v1, p1

    .local v1, "password":[C
    move v2, p2

    .local v2, "crc":I
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    array-length v3, v3

    if-gtz v3, :cond_1

    .line 43
    :cond_0
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "input password is null or empty, cannot initialize standard encrypter"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 45
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/crypto/StandardEncrypter;->zipCryptoEngine:Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->initKeys([C)V

    .line 46
    move-object v3, v0

    move-object v4, v0

    const/16 v5, 0xc

    invoke-virtual {v4, v5}, Lnet/lingala/zip4j/crypto/StandardEncrypter;->generateRandomBytes(I)[B

    move-result-object v4

    iput-object v4, v3, Lnet/lingala/zip4j/crypto/StandardEncrypter;->headerBytes:[B

    .line 48
    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/crypto/StandardEncrypter;->zipCryptoEngine:Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->initKeys([C)V

    .line 50
    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/crypto/StandardEncrypter;->headerBytes:[B

    const/16 v4, 0xb

    move v5, v2

    const/16 v6, 0x18

    ushr-int/lit8 v5, v5, 0x18

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 51
    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/crypto/StandardEncrypter;->headerBytes:[B

    const/16 v4, 0xa

    move v5, v2

    const/16 v6, 0x10

    ushr-int/lit8 v5, v5, 0x10

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 53
    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/crypto/StandardEncrypter;->headerBytes:[B

    array-length v3, v3

    const/16 v4, 0xc

    if-ge v3, v4, :cond_2

    .line 54
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "invalid header bytes generated, cannot perform standard encryption"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 57
    :cond_2
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/crypto/StandardEncrypter;->headerBytes:[B

    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/crypto/StandardEncrypter;->encryptData([B)I

    move-result v3

    .line 58
    return-void
.end method


# virtual methods
.method protected encryptByte(B)B
    .locals 6

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/StandardEncrypter;
    move v1, p1

    .local v1, "val":B
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/crypto/StandardEncrypter;->zipCryptoEngine:Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;

    invoke-virtual {v4}, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->decryptByte()B

    move-result v4

    const/16 v5, 0xff

    and-int/lit16 v4, v4, 0xff

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    move v2, v3

    .line 85
    .local v2, "temp_val":B
    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/crypto/StandardEncrypter;->zipCryptoEngine:Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;

    move v4, v1

    invoke-virtual {v3, v4}, Lnet/lingala/zip4j/crypto/engine/ZipCryptoEngine;->updateKeys(B)V

    .line 86
    move v3, v2

    move v0, v3

    .end local v0    # "this":Lnet/lingala/zip4j/crypto/StandardEncrypter;
    return v0
.end method

.method public encryptData([B)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/StandardEncrypter;
    move-object v1, p1

    .local v1, "buff":[B
    move-object v2, v1

    if-nez v2, :cond_0

    .line 62
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 64
    :cond_0
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    array-length v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lnet/lingala/zip4j/crypto/StandardEncrypter;->encryptData([BII)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lnet/lingala/zip4j/crypto/StandardEncrypter;
    return v0
.end method

.method public encryptData([BII)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/StandardEncrypter;
    move-object v1, p1

    .local v1, "buff":[B
    move v2, p2

    .local v2, "start":I
    move v3, p3

    .local v3, "len":I
    move v5, v3

    if-gez v5, :cond_0

    .line 70
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "invalid length specified to decrpyt data"

    invoke-direct {v6, v7}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 74
    :cond_0
    move v5, v2

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move v6, v2

    move v7, v3

    add-int/2addr v6, v7

    if-lt v5, v6, :cond_1

    .line 77
    move v5, v3

    move v0, v5

    .end local v0    # "this":Lnet/lingala/zip4j/crypto/StandardEncrypter;
    return v0

    .line 75
    .restart local v0    # "this":Lnet/lingala/zip4j/crypto/StandardEncrypter;
    :cond_1
    move-object v5, v1

    move v6, v4

    move-object v7, v0

    move-object v8, v1

    move v9, v4

    :try_start_0
    aget-byte v8, v8, v9

    invoke-virtual {v7, v8}, Lnet/lingala/zip4j/crypto/StandardEncrypter;->encryptByte(B)B

    move-result v7

    aput-byte v7, v5, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 78
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 79
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v4

    invoke-direct {v6, v7}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method protected generateRandomBytes(I)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/StandardEncrypter;
    move v1, p1

    .local v1, "size":I
    move v5, v1

    if-gtz v5, :cond_0

    .line 92
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "size is either 0 or less than 0, cannot generate header for standard encryptor"

    invoke-direct {v6, v7}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 95
    :cond_0
    move v5, v1

    new-array v5, v5, [B

    move-object v2, v5

    .line 97
    .local v2, "buff":[B
    new-instance v5, Ljava/util/Random;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    move-object v3, v5

    .line 99
    .local v3, "rand":Ljava/util/Random;
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move-object v6, v2

    array-length v6, v6

    if-lt v5, v6, :cond_1

    .line 126
    move-object v5, v2

    move-object v0, v5

    .end local v0    # "this":Lnet/lingala/zip4j/crypto/StandardEncrypter;
    return-object v0

    .line 102
    .restart local v0    # "this":Lnet/lingala/zip4j/crypto/StandardEncrypter;
    :cond_1
    move-object v5, v2

    move v6, v4

    move-object v7, v0

    move-object v8, v3

    const/16 v9, 0x100

    invoke-virtual {v8, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    int-to-byte v8, v8

    invoke-virtual {v7, v8}, Lnet/lingala/zip4j/crypto/StandardEncrypter;->encryptByte(B)B

    move-result v7

    aput-byte v7, v5, v6

    .line 99
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public getHeaderBytes()[B
    .locals 2

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/StandardEncrypter;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/crypto/StandardEncrypter;->headerBytes:[B

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/crypto/StandardEncrypter;
    return-object v0
.end method
