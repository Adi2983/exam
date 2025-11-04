.class public final Lcom/google/zxing/client/result/TelParsedResult;
.super Lcom/google/zxing/client/result/ParsedResult;
.source "TelParsedResult.java"


# instance fields
.field private final number:Ljava/lang/String;

.field private final telURI:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 29
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/TelParsedResult;
    move-object v1, p1

    .local v1, "number":Ljava/lang/String;
    move-object v2, p2

    .local v2, "telURI":Ljava/lang/String;
    move-object v3, p3

    .local v3, "title":Ljava/lang/String;
    move-object v4, v0

    sget-object v5, Lcom/google/zxing/client/result/ParsedResultType;->TEL:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {v4, v5}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    .line 30
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/zxing/client/result/TelParsedResult;->number:Ljava/lang/String;

    .line 31
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/google/zxing/client/result/TelParsedResult;->telURI:Ljava/lang/String;

    .line 32
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/google/zxing/client/result/TelParsedResult;->title:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public getDisplayResult()Ljava/lang/String;
    .locals 6

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/TelParsedResult;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v2

    .line 50
    .local v1, "result":Ljava/lang/StringBuilder;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/client/result/TelParsedResult;->number:Ljava/lang/String;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/zxing/client/result/TelParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 51
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/client/result/TelParsedResult;->title:Ljava/lang/String;

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/zxing/client/result/TelParsedResult;->maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 52
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/zxing/client/result/TelParsedResult;
    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/TelParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/TelParsedResult;->number:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/TelParsedResult;
    return-object v0
.end method

.method public getTelURI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/TelParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/TelParsedResult;->telURI:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/TelParsedResult;
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/TelParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/TelParsedResult;->title:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/TelParsedResult;
    return-object v0
.end method
