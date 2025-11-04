.class final Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;
.super Lcom/google/zxing/oned/rss/expanded/decoders/DecodedObject;
.source "DecodedNumeric.java"


# static fields
.field static final FNC1:I = 0xa


# instance fields
.field private final firstDigit:I

.field private final secondDigit:I


# direct methods
.method constructor <init>(III)V
    .locals 9

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;
    move v1, p1

    .local v1, "newPosition":I
    move v2, p2

    .local v2, "firstDigit":I
    move v3, p3

    .local v3, "secondDigit":I
    move-object v4, v0

    move v5, v1

    invoke-direct {v4, v5}, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedObject;-><init>(I)V

    .line 43
    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->firstDigit:I

    .line 44
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->secondDigit:I

    .line 46
    move-object v4, v0

    iget v4, v4, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->firstDigit:I

    if-ltz v4, :cond_0

    move-object v4, v0

    iget v4, v4, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->firstDigit:I

    const/16 v5, 0xa

    if-le v4, v5, :cond_1

    .line 47
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid firstDigit: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 50
    :cond_1
    move-object v4, v0

    iget v4, v4, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->secondDigit:I

    if-ltz v4, :cond_2

    move-object v4, v0

    iget v4, v4, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->secondDigit:I

    const/16 v5, 0xa

    if-le v4, v5, :cond_3

    .line 51
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid secondDigit: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 53
    :cond_3
    return-void
.end method


# virtual methods
.method getFirstDigit()I
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->firstDigit:I

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;
    return v0
.end method

.method getSecondDigit()I
    .locals 2

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->secondDigit:I

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;
    return v0
.end method

.method getValue()I
    .locals 3

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->firstDigit:I

    const/16 v2, 0xa

    mul-int/lit8 v1, v1, 0xa

    move-object v2, v0

    iget v2, v2, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->secondDigit:I

    add-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;
    return v0
.end method

.method isAnyFNC1()Z
    .locals 3

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->firstDigit:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->secondDigit:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;
    return v0

    .restart local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isFirstDigitFNC1()Z
    .locals 3

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->firstDigit:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;
    return v0

    .restart local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isSecondDigitFNC1()Z
    .locals 3

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;->secondDigit:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;
    return v0

    .restart local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/DecodedNumeric;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
