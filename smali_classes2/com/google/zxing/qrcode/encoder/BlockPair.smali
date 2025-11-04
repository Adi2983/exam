.class final Lcom/google/zxing/qrcode/encoder/BlockPair;
.super Ljava/lang/Object;
.source "BlockPair.java"


# instance fields
.field private final dataBytes:[B

.field private final errorCorrectionBytes:[B


# direct methods
.method constructor <init>([B[B)V
    .locals 5

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/encoder/BlockPair;
    move-object v1, p1

    .local v1, "data":[B
    move-object v2, p2

    .local v2, "errorCorrection":[B
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 25
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/zxing/qrcode/encoder/BlockPair;->dataBytes:[B

    .line 26
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/zxing/qrcode/encoder/BlockPair;->errorCorrectionBytes:[B

    .line 27
    return-void
.end method


# virtual methods
.method public getDataBytes()[B
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/encoder/BlockPair;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/qrcode/encoder/BlockPair;->dataBytes:[B

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/qrcode/encoder/BlockPair;
    return-object v0
.end method

.method public getErrorCorrectionBytes()[B
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/encoder/BlockPair;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/qrcode/encoder/BlockPair;->errorCorrectionBytes:[B

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/qrcode/encoder/BlockPair;
    return-object v0
.end method
