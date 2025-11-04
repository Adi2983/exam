.class final Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
.super Lcom/google/zxing/oned/rss/expanded/decoders/DecodedObject;
.source "DecodedChar.java"


# static fields
.field static final FNC1:C = '$'


# instance fields
.field private final value:C


# direct methods
.method constructor <init>(IC)V
    .locals 5

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
    move v1, p1

    .local v1, "newPosition":I
    move v2, p2

    .local v2, "value":C
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedObject;-><init>(I)V

    .line 41
    move-object v3, v0

    move v4, v2

    iput-char v4, v3, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;->value:C

    .line 42
    return-void
.end method


# virtual methods
.method getValue()C
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
    move-object v1, v0

    iget-char v1, v1, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;->value:C

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
    return v0
.end method

.method isFNC1()Z
    .locals 3

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
    move-object v1, v0

    iget-char v1, v1, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;->value:C

    const/16 v2, 0x24

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
    return v0

    .restart local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedChar;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
