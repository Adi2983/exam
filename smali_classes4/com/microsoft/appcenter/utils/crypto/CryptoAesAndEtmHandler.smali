.class public Lcom/microsoft/appcenter/utils/crypto/CryptoAesAndEtmHandler;
.super Ljava/lang/Object;
.source "CryptoAesAndEtmHandler.java"

# interfaces
.implements Lcom/microsoft/appcenter/utils/crypto/CryptoHandler;


# static fields
.field private static final AUTHENTICATION_KEY_LENGTH:I = 0x10

.field private static final ENCRYPTION_KEY_LENGTH:I = 0x20


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/crypto/CryptoAesAndEtmHandler;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getMacBytes([B[B[B)[B
    .locals 11
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/crypto/CryptoAesAndEtmHandler;
    move-object v1, p1

    .local v1, "authKey":[B
    move-object v2, p2

    .local v2, "iv":[B
    move-object v3, p3

    .local v3, "cipherText":[B
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v1

    const-string/jumbo v9, "HmacSHA256"

    invoke-direct {v7, v8, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object v4, v6

    .line 128
    .local v4, "macSecureKey":Ljavax/crypto/SecretKey;
    const-string/jumbo v6, "HmacSHA256"

    invoke-static {v6}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v6

    move-object v5, v6

    .line 129
    .local v5, "hMac":Ljavax/crypto/Mac;
    move-object v6, v5

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 130
    move-object v6, v5

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljavax/crypto/Mac;->update([B)V

    .line 131
    move-object v6, v5

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljavax/crypto/Mac;->update([B)V

    .line 132
    move-object v6, v5

    invoke-virtual {v6}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lcom/microsoft/appcenter/utils/crypto/CryptoAesAndEtmHandler;
    return-object v0
.end method


# virtual methods
.method public decrypt(Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;ILjava/security/KeyStore$Entry;[B)[B
    .locals 25
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 84
    move-object/from16 v2, p0

    .local v2, "this":Lcom/microsoft/appcenter/utils/crypto/CryptoAesAndEtmHandler;
    move-object/from16 v3, p1

    .local v3, "cryptoFactory":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;
    move/from16 v4, p2

    .local v4, "apiLevel":I
    move-object/from16 v5, p3

    .local v5, "keyStoreEntry":Ljava/security/KeyStore$Entry;
    move-object/from16 v6, p4

    .local v6, "data":[B
    move-object/from16 v18, v6

    invoke-static/range {v18 .. v18}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v18

    move-object/from16 v7, v18

    .line 87
    .local v7, "byteBuffer":Ljava/nio/ByteBuffer;
    move-object/from16 v18, v7

    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->get()B

    move-result v18

    move/from16 v8, v18

    .line 88
    .local v8, "ivLength":I
    move/from16 v18, v8

    const/16 v19, 0x10

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_0

    .line 89
    new-instance v18, Ljava/lang/IllegalArgumentException;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    const-string/jumbo v20, "Invalid IV length."

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 91
    :cond_0
    move/from16 v18, v8

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    move-object/from16 v9, v18

    .line 92
    .local v9, "iv":[B
    move-object/from16 v18, v7

    move-object/from16 v19, v9

    invoke-virtual/range {v18 .. v19}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-result-object v18

    .line 95
    move-object/from16 v18, v7

    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->get()B

    move-result v18

    move/from16 v10, v18

    .line 96
    .local v10, "macLength":I
    move/from16 v18, v10

    const/16 v19, 0x20

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    .line 97
    new-instance v18, Ljava/lang/IllegalArgumentException;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    const-string/jumbo v20, "Invalid MAC length."

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 99
    :cond_1
    move/from16 v18, v10

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    move-object/from16 v11, v18

    .line 100
    .local v11, "actualHMac":[B
    move-object/from16 v18, v7

    move-object/from16 v19, v11

    invoke-virtual/range {v18 .. v19}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-result-object v18

    .line 103
    move-object/from16 v18, v7

    invoke-virtual/range {v18 .. v18}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    move-object/from16 v12, v18

    .line 104
    .local v12, "cipherText":[B
    move-object/from16 v18, v7

    move-object/from16 v19, v12

    invoke-virtual/range {v18 .. v19}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    move-result-object v18

    .line 107
    move-object/from16 v18, v5

    check-cast v18, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-virtual/range {v18 .. v18}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v18

    move-object/from16 v13, v18

    .line 108
    .local v13, "key":Ljavax/crypto/SecretKey;
    move-object/from16 v18, v2

    move-object/from16 v19, v13

    const/16 v20, 0x20

    invoke-virtual/range {v18 .. v20}, Lcom/microsoft/appcenter/utils/crypto/CryptoAesAndEtmHandler;->getSubkey(Ljavax/crypto/SecretKey;I)[B

    move-result-object v18

    move-object/from16 v14, v18

    .line 109
    .local v14, "encryptionSubkey":[B
    move-object/from16 v18, v2

    move-object/from16 v19, v13

    const/16 v20, 0x10

    invoke-virtual/range {v18 .. v20}, Lcom/microsoft/appcenter/utils/crypto/CryptoAesAndEtmHandler;->getSubkey(Ljavax/crypto/SecretKey;I)[B

    move-result-object v18

    move-object/from16 v15, v18

    .line 112
    .local v15, "authenticationSubkey":[B
    move-object/from16 v18, v2

    move-object/from16 v19, v15

    move-object/from16 v20, v9

    move-object/from16 v21, v12

    invoke-direct/range {v18 .. v21}, Lcom/microsoft/appcenter/utils/crypto/CryptoAesAndEtmHandler;->getMacBytes([B[B[B)[B

    move-result-object v18

    move-object/from16 v16, v18

    .line 115
    .local v16, "expectedHMac":[B
    move-object/from16 v18, v16

    move-object/from16 v19, v11

    invoke-static/range {v18 .. v19}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v18

    if-nez v18, :cond_2

    .line 116
    new-instance v18, Ljava/lang/SecurityException;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    const-string/jumbo v20, "Could not authenticate MAC value."

    invoke-direct/range {v19 .. v20}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 120
    :cond_2
    move-object/from16 v18, v3

    const-string/jumbo v19, "AES/CBC/PKCS7Padding"

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;->getCipher(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICipher;

    move-result-object v18

    move-object/from16 v17, v18

    .line 121
    .local v17, "cipher":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICipher;
    move-object/from16 v18, v17

    const/16 v19, 0x2

    new-instance v20, Ljavax/crypto/spec/SecretKeySpec;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    move-object/from16 v22, v14

    const-string/jumbo v23, "AES"

    invoke-direct/range {v21 .. v23}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v21, Ljavax/crypto/spec/IvParameterSpec;

    move-object/from16 v24, v21

    move-object/from16 v21, v24

    move-object/from16 v22, v24

    move-object/from16 v23, v9

    invoke-direct/range {v22 .. v23}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-interface/range {v18 .. v21}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 122
    move-object/from16 v18, v17

    move-object/from16 v19, v12

    invoke-interface/range {v18 .. v19}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICipher;->doFinal([B)[B

    move-result-object v18

    move-object/from16 v2, v18

    .end local v2    # "this":Lcom/microsoft/appcenter/utils/crypto/CryptoAesAndEtmHandler;
    return-object v2
.end method

.method public encrypt(Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;ILjava/security/KeyStore$Entry;[B)[B
    .locals 20
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 58
    move-object/from16 v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/crypto/CryptoAesAndEtmHandler;
    move-object/from16 v1, p1

    .local v1, "cryptoFactory":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;
    move/from16 v2, p2

    .local v2, "apiLevel":I
    move-object/from16 v3, p3

    .local v3, "keyStoreEntry":Ljava/security/KeyStore$Entry;
    move-object/from16 v4, p4

    .local v4, "input":[B
    move-object v13, v3

    check-cast v13, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-virtual {v13}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v13

    move-object v5, v13

    .line 59
    .local v5, "key":Ljavax/crypto/SecretKey;
    move-object v13, v0

    move-object v14, v5

    const/16 v15, 0x20

    invoke-virtual {v13, v14, v15}, Lcom/microsoft/appcenter/utils/crypto/CryptoAesAndEtmHandler;->getSubkey(Ljavax/crypto/SecretKey;I)[B

    move-result-object v13

    move-object v6, v13

    .line 60
    .local v6, "encryptionSubkey":[B
    move-object v13, v0

    move-object v14, v5

    const/16 v15, 0x10

    invoke-virtual {v13, v14, v15}, Lcom/microsoft/appcenter/utils/crypto/CryptoAesAndEtmHandler;->getSubkey(Ljavax/crypto/SecretKey;I)[B

    move-result-object v13

    move-object v7, v13

    .line 63
    .local v7, "authenticationSubkey":[B
    move-object v13, v1

    const-string/jumbo v14, "AES/CBC/PKCS7Padding"

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;->getCipher(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICipher;

    move-result-object v13

    move-object v8, v13

    .line 64
    .local v8, "cipher":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICipher;
    move-object v13, v8

    const/4 v14, 0x1

    new-instance v15, Ljavax/crypto/spec/SecretKeySpec;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    move-object/from16 v17, v6

    const-string/jumbo v18, "AES"

    invoke-direct/range {v16 .. v18}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-interface {v13, v14, v15}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICipher;->init(ILjava/security/Key;)V

    .line 65
    move-object v13, v8

    invoke-interface {v13}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICipher;->getIV()[B

    move-result-object v13

    move-object v9, v13

    .line 66
    .local v9, "cipherIv":[B
    move-object v13, v8

    move-object v14, v4

    invoke-interface {v13, v14}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICipher;->doFinal([B)[B

    move-result-object v13

    move-object v10, v13

    .line 69
    .local v10, "cipherOutput":[B
    move-object v13, v0

    move-object v14, v7

    move-object v15, v9

    move-object/from16 v16, v10

    invoke-direct/range {v13 .. v16}, Lcom/microsoft/appcenter/utils/crypto/CryptoAesAndEtmHandler;->getMacBytes([B[B[B)[B

    move-result-object v13

    move-object v11, v13

    .line 72
    .local v11, "hMac":[B
    const/4 v13, 0x1

    move-object v14, v9

    array-length v14, v14

    add-int/2addr v13, v14

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    move-object v14, v11

    array-length v14, v14

    add-int/2addr v13, v14

    move-object v14, v10

    array-length v14, v14

    add-int/2addr v13, v14

    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    move-object v12, v13

    .line 73
    .local v12, "byteBuffer":Ljava/nio/ByteBuffer;
    move-object v13, v12

    move-object v14, v9

    array-length v14, v14

    int-to-byte v14, v14

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 74
    move-object v13, v12

    move-object v14, v9

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 75
    move-object v13, v12

    move-object v14, v11

    array-length v14, v14

    int-to-byte v14, v14

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 76
    move-object v13, v12

    move-object v14, v11

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 77
    move-object v13, v12

    move-object v14, v10

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 78
    move-object v13, v12

    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v13

    move-object v0, v13

    .end local v0    # "this":Lcom/microsoft/appcenter/utils/crypto/CryptoAesAndEtmHandler;
    return-object v0
.end method

.method public generateKey(Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;Ljava/lang/String;Landroid/content/Context;)V
    .locals 12
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/crypto/CryptoAesAndEtmHandler;
    move-object v1, p1

    .local v1, "cryptoFactory":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;
    move-object v2, p2

    .local v2, "alias":Ljava/lang/String;
    move-object v3, p3

    .local v3, "context":Landroid/content/Context;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    move-object v4, v6

    .line 45
    .local v4, "writeExpiry":Ljava/util/Calendar;
    move-object v6, v4

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->add(II)V

    .line 46
    move-object v6, v1

    const-string/jumbo v7, "HmacSHA256"

    const-string/jumbo v8, "AndroidKeyStore"

    invoke-interface {v6, v7, v8}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$ICryptoFactory;->getKeyGenerator(Ljava/lang/String;Ljava/lang/String;)Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$IKeyGenerator;

    move-result-object v6

    move-object v5, v6

    .line 47
    .local v5, "keyGenerator":Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$IKeyGenerator;
    move-object v6, v5

    new-instance v7, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v2

    const/4 v10, 0x4

    invoke-direct {v8, v9, v10}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    move-object v8, v4

    .line 48
    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeyValidityForOriginationEnd(Ljava/util/Date;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v7

    .line 49
    invoke-virtual {v7}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v7

    .line 47
    invoke-interface {v6, v7}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$IKeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 50
    move-object v6, v5

    invoke-interface {v6}, Lcom/microsoft/appcenter/utils/crypto/CryptoUtils$IKeyGenerator;->generateKey()V

    .line 51
    return-void
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/crypto/CryptoAesAndEtmHandler;
    const-string/jumbo v1, "AES/CBC/PKCS7Padding/256/HmacSHA256"

    move-object v0, v1

    .end local v0    # "this":Lcom/microsoft/appcenter/utils/crypto/CryptoAesAndEtmHandler;
    return-object v0
.end method

.method getSubkey(Ljavax/crypto/SecretKey;I)[B
    .locals 15
    .param p1    # Ljavax/crypto/SecretKey;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/crypto/CryptoAesAndEtmHandler;
    move-object/from16 v1, p1

    .local v1, "secretKey":Ljavax/crypto/SecretKey;
    move/from16 v2, p2

    .local v2, "outputDataLength":I
    move v10, v2

    const/4 v11, 0x1

    if-ge v10, v11, :cond_0

    .line 150
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const-string/jumbo v12, "Output data length must be greater than zero."

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 154
    :cond_0
    const-string/jumbo v10, "HmacSHA256"

    invoke-static {v10}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v10

    move-object v3, v10

    .line 155
    .local v3, "hMac":Ljavax/crypto/Mac;
    move-object v10, v3

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 158
    move v10, v2

    int-to-double v10, v10

    move-object v12, v3

    invoke-virtual {v12}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v12

    int-to-double v12, v12

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    move v4, v10

    .line 159
    .local v4, "iterations":I
    move v10, v4

    const/16 v11, 0xff

    if-le v10, v11, :cond_1

    .line 160
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const-string/jumbo v12, "Output data length must be maximum of 255 * hash-length."

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 164
    :cond_1
    const/4 v10, 0x0

    new-array v10, v10, [B

    move-object v5, v10

    .line 165
    .local v5, "tempBlock":[B
    move v10, v2

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    move-object v6, v10

    .line 166
    .local v6, "buffer":Ljava/nio/ByteBuffer;
    move v10, v2

    move v7, v10

    .line 168
    .local v7, "restBytes":I
    const/4 v10, 0x0

    move v9, v10

    .local v9, "i":I
    :goto_0
    move v10, v9

    move v11, v4

    if-ge v10, v11, :cond_2

    .line 169
    move-object v10, v3

    move-object v11, v5

    invoke-virtual {v10, v11}, Ljavax/crypto/Mac;->update([B)V

    .line 170
    move-object v10, v3

    move v11, v9

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    int-to-byte v11, v11

    invoke-virtual {v10, v11}, Ljavax/crypto/Mac;->update(B)V

    .line 171
    move-object v10, v3

    invoke-virtual {v10}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v10

    move-object v5, v10

    .line 172
    move v10, v7

    move-object v11, v5

    array-length v11, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    move v8, v10

    .line 173
    .local v8, "stepSize":I
    move-object v10, v6

    move-object v11, v5

    const/4 v12, 0x0

    move v13, v8

    invoke-virtual {v10, v11, v12, v13}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 174
    move v10, v7

    move v11, v8

    sub-int/2addr v10, v11

    move v7, v10

    .line 168
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 176
    .end local v8    # "stepSize":I
    :cond_2
    move-object v10, v6

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    move-object v0, v10

    .end local v0    # "this":Lcom/microsoft/appcenter/utils/crypto/CryptoAesAndEtmHandler;
    return-object v0
.end method
