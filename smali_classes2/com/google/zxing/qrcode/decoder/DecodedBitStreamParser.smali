.class final Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"


# static fields
.field private static final ALPHANUMERIC_CHARS:[C

.field private static final GB2312_SUBSET:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/16 v0, 0x2d

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x20s
        0x24s
        0x25s
        0x2as
        0x2bs
        0x2ds
        0x2es
        0x2fs
        0x3as
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method static decode([BLcom/google/zxing/qrcode/decoder/Version;Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/google/zxing/qrcode/decoder/Version;",
            "Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DecoderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 60
    move-object/from16 v0, p0

    .local v0, "bytes":[B
    move-object/from16 v1, p1

    .local v1, "version":Lcom/google/zxing/qrcode/decoder/Version;
    move-object/from16 v2, p2

    .local v2, "ecLevel":Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    move-object/from16 v3, p3

    .local v3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    new-instance v12, Lcom/google/zxing/common/BitSource;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-object v14, v0

    invoke-direct {v13, v14}, Lcom/google/zxing/common/BitSource;-><init>([B)V

    move-object v4, v12

    .line 61
    .local v4, "bits":Lcom/google/zxing/common/BitSource;
    new-instance v12, Ljava/lang/StringBuilder;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/16 v14, 0x32

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v5, v12

    .line 62
    .local v5, "result":Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    move-object v6, v12

    .line 63
    .local v6, "currentCharacterSetECI":Lcom/google/zxing/common/CharacterSetECI;
    const/4 v12, 0x0

    move v7, v12

    .line 64
    .local v7, "fc1InEffect":Z
    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x1

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(I)V

    move-object v8, v12

    .line 68
    .local v8, "byteSegments":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_0
    move-object v12, v4

    invoke-virtual {v12}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v12

    const/4 v13, 0x4

    if-ge v12, v13, :cond_3

    .line 70
    sget-object v12, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;

    move-object v9, v12

    .line 78
    .local v9, "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    :goto_0
    move-object v12, v9

    sget-object v13, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;

    if-eq v12, v13, :cond_2

    .line 79
    move-object v12, v9

    sget-object v13, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_FIRST_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    if-eq v12, v13, :cond_1

    move-object v12, v9

    sget-object v13, Lcom/google/zxing/qrcode/decoder/Mode;->FNC1_SECOND_POSITION:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v12, v13, :cond_4

    .line 81
    :cond_1
    const/4 v12, 0x1

    move v7, v12

    .line 123
    :cond_2
    :goto_1
    move-object v12, v9

    sget-object v13, Lcom/google/zxing/qrcode/decoder/Mode;->TERMINATOR:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v12, v13, :cond_0

    .line 125
    new-instance v12, Lcom/google/zxing/common/DecoderResult;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-object v14, v0

    move-object v15, v5

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v8

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_f

    const/16 v16, 0x0

    :goto_2
    move-object/from16 v17, v2

    if-nez v17, :cond_10

    const/16 v17, 0x0

    :goto_3
    invoke-direct/range {v13 .. v17}, Lcom/google/zxing/common/DecoderResult;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    move-object v0, v12

    .end local v0    # "bytes":[B
    return-object v0

    .line 73
    .end local v9    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    .restart local v0    # "bytes":[B
    :cond_3
    move-object v12, v4

    const/4 v13, 0x4

    :try_start_0
    invoke-virtual {v12, v13}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v12

    invoke-static {v12}, Lcom/google/zxing/qrcode/decoder/Mode;->forBits(I)Lcom/google/zxing/qrcode/decoder/Mode;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    move-object v9, v12

    .line 76
    .restart local v9    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    goto :goto_0

    .line 74
    .end local v9    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    :catch_0
    move-exception v12

    move-object v10, v12

    .line 75
    .local v10, "iae":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v12

    throw v12

    .line 82
    .end local v10    # "iae":Ljava/lang/IllegalArgumentException;
    .restart local v9    # "mode":Lcom/google/zxing/qrcode/decoder/Mode;
    :cond_4
    move-object v12, v9

    sget-object v13, Lcom/google/zxing/qrcode/decoder/Mode;->STRUCTURED_APPEND:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v12, v13, :cond_6

    .line 83
    move-object v12, v4

    invoke-virtual {v12}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v12

    const/16 v13, 0x10

    if-ge v12, v13, :cond_5

    .line 84
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v12

    throw v12

    .line 88
    :cond_5
    move-object v12, v4

    const/16 v13, 0x10

    invoke-virtual {v12, v13}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v12

    goto :goto_1

    .line 89
    :cond_6
    move-object v12, v9

    sget-object v13, Lcom/google/zxing/qrcode/decoder/Mode;->ECI:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v12, v13, :cond_8

    .line 91
    move-object v12, v4

    invoke-static {v12}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->parseECIValue(Lcom/google/zxing/common/BitSource;)I

    move-result v12

    move v10, v12

    .line 92
    .local v10, "value":I
    move v12, v10

    invoke-static {v12}, Lcom/google/zxing/common/CharacterSetECI;->getCharacterSetECIByValue(I)Lcom/google/zxing/common/CharacterSetECI;

    move-result-object v12

    move-object v6, v12

    .line 93
    move-object v12, v6

    if-nez v12, :cond_7

    .line 94
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v12

    throw v12

    .line 96
    :cond_7
    goto :goto_1

    .line 98
    .end local v10    # "value":I
    :cond_8
    move-object v12, v9

    sget-object v13, Lcom/google/zxing/qrcode/decoder/Mode;->HANZI:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v12, v13, :cond_a

    .line 100
    move-object v12, v4

    const/4 v13, 0x4

    invoke-virtual {v12, v13}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v12

    move v10, v12

    .line 101
    .local v10, "subset":I
    move-object v12, v4

    move-object v13, v9

    move-object v14, v1

    invoke-virtual {v13, v14}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v12

    move v11, v12

    .line 102
    .local v11, "countHanzi":I
    move v12, v10

    const/4 v13, 0x1

    if-ne v12, v13, :cond_9

    .line 103
    move-object v12, v4

    move-object v13, v5

    move v14, v11

    invoke-static {v12, v13, v14}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeHanziSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V

    .line 105
    :cond_9
    goto/16 :goto_1

    .line 108
    .end local v10    # "subset":I
    .end local v11    # "countHanzi":I
    :cond_a
    move-object v12, v4

    move-object v13, v9

    move-object v14, v1

    invoke-virtual {v13, v14}, Lcom/google/zxing/qrcode/decoder/Mode;->getCharacterCountBits(Lcom/google/zxing/qrcode/decoder/Version;)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v12

    move v10, v12

    .line 109
    .local v10, "count":I
    move-object v12, v9

    sget-object v13, Lcom/google/zxing/qrcode/decoder/Mode;->NUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v12, v13, :cond_b

    .line 110
    move-object v12, v4

    move-object v13, v5

    move v14, v10

    invoke-static {v12, v13, v14}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeNumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V

    goto/16 :goto_1

    .line 111
    :cond_b
    move-object v12, v9

    sget-object v13, Lcom/google/zxing/qrcode/decoder/Mode;->ALPHANUMERIC:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v12, v13, :cond_c

    .line 112
    move-object v12, v4

    move-object v13, v5

    move v14, v10

    move v15, v7

    invoke-static {v12, v13, v14, v15}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeAlphanumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;IZ)V

    goto/16 :goto_1

    .line 113
    :cond_c
    move-object v12, v9

    sget-object v13, Lcom/google/zxing/qrcode/decoder/Mode;->BYTE:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v12, v13, :cond_d

    .line 114
    move-object v12, v4

    move-object v13, v5

    move v14, v10

    move-object v15, v6

    move-object/from16 v16, v8

    move-object/from16 v17, v3

    invoke-static/range {v12 .. v17}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeByteSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;ILcom/google/zxing/common/CharacterSetECI;Ljava/util/Collection;Ljava/util/Map;)V

    goto/16 :goto_1

    .line 115
    :cond_d
    move-object v12, v9

    sget-object v13, Lcom/google/zxing/qrcode/decoder/Mode;->KANJI:Lcom/google/zxing/qrcode/decoder/Mode;

    if-ne v12, v13, :cond_e

    .line 116
    move-object v12, v4

    move-object v13, v5

    move v14, v10

    invoke-static {v12, v13, v14}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->decodeKanjiSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V

    goto/16 :goto_1

    .line 118
    :cond_e
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v12

    throw v12

    .line 125
    .end local v10    # "count":I
    :cond_f
    move-object/from16 v16, v8

    goto/16 :goto_2

    :cond_10
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->toString()Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_3
.end method

.method private static decodeAlphanumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;IZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "bits":Lcom/google/zxing/common/BitSource;
    move-object v1, p1

    .local v1, "result":Ljava/lang/StringBuilder;
    move v2, p2

    .local v2, "count":I
    move v3, p3

    .local v3, "fc1InEffect":Z
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    move v4, v6

    .line 253
    .local v4, "start":I
    :goto_0
    move v6, v2

    const/4 v7, 0x1

    if-le v6, v7, :cond_1

    .line 254
    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v6

    const/16 v7, 0xb

    if-ge v6, v7, :cond_0

    .line 255
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 257
    :cond_0
    move-object v6, v0

    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v6

    move v5, v6

    .line 258
    .local v5, "nextTwoCharsBits":I
    move-object v6, v1

    move v7, v5

    const/16 v8, 0x2d

    div-int/lit8 v7, v7, 0x2d

    invoke-static {v7}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 259
    move-object v6, v1

    move v7, v5

    const/16 v8, 0x2d

    rem-int/lit8 v7, v7, 0x2d

    invoke-static {v7}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 260
    add-int/lit8 v2, v2, -0x2

    .line 261
    goto :goto_0

    .line 262
    .end local v5    # "nextTwoCharsBits":I
    :cond_1
    move v6, v2

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 264
    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v6

    const/4 v7, 0x6

    if-ge v6, v7, :cond_2

    .line 265
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v6

    throw v6

    .line 267
    :cond_2
    move-object v6, v1

    move-object v7, v0

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v7

    invoke-static {v7}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 270
    :cond_3
    move v6, v3

    if-eqz v6, :cond_6

    .line 272
    move v6, v4

    move v5, v6

    .local v5, "i":I
    :goto_1
    move v6, v5

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 273
    move-object v6, v1

    move v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    const/16 v7, 0x25

    if-ne v6, v7, :cond_4

    .line 274
    move v6, v5

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_5

    move-object v6, v1

    move v7, v5

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v6

    const/16 v7, 0x25

    if-ne v6, v7, :cond_5

    .line 276
    move-object v6, v1

    move v7, v5

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 272
    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 279
    :cond_5
    move-object v6, v1

    move v7, v5

    const/16 v8, 0x1d

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_2

    .line 284
    .end local v5    # "i":I
    :cond_6
    return-void
.end method

.method private static decodeByteSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;ILcom/google/zxing/common/CharacterSetECI;Ljava/util/Collection;Ljava/util/Map;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitSource;",
            "Ljava/lang/StringBuilder;",
            "I",
            "Lcom/google/zxing/common/CharacterSetECI;",
            "Ljava/util/Collection",
            "<[B>;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 213
    move-object v0, p0

    .local v0, "bits":Lcom/google/zxing/common/BitSource;
    move-object/from16 v1, p1

    .local v1, "result":Ljava/lang/StringBuilder;
    move/from16 v2, p2

    .local v2, "count":I
    move-object/from16 v3, p3

    .local v3, "currentCharacterSetECI":Lcom/google/zxing/common/CharacterSetECI;
    move-object/from16 v4, p4

    .local v4, "byteSegments":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    move-object/from16 v5, p5

    .local v5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move v9, v2

    const/4 v10, 0x3

    shl-int/lit8 v9, v9, 0x3

    move-object v10, v0

    invoke-virtual {v10}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v10

    if-le v9, v10, :cond_0

    .line 214
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v9

    throw v9

    .line 217
    :cond_0
    move v9, v2

    new-array v9, v9, [B

    move-object v6, v9

    .line 218
    .local v6, "readBytes":[B
    const/4 v9, 0x0

    move v7, v9

    .local v7, "i":I
    :goto_0
    move v9, v7

    move v10, v2

    if-ge v9, v10, :cond_1

    .line 219
    move-object v9, v6

    move v10, v7

    move-object v11, v0

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v9, v10

    .line 218
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 222
    :cond_1
    move-object v9, v3

    if-nez v9, :cond_2

    .line 228
    move-object v9, v6

    move-object v10, v5

    invoke-static {v9, v10}, Lcom/google/zxing/common/StringUtils;->guessEncoding([BLjava/util/Map;)Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .line 233
    .local v7, "encoding":Ljava/lang/String;
    :goto_1
    move-object v9, v1

    :try_start_0
    new-instance v10, Ljava/lang/String;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v6

    move-object v13, v7

    invoke-direct {v11, v12, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 236
    .line 237
    move-object v9, v4

    move-object v10, v6

    invoke-interface {v9, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 238
    return-void

    .line 230
    .local v7, "i":I
    :cond_2
    move-object v9, v3

    invoke-virtual {v9}, Lcom/google/zxing/common/CharacterSetECI;->name()Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    .local v7, "encoding":Ljava/lang/String;
    goto :goto_1

    .line 234
    :catch_0
    move-exception v9

    move-object v8, v9

    .line 235
    .local v8, "uce":Ljava/io/UnsupportedEncodingException;
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v9

    throw v9
.end method

.method private static decodeHanziSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "bits":Lcom/google/zxing/common/BitSource;
    move-object v1, p1

    .local v1, "result":Ljava/lang/StringBuilder;
    move v2, p2

    .local v2, "count":I
    move v7, v2

    const/16 v8, 0xd

    mul-int/lit8 v7, v7, 0xd

    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v8

    if-le v7, v8, :cond_0

    .line 139
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    .line 144
    :cond_0
    const/4 v7, 0x2

    move v8, v2

    mul-int/2addr v7, v8

    new-array v7, v7, [B

    move-object v3, v7

    .line 145
    .local v3, "buffer":[B
    const/4 v7, 0x0

    move v4, v7

    .line 146
    .local v4, "offset":I
    :goto_0
    move v7, v2

    if-lez v7, :cond_2

    .line 148
    move-object v7, v0

    const/16 v8, 0xd

    invoke-virtual {v7, v8}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v7

    move v5, v7

    .line 149
    .local v5, "twoBytes":I
    move v7, v5

    const/16 v8, 0x60

    div-int/lit8 v7, v7, 0x60

    const/16 v8, 0x8

    shl-int/lit8 v7, v7, 0x8

    move v8, v5

    const/16 v9, 0x60

    rem-int/lit8 v8, v8, 0x60

    or-int/2addr v7, v8

    move v6, v7

    .line 150
    .local v6, "assembledTwoBytes":I
    move v7, v6

    const/16 v8, 0x3bf

    if-ge v7, v8, :cond_1

    .line 152
    move v7, v6

    const v8, 0xa1a1

    add-int/2addr v7, v8

    move v6, v7

    .line 157
    :goto_1
    move-object v7, v3

    move v8, v4

    move v9, v6

    const/16 v10, 0x8

    shr-int/lit8 v9, v9, 0x8

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 158
    move-object v7, v3

    move v8, v4

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v9, v6

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 159
    add-int/lit8 v4, v4, 0x2

    .line 160
    add-int/lit8 v2, v2, -0x1

    .line 161
    goto :goto_0

    .line 155
    :cond_1
    move v7, v6

    const v8, 0xa6a1

    add-int/2addr v7, v8

    move v6, v7

    goto :goto_1

    .line 164
    .end local v5    # "twoBytes":I
    .end local v6    # "assembledTwoBytes":I
    :cond_2
    move-object v7, v1

    :try_start_0
    new-instance v8, Ljava/lang/String;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v3

    const-string/jumbo v11, "GB2312"

    invoke-direct {v9, v10, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 167
    .line 168
    return-void

    .line 165
    :catch_0
    move-exception v7

    move-object v5, v7

    .line 166
    .local v5, "uee":Ljava/io/UnsupportedEncodingException;
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7
.end method

.method private static decodeKanjiSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "bits":Lcom/google/zxing/common/BitSource;
    move-object v1, p1

    .local v1, "result":Ljava/lang/StringBuilder;
    move v2, p2

    .local v2, "count":I
    move v7, v2

    const/16 v8, 0xd

    mul-int/lit8 v7, v7, 0xd

    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v8

    if-le v7, v8, :cond_0

    .line 175
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    .line 180
    :cond_0
    const/4 v7, 0x2

    move v8, v2

    mul-int/2addr v7, v8

    new-array v7, v7, [B

    move-object v3, v7

    .line 181
    .local v3, "buffer":[B
    const/4 v7, 0x0

    move v4, v7

    .line 182
    .local v4, "offset":I
    :goto_0
    move v7, v2

    if-lez v7, :cond_2

    .line 184
    move-object v7, v0

    const/16 v8, 0xd

    invoke-virtual {v7, v8}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v7

    move v5, v7

    .line 185
    .local v5, "twoBytes":I
    move v7, v5

    const/16 v8, 0xc0

    div-int/lit16 v7, v7, 0xc0

    const/16 v8, 0x8

    shl-int/lit8 v7, v7, 0x8

    move v8, v5

    const/16 v9, 0xc0

    rem-int/lit16 v8, v8, 0xc0

    or-int/2addr v7, v8

    move v6, v7

    .line 186
    .local v6, "assembledTwoBytes":I
    move v7, v6

    const/16 v8, 0x1f00

    if-ge v7, v8, :cond_1

    .line 188
    move v7, v6

    const v8, 0x8140

    add-int/2addr v7, v8

    move v6, v7

    .line 193
    :goto_1
    move-object v7, v3

    move v8, v4

    move v9, v6

    const/16 v10, 0x8

    shr-int/lit8 v9, v9, 0x8

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 194
    move-object v7, v3

    move v8, v4

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v9, v6

    int-to-byte v9, v9

    aput-byte v9, v7, v8

    .line 195
    add-int/lit8 v4, v4, 0x2

    .line 196
    add-int/lit8 v2, v2, -0x1

    .line 197
    goto :goto_0

    .line 191
    :cond_1
    move v7, v6

    const v8, 0xc140

    add-int/2addr v7, v8

    move v6, v7

    goto :goto_1

    .line 200
    .end local v5    # "twoBytes":I
    .end local v6    # "assembledTwoBytes":I
    :cond_2
    move-object v7, v1

    :try_start_0
    new-instance v8, Ljava/lang/String;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v3

    const-string/jumbo v11, "SJIS"

    invoke-direct {v9, v10, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 203
    .line 204
    return-void

    .line 201
    :catch_0
    move-exception v7

    move-object v5, v7

    .line 202
    .local v5, "uee":Ljava/io/UnsupportedEncodingException;
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7
.end method

.method private static decodeNumericSegment(Lcom/google/zxing/common/BitSource;Ljava/lang/StringBuilder;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 290
    move-object v0, p0

    .local v0, "bits":Lcom/google/zxing/common/BitSource;
    move-object v1, p1

    .local v1, "result":Ljava/lang/StringBuilder;
    move v2, p2

    .local v2, "count":I
    :goto_0
    move v4, v2

    const/4 v5, 0x3

    if-lt v4, v5, :cond_2

    .line 292
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v4

    const/16 v5, 0xa

    if-ge v4, v5, :cond_0

    .line 293
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4

    .line 295
    :cond_0
    move-object v4, v0

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v4

    move v3, v4

    .line 296
    .local v3, "threeDigitsBits":I
    move v4, v3

    const/16 v5, 0x3e8

    if-lt v4, v5, :cond_1

    .line 297
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4

    .line 299
    :cond_1
    move-object v4, v1

    move v5, v3

    const/16 v6, 0x64

    div-int/lit8 v5, v5, 0x64

    invoke-static {v5}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 300
    move-object v4, v1

    move v5, v3

    const/16 v6, 0xa

    div-int/lit8 v5, v5, 0xa

    const/16 v6, 0xa

    rem-int/lit8 v5, v5, 0xa

    invoke-static {v5}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 301
    move-object v4, v1

    move v5, v3

    const/16 v6, 0xa

    rem-int/lit8 v5, v5, 0xa

    invoke-static {v5}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 302
    add-int/lit8 v2, v2, -0x3

    .line 303
    goto :goto_0

    .line 304
    .end local v3    # "threeDigitsBits":I
    :cond_2
    move v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    .line 306
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v4

    const/4 v5, 0x7

    if-ge v4, v5, :cond_3

    .line 307
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4

    .line 309
    :cond_3
    move-object v4, v0

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v4

    move v3, v4

    .line 310
    .local v3, "twoDigitsBits":I
    move v4, v3

    const/16 v5, 0x64

    if-lt v4, v5, :cond_4

    .line 311
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4

    .line 313
    :cond_4
    move-object v4, v1

    move v5, v3

    const/16 v6, 0xa

    div-int/lit8 v5, v5, 0xa

    invoke-static {v5}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 314
    move-object v4, v1

    move v5, v3

    const/16 v6, 0xa

    rem-int/lit8 v5, v5, 0xa

    invoke-static {v5}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 315
    .line 326
    .end local v3    # "twoDigitsBits":I
    :cond_5
    :goto_1
    return-void

    .line 315
    :cond_6
    move v4, v2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 317
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/zxing/common/BitSource;->available()I

    move-result v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_7

    .line 318
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4

    .line 320
    :cond_7
    move-object v4, v0

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v4

    move v3, v4

    .line 321
    .local v3, "digitBits":I
    move v4, v3

    const/16 v5, 0xa

    if-lt v4, v5, :cond_8

    .line 322
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v4

    throw v4

    .line 324
    :cond_8
    move-object v4, v1

    move v5, v3

    invoke-static {v5}, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->toAlphaNumericChar(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    goto :goto_1
.end method

.method private static parseECIValue(Lcom/google/zxing/common/BitSource;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 329
    move-object v0, p0

    .local v0, "bits":Lcom/google/zxing/common/BitSource;
    move-object v3, v0

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v3

    move v1, v3

    .line 330
    .local v1, "firstByte":I
    move v3, v1

    const/16 v4, 0x80

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_0

    .line 332
    move v3, v1

    const/16 v4, 0x7f

    and-int/lit8 v3, v3, 0x7f

    move v0, v3

    .line 342
    .end local v0    # "bits":Lcom/google/zxing/common/BitSource;
    :goto_0
    return v0

    .line 334
    .restart local v0    # "bits":Lcom/google/zxing/common/BitSource;
    :cond_0
    move v3, v1

    const/16 v4, 0xc0

    and-int/lit16 v3, v3, 0xc0

    const/16 v4, 0x80

    if-ne v3, v4, :cond_1

    .line 336
    move-object v3, v0

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v3

    move v2, v3

    .line 337
    .local v2, "secondByte":I
    move v3, v1

    const/16 v4, 0x3f

    and-int/lit8 v3, v3, 0x3f

    const/16 v4, 0x8

    shl-int/lit8 v3, v3, 0x8

    move v4, v2

    or-int/2addr v3, v4

    move v0, v3

    goto :goto_0

    .line 339
    .end local v2    # "secondByte":I
    :cond_1
    move v3, v1

    const/16 v4, 0xe0

    and-int/lit16 v3, v3, 0xe0

    const/16 v4, 0xc0

    if-ne v3, v4, :cond_2

    .line 341
    move-object v3, v0

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Lcom/google/zxing/common/BitSource;->readBits(I)I

    move-result v3

    move v2, v3

    .line 342
    .local v2, "secondThirdBytes":I
    move v3, v1

    const/16 v4, 0x1f

    and-int/lit8 v3, v3, 0x1f

    const/16 v4, 0x10

    shl-int/lit8 v3, v3, 0x10

    move v4, v2

    or-int/2addr v3, v4

    move v0, v3

    goto :goto_0

    .line 344
    .end local v2    # "secondThirdBytes":I
    :cond_2
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3
.end method

.method private static toAlphaNumericChar(I)C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 241
    move v0, p0

    .local v0, "value":I
    move v1, v0

    sget-object v2, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 242
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 244
    :cond_0
    sget-object v1, Lcom/google/zxing/qrcode/decoder/DecodedBitStreamParser;->ALPHANUMERIC_CHARS:[C

    move v2, v0

    aget-char v1, v1, v2

    move v0, v1

    .end local v0    # "value":I
    return v0
.end method
