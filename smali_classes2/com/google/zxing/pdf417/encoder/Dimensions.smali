.class public final Lcom/google/zxing/pdf417/encoder/Dimensions;
.super Ljava/lang/Object;
.source "Dimensions.java"


# instance fields
.field private final maxCols:I

.field private final maxRows:I

.field private final minCols:I

.field private final minRows:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 7

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/encoder/Dimensions;
    move v1, p1

    .local v1, "minCols":I
    move v2, p2

    .local v2, "maxCols":I
    move v3, p3

    .local v3, "minRows":I
    move v4, p4

    .local v4, "maxRows":I
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 32
    move-object v5, v0

    move v6, v1

    iput v6, v5, Lcom/google/zxing/pdf417/encoder/Dimensions;->minCols:I

    .line 33
    move-object v5, v0

    move v6, v2

    iput v6, v5, Lcom/google/zxing/pdf417/encoder/Dimensions;->maxCols:I

    .line 34
    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/google/zxing/pdf417/encoder/Dimensions;->minRows:I

    .line 35
    move-object v5, v0

    move v6, v4

    iput v6, v5, Lcom/google/zxing/pdf417/encoder/Dimensions;->maxRows:I

    .line 36
    return-void
.end method


# virtual methods
.method public getMaxCols()I
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/encoder/Dimensions;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/pdf417/encoder/Dimensions;->maxCols:I

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/pdf417/encoder/Dimensions;
    return v0
.end method

.method public getMaxRows()I
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/encoder/Dimensions;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/pdf417/encoder/Dimensions;->maxRows:I

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/pdf417/encoder/Dimensions;
    return v0
.end method

.method public getMinCols()I
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/encoder/Dimensions;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/pdf417/encoder/Dimensions;->minCols:I

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/pdf417/encoder/Dimensions;
    return v0
.end method

.method public getMinRows()I
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/encoder/Dimensions;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/pdf417/encoder/Dimensions;->minRows:I

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/pdf417/encoder/Dimensions;
    return v0
.end method
