.class public abstract Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;
.super Ljava/lang/Object;
.source "AbstractExpandedDecoder.java"


# instance fields
.field private final generalDecoder:Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;

.field private final information:Lcom/google/zxing/common/BitArray;


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitArray;)V
    .locals 7

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;
    move-object v1, p1

    .local v1, "information":Lcom/google/zxing/common/BitArray;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 42
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->information:Lcom/google/zxing/common/BitArray;

    .line 43
    move-object v2, v0

    new-instance v3, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;-><init>(Lcom/google/zxing/common/BitArray;)V

    iput-object v3, v2, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->generalDecoder:Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;

    .line 44
    return-void
.end method

.method public static createDecoder(Lcom/google/zxing/common/BitArray;)Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;
    .locals 10

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "information":Lcom/google/zxing/common/BitArray;
    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 58
    new-instance v4, Lcom/google/zxing/oned/rss/expanded/decoders/AI01AndOtherAIs;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01AndOtherAIs;-><init>(Lcom/google/zxing/common/BitArray;)V

    move-object v0, v4

    .line 86
    .end local v0    # "information":Lcom/google/zxing/common/BitArray;
    .local v1, "fourBitEncodationMethod":I
    :goto_0
    return-object v0

    .line 60
    .end local v1    # "fourBitEncodationMethod":I
    .restart local v0    # "information":Lcom/google/zxing/common/BitArray;
    :cond_0
    move-object v4, v0

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 61
    new-instance v4, Lcom/google/zxing/oned/rss/expanded/decoders/AnyAIDecoder;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/AnyAIDecoder;-><init>(Lcom/google/zxing/common/BitArray;)V

    move-object v0, v4

    goto :goto_0

    .line 64
    :cond_1
    move-object v4, v0

    const/4 v5, 0x1

    const/4 v6, 0x4

    invoke-static {v4, v5, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(Lcom/google/zxing/common/BitArray;II)I

    move-result v4

    move v1, v4

    .line 66
    .restart local v1    # "fourBitEncodationMethod":I
    move v4, v1

    packed-switch v4, :pswitch_data_0

    .line 71
    move-object v4, v0

    const/4 v5, 0x1

    const/4 v6, 0x5

    invoke-static {v4, v5, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(Lcom/google/zxing/common/BitArray;II)I

    move-result v4

    move v2, v4

    .line 72
    .local v2, "fiveBitEncodationMethod":I
    move v4, v2

    packed-switch v4, :pswitch_data_1

    .line 77
    move-object v4, v0

    const/4 v5, 0x1

    const/4 v6, 0x7

    invoke-static {v4, v5, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;->extractNumericValueFromBitArray(Lcom/google/zxing/common/BitArray;II)I

    move-result v4

    move v3, v4

    .line 78
    .local v3, "sevenBitEncodationMethod":I
    move v4, v3

    packed-switch v4, :pswitch_data_2

    .line 89
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unknown decoder: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 67
    .end local v2    # "fiveBitEncodationMethod":I
    .end local v3    # "sevenBitEncodationMethod":I
    :pswitch_0
    new-instance v4, Lcom/google/zxing/oned/rss/expanded/decoders/AI013103decoder;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013103decoder;-><init>(Lcom/google/zxing/common/BitArray;)V

    move-object v0, v4

    goto :goto_0

    .line 68
    :pswitch_1
    new-instance v4, Lcom/google/zxing/oned/rss/expanded/decoders/AI01320xDecoder;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01320xDecoder;-><init>(Lcom/google/zxing/common/BitArray;)V

    move-object v0, v4

    goto :goto_0

    .line 73
    .restart local v2    # "fiveBitEncodationMethod":I
    :pswitch_2
    new-instance v4, Lcom/google/zxing/oned/rss/expanded/decoders/AI01392xDecoder;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01392xDecoder;-><init>(Lcom/google/zxing/common/BitArray;)V

    move-object v0, v4

    goto :goto_0

    .line 74
    :pswitch_3
    new-instance v4, Lcom/google/zxing/oned/rss/expanded/decoders/AI01393xDecoder;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/google/zxing/oned/rss/expanded/decoders/AI01393xDecoder;-><init>(Lcom/google/zxing/common/BitArray;)V

    move-object v0, v4

    goto/16 :goto_0

    .line 79
    .restart local v3    # "sevenBitEncodationMethod":I
    :pswitch_4
    new-instance v4, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    const-string/jumbo v7, "310"

    const-string/jumbo v8, "11"

    invoke-direct {v5, v6, v7, v8}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;-><init>(Lcom/google/zxing/common/BitArray;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    goto/16 :goto_0

    .line 80
    :pswitch_5
    new-instance v4, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    const-string/jumbo v7, "320"

    const-string/jumbo v8, "11"

    invoke-direct {v5, v6, v7, v8}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;-><init>(Lcom/google/zxing/common/BitArray;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    goto/16 :goto_0

    .line 81
    :pswitch_6
    new-instance v4, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    const-string/jumbo v7, "310"

    const-string/jumbo v8, "13"

    invoke-direct {v5, v6, v7, v8}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;-><init>(Lcom/google/zxing/common/BitArray;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    goto/16 :goto_0

    .line 82
    :pswitch_7
    new-instance v4, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    const-string/jumbo v7, "320"

    const-string/jumbo v8, "13"

    invoke-direct {v5, v6, v7, v8}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;-><init>(Lcom/google/zxing/common/BitArray;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    goto/16 :goto_0

    .line 83
    :pswitch_8
    new-instance v4, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    const-string/jumbo v7, "310"

    const-string/jumbo v8, "15"

    invoke-direct {v5, v6, v7, v8}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;-><init>(Lcom/google/zxing/common/BitArray;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    goto/16 :goto_0

    .line 84
    :pswitch_9
    new-instance v4, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    const-string/jumbo v7, "320"

    const-string/jumbo v8, "15"

    invoke-direct {v5, v6, v7, v8}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;-><init>(Lcom/google/zxing/common/BitArray;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    goto/16 :goto_0

    .line 85
    :pswitch_a
    new-instance v4, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    const-string/jumbo v7, "310"

    const-string/jumbo v8, "17"

    invoke-direct {v5, v6, v7, v8}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;-><init>(Lcom/google/zxing/common/BitArray;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    goto/16 :goto_0

    .line 86
    :pswitch_b
    new-instance v4, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    const-string/jumbo v7, "320"

    const-string/jumbo v8, "17"

    invoke-direct {v5, v6, v7, v8}, Lcom/google/zxing/oned/rss/expanded/decoders/AI013x0x1xDecoder;-><init>(Lcom/google/zxing/common/BitArray;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    goto/16 :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 72
    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 78
    :pswitch_data_2
    .packed-switch 0x38
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method protected final getGeneralDecoder()Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->generalDecoder:Lcom/google/zxing/oned/rss/expanded/decoders/GeneralAppIdDecoder;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;
    return-object v0
.end method

.method protected final getInformation()Lcom/google/zxing/common/BitArray;
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;->information:Lcom/google/zxing/common/BitArray;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/AbstractExpandedDecoder;
    return-object v0
.end method

.method public abstract parseInformation()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation
.end method
