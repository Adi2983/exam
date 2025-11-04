.class final Lcom/google/zxing/pdf417/encoder/BarcodeRow;
.super Ljava/lang/Object;
.source "BarcodeRow.java"


# instance fields
.field private currentLocation:I

.field private final row:[B


# direct methods
.method constructor <init>(I)V
    .locals 4

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/encoder/BarcodeRow;
    move v1, p1

    .local v1, "width":I
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 34
    move-object v2, v0

    move v3, v1

    new-array v3, v3, [B

    iput-object v3, v2, Lcom/google/zxing/pdf417/encoder/BarcodeRow;->row:[B

    .line 35
    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/google/zxing/pdf417/encoder/BarcodeRow;->currentLocation:I

    .line 36
    return-void
.end method


# virtual methods
.method addBar(ZI)V
    .locals 11

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/encoder/BarcodeRow;
    move v1, p1

    .local v1, "black":Z
    move v2, p2

    .local v2, "width":I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "ii":I
    :goto_0
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    .line 64
    move-object v4, v0

    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    iget v6, v6, Lcom/google/zxing/pdf417/encoder/BarcodeRow;->currentLocation:I

    move-object v9, v5

    move v10, v6

    move v5, v10

    move-object v6, v9

    move v7, v10

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/google/zxing/pdf417/encoder/BarcodeRow;->currentLocation:I

    move v6, v1

    invoke-virtual {v4, v5, v6}, Lcom/google/zxing/pdf417/encoder/BarcodeRow;->set(IZ)V

    .line 63
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method

.method getRow()[B
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/encoder/BarcodeRow;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/pdf417/encoder/BarcodeRow;->row:[B

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/pdf417/encoder/BarcodeRow;
    return-object v0
.end method

.method getScaledRow(I)[B
    .locals 9

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/encoder/BarcodeRow;
    move v1, p1

    .local v1, "scale":I
    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/pdf417/encoder/BarcodeRow;->row:[B

    array-length v4, v4

    move v5, v1

    mul-int/2addr v4, v5

    new-array v4, v4, [B

    move-object v2, v4

    .line 80
    .local v2, "output":[B
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move-object v5, v2

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 81
    move-object v4, v2

    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/pdf417/encoder/BarcodeRow;->row:[B

    move v7, v3

    move v8, v1

    div-int/2addr v7, v8

    aget-byte v6, v6, v7

    aput-byte v6, v4, v5

    .line 80
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 83
    :cond_0
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "this":Lcom/google/zxing/pdf417/encoder/BarcodeRow;
    return-object v0
.end method

.method set(IB)V
    .locals 6

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/encoder/BarcodeRow;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "value":B
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/pdf417/encoder/BarcodeRow;->row:[B

    move v4, v1

    move v5, v2

    aput-byte v5, v3, v4

    .line 46
    return-void
.end method

.method set(IZ)V
    .locals 6

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/encoder/BarcodeRow;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "black":Z
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/pdf417/encoder/BarcodeRow;->row:[B

    move v4, v1

    move v5, v2

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 56
    return-void

    .line 55
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method
