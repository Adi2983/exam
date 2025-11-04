.class final Lcom/google/zxing/qrcode/decoder/DataMask$DataMask011;
.super Lcom/google/zxing/qrcode/decoder/DataMask;
.source "DataMask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/qrcode/decoder/DataMask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DataMask011"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/decoder/DataMask$DataMask011;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/zxing/qrcode/decoder/DataMask;-><init>(Lcom/google/zxing/qrcode/decoder/DataMask$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/zxing/qrcode/decoder/DataMask$1;)V
    .locals 3

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/decoder/DataMask$DataMask011;
    move-object v1, p1

    .local v1, "x0":Lcom/google/zxing/qrcode/decoder/DataMask$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/zxing/qrcode/decoder/DataMask$DataMask011;-><init>()V

    return-void
.end method


# virtual methods
.method isMasked(II)Z
    .locals 5

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/decoder/DataMask$DataMask011;
    move v1, p1

    .local v1, "i":I
    move v2, p2

    .local v2, "j":I
    move v3, v1

    move v4, v2

    add-int/2addr v3, v4

    const/4 v4, 0x3

    rem-int/lit8 v3, v3, 0x3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lcom/google/zxing/qrcode/decoder/DataMask$DataMask011;
    return v0

    .restart local v0    # "this":Lcom/google/zxing/qrcode/decoder/DataMask$DataMask011;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
