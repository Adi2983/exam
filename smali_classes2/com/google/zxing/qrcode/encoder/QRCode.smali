.class public final Lcom/google/zxing/qrcode/encoder/QRCode;
.super Ljava/lang/Object;
.source "QRCode.java"


# static fields
.field public static final NUM_MASK_PATTERNS:I = 0x8


# instance fields
.field private ecLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

.field private maskPattern:I

.field private matrix:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

.field private mode:Lcom/google/zxing/qrcode/decoder/Mode;

.field private version:Lcom/google/zxing/qrcode/decoder/Version;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/encoder/QRCode;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lcom/google/zxing/qrcode/encoder/QRCode;->maskPattern:I

    .line 39
    return-void
.end method

.method public static isValidMaskPattern(I)Z
    .locals 3

    .prologue
    .line 105
    move v0, p0

    .local v0, "maskPattern":I
    move v1, v0

    if-ltz v1, :cond_0

    move v1, v0

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "maskPattern":I
    return v0

    .restart local v0    # "maskPattern":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getECLevel()Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/encoder/QRCode;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/qrcode/encoder/QRCode;->ecLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/qrcode/encoder/QRCode;
    return-object v0
.end method

.method public getMaskPattern()I
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/encoder/QRCode;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/qrcode/encoder/QRCode;->maskPattern:I

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/qrcode/encoder/QRCode;
    return v0
.end method

.method public getMatrix()Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/encoder/QRCode;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/qrcode/encoder/QRCode;->matrix:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/qrcode/encoder/QRCode;
    return-object v0
.end method

.method public getMode()Lcom/google/zxing/qrcode/decoder/Mode;
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/encoder/QRCode;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/qrcode/encoder/QRCode;->mode:Lcom/google/zxing/qrcode/decoder/Mode;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/qrcode/encoder/QRCode;
    return-object v0
.end method

.method public getVersion()Lcom/google/zxing/qrcode/decoder/Version;
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/encoder/QRCode;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/qrcode/encoder/QRCode;->version:Lcom/google/zxing/qrcode/decoder/Version;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/qrcode/encoder/QRCode;
    return-object v0
.end method

.method public setECLevel(Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;)V
    .locals 4

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/encoder/QRCode;
    move-object v1, p1

    .local v1, "value":Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/zxing/qrcode/encoder/QRCode;->ecLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 89
    return-void
.end method

.method public setMaskPattern(I)V
    .locals 4

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/encoder/QRCode;
    move v1, p1

    .local v1, "value":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/zxing/qrcode/encoder/QRCode;->maskPattern:I

    .line 97
    return-void
.end method

.method public setMatrix(Lcom/google/zxing/qrcode/encoder/ByteMatrix;)V
    .locals 4

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/encoder/QRCode;
    move-object v1, p1

    .local v1, "value":Lcom/google/zxing/qrcode/encoder/ByteMatrix;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/zxing/qrcode/encoder/QRCode;->matrix:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    .line 101
    return-void
.end method

.method public setMode(Lcom/google/zxing/qrcode/decoder/Mode;)V
    .locals 4

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/encoder/QRCode;
    move-object v1, p1

    .local v1, "value":Lcom/google/zxing/qrcode/decoder/Mode;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/zxing/qrcode/encoder/QRCode;->mode:Lcom/google/zxing/qrcode/decoder/Mode;

    .line 85
    return-void
.end method

.method public setVersion(Lcom/google/zxing/qrcode/decoder/Version;)V
    .locals 4

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/encoder/QRCode;
    move-object v1, p1

    .local v1, "version":Lcom/google/zxing/qrcode/decoder/Version;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/zxing/qrcode/encoder/QRCode;->version:Lcom/google/zxing/qrcode/decoder/Version;

    .line 93
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/encoder/QRCode;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0xc8

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v2

    .line 64
    .local v1, "result":Ljava/lang/StringBuilder;
    move-object v2, v1

    const-string/jumbo v3, "<<\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 65
    move-object v2, v1

    const-string/jumbo v3, " mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 66
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/qrcode/encoder/QRCode;->mode:Lcom/google/zxing/qrcode/decoder/Mode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 67
    move-object v2, v1

    const-string/jumbo v3, "\n ecLevel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 68
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/qrcode/encoder/QRCode;->ecLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 69
    move-object v2, v1

    const-string/jumbo v3, "\n version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 70
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/qrcode/encoder/QRCode;->version:Lcom/google/zxing/qrcode/decoder/Version;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 71
    move-object v2, v1

    const-string/jumbo v3, "\n maskPattern: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 72
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/google/zxing/qrcode/encoder/QRCode;->maskPattern:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 73
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/qrcode/encoder/QRCode;->matrix:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    if-nez v2, :cond_0

    .line 74
    move-object v2, v1

    const-string/jumbo v3, "\n matrix: null\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 79
    :goto_0
    move-object v2, v1

    const-string/jumbo v3, ">>\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 80
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/zxing/qrcode/encoder/QRCode;
    return-object v0

    .line 76
    .restart local v0    # "this":Lcom/google/zxing/qrcode/encoder/QRCode;
    :cond_0
    move-object v2, v1

    const-string/jumbo v3, "\n matrix:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 77
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/qrcode/encoder/QRCode;->matrix:Lcom/google/zxing/qrcode/encoder/ByteMatrix;

    invoke-virtual {v3}, Lcom/google/zxing/qrcode/encoder/ByteMatrix;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_0
.end method
