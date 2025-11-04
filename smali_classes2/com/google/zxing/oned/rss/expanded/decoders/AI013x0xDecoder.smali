.class abstract Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0xDecoder;
.super Lcom/google/zxing/oned/rss/expanded/decoders/AI01weightDecoder;
.source "AI013x0xDecoder.java"


# static fields
.field private static final HEADER_SIZE:I = 0x5

.field private static final WEIGHT_SIZE:I = 0xf


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitArray;)V
    .locals 4

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0xDecoder;
    move-object v1, p1

    .local v1, "information":Lcom/google/zxing/common/BitArray;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01weightDecoder;-><init>(Lcom/google/zxing/common/BitArray;)V

    .line 42
    return-void
.end method


# virtual methods
.method public parseInformation()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0xDecoder;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0xDecoder;->getInformation()Lcom/google/zxing/common/BitArray;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    const/16 v3, 0x3c

    if-eq v2, v3, :cond_0

    .line 47
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2

    .line 50
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v2

    .line 52
    .local v1, "buf":Ljava/lang/StringBuilder;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0xDecoder;->encodeCompressedGtin(Ljava/lang/StringBuilder;I)V

    .line 53
    move-object v2, v0

    move-object v3, v1

    const/16 v4, 0x2d

    const/16 v5, 0xf

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0xDecoder;->encodeCompressedWeight(Ljava/lang/StringBuilder;II)V

    .line 55
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0xDecoder;
    return-object v0
.end method
