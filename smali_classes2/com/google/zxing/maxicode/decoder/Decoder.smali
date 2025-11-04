.class public final Lcom/google/zxing/maxicode/decoder/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# static fields
.field private static final ALL:I = 0x0

.field private static final EVEN:I = 0x1

.field private static final ODD:I = 0x2


# instance fields
.field private final rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/maxicode/decoder/Decoder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 45
    move-object v1, v0

    new-instance v2, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sget-object v4, Lcom/google/zxing/common/reedsolomon/GenericGF;->MAXICODE_FIELD_64:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v3, v4}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    iput-object v2, v1, Lcom/google/zxing/maxicode/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    .line 46
    return-void
.end method

.method private correctErrors([BIIII)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/maxicode/decoder/Decoder;
    move-object/from16 v1, p1

    .local v1, "codewordBytes":[B
    move/from16 v2, p2

    .local v2, "start":I
    move/from16 v3, p3

    .local v3, "dataCodewords":I
    move/from16 v4, p4

    .local v4, "ecCodewords":I
    move/from16 v5, p5

    .local v5, "mode":I
    move v10, v3

    move v11, v4

    add-int/2addr v10, v11

    move v6, v10

    .line 91
    .local v6, "codewords":I
    move v10, v5

    if-nez v10, :cond_2

    const/4 v10, 0x1

    :goto_0
    move v7, v10

    .line 94
    .local v7, "divisor":I
    move v10, v6

    move v11, v7

    div-int/2addr v10, v11

    new-array v10, v10, [I

    move-object v8, v10

    .line 95
    .local v8, "codewordsInts":[I
    const/4 v10, 0x0

    move v9, v10

    .local v9, "i":I
    :goto_1
    move v10, v9

    move v11, v6

    if-ge v10, v11, :cond_3

    .line 96
    move v10, v5

    if-eqz v10, :cond_0

    move v10, v9

    const/4 v11, 0x2

    rem-int/lit8 v10, v10, 0x2

    move v11, v5

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    if-ne v10, v11, :cond_1

    .line 97
    :cond_0
    move-object v10, v8

    move v11, v9

    move v12, v7

    div-int/2addr v11, v12

    move-object v12, v1

    move v13, v9

    move v14, v2

    add-int/2addr v13, v14

    aget-byte v12, v12, v13

    const/16 v13, 0xff

    and-int/lit16 v12, v12, 0xff

    aput v12, v10, v11

    .line 95
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 91
    .end local v7    # "divisor":I
    .end local v8    # "codewordsInts":[I
    .end local v9    # "i":I
    :cond_2
    const/4 v10, 0x2

    goto :goto_0

    .line 101
    .restart local v7    # "divisor":I
    .restart local v8    # "codewordsInts":[I
    .restart local v9    # "i":I
    :cond_3
    move-object v10, v0

    :try_start_0
    iget-object v10, v10, Lcom/google/zxing/maxicode/decoder/Decoder;->rsDecoder:Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    move-object v11, v8

    move v12, v4

    move v13, v7

    div-int/2addr v12, v13

    invoke-virtual {v10, v11, v12}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .line 107
    const/4 v10, 0x0

    move v9, v10

    :goto_2
    move v10, v9

    move v11, v3

    if-ge v10, v11, :cond_6

    .line 108
    move v10, v5

    if-eqz v10, :cond_4

    move v10, v9

    const/4 v11, 0x2

    rem-int/lit8 v10, v10, 0x2

    move v11, v5

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    if-ne v10, v11, :cond_5

    .line 109
    :cond_4
    move-object v10, v1

    move v11, v9

    move v12, v2

    add-int/2addr v11, v12

    move-object v12, v8

    move v13, v9

    move v14, v7

    div-int/2addr v13, v14

    aget v12, v12, v13

    int-to-byte v12, v12

    aput-byte v12, v10, v11

    .line 107
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 102
    :catch_0
    move-exception v10

    move-object v9, v10

    .line 103
    .local v9, "rse":Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v10

    throw v10

    .line 112
    .local v9, "i":I
    :cond_6
    return-void
.end method


# virtual methods
.method public decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/maxicode/decoder/Decoder;
    move-object v1, p1

    .local v1, "bits":Lcom/google/zxing/common/BitMatrix;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/maxicode/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/zxing/maxicode/decoder/Decoder;
    return-object v0
.end method

.method public decode(Lcom/google/zxing/common/BitMatrix;Ljava/util/Map;)Lcom/google/zxing/common/DecoderResult;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitMatrix;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DecoderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/maxicode/decoder/Decoder;
    move-object v1, p1

    .local v1, "bits":Lcom/google/zxing/common/BitMatrix;
    move-object/from16 v2, p2

    .local v2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    new-instance v7, Lcom/google/zxing/maxicode/decoder/BitMatrixParser;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v1

    invoke-direct {v8, v9}, Lcom/google/zxing/maxicode/decoder/BitMatrixParser;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    move-object v3, v7

    .line 55
    .local v3, "parser":Lcom/google/zxing/maxicode/decoder/BitMatrixParser;
    move-object v7, v3

    invoke-virtual {v7}, Lcom/google/zxing/maxicode/decoder/BitMatrixParser;->readCodewords()[B

    move-result-object v7

    move-object v4, v7

    .line 57
    .local v4, "codewords":[B
    move-object v7, v0

    move-object v8, v4

    const/4 v9, 0x0

    const/16 v10, 0xa

    const/16 v11, 0xa

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v12}, Lcom/google/zxing/maxicode/decoder/Decoder;->correctErrors([BIIII)V

    .line 58
    move-object v7, v4

    const/4 v8, 0x0

    aget-byte v7, v7, v8

    const/16 v8, 0xf

    and-int/lit8 v7, v7, 0xf

    move v5, v7

    .line 60
    .local v5, "mode":I
    move v7, v5

    packed-switch v7, :pswitch_data_0

    .line 74
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    .line 64
    :pswitch_0
    move-object v7, v0

    move-object v8, v4

    const/16 v9, 0x14

    const/16 v10, 0x54

    const/16 v11, 0x28

    const/4 v12, 0x1

    invoke-direct/range {v7 .. v12}, Lcom/google/zxing/maxicode/decoder/Decoder;->correctErrors([BIIII)V

    .line 65
    move-object v7, v0

    move-object v8, v4

    const/16 v9, 0x14

    const/16 v10, 0x54

    const/16 v11, 0x28

    const/4 v12, 0x2

    invoke-direct/range {v7 .. v12}, Lcom/google/zxing/maxicode/decoder/Decoder;->correctErrors([BIIII)V

    .line 66
    const/16 v7, 0x5e

    new-array v7, v7, [B

    move-object v6, v7

    .line 77
    .local v6, "datawords":[B
    :goto_0
    move-object v7, v4

    const/4 v8, 0x0

    move-object v9, v6

    const/4 v10, 0x0

    const/16 v11, 0xa

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    move-object v7, v4

    const/16 v8, 0x14

    move-object v9, v6

    const/16 v10, 0xa

    move-object v11, v6

    array-length v11, v11

    const/16 v12, 0xa

    add-int/lit8 v11, v11, -0xa

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    move-object v7, v6

    move v8, v5

    invoke-static {v7, v8}, Lcom/google/zxing/maxicode/decoder/DecodedBitStreamParser;->decode([BI)Lcom/google/zxing/common/DecoderResult;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Lcom/google/zxing/maxicode/decoder/Decoder;
    return-object v0

    .line 69
    .end local v6    # "datawords":[B
    .restart local v0    # "this":Lcom/google/zxing/maxicode/decoder/Decoder;
    :pswitch_1
    move-object v7, v0

    move-object v8, v4

    const/16 v9, 0x14

    const/16 v10, 0x44

    const/16 v11, 0x38

    const/4 v12, 0x1

    invoke-direct/range {v7 .. v12}, Lcom/google/zxing/maxicode/decoder/Decoder;->correctErrors([BIIII)V

    .line 70
    move-object v7, v0

    move-object v8, v4

    const/16 v9, 0x14

    const/16 v10, 0x44

    const/16 v11, 0x38

    const/4 v12, 0x2

    invoke-direct/range {v7 .. v12}, Lcom/google/zxing/maxicode/decoder/Decoder;->correctErrors([BIIII)V

    .line 71
    const/16 v7, 0x4e

    new-array v7, v7, [B

    move-object v6, v7

    .line 72
    .restart local v6    # "datawords":[B
    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
