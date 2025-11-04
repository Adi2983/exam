.class final Lcom/google/zxing/qrcode/decoder/BitMatrixParser;
.super Ljava/lang/Object;
.source "BitMatrixParser.java"


# instance fields
.field private final bitMatrix:Lcom/google/zxing/common/BitMatrix;

.field private parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

.field private parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/decoder/BitMatrixParser;
    move-object v1, p1

    .local v1, "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 36
    move-object v3, v1

    invoke-virtual {v3}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v3

    move v2, v3

    .line 37
    .local v2, "dimension":I
    move v3, v2

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    move v3, v2

    const/4 v4, 0x3

    and-int/lit8 v3, v3, 0x3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 38
    :cond_0
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 40
    :cond_1
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    .line 41
    return-void
.end method

.method private copyBit(III)I
    .locals 7

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/decoder/BitMatrixParser;
    move v1, p1

    .local v1, "i":I
    move v2, p2

    .local v2, "j":I
    move v3, p3

    .local v3, "versionBits":I
    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    move v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v3

    const/4 v5, 0x1

    shl-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    or-int/lit8 v4, v4, 0x1

    :goto_0
    move v0, v4

    .end local v0    # "this":Lcom/google/zxing/qrcode/decoder/BitMatrixParser;
    return v0

    .restart local v0    # "this":Lcom/google/zxing/qrcode/decoder/BitMatrixParser;
    :cond_0
    move v4, v3

    const/4 v5, 0x1

    shl-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method


