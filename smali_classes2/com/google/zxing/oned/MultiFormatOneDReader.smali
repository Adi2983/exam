.class public final Lcom/google/zxing/oned/MultiFormatOneDReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "MultiFormatOneDReader.java"


# instance fields
.field private final readers:[Lcom/google/zxing/oned/OneDReader;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/MultiFormatOneDReader;
    move-object v1, p1

    .local v1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object v5, v0

    invoke-direct {v5}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 42
    move-object v5, v1

    if-nez v5, :cond_a

    const/4 v5, 0x0

    :goto_0
    move-object v2, v5

    .line 44
    .local v2, "possibleFormats":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/BarcodeFormat;>;"
    move-object v5, v1

    if-eqz v5, :cond_b

    move-object v5, v1

    sget-object v6, Lcom/google/zxing/DecodeHintType;->ASSUME_CODE_39_CHECK_DIGIT:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_b

    const/4 v5, 0x1

    :goto_1
    move v3, v5

    .line 46
    .local v3, "useCode39CheckDigit":Z
    new-instance v5, Ljava/util/ArrayList;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v5

    .line 47
    .local v4, "readers":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/oned/OneDReader;>;"
    move-object v5, v2

    if-eqz v5, :cond_8

    .line 48
    move-object v5, v2

    sget-object v6, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v5, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v2

    sget-object v6, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v5, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v2

    sget-object v6, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v5, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v2

    sget-object v6, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v5, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 52
    :cond_0
    move-object v5, v4

    new-instance v6, Lcom/google/zxing/oned/MultiFormatUPCEANReader;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v1

    invoke-direct {v7, v8}, Lcom/google/zxing/oned/MultiFormatUPCEANReader;-><init>(Ljava/util/Map;)V

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 54
    :cond_1
    move-object v5, v2

    sget-object v6, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v5, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 55
    move-object v5, v4

    new-instance v6, Lcom/google/zxing/oned/Code39Reader;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move v8, v3

    invoke-direct {v7, v8}, Lcom/google/zxing/oned/Code39Reader;-><init>(Z)V

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 57
    :cond_2
    move-object v5, v2

    sget-object v6, Lcom/google/zxing/BarcodeFormat;->CODE_93:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v5, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 58
    move-object v5, v4

    new-instance v6, Lcom/google/zxing/oned/Code93Reader;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Lcom/google/zxing/oned/Code93Reader;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 60
    :cond_3
    move-object v5, v2

    sget-object v6, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v5, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 61
    move-object v5, v4

    new-instance v6, Lcom/google/zxing/oned/Code128Reader;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Lcom/google/zxing/oned/Code128Reader;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 63
    :cond_4
    move-object v5, v2

    sget-object v6, Lcom/google/zxing/BarcodeFormat;->ITF:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v5, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 64
    move-object v5, v4

    new-instance v6, Lcom/google/zxing/oned/ITFReader;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Lcom/google/zxing/oned/ITFReader;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 66
    :cond_5
    move-object v5, v2

    sget-object v6, Lcom/google/zxing/BarcodeFormat;->CODABAR:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v5, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 67
    move-object v5, v4

    new-instance v6, Lcom/google/zxing/oned/CodaBarReader;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Lcom/google/zxing/oned/CodaBarReader;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 69
    :cond_6
    move-object v5, v2

    sget-object v6, Lcom/google/zxing/BarcodeFormat;->RSS_14:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v5, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 70
    move-object v5, v4

    new-instance v6, Lcom/google/zxing/oned/rss/RSS14Reader;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Lcom/google/zxing/oned/rss/RSS14Reader;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 72
    :cond_7
    move-object v5, v2

    sget-object v6, Lcom/google/zxing/BarcodeFormat;->RSS_EXPANDED:Lcom/google/zxing/BarcodeFormat;

    invoke-interface {v5, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 73
    move-object v5, v4

    new-instance v6, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 76
    :cond_8
    move-object v5, v4

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 77
    move-object v5, v4

    new-instance v6, Lcom/google/zxing/oned/MultiFormatUPCEANReader;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v1

    invoke-direct {v7, v8}, Lcom/google/zxing/oned/MultiFormatUPCEANReader;-><init>(Ljava/util/Map;)V

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 78
    move-object v5, v4

    new-instance v6, Lcom/google/zxing/oned/Code39Reader;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Lcom/google/zxing/oned/Code39Reader;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 79
    move-object v5, v4

    new-instance v6, Lcom/google/zxing/oned/CodaBarReader;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Lcom/google/zxing/oned/CodaBarReader;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 80
    move-object v5, v4

    new-instance v6, Lcom/google/zxing/oned/Code93Reader;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Lcom/google/zxing/oned/Code93Reader;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 81
    move-object v5, v4

    new-instance v6, Lcom/google/zxing/oned/Code128Reader;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Lcom/google/zxing/oned/Code128Reader;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 82
    move-object v5, v4

    new-instance v6, Lcom/google/zxing/oned/ITFReader;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Lcom/google/zxing/oned/ITFReader;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 83
    move-object v5, v4

    new-instance v6, Lcom/google/zxing/oned/rss/RSS14Reader;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Lcom/google/zxing/oned/rss/RSS14Reader;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 84
    move-object v5, v4

    new-instance v6, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Lcom/google/zxing/oned/rss/expanded/RSSExpandedReader;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 86
    :cond_9
    move-object v5, v0

    move-object v6, v4

    move-object v7, v4

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v7

    new-array v7, v7, [Lcom/google/zxing/oned/OneDReader;

    invoke-interface {v6, v7}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/google/zxing/oned/OneDReader;

    iput-object v6, v5, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:[Lcom/google/zxing/oned/OneDReader;

    .line 87
    return-void

    .line 42
    .end local v2    # "possibleFormats":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/BarcodeFormat;>;"
    .end local v3    # "useCode39CheckDigit":Z
    .end local v4    # "readers":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/oned/OneDReader;>;"
    :cond_a
    move-object v5, v1

    sget-object v6, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    goto/16 :goto_0

    .line 44
    .restart local v2    # "possibleFormats":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/BarcodeFormat;>;"
    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_1
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/MultiFormatOneDReader;
    move v1, p1

    .local v1, "rowNumber":I
    move-object v2, p2

    .local v2, "row":Lcom/google/zxing/common/BitArray;
    move-object/from16 v3, p3

    .local v3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object v9, v0

    iget-object v9, v9, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:[Lcom/google/zxing/oned/OneDReader;

    move-object v4, v9

    .local v4, "arr$":[Lcom/google/zxing/oned/OneDReader;
    move-object v9, v4

    array-length v9, v9

    move v5, v9

    .local v5, "len$":I
    const/4 v9, 0x0

    move v6, v9

    .local v6, "i$":I
    :goto_0
    move v9, v6

    move v10, v5

    if-ge v9, v10, :cond_0

    move-object v9, v4

    move v10, v6

    aget-object v9, v9, v10

    move-object v7, v9

    .line 95
    .local v7, "reader":Lcom/google/zxing/oned/OneDReader;
    move-object v9, v7

    move v10, v1

    move-object v11, v2

    move-object v12, v3

    :try_start_0
    invoke-virtual {v9, v10, v11, v12}, Lcom/google/zxing/oned/OneDReader;->decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    move-object v0, v9

    .end local v0    # "this":Lcom/google/zxing/oned/MultiFormatOneDReader;
    return-object v0

    .line 96
    .restart local v0    # "this":Lcom/google/zxing/oned/MultiFormatOneDReader;
    :catch_0
    move-exception v9

    move-object v8, v9

    .line 93
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 101
    .end local v7    # "reader":Lcom/google/zxing/oned/OneDReader;
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9
.end method

.method public reset()V
    .locals 7

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/MultiFormatOneDReader;
    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/oned/MultiFormatOneDReader;->readers:[Lcom/google/zxing/oned/OneDReader;

    move-object v1, v5

    .local v1, "arr$":[Lcom/google/zxing/oned/OneDReader;
    move-object v5, v1

    array-length v5, v5

    move v2, v5

    .local v2, "len$":I
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i$":I
    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_0

    move-object v5, v1

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    .line 107
    .local v4, "reader":Lcom/google/zxing/Reader;
    move-object v5, v4

    invoke-interface {v5}, Lcom/google/zxing/Reader;->reset()V

    .line 106
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 109
    .end local v4    # "reader":Lcom/google/zxing/Reader;
    :cond_0
    return-void
.end method
