.class public abstract Lcom/google/zxing/oned/rss/AbstractRSSReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "AbstractRSSReader.java"


# static fields
.field private static final MAX_AVG_VARIANCE:I = 0x33

.field private static final MAX_FINDER_PATTERN_RATIO:F = 0.89285713f

.field private static final MAX_INDIVIDUAL_VARIANCE:I = 0x66

.field private static final MIN_FINDER_PATTERN_RATIO:F = 0.7916667f


# instance fields
.field private final dataCharacterCounters:[I

.field private final decodeFinderCounters:[I

.field private final evenCounts:[I

.field private final evenRoundingErrors:[F

.field private final oddCounts:[I

.field private final oddRoundingErrors:[F


# direct methods
.method protected constructor <init>()V
    .locals 4

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/AbstractRSSReader;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 38
    move-object v1, v0

    const/4 v2, 0x4

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/google/zxing/oned/rss/AbstractRSSReader;->decodeFinderCounters:[I

    .line 39
    move-object v1, v0

    const/16 v2, 0x8

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/google/zxing/oned/rss/AbstractRSSReader;->dataCharacterCounters:[I

    .line 40
    move-object v1, v0

    const/4 v2, 0x4

    new-array v2, v2, [F

    iput-object v2, v1, Lcom/google/zxing/oned/rss/AbstractRSSReader;->oddRoundingErrors:[F

    .line 41
    move-object v1, v0

    const/4 v2, 0x4

    new-array v2, v2, [F

    iput-object v2, v1, Lcom/google/zxing/oned/rss/AbstractRSSReader;->evenRoundingErrors:[F

    .line 42
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/oned/rss/AbstractRSSReader;->dataCharacterCounters:[I

    array-length v2, v2

    const/4 v3, 0x2

    div-int/lit8 v2, v2, 0x2

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/google/zxing/oned/rss/AbstractRSSReader;->oddCounts:[I

    .line 43
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/oned/rss/AbstractRSSReader;->dataCharacterCounters:[I

    array-length v2, v2

    const/4 v3, 0x2

    div-int/lit8 v2, v2, 0x2

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/google/zxing/oned/rss/AbstractRSSReader;->evenCounts:[I

    .line 44
    return-void
.end method

.method protected static count([I)I
    .locals 8

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "array":[I
    const/4 v6, 0x0

    move v1, v6

    .line 83
    .local v1, "count":I
    move-object v6, v0

    move-object v2, v6

    .local v2, "arr$":[I
    move-object v6, v2

    array-length v6, v6

    move v3, v6

    .local v3, "len$":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i$":I
    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_0

    move-object v6, v2

    move v7, v4

    aget v6, v6, v7

    move v5, v6

    .line 84
    .local v5, "a":I
    move v6, v1

    move v7, v5

    add-int/2addr v6, v7

    move v1, v6

    .line 83
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 86
    .end local v5    # "a":I
    :cond_0
    move v6, v1

    move v0, v6

    .end local v0    # "array":[I
    return v0
.end method

.method protected static decrement([I[F)V
    .locals 11

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "array":[I
    move-object v1, p1

    .local v1, "errors":[F
    const/4 v5, 0x0

    move v2, v5

    .line 103
    .local v2, "index":I
    move-object v5, v1

    const/4 v6, 0x0

    aget v5, v5, v6

    move v3, v5

    .line 104
    .local v3, "biggestError":F
    const/4 v5, 0x1

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move-object v6, v0

    array-length v6, v6

    if-ge v5, v6, :cond_1

    .line 105
    move-object v5, v1

    move v6, v4

    aget v5, v5, v6

    move v6, v3

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    .line 106
    move-object v5, v1

    move v6, v4

    aget v5, v5, v6

    move v3, v5

    .line 107
    move v5, v4

    move v2, v5

    .line 104
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 110
    :cond_1
    move-object v5, v0

    move v6, v2

    move-object v9, v5

    move v10, v6

    move-object v5, v9

    move v6, v10

    move-object v7, v9

    move v8, v10

    aget v7, v7, v8

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    aput v7, v5, v6

    .line 111
    return-void
.end method

.method protected static increment([I[F)V
    .locals 11

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "array":[I
    move-object v1, p1

    .local v1, "errors":[F
    const/4 v5, 0x0

    move v2, v5

    .line 91
    .local v2, "index":I
    move-object v5, v1

    const/4 v6, 0x0

    aget v5, v5, v6

    move v3, v5

    .line 92
    .local v3, "biggestError":F
    const/4 v5, 0x1

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    move-object v6, v0

    array-length v6, v6

    if-ge v5, v6, :cond_1

    .line 93
    move-object v5, v1

    move v6, v4

    aget v5, v5, v6

    move v6, v3

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 94
    move-object v5, v1

    move v6, v4

    aget v5, v5, v6

    move v3, v5

    .line 95
    move v5, v4

    move v2, v5

    .line 92
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 98
    :cond_1
    move-object v5, v0

    move v6, v2

    move-object v9, v5

    move v10, v6

    move-object v5, v9

    move v6, v10

    move-object v7, v9

    move v8, v10

    aget v7, v7, v8

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    aput v7, v5, v6

    .line 99
    return-void
.end method

.method protected static isFinderPattern([I)Z
    .locals 13

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "counters":[I
    move-object v10, v0

    const/4 v11, 0x0

    aget v10, v10, v11

    move-object v11, v0

    const/4 v12, 0x1

    aget v11, v11, v12

    add-int/2addr v10, v11

    move v1, v10

    .line 115
    .local v1, "firstTwoSum":I
    move v10, v1

    move-object v11, v0

    const/4 v12, 0x2

    aget v11, v11, v12

    add-int/2addr v10, v11

    move-object v11, v0

    const/4 v12, 0x3

    aget v11, v11, v12

    add-int/2addr v10, v11

    move v2, v10

    .line 116
    .local v2, "sum":I
    move v10, v1

    int-to-float v10, v10

    move v11, v2

    int-to-float v11, v11

    div-float/2addr v10, v11

    move v3, v10

    .line 117
    .local v3, "ratio":F
    move v10, v3

    const v11, 0x3f4aaaab

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_4

    move v10, v3

    const v11, 0x3f649249

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_4

    .line 119
    const v10, 0x7fffffff

    move v4, v10

    .line 120
    .local v4, "minCounter":I
    const/high16 v10, -0x80000000

    move v5, v10

    .line 121
    .local v5, "maxCounter":I
    move-object v10, v0

    move-object v6, v10

    .local v6, "arr$":[I
    move-object v10, v6

    array-length v10, v10

    move v7, v10

    .local v7, "len$":I
    const/4 v10, 0x0

    move v8, v10

    .local v8, "i$":I
    :goto_0
    move v10, v8

    move v11, v7

    if-ge v10, v11, :cond_2

    move-object v10, v6

    move v11, v8

    aget v10, v10, v11

    move v9, v10

    .line 122
    .local v9, "counter":I
    move v10, v9

    move v11, v5

    if-le v10, v11, :cond_0

    .line 123
    move v10, v9

    move v5, v10

    .line 125
    :cond_0
    move v10, v9

    move v11, v4

    if-ge v10, v11, :cond_1

    .line 126
    move v10, v9

    move v4, v10

    .line 121
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 129
    .end local v9    # "counter":I
    :cond_2
    move v10, v5

    const/16 v11, 0xa

    move v12, v4

    mul-int/2addr v11, v12

    if-ge v10, v11, :cond_3

    const/4 v10, 0x1

    :goto_1
    move v0, v10

    .line 131
    .end local v0    # "counters":[I
    .end local v4    # "minCounter":I
    .end local v5    # "maxCounter":I
    .end local v6    # "arr$":[I
    .end local v7    # "len$":I
    .end local v8    # "i$":I
    :goto_2
    return v0

    .line 129
    .restart local v0    # "counters":[I
    .restart local v4    # "minCounter":I
    .restart local v5    # "maxCounter":I
    .restart local v6    # "arr$":[I
    .restart local v7    # "len$":I
    .restart local v8    # "i$":I
    :cond_3
    const/4 v10, 0x0

    goto :goto_1

    .line 131
    .end local v4    # "minCounter":I
    .end local v5    # "maxCounter":I
    .end local v6    # "arr$":[I
    .end local v7    # "len$":I
    .end local v8    # "i$":I
    :cond_4
    const/4 v10, 0x0

    move v0, v10

    goto :goto_2
.end method

.method protected static parseFinderValue([I[[I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "counters":[I
    move-object v1, p1

    .local v1, "finderPatterns":[[I
    const/4 v3, 0x0

    move v2, v3

    .local v2, "value":I
    :goto_0
    move v3, v2

    move-object v4, v1

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 73
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    aget-object v4, v4, v5

    const/16 v5, 0x66

    invoke-static {v3, v4, v5}, Lcom/google/zxing/oned/rss/AbstractRSSReader;->patternMatchVariance([I[II)I

    move-result v3

    const/16 v4, 0x33

    if-ge v3, v4, :cond_0

    .line 75
    move v3, v2

    move v0, v3

    .end local v0    # "counters":[I
    return v0

    .line 72
    .restart local v0    # "counters":[I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 78
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v3

    throw v3
.end method


# virtual methods
.method protected final getDataCharacterCounters()[I
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/AbstractRSSReader;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/oned/rss/AbstractRSSReader;->dataCharacterCounters:[I

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/oned/rss/AbstractRSSReader;
    return-object v0
.end method

.method protected final getDecodeFinderCounters()[I
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/AbstractRSSReader;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/oned/rss/AbstractRSSReader;->decodeFinderCounters:[I

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/oned/rss/AbstractRSSReader;
    return-object v0
.end method

.method protected final getEvenCounts()[I
    .locals 2

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/AbstractRSSReader;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/oned/rss/AbstractRSSReader;->evenCounts:[I

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/oned/rss/AbstractRSSReader;
    return-object v0
.end method

.method protected final getEvenRoundingErrors()[F
    .locals 2

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/AbstractRSSReader;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/oned/rss/AbstractRSSReader;->evenRoundingErrors:[F

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/oned/rss/AbstractRSSReader;
    return-object v0
.end method

.method protected final getOddCounts()[I
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/AbstractRSSReader;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/oned/rss/AbstractRSSReader;->oddCounts:[I

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/oned/rss/AbstractRSSReader;
    return-object v0
.end method

.method protected final getOddRoundingErrors()[F
    .locals 2

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/AbstractRSSReader;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/oned/rss/AbstractRSSReader;->oddRoundingErrors:[F

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/oned/rss/AbstractRSSReader;
    return-object v0
.end method
