.class public Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;
.super Ljava/lang/Object;
.source "PBKDF2Parameters.java"


# instance fields
.field protected derivedKey:[B

.field protected hashAlgorithm:Ljava/lang/String;

.field protected hashCharset:Ljava/lang/String;

.field protected iterationCount:I

.field protected salt:[B


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 36
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->hashAlgorithm:Ljava/lang/String;

    .line 37
    move-object v1, v0

    const-string/jumbo v2, "UTF-8"

    iput-object v2, v1, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->hashCharset:Ljava/lang/String;

    .line 38
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->salt:[B

    .line 39
    move-object v1, v0

    const/16 v2, 0x3e8

    iput v2, v1, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->iterationCount:I

    .line 40
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->derivedKey:[B

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BI)V
    .locals 7

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;
    move-object v1, p1

    .local v1, "hashAlgorithm":Ljava/lang/String;
    move-object v2, p2

    .local v2, "hashCharset":Ljava/lang/String;
    move-object v3, p3

    .local v3, "salt":[B
    move v4, p4

    .local v4, "iterationCount":I
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 46
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->hashAlgorithm:Ljava/lang/String;

    .line 47
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->hashCharset:Ljava/lang/String;

    .line 48
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->salt:[B

    .line 49
    move-object v5, v0

    move v6, v4

    iput v6, v5, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->iterationCount:I

    .line 50
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->derivedKey:[B

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BI[B)V
    .locals 8

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;
    move-object v1, p1

    .local v1, "hashAlgorithm":Ljava/lang/String;
    move-object v2, p2

    .local v2, "hashCharset":Ljava/lang/String;
    move-object v3, p3

    .local v3, "salt":[B
    move v4, p4

    .local v4, "iterationCount":I
    move-object v5, p5

    .local v5, "derivedKey":[B
    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 56
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->hashAlgorithm:Ljava/lang/String;

    .line 57
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->hashCharset:Ljava/lang/String;

    .line 58
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->salt:[B

    .line 59
    move-object v6, v0

    move v7, v4

    iput v7, v6, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->iterationCount:I

    .line 60
    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->derivedKey:[B

    .line 61
    return-void
.end method


# virtual methods
.method public getDerivedKey()[B
    .locals 2

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->derivedKey:[B

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;
    return-object v0
.end method

.method public getHashAlgorithm()Ljava/lang/String;
    .locals 2

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->hashAlgorithm:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;
    return-object v0
.end method

.method public getHashCharset()Ljava/lang/String;
    .locals 2

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->hashCharset:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;
    return-object v0
.end method

.method public getIterationCount()I
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;
    move-object v1, v0

    iget v1, v1, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->iterationCount:I

    move v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;
    return v0
.end method

.method public getSalt()[B
    .locals 2

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->salt:[B

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;
    return-object v0
.end method

.method public setDerivedKey([B)V
    .locals 4

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;
    move-object v1, p1

    .local v1, "derivedKey":[B
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->derivedKey:[B

    .line 91
    return-void
.end method

.method public setHashAlgorithm(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;
    move-object v1, p1

    .local v1, "hashAlgorithm":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->hashAlgorithm:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setHashCharset(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;
    move-object v1, p1

    .local v1, "hashCharset":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->hashCharset:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setIterationCount(I)V
    .locals 4

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;
    move v1, p1

    .local v1, "iterationCount":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->iterationCount:I

    .line 71
    return-void
.end method

.method public setSalt([B)V
    .locals 4

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;
    move-object v1, p1

    .local v1, "salt":[B
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->salt:[B

    .line 81
    return-void
.end method
