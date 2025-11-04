.class public final Lcom/google/zxing/client/result/ProductParsedResult;
.super Lcom/google/zxing/client/result/ParsedResult;
.source "ProductParsedResult.java"


# instance fields
.field private final normalizedProductID:Ljava/lang/String;

.field private final productID:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/ProductParsedResult;
    move-object v1, p1

    .local v1, "productID":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/client/result/ProductParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/ProductParsedResult;
    move-object v1, p1

    .local v1, "productID":Ljava/lang/String;
    move-object v2, p2

    .local v2, "normalizedProductID":Ljava/lang/String;
    move-object v3, v0

    sget-object v4, Lcom/google/zxing/client/result/ParsedResultType;->PRODUCT:Lcom/google/zxing/client/result/ParsedResultType;

    invoke-direct {v3, v4}, Lcom/google/zxing/client/result/ParsedResult;-><init>(Lcom/google/zxing/client/result/ParsedResultType;)V

    .line 33
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/zxing/client/result/ProductParsedResult;->productID:Ljava/lang/String;

    .line 34
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/zxing/client/result/ProductParsedResult;->normalizedProductID:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public getDisplayResult()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/ProductParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/ProductParsedResult;->productID:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/ProductParsedResult;
    return-object v0
.end method

.method public getNormalizedProductID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/ProductParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/ProductParsedResult;->normalizedProductID:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/ProductParsedResult;
    return-object v0
.end method

.method public getProductID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/ProductParsedResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/result/ProductParsedResult;->productID:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/result/ProductParsedResult;
    return-object v0
.end method
