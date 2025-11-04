.class public final Lcom/google/zxing/oned/rss/RSS14Reader;
.super Lcom/google/zxing/oned/rss/AbstractRSSReader;
.source "RSS14Reader.java"


# static fields
.field private static final FINDER_PATTERNS:[[I

.field private static final INSIDE_GSUM:[I

.field private static final INSIDE_ODD_TOTAL_SUBSET:[I

.field private static final INSIDE_ODD_WIDEST:[I

.field private static final OUTSIDE_EVEN_TOTAL_SUBSET:[I

.field private static final OUTSIDE_GSUM:[I

.field private static final OUTSIDE_ODD_WIDEST:[I


# instance fields
.field private final possibleLeftPairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/Pair;",
            ">;"
        }
    .end annotation
.end field

.field private final possibleRightPairs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/oned/rss/Pair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 37
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_EVEN_TOTAL_SUBSET:[I

    .line 38
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_TOTAL_SUBSET:[I

    .line 39
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_GSUM:[I

    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_GSUM:[I

    .line 41
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_ODD_WIDEST:[I

    .line 42
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_WIDEST:[I

    .line 44
    const/16 v0, 0x9

    new-array v0, v0, [[I

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x0

    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_6

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x1

    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_7

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x2

    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_8

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x3

    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_9

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x4

    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_a

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x5

    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_b

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x6

    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_c

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x7

    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_d

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x8

    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_e

    aput-object v3, v1, v2

    sput-object v0, Lcom/google/zxing/oned/rss/RSS14Reader;->FINDER_PATTERNS:[[I

    return-void

    .line 37
    :array_0
    .array-data 4
        0x1
        0xa
        0x22
        0x46
        0x7e
    .end array-data

    .line 38
    :array_1
    .array-data 4
        0x4
        0x14
        0x30
        0x51
    .end array-data

    .line 39
    :array_2
    .array-data 4
        0x0
        0xa1
        0x3c1
        0x7df
        0xa9b
    .end array-data

    .line 40
    :array_3
    .array-data 4
        0x0
        0x150
        0x40c
        0x5ec
    .end array-data

    .line 41
    :array_4
    .array-data 4
        0x8
        0x6
        0x4
        0x3
        0x1
    .end array-data

    .line 42
    :array_5
    .array-data 4
        0x2
        0x4
        0x6
        0x8
    .end array-data

    .line 44
    :array_6
    .array-data 4
        0x3
        0x8
        0x2
        0x1
    .end array-data

    :array_7
    .array-data 4
        0x3
        0x5
        0x5
        0x1
    .end array-data

    :array_8
    .array-data 4
        0x3
        0x3
        0x7
        0x1
    .end array-data

    :array_9
    .array-data 4
        0x3
        0x1
        0x9
        0x1
    .end array-data

    :array_a
    .array-data 4
        0x2
        0x7
        0x4
        0x1
    .end array-data

    :array_b
    .array-data 4
        0x2
        0x5
        0x6
        0x1
    .end array-data

    :array_c
    .array-data 4
        0x2
        0x3
        0x8
        0x1
    .end array-data

    :array_d
    .array-data 4
        0x1
        0x5
        0x7
        0x1
    .end array-data

    :array_e
    .array-data 4
        0x1
        0x3
        0x9
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/RSS14Reader;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/zxing/oned/rss/AbstractRSSReader;-><init>()V

    .line 60
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    .line 61
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    .line 62
    return-void
.end method

.method private static addOrTally(Ljava/util/Collection;Lcom/google/zxing/oned/rss/Pair;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/oned/rss/Pair;",
            ">;",
            "Lcom/google/zxing/oned/rss/Pair;",
            ")V"
        }
    .end annotation

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "possiblePairs":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/oned/rss/Pair;>;"
    move-object v1, p1

    .local v1, "pair":Lcom/google/zxing/oned/rss/Pair;
    move-object v5, v1

    if-nez v5, :cond_0

    .line 90
    .line 103
    :goto_0
    return-void

    .line 92
    :cond_0
    const/4 v5, 0x0

    move v2, v5

    .line 93
    .local v2, "found":Z
    move-object v5, v0

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/oned/rss/Pair;

    move-object v4, v5

    .line 94
    .local v4, "other":Lcom/google/zxing/oned/rss/Pair;
    move-object v5, v4

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/Pair;->getValue()I

    move-result v5

    move-object v6, v1

    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/Pair;->getValue()I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 95
    move-object v5, v4

    invoke-virtual {v5}, Lcom/google/zxing/oned/rss/Pair;->incrementCount()V

    .line 96
    const/4 v5, 0x1

    move v2, v5

    .line 100
    .end local v4    # "other":Lcom/google/zxing/oned/rss/Pair;
    :cond_1
    move v5, v2

    if-nez v5, :cond_2

    .line 101
    move-object v5, v0

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 103
    :cond_2
    goto :goto_0

    .line 97
    .restart local v4    # "other":Lcom/google/zxing/oned/rss/Pair;
    :cond_3
    goto :goto_1
.end method

.method private adjustOddEvenCounts(ZI)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 358
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/RSS14Reader;
    move v1, p1

    .local v1, "outsideChar":Z
    move/from16 v2, p2

    .local v2, "numModules":I
    move-object v12, v0

    invoke-virtual {v12}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddCounts()[I

    move-result-object v12

    invoke-static {v12}, Lcom/google/zxing/oned/rss/RSS14Reader;->count([I)I

    move-result v12

    move v3, v12

    .line 359
    .local v3, "oddSum":I
    move-object v12, v0

    invoke-virtual {v12}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenCounts()[I

    move-result-object v12

    invoke-static {v12}, Lcom/google/zxing/oned/rss/RSS14Reader;->count([I)I

    move-result v12

    move v4, v12

    .line 360
    .local v4, "evenSum":I
    move v12, v3

    move v13, v4

    add-int/2addr v12, v13

    move v13, v2

    sub-int/2addr v12, v13

    move v5, v12

    .line 361
    .local v5, "mismatch":I
    move v12, v3

    const/4 v13, 0x1

    and-int/lit8 v12, v12, 0x1

    move v13, v1

    if-eqz v13, :cond_2

    const/4 v13, 0x1

    :goto_0
    if-ne v12, v13, :cond_3

    const/4 v12, 0x1

    :goto_1
    move v6, v12

    .line 362
    .local v6, "oddParityBad":Z
    move v12, v4

    const/4 v13, 0x1

    and-int/lit8 v12, v12, 0x1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4

    const/4 v12, 0x1

    :goto_2
    move v7, v12

    .line 364
    .local v7, "evenParityBad":Z
    const/4 v12, 0x0

    move v8, v12

    .line 365
    .local v8, "incrementOdd":Z
    const/4 v12, 0x0

    move v9, v12

    .line 366
    .local v9, "decrementOdd":Z
    const/4 v12, 0x0

    move v10, v12

    .line 367
    .local v10, "incrementEven":Z
    const/4 v12, 0x0

    move v11, v12

    .line 369
    .local v11, "decrementEven":Z
    move v12, v1

    if-eqz v12, :cond_7

    .line 370
    move v12, v3

    const/16 v13, 0xc

    if-le v12, v13, :cond_5

    .line 371
    const/4 v12, 0x1

    move v9, v12

    .line 375
    :cond_0
    :goto_3
    move v12, v4

    const/16 v13, 0xc

    if-le v12, v13, :cond_6

    .line 376
    const/4 v12, 0x1

    move v11, v12

    .line 405
    :cond_1
    :goto_4
    move v12, v5

    const/4 v13, 0x1

    if-ne v12, v13, :cond_f

    .line 406
    move v12, v6

    if-eqz v12, :cond_d

    .line 407
    move v12, v7

    if-eqz v12, :cond_b

    .line 408
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v12

    throw v12

    .line 361
    .end local v6    # "oddParityBad":Z
    .end local v7    # "evenParityBad":Z
    .end local v8    # "incrementOdd":Z
    .end local v9    # "decrementOdd":Z
    .end local v10    # "incrementEven":Z
    .end local v11    # "decrementEven":Z
    :cond_2
    const/4 v13, 0x0

    goto :goto_0

    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    .line 362
    .restart local v6    # "oddParityBad":Z
    :cond_4
    const/4 v12, 0x0

    goto :goto_2

    .line 372
    .restart local v7    # "evenParityBad":Z
    .restart local v8    # "incrementOdd":Z
    .restart local v9    # "decrementOdd":Z
    .restart local v10    # "incrementEven":Z
    .restart local v11    # "decrementEven":Z
    :cond_5
    move v12, v3

    const/4 v13, 0x4

    if-ge v12, v13, :cond_0

    .line 373
    const/4 v12, 0x1

    move v8, v12

    goto :goto_3

    .line 377
    :cond_6
    move v12, v4

    const/4 v13, 0x4

    if-ge v12, v13, :cond_1

    .line 378
    const/4 v12, 0x1

    move v10, v12

    goto :goto_4

    .line 381
    :cond_7
    move v12, v3

    const/16 v13, 0xb

    if-le v12, v13, :cond_9

    .line 382
    const/4 v12, 0x1

    move v9, v12

    .line 386
    :cond_8
    :goto_5
    move v12, v4

    const/16 v13, 0xa

    if-le v12, v13, :cond_a

    .line 387
    const/4 v12, 0x1

    move v11, v12

    goto :goto_4

    .line 383
    :cond_9
    move v12, v3

    const/4 v13, 0x5

    if-ge v12, v13, :cond_8

    .line 384
    const/4 v12, 0x1

    move v8, v12

    goto :goto_5

    .line 388
    :cond_a
    move v12, v4

    const/4 v13, 0x4

    if-ge v12, v13, :cond_1

    .line 389
    const/4 v12, 0x1

    move v10, v12

    goto :goto_4

    .line 410
    :cond_b
    const/4 v12, 0x1

    move v9, v12

    .line 452
    :cond_c
    :goto_6
    move v12, v8

    if-eqz v12, :cond_19

    .line 453
    move v12, v9

    if-eqz v12, :cond_18

    .line 454
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v12

    throw v12

    .line 412
    :cond_d
    move v12, v7

    if-nez v12, :cond_e

    .line 413
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v12

    throw v12

    .line 415
    :cond_e
    const/4 v12, 0x1

    move v11, v12

    goto :goto_6

    .line 417
    :cond_f
    move v12, v5

    const/4 v13, -0x1

    if-ne v12, v13, :cond_13

    .line 418
    move v12, v6

    if-eqz v12, :cond_11

    .line 419
    move v12, v7

    if-eqz v12, :cond_10

    .line 420
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v12

    throw v12

    .line 422
    :cond_10
    const/4 v12, 0x1

    move v8, v12

    goto :goto_6

    .line 424
    :cond_11
    move v12, v7

    if-nez v12, :cond_12

    .line 425
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v12

    throw v12

    .line 427
    :cond_12
    const/4 v12, 0x1

    move v10, v12

    goto :goto_6

    .line 429
    :cond_13
    move v12, v5

    if-nez v12, :cond_17

    .line 430
    move v12, v6

    if-eqz v12, :cond_16

    .line 431
    move v12, v7

    if-nez v12, :cond_14

    .line 432
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v12

    throw v12

    .line 435
    :cond_14
    move v12, v3

    move v13, v4

    if-ge v12, v13, :cond_15

    .line 436
    const/4 v12, 0x1

    move v8, v12

    .line 437
    const/4 v12, 0x1

    move v11, v12

    goto :goto_6

    .line 439
    :cond_15
    const/4 v12, 0x1

    move v9, v12

    .line 440
    const/4 v12, 0x1

    move v10, v12

    goto :goto_6

    .line 443
    :cond_16
    move v12, v7

    if-eqz v12, :cond_c

    .line 444
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v12

    throw v12

    .line 449
    :cond_17
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v12

    throw v12

    .line 456
    :cond_18
    move-object v12, v0

    invoke-virtual {v12}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddCounts()[I

    move-result-object v12

    move-object v13, v0

    invoke-virtual {v13}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddRoundingErrors()[F

    move-result-object v13

    invoke-static {v12, v13}, Lcom/google/zxing/oned/rss/RSS14Reader;->increment([I[F)V

    .line 458
    :cond_19
    move v12, v9

    if-eqz v12, :cond_1a

    .line 459
    move-object v12, v0

    invoke-virtual {v12}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddCounts()[I

    move-result-object v12

    move-object v13, v0

    invoke-virtual {v13}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddRoundingErrors()[F

    move-result-object v13

    invoke-static {v12, v13}, Lcom/google/zxing/oned/rss/RSS14Reader;->decrement([I[F)V

    .line 461
    :cond_1a
    move v12, v10

    if-eqz v12, :cond_1c

    .line 462
    move v12, v11

    if-eqz v12, :cond_1b

    .line 463
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v12

    throw v12

    .line 465
    :cond_1b
    move-object v12, v0

    invoke-virtual {v12}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenCounts()[I

    move-result-object v12

    move-object v13, v0

    invoke-virtual {v13}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddRoundingErrors()[F

    move-result-object v13

    invoke-static {v12, v13}, Lcom/google/zxing/oned/rss/RSS14Reader;->increment([I[F)V

    .line 467
    :cond_1c
    move v12, v11

    if-eqz v12, :cond_1d

    .line 468
    move-object v12, v0

    invoke-virtual {v12}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenCounts()[I

    move-result-object v12

    move-object v13, v0

    invoke-virtual {v13}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenRoundingErrors()[F

    move-result-object v13

    invoke-static {v12, v13}, Lcom/google/zxing/oned/rss/RSS14Reader;->decrement([I[F)V

    .line 471
    :cond_1d
    return-void
.end method

.method private static checkChecksum(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Z
    .locals 9

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "leftPair":Lcom/google/zxing/oned/rss/Pair;
    move-object v1, p1

    .local v1, "rightPair":Lcom/google/zxing/oned/rss/Pair;
    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v6

    move v2, v6

    .line 143
    .local v2, "leftFPValue":I
    move-object v6, v1

    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v6

    move v3, v6

    .line 144
    .local v3, "rightFPValue":I
    move v6, v2

    if-nez v6, :cond_0

    move v6, v3

    const/16 v7, 0x8

    if-eq v6, v7, :cond_1

    :cond_0
    move v6, v2

    const/16 v7, 0x8

    if-ne v6, v7, :cond_1

    move v6, v3

    if-nez v6, :cond_1

    .line 147
    :cond_1
    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/zxing/oned/rss/Pair;->getChecksumPortion()I

    move-result v6

    const/16 v7, 0x10

    move-object v8, v1

    invoke-virtual {v8}, Lcom/google/zxing/oned/rss/Pair;->getChecksumPortion()I

    move-result v8

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    const/16 v7, 0x4f

    rem-int/lit8 v6, v6, 0x4f

    move v4, v6

    .line 148
    .local v4, "checkValue":I
    const/16 v6, 0x9

    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v7

    mul-int/2addr v6, v7

    move-object v7, v1

    invoke-virtual {v7}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/zxing/oned/rss/FinderPattern;->getValue()I

    move-result v7

    add-int/2addr v6, v7

    move v5, v6

    .line 150
    .local v5, "targetCheckValue":I
    move v6, v5

    const/16 v7, 0x48

    if-le v6, v7, :cond_2

    .line 151
    add-int/lit8 v5, v5, -0x1

    .line 153
    :cond_2
    move v6, v5

    const/16 v7, 0x8

    if-le v6, v7, :cond_3

    .line 154
    add-int/lit8 v5, v5, -0x1

    .line 156
    :cond_3
    move v6, v4

    move v7, v5

    if-ne v6, v7, :cond_4

    const/4 v6, 0x1

    :goto_0
    move v0, v6

    .end local v0    # "leftPair":Lcom/google/zxing/oned/rss/Pair;
    return v0

    .restart local v0    # "leftPair":Lcom/google/zxing/oned/rss/Pair;
    :cond_4
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private static constructResult(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Lcom/google/zxing/Result;
    .locals 20

    .prologue
    .line 112
    move-object/from16 v1, p0

    .local v1, "leftPair":Lcom/google/zxing/oned/rss/Pair;
    move-object/from16 v2, p1

    .local v2, "rightPair":Lcom/google/zxing/oned/rss/Pair;
    const-wide/32 v10, 0x453af5

    move-object v12, v1

    invoke-virtual {v12}, Lcom/google/zxing/oned/rss/Pair;->getValue()I

    move-result v12

    int-to-long v12, v12

    mul-long/2addr v10, v12

    move-object v12, v2

    invoke-virtual {v12}, Lcom/google/zxing/oned/rss/Pair;->getValue()I

    move-result v12

    int-to-long v12, v12

    add-long/2addr v10, v12

    move-wide v3, v10

    .line 113
    .local v3, "symbolValue":J
    move-wide v10, v3

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    .line 115
    .local v5, "text":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    const/16 v12, 0xe

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v6, v10

    .line 116
    .local v6, "buffer":Ljava/lang/StringBuilder;
    const/16 v10, 0xd

    move-object v11, v5

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    rsub-int/lit8 v10, v11, 0xd

    move v7, v10

    .local v7, "i":I
    :goto_0
    move v10, v7

    if-lez v10, :cond_0

    .line 117
    move-object v10, v6

    const/16 v11, 0x30

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 116
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 119
    :cond_0
    move-object v10, v6

    move-object v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 121
    const/4 v10, 0x0

    move v7, v10

    .line 122
    .local v7, "checkDigit":I
    const/4 v10, 0x0

    move v8, v10

    .local v8, "i":I
    :goto_1
    move v10, v8

    const/16 v11, 0xd

    if-ge v10, v11, :cond_2

    .line 123
    move-object v10, v6

    move v11, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v10

    const/16 v11, 0x30

    add-int/lit8 v10, v10, -0x30

    move v9, v10

    .line 124
    .local v9, "digit":I
    move v10, v7

    move v11, v8

    const/4 v12, 0x1

    and-int/lit8 v11, v11, 0x1

    if-nez v11, :cond_1

    const/4 v11, 0x3

    move v12, v9

    mul-int/2addr v11, v12

    :goto_2
    add-int/2addr v10, v11

    move v7, v10

    .line 122
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 124
    :cond_1
    move v11, v9

    goto :goto_2

    .line 126
    .end local v9    # "digit":I
    :cond_2
    const/16 v10, 0xa

    move v11, v7

    const/16 v12, 0xa

    rem-int/lit8 v11, v11, 0xa

    rsub-int/lit8 v10, v11, 0xa

    move v7, v10

    .line 127
    move v10, v7

    const/16 v11, 0xa

    if-ne v10, v11, :cond_3

    .line 128
    const/4 v10, 0x0

    move v7, v10

    .line 130
    :cond_3
    move-object v10, v6

    move v11, v7

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 132
    move-object v10, v1

    invoke-virtual {v10}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v10

    move-object v8, v10

    .line 133
    .local v8, "leftPoints":[Lcom/google/zxing/ResultPoint;
    move-object v10, v2

    invoke-virtual {v10}, Lcom/google/zxing/oned/rss/Pair;->getFinderPattern()Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/zxing/oned/rss/FinderPattern;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v10

    move-object v9, v10

    .line 134
    .local v9, "rightPoints":[Lcom/google/zxing/ResultPoint;
    new-instance v10, Lcom/google/zxing/Result;

    move-object/from16 v19, v10

    move-object/from16 v10, v19

    move-object/from16 v11, v19

    move-object v12, v6

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x4

    new-array v14, v14, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    const/16 v16, 0x0

    move-object/from16 v17, v8

    const/16 v18, 0x0

    aget-object v17, v17, v18

    aput-object v17, v15, v16

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    const/16 v16, 0x1

    move-object/from16 v17, v8

    const/16 v18, 0x1

    aget-object v17, v17, v18

    aput-object v17, v15, v16

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    const/16 v16, 0x2

    move-object/from16 v17, v9

    const/16 v18, 0x0

    aget-object v17, v17, v18

    aput-object v17, v15, v16

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    const/16 v16, 0x3

    move-object/from16 v17, v9

    const/16 v18, 0x1

    aget-object v17, v17, v18

    aput-object v17, v15, v16

    sget-object v15, Lcom/google/zxing/BarcodeFormat;->RSS_14:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    move-object v1, v10

    .end local v1    # "leftPair":Lcom/google/zxing/oned/rss/Pair;
    return-object v1
.end method

.method private decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;Z)Lcom/google/zxing/oned/rss/DataCharacter;
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 189
    move-object/from16 v2, p0

    .local v2, "this":Lcom/google/zxing/oned/rss/RSS14Reader;
    move-object/from16 v3, p1

    .local v3, "row":Lcom/google/zxing/common/BitArray;
    move-object/from16 v4, p2

    .local v4, "pattern":Lcom/google/zxing/oned/rss/FinderPattern;
    move/from16 v5, p3

    .local v5, "outsideChar":Z
    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Lcom/google/zxing/oned/rss/RSS14Reader;->getDataCharacterCounters()[I

    move-result-object v25

    move-object/from16 v6, v25

    .line 190
    .local v6, "counters":[I
    move-object/from16 v25, v6

    const/16 v26, 0x0

    const/16 v27, 0x0

    aput v27, v25, v26

    .line 191
    move-object/from16 v25, v6

    const/16 v26, 0x1

    const/16 v27, 0x0

    aput v27, v25, v26

    .line 192
    move-object/from16 v25, v6

    const/16 v26, 0x2

    const/16 v27, 0x0

    aput v27, v25, v26

    .line 193
    move-object/from16 v25, v6

    const/16 v26, 0x3

    const/16 v27, 0x0

    aput v27, v25, v26

    .line 194
    move-object/from16 v25, v6

    const/16 v26, 0x4

    const/16 v27, 0x0

    aput v27, v25, v26

    .line 195
    move-object/from16 v25, v6

    const/16 v26, 0x5

    const/16 v27, 0x0

    aput v27, v25, v26

    .line 196
    move-object/from16 v25, v6

    const/16 v26, 0x6

    const/16 v27, 0x0

    aput v27, v25, v26

    .line 197
    move-object/from16 v25, v6

    const/16 v26, 0x7

    const/16 v27, 0x0

    aput v27, v25, v26

    .line 199
    move/from16 v25, v5

    if-eqz v25, :cond_2

    .line 200
    move-object/from16 v25, v3

    move-object/from16 v26, v4

    invoke-virtual/range {v26 .. v26}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v26

    const/16 v27, 0x0

    aget v26, v26, v27

    move-object/from16 v27, v6

    invoke-static/range {v25 .. v27}, Lcom/google/zxing/oned/rss/RSS14Reader;->recordPatternInReverse(Lcom/google/zxing/common/BitArray;I[I)V

    .line 211
    :cond_0
    move/from16 v25, v5

    if-eqz v25, :cond_3

    const/16 v25, 0x10

    :goto_0
    move/from16 v7, v25

    .line 212
    .local v7, "numModules":I
    move-object/from16 v25, v6

    invoke-static/range {v25 .. v25}, Lcom/google/zxing/oned/rss/RSS14Reader;->count([I)I

    move-result v25

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v26, v7

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v25, v25, v26

    move/from16 v8, v25

    .line 214
    .local v8, "elementWidth":F
    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddCounts()[I

    move-result-object v25

    move-object/from16 v9, v25

    .line 215
    .local v9, "oddCounts":[I
    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenCounts()[I

    move-result-object v25

    move-object/from16 v10, v25

    .line 216
    .local v10, "evenCounts":[I
    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Lcom/google/zxing/oned/rss/RSS14Reader;->getOddRoundingErrors()[F

    move-result-object v25

    move-object/from16 v11, v25

    .line 217
    .local v11, "oddRoundingErrors":[F
    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Lcom/google/zxing/oned/rss/RSS14Reader;->getEvenRoundingErrors()[F

    move-result-object v25

    move-object/from16 v12, v25

    .line 219
    .local v12, "evenRoundingErrors":[F
    const/16 v25, 0x0

    move/from16 v13, v25

    .local v13, "i":I
    :goto_1
    move/from16 v25, v13

    move-object/from16 v26, v6

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_6

    .line 220
    move-object/from16 v25, v6

    move/from16 v26, v13

    aget v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v26, v8

    div-float v25, v25, v26

    move/from16 v14, v25

    .line 221
    .local v14, "value":F
    move/from16 v25, v14

    const/high16 v26, 0x3f000000    # 0.5f

    add-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v15, v25

    .line 222
    .local v15, "count":I
    move/from16 v25, v15

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_4

    .line 223
    const/16 v25, 0x1

    move/from16 v15, v25

    .line 227
    :cond_1
    :goto_2
    move/from16 v25, v13

    const/16 v26, 0x1

    shr-int/lit8 v25, v25, 0x1

    move/from16 v16, v25

    .line 228
    .local v16, "offset":I
    move/from16 v25, v13

    const/16 v26, 0x1

    and-int/lit8 v25, v25, 0x1

    if-nez v25, :cond_5

    .line 229
    move-object/from16 v25, v9

    move/from16 v26, v16

    move/from16 v27, v15

    aput v27, v25, v26

    .line 230
    move-object/from16 v25, v11

    move/from16 v26, v16

    move/from16 v27, v14

    move/from16 v28, v15

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    sub-float v27, v27, v28

    aput v27, v25, v26

    .line 219
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 202
    .end local v7    # "numModules":I
    .end local v8    # "elementWidth":F
    .end local v9    # "oddCounts":[I
    .end local v10    # "evenCounts":[I
    .end local v11    # "oddRoundingErrors":[F
    .end local v12    # "evenRoundingErrors":[F
    .end local v13    # "i":I
    .end local v14    # "value":F
    .end local v15    # "count":I
    .end local v16    # "offset":I
    :cond_2
    move-object/from16 v25, v3

    move-object/from16 v26, v4

    invoke-virtual/range {v26 .. v26}, Lcom/google/zxing/oned/rss/FinderPattern;->getStartEnd()[I

    move-result-object v26

    const/16 v27, 0x1

    aget v26, v26, v27

    const/16 v27, 0x1

    add-int/lit8 v26, v26, 0x1

    move-object/from16 v27, v6

    invoke-static/range {v25 .. v27}, Lcom/google/zxing/oned/rss/RSS14Reader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 204
    const/16 v25, 0x0

    move/from16 v7, v25

    .local v7, "i":I
    move-object/from16 v25, v6

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x1

    add-int/lit8 v25, v25, -0x1

    move/from16 v8, v25

    .local v8, "j":I
    :goto_4
    move/from16 v25, v7

    move/from16 v26, v8

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_0

    .line 205
    move-object/from16 v25, v6

    move/from16 v26, v7

    aget v25, v25, v26

    move/from16 v9, v25

    .line 206
    .local v9, "temp":I
    move-object/from16 v25, v6

    move/from16 v26, v7

    move-object/from16 v27, v6

    move/from16 v28, v8

    aget v27, v27, v28

    aput v27, v25, v26

    .line 207
    move-object/from16 v25, v6

    move/from16 v26, v8

    move/from16 v27, v9

    aput v27, v25, v26

    .line 204
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    .line 211
    .end local v7    # "i":I
    .end local v8    # "j":I
    .end local v9    # "temp":I
    :cond_3
    const/16 v25, 0xf

    goto/16 :goto_0

    .line 224
    .local v7, "numModules":I
    .local v8, "elementWidth":F
    .local v9, "oddCounts":[I
    .restart local v10    # "evenCounts":[I
    .restart local v11    # "oddRoundingErrors":[F
    .restart local v12    # "evenRoundingErrors":[F
    .restart local v13    # "i":I
    .restart local v14    # "value":F
    .restart local v15    # "count":I
    :cond_4
    move/from16 v25, v15

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_1

    .line 225
    const/16 v25, 0x8

    move/from16 v15, v25

    goto/16 :goto_2

    .line 232
    .restart local v16    # "offset":I
    :cond_5
    move-object/from16 v25, v10

    move/from16 v26, v16

    move/from16 v27, v15

    aput v27, v25, v26

    .line 233
    move-object/from16 v25, v12

    move/from16 v26, v16

    move/from16 v27, v14

    move/from16 v28, v15

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    sub-float v27, v27, v28

    aput v27, v25, v26

    goto/16 :goto_3

    .line 237
    .end local v14    # "value":F
    .end local v15    # "count":I
    .end local v16    # "offset":I
    :cond_6
    move-object/from16 v25, v2

    move/from16 v26, v5

    move/from16 v27, v7

    invoke-direct/range {v25 .. v27}, Lcom/google/zxing/oned/rss/RSS14Reader;->adjustOddEvenCounts(ZI)V

    .line 239
    const/16 v25, 0x0

    move/from16 v13, v25

    .line 240
    .local v13, "oddSum":I
    const/16 v25, 0x0

    move/from16 v14, v25

    .line 241
    .local v14, "oddChecksumPortion":I
    move-object/from16 v25, v9

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x1

    add-int/lit8 v25, v25, -0x1

    move/from16 v15, v25

    .local v15, "i":I
    :goto_5
    move/from16 v25, v15

    if-ltz v25, :cond_7

    .line 242
    move/from16 v25, v14

    const/16 v26, 0x9

    mul-int/lit8 v25, v25, 0x9

    move/from16 v14, v25

    .line 243
    move/from16 v25, v14

    move-object/from16 v26, v9

    move/from16 v27, v15

    aget v26, v26, v27

    add-int v25, v25, v26

    move/from16 v14, v25

    .line 244
    move/from16 v25, v13

    move-object/from16 v26, v9

    move/from16 v27, v15

    aget v26, v26, v27

    add-int v25, v25, v26

    move/from16 v13, v25

    .line 241
    add-int/lit8 v15, v15, -0x1

    goto :goto_5

    .line 246
    :cond_7
    const/16 v25, 0x0

    move/from16 v15, v25

    .line 247
    .local v15, "evenChecksumPortion":I
    const/16 v25, 0x0

    move/from16 v16, v25

    .line 248
    .local v16, "evenSum":I
    move-object/from16 v25, v10

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x1

    add-int/lit8 v25, v25, -0x1

    move/from16 v17, v25

    .local v17, "i":I
    :goto_6
    move/from16 v25, v17

    if-ltz v25, :cond_8

    .line 249
    move/from16 v25, v15

    const/16 v26, 0x9

    mul-int/lit8 v25, v25, 0x9

    move/from16 v15, v25

    .line 250
    move/from16 v25, v15

    move-object/from16 v26, v10

    move/from16 v27, v17

    aget v26, v26, v27

    add-int v25, v25, v26

    move/from16 v15, v25

    .line 251
    move/from16 v25, v16

    move-object/from16 v26, v10

    move/from16 v27, v17

    aget v26, v26, v27

    add-int v25, v25, v26

    move/from16 v16, v25

    .line 248
    add-int/lit8 v17, v17, -0x1

    goto :goto_6

    .line 253
    :cond_8
    move/from16 v25, v14

    const/16 v26, 0x3

    move/from16 v27, v15

    mul-int v26, v26, v27

    add-int v25, v25, v26

    move/from16 v17, v25

    .line 255
    .local v17, "checksumPortion":I
    move/from16 v25, v5

    if-eqz v25, :cond_b

    .line 256
    move/from16 v25, v13

    const/16 v26, 0x1

    and-int/lit8 v25, v25, 0x1

    if-nez v25, :cond_9

    move/from16 v25, v13

    const/16 v26, 0xc

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_9

    move/from16 v25, v13

    const/16 v26, 0x4

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_a

    .line 257
    :cond_9
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v25

    throw v25

    .line 259
    :cond_a
    const/16 v25, 0xc

    move/from16 v26, v13

    rsub-int/lit8 v25, v26, 0xc

    const/16 v26, 0x2

    div-int/lit8 v25, v25, 0x2

    move/from16 v18, v25

    .line 260
    .local v18, "group":I
    sget-object v25, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_ODD_WIDEST:[I

    move/from16 v26, v18

    aget v25, v25, v26

    move/from16 v19, v25

    .line 261
    .local v19, "oddWidest":I
    const/16 v25, 0x9

    move/from16 v26, v19

    rsub-int/lit8 v25, v26, 0x9

    move/from16 v20, v25

    .line 262
    .local v20, "evenWidest":I
    move-object/from16 v25, v9

    move/from16 v26, v19

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v25

    move/from16 v21, v25

    .line 263
    .local v21, "vOdd":I
    move-object/from16 v25, v10

    move/from16 v26, v20

    const/16 v27, 0x1

    invoke-static/range {v25 .. v27}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v25

    move/from16 v22, v25

    .line 264
    .local v22, "vEven":I
    sget-object v25, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_EVEN_TOTAL_SUBSET:[I

    move/from16 v26, v18

    aget v25, v25, v26

    move/from16 v23, v25

    .line 265
    .local v23, "tEven":I
    sget-object v25, Lcom/google/zxing/oned/rss/RSS14Reader;->OUTSIDE_GSUM:[I

    move/from16 v26, v18

    aget v25, v25, v26

    move/from16 v24, v25

    .line 266
    .local v24, "gSum":I
    new-instance v25, Lcom/google/zxing/oned/rss/DataCharacter;

    move-object/from16 v29, v25

    move-object/from16 v25, v29

    move-object/from16 v26, v29

    move/from16 v27, v21

    move/from16 v28, v23

    mul-int v27, v27, v28

    move/from16 v28, v22

    add-int v27, v27, v28

    move/from16 v28, v24

    add-int v27, v27, v28

    move/from16 v28, v17

    invoke-direct/range {v26 .. v28}, Lcom/google/zxing/oned/rss/DataCharacter;-><init>(II)V

    move-object/from16 v2, v25

    .line 278
    .end local v2    # "this":Lcom/google/zxing/oned/rss/RSS14Reader;
    .end local v23    # "tEven":I
    :goto_7
    return-object v2

    .line 268
    .end local v18    # "group":I
    .end local v19    # "oddWidest":I
    .end local v20    # "evenWidest":I
    .end local v21    # "vOdd":I
    .end local v22    # "vEven":I
    .end local v24    # "gSum":I
    .restart local v2    # "this":Lcom/google/zxing/oned/rss/RSS14Reader;
    :cond_b
    move/from16 v25, v16

    const/16 v26, 0x1

    and-int/lit8 v25, v25, 0x1

    if-nez v25, :cond_c

    move/from16 v25, v16

    const/16 v26, 0xa

    move/from16 v0, v25

    move/from16 v1, v26

    if-gt v0, v1, :cond_c

    move/from16 v25, v16

    const/16 v26, 0x4

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_d

    .line 269
    :cond_c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v25

    throw v25

    .line 271
    :cond_d
    const/16 v25, 0xa

    move/from16 v26, v16

    rsub-int/lit8 v25, v26, 0xa

    const/16 v26, 0x2

    div-int/lit8 v25, v25, 0x2

    move/from16 v18, v25

    .line 272
    .restart local v18    # "group":I
    sget-object v25, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_WIDEST:[I

    move/from16 v26, v18

    aget v25, v25, v26

    move/from16 v19, v25

    .line 273
    .restart local v19    # "oddWidest":I
    const/16 v25, 0x9

    move/from16 v26, v19

    rsub-int/lit8 v25, v26, 0x9

    move/from16 v20, v25

    .line 274
    .restart local v20    # "evenWidest":I
    move-object/from16 v25, v9

    move/from16 v26, v19

    const/16 v27, 0x1

    invoke-static/range {v25 .. v27}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v25

    move/from16 v21, v25

    .line 275
    .restart local v21    # "vOdd":I
    move-object/from16 v25, v10

    move/from16 v26, v20

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Lcom/google/zxing/oned/rss/RSSUtils;->getRSSvalue([IIZ)I

    move-result v25

    move/from16 v22, v25

    .line 276
    .restart local v22    # "vEven":I
    sget-object v25, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_ODD_TOTAL_SUBSET:[I

    move/from16 v26, v18

    aget v25, v25, v26

    move/from16 v23, v25

    .line 277
    .local v23, "tOdd":I
    sget-object v25, Lcom/google/zxing/oned/rss/RSS14Reader;->INSIDE_GSUM:[I

    move/from16 v26, v18

    aget v25, v25, v26

    move/from16 v24, v25

    .line 278
    .restart local v24    # "gSum":I
    new-instance v25, Lcom/google/zxing/oned/rss/DataCharacter;

    move-object/from16 v29, v25

    move-object/from16 v25, v29

    move-object/from16 v26, v29

    move/from16 v27, v22

    move/from16 v28, v23

    mul-int v27, v27, v28

    move/from16 v28, v21

    add-int v27, v27, v28

    move/from16 v28, v24

    add-int v27, v27, v28

    move/from16 v28, v17

    invoke-direct/range {v26 .. v28}, Lcom/google/zxing/oned/rss/DataCharacter;-><init>(II)V

    move-object/from16 v2, v25

    goto/16 :goto_7
.end method

.method private decodePair(Lcom/google/zxing/common/BitArray;ZILjava/util/Map;)Lcom/google/zxing/oned/rss/Pair;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/common/BitArray;",
            "ZI",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/oned/rss/Pair;"
        }
    .end annotation

    .prologue
    .line 161
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/RSS14Reader;
    move-object/from16 v1, p1

    .local v1, "row":Lcom/google/zxing/common/BitArray;
    move/from16 v2, p2

    .local v2, "right":Z
    move/from16 v3, p3

    .local v3, "rowNumber":I
    move-object/from16 v4, p4

    .local v4, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object v10, v0

    move-object v11, v1

    const/4 v12, 0x0

    move v13, v2

    :try_start_0
    invoke-direct {v10, v11, v12, v13}, Lcom/google/zxing/oned/rss/RSS14Reader;->findFinderPattern(Lcom/google/zxing/common/BitArray;IZ)[I

    move-result-object v10

    move-object v5, v10

    .line 162
    .local v5, "startEnd":[I
    move-object v10, v0

    move-object v11, v1

    move v12, v3

    move v13, v2

    move-object v14, v5

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/zxing/oned/rss/RSS14Reader;->parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZ[I)Lcom/google/zxing/oned/rss/FinderPattern;

    move-result-object v10

    move-object v6, v10

    .line 164
    .local v6, "pattern":Lcom/google/zxing/oned/rss/FinderPattern;
    move-object v10, v4

    if-nez v10, :cond_2

    const/4 v10, 0x0

    :goto_0
    move-object v7, v10

    .line 167
    .local v7, "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    move-object v10, v7

    if-eqz v10, :cond_1

    .line 168
    move-object v10, v5

    const/4 v11, 0x0

    aget v10, v10, v11

    move-object v11, v5

    const/4 v12, 0x1

    aget v11, v11, v12

    add-int/2addr v10, v11

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    move v8, v10

    .line 169
    .local v8, "center":F
    move v10, v2

    if-eqz v10, :cond_0

    .line 171
    move-object v10, v1

    invoke-virtual {v10}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    int-to-float v10, v10

    move v11, v8

    sub-float/2addr v10, v11

    move v8, v10

    .line 173
    :cond_0
    move-object v10, v7

    new-instance v11, Lcom/google/zxing/ResultPoint;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move v13, v8

    move v14, v3

    int-to-float v14, v14

    invoke-direct {v12, v13, v14}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    invoke-interface {v10, v11}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 176
    .end local v8    # "center":F
    :cond_1
    move-object v10, v0

    move-object v11, v1

    move-object v12, v6

    const/4 v13, 0x1

    invoke-direct {v10, v11, v12, v13}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;Z)Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v10

    move-object v8, v10

    .line 177
    .local v8, "outside":Lcom/google/zxing/oned/rss/DataCharacter;
    move-object v10, v0

    move-object v11, v1

    move-object v12, v6

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodeDataCharacter(Lcom/google/zxing/common/BitArray;Lcom/google/zxing/oned/rss/FinderPattern;Z)Lcom/google/zxing/oned/rss/DataCharacter;

    move-result-object v10

    move-object v9, v10

    .line 178
    .local v9, "inside":Lcom/google/zxing/oned/rss/DataCharacter;
    new-instance v10, Lcom/google/zxing/oned/rss/Pair;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    const/16 v12, 0x63d

    move-object v13, v8

    invoke-virtual {v13}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v13

    mul-int/2addr v12, v13

    move-object v13, v9

    invoke-virtual {v13}, Lcom/google/zxing/oned/rss/DataCharacter;->getValue()I

    move-result v13

    add-int/2addr v12, v13

    move-object v13, v8

    invoke-virtual {v13}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v13

    const/4 v14, 0x4

    move-object v15, v9

    invoke-virtual {v15}, Lcom/google/zxing/oned/rss/DataCharacter;->getChecksumPortion()I

    move-result v15

    mul-int/2addr v14, v15

    add-int/2addr v13, v14

    move-object v14, v6

    invoke-direct {v11, v12, v13, v14}, Lcom/google/zxing/oned/rss/Pair;-><init>(IILcom/google/zxing/oned/rss/FinderPattern;)V

    move-object v0, v10

    .line 182
    .end local v0    # "this":Lcom/google/zxing/oned/rss/RSS14Reader;
    .end local v5    # "startEnd":[I
    .end local v6    # "pattern":Lcom/google/zxing/oned/rss/FinderPattern;
    .end local v7    # "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    .end local v8    # "outside":Lcom/google/zxing/oned/rss/DataCharacter;
    .end local v9    # "inside":Lcom/google/zxing/oned/rss/DataCharacter;
    :goto_1
    return-object v0

    .line 164
    .restart local v0    # "this":Lcom/google/zxing/oned/rss/RSS14Reader;
    .restart local v5    # "startEnd":[I
    .restart local v6    # "pattern":Lcom/google/zxing/oned/rss/FinderPattern;
    :cond_2
    move-object v10, v4

    sget-object v11, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/zxing/ResultPointCallback;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    .end local v5    # "startEnd":[I
    .end local v6    # "pattern":Lcom/google/zxing/oned/rss/FinderPattern;
    :catch_0
    move-exception v10

    move-object v5, v10

    .line 182
    .local v5, "re":Lcom/google/zxing/NotFoundException;
    const/4 v10, 0x0

    move-object v0, v10

    goto :goto_1
.end method

.method private findFinderPattern(Lcom/google/zxing/common/BitArray;IZ)[I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 286
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/RSS14Reader;
    move-object/from16 v1, p1

    .local v1, "row":Lcom/google/zxing/common/BitArray;
    move/from16 v2, p2

    .local v2, "rowOffset":I
    move/from16 v3, p3

    .local v3, "rightFinderPattern":Z
    move-object v10, v0

    invoke-virtual {v10}, Lcom/google/zxing/oned/rss/RSS14Reader;->getDecodeFinderCounters()[I

    move-result-object v10

    move-object v4, v10

    .line 287
    .local v4, "counters":[I
    move-object v10, v4

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    .line 288
    move-object v10, v4

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v10, v11

    .line 289
    move-object v10, v4

    const/4 v11, 0x2

    const/4 v12, 0x0

    aput v12, v10, v11

    .line 290
    move-object v10, v4

    const/4 v11, 0x3

    const/4 v12, 0x0

    aput v12, v10, v11

    .line 292
    move-object v10, v1

    invoke-virtual {v10}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v10

    move v5, v10

    .line 293
    .local v5, "width":I
    const/4 v10, 0x0

    move v6, v10

    .line 294
    .local v6, "isWhite":Z
    :goto_0
    move v10, v2

    move v11, v5

    if-ge v10, v11, :cond_0

    .line 295
    move-object v10, v1

    move v11, v2

    invoke-virtual {v10, v11}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v10

    if-nez v10, :cond_1

    const/4 v10, 0x1

    :goto_1
    move v6, v10

    .line 296
    move v10, v3

    move v11, v6

    if-ne v10, v11, :cond_2

    .line 298
    .line 303
    :cond_0
    const/4 v10, 0x0

    move v7, v10

    .line 304
    .local v7, "counterPosition":I
    move v10, v2

    move v8, v10

    .line 305
    .local v8, "patternStart":I
    move v10, v2

    move v9, v10

    .local v9, "x":I
    :goto_2
    move v10, v9

    move v11, v5

    if-ge v10, v11, :cond_7

    .line 306
    move-object v10, v1

    move v11, v9

    invoke-virtual {v10, v11}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v10

    move v11, v6

    xor-int/2addr v10, v11

    if-eqz v10, :cond_3

    .line 307
    move-object v10, v4

    move v11, v7

    move-object v14, v10

    move v15, v11

    move-object v10, v14

    move v11, v15

    move-object v12, v14

    move v13, v15

    aget v12, v12, v13

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    aput v12, v10, v11

    .line 305
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 295
    .end local v7    # "counterPosition":I
    .end local v8    # "patternStart":I
    .end local v9    # "x":I
    :cond_1
    const/4 v10, 0x0

    goto :goto_1

    .line 300
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 309
    .restart local v7    # "counterPosition":I
    .restart local v8    # "patternStart":I
    .restart local v9    # "x":I
    :cond_3
    move v10, v7

    const/4 v11, 0x3

    if-ne v10, v11, :cond_5

    .line 310
    move-object v10, v4

    invoke-static {v10}, Lcom/google/zxing/oned/rss/RSS14Reader;->isFinderPattern([I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 311
    const/4 v10, 0x2

    new-array v10, v10, [I

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move v13, v8

    aput v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x1

    move v13, v9

    aput v13, v11, v12

    move-object v0, v10

    .end local v0    # "this":Lcom/google/zxing/oned/rss/RSS14Reader;
    return-object v0

    .line 313
    .restart local v0    # "this":Lcom/google/zxing/oned/rss/RSS14Reader;
    :cond_4
    move v10, v8

    move-object v11, v4

    const/4 v12, 0x0

    aget v11, v11, v12

    move-object v12, v4

    const/4 v13, 0x1

    aget v12, v12, v13

    add-int/2addr v11, v12

    add-int/2addr v10, v11

    move v8, v10

    .line 314
    move-object v10, v4

    const/4 v11, 0x0

    move-object v12, v4

    const/4 v13, 0x2

    aget v12, v12, v13

    aput v12, v10, v11

    .line 315
    move-object v10, v4

    const/4 v11, 0x1

    move-object v12, v4

    const/4 v13, 0x3

    aget v12, v12, v13

    aput v12, v10, v11

    .line 316
    move-object v10, v4

    const/4 v11, 0x2

    const/4 v12, 0x0

    aput v12, v10, v11

    .line 317
    move-object v10, v4

    const/4 v11, 0x3

    const/4 v12, 0x0

    aput v12, v10, v11

    .line 318
    add-int/lit8 v7, v7, -0x1

    .line 322
    :goto_4
    move-object v10, v4

    move v11, v7

    const/4 v12, 0x1

    aput v12, v10, v11

    .line 323
    move v10, v6

    if-nez v10, :cond_6

    const/4 v10, 0x1

    :goto_5
    move v6, v10

    goto :goto_3

    .line 320
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 323
    :cond_6
    const/4 v10, 0x0

    goto :goto_5

    .line 326
    :cond_7
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v10

    throw v10
.end method

.method private parseFoundFinderPattern(Lcom/google/zxing/common/BitArray;IZ[I)Lcom/google/zxing/oned/rss/FinderPattern;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 333
    move-object/from16 v1, p0

    .local v1, "this":Lcom/google/zxing/oned/rss/RSS14Reader;
    move-object/from16 v2, p1

    .local v2, "row":Lcom/google/zxing/common/BitArray;
    move/from16 v3, p2

    .local v3, "rowNumber":I
    move/from16 v4, p3

    .local v4, "right":Z
    move-object/from16 v5, p4

    .local v5, "startEnd":[I
    move-object v13, v2

    move-object v14, v5

    const/4 v15, 0x0

    aget v14, v14, v15

    invoke-virtual {v13, v14}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v13

    move v6, v13

    .line 334
    .local v6, "firstIsBlack":Z
    move-object v13, v5

    const/4 v14, 0x0

    aget v13, v13, v14

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    move v7, v13

    .line 336
    .local v7, "firstElementStart":I
    :goto_0
    move v13, v7

    if-ltz v13, :cond_0

    move v13, v6

    move-object v14, v2

    move v15, v7

    invoke-virtual {v14, v15}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v14

    xor-int/2addr v13, v14

    if-eqz v13, :cond_0

    .line 337
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 339
    :cond_0
    add-int/lit8 v7, v7, 0x1

    .line 340
    move-object v13, v5

    const/4 v14, 0x0

    aget v13, v13, v14

    move v14, v7

    sub-int/2addr v13, v14

    move v8, v13

    .line 342
    .local v8, "firstCounter":I
    move-object v13, v1

    invoke-virtual {v13}, Lcom/google/zxing/oned/rss/RSS14Reader;->getDecodeFinderCounters()[I

    move-result-object v13

    move-object v9, v13

    .line 343
    .local v9, "counters":[I
    move-object v13, v9

    const/4 v14, 0x0

    move-object v15, v9

    const/16 v16, 0x1

    move-object/from16 v17, v9

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x1

    add-int/lit8 v17, v17, -0x1

    invoke-static/range {v13 .. v17}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 344
    move-object v13, v9

    const/4 v14, 0x0

    move v15, v8

    aput v15, v13, v14

    .line 345
    move-object v13, v9

    sget-object v14, Lcom/google/zxing/oned/rss/RSS14Reader;->FINDER_PATTERNS:[[I

    invoke-static {v13, v14}, Lcom/google/zxing/oned/rss/RSS14Reader;->parseFinderValue([I[[I)I

    move-result v13

    move v10, v13

    .line 346
    .local v10, "value":I
    move v13, v7

    move v11, v13

    .line 347
    .local v11, "start":I
    move-object v13, v5

    const/4 v14, 0x1

    aget v13, v13, v14

    move v12, v13

    .line 348
    .local v12, "end":I
    move v13, v4

    if-eqz v13, :cond_1

    .line 350
    move-object v13, v2

    invoke-virtual {v13}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v13

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    move v14, v11

    sub-int/2addr v13, v14

    move v11, v13

    .line 351
    move-object v13, v2

    invoke-virtual {v13}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v13

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    move v14, v12

    sub-int/2addr v13, v14

    move v12, v13

    .line 353
    :cond_1
    new-instance v13, Lcom/google/zxing/oned/rss/FinderPattern;

    move-object/from16 v21, v13

    move-object/from16 v13, v21

    move-object/from16 v14, v21

    move v15, v10

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v16, v0

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    const/16 v18, 0x0

    move/from16 v19, v7

    aput v19, v17, v18

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    const/16 v18, 0x1

    move-object/from16 v19, v5

    const/16 v20, 0x1

    aget v19, v19, v20

    aput v19, v17, v18

    move/from16 v17, v11

    move/from16 v18, v12

    move/from16 v19, v3

    invoke-direct/range {v14 .. v19}, Lcom/google/zxing/oned/rss/FinderPattern;-><init>(I[IIII)V

    move-object v1, v13

    .end local v1    # "this":Lcom/google/zxing/oned/rss/RSS14Reader;
    return-object v1
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/RSS14Reader;
    move/from16 v1, p1

    .local v1, "rowNumber":I
    move-object/from16 v2, p2

    .local v2, "row":Lcom/google/zxing/common/BitArray;
    move-object/from16 v3, p3

    .local v3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object v10, v0

    move-object v11, v2

    const/4 v12, 0x0

    move v13, v1

    move-object v14, v3

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodePair(Lcom/google/zxing/common/BitArray;ZILjava/util/Map;)Lcom/google/zxing/oned/rss/Pair;

    move-result-object v10

    move-object v4, v10

    .line 69
    .local v4, "leftPair":Lcom/google/zxing/oned/rss/Pair;
    move-object v10, v0

    iget-object v10, v10, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    move-object v11, v4

    invoke-static {v10, v11}, Lcom/google/zxing/oned/rss/RSS14Reader;->addOrTally(Ljava/util/Collection;Lcom/google/zxing/oned/rss/Pair;)V

    .line 70
    move-object v10, v2

    invoke-virtual {v10}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 71
    move-object v10, v0

    move-object v11, v2

    const/4 v12, 0x1

    move v13, v1

    move-object v14, v3

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/zxing/oned/rss/RSS14Reader;->decodePair(Lcom/google/zxing/common/BitArray;ZILjava/util/Map;)Lcom/google/zxing/oned/rss/Pair;

    move-result-object v10

    move-object v5, v10

    .line 72
    .local v5, "rightPair":Lcom/google/zxing/oned/rss/Pair;
    move-object v10, v0

    iget-object v10, v10, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    move-object v11, v5

    invoke-static {v10, v11}, Lcom/google/zxing/oned/rss/RSS14Reader;->addOrTally(Ljava/util/Collection;Lcom/google/zxing/oned/rss/Pair;)V

    .line 73
    move-object v10, v2

    invoke-virtual {v10}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 74
    move-object v10, v0

    iget-object v10, v10, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v6, v10

    :goto_0
    move-object v10, v6

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v10, v6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/zxing/oned/rss/Pair;

    move-object v7, v10

    .line 75
    .local v7, "left":Lcom/google/zxing/oned/rss/Pair;
    move-object v10, v7

    invoke-virtual {v10}, Lcom/google/zxing/oned/rss/Pair;->getCount()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_1

    .line 76
    move-object v10, v0

    iget-object v10, v10, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v8, v10

    .local v8, "i$":Ljava/util/Iterator;
    :goto_1
    move-object v10, v8

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v10, v8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/zxing/oned/rss/Pair;

    move-object v9, v10

    .line 77
    .local v9, "right":Lcom/google/zxing/oned/rss/Pair;
    move-object v10, v9

    invoke-virtual {v10}, Lcom/google/zxing/oned/rss/Pair;->getCount()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_0

    .line 78
    move-object v10, v7

    move-object v11, v9

    invoke-static {v10, v11}, Lcom/google/zxing/oned/rss/RSS14Reader;->checkChecksum(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 79
    move-object v10, v7

    move-object v11, v9

    invoke-static {v10, v11}, Lcom/google/zxing/oned/rss/RSS14Reader;->constructResult(Lcom/google/zxing/oned/rss/Pair;Lcom/google/zxing/oned/rss/Pair;)Lcom/google/zxing/Result;

    move-result-object v10

    move-object v0, v10

    .end local v0    # "this":Lcom/google/zxing/oned/rss/RSS14Reader;
    return-object v0

    .restart local v0    # "this":Lcom/google/zxing/oned/rss/RSS14Reader;
    :cond_0
    goto :goto_1

    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "right":Lcom/google/zxing/oned/rss/Pair;
    :cond_1
    goto :goto_0

    .line 85
    .end local v7    # "left":Lcom/google/zxing/oned/rss/Pair;
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v10

    throw v10
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/RSS14Reader;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleLeftPairs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 108
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/oned/rss/RSS14Reader;->possibleRightPairs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 109
    return-void
.end method
