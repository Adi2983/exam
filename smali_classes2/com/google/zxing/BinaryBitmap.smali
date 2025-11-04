.class public final Lcom/google/zxing/BinaryBitmap;
.super Ljava/lang/Object;
.source "BinaryBitmap.java"


# instance fields
.field private final binarizer:Lcom/google/zxing/Binarizer;

.field private matrix:Lcom/google/zxing/common/BitMatrix;


# direct methods
.method public constructor <init>(Lcom/google/zxing/Binarizer;)V
    .locals 6

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/BinaryBitmap;
    move-object v1, p1

    .local v1, "binarizer":Lcom/google/zxing/Binarizer;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 34
    move-object v2, v1

    if-nez v2, :cond_0

    .line 35
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Binarizer must be non-null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 37
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/zxing/BinaryBitmap;->binarizer:Lcom/google/zxing/Binarizer;

    .line 38
    return-void
.end method


# virtual methods
.method public crop(IIII)Lcom/google/zxing/BinaryBitmap;
    .locals 12

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/BinaryBitmap;
    move v1, p1

    .local v1, "left":I
    move v2, p2

    .local v2, "top":I
    move v3, p3

    .local v3, "width":I
    move/from16 v4, p4

    .local v4, "height":I
    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/BinaryBitmap;->binarizer:Lcom/google/zxing/Binarizer;

    invoke-virtual {v6}, Lcom/google/zxing/Binarizer;->getLuminanceSource()Lcom/google/zxing/LuminanceSource;

    move-result-object v6

    move v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/zxing/LuminanceSource;->crop(IIII)Lcom/google/zxing/LuminanceSource;

    move-result-object v6

    move-object v5, v6

    .line 107
    .local v5, "newSource":Lcom/google/zxing/LuminanceSource;
    new-instance v6, Lcom/google/zxing/BinaryBitmap;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    iget-object v8, v8, Lcom/google/zxing/BinaryBitmap;->binarizer:Lcom/google/zxing/Binarizer;

    move-object v9, v5

    invoke-virtual {v8, v9}, Lcom/google/zxing/Binarizer;->createBinarizer(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Binarizer;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    move-object v0, v6

    .end local v0    # "this":Lcom/google/zxing/BinaryBitmap;
    return-object v0
.end method

.method public getBlackMatrix()Lcom/google/zxing/common/BitMatrix;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/BinaryBitmap;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/BinaryBitmap;->matrix:Lcom/google/zxing/common/BitMatrix;

    if-nez v1, :cond_0

    .line 83
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/BinaryBitmap;->binarizer:Lcom/google/zxing/Binarizer;

    invoke-virtual {v2}, Lcom/google/zxing/Binarizer;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v2

    iput-object v2, v1, Lcom/google/zxing/BinaryBitmap;->matrix:Lcom/google/zxing/common/BitMatrix;

    .line 85
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/BinaryBitmap;->matrix:Lcom/google/zxing/common/BitMatrix;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/BinaryBitmap;
    return-object v0
.end method

.method public getBlackRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/BinaryBitmap;
    move v1, p1

    .local v1, "y":I
    move-object v2, p2

    .local v2, "row":Lcom/google/zxing/common/BitArray;
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/BinaryBitmap;->binarizer:Lcom/google/zxing/Binarizer;

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/google/zxing/Binarizer;->getBlackRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/google/zxing/BinaryBitmap;
    return-object v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/BinaryBitmap;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/BinaryBitmap;->binarizer:Lcom/google/zxing/Binarizer;

    invoke-virtual {v1}, Lcom/google/zxing/Binarizer;->getHeight()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/BinaryBitmap;
    return v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/BinaryBitmap;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/BinaryBitmap;->binarizer:Lcom/google/zxing/Binarizer;

    invoke-virtual {v1}, Lcom/google/zxing/Binarizer;->getWidth()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/BinaryBitmap;
    return v0
.end method

.method public isCropSupported()Z
    .locals 2

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/BinaryBitmap;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/BinaryBitmap;->binarizer:Lcom/google/zxing/Binarizer;

    invoke-virtual {v1}, Lcom/google/zxing/Binarizer;->getLuminanceSource()Lcom/google/zxing/LuminanceSource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/LuminanceSource;->isCropSupported()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/BinaryBitmap;
    return v0
.end method

.method public isRotateSupported()Z
    .locals 2

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/BinaryBitmap;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/BinaryBitmap;->binarizer:Lcom/google/zxing/Binarizer;

    invoke-virtual {v1}, Lcom/google/zxing/Binarizer;->getLuminanceSource()Lcom/google/zxing/LuminanceSource;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/LuminanceSource;->isRotateSupported()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/BinaryBitmap;
    return v0
.end method

.method public rotateCounterClockwise()Lcom/google/zxing/BinaryBitmap;
    .locals 7

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/BinaryBitmap;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/BinaryBitmap;->binarizer:Lcom/google/zxing/Binarizer;

    invoke-virtual {v2}, Lcom/google/zxing/Binarizer;->getLuminanceSource()Lcom/google/zxing/LuminanceSource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/LuminanceSource;->rotateCounterClockwise()Lcom/google/zxing/LuminanceSource;

    move-result-object v2

    move-object v1, v2

    .line 125
    .local v1, "newSource":Lcom/google/zxing/LuminanceSource;
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/BinaryBitmap;->binarizer:Lcom/google/zxing/Binarizer;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/google/zxing/Binarizer;->createBinarizer(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Binarizer;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/google/zxing/BinaryBitmap;
    return-object v0
.end method

.method public rotateCounterClockwise45()Lcom/google/zxing/BinaryBitmap;
    .locals 7

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/BinaryBitmap;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/BinaryBitmap;->binarizer:Lcom/google/zxing/Binarizer;

    invoke-virtual {v2}, Lcom/google/zxing/Binarizer;->getLuminanceSource()Lcom/google/zxing/LuminanceSource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/zxing/LuminanceSource;->rotateCounterClockwise45()Lcom/google/zxing/LuminanceSource;

    move-result-object v2

    move-object v1, v2

    .line 136
    .local v1, "newSource":Lcom/google/zxing/LuminanceSource;
    new-instance v2, Lcom/google/zxing/BinaryBitmap;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/BinaryBitmap;->binarizer:Lcom/google/zxing/Binarizer;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/google/zxing/Binarizer;->createBinarizer(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Binarizer;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    move-object v0, v2

    .end local v0    # "this":Lcom/google/zxing/BinaryBitmap;
    return-object v0
.end method
