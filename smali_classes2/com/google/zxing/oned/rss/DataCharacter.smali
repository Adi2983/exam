.class public Lcom/google/zxing/oned/rss/DataCharacter;
.super Ljava/lang/Object;
.source "DataCharacter.java"


# instance fields
.field private final checksumPortion:I

.field private final value:I


# direct methods
.method public constructor <init>(II)V
    .locals 5

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/DataCharacter;
    move v1, p1

    .local v1, "value":I
    move v2, p2

    .local v2, "checksumPortion":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 25
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/google/zxing/oned/rss/DataCharacter;->value:I

    .line 26
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/google/zxing/oned/rss/DataCharacter;->checksumPortion:I

    .line 27
    return-void
.end method


# virtual methods
.method public final getChecksumPortion()I
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/DataCharacter;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/oned/rss/DataCharacter;->checksumPortion:I

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/oned/rss/DataCharacter;
    return v0
.end method

.method public final getValue()I
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/DataCharacter;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/oned/rss/DataCharacter;->value:I

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/oned/rss/DataCharacter;
    return v0
.end method
