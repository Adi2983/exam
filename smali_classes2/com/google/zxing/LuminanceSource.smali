.class public abstract Lcom/google/zxing/LuminanceSource;
.super Ljava/lang/Object;
.source "LuminanceSource.java"


# instance fields
.field private final height:I

.field private final width:I


# direct methods
.method protected constructor <init>(II)V
    .locals 5

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/LuminanceSource;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 34
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/google/zxing/LuminanceSource;->width:I

    .line 35
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/google/zxing/LuminanceSource;->height:I

    .line 36
    return-void
.end method


# virtual methods
.method public crop(IIII)Lcom/google/zxing/LuminanceSource;
    .locals 9

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/LuminanceSource;
    move v1, p1

    .local v1, "left":I
    move v2, p2

    .local v2, "top":I
    move v3, p3

    .local v3, "width":I
    move v4, p4

    .local v4, "height":I
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string/jumbo v7, "This luminance source does not support cropping."

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public final getHeight()I
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/LuminanceSource;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/LuminanceSource;->height:I

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/LuminanceSource;
    return v0
.end method

.method public abstract getMatrix()[B
.end method

.method public abstract getRow(I[B)[B
.end method

.method public final getWidth()I
    .locals 2

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/LuminanceSource;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/LuminanceSource;->width:I

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/LuminanceSource;
    return v0
.end method

.method public isCropSupported()Z
    .locals 2

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/LuminanceSource;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/LuminanceSource;
    return v0
.end method

.method public isRotateSupported()Z
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/LuminanceSource;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/LuminanceSource;
    return v0
.end method

.method public rotateCounterClockwise()Lcom/google/zxing/LuminanceSource;
    .locals 5

    .prologue
    .line 111
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/LuminanceSource;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "This luminance source does not support rotation by 90 degrees."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public rotateCounterClockwise45()Lcom/google/zxing/LuminanceSource;
    .locals 5

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/LuminanceSource;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "This luminance source does not support rotation by 45 degrees."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 13

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/LuminanceSource;
    move-object v7, v0

    iget v7, v7, Lcom/google/zxing/LuminanceSource;->width:I

    new-array v7, v7, [B

    move-object v1, v7

    .line 127
    .local v1, "row":[B
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    iget v9, v9, Lcom/google/zxing/LuminanceSource;->height:I

    move-object v10, v0

    iget v10, v10, Lcom/google/zxing/LuminanceSource;->width:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    mul-int/2addr v9, v10

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v7

    .line 128
    .local v2, "result":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    move v3, v7

    .local v3, "y":I
    :goto_0
    move v7, v3

    move-object v8, v0

    iget v8, v8, Lcom/google/zxing/LuminanceSource;->height:I

    if-ge v7, v8, :cond_4

    .line 129
    move-object v7, v0

    move v8, v3

    move-object v9, v1

    invoke-virtual {v7, v8, v9}, Lcom/google/zxing/LuminanceSource;->getRow(I[B)[B

    move-result-object v7

    move-object v1, v7

    .line 130
    const/4 v7, 0x0

    move v4, v7

    .local v4, "x":I
    :goto_1
    move v7, v4

    move-object v8, v0

    iget v8, v8, Lcom/google/zxing/LuminanceSource;->width:I

    if-ge v7, v8, :cond_3

    .line 131
    move-object v7, v1

    move v8, v4

    aget-byte v7, v7, v8

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    move v5, v7

    .line 133
    .local v5, "luminance":I
    move v7, v5

    const/16 v8, 0x40

    if-ge v7, v8, :cond_0

    .line 134
    const/16 v7, 0x23

    move v6, v7

    .line 142
    .local v6, "c":C
    :goto_2
    move-object v7, v2

    move v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 130
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 135
    .end local v6    # "c":C
    :cond_0
    move v7, v5

    const/16 v8, 0x80

    if-ge v7, v8, :cond_1

    .line 136
    const/16 v7, 0x2b

    move v6, v7

    .restart local v6    # "c":C
    goto :goto_2

    .line 137
    .end local v6    # "c":C
    :cond_1
    move v7, v5

    const/16 v8, 0xc0

    if-ge v7, v8, :cond_2

    .line 138
    const/16 v7, 0x2e

    move v6, v7

    .restart local v6    # "c":C
    goto :goto_2

    .line 140
    .end local v6    # "c":C
    :cond_2
    const/16 v7, 0x20

    move v6, v7

    .restart local v6    # "c":C
    goto :goto_2

    .line 144
    .end local v5    # "luminance":I
    .end local v6    # "c":C
    :cond_3
    move-object v7, v2

    const/16 v8, 0xa

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 128
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 146
    .end local v4    # "x":I
    :cond_4
    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Lcom/google/zxing/LuminanceSource;
    return-object v0
.end method
