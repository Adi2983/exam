.class final Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
.super Ljava/lang/Object;
.source "CurrentParsingState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;
    }
.end annotation


# instance fields
.field private encoding:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

.field private position:I


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 44
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    .line 45
    move-object v1, v0

    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;->NUMERIC:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    iput-object v2, v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->encoding:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    .line 46
    return-void
.end method


# virtual methods
.method getPosition()I
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
    return v0
.end method

.method incrementPosition(I)V
    .locals 6

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
    move v1, p1

    .local v1, "delta":I
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    move v4, v1

    add-int/2addr v3, v4

    iput v3, v2, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    .line 58
    return-void
.end method

.method isAlpha()Z
    .locals 3

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->encoding:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;->ALPHA:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
    return v0

    .restart local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isIsoIec646()Z
    .locals 3

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->encoding:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;->ISO_IEC_646:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
    return v0

    .restart local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isNumeric()Z
    .locals 3

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->encoding:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;->NUMERIC:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
    return v0

    .restart local v0    # "this":Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method setAlpha()V
    .locals 3

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
    move-object v1, v0

    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;->ALPHA:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    iput-object v2, v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->encoding:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    .line 78
    return-void
.end method

.method setIsoIec646()V
    .locals 3

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
    move-object v1, v0

    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;->ISO_IEC_646:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    iput-object v2, v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->encoding:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    .line 82
    return-void
.end method

.method setNumeric()V
    .locals 3

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
    move-object v1, v0

    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;->NUMERIC:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    iput-object v2, v1, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->encoding:Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState$State;

    .line 74
    return-void
.end method

.method setPosition(I)V
    .locals 4

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;
    move v1, p1

    .local v1, "position":I
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/zxing/oned/rss/expanded/decoders/CurrentParsingState;->position:I

    .line 54
    return-void
.end method
