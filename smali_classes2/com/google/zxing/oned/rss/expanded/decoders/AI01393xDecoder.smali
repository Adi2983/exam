.class final Lcom/google/zxing/oned/rss/expanded/decoders/AI01393xDecoder;
.super Lcom/google/zxing/oned/rss/expanded/decoders/AI01decoder;
.source "AI01393xDecoder.java"


# static fields
.field private static final FIRST_THREE_DIGITS_SIZE:I = 0xa

.field private static final HEADER_SIZE:I = 0x8

.field private static final LAST_DIGIT_SIZE:I = 0x2


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitArray;)V
    .locals 4

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/AI01393xDecoder;
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
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/AI01393xDecoder;
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01393xDecoder;->getInformation()Lcom/google/zxing/common/BitArray;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v5

    const/16 v6, 0x30

    if-ge v5, v6, :cond_0

    .line 47
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v5

    throw v5

    .line 50
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v5

    .line 52
    .local v1, "buf":Ljava/lang/StringBuilder;
    move-object v5, v0

    move-object v6, v1

    const/16 v7, 0x8

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01393xDecoder;->encodeCompressedGtin(Ljava/lang/StringBuilder;I)V

    .line 54
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01393xDecoder;->getGeneralDecoder()Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;

    move-result-object v5

    const/16 v6, 0x30

    const/4 v7, 0x2

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v5

    move v2, v5

    .line 57
    .local v2, "lastAIdigit":I
    move-object v5, v1

    const-string/jumbo v6, "(393"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 58
    move-object v5, v1

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 59
    move-object v5, v1

    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 61
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01393xDecoder;->getGeneralDecoder()Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;

    move-result-object v5

    const/16 v6, 0x32

    const/16 v7, 0xa

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v5

    move v3, v5

    .line 63
    .local v3, "firstThreeDigits":I
    move v5, v3

    const/16 v6, 0x64

    div-int/lit8 v5, v5, 0x64

    if-nez v5, :cond_1

    .line 64
    move-object v5, v1

    const/16 v6, 0x30

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 66
    :cond_1
    move v5, v3

    const/16 v6, 0xa

    div-int/lit8 v5, v5, 0xa

    if-nez v5, :cond_2

    .line 67
    move-object v5, v1

    const/16 v6, 0x30

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 69
    :cond_2
    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 71
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01393xDecoder;->getGeneralDecoder()Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;

    move-result-object v5

    const/16 v6, 0x3c

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->decodeGeneralPurposeField(ILjava/lang/String;)Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;

    move-result-object v5

    move-object v4, v5

    .line 73
    .local v4, "generalInformation":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedInformation;->getNewString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 75
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/AI01393xDecoder;
    return-object v0
.end method
