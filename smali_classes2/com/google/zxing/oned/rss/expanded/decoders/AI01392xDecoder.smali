.class final Lcom/google/zxing/oned/rss/expanded/decoders/AI01392xDecoder;
.super Lcom/google/zxing/oned/rss/expanded/decoders/AI01decoder;
.source "AI01392xDecoder.java"


# static fields
.field private static final HEADER_SIZE:I = 0x8

.field private static final LAST_DIGIT_SIZE:I = 0x2


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitArray;)V
    .locals 4

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/AI01392xDecoder;
    move-object v1, p1

    .local v1, "information":Lcom/google/zxing/common/BitArray;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01decoder;-><init>(Lcom/google/zxing/common/BitArray;)V

    .line 42
    return-void
.end method


# virtual methods
.method public parseInformation()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/AI01392xDecoder;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01392xDecoder;->getInformation()Lcom/google/zxing/common/BitArray;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v4

    const/16 v5, 0x30

    if-ge v4, v5, :cond_0

    .line 47
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v4

    throw v4

    .line 50
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v4

    .line 52
    .local v1, "buf":Ljava/lang/StringBuilder;
    move-object v4, v0

    move-object v5, v1

    const/16 v6, 0x8

    invoke-virtual {v4, v5, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01392xDecoder;->encodeCompressedGtin(Ljava/lang/StringBuilder;I)V

    .line 54
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01392xDecoder;->getGeneralDecoder()Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;

    move-result-object v4

    const/16 v5, 0x30

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v4

    move v2, v4

    .line 56
    .local v2, "lastAIdigit":I
    move-object v4, v1

    const-string/jumbo v5, "(392"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 57
    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 58
    move-object v4, v1

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 60
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01392xDecoder;->getGeneralDecoder()Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;

    move-result-object v4

    const/16 v5, 0x32

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->decodeGeneralPurposeField(ILjava/lang/String;)Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    move-result-object v4

    move-object v3, v4

    .line 62
    .local v3, "decodedInformation":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->getNewString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 64
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/AI01392xDecoder;
    return-object v0
.end method
