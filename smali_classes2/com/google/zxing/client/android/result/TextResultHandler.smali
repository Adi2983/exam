.class public final Lcom/google/zxing/client/android/result/TextResultHandler;
.super Lcom/google/zxing/client/android/result/ResultHandler;
.source "TextResultHandler.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;Lcom/google/zxing/Result;)V
    .locals 8

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/result/TextResultHandler;
    move-object v1, p1

    .local v1, "activity":Landroid/app/Activity;
    move-object v2, p2

    .local v2, "result":Lcom/google/zxing/client/result/ParsedResult;
    move-object v3, p3

    .local v3, "rawResult":Lcom/google/zxing/Result;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/google/zxing/client/android/result/ResultHandler;-><init>(Landroid/app/Activity;Lcom/google/zxing/client/result/ParsedResult;Lcom/google/zxing/Result;)V

    .line 33
    return-void
.end method


# virtual methods
.method public getButtonCount()I
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/result/TextResultHandler;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/android/result/TextResultHandler;
    return v0
.end method

.method public getButtonText(I)I
    .locals 3

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/result/TextResultHandler;
    move v1, p1

    .local v1, "index":I
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lcom/google/zxing/client/android/result/TextResultHandler;
    return v0
.end method

.method public getDisplayTitle()I
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/result/TextResultHandler;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/android/result/TextResultHandler;
    return v0
.end method

.method public handleButtonPress(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 47
    return-void
.end method
