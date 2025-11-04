.class public Lnet/lingala/zip4j/crypto/AESDecrypter;
.super Ljava/lang/Object;
.source "AESDecrypter.java"

# interfaces
.implements Lnet/lingala/zip4j/crypto/IDecrypter;


# instance fields
.field private KEY_LENGTH:I

.field private MAC_LENGTH:I

.field private final PASSWORD_VERIFIER_LENGTH:I

.field private SALT_LENGTH:I

.field private aesEngine:Lnet/lingala/zip4j/crypto/engine/AESEngine;

.field private aesKey:[B

.field private counterBlock:[B

.field private derivedPasswordVerifier:[B

.field private iv:[B

.field private localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

.field private loopCount:I

.field private mac:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

.field private macKey:[B

.field private nonce:I

.field private storedMac:[B


# direct methods
.method public constructor <init>(Lnet/lingala/zip4j/model/LocalFileHeader;[B[B)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/AESDecrypter;
    move-object v1, p1

    .local v1, "localFileHeader":Lnet/lingala/zip4j/model/LocalFileHeader;
    move-object v2, p2

    .local v2, "salt":[B
    move-object v3, p3

    .local v3, "passwordVerifier":[B
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 39
    move-object v4, v0

    const/4 v5, 0x2

    iput v5, v4, Lnet/lingala/zip4j/crypto/AESDecrypter;->PASSWORD_VERIFIER_LENGTH:I

    .line 49
    move-object v4, v0

    const/4 v5, 0x1

    iput v5, v4, Lnet/lingala/zip4j/crypto/AESDecrypter;->nonce:I

    .line 52
    move-object v4, v0

    const/4 v5, 0x0

    iput v5, v4, Lnet/lingala/zip4j/crypto/AESDecrypter;->loopCount:I

    .line 57
    move-object v4, v1

    if-nez v4, :cond_0

    .line 58
    new-instance v4, Lnet/lingala/zip4j/exception/ZipException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "one of the input parameters is null in AESDecryptor Constructor"

    invoke-direct {v5, v6}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 61
    :cond_0
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lnet/lingala/zip4j/crypto/AESDecrypter;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    .line 62
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lnet/lingala/zip4j/crypto/AESDecrypter;->storedMac:[B

    .line 63
    move-object v4, v0

    const/16 v5, 0x10

    new-array v5, v5, [B

    iput-object v5, v4, Lnet/lingala/zip4j/crypto/AESDecrypter;->iv:[B

    .line 64
    move-object v4, v0

    const/16 v5, 0x10

    new-array v5, v5, [B

    iput-object v5, v4, Lnet/lingala/zip4j/crypto/AESDecrypter;->counterBlock:[B

    .line 65
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Lnet/lingala/zip4j/crypto/AESDecrypter;->init([B[B)V

    .line 66
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
    .line 167
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/AESDecrypter;
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

    .line 168
    move-object v10, v1

    const/16 v11, 0x3e8

    .line 167
    invoke-direct {v7, v8, v9, v10, v11}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;-><init>(Ljava/lang/String;Ljava/lang/String;[BI)V

    move-object v3, v6

    .line 169
    .local v3, "p":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;
    new-instance v6, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v3

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;-><init>(Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;)V

    move-object v4, v6

    .line 170
    .local v4, "e":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;
    move-object v6, v4

    move-object v7, v2

    move-object v8, v0

    iget v8, v8, Lnet/lingala/zip4j/crypto/AESDecrypter;->KEY_LENGTH:I

    move-object v9, v0

    iget v9, v9, Lnet/lingala/zip4j/crypto/AESDecrypter;->MAC_LENGTH:I

    add-int/2addr v8, v9

    const/4 v9, 0x2

    add-int/lit8 v8, v8, 0x2

    invoke-virtual {v6, v7, v8}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->deriveKey([CI)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v5, v6

    .line 171
    .local v5, "derivedKey":[B
    move-object v6, v5

    move-object v0, v6

    .end local v0    # "this":Lnet/lingala/zip4j/crypto/AESDecrypter;
    return-object v0

    .line 172
    .end local v3    # "p":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;
    .end local v4    # "e":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;
    .end local v5    # "derivedKey":[B
    .restart local v0    # "this":Lnet/lingala/zip4j/crypto/AESDecrypter;
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 173
    .local v3, "e":Ljava/lang/Exception;
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v3

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method private init([B[B)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/AESDecrypter;
    move-object v1, p1

    .local v1, "salt":[B
    move-object v2, p2

    .local v2, "passwordVerifier":[B
    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/crypto/AESDecrypter;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    if-nez v5, :cond_0

    .line 70
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "invalid file header in init method of AESDecryptor"

    invoke-direct {v6, v7}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 73
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/crypto/AESDecrypter;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/LocalFileHeader;->getAesExtraDataRecord()Lnet/lingala/zip4j/model/AESExtraDataRecord;

    move-result-object v5

    move-object v3, v5

    .line 74
    .local v3, "aesExtraDataRecord":Lnet/lingala/zip4j/model/AESExtraDataRecord;
    move-object v5, v3

    if-nez v5, :cond_1

    .line 75
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "invalid aes extra data record - in init method of AESDecryptor"

    invoke-direct {v6, v7}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 78
    :cond_1
    move-object v5, v3

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/AESExtraDataRecord;->getAesStrength()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 95
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuffer;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string/jumbo v9, "invalid aes key strength for file: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    iget-object v8, v8, Lnet/lingala/zip4j/crypto/AESDecrypter;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/LocalFileHeader;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 80
    :pswitch_0
    move-object v5, v0

    const/16 v6, 0x10

    iput v6, v5, Lnet/lingala/zip4j/crypto/AESDecrypter;->KEY_LENGTH:I

    .line 81
    move-object v5, v0

    const/16 v6, 0x10

    iput v6, v5, Lnet/lingala/zip4j/crypto/AESDecrypter;->MAC_LENGTH:I

    .line 82
    move-object v5, v0

    const/16 v6, 0x8

    iput v6, v5, Lnet/lingala/zip4j/crypto/AESDecrypter;->SALT_LENGTH:I

    .line 83
    .line 98
    :goto_0
    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/crypto/AESDecrypter;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/LocalFileHeader;->getPassword()[C

    move-result-object v5

    if-eqz v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/crypto/AESDecrypter;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v5}, Lnet/lingala/zip4j/model/LocalFileHeader;->getPassword()[C

    move-result-object v5

    array-length v5, v5

    if-gtz v5, :cond_3

    .line 99
    :cond_2
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "empty or null password provided for AES Decryptor"

    invoke-direct {v6, v7}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 85
    :pswitch_1
    move-object v5, v0

    const/16 v6, 0x18

    iput v6, v5, Lnet/lingala/zip4j/crypto/AESDecrypter;->KEY_LENGTH:I

    .line 86
    move-object v5, v0

    const/16 v6, 0x18

    iput v6, v5, Lnet/lingala/zip4j/crypto/AESDecrypter;->MAC_LENGTH:I

    .line 87
    move-object v5, v0

    const/16 v6, 0xc

    iput v6, v5, Lnet/lingala/zip4j/crypto/AESDecrypter;->SALT_LENGTH:I

    .line 88
    goto :goto_0

    .line 90
    :pswitch_2
    move-object v5, v0

    const/16 v6, 0x20

    iput v6, v5, Lnet/lingala/zip4j/crypto/AESDecrypter;->KEY_LENGTH:I

    .line 91
    move-object v5, v0

    const/16 v6, 0x20

    iput v6, v5, Lnet/lingala/zip4j/crypto/AESDecrypter;->MAC_LENGTH:I

    .line 92
    move-object v5, v0

    const/16 v6, 0x10

    iput v6, v5, Lnet/lingala/zip4j/crypto/AESDecrypter;->SALT_LENGTH:I

    .line 93
    goto :goto_0

    .line 102
    :cond_3
    move-object v5, v0

    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/crypto/AESDecrypter;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v7}, Lnet/lingala/zip4j/model/LocalFileHeader;->getPassword()[C

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lnet/lingala/zip4j/crypto/AESDecrypter;->deriveKey([B[C)[B

    move-result-object v5

    move-object v4, v5

    .line 103
    .local v4, "derivedKey":[B
    move-object v5, v4

    if-eqz v5, :cond_4

    .line 104
    move-object v5, v4

    array-length v5, v5

    move-object v6, v0

    iget v6, v6, Lnet/lingala/zip4j/crypto/AESDecrypter;->KEY_LENGTH:I

    move-object v7, v0

    iget v7, v7, Lnet/lingala/zip4j/crypto/AESDecrypter;->MAC_LENGTH:I

    add-int/2addr v6, v7

    const/4 v7, 0x2

    add-int/lit8 v6, v6, 0x2

    if-eq v5, v6, :cond_5

    .line 105
    :cond_4
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "invalid derived key"

    invoke-direct {v6, v7}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 108
    :cond_5
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lnet/lingala/zip4j/crypto/AESDecrypter;->KEY_LENGTH:I

    new-array v6, v6, [B

    iput-object v6, v5, Lnet/lingala/zip4j/crypto/AESDecrypter;->aesKey:[B

    .line 109
    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lnet/lingala/zip4j/crypto/AESDecrypter;->MAC_LENGTH:I

    new-array v6, v6, [B

    iput-object v6, v5, Lnet/lingala/zip4j/crypto/AESDecrypter;->macKey:[B

    .line 110
    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [B

    iput-object v6, v5, Lnet/lingala/zip4j/crypto/AESDecrypter;->derivedPasswordVerifier:[B

    .line 112
    move-object v5, v4

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/crypto/AESDecrypter;->aesKey:[B

    const/4 v8, 0x0

    move-object v9, v0

    iget v9, v9, Lnet/lingala/zip4j/crypto/AESDecrypter;->KEY_LENGTH:I

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    move-object v5, v4

    move-object v6, v0

    iget v6, v6, Lnet/lingala/zip4j/crypto/AESDecrypter;->KEY_LENGTH:I

    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/crypto/AESDecrypter;->macKey:[B

    const/4 v8, 0x0

    move-object v9, v0

    iget v9, v9, Lnet/lingala/zip4j/crypto/AESDecrypter;->MAC_LENGTH:I

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    move-object v5, v4

    move-object v6, v0

    iget v6, v6, Lnet/lingala/zip4j/crypto/AESDecrypter;->KEY_LENGTH:I

    move-object v7, v0

    iget v7, v7, Lnet/lingala/zip4j/crypto/AESDecrypter;->MAC_LENGTH:I

    add-int/2addr v6, v7

    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/crypto/AESDecrypter;->derivedPasswordVerifier:[B

    const/4 v8, 0x0

    const/4 v9, 0x2

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/crypto/AESDecrypter;->derivedPasswordVerifier:[B

    if-nez v5, :cond_6

    .line 117
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "invalid derived password verifier for AES"

    invoke-direct {v6, v7}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 120
    :cond_6
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lnet/lingala/zip4j/crypto/AESDecrypter;->derivedPasswordVerifier:[B

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_7

    .line 121
    new-instance v5, Lnet/lingala/zip4j/exception/ZipException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Ljava/lang/StringBuffer;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-string/jumbo v9, "Wrong Password for file: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    iget-object v8, v8, Lnet/lingala/zip4j/crypto/AESDecrypter;->localFileHeader:Lnet/lingala/zip4j/model/LocalFileHeader;

    invoke-virtual {v8}, Lnet/lingala/zip4j/model/LocalFileHeader;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x5

    invoke-direct {v6, v7, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;I)V

    throw v5

    .line 124
    :cond_7
    move-object v5, v0

    new-instance v6, Lnet/lingala/zip4j/crypto/engine/AESEngine;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    iget-object v8, v8, Lnet/lingala/zip4j/crypto/AESDecrypter;->aesKey:[B

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/crypto/engine/AESEngine;-><init>([B)V

    iput-object v6, v5, Lnet/lingala/zip4j/crypto/AESDecrypter;->aesEngine:Lnet/lingala/zip4j/crypto/engine/AESEngine;

    .line 125
    move-object v5, v0

    new-instance v6, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const-string/jumbo v8, "HmacSHA1"

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;-><init>(Ljava/lang/String;)V

    iput-object v6, v5, Lnet/lingala/zip4j/crypto/AESDecrypter;->mac:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    .line 126
    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/crypto/AESDecrypter;->mac:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    move-object v6, v0

    iget-object v6, v6, Lnet/lingala/zip4j/crypto/AESDecrypter;->macKey:[B

    invoke-virtual {v5, v6}, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->init([B)V

    .line 127
    return-void

    .line 78
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
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
    .line 162
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/AESDecrypter;
    move-object v1, p1

    .local v1, "buff":[B
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v1

    array-length v5, v5

    invoke-virtual {v2, v3, v4, v5}, Lnet/lingala/zip4j/crypto/AESDecrypter;->decryptData([BII)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lnet/lingala/zip4j/crypto/AESDecrypter;
    return v0
.end method

.method public decryptData([BII)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/lingala/zip4j/exception/ZipException;
        }
    .end annotation

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/AESDecrypter;
    move-object v1, p1

    .local v1, "buff":[B
    move v2, p2

    .local v2, "start":I
    move v3, p3

    .local v3, "len":I
    move-object v6, v0

    iget-object v6, v6, Lnet/lingala/zip4j/crypto/AESDecrypter;->aesEngine:Lnet/lingala/zip4j/crypto/engine/AESEngine;

    if-nez v6, :cond_0

    .line 132
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string/jumbo v8, "AES not initialized properly"

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 137
    :cond_0
    move v6, v2

    move v4, v6

    .local v4, "j":I
    :goto_0
    move v6, v4

    move v7, v2

    move v8, v3

    add-int/2addr v7, v8

    if-lt v6, v7, :cond_1

    .line 152
    move v6, v3

    move v0, v6

    .end local v0    # "this":Lnet/lingala/zip4j/crypto/AESDecrypter;
    return v0

    .line 138
    .restart local v0    # "this":Lnet/lingala/zip4j/crypto/AESDecrypter;
    :cond_1
    move-object v6, v0

    move v7, v4

    const/16 v8, 0x10

    add-int/lit8 v7, v7, 0x10

    move v8, v2

    move v9, v3

    add-int/2addr v8, v9

    if-gt v7, v8, :cond_2

    .line 139
    const/16 v7, 0x10

    .line 138
    :goto_1
    :try_start_0
    iput v7, v6, Lnet/lingala/zip4j/crypto/AESDecrypter;->loopCount:I

    .line 141
    move-object v6, v0

    iget-object v6, v6, Lnet/lingala/zip4j/crypto/AESDecrypter;->mac:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    move-object v7, v1

    move v8, v4

    move-object v9, v0

    iget v9, v9, Lnet/lingala/zip4j/crypto/AESDecrypter;->loopCount:I

    invoke-virtual {v6, v7, v8, v9}, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->update([BII)V

    .line 142
    move-object v6, v0

    iget-object v6, v6, Lnet/lingala/zip4j/crypto/AESDecrypter;->iv:[B

    move-object v7, v0

    iget v7, v7, Lnet/lingala/zip4j/crypto/AESDecrypter;->nonce:I

    const/16 v8, 0x10

    invoke-static {v6, v7, v8}, Lnet/lingala/zip4j/util/Raw;->prepareBuffAESIVBytes([BII)V

    .line 143
    move-object v6, v0

    iget-object v6, v6, Lnet/lingala/zip4j/crypto/AESDecrypter;->aesEngine:Lnet/lingala/zip4j/crypto/engine/AESEngine;

    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/crypto/AESDecrypter;->iv:[B

    move-object v8, v0

    iget-object v8, v8, Lnet/lingala/zip4j/crypto/AESDecrypter;->counterBlock:[B

    invoke-virtual {v6, v7, v8}, Lnet/lingala/zip4j/crypto/engine/AESEngine;->processBlock([B[B)I

    move-result v6

    .line 145
    const/4 v6, 0x0

    move v5, v6

    .local v5, "k":I
    :goto_2
    move v6, v5

    move-object v7, v0

    iget v7, v7, Lnet/lingala/zip4j/crypto/AESDecrypter;->loopCount:I

    if-lt v6, v7, :cond_3

    .line 149
    move-object v6, v0

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    iget v7, v7, Lnet/lingala/zip4j/crypto/AESDecrypter;->nonce:I

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lnet/lingala/zip4j/crypto/AESDecrypter;->nonce:I

    .line 137
    add-int/lit8 v4, v4, 0x10

    goto :goto_0

    .line 139
    .end local v5    # "k":I
    :cond_2
    move v7, v2

    move v8, v3

    add-int/2addr v7, v8

    move v8, v4

    sub-int/2addr v7, v8

    goto :goto_1

    .line 146
    .restart local v5    # "k":I
    :cond_3
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

    iget-object v9, v9, Lnet/lingala/zip4j/crypto/AESDecrypter;->counterBlock:[B

    move v10, v5

    aget-byte v9, v9, v10

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v6, v7
    :try_end_0
    .catch Lnet/lingala/zip4j/exception/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 145
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 154
    .end local v5    # "k":I
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 155
    .local v4, "e":Lnet/lingala/zip4j/exception/ZipException;
    move-object v6, v4

    throw v6

    .line 156
    .local v4, "j":I
    :catch_1
    move-exception v6

    move-object v4, v6

    .line 157
    .local v4, "e":Ljava/lang/Exception;
    new-instance v6, Lnet/lingala/zip4j/exception/ZipException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v4

    invoke-direct {v7, v8}, Lnet/lingala/zip4j/exception/ZipException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public getCalculatedAuthenticationBytes()[B
    .locals 2

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/AESDecrypter;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/crypto/AESDecrypter;->mac:Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    invoke-virtual {v1}, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->doFinal()[B

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/crypto/AESDecrypter;
    return-object v0
.end method

.method public getPasswordVerifierLength()I
    .locals 2

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/AESDecrypter;
    const/4 v1, 0x2

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/crypto/AESDecrypter;
    return v0
.end method

.method public getSaltLength()I
    .locals 2

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/AESDecrypter;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/crypto/AESDecrypter;->SALT_LENGTH:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/crypto/AESDecrypter;
    return v0
.end method

.method public getStoredMac()[B
    .locals 2

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/AESDecrypter;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/crypto/AESDecrypter;->storedMac:[B

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/crypto/AESDecrypter;
    return-object v0
.end method

.method public setStoredMac([B)V
    .locals 4

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/AESDecrypter;
    move-object v1, p1

    .local v1, "storedMac":[B
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/crypto/AESDecrypter;->storedMac:[B

    .line 191
    return-void
.end method
