.class public final Lcom/google/zxing/client/android/result/ResultHandlerFactory;
.super Ljava/lang/Object;
.source "ResultHandlerFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/result/ResultHandlerFactory;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static makeResultHandler(Landroid/app/Activity;Lcom/google/zxing/Result;)Lcom/google/zxing/client/android/result/ResultHandler;
    .locals 9

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "activity":Landroid/app/Activity;
    move-object v1, p1

    .local v1, "rawResult":Lcom/google/zxing/Result;
    move-object v3, v1

    invoke-static {v3}, Lcom/google/zxing/client/android/result/ResultHandlerFactory;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v3

    move-object v2, v3

    .line 36
    .local v2, "result":Lcom/google/zxing/client/result/ParsedResult;
    new-instance v3, Lcom/google/zxing/client/android/result/TextResultHandler;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v2

    move-object v7, v1

    invoke-direct {v4, v5, v6, v7}, Lcom/google/zxing/client/android/result/TextResultHandler;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;Lcom/google/zxing/Result;)V

    move-object v0, v3

    .end local v0    # "activity":Landroid/app/Activity;
    return-object v0
.end method

.method private static parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "rawResult":Lcom/google/zxing/Result;
    move-object v1, v0

    invoke-static {v1}, Lcom/google/zxing/client/result/ResultParser;->parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "rawResult":Lcom/google/zxing/Result;
    return-object v0
.end method