# virtual methods
.method readCodewords()[B
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 153
    move-object/from16 v2, p0

    .local v2, "this":Lcom/google/zxing/qrcode/decoder/BitMatrixParser;
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readFormatInformation()Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-result-object v17

    move-object/from16 v3, v17

    .line 154
    .local v3, "formatInfo":Lcom/google/zxing/qrcode/decoder/FormatInformation;
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->readVersion()Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v17

    move-object/from16 v4, v17

    .line 158
    .local v4, "version":Lcom/google/zxing/qrcode/decoder/Version;
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->getDataMask()B

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/google/zxing/qrcode/decoder/DataMask;->forReference(I)Lcom/google/zxing/qrcode/decoder/DataMask;

    move-result-object v17

    move-object/from16 v5, v17

    .line 159
    .local v5, "dataMask":Lcom/google/zxing/qrcode/decoder/DataMask;
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v17

    move/from16 v6, v17

    .line 160
    .local v6, "dimension":I
    move-object/from16 v17, v5

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v18, v0

    move/from16 v19, v6

    invoke-virtual/range {v17 .. v19}, Lcom/google/zxing/qrcode/decoder/DataMask;->unmaskBitMatrix(Lcom/google/zxing/common/BitMatrix;I)V

    .line 162
    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/qrcode/decoder/Version;->buildFunctionPattern()Lcom/google/zxing/common/BitMatrix;

    move-result-object v17

    move-object/from16 v7, v17

    .line 164
    .local v7, "functionPattern":Lcom/google/zxing/common/BitMatrix;
    const/16 v17, 0x1

    move/from16 v8, v17

    .line 165
    .local v8, "readingUp":Z
    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v17

    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v17, v0

    move-object/from16 v9, v17

    .line 166
    .local v9, "result":[B
    const/16 v17, 0x0

    move/from16 v10, v17

    .line 167
    .local v10, "resultOffset":I
    const/16 v17, 0x0

    move/from16 v11, v17

    .line 168
    .local v11, "currentByte":I
    const/16 v17, 0x0

    move/from16 v12, v17

    .line 170
    .local v12, "bitsRead":I
    move/from16 v17, v6

    const/16 v18, 0x1

    add-int/lit8 v17, v17, -0x1

    move/from16 v13, v17

    .local v13, "j":I
    :goto_0
    move/from16 v17, v13

    if-lez v17, :cond_6

    .line 171
    move/from16 v17, v13

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 174
    add-int/lit8 v13, v13, -0x1

    .line 177
    :cond_0
    const/16 v17, 0x0

    move/from16 v14, v17

    .local v14, "count":I
    :goto_1
    move/from16 v17, v14

    move/from16 v18, v6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    .line 178
    move/from16 v17, v8

    if-eqz v17, :cond_3

    move/from16 v17, v6

    const/16 v18, 0x1

    add-int/lit8 v17, v17, -0x1

    move/from16 v18, v14

    sub-int v17, v17, v18

    :goto_2
    move/from16 v15, v17

    .line 179
    .local v15, "i":I
    const/16 v17, 0x0

    move/from16 v16, v17

    .local v16, "col":I
    :goto_3
    move/from16 v17, v16

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    .line 181
    move-object/from16 v17, v7

    move/from16 v18, v13

    move/from16 v19, v16

    sub-int v18, v18, v19

    move/from16 v19, v15

    invoke-virtual/range {v17 .. v19}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v17

    if-nez v17, :cond_2

    .line 183
    add-int/lit8 v12, v12, 0x1

    .line 184
    move/from16 v17, v11

    const/16 v18, 0x1

    shl-int/lit8 v17, v17, 0x1

    move/from16 v11, v17

    .line 185
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v17, v0

    move/from16 v18, v13

    move/from16 v19, v16

    sub-int v18, v18, v19

    move/from16 v19, v15

    invoke-virtual/range {v17 .. v19}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 186
    move/from16 v17, v11

    const/16 v18, 0x1

    or-int/lit8 v17, v17, 0x1

    move/from16 v11, v17

    .line 189
    :cond_1
    move/from16 v17, v12

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 190
    move-object/from16 v17, v9

    move/from16 v18, v10

    add-int/lit8 v10, v10, 0x1

    move/from16 v19, v11

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v17, v18

    .line 191
    const/16 v17, 0x0

    move/from16 v12, v17

    .line 192
    const/16 v17, 0x0

    move/from16 v11, v17

    .line 179
    :cond_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 178
    .end local v15    # "i":I
    .end local v16    # "col":I
    :cond_3
    move/from16 v17, v14

    goto :goto_2

    .line 177
    .restart local v15    # "i":I
    .restart local v16    # "col":I
    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 197
    .end local v15    # "i":I
    .end local v16    # "col":I
    :cond_5
    move/from16 v17, v8

    const/16 v18, 0x1

    xor-int/lit8 v17, v17, 0x1

    move/from16 v8, v17

    .line 170
    add-int/lit8 v13, v13, -0x2

    goto/16 :goto_0

    .line 199
    .end local v14    # "count":I
    :cond_6
    move/from16 v17, v10

    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/qrcode/decoder/Version;->getTotalCodewords()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    .line 200
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v17

    throw v17

    .line 202
    :cond_7
    move-object/from16 v17, v9

    move-object/from16 v2, v17

    .end local v2    # "this":Lcom/google/zxing/qrcode/decoder/BitMatrixParser;
    return-object v2
.end method

.method readFormatInformation()Lcom/google/zxing/qrcode/decoder/FormatInformation;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/decoder/BitMatrixParser;
    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

    if-eqz v6, :cond_0

    .line 53
    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-object v0, v6

    .line 83
    .end local v0    # "this":Lcom/google/zxing/qrcode/decoder/BitMatrixParser;
    .local v1, "formatInfoBits1":I
    .local v2, "dimension":I
    .local v3, "formatInfoBits2":I
    .local v4, "jMin":I
    .local v5, "i":I
    :goto_0
    return-object v0

    .line 57
    .end local v1    # "formatInfoBits1":I
    .end local v2    # "dimension":I
    .end local v3    # "formatInfoBits2":I
    .end local v4    # "jMin":I
    .end local v5    # "i":I
    .restart local v0    # "this":Lcom/google/zxing/qrcode/decoder/BitMatrixParser;
    :cond_0
    const/4 v6, 0x0

    move v1, v6

    .line 58
    .restart local v1    # "formatInfoBits1":I
    const/4 v6, 0x0

    move v2, v6

    .local v2, "i":I
    :goto_1
    move v6, v2

    const/4 v7, 0x6

    if-ge v6, v7, :cond_1

    .line 59
    move-object v6, v0

    move v7, v2

    const/16 v8, 0x8

    move v9, v1

    invoke-direct {v6, v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v6

    move v1, v6

    .line 58
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 62
    :cond_1
    move-object v6, v0

    const/4 v7, 0x7

    const/16 v8, 0x8

    move v9, v1

    invoke-direct {v6, v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v6

    move v1, v6

    .line 63
    move-object v6, v0

    const/16 v7, 0x8

    const/16 v8, 0x8

    move v9, v1

    invoke-direct {v6, v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v6

    move v1, v6

    .line 64
    move-object v6, v0

    const/16 v7, 0x8

    const/4 v8, 0x7

    move v9, v1

    invoke-direct {v6, v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v6

    move v1, v6

    .line 66
    const/4 v6, 0x5

    move v2, v6

    .local v2, "j":I
    :goto_2
    move v6, v2

    if-ltz v6, :cond_2

    .line 67
    move-object v6, v0

    const/16 v7, 0x8

    move v8, v2

    move v9, v1

    invoke-direct {v6, v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v6

    move v1, v6

    .line 66
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 71
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v6}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v6

    move v2, v6

    .line 72
    .local v2, "dimension":I
    const/4 v6, 0x0

    move v3, v6

    .line 73
    .restart local v3    # "formatInfoBits2":I
    move v6, v2

    const/4 v7, 0x7

    add-int/lit8 v6, v6, -0x7

    move v4, v6

    .line 74
    .restart local v4    # "jMin":I
    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v5, v6

    .local v5, "j":I
    :goto_3
    move v6, v5

    move v7, v4

    if-lt v6, v7, :cond_3

    .line 75
    move-object v6, v0

    const/16 v7, 0x8

    move v8, v5

    move v9, v3

    invoke-direct {v6, v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v6

    move v3, v6

    .line 74
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 77
    :cond_3
    move v6, v2

    const/16 v7, 0x8

    add-int/lit8 v6, v6, -0x8

    move v5, v6

    .local v5, "i":I
    :goto_4
    move v6, v5

    move v7, v2

    if-ge v6, v7, :cond_4

    .line 78
    move-object v6, v0

    move v7, v5

    const/16 v8, 0x8

    move v9, v3

    invoke-direct {v6, v7, v8, v9}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v6

    move v3, v6

    .line 77
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 81
    :cond_4
    move-object v6, v0

    move v7, v1

    move v8, v3

    invoke-static {v7, v8}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->decodeFormatInformation(II)Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-result-object v7

    iput-object v7, v6, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

    .line 82
    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

    if-eqz v6, :cond_5

    .line 83
    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedFormatInfo:Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-object v0, v6

    goto/16 :goto_0

    .line 85
    :cond_5
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6
.end method

.method readVersion()Lcom/google/zxing/qrcode/decoder/Version;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/decoder/BitMatrixParser;
    move-object v8, v0

    iget-object v8, v8, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;

    if-eqz v8, :cond_0

    .line 98
    move-object v8, v0

    iget-object v8, v8, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;

    move-object v0, v8

    .line 134
    .end local v0    # "this":Lcom/google/zxing/qrcode/decoder/BitMatrixParser;
    .local v1, "dimension":I
    .local v2, "provisionalVersion":I
    :goto_0
    return-object v0

    .line 101
    .end local v1    # "dimension":I
    .end local v2    # "provisionalVersion":I
    .restart local v0    # "this":Lcom/google/zxing/qrcode/decoder/BitMatrixParser;
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->bitMatrix:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v8}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v8

    move v1, v8

    .line 103
    .restart local v1    # "dimension":I
    move v8, v1

    const/16 v9, 0x11

    add-int/lit8 v8, v8, -0x11

    const/4 v9, 0x2

    shr-int/lit8 v8, v8, 0x2

    move v2, v8

    .line 104
    .restart local v2    # "provisionalVersion":I
    move v8, v2

    const/4 v9, 0x6

    if-gt v8, v9, :cond_1

    .line 105
    move v8, v2

    invoke-static {v8}, Lcom/google/zxing/qrcode/decoder/Version;->getVersionForNumber(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v8

    move-object v0, v8

    goto :goto_0

    .line 109
    :cond_1
    const/4 v8, 0x0

    move v3, v8

    .line 110
    .local v3, "versionBits":I
    move v8, v1

    const/16 v9, 0xb

    add-int/lit8 v8, v8, -0xb

    move v4, v8

    .line 111
    .local v4, "ijMin":I
    const/4 v8, 0x5

    move v5, v8

    .local v5, "j":I
    :goto_1
    move v8, v5

    if-ltz v8, :cond_3

    .line 112
    move v8, v1

    const/16 v9, 0x9

    add-int/lit8 v8, v8, -0x9

    move v6, v8

    .local v6, "i":I
    :goto_2
    move v8, v6

    move v9, v4

    if-lt v8, v9, :cond_2

    .line 113
    move-object v8, v0

    move v9, v6

    move v10, v5

    move v11, v3

    invoke-direct {v8, v9, v10, v11}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v8

    move v3, v8

    .line 112
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 111
    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 117
    .end local v6    # "i":I
    :cond_3
    move v8, v3

    invoke-static {v8}, Lcom/google/zxing/qrcode/decoder/Version;->decodeVersionInformation(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v8

    move-object v5, v8

    .line 118
    .local v5, "theParsedVersion":Lcom/google/zxing/qrcode/decoder/Version;
    move-object v8, v5

    if-eqz v8, :cond_4

    move-object v8, v5

    invoke-virtual {v8}, Lcom/google/zxing/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v8

    move v9, v1

    if-ne v8, v9, :cond_4

    .line 119
    move-object v8, v0

    move-object v9, v5

    iput-object v9, v8, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;

    .line 120
    move-object v8, v5

    move-object v0, v8

    goto :goto_0

    .line 124
    :cond_4
    const/4 v8, 0x0

    move v3, v8

    .line 125
    const/4 v8, 0x5

    move v6, v8

    .restart local v6    # "i":I
    :goto_3
    move v8, v6

    if-ltz v8, :cond_6

    .line 126
    move v8, v1

    const/16 v9, 0x9

    add-int/lit8 v8, v8, -0x9

    move v7, v8

    .local v7, "j":I
    :goto_4
    move v8, v7

    move v9, v4

    if-lt v8, v9, :cond_5

    .line 127
    move-object v8, v0

    move v9, v6

    move v10, v7

    move v11, v3

    invoke-direct {v8, v9, v10, v11}, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->copyBit(III)I

    move-result v8

    move v3, v8

    .line 126
    add-int/lit8 v7, v7, -0x1

    goto :goto_4

    .line 125
    :cond_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 131
    .end local v7    # "j":I
    :cond_6
    move v8, v3

    invoke-static {v8}, Lcom/google/zxing/qrcode/decoder/Version;->decodeVersionInformation(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v8

    move-object v5, v8

    .line 132
    move-object v8, v5

    if-eqz v8, :cond_7

    move-object v8, v5

    invoke-virtual {v8}, Lcom/google/zxing/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v8

    move v9, v1

    if-ne v8, v9, :cond_7

    .line 133
    move-object v8, v0

    move-object v9, v5

    iput-object v9, v8, Lcom/google/zxing/qrcode/decoder/BitMatrixParser;->parsedVersion:Lcom/google/zxing/qrcode/decoder/Version;

    .line 134
    move-object v8, v5

    move-object v0, v8

    goto/16 :goto_0

    .line 136
    :cond_7
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v8

    throw v8
.end method
