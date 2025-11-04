.class public Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;
.super Ljava/lang/Object;
.source "MacBasedPRF.java"

# interfaces
.implements Lnet/lingala/zip4j/crypto/PBKDF2/PRF;


# instance fields
.field protected hLen:I

.field protected mac:Ljavax/crypto/Mac;

.field protected macAlgorithm:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;
    move-object v1, p1

    .local v1, "macAlgorithm":Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 41
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->macAlgorithm:Ljava/lang/String;

    .line 44
    move-object v3, v0

    move-object v4, v1

    :try_start_0
    invoke-static {v4}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v4

    iput-object v4, v3, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->mac:Ljavax/crypto/Mac;

    .line 45
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v4}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v4

    iput v4, v3, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->hLen:I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    return-void

    .line 47
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 49
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;
    move-object v1, p1

    .local v1, "macAlgorithm":Ljava/lang/String;
    move-object v2, p2

    .local v2, "provider":Ljava/lang/String;
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 55
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->macAlgorithm:Ljava/lang/String;

    .line 58
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    :try_start_0
    invoke-static {v5, v6}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v5

    iput-object v5, v4, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->mac:Ljavax/crypto/Mac;

    .line 59
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v5}, Ljavax/crypto/Mac;->getMacLength()I

    move-result v5

    iput v5, v4, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->hLen:I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_1

    .line 69
    return-void

    .line 61
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 63
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/lang/RuntimeException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v3

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 65
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 67
    .local v3, "e":Ljava/security/NoSuchProviderException;
    new-instance v4, Ljava/lang/RuntimeException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v3

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method


# virtual methods
.method public doFinal()[B
    .locals 3

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;
    move-object v2, v0

    iget-object v2, v2, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v2}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v2

    move-object v1, v2

    .line 79
    .local v1, "r":[B
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;
    return-object v0
.end method

.method public doFinal([B)[B
    .locals 5

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;
    move-object v1, p1

    .local v1, "M":[B
    move-object v3, v0

    iget-object v3, v3, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->mac:Ljavax/crypto/Mac;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v3

    move-object v2, v3

    .line 74
    .local v2, "r":[B
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;
    return-object v0
.end method

.method public getHLen()I
    .locals 2

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->hLen:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;
    return v0
.end method

.method public init([B)V
    .locals 9

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;
    move-object v1, p1

    .local v1, "P":[B
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->mac:Ljavax/crypto/Mac;

    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->macAlgorithm:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {v3, v4}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    return-void

    .line 93
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 95
    .local v2, "e":Ljava/security/InvalidKeyException;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public update([B)V
    .locals 7

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;
    move-object v1, p1

    .local v1, "U":[B
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->mac:Ljavax/crypto/Mac;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavax/crypto/Mac;->update([B)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    return-void

    .line 103
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 104
    .local v2, "e":Ljava/lang/IllegalStateException;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public update([BII)V
    .locals 10

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;
    move-object v1, p1

    .local v1, "U":[B
    move v2, p2

    .local v2, "start":I
    move v3, p3

    .local v3, "len":I
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;->mac:Ljavax/crypto/Mac;

    move-object v6, v1

    move v7, v2

    move v8, v3

    invoke-virtual {v5, v6, v7, v8}, Ljavax/crypto/Mac;->update([BII)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    return-void

    .line 112
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 113
    .local v4, "e":Ljava/lang/IllegalStateException;
    new-instance v5, Ljava/lang/RuntimeException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v4

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method
