.class final Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;
.super Ljava/lang/Object;
.source "BarcodeMatrix.java"


# instance fields
.field private currentRow:I

.field private final height:I

.field private final matrix:[Lcom/google/zxing/pdf417/encoder/BarcodeRow;

.field private final width:I


# direct methods
.method constructor <init>(II)V
    .locals 12

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;
    move v1, p1

    .local v1, "height":I
    move v2, p2

    .local v2, "width":I
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 36
    move-object v5, v0

    move v6, v1

    const/4 v7, 0x2

    add-int/lit8 v6, v6, 0x2

    new-array v6, v6, [Lcom/google/zxing/pdf417/encoder/BarcodeRow;

    iput-object v6, v5, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->matrix:[Lcom/google/zxing/pdf417/encoder/BarcodeRow;

    .line 38
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->matrix:[Lcom/google/zxing/pdf417/encoder/BarcodeRow;

    array-length v5, v5

    move v4, v5

    .local v4, "matrixLength":I
    :goto_0
    move v5, v3

    move v6, v4

    if-ge v5, v6, :cond_0

    .line 39
    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->matrix:[Lcom/google/zxing/pdf417/encoder/BarcodeRow;

    move v6, v3

    new-instance v7, Lcom/google/zxing/pdf417/encoder/BarcodeRow;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move v9, v2

    const/4 v10, 0x4

    add-int/lit8 v9, v9, 0x4

    const/16 v10, 0x11

    mul-int/lit8 v9, v9, 0x11

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-direct {v8, v9}, Lcom/google/zxing/pdf417/encoder/BarcodeRow;-><init>(I)V

    aput-object v7, v5, v6

    .line 38
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 41
    :cond_0
    move-object v5, v0

    move v6, v2

    const/16 v7, 0x11

    mul-int/lit8 v6, v6, 0x11

    iput v6, v5, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->width:I

    .line 42
    move-object v5, v0

    move v6, v1

    const/4 v7, 0x2

    add-int/lit8 v6, v6, 0x2

    iput v6, v5, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->height:I

    .line 43
    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->currentRow:I

    .line 44
    return-void
.end method


# virtual methods
.method getCurrentRow()Lcom/google/zxing/pdf417/encoder/BarcodeRow;
    .locals 3

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->matrix:[Lcom/google/zxing/pdf417/encoder/BarcodeRow;

    move-object v2, v0

    iget v2, v2, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->currentRow:I

    aget-object v1, v1, v2

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;
    return-object v0
.end method

.method getMatrix()[[B
    .locals 4

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;
    move-object v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->getScaledMatrix(II)[[B

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;
    return-object v0
.end method

.method getScaledMatrix(I)[[B
    .locals 5

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;
    move v1, p1

    .local v1, "Scale":I
    move-object v2, v0

    move v3, v1

    move v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->getScaledMatrix(II)[[B

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;
    return-object v0
.end method

.method getScaledMatrix(II)[[B
    .locals 11

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;
    move v1, p1

    .local v1, "xScale":I
    move v2, p2

    .local v2, "yScale":I
    move-object v6, v0

    iget v6, v6, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->height:I

    move v7, v2

    mul-int/2addr v6, v7

    move-object v7, v0

    iget v7, v7, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->width:I

    move v8, v1

    mul-int/2addr v7, v8

    filled-new-array {v6, v7}, [I

    move-result-object v7

    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[B

    move-object v3, v6

    .line 72
    .local v3, "matrixOut":[[B
    move-object v6, v0

    iget v6, v6, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->height:I

    move v7, v2

    mul-int/2addr v6, v7

    move v4, v6

    .line 73
    .local v4, "yMax":I
    const/4 v6, 0x0

    move v5, v6

    .local v5, "ii":I
    :goto_0
    move v6, v5

    move v7, v4

    if-ge v6, v7, :cond_0

    .line 74
    move-object v6, v3

    move v7, v4

    move v8, v5

    sub-int/2addr v7, v8

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move-object v8, v0

    iget-object v8, v8, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->matrix:[Lcom/google/zxing/pdf417/encoder/BarcodeRow;

    move v9, v5

    move v10, v2

    div-int/2addr v9, v10

    aget-object v8, v8, v9

    move v9, v1

    invoke-virtual {v8, v9}, Lcom/google/zxing/pdf417/encoder/BarcodeRow;->getScaledRow(I)[B

    move-result-object v8

    aput-object v8, v6, v7

    .line 73
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 76
    :cond_0
    move-object v6, v3

    move-object v0, v6

    .end local v0    # "this":Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;
    return-object v0
.end method

.method set(IIB)V
    .locals 7

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, p3

    .local v3, "value":B
    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->matrix:[Lcom/google/zxing/pdf417/encoder/BarcodeRow;

    move v5, v2

    aget-object v4, v4, v5

    move v5, v1

    move v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/zxing/pdf417/encoder/BarcodeRow;->set(IB)V

    .line 48
    return-void
.end method

.method setMatrix(IIZ)V
    .locals 8

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, p3

    .local v3, "black":Z
    move-object v4, v0

    move v5, v1

    move v6, v2

    move v7, v3

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    int-to-byte v7, v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->set(IIB)V

    .line 52
    return-void

    .line 51
    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method startRow()V
    .locals 5

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->currentRow:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/zxing/pdf417/encoder/BarcodeMatrix;->currentRow:I

    .line 56
    return-void
.end method
