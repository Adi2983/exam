.class final Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;
.super Lcom/google/zxing/oned/rss/expanded/decoders/AI01weightDecoder;
.source "AI013x0x1xDecoder.java"


# static fields
.field private static final DATE_SIZE:I = 0x10

.field private static final HEADER_SIZE:I = 0x8

.field private static final WEIGHT_SIZE:I = 0x14


# instance fields
.field private final dateCode:Ljava/lang/String;

.field private final firstAIdigits:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitArray;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;
    move-object v1, p1

    .local v1, "information":Lcom/google/zxing/common/BitArray;
    move-object v2, p2

    .local v2, "firstAIdigits":Ljava/lang/String;
    move-object v3, p3

    .local v3, "dateCode":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01weightDecoder;-><init>(Lcom/google/zxing/common/BitArray;)V

    .line 47
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;->dateCode:Ljava/lang/String;

    .line 48
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;->firstAIdigits:Ljava/lang/String;

    .line 49
    return-void
.end method

.method private encodeCompressedDate(Ljava/lang/StringBuilder;I)V
    .locals 10

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;
    move-object v1, p1

    .local v1, "buf":Ljava/lang/StringBuilder;
    move v2, p2

    .local v2, "currentPos":I
    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;->getGeneralDecoder()Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;

    move-result-object v7

    move v8, v2

    const/16 v9, 0x10

    invoke-virtual {v7, v8, v9}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(II)I

    move-result v7

    move v3, v7

    .line 68
    .local v3, "numericDate":I
    move v7, v3

    const v8, 0x9600

    if-ne v7, v8, :cond_0

    .line 69
    .line 94
    :goto_0
    return-void

    .line 72
    :cond_0
    move-object v7, v1

    const/16 v8, 0x28

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 73
    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;->dateCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 74
    move-object v7, v1

    const/16 v8, 0x29

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 76
    move v7, v3

    const/16 v8, 0x20

    rem-int/lit8 v7, v7, 0x20

    move v4, v7

    .line 77
    .local v4, "day":I
    move v7, v3

    const/16 v8, 0x20

    div-int/lit8 v7, v7, 0x20

    move v3, v7

    .line 78
    move v7, v3

    const/16 v8, 0xc

    rem-int/lit8 v7, v7, 0xc

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v5, v7

    .line 79
    .local v5, "month":I
    move v7, v3

    const/16 v8, 0xc

    div-int/lit8 v7, v7, 0xc

    move v3, v7

    .line 80
    move v7, v3

    move v6, v7

    .line 82
    .local v6, "year":I
    move v7, v6

    const/16 v8, 0xa

    div-int/lit8 v7, v7, 0xa

    if-nez v7, :cond_1

    .line 83
    move-object v7, v1

    const/16 v8, 0x30

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 85
    :cond_1
    move-object v7, v1

    move v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 86
    move v7, v5

    const/16 v8, 0xa

    div-int/lit8 v7, v7, 0xa

    if-nez v7, :cond_2

    .line 87
    move-object v7, v1

    const/16 v8, 0x30

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 89
    :cond_2
    move-object v7, v1

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 90
    move v7, v4

    const/16 v8, 0xa

    div-int/lit8 v7, v7, 0xa

    if-nez v7, :cond_3

    .line 91
    move-object v7, v1

    const/16 v8, 0x30

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 93
    :cond_3
    move-object v7, v1

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 94
    goto :goto_0
.end method


# virtual methods
.method protected addWeightCode(Ljava/lang/StringBuilder;I)V
    .locals 6

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;
    move-object v1, p1

    .local v1, "buf":Ljava/lang/StringBuilder;
    move v2, p2

    .local v2, "weight":I
    move v4, v2

    const v5, 0x186a0

    div-int/2addr v4, v5

    move v3, v4

    .line 99
    .local v3, "lastAI":I
    move-object v4, v1

    const/16 v5, 0x28

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 100
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;->firstAIdigits:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 101
    move-object v4, v1

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 102
    move-object v4, v1

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 103
    return-void
.end method

.method protected checkWeight(I)I
    .locals 4

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;
    move v1, p1

    .local v1, "weight":I
    move v2, v1

    const v3, 0x186a0

    rem-int/2addr v2, v3

    move v0, v2

    .end local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;
    return v0
.end method

.method public parseInformation()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;->getInformation()Lcom/google/zxing/common/BitArray;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    const/16 v3, 0x54

    if-eq v2, v3, :cond_0

    .line 54
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2

    .line 57
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v2

    .line 59
    .local v1, "buf":Ljava/lang/StringBuilder;
    move-object v2, v0

    move-object v3, v1

    const/16 v4, 0x8

    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;->encodeCompressedGtin(Ljava/lang/StringBuilder;I)V

    .line 60
    move-object v2, v0

    move-object v3, v1

    const/16 v4, 0x30

    const/16 v5, 0x14

    invoke-virtual {v2, v3, v4, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;->encodeCompressedWeight(Ljava/lang/StringBuilder;II)V

    .line 61
    move-object v2, v0

    move-object v3, v1

    const/16 v4, 0x44

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;->encodeCompressedDate(Ljava/lang/StringBuilder;I)V

    .line 63
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;
    return-object v0
.end method
