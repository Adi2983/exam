.class abstract Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "AbstractDoCoMoResultParser.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method static matchDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 7

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "prefix":Ljava/lang/String;
    move-object v1, p1

    .local v1, "rawText":Ljava/lang/String;
    move v2, p2

    .local v2, "trim":Z
    move-object v3, v0

    move-object v4, v1

    const/16 v5, 0x3b

    move v6, v2

    invoke-static {v3, v4, v5, v6}, Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "prefix":Ljava/lang/String;
    return-object v0
.end method

.method static matchSingleDoCoMoPrefixedField(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "prefix":Ljava/lang/String;
    move-object v1, p1

    .local v1, "rawText":Ljava/lang/String;
    move v2, p2

    .local v2, "trim":Z
    move-object v3, v0

    move-object v4, v1

    const/16 v5, 0x3b

    move v6, v2

    invoke-static {v3, v4, v5, v6}, Lcom/google/zxing/client/result/AbstractDoCoMoResultParser;->matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "prefix":Ljava/lang/String;
    return-object v0
.end method
