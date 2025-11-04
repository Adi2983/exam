.class final Lcom/google/zxing/oned/rss/Pair;
.super Lcom/google/zxing/oned/rss/DataCharacter;
.source "Pair.java"


# instance fields
.field private count:I

.field private final finderPattern:Lcom/google/zxing/oned/rss/FinderPattern;


# direct methods
.method constructor <init>(IILcom/google/zxing/oned/rss/FinderPattern;)V
    .locals 7

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/Pair;
    move v1, p1

    .local v1, "value":I
    move v2, p2

    .local v2, "checksumPortion":I
    move-object v3, p3

    .local v3, "finderPattern":Lcom/google/zxing/oned/rss/FinderPattern;
    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/oned/rss/DataCharacter;-><init>(II)V

    .line 26
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lcom/google/zxing/oned/rss/Pair;->finderPattern:Lcom/google/zxing/oned/rss/FinderPattern;

    .line 27
    return-void
.end method


# virtual methods
.method getCount()I
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/Pair;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/oned/rss/Pair;->count:I

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/oned/rss/Pair;
    return v0
.end method

.method getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/Pair;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/oned/rss/Pair;->finderPattern:Lcom/google/zxing/oned/rss/FinderPattern;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/oned/rss/Pair;
    return-object v0
.end method

.method incrementCount()V
    .locals 5

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/Pair;
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lcom/google/zxing/oned/rss/Pair;->count:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/zxing/oned/rss/Pair;->count:I

    .line 39
    return-void
.end method
