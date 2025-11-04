.class public final Lcom/google/zxing/client/result/TextParsedResult;
.super Lcom/google/zxing/client/result/ParsedResult;
.source "TextParsedResult.java"


# instance fields
.field private final language:Ljava/lang/String;

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/TextParsedResult;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, p2

    .local v2, "language":Ljava/lang/String;
    move-object v3, v0

    sget-object v4, Lcom/google/zxing/client/result/ParsedResultType;->TEXT:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {v3, v4}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    .line 32
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/zxing/client/result/TextParsedResult;->text:Ljava/lang/String;

    .line 33
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/zxing/client/result/TextParsedResult;->language:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public getDisplayResult()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/TextParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/TextParsedResult;->text:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/TextParsedResult;
    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/TextParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/TextParsedResult;->language:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/TextParsedResult;
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/TextParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/TextParsedResult;->text:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/TextParsedResult;
    return-object v0
.end method
