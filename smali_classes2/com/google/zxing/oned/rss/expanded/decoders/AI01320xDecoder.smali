.class final Lcom/google/zxing/oned/rss/expanded/decoders/AI01320xDecoder;
.super Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0xDecoder;
.source "AI01320xDecoder.java"


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitArray;)V
    .locals 4

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/AI01320xDecoder;
    move-object v1, p1

    .local v1, "information":Lcom/google/zxing/common/BitArray;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0xDecoder;-><init>(Lcom/google/zxing/common/BitArray;)V

    .line 38
    return-void
.end method


# virtual methods
.method protected addWeightCode(Ljava/lang/StringBuilder;I)V
    .locals 5

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/AI01320xDecoder;
    move-object v1, p1

    .local v1, "buf":Ljava/lang/StringBuilder;
    move v2, p2

    .local v2, "weight":I
    move v3, v2

    const/16 v4, 0x2710

    if-ge v3, v4, :cond_0

    .line 43
    move-object v3, v1

    const-string/jumbo v4, "(3202)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    move-object v3, v1

    const-string/jumbo v4, "(3203)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    goto :goto_0
.end method

.method protected checkWeight(I)I
    .locals 4

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/AI01320xDecoder;
    move v1, p1

    .local v1, "weight":I
    move v2, v1

    const/16 v3, 0x2710

    if-ge v2, v3, :cond_0

    .line 52
    move v2, v1

    move v0, v2

    .line 54
    .end local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/AI01320xDecoder;
    :goto_0
    return v0

    .restart local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/AI01320xDecoder;
    :cond_0
    move v2, v1

    const/16 v3, 0x2710

    add-int/lit16 v2, v2, -0x2710

    move v0, v2

    goto :goto_0
.end method
