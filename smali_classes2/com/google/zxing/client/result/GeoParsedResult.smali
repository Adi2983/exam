.class public final Lcom/google/zxing/client/result/GeoParsedResult;
.super Lcom/google/zxing/client/result/ParsedResult;
.source "GeoParsedResult.java"


# instance fields
.field private final altitude:D

.field private final latitude:D

.field private final longitude:D

.field private final query:Ljava/lang/String;


# direct methods
.method constructor <init>(DDDLjava/lang/String;)V
    .locals 13

    .prologue
    .line 30
    move-object v1, p0

    .local v1, "this":Lcom/google/zxing/client/result/GeoParsedResult;
    move-wide v2, p1

    .local v2, "latitude":D
    move-wide/from16 v4, p3

    .local v4, "longitude":D
    move-wide/from16 v6, p5

    .local v6, "altitude":D
    move-object/from16 v8, p7

    .local v8, "query":Ljava/lang/String;
    move-object v9, v1

    sget-object v10, Lcom/google/zxing/client/result/ParsedResultType;->GEO:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {v9, v10}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    .line 31
    move-object v9, v1

    move-wide v10, v2

    iput-wide v10, v9, Lcom/google/zxing/client/result/GeoParsedResult;->latitude:D

    .line 32
    move-object v9, v1

    move-wide v10, v4

    iput-wide v10, v9, Lcom/google/zxing/client/result/GeoParsedResult;->longitude:D

    .line 33
    move-object v9, v1

    move-wide v10, v6

    iput-wide v10, v9, Lcom/google/zxing/client/result/GeoParsedResult;->altitude:D

    .line 34
    move-object v9, v1

    move-object v10, v8

    iput-object v10, v9, Lcom/google/zxing/client/result/GeoParsedResult;->query:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public getAltitude()D
    .locals 3

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/GeoParsedResult;
    move-object v1, v0

    iget-wide v1, v1, Lcom/google/zxing/client/result/GeoParsedResult;->altitude:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/GeoParsedResult;
    return-wide v0
.end method

.method public getDisplayResult()Ljava/lang/String;
    .locals 8

    .prologue
    .line 84
    move-object v1, p0

    .local v1, "this":Lcom/google/zxing/client/result/GeoParsedResult;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/16 v5, 0x14

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v3

    .line 85
    .local v2, "result":Ljava/lang/StringBuilder;
    move-object v3, v2

    move-object v4, v1

    iget-wide v4, v4, Lcom/google/zxing/client/result/GeoParsedResult;->latitude:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 86
    move-object v3, v2

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 87
    move-object v3, v2

    move-object v4, v1

    iget-wide v4, v4, Lcom/google/zxing/client/result/GeoParsedResult;->longitude:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 88
    move-object v3, v1

    iget-wide v3, v3, Lcom/google/zxing/client/result/GeoParsedResult;->altitude:D

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_0

    .line 89
    move-object v3, v2

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 90
    move-object v3, v2

    move-object v4, v1

    iget-wide v4, v4, Lcom/google/zxing/client/result/GeoParsedResult;->altitude:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 91
    move-object v3, v2

    const/16 v4, 0x6d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 93
    :cond_0
    move-object v3, v1

    iget-object v3, v3, Lcom/google/zxing/client/result/GeoParsedResult;->query:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 94
    move-object v3, v2

    const-string/jumbo v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 95
    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, Lcom/google/zxing/client/result/GeoParsedResult;->query:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 96
    move-object v3, v2

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 98
    :cond_1
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Lcom/google/zxing/client/result/GeoParsedResult;
    return-object v1
.end method

.method public getGeoURI()Ljava/lang/String;
    .locals 8

    .prologue
    .line 38
    move-object v1, p0

    .local v1, "this":Lcom/google/zxing/client/result/GeoParsedResult;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v3

    .line 39
    .local v2, "result":Ljava/lang/StringBuilder;
    move-object v3, v2

    const-string/jumbo v4, "geo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 40
    move-object v3, v2

    move-object v4, v1

    iget-wide v4, v4, Lcom/google/zxing/client/result/GeoParsedResult;->latitude:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 41
    move-object v3, v2

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 42
    move-object v3, v2

    move-object v4, v1

    iget-wide v4, v4, Lcom/google/zxing/client/result/GeoParsedResult;->longitude:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 43
    move-object v3, v1

    iget-wide v3, v3, Lcom/google/zxing/client/result/GeoParsedResult;->altitude:D

    const-wide/16 v5, 0x0

    cmpl-double v3, v3, v5

    if-lez v3, :cond_0

    .line 44
    move-object v3, v2

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 45
    move-object v3, v2

    move-object v4, v1

    iget-wide v4, v4, Lcom/google/zxing/client/result/GeoParsedResult;->altitude:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 47
    :cond_0
    move-object v3, v1

    iget-object v3, v3, Lcom/google/zxing/client/result/GeoParsedResult;->query:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 48
    move-object v3, v2

    const/16 v4, 0x3f

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 49
    move-object v3, v2

    move-object v4, v1

    iget-object v4, v4, Lcom/google/zxing/client/result/GeoParsedResult;->query:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 51
    :cond_1
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Lcom/google/zxing/client/result/GeoParsedResult;
    return-object v1
.end method

.method public getLatitude()D
    .locals 3

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/GeoParsedResult;
    move-object v1, v0

    iget-wide v1, v1, Lcom/google/zxing/client/result/GeoParsedResult;->latitude:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/GeoParsedResult;
    return-wide v0
.end method

.method public getLongitude()D
    .locals 3

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/GeoParsedResult;
    move-object v1, v0

    iget-wide v1, v1, Lcom/google/zxing/client/result/GeoParsedResult;->longitude:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/GeoParsedResult;
    return-wide v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 2

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/GeoParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/GeoParsedResult;->query:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/GeoParsedResult;
    return-object v0
.end method
