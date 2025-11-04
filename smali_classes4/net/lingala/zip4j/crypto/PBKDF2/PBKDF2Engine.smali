.class public Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;
.super Ljava/lang/Object;
.source "PBKDF2Engine.java"


# instance fields
.field protected parameters:Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;

.field protected prf:Lnet/lingala/zip4j/crypto/PBKDF2/PRF;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 34
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->parameters:Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;

    .line 35
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->prf:Lnet/lingala/zip4j/crypto/PBKDF2/PRF;

    .line 36
    return-void
.end method

.method public constructor <init>(Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;)V
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;
    move-object v1, p1

    .local v1, "parameters":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 40
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->parameters:Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;

    .line 41
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->prf:Lnet/lingala/zip4j/crypto/PBKDF2/PRF;

    .line 42
    return-void
.end method

.method public constructor <init>(Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;Lnet/lingala/zip4j/crypto/PBKDF2/PRF;)V
    .locals 5

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;
    move-object v1, p1

    .local v1, "parameters":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;
    move-object v2, p2

    .local v2, "prf":Lnet/lingala/zip4j/crypto/PBKDF2/PRF;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 46
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->parameters:Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;

    .line 47
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->prf:Lnet/lingala/zip4j/crypto/PBKDF2/PRF;

    .line 48
    return-void
.end method


