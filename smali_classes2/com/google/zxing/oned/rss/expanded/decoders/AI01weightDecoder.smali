.class abstract Lcom/google/zxing/oned/rss/expanded/decoders/AI01weightDecoder;
.super Lcom/google/zxing/oned/rss/expanded/decoders/AI01decoder;
.source "AI01weightDecoder.java"


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitArray;)V
    .locals 4

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/AI01weightDecoder;
    move-object v1, p1

    .local v1, "information":Lcom/google/zxing/common/BitArray;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01decoder;-><init>(Lcom/google/zxing/common/BitArray;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected abstract addWeightCode(Ljava/lang/StringBuilder;I)V
.end method

.method protected abstract checkWeight(I)I
.end method

.method protected final encodeCompressedWeight(Ljava/lang/StringBuilder;II)V
    .locals 11

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/AI01weightDecoder;
    move-object v1, p1

    .local v1, "buf":Ljava/lang/StringBuilder;
    move v2, p2

    .local v2, "currentPos":I
    move v3, p3

    .local v3, "weightSize":I
    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01weightDecoder;->getGeneralDecoder()Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;

    move-result-object v8

    move v9, v2

    move v10, v3

    invoke-virtual {v8, v9, v10}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v8

    move v4, v8

    .line 42
    .local v4, "originalWeightNumeric":I
    move-object v8, v0

    move-object v9, v1

    move v10, v4

    invoke-virtual {v8, v9, v10}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01weightDecoder;->addWeightCode(Ljava/lang/StringBuilder;I)V

    .line 44
    move-object v8, v0

    move v9, v4

    invoke-virtual {v8, v9}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01weightDecoder;->checkWeight(I)I

    move-result v8

    move v5, v8

    .line 46
    .local v5, "weightNumeric":I
    const v8, 0x186a0

    move v6, v8

    .line 47
    .local v6, "currentDivisor":I
    const/4 v8, 0x0

    move v7, v8

    .local v7, "i":I
    :goto_0
    move v8, v7

    const/4 v9, 0x5

    if-ge v8, v9, :cond_1

    .line 48
    move v8, v5

    move v9, v6

    div-int/2addr v8, v9

    if-nez v8, :cond_0

    .line 49
    move-object v8, v1

    const/16 v9, 0x30

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 51
    :cond_0
    move v8, v6

    const/16 v9, 0xa

    div-int/lit8 v8, v8, 0xa

    move v6, v8

    .line 47
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 53
    :cond_1
    move-object v8, v1

    move v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 54
    return-void
.end method
