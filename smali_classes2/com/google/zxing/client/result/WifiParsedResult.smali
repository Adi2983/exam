.class public final Lcom/google/zxing/client/result/WifiParsedResult;
.super Lcom/google/zxing/client/result/ParsedResult;
.source "WifiParsedResult.java"


# instance fields
.field private final hidden:Z

.field private final networkEncryption:Ljava/lang/String;

.field private final password:Ljava/lang/String;

.field private final ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/WifiParsedResult;
    move-object v1, p1

    .local v1, "networkEncryption":Ljava/lang/String;
    move-object v2, p2

    .local v2, "ssid":Ljava/lang/String;
    move-object v3, p3

    .local v3, "password":Ljava/lang/String;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/zxing/client/result/WifiParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/WifiParsedResult;
    move-object v1, p1

    .local v1, "networkEncryption":Ljava/lang/String;
    move-object v2, p2

    .local v2, "ssid":Ljava/lang/String;
    move-object v3, p3

    .local v3, "password":Ljava/lang/String;
    move v4, p4

    .local v4, "hidden":Z
    move-object v5, v0

    sget-object v6, Lcom/google/zxing/client/result/ParsedResultType;->WIFI:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {v5, v6}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    .line 35
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/google/zxing/client/result/WifiParsedResult;->ssid:Ljava/lang/String;

    .line 36
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/google/zxing/client/result/WifiParsedResult;->networkEncryption:Ljava/lang/String;

    .line 37
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/google/zxing/client/result/WifiParsedResult;->password:Ljava/lang/String;

    .line 38
    move-object v5, v0

    move v6, v4

    iput-boolean v6, v5, Lcom/google/zxing/client/result/WifiParsedResult;->hidden:Z

    .line 39
    return-void
.end method


# virtual methods
.method public getDisplayResult()Ljava/lang/String;
    .locals 6

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/WifiParsedResult;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0x50

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v2

    .line 60
    .local v1, "result":Ljava/lang/StringBuilder;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/client/result/WifiParsedResult;->ssid:Ljava/lang/String;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/zxing/client/result/WifiParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 61
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/client/result/WifiParsedResult;->networkEncryption:Ljava/lang/String;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/zxing/client/result/WifiParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 62
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/client/result/WifiParsedResult;->password:Ljava/lang/String;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/zxing/client/result/WifiParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 63
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/zxing/client/result/WifiParsedResult;->hidden:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/zxing/client/result/WifiParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 64
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/zxing/client/result/WifiParsedResult;
    return-object v0
.end method

.method public getNetworkEncryption()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/WifiParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/WifiParsedResult;->networkEncryption:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/WifiParsedResult;
    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/WifiParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/WifiParsedResult;->password:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/WifiParsedResult;
    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/WifiParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/WifiParsedResult;->ssid:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/WifiParsedResult;
    return-object v0
.end method

.method public isHidden()Z
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/WifiParsedResult;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/zxing/client/result/WifiParsedResult;->hidden:Z

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/WifiParsedResult;
    return v0
.end method