# virtual methods
.method protected INT([BII)V
    .locals 8

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;
    move-object v1, p1

    .local v1, "dest":[B
    move v2, p2

    .local v2, "offset":I
    move v3, p3

    .local v3, "i":I
    move-object v4, v1

    move v5, v2

    const/4 v6, 0x0

    add-int/lit8 v5, v5, 0x0

    move v6, v3

    const/high16 v7, 0x1000000

    div-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 179
    move-object v4, v1

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    move v6, v3

    const/high16 v7, 0x10000

    div-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 180
    move-object v4, v1

    move v5, v2

    const/4 v6, 0x2

    add-int/lit8 v5, v5, 0x2

    move v6, v3

    const/16 v7, 0x100

    div-int/lit16 v6, v6, 0x100

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 181
    move-object v4, v1

    move v5, v2

    const/4 v6, 0x3

    add-int/lit8 v5, v5, 0x3

    move v6, v3

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 182
    return-void
.end method

.method protected PBKDF2(Lnet/lingala/zip4j/crypto/PBKDF2/PRF;[BII)[B
    .locals 18

    .prologue
    .line 115
    move-object/from16 v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;
    move-object/from16 v1, p1

    .local v1, "prf":Lnet/lingala/zip4j/crypto/PBKDF2/PRF;
    move-object/from16 v2, p2

    .local v2, "S":[B
    move/from16 v3, p3

    .local v3, "c":I
    move/from16 v4, p4

    .local v4, "dkLen":I
    move-object v11, v2

    if-nez v11, :cond_0

    .line 117
    const/4 v11, 0x0

    new-array v11, v11, [B

    move-object v2, v11

    .line 119
    :cond_0
    move-object v11, v1

    invoke-interface {v11}, Lnet/lingala/zip4j/crypto/PBKDF2/PRF;->getHLen()I

    move-result v11

    move v5, v11

    .line 120
    .local v5, "hLen":I
    move-object v11, v0

    move v12, v4

    move v13, v5

    invoke-virtual {v11, v12, v13}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->ceil(II)I

    move-result v11

    move v6, v11

    .line 121
    .local v6, "l":I
    move v11, v4

    move v12, v6

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v13, v5

    mul-int/2addr v12, v13

    sub-int/2addr v11, v12

    move v7, v11

    .line 122
    .local v7, "r":I
    move v11, v6

    move v12, v5

    mul-int/2addr v11, v12

    new-array v11, v11, [B

    move-object v8, v11

    .line 123
    .local v8, "T":[B
    const/4 v11, 0x0

    move v9, v11

    .line 124
    .local v9, "ti_offset":I
    const/4 v11, 0x1

    move v10, v11

    .local v10, "i":I
    :goto_0
    move v11, v10

    move v12, v6

    if-le v11, v12, :cond_1

    .line 129
    move v11, v7

    move v12, v5

    if-ge v11, v12, :cond_2

    .line 132
    move v11, v4

    new-array v11, v11, [B

    move-object v10, v11

    .line 133
    .local v10, "DK":[B
    move-object v11, v8

    const/4 v12, 0x0

    move-object v13, v10

    const/4 v14, 0x0

    move v15, v4

    invoke-static {v11, v12, v13, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    move-object v11, v10

    move-object v0, v11

    .line 136
    .end local v0    # "this":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;
    .end local v10    # "DK":[B
    :goto_1
    return-object v0

    .line 126
    .restart local v0    # "this":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;
    .local v10, "i":I
    :cond_1
    move-object v11, v0

    move-object v12, v8

    move v13, v9

    move-object v14, v1

    move-object v15, v2

    move/from16 v16, v3

    move/from16 v17, v10

    invoke-virtual/range {v11 .. v17}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->_F([BILnet/lingala/zip4j/crypto/PBKDF2/PRF;[BII)V

    .line 127
    move v11, v9

    move v12, v5

    add-int/2addr v11, v12

    move v9, v11

    .line 124
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 136
    :cond_2
    move-object v11, v8

    move-object v0, v11

    goto :goto_1
.end method

.method protected _F([BILnet/lingala/zip4j/crypto/PBKDF2/PRF;[BII)V
    .locals 16

    .prologue
    .line 152
    move-object/from16 v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;
    move-object/from16 v1, p1

    .local v1, "dest":[B
    move/from16 v2, p2

    .local v2, "offset":I
    move-object/from16 v3, p3

    .local v3, "prf":Lnet/lingala/zip4j/crypto/PBKDF2/PRF;
    move-object/from16 v4, p4

    .local v4, "S":[B
    move/from16 v5, p5

    .local v5, "c":I
    move/from16 v6, p6

    .local v6, "blockIndex":I
    move-object v11, v3

    invoke-interface {v11}, Lnet/lingala/zip4j/crypto/PBKDF2/PRF;->getHLen()I

    move-result v11

    move v7, v11

    .line 153
    .local v7, "hLen":I
    move v11, v7

    new-array v11, v11, [B

    move-object v8, v11

    .line 156
    .local v8, "U_r":[B
    move-object v11, v4

    array-length v11, v11

    const/4 v12, 0x4

    add-int/lit8 v11, v11, 0x4

    new-array v11, v11, [B

    move-object v9, v11

    .line 157
    .local v9, "U_i":[B
    move-object v11, v4

    const/4 v12, 0x0

    move-object v13, v9

    const/4 v14, 0x0

    move-object v15, v4

    array-length v15, v15

    invoke-static {v11, v12, v13, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    move-object v11, v0

    move-object v12, v9

    move-object v13, v4

    array-length v13, v13

    move v14, v6

    invoke-virtual {v11, v12, v13, v14}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->INT([BII)V

    .line 160
    const/4 v11, 0x0

    move v10, v11

    .local v10, "i":I
    :goto_0
    move v11, v10

    move v12, v5

    if-lt v11, v12, :cond_0

    .line 165
    move-object v11, v8

    const/4 v12, 0x0

    move-object v13, v1

    move v14, v2

    move v15, v7

    invoke-static {v11, v12, v13, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    return-void

    .line 162
    :cond_0
    move-object v11, v3

    move-object v12, v9

    invoke-interface {v11, v12}, Lnet/lingala/zip4j/crypto/PBKDF2/PRF;->doFinal([B)[B

    move-result-object v11

    move-object v9, v11

    .line 163
    move-object v11, v0

    move-object v12, v8

    move-object v13, v9

    invoke-virtual {v11, v12, v13}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->xor([B[B)V

    .line 160
    add-int/lit8 v10, v10, 0x1

    goto :goto_0
.end method

.method protected assertPRF([B)V
    .locals 7

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;
    move-object v1, p1

    .local v1, "P":[B
    move-object v2, v0

    iget-object v2, v2, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->prf:Lnet/lingala/zip4j/crypto/PBKDF2/PRF;

    if-nez v2, :cond_0

    .line 103
    move-object v2, v0

    new-instance v3, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->parameters:Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;

    invoke-virtual {v5}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->getHashAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lnet/lingala/zip4j/crypto/PBKDF2/MacBasedPRF;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->prf:Lnet/lingala/zip4j/crypto/PBKDF2/PRF;

    .line 105
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->prf:Lnet/lingala/zip4j/crypto/PBKDF2/PRF;

    move-object v3, v1

    invoke-interface {v2, v3}, Lnet/lingala/zip4j/crypto/PBKDF2/PRF;->init([B)V

    .line 106
    return-void
.end method

.method protected ceil(II)I
    .locals 6

    .prologue
    .line 141
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;
    move v1, p1

    .local v1, "a":I
    move v2, p2

    .local v2, "b":I
    const/4 v4, 0x0

    move v3, v4

    .line 142
    .local v3, "m":I
    move v4, v1

    move v5, v2

    rem-int/2addr v4, v5

    if-lez v4, :cond_0

    .line 144
    const/4 v4, 0x1

    move v3, v4

    .line 146
    :cond_0
    move v4, v1

    move v5, v2

    div-int/2addr v4, v5

    move v5, v3

    add-int/2addr v4, v5

    move v0, v4

    .end local v0    # "this":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;
    return v0
.end method

.method public deriveKey([C)[B
    .locals 5

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;
    move-object v1, p1

    .local v1, "inputPassword":[C
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->deriveKey([CI)[B

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;
    return-object v0
.end method

.method public deriveKey([CI)[B
    .locals 11

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;
    move-object v1, p1

    .local v1, "inputPassword":[C
    move v2, p2

    .local v2, "dkLen":I
    const/4 v5, 0x0

    check-cast v5, [B

    move-object v3, v5

    .line 58
    .local v3, "r":[B
    const/4 v5, 0x0

    check-cast v5, [B

    move-object v4, v5

    .line 59
    .local v4, "P":[B
    move-object v5, v1

    if-nez v5, :cond_0

    .line 61
    new-instance v5, Ljava/lang/NullPointerException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 64
    :cond_0
    move-object v5, v1

    invoke-static {v5}, Lnet/lingala/zip4j/util/Raw;->convertCharArrayToByteArray([C)[B

    move-result-object v5

    move-object v4, v5

    .line 66
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->assertPRF([B)V

    .line 67
    move v5, v2

    if-nez v5, :cond_1

    .line 69
    move-object v5, v0

    iget-object v5, v5, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->prf:Lnet/lingala/zip4j/crypto/PBKDF2/PRF;

    invoke-interface {v5}, Lnet/lingala/zip4j/crypto/PBKDF2/PRF;->getHLen()I

    move-result v5

    move v2, v5

    .line 71
    :cond_1
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->prf:Lnet/lingala/zip4j/crypto/PBKDF2/PRF;

    move-object v7, v0

    iget-object v7, v7, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->parameters:Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;

    invoke-virtual {v7}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->getSalt()[B

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->parameters:Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;

    invoke-virtual {v8}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->getIterationCount()I

    move-result v8

    .line 72
    move v9, v2

    .line 71
    invoke-virtual {v5, v6, v7, v8, v9}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->PBKDF2(Lnet/lingala/zip4j/crypto/PBKDF2/PRF;[BII)[B

    move-result-object v5

    move-object v3, v5

    .line 73
    move-object v5, v3

    move-object v0, v5

    .end local v0    # "this":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;
    return-object v0
.end method

.method public getParameters()Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;
    .locals 2

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->parameters:Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;
    return-object v0
.end method

.method public getPseudoRandomFunction()Lnet/lingala/zip4j/crypto/PBKDF2/PRF;
    .locals 2

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;
    move-object v1, v0

    iget-object v1, v1, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->prf:Lnet/lingala/zip4j/crypto/PBKDF2/PRF;

    move-object v0, v1

    .end local v0    # "this":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;
    return-object v0
.end method

.method public setParameters(Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;)V
    .locals 4

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;
    move-object v1, p1

    .local v1, "parameters":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->parameters:Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;

    .line 192
    return-void
.end method

.method public setPseudoRandomFunction(Lnet/lingala/zip4j/crypto/PBKDF2/PRF;)V
    .locals 4

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;
    move-object v1, p1

    .local v1, "prf":Lnet/lingala/zip4j/crypto/PBKDF2/PRF;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->prf:Lnet/lingala/zip4j/crypto/PBKDF2/PRF;

    .line 197
    return-void
.end method

.method public verifyKey([C)Z
    .locals 8

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;
    move-object v1, p1

    .local v1, "inputPassword":[C
    move-object v5, v0

    invoke-virtual {v5}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->getParameters()Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;

    move-result-object v5

    invoke-virtual {v5}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Parameters;->getDerivedKey()[B

    move-result-object v5

    move-object v2, v5

    .line 79
    .local v2, "referenceKey":[B
    move-object v5, v2

    if-eqz v5, :cond_0

    move-object v5, v2

    array-length v5, v5

    if-nez v5, :cond_1

    .line 81
    :cond_0
    const/4 v5, 0x0

    move v0, v5

    .line 96
    .end local v0    # "this":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;
    :goto_0
    return v0

    .line 83
    .restart local v0    # "this":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;
    :cond_1
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    array-length v7, v7

    invoke-virtual {v5, v6, v7}, Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;->deriveKey([CI)[B

    move-result-object v5

    move-object v3, v5

    .line 85
    .local v3, "inputKey":[B
    move-object v5, v3

    if-eqz v5, :cond_2

    move-object v5, v3

    array-length v5, v5

    move-object v6, v2

    array-length v6, v6

    if-eq v5, v6, :cond_3

    .line 87
    :cond_2
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 89
    :cond_3
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_1
    move v5, v4

    move-object v6, v3

    array-length v6, v6

    if-lt v5, v6, :cond_4

    .line 96
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 91
    :cond_4
    move-object v5, v3

    move v6, v4

    aget-byte v5, v5, v6

    move-object v6, v2

    move v7, v4

    aget-byte v6, v6, v7

    if-eq v5, v6, :cond_5

    .line 93
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 89
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method protected xor([B[B)V
    .locals 11

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Lnet/lingala/zip4j/crypto/PBKDF2/PBKDF2Engine;
    move-object v1, p1

    .local v1, "dest":[B
    move-object v2, p2

    .local v2, "src":[B
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v1

    array-length v5, v5

    if-lt v4, v5, :cond_0

    .line 174
    return-void

    .line 172
    :cond_0
    move-object v4, v1

    move v5, v3

    move-object v9, v4

    move v10, v5

    move-object v4, v9

    move v5, v10

    move-object v6, v9

    move v7, v10

    aget-byte v6, v6, v7

    move-object v7, v2

    move v8, v3

    aget-byte v7, v7, v8

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 170
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
