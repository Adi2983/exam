.class final Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
.super Ljava/lang/Object;
.source "ExpandedPair.java"


# instance fields
.field private final finderPattern:Lcom/google/zxing/oned/rss/FinderPattern;

.field private final leftChar:Lcom/google/zxing/oned/rss/DataCharacter;

.field private final mayBeLast:Z

.field private final rightChar:Lcom/google/zxing/oned/rss/DataCharacter;


# direct methods
.method constructor <init>(Lcom/google/zxing/oned/rss/DataCharacter;Lcom/google/zxing/oned/rss/DataCharacter;Lcom/google/zxing/oned/rss/FinderPattern;Z)V
    .locals 7

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    move-object v1, p1

    .local v1, "leftChar":Lcom/google/zxing/oned/rss/DataCharacter;
    move-object v2, p2

    .local v2, "rightChar":Lcom/google/zxing/oned/rss/DataCharacter;
    move-object v3, p3

    .local v3, "finderPattern":Lcom/google/zxing/oned/rss/FinderPattern;
    move v4, p4

    .local v4, "mayBeLast":Z
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 46
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->leftChar:Lcom/google/zxing/oned/rss/DataCharacter;

    .line 47
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->rightChar:Lcom/google/zxing/oned/rss/DataCharacter;

    .line 48
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->finderPattern:Lcom/google/zxing/oned/rss/FinderPattern;

    .line 49
    move-object v5, v0

    move v6, v4

    iput-boolean v6, v5, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->mayBeLast:Z

    .line 50
    return-void
.end method


# virtual methods
.method getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->finderPattern:Lcom/google/zxing/oned/rss/FinderPattern;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    return-object v0
.end method

.method getLeftChar()Lcom/google/zxing/oned/rss/DataCharacter;
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->leftChar:Lcom/google/zxing/oned/rss/DataCharacter;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    return-object v0
.end method

.method getRightChar()Lcom/google/zxing/oned/rss/DataCharacter;
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->rightChar:Lcom/google/zxing/oned/rss/DataCharacter;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    return-object v0
.end method

.method mayBeLast()Z
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->mayBeLast:Z

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    return v0
.end method

.method public mustBeLast()Z
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/oned/rss/expanded/ExpandedPair;->rightChar:Lcom/google/zxing/oned/rss/DataCharacter;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    return v0

    .restart local v0    # "this":Lcom/google/zxing/oned/rss/expanded/ExpandedPair;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
