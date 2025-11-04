.class public Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
.super Ljava/lang/Object;
.source "FinderPatternFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/qrcode/detector/FinderPatternFinder$1;,
        Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;,
        Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;
    }
.end annotation


# static fields
.field private static final CENTER_QUORUM:I = 0x2

.field private static final INTEGER_MATH_SHIFT:I = 0x8

.field protected static final MAX_MODULES:I = 0x39

.field protected static final MIN_SKIP:I = 0x3


# instance fields
.field private final crossCheckStateCount:[I

.field private hasSkipped:Z

.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private final possibleCenters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/qrcode/detector/FinderPattern;",
            ">;"
        }
    .end annotation
.end field

.field private final resultPointCallback:Lcom/google/zxing/ResultPointCallback;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 5

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
    move-object v1, p1

    .local v1, "image":Lcom/google/zxing/common/BitMatrix;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V
    .locals 7

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
    move-object v1, p1

    .local v1, "image":Lcom/google/zxing/common/BitMatrix;
    move-object v2, p2

    .local v2, "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 63
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    .line 64
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    .line 65
    move-object v3, v0

    const/4 v4, 0x5

    new-array v4, v4, [I

    iput-object v4, v3, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    .line 66
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    .line 67
    return-void
.end method

.method private static centerFromEnd([II)F
    .locals 5

    .prologue
    .line 191
    move-object v0, p0

    .local v0, "stateCount":[I
    move v1, p1

    .local v1, "end":I
    move v2, v1

    move-object v3, v0

    const/4 v4, 0x4

    aget v3, v3, v4

    sub-int/2addr v2, v3

    move-object v3, v0

    const/4 v4, 0x3

    aget v3, v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    move-object v3, v0

    const/4 v4, 0x2

    aget v3, v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    move v0, v2

    .end local v0    # "stateCount":[I
    return v0
.end method

.method private crossCheckHorizontal(IIII)F
    .locals 16

    .prologue
    .line 315
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
    move/from16 v1, p1

    .local v1, "startJ":I
    move/from16 v2, p2

    .local v2, "centerI":I
    move/from16 v3, p3

    .local v3, "maxCount":I
    move/from16 v4, p4

    .local v4, "originalStateCountTotal":I
    move-object v10, v0

    iget-object v10, v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    move-object v5, v10

    .line 317
    .local v5, "image":Lcom/google/zxing/common/BitMatrix;
    move-object v10, v5

    invoke-virtual {v10}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v10

    move v6, v10

    .line 318
    .local v6, "maxJ":I
    move-object v10, v0

    invoke-direct {v10}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->getCrossCheckStateCount()[I

    move-result-object v10

    move-object v7, v10

    .line 320
    .local v7, "stateCount":[I
    move v10, v1

    move v8, v10

    .line 321
    .local v8, "j":I
    :goto_0
    move v10, v8

    if-ltz v10, :cond_0

    move-object v10, v5

    move v11, v8

    move v12, v2

    invoke-virtual {v10, v11, v12}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 322
    move-object v10, v7

    const/4 v11, 0x2

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

    .line 323
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 325
    :cond_0
    move v10, v8

    if-gez v10, :cond_1

    .line 326
    const/high16 v10, 0x7fc00000    # Float.NaN

    move v0, v10

    .line 374
    .end local v0    # "this":Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
    :goto_1
    return v0

    .line 328
    .restart local v0    # "this":Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
    :cond_1
    :goto_2
    move v10, v8

    if-ltz v10, :cond_2

    move-object v10, v5

    move v11, v8

    move v12, v2

    invoke-virtual {v10, v11, v12}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    if-nez v10, :cond_2

    move-object v10, v7

    const/4 v11, 0x1

    aget v10, v10, v11

    move v11, v3

    if-gt v10, v11, :cond_2

    .line 329
    move-object v10, v7

    const/4 v11, 0x1

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

    .line 330
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 332
    :cond_2
    move v10, v8

    if-ltz v10, :cond_3

    move-object v10, v7

    const/4 v11, 0x1

    aget v10, v10, v11

    move v11, v3

    if-le v10, v11, :cond_4

    .line 333
    :cond_3
    const/high16 v10, 0x7fc00000    # Float.NaN

    move v0, v10

    goto :goto_1

    .line 335
    :cond_4
    :goto_3
    move v10, v8

    if-ltz v10, :cond_5

    move-object v10, v5

    move v11, v8

    move v12, v2

    invoke-virtual {v10, v11, v12}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    if-eqz v10, :cond_5

    move-object v10, v7

    const/4 v11, 0x0

    aget v10, v10, v11

    move v11, v3

    if-gt v10, v11, :cond_5

    .line 336
    move-object v10, v7

    const/4 v11, 0x0

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

    .line 337
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 339
    :cond_5
    move-object v10, v7

    const/4 v11, 0x0

    aget v10, v10, v11

    move v11, v3

    if-le v10, v11, :cond_6

    .line 340
    const/high16 v10, 0x7fc00000    # Float.NaN

    move v0, v10

    goto :goto_1

    .line 343
    :cond_6
    move v10, v1

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move v8, v10

    .line 344
    :goto_4
    move v10, v8

    move v11, v6

    if-ge v10, v11, :cond_7

    move-object v10, v5

    move v11, v8

    move v12, v2

    invoke-virtual {v10, v11, v12}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 345
    move-object v10, v7

    const/4 v11, 0x2

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

    .line 346
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 348
    :cond_7
    move v10, v8

    move v11, v6

    if-ne v10, v11, :cond_8

    .line 349
    const/high16 v10, 0x7fc00000    # Float.NaN

    move v0, v10

    goto/16 :goto_1

    .line 351
    :cond_8
    :goto_5
    move v10, v8

    move v11, v6

    if-ge v10, v11, :cond_9

    move-object v10, v5

    move v11, v8

    move v12, v2

    invoke-virtual {v10, v11, v12}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    if-nez v10, :cond_9

    move-object v10, v7

    const/4 v11, 0x3

    aget v10, v10, v11

    move v11, v3

    if-ge v10, v11, :cond_9

    .line 352
    move-object v10, v7

    const/4 v11, 0x3

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

    .line 353
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 355
    :cond_9
    move v10, v8

    move v11, v6

    if-eq v10, v11, :cond_a

    move-object v10, v7

    const/4 v11, 0x3

    aget v10, v10, v11

    move v11, v3

    if-lt v10, v11, :cond_b

    .line 356
    :cond_a
    const/high16 v10, 0x7fc00000    # Float.NaN

    move v0, v10

    goto/16 :goto_1

    .line 358
    :cond_b
    :goto_6
    move v10, v8

    move v11, v6

    if-ge v10, v11, :cond_c

    move-object v10, v5

    move v11, v8

    move v12, v2

    invoke-virtual {v10, v11, v12}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    if-eqz v10, :cond_c

    move-object v10, v7

    const/4 v11, 0x4

    aget v10, v10, v11

    move v11, v3

    if-ge v10, v11, :cond_c

    .line 359
    move-object v10, v7

    const/4 v11, 0x4

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

    .line 360
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 362
    :cond_c
    move-object v10, v7

    const/4 v11, 0x4

    aget v10, v10, v11

    move v11, v3

    if-lt v10, v11, :cond_d

    .line 363
    const/high16 v10, 0x7fc00000    # Float.NaN

    move v0, v10

    goto/16 :goto_1

    .line 368
    :cond_d
    move-object v10, v7

    const/4 v11, 0x0

    aget v10, v10, v11

    move-object v11, v7

    const/4 v12, 0x1

    aget v11, v11, v12

    add-int/2addr v10, v11

    move-object v11, v7

    const/4 v12, 0x2

    aget v11, v11, v12

    add-int/2addr v10, v11

    move-object v11, v7

    const/4 v12, 0x3

    aget v11, v11, v12

    add-int/2addr v10, v11

    move-object v11, v7

    const/4 v12, 0x4

    aget v11, v11, v12

    add-int/2addr v10, v11

    move v9, v10

    .line 370
    .local v9, "stateCountTotal":I
    const/4 v10, 0x5

    move v11, v9

    move v12, v4

    sub-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    mul-int/2addr v10, v11

    move v11, v4

    if-lt v10, v11, :cond_e

    .line 371
    const/high16 v10, 0x7fc00000    # Float.NaN

    move v0, v10

    goto/16 :goto_1

    .line 374
    :cond_e
    move-object v10, v7

    invoke-static {v10}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v10

    if-eqz v10, :cond_f

    move-object v10, v7

    move v11, v8

    invoke-static {v10, v11}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->centerFromEnd([II)F

    move-result v10

    :goto_7
    move v0, v10

    goto/16 :goto_1

    :cond_f
    const/high16 v10, 0x7fc00000    # Float.NaN

    goto :goto_7
.end method

.method private crossCheckVertical(IIII)F
    .locals 16

    .prologue
    .line 243
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
    move/from16 v1, p1

    .local v1, "startI":I
    move/from16 v2, p2

    .local v2, "centerJ":I
    move/from16 v3, p3

    .local v3, "maxCount":I
    move/from16 v4, p4

    .local v4, "originalStateCountTotal":I
    move-object v10, v0

    iget-object v10, v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    move-object v5, v10

    .line 245
    .local v5, "image":Lcom/google/zxing/common/BitMatrix;
    move-object v10, v5

    invoke-virtual {v10}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v10

    move v6, v10

    .line 246
    .local v6, "maxI":I
    move-object v10, v0

    invoke-direct {v10}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->getCrossCheckStateCount()[I

    move-result-object v10

    move-object v7, v10

    .line 249
    .local v7, "stateCount":[I
    move v10, v1

    move v8, v10

    .line 250
    .local v8, "i":I
    :goto_0
    move v10, v8

    if-ltz v10, :cond_0

    move-object v10, v5

    move v11, v2

    move v12, v8

    invoke-virtual {v10, v11, v12}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 251
    move-object v10, v7

    const/4 v11, 0x2

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

    .line 252
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 254
    :cond_0
    move v10, v8

    if-gez v10, :cond_1

    .line 255
    const/high16 v10, 0x7fc00000    # Float.NaN

    move v0, v10

    .line 305
    .end local v0    # "this":Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
    :goto_1
    return v0

    .line 257
    .restart local v0    # "this":Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
    :cond_1
    :goto_2
    move v10, v8

    if-ltz v10, :cond_2

    move-object v10, v5

    move v11, v2

    move v12, v8

    invoke-virtual {v10, v11, v12}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    if-nez v10, :cond_2

    move-object v10, v7

    const/4 v11, 0x1

    aget v10, v10, v11

    move v11, v3

    if-gt v10, v11, :cond_2

    .line 258
    move-object v10, v7

    const/4 v11, 0x1

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

    .line 259
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 262
    :cond_2
    move v10, v8

    if-ltz v10, :cond_3

    move-object v10, v7

    const/4 v11, 0x1

    aget v10, v10, v11

    move v11, v3

    if-le v10, v11, :cond_4

    .line 263
    :cond_3
    const/high16 v10, 0x7fc00000    # Float.NaN

    move v0, v10

    goto :goto_1

    .line 265
    :cond_4
    :goto_3
    move v10, v8

    if-ltz v10, :cond_5

    move-object v10, v5

    move v11, v2

    move v12, v8

    invoke-virtual {v10, v11, v12}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    if-eqz v10, :cond_5

    move-object v10, v7

    const/4 v11, 0x0

    aget v10, v10, v11

    move v11, v3

    if-gt v10, v11, :cond_5

    .line 266
    move-object v10, v7

    const/4 v11, 0x0

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

    .line 267
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 269
    :cond_5
    move-object v10, v7

    const/4 v11, 0x0

    aget v10, v10, v11

    move v11, v3

    if-le v10, v11, :cond_6

    .line 270
    const/high16 v10, 0x7fc00000    # Float.NaN

    move v0, v10

    goto :goto_1

    .line 274
    :cond_6
    move v10, v1

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move v8, v10

    .line 275
    :goto_4
    move v10, v8

    move v11, v6

    if-ge v10, v11, :cond_7

    move-object v10, v5

    move v11, v2

    move v12, v8

    invoke-virtual {v10, v11, v12}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 276
    move-object v10, v7

    const/4 v11, 0x2

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

    .line 277
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 279
    :cond_7
    move v10, v8

    move v11, v6

    if-ne v10, v11, :cond_8

    .line 280
    const/high16 v10, 0x7fc00000    # Float.NaN

    move v0, v10

    goto/16 :goto_1

    .line 282
    :cond_8
    :goto_5
    move v10, v8

    move v11, v6

    if-ge v10, v11, :cond_9

    move-object v10, v5

    move v11, v2

    move v12, v8

    invoke-virtual {v10, v11, v12}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    if-nez v10, :cond_9

    move-object v10, v7

    const/4 v11, 0x3

    aget v10, v10, v11

    move v11, v3

    if-ge v10, v11, :cond_9

    .line 283
    move-object v10, v7

    const/4 v11, 0x3

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

    .line 284
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 286
    :cond_9
    move v10, v8

    move v11, v6

    if-eq v10, v11, :cond_a

    move-object v10, v7

    const/4 v11, 0x3

    aget v10, v10, v11

    move v11, v3

    if-lt v10, v11, :cond_b

    .line 287
    :cond_a
    const/high16 v10, 0x7fc00000    # Float.NaN

    move v0, v10

    goto/16 :goto_1

    .line 289
    :cond_b
    :goto_6
    move v10, v8

    move v11, v6

    if-ge v10, v11, :cond_c

    move-object v10, v5

    move v11, v2

    move v12, v8

    invoke-virtual {v10, v11, v12}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    if-eqz v10, :cond_c

    move-object v10, v7

    const/4 v11, 0x4

    aget v10, v10, v11

    move v11, v3

    if-ge v10, v11, :cond_c

    .line 290
    move-object v10, v7

    const/4 v11, 0x4

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

    .line 291
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 293
    :cond_c
    move-object v10, v7

    const/4 v11, 0x4

    aget v10, v10, v11

    move v11, v3

    if-lt v10, v11, :cond_d

    .line 294
    const/high16 v10, 0x7fc00000    # Float.NaN

    move v0, v10

    goto/16 :goto_1

    .line 299
    :cond_d
    move-object v10, v7

    const/4 v11, 0x0

    aget v10, v10, v11

    move-object v11, v7

    const/4 v12, 0x1

    aget v11, v11, v12

    add-int/2addr v10, v11

    move-object v11, v7

    const/4 v12, 0x2

    aget v11, v11, v12

    add-int/2addr v10, v11

    move-object v11, v7

    const/4 v12, 0x3

    aget v11, v11, v12

    add-int/2addr v10, v11

    move-object v11, v7

    const/4 v12, 0x4

    aget v11, v11, v12

    add-int/2addr v10, v11

    move v9, v10

    .line 301
    .local v9, "stateCountTotal":I
    const/4 v10, 0x5

    move v11, v9

    move v12, v4

    sub-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    mul-int/2addr v10, v11

    const/4 v11, 0x2

    move v12, v4

    mul-int/2addr v11, v12

    if-lt v10, v11, :cond_e

    .line 302
    const/high16 v10, 0x7fc00000    # Float.NaN

    move v0, v10

    goto/16 :goto_1

    .line 305
    :cond_e
    move-object v10, v7

    invoke-static {v10}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v10

    if-eqz v10, :cond_f

    move-object v10, v7

    move v11, v8

    invoke-static {v10, v11}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->centerFromEnd([II)F

    move-result v10

    :goto_7
    move v0, v10

    goto/16 :goto_1

    :cond_f
    const/high16 v10, 0x7fc00000    # Float.NaN

    goto :goto_7
.end method

.method private findRowSkip()I
    .locals 8

    .prologue
    .line 433
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v1, v5

    .line 434
    .local v1, "max":I
    move v5, v1

    const/4 v6, 0x1

    if-gt v5, v6, :cond_0

    .line 435
    const/4 v5, 0x0

    move v0, v5

    .line 454
    .end local v0    # "this":Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
    :goto_0
    return v0

    .line 437
    .restart local v0    # "this":Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
    :cond_0
    const/4 v5, 0x0

    move-object v2, v5

    .line 438
    .local v2, "firstConfirmedCenter":Lcom/google/zxing/qrcode/detector/FinderPattern;
    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-object v4, v5

    .line 439
    .local v4, "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    move-object v5, v4

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_1

    .line 440
    move-object v5, v2

    if-nez v5, :cond_2

    .line 441
    move-object v5, v4

    move-object v2, v5

    .line 449
    :cond_1
    goto :goto_1

    .line 448
    :cond_2
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->hasSkipped:Z

    .line 449
    move-object v5, v2

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v5

    move-object v6, v4

    invoke-virtual {v6}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    move-object v6, v2

    invoke-virtual {v6}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v6

    move-object v7, v4

    invoke-virtual {v7}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    const/4 v6, 0x2

    div-int/lit8 v5, v5, 0x2

    move v0, v5

    goto :goto_0

    .line 454
    .end local v4    # "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_3
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method protected static foundPatternCross([I)Z
    .locals 7

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "stateCount":[I
    const/4 v4, 0x0

    move v1, v4

    .line 201
    .local v1, "totalModuleSize":I
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    const/4 v5, 0x5

    if-ge v4, v5, :cond_1

    .line 202
    move-object v4, v0

    move v5, v2

    aget v4, v4, v5

    move v3, v4

    .line 203
    .local v3, "count":I
    move v4, v3

    if-nez v4, :cond_0

    .line 204
    const/4 v4, 0x0

    move v0, v4

    .line 214
    .end local v0    # "stateCount":[I
    .end local v2    # "i":I
    .end local v3    # "count":I
    :goto_1
    return v0

    .line 206
    .restart local v0    # "stateCount":[I
    .restart local v2    # "i":I
    .restart local v3    # "count":I
    :cond_0
    move v4, v1

    move v5, v3

    add-int/2addr v4, v5

    move v1, v4

    .line 201
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 208
    .end local v3    # "count":I
    :cond_1
    move v4, v1

    const/4 v5, 0x7

    if-ge v4, v5, :cond_2

    .line 209
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1

    .line 211
    :cond_2
    move v4, v1

    const/16 v5, 0x8

    shl-int/lit8 v4, v4, 0x8

    const/4 v5, 0x7

    div-int/lit8 v4, v4, 0x7

    move v2, v4

    .line 212
    .local v2, "moduleSize":I
    move v4, v2

    const/4 v5, 0x2

    div-int/lit8 v4, v4, 0x2

    move v3, v4

    .line 214
    .local v3, "maxVariance":I
    move v4, v2

    move-object v5, v0

    const/4 v6, 0x0

    aget v5, v5, v6

    const/16 v6, 0x8

    shl-int/lit8 v5, v5, 0x8

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move v5, v3

    if-ge v4, v5, :cond_3

    move v4, v2

    move-object v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    const/16 v6, 0x8

    shl-int/lit8 v5, v5, 0x8

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move v5, v3

    if-ge v4, v5, :cond_3

    const/4 v4, 0x3

    move v5, v2

    mul-int/2addr v4, v5

    move-object v5, v0

    const/4 v6, 0x2

    aget v5, v5, v6

    const/16 v6, 0x8

    shl-int/lit8 v5, v5, 0x8

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/4 v5, 0x3

    move v6, v3

    mul-int/2addr v5, v6

    if-ge v4, v5, :cond_3

    move v4, v2

    move-object v5, v0

    const/4 v6, 0x3

    aget v5, v5, v6

    const/16 v6, 0x8

    shl-int/lit8 v5, v5, 0x8

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move v5, v3

    if-ge v4, v5, :cond_3

    move v4, v2

    move-object v5, v0

    const/4 v6, 0x4

    aget v5, v5, v6

    const/16 v6, 0x8

    shl-int/lit8 v5, v5, 0x8

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move v5, v3

    if-ge v4, v5, :cond_3

    const/4 v4, 0x1

    :goto_2
    move v0, v4

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private getCrossCheckStateCount()[I
    .locals 4

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 223
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 224
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 225
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    const/4 v2, 0x3

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 226
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    const/4 v2, 0x4

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 227
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckStateCount:[I

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
    return-object v0
.end method

.method private haveMultiplyConfirmedCenters()Z
    .locals 11

    .prologue
    .line 463
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
    const/4 v8, 0x0

    move v1, v8

    .line 464
    .local v1, "confirmedCount":I
    const/4 v8, 0x0

    move v2, v8

    .line 465
    .local v2, "totalModuleSize":F
    move-object v8, v0

    iget-object v8, v8, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move v3, v8

    .line 466
    .local v3, "max":I
    move-object v8, v0

    iget-object v8, v8, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v4, v8

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-object v5, v8

    .line 467
    .local v5, "pattern":Lcom/google/zxing/qrcode/detector/FinderPattern;
    move-object v8, v5

    invoke-virtual {v8}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v8

    const/4 v9, 0x2

    if-lt v8, v9, :cond_0

    .line 468
    add-int/lit8 v1, v1, 0x1

    .line 469
    move v8, v2

    move-object v9, v5

    invoke-virtual {v9}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v9

    add-float/2addr v8, v9

    move v2, v8

    :cond_0
    goto :goto_0

    .line 472
    .end local v5    # "pattern":Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_1
    move v8, v1

    const/4 v9, 0x3

    if-ge v8, v9, :cond_2

    .line 473
    const/4 v8, 0x0

    move v0, v8

    .line 484
    .end local v0    # "this":Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
    .end local v4    # "i$":Ljava/util/Iterator;
    :goto_1
    return v0

    .line 479
    .restart local v0    # "this":Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    move v8, v2

    move v9, v3

    int-to-float v9, v9

    div-float/2addr v8, v9

    move v4, v8

    .line 480
    .local v4, "average":F
    const/4 v8, 0x0

    move v5, v8

    .line 481
    .local v5, "totalDeviation":F
    move-object v8, v0

    iget-object v8, v8, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v6, v8

    .local v6, "i$":Ljava/util/Iterator;
    :goto_2
    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-object v7, v8

    .line 482
    .local v7, "pattern":Lcom/google/zxing/qrcode/detector/FinderPattern;
    move v8, v5

    move-object v9, v7

    invoke-virtual {v9}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v9

    move v10, v4

    sub-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    add-float/2addr v8, v9

    move v5, v8

    goto :goto_2

    .line 484
    .end local v7    # "pattern":Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_3
    move v8, v5

    const v9, 0x3d4ccccd    # 0.05f

    move v10, v2

    mul-float/2addr v9, v10

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_4

    const/4 v8, 0x1

    :goto_3
    move v0, v8

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    goto :goto_3
.end method

.method private selectBestPatterns()[Lcom/google/zxing/qrcode/detector/FinderPattern;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 495
    move-object/from16 v1, p0

    .local v1, "this":Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
    move-object v10, v1

    iget-object v10, v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    move v2, v10

    .line 496
    .local v2, "startSize":I
    move v10, v2

    const/4 v11, 0x3

    if-ge v10, v11, :cond_0

    .line 498
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v10

    throw v10

    .line 502
    :cond_0
    move v10, v2

    const/4 v11, 0x3

    if-le v10, v11, :cond_3

    .line 504
    const/4 v10, 0x0

    move v3, v10

    .line 505
    .local v3, "totalModuleSize":F
    const/4 v10, 0x0

    move v4, v10

    .line 506
    .local v4, "square":F
    move-object v10, v1

    iget-object v10, v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v5, v10

    .local v5, "i$":Ljava/util/Iterator;
    :goto_0
    move-object v10, v5

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v10, v5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-object v6, v10

    .line 507
    .local v6, "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    move-object v10, v6

    invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v10

    move v7, v10

    .line 508
    .local v7, "size":F
    move v10, v3

    move v11, v7

    add-float/2addr v10, v11

    move v3, v10

    .line 509
    move v10, v4

    move v11, v7

    move v12, v7

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    move v4, v10

    .line 510
    goto :goto_0

    .line 511
    .end local v6    # "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v7    # "size":F
    :cond_1
    move v10, v3

    move v11, v2

    int-to-float v11, v11

    div-float/2addr v10, v11

    move v5, v10

    .line 512
    .local v5, "average":F
    move v10, v4

    move v11, v2

    int-to-float v11, v11

    div-float/2addr v10, v11

    move v11, v5

    move v12, v5

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v10, v10

    move v6, v10

    .line 514
    .local v6, "stdDev":F
    move-object v10, v1

    iget-object v10, v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    new-instance v11, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move v13, v5

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;-><init>(FLcom/google/zxing/qrcode/detector/FinderPatternFinder$1;)V

    invoke-static {v10, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 516
    const v10, 0x3e4ccccd    # 0.2f

    move v11, v5

    mul-float/2addr v10, v11

    move v11, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    move v7, v10

    .line 518
    .local v7, "limit":F
    const/4 v10, 0x0

    move v8, v10

    .local v8, "i":I
    :goto_1
    move v10, v8

    move-object v11, v1

    iget-object v11, v11, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_3

    move-object v10, v1

    iget-object v10, v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x3

    if-le v10, v11, :cond_3

    .line 519
    move-object v10, v1

    iget-object v10, v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    move v11, v8

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-object v9, v10

    .line 520
    .local v9, "pattern":Lcom/google/zxing/qrcode/detector/FinderPattern;
    move-object v10, v9

    invoke-virtual {v10}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v10

    move v11, v5

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    move v11, v7

    cmpl-float v10, v10, v11

    if-lez v10, :cond_2

    .line 521
    move-object v10, v1

    iget-object v10, v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    move v11, v8

    invoke-interface {v10, v11}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v10

    .line 522
    add-int/lit8 v8, v8, -0x1

    .line 518
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 527
    .end local v3    # "totalModuleSize":F
    .end local v4    # "square":F
    .end local v5    # "average":F
    .end local v6    # "stdDev":F
    .end local v7    # "limit":F
    .end local v8    # "i":I
    .end local v9    # "pattern":Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_3
    move-object v10, v1

    iget-object v10, v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x3

    if-le v10, v11, :cond_5

    .line 530
    const/4 v10, 0x0

    move v3, v10

    .line 531
    .restart local v3    # "totalModuleSize":F
    move-object v10, v1

    iget-object v10, v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v4, v10

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    move-object v10, v4

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    move-object v10, v4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-object v5, v10

    .line 532
    .local v5, "possibleCenter":Lcom/google/zxing/qrcode/detector/FinderPattern;
    move v10, v3

    move-object v11, v5

    invoke-virtual {v11}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v11

    add-float/2addr v10, v11

    move v3, v10

    goto :goto_2

    .line 535
    .end local v5    # "possibleCenter":Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_4
    move v10, v3

    move-object v11, v1

    iget-object v11, v11, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    move v4, v10

    .line 537
    .local v4, "average":F
    move-object v10, v1

    iget-object v10, v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    new-instance v11, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move v13, v4

    const/4 v14, 0x0

    invoke-direct {v12, v13, v14}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;-><init>(FLcom/google/zxing/qrcode/detector/FinderPatternFinder$1;)V

    invoke-static {v10, v11}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 539
    move-object v10, v1

    iget-object v10, v10, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    const/4 v11, 0x3

    move-object v12, v1

    iget-object v12, v12, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    invoke-interface {v10, v11, v12}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->clear()V

    .line 542
    .end local v3    # "totalModuleSize":F
    .end local v4    # "average":F
    :cond_5
    const/4 v10, 0x3

    new-array v10, v10, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x0

    move-object v13, v1

    iget-object v13, v13, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v13, v11, v12

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x1

    move-object v13, v1

    iget-object v13, v13, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    const/4 v14, 0x1

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v13, v11, v12

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    const/4 v12, 0x2

    move-object v13, v1

    iget-object v13, v13, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    const/4 v14, 0x2

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v13, v11, v12

    move-object v1, v10

    .end local v1    # "this":Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
    return-object v1
.end method


# virtual methods
.method final find(Ljava/util/Map;)Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/qrcode/detector/FinderPatternInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 78
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
    move-object/from16 v1, p1

    .local v1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object v13, v1

    if-eqz v13, :cond_3

    move-object v13, v1

    sget-object v14, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v13, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v13, 0x1

    :goto_0
    move v2, v13

    .line 79
    .local v2, "tryHarder":Z
    move-object v13, v0

    iget-object v13, v13, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v13}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v13

    move v3, v13

    .line 80
    .local v3, "maxI":I
    move-object v13, v0

    iget-object v13, v13, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v13}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v13

    move v4, v13

    .line 88
    .local v4, "maxJ":I
    const/4 v13, 0x3

    move v14, v3

    mul-int/2addr v13, v14

    const/16 v14, 0xe4

    div-int/lit16 v13, v13, 0xe4

    move v5, v13

    .line 89
    .local v5, "iSkip":I
    move v13, v5

    const/4 v14, 0x3

    if-lt v13, v14, :cond_0

    move v13, v2

    if-eqz v13, :cond_1

    .line 90
    :cond_0
    const/4 v13, 0x3

    move v5, v13

    .line 93
    :cond_1
    const/4 v13, 0x0

    move v6, v13

    .line 94
    .local v6, "done":Z
    const/4 v13, 0x5

    new-array v13, v13, [I

    move-object v7, v13

    .line 95
    .local v7, "stateCount":[I
    move v13, v5

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    move v8, v13

    .local v8, "i":I
    :goto_1
    move v13, v8

    move v14, v3

    if-ge v13, v14, :cond_d

    move v13, v6

    if-nez v13, :cond_d

    .line 97
    move-object v13, v7

    const/4 v14, 0x0

    const/4 v15, 0x0

    aput v15, v13, v14

    .line 98
    move-object v13, v7

    const/4 v14, 0x1

    const/4 v15, 0x0

    aput v15, v13, v14

    .line 99
    move-object v13, v7

    const/4 v14, 0x2

    const/4 v15, 0x0

    aput v15, v13, v14

    .line 100
    move-object v13, v7

    const/4 v14, 0x3

    const/4 v15, 0x0

    aput v15, v13, v14

    .line 101
    move-object v13, v7

    const/4 v14, 0x4

    const/4 v15, 0x0

    aput v15, v13, v14

    .line 102
    const/4 v13, 0x0

    move v9, v13

    .line 103
    .local v9, "currentState":I
    const/4 v13, 0x0

    move v10, v13

    .local v10, "j":I
    :goto_2
    move v13, v10

    move v14, v4

    if-ge v13, v14, :cond_b

    .line 104
    move-object v13, v0

    iget-object v13, v13, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    move v14, v10

    move v15, v8

    invoke-virtual {v13, v14, v15}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 106
    move v13, v9

    const/4 v14, 0x1

    and-int/lit8 v13, v13, 0x1

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    .line 107
    add-int/lit8 v9, v9, 0x1

    .line 109
    :cond_2
    move-object v13, v7

    move v14, v9

    move-object/from16 v17, v13

    move/from16 v18, v14

    move-object/from16 v13, v17

    move/from16 v14, v18

    move-object/from16 v15, v17

    move/from16 v16, v18

    aget v15, v15, v16

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    aput v15, v13, v14

    .line 103
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 78
    .end local v2    # "tryHarder":Z
    .end local v3    # "maxI":I
    .end local v4    # "maxJ":I
    .end local v5    # "iSkip":I
    .end local v6    # "done":Z
    .end local v7    # "stateCount":[I
    .end local v8    # "i":I
    .end local v9    # "currentState":I
    .end local v10    # "j":I
    :cond_3
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 111
    .restart local v2    # "tryHarder":Z
    .restart local v3    # "maxI":I
    .restart local v4    # "maxJ":I
    .restart local v5    # "iSkip":I
    .restart local v6    # "done":Z
    .restart local v7    # "stateCount":[I
    .restart local v8    # "i":I
    .restart local v9    # "currentState":I
    .restart local v10    # "j":I
    :cond_4
    move v13, v9

    const/4 v14, 0x1

    and-int/lit8 v13, v13, 0x1

    if-nez v13, :cond_a

    .line 112
    move v13, v9

    const/4 v14, 0x4

    if-ne v13, v14, :cond_9

    .line 113
    move-object v13, v7

    invoke-static {v13}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 114
    move-object v13, v0

    move-object v14, v7

    move v15, v8

    move/from16 v16, v10

    invoke-virtual/range {v13 .. v16}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->handlePossibleCenter([III)Z

    move-result v13

    move v11, v13

    .line 115
    .local v11, "confirmed":Z
    move v13, v11

    if-eqz v13, :cond_7

    .line 118
    const/4 v13, 0x2

    move v5, v13

    .line 119
    move-object v13, v0

    iget-boolean v13, v13, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->hasSkipped:Z

    if-eqz v13, :cond_5

    .line 120
    move-object v13, v0

    invoke-direct {v13}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->haveMultiplyConfirmedCenters()Z

    move-result v13

    move v6, v13

    .line 146
    :goto_4
    const/4 v13, 0x0

    move v9, v13

    .line 147
    move-object v13, v7

    const/4 v14, 0x0

    const/4 v15, 0x0

    aput v15, v13, v14

    .line 148
    move-object v13, v7

    const/4 v14, 0x1

    const/4 v15, 0x0

    aput v15, v13, v14

    .line 149
    move-object v13, v7

    const/4 v14, 0x2

    const/4 v15, 0x0

    aput v15, v13, v14

    .line 150
    move-object v13, v7

    const/4 v14, 0x3

    const/4 v15, 0x0

    aput v15, v13, v14

    .line 151
    move-object v13, v7

    const/4 v14, 0x4

    const/4 v15, 0x0

    aput v15, v13, v14

    .line 152
    goto :goto_3

    .line 122
    :cond_5
    move-object v13, v0

    invoke-direct {v13}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->findRowSkip()I

    move-result v13

    move v12, v13

    .line 123
    .local v12, "rowSkip":I
    move v13, v12

    move-object v14, v7

    const/4 v15, 0x2

    aget v14, v14, v15

    if-le v13, v14, :cond_6

    .line 132
    move v13, v8

    move v14, v12

    move-object v15, v7

    const/16 v16, 0x2

    aget v15, v15, v16

    sub-int/2addr v14, v15

    move v15, v5

    sub-int/2addr v14, v15

    add-int/2addr v13, v14

    move v8, v13

    .line 133
    move v13, v4

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    move v10, v13

    .line 135
    :cond_6
    goto :goto_4

    .line 137
    .end local v12    # "rowSkip":I
    :cond_7
    move-object v13, v7

    const/4 v14, 0x0

    move-object v15, v7

    const/16 v16, 0x2

    aget v15, v15, v16

    aput v15, v13, v14

    .line 138
    move-object v13, v7

    const/4 v14, 0x1

    move-object v15, v7

    const/16 v16, 0x3

    aget v15, v15, v16

    aput v15, v13, v14

    .line 139
    move-object v13, v7

    const/4 v14, 0x2

    move-object v15, v7

    const/16 v16, 0x4

    aget v15, v15, v16

    aput v15, v13, v14

    .line 140
    move-object v13, v7

    const/4 v14, 0x3

    const/4 v15, 0x1

    aput v15, v13, v14

    .line 141
    move-object v13, v7

    const/4 v14, 0x4

    const/4 v15, 0x0

    aput v15, v13, v14

    .line 142
    const/4 v13, 0x3

    move v9, v13

    .line 143
    goto/16 :goto_3

    .line 153
    .end local v11    # "confirmed":Z
    :cond_8
    move-object v13, v7

    const/4 v14, 0x0

    move-object v15, v7

    const/16 v16, 0x2

    aget v15, v15, v16

    aput v15, v13, v14

    .line 154
    move-object v13, v7

    const/4 v14, 0x1

    move-object v15, v7

    const/16 v16, 0x3

    aget v15, v15, v16

    aput v15, v13, v14

    .line 155
    move-object v13, v7

    const/4 v14, 0x2

    move-object v15, v7

    const/16 v16, 0x4

    aget v15, v15, v16

    aput v15, v13, v14

    .line 156
    move-object v13, v7

    const/4 v14, 0x3

    const/4 v15, 0x1

    aput v15, v13, v14

    .line 157
    move-object v13, v7

    const/4 v14, 0x4

    const/4 v15, 0x0

    aput v15, v13, v14

    .line 158
    const/4 v13, 0x3

    move v9, v13

    goto/16 :goto_3

    .line 161
    :cond_9
    move-object v13, v7

    add-int/lit8 v9, v9, 0x1

    move v14, v9

    move-object/from16 v17, v13

    move/from16 v18, v14

    move-object/from16 v13, v17

    move/from16 v14, v18

    move-object/from16 v15, v17

    move/from16 v16, v18

    aget v15, v15, v16

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    aput v15, v13, v14

    goto/16 :goto_3

    .line 164
    :cond_a
    move-object v13, v7

    move v14, v9

    move-object/from16 v17, v13

    move/from16 v18, v14

    move-object/from16 v13, v17

    move/from16 v14, v18

    move-object/from16 v15, v17

    move/from16 v16, v18

    aget v15, v15, v16

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    aput v15, v13, v14

    goto/16 :goto_3

    .line 168
    :cond_b
    move-object v13, v7

    invoke-static {v13}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 169
    move-object v13, v0

    move-object v14, v7

    move v15, v8

    move/from16 v16, v4

    invoke-virtual/range {v13 .. v16}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->handlePossibleCenter([III)Z

    move-result v13

    move v10, v13

    .line 170
    .local v10, "confirmed":Z
    move v13, v10

    if-eqz v13, :cond_c

    .line 171
    move-object v13, v7

    const/4 v14, 0x0

    aget v13, v13, v14

    move v5, v13

    .line 172
    move-object v13, v0

    iget-boolean v13, v13, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->hasSkipped:Z

    if-eqz v13, :cond_c

    .line 174
    move-object v13, v0

    invoke-direct {v13}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->haveMultiplyConfirmedCenters()Z

    move-result v13

    move v6, v13

    .line 95
    .end local v10    # "confirmed":Z
    :cond_c
    move v13, v8

    move v14, v5

    add-int/2addr v13, v14

    move v8, v13

    goto/16 :goto_1

    .line 180
    .end local v9    # "currentState":I
    :cond_d
    move-object v13, v0

    invoke-direct {v13}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->selectBestPatterns()[Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v13

    move-object v8, v13

    .line 181
    .local v8, "patternInfo":[Lcom/google/zxing/qrcode/detector/FinderPattern;
    move-object v13, v8

    invoke-static {v13}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    .line 183
    new-instance v13, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    move-object/from16 v17, v13

    move-object/from16 v13, v17

    move-object/from16 v14, v17

    move-object v15, v8

    invoke-direct {v14, v15}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V

    move-object v0, v13

    .end local v0    # "this":Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
    return-object v0
.end method

.method protected final getImage()Lcom/google/zxing/common/BitMatrix;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
    return-object v0
.end method

.method protected final getPossibleCenters()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/qrcode/detector/FinderPattern;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
    return-object v0
.end method

.method protected final handlePossibleCenter([III)Z
    .locals 18

    .prologue
    .line 394
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
    move-object/from16 v1, p1

    .local v1, "stateCount":[I
    move/from16 v2, p2

    .local v2, "i":I
    move/from16 v3, p3

    .local v3, "j":I
    move-object v11, v1

    const/4 v12, 0x0

    aget v11, v11, v12

    move-object v12, v1

    const/4 v13, 0x1

    aget v12, v12, v13

    add-int/2addr v11, v12

    move-object v12, v1

    const/4 v13, 0x2

    aget v12, v12, v13

    add-int/2addr v11, v12

    move-object v12, v1

    const/4 v13, 0x3

    aget v12, v12, v13

    add-int/2addr v11, v12

    move-object v12, v1

    const/4 v13, 0x4

    aget v12, v12, v13

    add-int/2addr v11, v12

    move v4, v11

    .line 396
    .local v4, "stateCountTotal":I
    move-object v11, v1

    move v12, v3

    invoke-static {v11, v12}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->centerFromEnd([II)F

    move-result v11

    move v5, v11

    .line 397
    .local v5, "centerJ":F
    move-object v11, v0

    move v12, v2

    move v13, v5

    float-to-int v13, v13

    move-object v14, v1

    const/4 v15, 0x2

    aget v14, v14, v15

    move v15, v4

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckVertical(IIII)F

    move-result v11

    move v6, v11

    .line 398
    .local v6, "centerI":F
    move v11, v6

    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    if-nez v11, :cond_3

    .line 400
    move-object v11, v0

    move v12, v5

    float-to-int v12, v12

    move v13, v6

    float-to-int v13, v13

    move-object v14, v1

    const/4 v15, 0x2

    aget v14, v14, v15

    move v15, v4

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->crossCheckHorizontal(IIII)F

    move-result v11

    move v5, v11

    .line 401
    move v11, v5

    invoke-static {v11}, Ljava/lang/Float;->isNaN(F)Z

    move-result v11

    if-nez v11, :cond_3

    .line 402
    move v11, v4

    int-to-float v11, v11

    const/high16 v12, 0x40e00000    # 7.0f

    div-float/2addr v11, v12

    move v7, v11

    .line 403
    .local v7, "estimatedModuleSize":F
    const/4 v11, 0x0

    move v8, v11

    .line 404
    .local v8, "found":Z
    const/4 v11, 0x0

    move v9, v11

    .local v9, "index":I
    :goto_0
    move v11, v9

    move-object v12, v0

    iget-object v12, v12, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_0

    .line 405
    move-object v11, v0

    iget-object v11, v11, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    move v12, v9

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-object v10, v11

    .line 407
    .local v10, "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    move-object v11, v10

    move v12, v7

    move v13, v6

    move v14, v5

    invoke-virtual {v11, v12, v13, v14}, Lcom/google/zxing/qrcode/detector/FinderPattern;->aboutEquals(FFF)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 408
    move-object v11, v0

    iget-object v11, v11, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    move v12, v9

    move-object v13, v10

    move v14, v6

    move v15, v5

    move/from16 v16, v7

    invoke-virtual/range {v13 .. v16}, Lcom/google/zxing/qrcode/detector/FinderPattern;->combineEstimate(FFF)Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 409
    const/4 v11, 0x1

    move v8, v11

    .line 413
    .end local v10    # "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_0
    move v11, v8

    if-nez v11, :cond_1

    .line 414
    new-instance v11, Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move v13, v5

    move v14, v6

    move v15, v7

    invoke-direct {v12, v13, v14, v15}, Lcom/google/zxing/qrcode/detector/FinderPattern;-><init>(FFF)V

    move-object v9, v11

    .line 415
    .local v9, "point":Lcom/google/zxing/qrcode/detector/FinderPattern;
    move-object v11, v0

    iget-object v11, v11, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->possibleCenters:Ljava/util/List;

    move-object v12, v9

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 416
    move-object v11, v0

    iget-object v11, v11, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    if-eqz v11, :cond_1

    .line 417
    move-object v11, v0

    iget-object v11, v11, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    move-object v12, v9

    invoke-interface {v11, v12}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 420
    .end local v9    # "point":Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_1
    const/4 v11, 0x1

    move v0, v11

    .line 423
    .end local v0    # "this":Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
    .end local v7    # "estimatedModuleSize":F
    .end local v8    # "found":Z
    :goto_1
    return v0

    .line 404
    .restart local v0    # "this":Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
    .restart local v7    # "estimatedModuleSize":F
    .restart local v8    # "found":Z
    .local v9, "index":I
    .restart local v10    # "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 423
    .end local v7    # "estimatedModuleSize":F
    .end local v8    # "found":Z
    .end local v9    # "index":I
    .end local v10    # "center":Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_3
    const/4 v11, 0x0

    move v0, v11

    goto :goto_1
.end method
