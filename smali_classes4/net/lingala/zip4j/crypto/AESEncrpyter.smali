.class public Lnet/lingala/zip4j/crypto/AESEncrpyter;
.super Ljava/lang/Object;
.source "AESEncrpyter.java"

# interfaces
.implements Lnet/lingala/zip4j/crypto/IEncrypter;


# instance fields
.field private KEY_LENGTH:I

.field private MAC_LENGTH:I

.field private final PASSWORD_VERIFIER_LENGTH:I

.field private SALT_LENGTH:I

.field private aesEngine:Lnet/lingala/zip4j/crypto/engine/AESEngine;

.field private aesKey:[B

.field private counterBlock:[B

.field private derivedPasswordVerifier:[B

.field private finished:Z

.field private iv:[B

.field private keyStrength:I

.field private loopCount:I

.field private mac:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

.field private macKey:[B

.field private nonce:I

.field private password:[C

.field private saltBytes:[B


# direct methods
.method public constructor <init>([CI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/AESEncrpyter;
    move-object v1, p1

    .local v1, "password":[C
    move v2, p2

    .local v2, "keyStrength":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 40
    move-object v3, v0

    const/4 v4, 0x2

    iput v4, v3, Lnet/lingala/zip4j/crypto/AESEncrpyter;->PASSWORD_VERIFIER_LENGTH:I

    .line 49
    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Lnet/lingala/zip4j/crypto/AESEncrpyter;->nonce:I

    .line 50
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lnet/lingala/zip4j/crypto/AESEncrpyter;->loopCount:I

    .line 56
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    array-length v3, v3

    if-nez v3, :cond_1

    .line 57
    :cond_0
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "input password is empty or null in AES encrypter constructor"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 59
    :cond_1
    move v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    .line 60
    move v3, v2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    .line 61
    new-instance v3, Lnet/lingala/zip4j/exception/ZipException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Invalid key strength in AES encrypter constructor"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 64
    :cond_2
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lnet/lingala/zip4j/crypto/AESEncrpyter;->password:[C

    .line 65
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lnet/lingala/zip4j/crypto/AESEncrpyter;->keyStrength:I

    .line 66
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lnet/lingala/zip4j/crypto/AESEncrpyter;->finished:Z

    .line 67
    move-object v3, v0

    const/16 v4, 0x10

    new-array v4, v4, [B

    iput-object v4, v3, Lnet/lingala/zip4j/crypto/AESEncrpyter;->counterBlock:[B

    .line 68
    move-object v3, v0

    const/16 v4, 0x10

    new-array v4, v4, [B

    iput-object v4, v3, Lnet/lingala/zip4j/crypto/AESEncrpyter;->iv:[B

    .line 69
    move-object v3, v0

    invoke-direct {v3}, Lnet/lingala/zip4j/crypto/AESEncrpyter;->init()V

    .line 70
    return-void
.end method

.method private deriveKey([B[C)[B
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/AESEncrpyter;
    move-object v1, p1

    .local v1, "salt":[B
    move-object v2, p2

    .local v2, "password":[C
    :try_start_0
    new-instance v6, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const-string/jumbo v8, "HmacSHA1"

    const-string/jumbo v9, "ISO-8859-1"

    .line 111
    move-object v10, v1

    const/16 v11, 0x3e8

    .line 110
    invoke-direct {v7, v8, v9, v10, v11}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;-><init>(Ljava/lang/String;Ljava/lang/String;[BI)V

    move-object v3, v6

    .line 112
    .local v3, "p":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;
    new-instance v6, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v3

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;-><init>(Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;)V

    move-object v4, v6

    .line 113
    .local v4, "e":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;
    move-object v6, v4

    move-object v7, v2

    move-object v8, v0

    iget v8, v8, Lnet/lingala/zip4j/crypto/AESEncrpyter;->KEY_LENGTH:I

    move-object v9, v0

    iget v9, v9, Lnet/lingala/zip4j/crypto/AESEncrpyter;->MAC_LENGTH:I

    add-int/2addr v8, v9

    const/4 v9, 0x2

    add-int/lit8 v8, v8, 0x2

    invoke-virtual {v6, v7, v8}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->deriveKey([CI)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v5, v6

    .line 114
    .local v5, "derivedKey":[B
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "this":Lnet/lingala/zip4j/crypto/AESEncrpyter;
    return-object v0

    .line 115
    .end local v3    # "p":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;
    .end local v4    # "e":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;
    .end local v5    # "derivedKey":[B
    .restart local v0    # "this":Lnet/lingala/zip4j/crypto/AESEncrpyter;
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 116
    .local v3, "e":Ljava/lang/Exception;
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v3

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method private static generateSalt(I)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 161
    move v0, p0

    .local v0, "size":I
    move v6, v0

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    move v6, v0

    const/16 v7, 0x10

    if-eq v6, v7, :cond_0

    .line 162
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string/jumbo v8, "invalid salt size, cannot generate salt"

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 165
    :cond_0
    const/4 v6, 0x0

    move v1, v6

    .line 167
    .local v1, "rounds":I
    move v6, v0

    const/16 v7, 0x8

    if-ne v6, v7, :cond_1

    .line 168
    const/4 v6, 0x2

    move v1, v6

    .line 169
    :cond_1
    move v6, v0

    const/16 v7, 0x10

    if-ne v6, v7, :cond_2

    .line 170
    const/4 v6, 0x4

    move v1, v6

    .line 172
    :cond_2
    move v6, v0

    new-array v6, v6, [B

    move-object v2, v6

    .line 173
    .local v2, "salt":[B
    const/4 v6, 0x0

    move v3, v6

    .local v3, "j":I
    :goto_0
    move v6, v3

    move v7, v1

    if-lt v6, v7, :cond_3

    .line 181
    move-object v6, v2

    move-object v0, v6

    .end local v0    # "size":I
    return-object v0

    .line 174
    .restart local v0    # "size":I
    :cond_3
    new-instance v6, Ljava/util/Random;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    move-object v4, v6

    .line 175
    .local v4, "rand":Ljava/util/Random;
    move-object v6, v4

    invoke-virtual {v6}, Ljava/util/Random;->nextInt()I

    move-result v6

    move v5, v6

    .line 176
    .local v5, "i":I
    move-object v6, v2

    const/4 v7, 0x0

    move v8, v3

    const/4 v9, 0x4

    mul-int/lit8 v8, v8, 0x4

    add-int/2addr v7, v8

    move v8, v5

    const/16 v9, 0x18

    shr-int/lit8 v8, v8, 0x18

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 177
    move-object v6, v2

    const/4 v7, 0x1

    move v8, v3

    const/4 v9, 0x4

    mul-int/lit8 v8, v8, 0x4

    add-int/2addr v7, v8

    move v8, v5

    const/16 v9, 0x10

    shr-int/lit8 v8, v8, 0x10

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 178
    move-object v6, v2

    const/4 v7, 0x2

    move v8, v3

    const/4 v9, 0x4

    mul-int/lit8 v8, v8, 0x4

    add-int/2addr v7, v8

    move v8, v5

    const/16 v9, 0x8

    shr-int/lit8 v8, v8, 0x8

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 179
    move-object v6, v2

    const/4 v7, 0x3

    move v8, v3

    const/4 v9, 0x4

    mul-int/lit8 v8, v8, 0x4

    add-int/2addr v7, v8

    move v8, v5

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 173
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private init()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/AESEncrpyter;
    move-object v2, v0

    iget v2, v2, Lnet/lingala/zip4j/crypto/AESEncrpyter;->keyStrength:I

    packed-switch v2, :pswitch_data_0

    .line 85
    :pswitch_0
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string/jumbo v4, "invalid aes key strength, cannot determine key sizes"

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 75
    :pswitch_1
    move-object v2, v0

    const/16 v3, 0x10

    iput v3, v2, Lnet/lingala/zip4j/crypto/AESEncrpyter;->KEY_LENGTH:I

    .line 76
    move-object v2, v0

    const/16 v3, 0x10

    iput v3, v2, Lnet/lingala/zip4j/crypto/AESEncrpyter;->MAC_LENGTH:I

    .line 77
    move-object v2, v0

    const/16 v3, 0x8

    iput v3, v2, Lnet/lingala/zip4j/crypto/AESEncrpyter;->SALT_LENGTH:I

    .line 78
    .line 88
    :goto_0
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lnet/lingala/zip4j/crypto/AESEncrpyter;->SALT_LENGTH:I

    invoke-static {v3}, Lnet/lingala/zip4j/crypto/AESEncrpyter;->generateSalt(I)[B

    move-result-object v3

    iput-object v3, v2, Lnet/lingala/zip4j/crypto/AESEncrpyter;->saltBytes:[B

    .line 89
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/crypto/AESEncrpyter;->saltBytes:[B

    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/crypto/AESEncrpyter;->password:[C

    invoke-direct {v2, v3, v4}, Lnet/lingala/zip4j/crypto/AESEncrpyter;->deriveKey([B[C)[B

    move-result-object v2

    move-object v1, v2

    .line 91
    .local v1, "keyBytes":[B
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    array-length v2, v2

    move-object v3, v0

    iget v3, v3, Lnet/lingala/zip4j/crypto/AESEncrpyter;->KEY_LENGTH:I

    move-object v4, v0

    iget v4, v4, Lnet/lingala/zip4j/crypto/AESEncrpyter;->MAC_LENGTH:I

    add-int/2addr v3, v4

    const/4 v4, 0x2

    add-int/lit8 v3, v3, 0x2

    if-eq v2, v3, :cond_1

    .line 92
    :cond_0
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string/jumbo v4, "invalid key generated, cannot decrypt file"

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    .end local v1    # "keyBytes":[B
    :pswitch_2
    move-object v2, v0

    const/16 v3, 0x20

    iput v3, v2, Lnet/lingala/zip4j/crypto/AESEncrpyter;->KEY_LENGTH:I

    .line 81
    move-object v2, v0

    const/16 v3, 0x20

    iput v3, v2, Lnet/lingala/zip4j/crypto/AESEncrpyter;->MAC_LENGTH:I

    .line 82
    move-object v2, v0

    const/16 v3, 0x10

    iput v3, v2, Lnet/lingala/zip4j/crypto/AESEncrpyter;->SALT_LENGTH:I

    .line 83
    goto :goto_0

    .line 95
    .restart local v1    # "keyBytes":[B
    :cond_1
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lnet/lingala/zip4j/crypto/AESEncrpyter;->KEY_LENGTH:I

    new-array v3, v3, [B

    iput-object v3, v2, Lnet/lingala/zip4j/crypto/AESEncrpyter;->aesKey:[B

    .line 96
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lnet/lingala/zip4j/crypto/AESEncrpyter;->MAC_LENGTH:I

    new-array v3, v3, [B

    iput-object v3, v2, Lnet/lingala/zip4j/crypto/AESEncrpyter;->macKey:[B

    .line 97
    move-object v2, v0

    const/4 v3, 0x2

    new-array v3, v3, [B

    iput-object v3, v2, Lnet/lingala/zip4j/crypto/AESEncrpyter;->derivedPasswordVerifier:[B

    .line 99
    move-object v2, v1

    const/4 v3, 0x0

    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/crypto/AESEncrpyter;->aesKey:[B

    const/4 v5, 0x0

    move-object v6, v0

    iget v6, v6, Lnet/lingala/zip4j/crypto/AESEncrpyter;->KEY_LENGTH:I

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lnet/lingala/zip4j/crypto/AESEncrpyter;->KEY_LENGTH:I

    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/crypto/AESEncrpyter;->macKey:[B

    const/4 v5, 0x0

    move-object v6, v0

    iget v6, v6, Lnet/lingala/zip4j/crypto/AESEncrpyter;->MAC_LENGTH:I

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lnet/lingala/zip4j/crypto/AESEncrpyter;->KEY_LENGTH:I

    move-object v4, v0

    iget v4, v4, Lnet/lingala/zip4j/crypto/AESEncrpyter;->MAC_LENGTH:I

    add-int/2addr v3, v4

    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/crypto/AESEncrpyter;->derivedPasswordVerifier:[B

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    move-object v2, v0

    new-instance v3, Lnet/lingala/zip4j/crypto/engine/AESEngine;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/crypto/AESEncrpyter;->aesKey:[B

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/crypto/engine/AESEngine;-><init>([B)V

    iput-object v3, v2, Lnet/lingala/zip4j/crypto/AESEncrpyter;->aesEngine:Lnet/lingala/zip4j/crypto/engine/AESEngine;

    .line 104
    move-object v2, v0

    new-instance v3, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "HmacSHA1"

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lnet/lingala/zip4j/crypto/AESEncrpyter;->mac:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    .line 105
    move-object v2, v0

    iget-object v2, v2, Lnet/lingala/zip4j/crypto/AESEncrpyter;->mac:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/crypto/AESEncrpyter;->macKey:[B

    invoke-virtual {v2, v3}, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->init([B)V

    .line 106
    return-void

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public encryptData([B)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/AESEncrpyter;
    move-object v1, p1

    .local v1, "buff":[B
    move-object v2, v1

    if-nez v2, :cond_0

    .line 123
    new-instance v2, Lnet/lingala/zip4j/exception/ZipException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "input bytes are null, cannot perform AES encrpytion"

    invoke-direct {v3, v4}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 125
    :cond_0
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    array-length v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lnet/lingala/zip4j/crypto/AESEncrpyter;->encryptData([BII)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lnet/lingala/zip4j/crypto/AESEncrpyter;
    return v0
.end method

.method public encryptData([BII)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/AESEncrpyter;
    move-object v1, p1

    .local v1, "buff":[B
    move v2, p2

    .local v2, "start":I
    move v3, p3

    .local v3, "len":I
    move-object v6, v0

    iget-boolean v6, v6, Lnet/lingala/zip4j/crypto/AESEncrpyter;->finished:Z

    if-eqz v6, :cond_0

    .line 134
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string/jumbo v8, "AES Encrypter is in finished state (A non 16 byte block has already been passed to encrypter)"

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 137
    :cond_0
    move v6, v3

    const/16 v7, 0x10

    rem-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_1

    .line 138
    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Lnet/lingala/zip4j/crypto/AESEncrpyter;->finished:Z

    .line 141
    :cond_1
    move v6, v2

    move v4, v6

    .local v4, "j":I
    :goto_0
    move v6, v4

    move v7, v2

    move v8, v3

    add-int/2addr v7, v8

    if-lt v6, v7, :cond_2

    .line 156
    move v6, v3

    move v0, v6

    .end local v0    # "this":Lnet/lingala/zip4j/crypto/AESEncrpyter;
    return v0

    .line 142
    .restart local v0    # "this":Lnet/lingala/zip4j/crypto/AESEncrpyter;
    :cond_2
    move-object v6, v0

    move v7, v4

    const/16 v8, 0x10

    add-int/lit8 v7, v7, 0x10

    move v8, v2

    move v9, v3

    add-int/2addr v8, v9

    if-gt v7, v8, :cond_3

    .line 143
    const/16 v7, 0x10

    .line 142
    :goto_1
    iput v7, v6, Lnet/lingala/zip4j/crypto/AESEncrpyter;->loopCount:I

    .line 145
    move-object v6, v0

    iget-object v6, v6, Lnet/lingala/zip4j/crypto/AESEncrpyter;->iv:[B

    move-object v7, v0

    iget v7, v7, Lnet/lingala/zip4j/crypto/AESEncrpyter;->nonce:I

    const/16 v8, 0x10

    invoke-static {v6, v7, v8}, Lnet/lingala/zip4j/util/Raw;->prepareBuffAESIVBytes([BII)V

    .line 146
    move-object v6, v0

    iget-object v6, v6, Lnet/lingala/zip4j/crypto/AESEncrpyter;->aesEngine:Lnet/lingala/zip4j/crypto/engine/AESEngine;

    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/crypto/AESEncrpyter;->iv:[B

    move-object v8, v0

    iget-object v8, v8, Lnet/lingala/zip4j/crypto/AESEncrpyter;->counterBlock:[B

    invoke-virtual {v6, v7, v8}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->processBlock([B[B)I

    move-result v6

    .line 148
    const/4 v6, 0x0

    move v5, v6

    .local v5, "k":I
    :goto_2
    move v6, v5

    move-object v7, v0

    iget v7, v7, Lnet/lingala/zip4j/crypto/AESEncrpyter;->loopCount:I

    if-lt v6, v7, :cond_4

    .line 152
    move-object v6, v0

    iget-object v6, v6, Lnet/lingala/zip4j/crypto/AESEncrpyter;->mac:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    move-object v7, v1

    move v8, v4

    move-object v9, v0

    iget v9, v9, Lnet/lingala/zip4j/crypto/AESEncrpyter;->loopCount:I

    invoke-virtual {v6, v7, v8, v9}, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->update([BII)V

    .line 153
    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Lnet/lingala/zip4j/crypto/AESEncrpyter;->nonce:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lnet/lingala/zip4j/crypto/AESEncrpyter;->nonce:I

    .line 141
    add-int/lit8 v4, v4, 0x10

    goto :goto_0

    .line 143
    .end local v5    # "k":I
    :cond_3
    move v7, v2

    move v8, v3

    add-int/2addr v7, v8

    move v8, v4

    sub-int/2addr v7, v8

    goto :goto_1

    .line 149
    .restart local v5    # "k":I
    :cond_4
    move-object v6, v1

    move v7, v4

    move v8, v5

    add-int/2addr v7, v8

    move-object v8, v1

    move v9, v4

    move v10, v5

    add-int/2addr v9, v10

    aget-byte v8, v8, v9

    move-object v9, v0

    iget-object v9, v9, Lnet/lingala/zip4j/crypto/AESEncrpyter;->counterBlock:[B

    move v10, v5

    aget-byte v9, v9, v10

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    .line 148
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method public getDerivedPasswordVerifier()[B
    .locals 2

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/AESEncrpyter;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/crypto/AESEncrpyter;->derivedPasswordVerifier:[B

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/crypto/AESEncrpyter;
    return-object v0
.end method

.method public getFinalMac()[B
    .locals 8

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/AESEncrpyter;
    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/crypto/AESEncrpyter;->mac:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    invoke-virtual {v3}, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->doFinal()[B

    move-result-object v3

    move-object v1, v3

    .line 186
    .local v1, "rawMacBytes":[B
    const/16 v3, 0xa

    new-array v3, v3, [B

    move-object v2, v3

    .line 187
    .local v2, "macBytes":[B
    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    const/16 v7, 0xa

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lnet/lingala/zip4j/crypto/AESEncrpyter;
    return-object v0
.end method

.method public getPasswordVeriifierLength()I
    .locals 2

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/AESEncrpyter;
    const/4 v1, 0x2

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/crypto/AESEncrpyter;
    return v0
.end method

.method public getSaltBytes()[B
    .locals 2

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/AESEncrpyter;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/crypto/AESEncrpyter;->saltBytes:[B

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/crypto/AESEncrpyter;
    return-object v0
.end method

.method public getSaltLength()I
    .locals 2

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/AESEncrpyter;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/crypto/AESEncrpyter;->SALT_LENGTH:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/crypto/AESEncrpyter;
    return v0
.end method

.method public setDerivedPasswordVerifier([B)V
    .locals 4

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/AESEncrpyter;
    move-object v1, p1

    .local v1, "derivedPasswordVerifier":[B
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/crypto/AESEncrpyter;->derivedPasswordVerifier:[B

    .line 197
    return-void
.end method

.method public setSaltBytes([B)V
    .locals 4

    .prologue
    .line 204
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/AESEncrpyter;
    move-object v1, p1

    .local v1, "saltBytes":[B
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/crypto/AESEncrpyter;->saltBytes:[B

    .line 205
    return-void
.end method
