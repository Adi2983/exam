.class public abstract Lcom/google/zxing/client/result/ParsedResult;
.super Ljava/lang/Object;
.source "ParsedResult.java"


# instance fields
.field private final type:Lcom/google/zxing/client/result/ParsedResultType;


# direct methods
.method protected constructor <init>(Lcom/google/zxing/client/result/ParsedResultType;)V
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/ParsedResult;
    move-object v1, p1

    .local v1, "type":Lcom/google/zxing/client/result/ParsedResultType;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 37
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/zxing/client/result/ParsedResult;->type:Lcom/google/zxing/client/result/ParsedResultType;

    .line 38
    return-void
.end method

.method public static maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 4

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "value":Ljava/lang/String;
    move-object v1, p1

    .local v1, "result":Ljava/lang/StringBuilder;
    move-object v2, v0

    if-eqz v2, :cond_1

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 54
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 55
    move-object v2, v1

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 57
    :cond_0
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 59
    :cond_1
    return-void
.end method

.method public static maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 8

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "value":[Ljava/lang/String;
    move-object v1, p1

    .local v1, "result":Ljava/lang/StringBuilder;
    move-object v6, v0

    if-eqz v6, :cond_2

    .line 63
    move-object v6, v0

    move-object v2, v6

    .local v2, "arr$":[Ljava/lang/String;
    move-object v6, v2

    array-length v6, v6

    move v3, v6

    .local v3, "len$":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i$":I
    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_2

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 64
    .local v5, "s":Ljava/lang/String;
    move-object v6, v5

    if-eqz v6, :cond_1

    move-object v6, v5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 65
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 66
    move-object v6, v1

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 68
    :cond_0
    move-object v6, v1

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 63
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 72
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    .end local v5    # "s":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public abstract getDisplayResult()Ljava/lang/String;
.end method

.method public final getType()Lcom/google/zxing/client/result/ParsedResultType;
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/ParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/ParsedResult;->type:Lcom/google/zxing/client/result/ParsedResultType;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/ParsedResult;
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/ParsedResult;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/zxing/client/result/ParsedResult;->getDisplayResult()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/ParsedResult;
    return-object v0
.end method
