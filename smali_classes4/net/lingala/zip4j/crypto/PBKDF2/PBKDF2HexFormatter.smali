.class Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2HexFormatter;
.super Ljava/lang/Object;
.source "PBKDF2HexFormatter.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2HexFormatter;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromString(Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;Ljava/lang/String;)Z
    .locals 9

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2HexFormatter;
    move-object v1, p1

    .local v1, "p":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;
    move-object v2, p2

    .local v2, "s":Ljava/lang/String;
    move-object v7, v1

    if-eqz v7, :cond_0

    move-object v7, v2

    if-nez v7, :cond_1

    .line 30
    :cond_0
    const/4 v7, 0x1

    move v0, v7

    .line 46
    .end local v0    # "this":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2HexFormatter;
    :goto_0
    return v0

    .line 33
    .restart local v0    # "this":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2HexFormatter;
    :cond_1
    move-object v7, v2

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 34
    .local v3, "p123":[Ljava/lang/String;
    move-object v7, v3

    if-eqz v7, :cond_2

    move-object v7, v3

    array-length v7, v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_3

    .line 36
    :cond_2
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    .line 39
    :cond_3
    move-object v7, v3

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-static {v7}, Lnet/lingala/zip4j/crypto/PBKDF2/BinTools;->hex2bin(Ljava/lang/String;)[B

    move-result-object v7

    move-object v4, v7

    .line 40
    .local v4, "salt":[B
    move-object v7, v3

    const/4 v8, 0x1

    aget-object v7, v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v5, v7

    .line 41
    .local v5, "iterationCount":I
    move-object v7, v3

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-static {v7}, Lnet/lingala/zip4j/crypto/PBKDF2/BinTools;->hex2bin(Ljava/lang/String;)[B

    move-result-object v7

    move-object v6, v7

    .line 43
    .local v6, "bDK":[B
    move-object v7, v1

    move-object v8, v4

    invoke-virtual {v7, v8}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->setSalt([B)V

    .line 44
    move-object v7, v1

    move v8, v5

    invoke-virtual {v7, v8}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->setIterationCount(I)V

    .line 45
    move-object v7, v1

    move-object v8, v6

    invoke-virtual {v7, v8}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->setDerivedKey([B)V

    .line 46
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0
.end method

.method public toString(Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2HexFormatter;
    move-object v1, p1

    .local v1, "p":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;
    new-instance v3, Ljava/lang/StringBuffer;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-virtual {v5}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->getSalt()[B

    move-result-object v5

    invoke-static {v5}, Lnet/lingala/zip4j/crypto/PBKDF2/BinTools;->bin2hex([B)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 52
    move-object v4, v1

    invoke-virtual {v4}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->getIterationCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 53
    move-object v4, v1

    invoke-virtual {v4}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->getDerivedKey()[B

    move-result-object v4

    invoke-static {v4}, Lnet/lingala/zip4j/crypto/PBKDF2/BinTools;->bin2hex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 51
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 54
    .local v2, "s":Ljava/lang/String;
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2HexFormatter;
    return-object v0
.end method
