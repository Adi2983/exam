.class public final Lcom/google/zxing/qrcode/decoder/Version$ECB;
.super Ljava/lang/Object;
.source "Version.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/qrcode/decoder/Version;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ECB"
.end annotation


# instance fields
.field private final count:I

.field private final dataCodewords:I


# direct methods
.method constructor <init>(II)V
    .locals 5

    .prologue
    .line 223
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/decoder/Version$ECB;
    move v1, p1

    .local v1, "count":I
    move v2, p2

    .local v2, "dataCodewords":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 224
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I

    .line 225
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/google/zxing/qrcode/decoder/Version$ECB;->dataCodewords:I

    .line 226
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/decoder/Version$ECB;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/qrcode/decoder/Version$ECB;
    return v0
.end method

.method public getDataCodewords()I
    .locals 2

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/decoder/Version$ECB;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/qrcode/decoder/Version$ECB;->dataCodewords:I

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/qrcode/decoder/Version$ECB;
    return v0
.end method
