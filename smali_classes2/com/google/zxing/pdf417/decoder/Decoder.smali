.class public final Lcom/google/zxing/pdf417/decoder/Decoder;
.super Ljava/lang/Object;
.source "Decoder.java"


# static fields
.field private static final MAX_EC_CODEWORDS:I = 0x200

.field private static final MAX_ERRORS:I = 0x3


# instance fields
.field private final errorCorrection:Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/decoder/Decoder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    move-object v1, v0

    new-instance v2, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;-><init>()V

    iput-object v2, v1, Lcom/google/zxing/pdf417/decoder/Decoder;->errorCorrection:Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;

    .line 39
    return-void
.end method

.method private correctErrors([I[II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/decoder/Decoder;
    move-object v1, p1

    .local v1, "codewords":[I
    move-object v2, p2

    .local v2, "erasures":[I
    move v3, p3

    .local v3, "numECCodewords":I
    move-object v4, v2

    array-length v4, v4

    move v5, v3

    const/4 v6, 0x2

    div-int/lit8 v5, v5, 0x2

    const/4 v6, 0x3

    add-int/lit8 v5, v5, 0x3

    if-gt v4, v5, :cond_0

    move v4, v3

    if-ltz v4, :cond_0

    move v4, v3

    const/16 v5, 0x200

    if-le v4, v5, :cond_1

    .line 132
    :cond_0
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v4

    throw v4

    .line 134
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/pdf417/decoder/Decoder;->errorCorrection:Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;

    move-object v5, v1

    move v6, v3

    move-object v7, v2

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->decode([II[I)V

    .line 135
    return-void
.end method

.method private static verifyCodewordCount([II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "codewords":[I
    move v1, p1

    .local v1, "numECCodewords":I
    move-object v3, v0

    array-length v3, v3

    const/4 v4, 0x4

    if-ge v3, v4, :cond_0

    .line 98
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 103
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    aget v3, v3, v4

    move v2, v3

    .line 104
    .local v2, "numberOfCodewords":I
    move v3, v2

    move-object v4, v0

    array-length v4, v4

    if-le v3, v4, :cond_1

    .line 105
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3

    .line 107
    :cond_1
    move v3, v2

    if-nez v3, :cond_2

    .line 109
    move v3, v1

    move-object v4, v0

    array-length v4, v4

    if-ge v3, v4, :cond_3

    .line 110
    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v0

    array-length v5, v5

    move v6, v1

    sub-int/2addr v5, v6

    aput v5, v3, v4

    .line 115
    :cond_2
    return-void

    .line 112
    :cond_3
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v3

    throw v3
.end method


# virtual methods
.method public decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/decoder/Decoder;
    move-object v1, p1

    .local v1, "bits":Lcom/google/zxing/common/BitMatrix;
    new-instance v7, Lcom/google/zxing/pdf417/decoder/BitMatrixParser;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v1

    invoke-direct {v8, v9}, Lcom/google/zxing/pdf417/decoder/BitMatrixParser;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    move-object v2, v7

    .line 72
    .local v2, "parser":Lcom/google/zxing/pdf417/decoder/BitMatrixParser;
    move-object v7, v2

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/BitMatrixParser;->readCodewords()[I

    move-result-object v7

    move-object v3, v7

    .line 73
    .local v3, "codewords":[I
    move-object v7, v3

    array-length v7, v7

    if-nez v7, :cond_0

    .line 74
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v7

    throw v7

    .line 77
    :cond_0
    move-object v7, v2

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/BitMatrixParser;->getECLevel()I

    move-result v7

    move v4, v7

    .line 78
    .local v4, "ecLevel":I
    const/4 v7, 0x1

    move v8, v4

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    shl-int/2addr v7, v8

    move v5, v7

    .line 79
    .local v5, "numECCodewords":I
    move-object v7, v2

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/BitMatrixParser;->getErasures()[I

    move-result-object v7

    move-object v6, v7

    .line 81
    .local v6, "erasures":[I
    move-object v7, v0

    move-object v8, v3

    move-object v9, v6

    move v10, v5

    invoke-direct {v7, v8, v9, v10}, Lcom/google/zxing/pdf417/decoder/Decoder;->correctErrors([I[II)V

    .line 82
    move-object v7, v3

    move v8, v5

    invoke-static {v7, v8}, Lcom/google/zxing/pdf417/decoder/Decoder;->verifyCodewordCount([II)V

    .line 85
    move-object v7, v3

    invoke-static {v7}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decode([I)Lcom/google/zxing/common/DecoderResult;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Lcom/google/zxing/pdf417/decoder/Decoder;
    return-object v0
.end method

.method public decode([[Z)Lcom/google/zxing/common/DecoderResult;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/decoder/Decoder;
    move-object v1, p1

    .local v1, "image":[[Z
    move-object v6, v1

    array-length v6, v6

    move v2, v6

    .line 50
    .local v2, "dimension":I
    new-instance v6, Lcom/google/zxing/common/BitMatrix;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move v8, v2

    invoke-direct {v7, v8}, Lcom/google/zxing/common/BitMatrix;-><init>(I)V

    move-object v3, v6

    .line 51
    .local v3, "bits":Lcom/google/zxing/common/BitMatrix;
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    move v7, v2

    if-ge v6, v7, :cond_2

    .line 52
    const/4 v6, 0x0

    move v5, v6

    .local v5, "j":I
    :goto_1
    move v6, v5

    move v7, v2

    if-ge v6, v7, :cond_1

    .line 53
    move-object v6, v1

    move v7, v5

    aget-object v6, v6, v7

    move v7, v4

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_0

    .line 54
    move-object v6, v3

    move v7, v5

    move v8, v4

    invoke-virtual {v6, v7, v8}, Lcom/google/zxing/common/BitMatrix;->set(II)V

    .line 52
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 51
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 58
    .end local v5    # "j":I
    :cond_2
    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v6, v7}, Lcom/google/zxing/pdf417/decoder/Decoder;->decode(Lcom/google/zxing/common/BitMatrix;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lcom/google/zxing/pdf417/decoder/Decoder;
    return-object v0
.end method
