.class public final Lcom/google/zxing/qrcode/encoder/ByteMatrix;
.super Ljava/lang/Object;
.source "ByteMatrix.java"


# instance fields
.field private final bytes:[[B

.field private final height:I

.field private final width:I


# direct methods
.method public constructor <init>(II)V
    .locals 6

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    move v1, p1

    .local v1, "width":I
    move v2, p2

    .local v2, "height":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 35
    move-object v3, v0

    move v4, v2

    move v5, v1

    filled-new-array {v4, v5}, [I

    move-result-object v5

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[B

    iput-object v4, v3, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    .line 36
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    .line 37
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    .line 38
    return-void
.end method


# virtual methods
.method public clear(B)V
    .locals 7

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    move v1, p1

    .local v1, "value":B
    const/4 v4, 0x0

    move v2, v4

    .local v2, "y":I
    :goto_0
    move v4, v2

    move-object v5, v0

    iget v5, v5, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    if-ge v4, v5, :cond_1

    .line 70
    const/4 v4, 0x0

    move v3, v4

    .local v3, "x":I
    :goto_1
    move v4, v3

    move-object v5, v0

    iget v5, v5, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    if-ge v4, v5, :cond_0

    .line 71
    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    move v5, v2

    aget-object v4, v4, v5

    move v5, v3

    move v6, v1

    aput-byte v6, v4, v5

    .line 70
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 69
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    .end local v3    # "x":I
    :cond_1
    return-void
.end method

.method public get(II)B
    .locals 5

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    move v4, v2

    aget-object v3, v3, v4

    move v4, v1

    aget-byte v3, v3, v4

    move v0, v3

    .end local v0    # "this":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    return v0
.end method

.method public getArray()[[B
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    return-object v0
.end method

.method public getHeight()I
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    return v0
.end method

.method public getWidth()I
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    return v0
.end method

.method public set(IIB)V
    .locals 7

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, p3

    .local v3, "value":B
    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    move v5, v2

    aget-object v4, v4, v5

    move v5, v1

    move v6, v3

    aput-byte v6, v4, v5

    .line 58
    return-void
.end method

.method public set(III)V
    .locals 7

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, p3

    .local v3, "value":I
    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    move v5, v2

    aget-object v4, v4, v5

    move v5, v1

    move v6, v3

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 62
    return-void
.end method

.method public set(IIZ)V
    .locals 7

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, p3

    .local v3, "value":Z
    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    move v5, v2

    aget-object v4, v4, v5

    move v5, v1

    move v6, v3

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 66
    return-void

    .line 65
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x2

    move-object v7, v0

    iget v7, v7, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    mul-int/2addr v6, v7

    move-object v7, v0

    iget v7, v7, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    mul-int/2addr v6, v7

    const/4 v7, 0x2

    add-int/lit8 v6, v6, 0x2

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v4

    .line 79
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    move v2, v4

    .local v2, "y":I
    :goto_0
    move v4, v2

    move-object v5, v0

    iget v5, v5, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->height:I

    if-ge v4, v5, :cond_1

    .line 80
    const/4 v4, 0x0

    move v3, v4

    .local v3, "x":I
    :goto_1
    move v4, v3

    move-object v5, v0

    iget v5, v5, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->width:I

    if-ge v4, v5, :cond_0

    .line 81
    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->bytes:[[B

    move v5, v2

    aget-object v4, v4, v5

    move v5, v3

    aget-byte v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 89
    move-object v4, v1

    const-string/jumbo v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 80
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 83
    :pswitch_0
    move-object v4, v1

    const-string/jumbo v5, " 0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 84
    goto :goto_2

    .line 86
    :pswitch_1
    move-object v4, v1

    const-string/jumbo v5, " 1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 87
    goto :goto_2

    .line 93
    :cond_0
    move-object v4, v1

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    .end local v3    # "x":I
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    return-object v0

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
