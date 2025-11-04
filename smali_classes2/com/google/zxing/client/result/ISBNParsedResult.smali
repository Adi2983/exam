.class public final Lcom/google/zxing/client/result/ISBNParsedResult;
.super Lcom/google/zxing/client/result/ParsedResult;
.source "ISBNParsedResult.java"


# instance fields
.field private final isbn:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/ISBNParsedResult;
    move-object v1, p1

    .local v1, "isbn":Ljava/lang/String;
    move-object v2, v0

    sget-object v3, Lcom/google/zxing/client/result/ParsedResultType;->ISBN:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {v2, v3}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    .line 28
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/zxing/client/result/ISBNParsedResult;->isbn:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public getDisplayResult()Ljava/lang/String;
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/ISBNParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/ISBNParsedResult;->isbn:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/ISBNParsedResult;
    return-object v0
.end method

.method public getISBN()Ljava/lang/String;
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/ISBNParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/ISBNParsedResult;->isbn:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/ISBNParsedResult;
    return-object v0
.end method
