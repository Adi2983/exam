.class abstract Lcom/google/zxing/oned/rss/expanded/decoders/AI01decoder;
.super Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;
.source "AI01decoder.java"


# static fields
.field protected static final GTIN_SIZE:I = 0x28


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitArray;)V
    .locals 4

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/AI01decoder;
    move-object v1, p1

    .local v1, "information":Lcom/google/zxing/common/BitArray;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;-><init>(Lcom/google/zxing/common/BitArray;)V

    .line 41
    return-void
.end method

.method private static appendCheckDigit(Ljava/lang/StringBuilder;I)V
    .locals 8

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "buf":Ljava/lang/StringBuilder;
    move v1, p1

    .local v1, "currentPos":I
    const/4 v5, 0x0

    move v2, v5

    .line 68
    .local v2, "checkDigit":I
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    const/16 v6, 0xd

    if-ge v5, v6, :cond_1

    .line 69
    move-object v5, v0

    move v6, v3

    move v7, v1

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    add-int/lit8 v5, v5, -0x30

    move v4, v5

    .line 70
    .local v4, "digit":I
    move v5, v2

    move v6, v3

    const/4 v7, 0x1

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_0

    const/4 v6, 0x3

    move v7, v4

    mul-int/2addr v6, v7

    :goto_1
    add-int/2addr v5, v6

    move v2, v5

    .line 68
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 70
    :cond_0
    move v6, v4

    goto :goto_1

    .line 73
    .end local v4    # "digit":I
    :cond_1
    const/16 v5, 0xa

    move v6, v2

    const/16 v7, 0xa

    rem-int/lit8 v6, v6, 0xa

    rsub-int/lit8 v5, v6, 0xa

    move v2, v5

    .line 74
    move v5, v2

    const/16 v6, 0xa

    if-ne v5, v6, :cond_2

    .line 75
    const/4 v5, 0x0

    move v2, v5

    .line 78
    :cond_2
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 79
    return-void
.end method


# virtual methods
.method protected final encodeCompressedGtin(Ljava/lang/StringBuilder;I)V
    .locals 8

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/AI01decoder;
    move-object v1, p1

    .local v1, "buf":Ljava/lang/StringBuilder;
    move v2, p2

    .local v2, "currentPos":I
    move-object v4, v1

    const-string/jumbo v5, "(01)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 45
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    move v3, v4

    .line 46
    .local v3, "initialPosition":I
    move-object v4, v1

    const/16 v5, 0x39

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 48
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01decoder;->encodeCompressedGtinWithoutAI(Ljava/lang/StringBuilder;II)V

    .line 49
    return-void
.end method

.method protected final encodeCompressedGtinWithoutAI(Ljava/lang/StringBuilder;II)V
    .locals 10

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/AI01decoder;
    move-object v1, p1

    .local v1, "buf":Ljava/lang/StringBuilder;
    move v2, p2

    .local v2, "currentPos":I
    move v3, p3

    .local v3, "initialBufferPosition":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_0
    move v6, v4

    const/4 v7, 0x4

    if-ge v6, v7, :cond_2

    .line 53
    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01decoder;->getGeneralDecoder()Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;

    move-result-object v6

    move v7, v2

    const/16 v8, 0xa

    move v9, v4

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    const/16 v8, 0xa

    invoke-virtual {v6, v7, v8}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v6

    move v5, v6

    .line 54
    .local v5, "currentBlock":I
    move v6, v5

    const/16 v7, 0x64

    div-int/lit8 v6, v6, 0x64

    if-nez v6, :cond_0

    .line 55
    move-object v6, v1

    const/16 v7, 0x30

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 57
    :cond_0
    move v6, v5

    const/16 v7, 0xa

    div-int/lit8 v6, v6, 0xa

    if-nez v6, :cond_1

    .line 58
    move-object v6, v1

    const/16 v7, 0x30

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 60
    :cond_1
    move-object v6, v1

    move v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 52
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 63
    .end local v5    # "currentBlock":I
    :cond_2
    move-object v6, v1

    move v7, v3

    invoke-static {v6, v7}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01decoder;->appendCheckDigit(Ljava/lang/StringBuilder;I)V

    .line 64
    return-void
.end method
