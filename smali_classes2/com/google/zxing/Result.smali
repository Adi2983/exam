.class public final Lcom/google/zxing/Result;
.super Ljava/lang/Object;
.source "Result.java"


# instance fields
.field private final format:Lcom/google/zxing/BarcodeFormat;

.field private final rawBytes:[B

.field private resultMetadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/ResultMetadataType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private resultPoints:[Lcom/google/zxing/ResultPoint;

.field private final text:Ljava/lang/String;

.field private final timestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V
    .locals 12

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/Result;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, p2

    .local v2, "rawBytes":[B
    move-object v3, p3

    .local v3, "resultPoints":[Lcom/google/zxing/ResultPoint;
    move-object/from16 v4, p4

    .local v4, "format":Lcom/google/zxing/BarcodeFormat;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct/range {v5 .. v11}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;J)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;J)V
    .locals 11

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/Result;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, p2

    .local v2, "rawBytes":[B
    move-object v3, p3

    .local v3, "resultPoints":[Lcom/google/zxing/ResultPoint;
    move-object v4, p4

    .local v4, "format":Lcom/google/zxing/BarcodeFormat;
    move-wide/from16 v5, p5

    .local v5, "timestamp":J
    move-object v7, v0

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    .line 48
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lcom/google/zxing/Result;->text:Ljava/lang/String;

    .line 49
    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Lcom/google/zxing/Result;->rawBytes:[B

    .line 50
    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Lcom/google/zxing/Result;->resultPoints:[Lcom/google/zxing/ResultPoint;

    .line 51
    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Lcom/google/zxing/Result;->format:Lcom/google/zxing/BarcodeFormat;

    .line 52
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/google/zxing/Result;->resultMetadata:Ljava/util/Map;

    .line 53
    move-object v7, v0

    move-wide v8, v5

    iput-wide v8, v7, Lcom/google/zxing/Result;->timestamp:J

    .line 54
    return-void
.end method


# virtual methods
.method public addResultPoints([Lcom/google/zxing/ResultPoint;)V
    .locals 9

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/Result;
    move-object v1, p1

    .local v1, "newPoints":[Lcom/google/zxing/ResultPoint;
    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/Result;->resultPoints:[Lcom/google/zxing/ResultPoint;

    move-object v2, v4

    .line 114
    .local v2, "oldPoints":[Lcom/google/zxing/ResultPoint;
    move-object v4, v2

    if-nez v4, :cond_1

    .line 115
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/zxing/Result;->resultPoints:[Lcom/google/zxing/ResultPoint;

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    array-length v4, v4

    if-lez v4, :cond_0

    .line 117
    move-object v4, v2

    array-length v4, v4

    move-object v5, v1

    array-length v5, v5

    add-int/2addr v4, v5

    new-array v4, v4, [Lcom/google/zxing/ResultPoint;

    move-object v3, v4

    .line 118
    .local v3, "allPoints":[Lcom/google/zxing/ResultPoint;
    move-object v4, v2

    const/4 v5, 0x0

    move-object v6, v3

    const/4 v7, 0x0

    move-object v8, v2

    array-length v8, v8

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v3

    move-object v7, v2

    array-length v7, v7

    move-object v8, v1

    array-length v8, v8

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/google/zxing/Result;->resultPoints:[Lcom/google/zxing/ResultPoint;

    goto :goto_0
.end method

.method public getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
    .locals 2

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/Result;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/Result;->format:Lcom/google/zxing/BarcodeFormat;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/Result;
    return-object v0
.end method

.method public getRawBytes()[B
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/Result;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/Result;->rawBytes:[B

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/Result;
    return-object v0
.end method

.method public getResultMetadata()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/ResultMetadataType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/Result;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/Result;->resultMetadata:Ljava/util/Map;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/Result;
    return-object v0
.end method

.method public getResultPoints()[Lcom/google/zxing/ResultPoint;
    .locals 2

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/Result;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/Result;->resultPoints:[Lcom/google/zxing/ResultPoint;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/Result;
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/Result;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/Result;->text:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/Result;
    return-object v0
.end method

.method public getTimestamp()J
    .locals 3

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/Result;
    move-object v1, v0

    iget-wide v1, v1, Lcom/google/zxing/Result;->timestamp:J

    move-wide v0, v1

    .end local v0    # "this":Lcom/google/zxing/Result;
    return-wide v0
.end method

.method public putAllMetadata(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/ResultMetadataType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/Result;
    move-object v1, p1

    .local v1, "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;>;"
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 104
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/Result;->resultMetadata:Ljava/util/Map;

    if-nez v2, :cond_1

    .line 105
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/zxing/Result;->resultMetadata:Ljava/util/Map;

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/Result;->resultMetadata:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V
    .locals 8

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/Result;
    move-object v1, p1

    .local v1, "type":Lcom/google/zxing/ResultMetadataType;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/Result;->resultMetadata:Ljava/util/Map;

    if-nez v3, :cond_0

    .line 97
    move-object v3, v0

    new-instance v4, Ljava/util/EnumMap;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-class v6, Lcom/google/zxing/ResultMetadataType;

    invoke-direct {v5, v6}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v4, v3, Lcom/google/zxing/Result;->resultMetadata:Ljava/util/Map;

    .line 99
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/Result;->resultMetadata:Ljava/util/Map;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 100
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/Result;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/Result;->text:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/Result;
    return-object v0
.end method
