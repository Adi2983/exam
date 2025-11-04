.class final Lcom/google/zxing/oned/rss/expanded/decoders/AI01AndOtherAIs;
.super Lcom/google/zxing/oned/rss/expanded/decoders/AI01decoder;
.source "AI01AndOtherAIs.java"


# static fields
.field private static final HEADER_SIZE:I = 0x4


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitArray;)V
    .locals 4

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/AI01AndOtherAIs;
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

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/AI01AndOtherAIs;
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v4

    .line 48
    .local v1, "buff":Ljava/lang/StringBuilder;
    move-object v4, v1

    const-string/jumbo v5, "(01)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 49
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    move v2, v4

    .line 50
    .local v2, "initialGtinPosition":I
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01AndOtherAIs;->getGeneralDecoder()Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;

    move-result-object v4

    const/4 v5, 0x4

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v4

    move v3, v4

    .line 51
    .local v3, "firstGtinDigit":I
    move-object v4, v1

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 53
    move-object v4, v0

    move-object v5, v1

    const/16 v6, 0x8

    move v7, v2

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01AndOtherAIs;->encodeCompressedGtinWithoutAI(Ljava/lang/StringBuilder;II)V

    .line 55
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01AndOtherAIs;->getGeneralDecoder()Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;

    move-result-object v4

    move-object v5, v1

    const/16 v6, 0x30

    invoke-virtual {v4, v5, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->decodeAllCodes(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/AI01AndOtherAIs;
    return-object v0
.end method
