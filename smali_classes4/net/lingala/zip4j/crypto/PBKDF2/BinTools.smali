.class Lnet/lingala/zip4j/crypto/PBKDF2/BinTools;
.super Ljava/lang/Object;
.source "BinTools.java"


# static fields
.field public static final hex:Ljava/lang/String; = "0123456789ABCDEF"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/PBKDF2/BinTools;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bin2hex([B)Ljava/lang/String;
    .locals 9

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "b":[B
    move-object v4, v0

    if-nez v4, :cond_0

    .line 32
    const-string/jumbo v4, ""

    move-object v0, v4

    .line 41
    .end local v0    # "b":[B
    .local v1, "sb":Ljava/lang/StringBuffer;
    .local v2, "i":I
    :goto_0
    return-object v0

    .line 34
    .end local v1    # "sb":Ljava/lang/StringBuffer;
    .end local v2    # "i":I
    .restart local v0    # "b":[B
    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x2

    move-object v7, v0

    array-length v7, v7

    mul-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v1, v4

    .line 35
    .restart local v1    # "sb":Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    move v2, v4

    .restart local v2    # "i":I
    :goto_1
    move v4, v2

    move-object v5, v0

    array-length v5, v5

    if-lt v4, v5, :cond_1

    .line 41
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 37
    :cond_1
    const/16 v4, 0x100

    move-object v5, v0

    move v6, v2

    aget-byte v5, v5, v6

    add-int/2addr v4, v5

    const/16 v5, 0x100

    rem-int/lit16 v4, v4, 0x100

    move v3, v4

    .line 38
    .local v3, "v":I
    move-object v4, v1

    const-string/jumbo v5, "0123456789ABCDEF"

    move v6, v3

    const/16 v7, 0x10

    div-int/lit8 v6, v6, 0x10

    const/16 v7, 0xf

    and-int/lit8 v6, v6, 0xf

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 39
    move-object v4, v1

    const-string/jumbo v5, "0123456789ABCDEF"

    move v6, v3

    const/16 v7, 0x10

    rem-int/lit8 v6, v6, 0x10

    const/16 v7, 0xf

    and-int/lit8 v6, v6, 0xf

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    .line 35
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static hex2bin(C)I
    .locals 7

    .prologue
    .line 69
    move v0, p0

    .local v0, "c":C
    move v1, v0

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    move v1, v0

    const/16 v2, 0x39

    if-gt v1, v2, :cond_0

    .line 71
    move v1, v0

    const/16 v2, 0x30

    add-int/lit8 v1, v1, -0x30

    move v0, v1

    .line 79
    .end local v0    # "c":C
    :goto_0
    return v0

    .line 73
    .restart local v0    # "c":C
    :cond_0
    move v1, v0

    const/16 v2, 0x41

    if-lt v1, v2, :cond_1

    move v1, v0

    const/16 v2, 0x46

    if-gt v1, v2, :cond_1

    .line 75
    move v1, v0

    const/16 v2, 0x41

    add-int/lit8 v1, v1, -0x41

    const/16 v2, 0xa

    add-int/lit8 v1, v1, 0xa

    move v0, v1

    goto :goto_0

    .line 77
    :cond_1
    move v1, v0

    const/16 v2, 0x61

    if-lt v1, v2, :cond_2

    move v1, v0

    const/16 v2, 0x66

    if-gt v1, v2, :cond_2

    .line 79
    move v1, v0

    const/16 v2, 0x61

    add-int/lit8 v1, v1, -0x61

    const/16 v2, 0xa

    add-int/lit8 v1, v1, 0xa

    move v0, v1

    goto :goto_0

    .line 81
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    .line 82
    new-instance v3, Ljava/lang/StringBuffer;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "Input string may only contain hex digits, but found \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 83
    const-string/jumbo v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 82
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 81
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static hex2bin(Ljava/lang/String;)[B
    .locals 12

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "s":Ljava/lang/String;
    move-object v7, v0

    move-object v1, v7

    .line 47
    .local v1, "m":Ljava/lang/String;
    move-object v7, v0

    if-nez v7, :cond_1

    .line 50
    const-string/jumbo v7, ""

    move-object v1, v7

    .line 57
    :cond_0
    :goto_0
    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    div-int/lit8 v7, v7, 0x2

    new-array v7, v7, [B

    move-object v2, v7

    .line 58
    .local v2, "r":[B
    const/4 v7, 0x0

    move v3, v7

    .local v3, "i":I
    const/4 v7, 0x0

    move v4, v7

    .local v4, "n":I
    :goto_1
    move v7, v3

    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v7, v8, :cond_2

    .line 64
    move-object v7, v2

    move-object v0, v7

    .end local v0    # "s":Ljava/lang/String;
    return-object v0

    .line 52
    .end local v2    # "r":[B
    .end local v3    # "i":I
    .end local v4    # "n":I
    .restart local v0    # "s":Ljava/lang/String;
    :cond_1
    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    rem-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_0

    .line 55
    new-instance v7, Ljava/lang/StringBuffer;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const-string/jumbo v9, "0"

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    goto :goto_0

    .line 60
    .restart local v2    # "r":[B
    .restart local v3    # "i":I
    .restart local v4    # "n":I
    :cond_2
    move-object v7, v1

    move v8, v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v5, v7

    .line 61
    .local v5, "h":C
    move-object v7, v1

    move v8, v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v6, v7

    .line 62
    .local v6, "l":C
    move-object v7, v2

    move v8, v4

    move v9, v5

    invoke-static {v9}, Lnet/lingala/zip4j/crypto/PBKDF2/BinTools;->hex2bin(C)I

    move-result v9

    const/16 v10, 0x10

    mul-int/lit8 v9, v9, 0x10

    move v10, v6

    invoke-static {v10}, Lnet/lingala/zip4j/crypto/PBKDF2/BinTools;->hex2bin(C)I

    move-result v10

    add-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 58
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method
