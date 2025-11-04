.class public final Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
.super Ljava/lang/Object;
.source "Version.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/qrcode/decoder/Version;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ECBlocks"
.end annotation


# instance fields
.field private final ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECB;

.field private final ecCodewordsPerBlock:I


# direct methods
.method varargs constructor <init>(I[Lcom/google/zxing/qrcode/decoder/Version$ECB;)V
    .locals 5

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    move v1, p1

    .local v1, "ecCodewordsPerBlock":I
    move-object v2, p2

    .local v2, "ecBlocks":[Lcom/google/zxing/qrcode/decoder/Version$ECB;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 189
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->ecCodewordsPerBlock:I

    .line 190
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    .line 191
    return-void
.end method


# virtual methods
.method public getECBlocks()[Lcom/google/zxing/qrcode/decoder/Version$ECB;
    .locals 2

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    return-object v0
.end method

.method public getECCodewordsPerBlock()I
    .locals 2

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->ecCodewordsPerBlock:I

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    return v0
.end method

.method public getNumBlocks()I
    .locals 8

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    const/4 v6, 0x0

    move v1, v6

    .line 199
    .local v1, "total":I
    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->ecBlocks:[Lcom/google/zxing/qrcode/decoder/Version$ECB;

    move-object v2, v6

    .local v2, "arr$":[Lcom/google/zxing/qrcode/decoder/Version$ECB;
    move-object v6, v2

    array-length v6, v6

    move v3, v6

    .local v3, "len$":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i$":I
    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_0

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 200
    .local v5, "ecBlock":Lcom/google/zxing/qrcode/decoder/Version$ECB;
    move v6, v1

    move-object v7, v5

    invoke-virtual {v7}, Lcom/google/zxing/qrcode/decoder/Version$ECB;->getCount()I

    move-result v7

    add-int/2addr v6, v7

    move v1, v6

    .line 199
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 202
    .end local v5    # "ecBlock":Lcom/google/zxing/qrcode/decoder/Version$ECB;
    :cond_0
    move v6, v1

    move v0, v6

    .end local v0    # "this":Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    return v0
.end method

.method public getTotalECCodewords()I
    .locals 3

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->ecCodewordsPerBlock:I

    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;->getNumBlocks()I

    move-result v2

    mul-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/qrcode/decoder/Version$ECBlocks;
    return v0
.end method
