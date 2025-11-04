.class public final Lcom/google/zxing/common/detector/WhiteRectangleDetector;
.super Ljava/lang/Object;
.source "WhiteRectangleDetector.java"


# static fields
.field private static final CORR:I = 0x1

.field private static final INIT_SIZE:I = 0x1e


# instance fields
.field private final downInit:I

.field private final height:I

.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private final leftInit:I

.field private final rightInit:I

.field private final upInit:I

.field private final width:I


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/detector/WhiteRectangleDetector;
    move-object v1, p1

    .local v1, "image":Lcom/google/zxing/common/BitMatrix;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 50
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 51
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v3

    iput v3, v2, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    .line 52
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v3

    iput v3, v2, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    .line 53
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    const/16 v4, 0x1e

    add-int/lit8 v3, v3, -0x1e

    const/4 v4, 0x1

    shr-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->leftInit:I

    .line 54
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    const/16 v4, 0x1e

    add-int/lit8 v3, v3, 0x1e

    const/4 v4, 0x1

    shr-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->rightInit:I

    .line 55
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    const/16 v4, 0x1e

    add-int/lit8 v3, v3, -0x1e

    const/4 v4, 0x1

    shr-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->upInit:I

    .line 56
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    const/16 v4, 0x1e

    add-int/lit8 v3, v3, 0x1e

    const/4 v4, 0x1

    shr-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->downInit:I

    .line 57
    move-object v2, v0

    iget v2, v2, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->upInit:I

    if-ltz v2, :cond_0

    move-object v2, v0

    iget v2, v2, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->leftInit:I

    if-ltz v2, :cond_0

    move-object v2, v0

    iget v2, v2, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->downInit:I

    move-object v3, v0

    iget v3, v3, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    if-ge v2, v3, :cond_0

    move-object v2, v0

    iget v2, v2, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->rightInit:I

    move-object v3, v0

    iget v3, v3, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    if-lt v2, v3, :cond_1

    .line 58
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2

    .line 60
    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;III)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/detector/WhiteRectangleDetector;
    move-object v1, p1

    .local v1, "image":Lcom/google/zxing/common/BitMatrix;
    move v2, p2

    .local v2, "initSize":I
    move v3, p3

    .local v3, "x":I
    move v4, p4

    .local v4, "y":I
    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 66
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 67
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v7}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v7

    iput v7, v6, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    .line 68
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v7}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v7

    iput v7, v6, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    .line 69
    move v6, v2

    const/4 v7, 0x1

    shr-int/lit8 v6, v6, 0x1

    move v5, v6

    .line 70
    .local v5, "halfsize":I
    move-object v6, v0

    move v7, v3

    move v8, v5

    sub-int/2addr v7, v8

    iput v7, v6, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->leftInit:I

    .line 71
    move-object v6, v0

    move v7, v3

    move v8, v5

    add-int/2addr v7, v8

    iput v7, v6, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->rightInit:I

    .line 72
    move-object v6, v0

    move v7, v4

    move v8, v5

    sub-int/2addr v7, v8

    iput v7, v6, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->upInit:I

    .line 73
    move-object v6, v0

    move v7, v4

    move v8, v5

    add-int/2addr v7, v8

    iput v7, v6, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->downInit:I

    .line 74
    move-object v6, v0

    iget v6, v6, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->upInit:I

    if-ltz v6, :cond_0

    move-object v6, v0

    iget v6, v6, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->leftInit:I

    if-ltz v6, :cond_0

    move-object v6, v0

    iget v6, v6, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->downInit:I

    move-object v7, v0

    iget v7, v7, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    if-ge v6, v7, :cond_0

    move-object v6, v0

    iget v6, v6, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->rightInit:I

    move-object v7, v0

    iget v7, v7, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    if-lt v6, v7, :cond_1

    .line 75
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v6

    throw v6

    .line 77
    :cond_1
    return-void
.end method

.method private centerEdges(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;
    .locals 22

    .prologue
    .line 281
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/common/detector/WhiteRectangleDetector;
    move-object/from16 v1, p1

    .local v1, "y":Lcom/google/zxing/ResultPoint;
    move-object/from16 v2, p2

    .local v2, "z":Lcom/google/zxing/ResultPoint;
    move-object/from16 v3, p3

    .local v3, "x":Lcom/google/zxing/ResultPoint;
    move-object/from16 v4, p4

    .local v4, "t":Lcom/google/zxing/ResultPoint;
    move-object v13, v1

    invoke-virtual {v13}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v13

    move v5, v13

    .line 282
    .local v5, "yi":F
    move-object v13, v1

    invoke-virtual {v13}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v13

    move v6, v13

    .line 283
    .local v6, "yj":F
    move-object v13, v2

    invoke-virtual {v13}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v13

    move v7, v13

    .line 284
    .local v7, "zi":F
    move-object v13, v2

    invoke-virtual {v13}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v13

    move v8, v13

    .line 285
    .local v8, "zj":F
    move-object v13, v3

    invoke-virtual {v13}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v13

    move v9, v13

    .line 286
    .local v9, "xi":F
    move-object v13, v3

    invoke-virtual {v13}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v13

    move v10, v13

    .line 287
    .local v10, "xj":F
    move-object v13, v4

    invoke-virtual {v13}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v13

    move v11, v13

    .line 288
    .local v11, "ti":F
    move-object v13, v4

    invoke-virtual {v13}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v13

    move v12, v13

    .line 290
    .local v12, "tj":F
    move v13, v5

    move-object v14, v0

    iget v14, v14, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    const/4 v15, 0x2

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    cmpg-float v13, v13, v14

    if-gez v13, :cond_0

    .line 291
    const/4 v13, 0x4

    new-array v13, v13, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v21, v13

    move-object/from16 v13, v21

    move-object/from16 v14, v21

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/ResultPoint;

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    move/from16 v18, v11

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v18, v18, v19

    move/from16 v19, v12

    const/high16 v20, 0x3f800000    # 1.0f

    add-float v19, v19, v20

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v16, v14, v15

    move-object/from16 v21, v13

    move-object/from16 v13, v21

    move-object/from16 v14, v21

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/ResultPoint;

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    move/from16 v18, v7

    const/high16 v19, 0x3f800000    # 1.0f

    add-float v18, v18, v19

    move/from16 v19, v8

    const/high16 v20, 0x3f800000    # 1.0f

    add-float v19, v19, v20

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v16, v14, v15

    move-object/from16 v21, v13

    move-object/from16 v13, v21

    move-object/from16 v14, v21

    const/4 v15, 0x2

    new-instance v16, Lcom/google/zxing/ResultPoint;

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    move/from16 v18, v9

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v18, v18, v19

    move/from16 v19, v10

    const/high16 v20, 0x3f800000    # 1.0f

    sub-float v19, v19, v20

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v16, v14, v15

    move-object/from16 v21, v13

    move-object/from16 v13, v21

    move-object/from16 v14, v21

    const/4 v15, 0x3

    new-instance v16, Lcom/google/zxing/ResultPoint;

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    move/from16 v18, v5

    const/high16 v19, 0x3f800000    # 1.0f

    add-float v18, v18, v19

    move/from16 v19, v6

    const/high16 v20, 0x3f800000    # 1.0f

    sub-float v19, v19, v20

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v16, v14, v15

    move-object v0, v13

    .line 297
    .end local v0    # "this":Lcom/google/zxing/common/detector/WhiteRectangleDetector;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/google/zxing/common/detector/WhiteRectangleDetector;
    :cond_0
    const/4 v13, 0x4

    new-array v13, v13, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v21, v13

    move-object/from16 v13, v21

    move-object/from16 v14, v21

    const/4 v15, 0x0

    new-instance v16, Lcom/google/zxing/ResultPoint;

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    move/from16 v18, v11

    const/high16 v19, 0x3f800000    # 1.0f

    add-float v18, v18, v19

    move/from16 v19, v12

    const/high16 v20, 0x3f800000    # 1.0f

    add-float v19, v19, v20

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v16, v14, v15

    move-object/from16 v21, v13

    move-object/from16 v13, v21

    move-object/from16 v14, v21

    const/4 v15, 0x1

    new-instance v16, Lcom/google/zxing/ResultPoint;

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    move/from16 v18, v7

    const/high16 v19, 0x3f800000    # 1.0f

    add-float v18, v18, v19

    move/from16 v19, v8

    const/high16 v20, 0x3f800000    # 1.0f

    sub-float v19, v19, v20

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v16, v14, v15

    move-object/from16 v21, v13

    move-object/from16 v13, v21

    move-object/from16 v14, v21

    const/4 v15, 0x2

    new-instance v16, Lcom/google/zxing/ResultPoint;

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    move/from16 v18, v9

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v18, v18, v19

    move/from16 v19, v10

    const/high16 v20, 0x3f800000    # 1.0f

    add-float v19, v19, v20

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v16, v14, v15

    move-object/from16 v21, v13

    move-object/from16 v13, v21

    move-object/from16 v14, v21

    const/4 v15, 0x3

    new-instance v16, Lcom/google/zxing/ResultPoint;

    move-object/from16 v21, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v21

    move/from16 v18, v5

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v18, v18, v19

    move/from16 v19, v6

    const/high16 v20, 0x3f800000    # 1.0f

    sub-float v19, v19, v20

    invoke-direct/range {v17 .. v19}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v16, v14, v15

    move-object v0, v13

    goto/16 :goto_0
.end method

.method private containsBlackPoint(IIIZ)Z
    .locals 9

    .prologue
    .line 316
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/detector/WhiteRectangleDetector;
    move v1, p1

    .local v1, "a":I
    move v2, p2

    .local v2, "b":I
    move v3, p3

    .local v3, "fixed":I
    move v4, p4

    .local v4, "horizontal":Z
    move v6, v4

    if-eqz v6, :cond_2

    .line 317
    move v6, v1

    move v5, v6

    .local v5, "x":I
    :goto_0
    move v6, v5

    move v7, v2

    if-gt v6, v7, :cond_1

    .line 318
    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    move v7, v5

    move v8, v3

    invoke-virtual {v6, v7, v8}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 319
    const/4 v6, 0x1

    move v0, v6

    .line 330
    .end local v0    # "this":Lcom/google/zxing/common/detector/WhiteRectangleDetector;
    .end local v5    # "x":I
    :goto_1
    return v0

    .line 317
    .restart local v0    # "this":Lcom/google/zxing/common/detector/WhiteRectangleDetector;
    .restart local v5    # "x":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 330
    .end local v5    # "x":I
    :cond_1
    const/4 v6, 0x0

    move v0, v6

    goto :goto_1

    .line 323
    :cond_2
    move v6, v1

    move v5, v6

    .local v5, "y":I
    :goto_2
    move v6, v5

    move v7, v2

    if-gt v6, v7, :cond_1

    .line 324
    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    move v7, v3

    move v8, v5

    invoke-virtual {v6, v7, v8}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 325
    const/4 v6, 0x1

    move v0, v6

    goto :goto_1

    .line 323
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method private getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;
    .locals 16

    .prologue
    .line 244
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/common/detector/WhiteRectangleDetector;
    move/from16 v1, p1

    .local v1, "aX":F
    move/from16 v2, p2

    .local v2, "aY":F
    move/from16 v3, p3

    .local v3, "bX":F
    move/from16 v4, p4

    .local v4, "bY":F
    move v11, v1

    move v12, v2

    move v13, v3

    move v14, v4

    invoke-static {v11, v12, v13, v14}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v11

    invoke-static {v11}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v11

    move v5, v11

    .line 245
    .local v5, "dist":I
    move v11, v3

    move v12, v1

    sub-float/2addr v11, v12

    move v12, v5

    int-to-float v12, v12

    div-float/2addr v11, v12

    move v6, v11

    .line 246
    .local v6, "xStep":F
    move v11, v4

    move v12, v2

    sub-float/2addr v11, v12

    move v12, v5

    int-to-float v12, v12

    div-float/2addr v11, v12

    move v7, v11

    .line 248
    .local v7, "yStep":F
    const/4 v11, 0x0

    move v8, v11

    .local v8, "i":I
    :goto_0
    move v11, v8

    move v12, v5

    if-ge v11, v12, :cond_1

    .line 249
    move v11, v1

    move v12, v8

    int-to-float v12, v12

    move v13, v6

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    invoke-static {v11}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v11

    move v9, v11

    .line 250
    .local v9, "x":I
    move v11, v2

    move v12, v8

    int-to-float v12, v12

    move v13, v7

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    invoke-static {v11}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v11

    move v10, v11

    .line 251
    .local v10, "y":I
    move-object v11, v0

    iget-object v11, v11, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    move v12, v9

    move v13, v10

    invoke-virtual {v11, v12, v13}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 252
    new-instance v11, Lcom/google/zxing/ResultPoint;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move v13, v9

    int-to-float v13, v13

    move v14, v10

    int-to-float v14, v14

    invoke-direct {v12, v13, v14}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    move-object v0, v11

    .line 255
    .end local v0    # "this":Lcom/google/zxing/common/detector/WhiteRectangleDetector;
    .end local v9    # "x":I
    .end local v10    # "y":I
    :goto_1
    return-object v0

    .line 248
    .restart local v0    # "this":Lcom/google/zxing/common/detector/WhiteRectangleDetector;
    .restart local v9    # "x":I
    .restart local v10    # "y":I
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 255
    .end local v9    # "x":I
    .end local v10    # "y":I
    :cond_1
    const/4 v11, 0x0

    move-object v0, v11

    goto :goto_1
.end method


# virtual methods
.method public detect()[Lcom/google/zxing/ResultPoint;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 95
    move-object/from16 v1, p0

    .local v1, "this":Lcom/google/zxing/common/detector/WhiteRectangleDetector;
    move-object v15, v1

    iget v15, v15, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->leftInit:I

    move v2, v15

    .line 96
    .local v2, "left":I
    move-object v15, v1

    iget v15, v15, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->rightInit:I

    move v3, v15

    .line 97
    .local v3, "right":I
    move-object v15, v1

    iget v15, v15, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->upInit:I

    move v4, v15

    .line 98
    .local v4, "up":I
    move-object v15, v1

    iget v15, v15, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->downInit:I

    move v5, v15

    .line 99
    .local v5, "down":I
    const/4 v15, 0x0

    move v6, v15

    .line 100
    .local v6, "sizeExceeded":Z
    const/4 v15, 0x1

    move v7, v15

    .line 101
    .local v7, "aBlackPointFoundOnBorder":Z
    const/4 v15, 0x0

    move v8, v15

    .line 103
    .local v8, "atLeastOneBlackPointFoundOnBorder":Z
    :goto_0
    move v15, v7

    if-eqz v15, :cond_2

    .line 105
    const/4 v15, 0x0

    move v7, v15

    .line 110
    const/4 v15, 0x1

    move v9, v15

    .line 111
    .local v9, "rightBorderNotWhite":Z
    :cond_0
    :goto_1
    move v15, v9

    if-eqz v15, :cond_1

    move v15, v3

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_1

    .line 112
    move-object v15, v1

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v3

    const/16 v19, 0x0

    invoke-direct/range {v15 .. v19}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v15

    move v9, v15

    .line 113
    move v15, v9

    if-eqz v15, :cond_0

    .line 114
    add-int/lit8 v3, v3, 0x1

    .line 115
    const/4 v15, 0x1

    move v7, v15

    goto :goto_1

    .line 119
    :cond_1
    move v15, v3

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->width:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v15, v0, :cond_4

    .line 120
    const/4 v15, 0x1

    move v6, v15

    .line 181
    .end local v9    # "rightBorderNotWhite":Z
    :cond_2
    :goto_2
    move v15, v6

    if-nez v15, :cond_1a

    move v15, v8

    if-eqz v15, :cond_1a

    .line 183
    move v15, v3

    move/from16 v16, v2

    sub-int v15, v15, v16

    move v9, v15

    .line 185
    .local v9, "maxSize":I
    const/4 v15, 0x0

    move-object v10, v15

    .line 186
    .local v10, "z":Lcom/google/zxing/ResultPoint;
    const/4 v15, 0x1

    move v11, v15

    .local v11, "i":I
    :goto_3
    move v15, v11

    move/from16 v16, v9

    move/from16 v0, v16

    if-ge v15, v0, :cond_3

    .line 187
    move-object v15, v1

    move/from16 v16, v2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v17, v5

    move/from16 v18, v11

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v18, v2

    move/from16 v19, v11

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v19, v5

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-direct/range {v15 .. v19}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v15

    move-object v10, v15

    .line 188
    move-object v15, v10

    if-eqz v15, :cond_f

    .line 189
    .line 193
    :cond_3
    move-object v15, v10

    if-nez v15, :cond_10

    .line 194
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v15

    throw v15

    .line 127
    .end local v10    # "z":Lcom/google/zxing/ResultPoint;
    .end local v11    # "i":I
    .local v9, "rightBorderNotWhite":Z
    :cond_4
    const/4 v15, 0x1

    move v10, v15

    .line 128
    .local v10, "bottomBorderNotWhite":Z
    :cond_5
    :goto_4
    move v15, v10

    if-eqz v15, :cond_6

    move v15, v5

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_6

    .line 129
    move-object v15, v1

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v5

    const/16 v19, 0x1

    invoke-direct/range {v15 .. v19}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v15

    move v10, v15

    .line 130
    move v15, v10

    if-eqz v15, :cond_5

    .line 131
    add-int/lit8 v5, v5, 0x1

    .line 132
    const/4 v15, 0x1

    move v7, v15

    goto :goto_4

    .line 136
    :cond_6
    move v15, v5

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->height:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-lt v15, v0, :cond_7

    .line 137
    const/4 v15, 0x1

    move v6, v15

    .line 138
    goto/16 :goto_2

    .line 144
    :cond_7
    const/4 v15, 0x1

    move v11, v15

    .line 145
    .local v11, "leftBorderNotWhite":Z
    :cond_8
    :goto_5
    move v15, v11

    if-eqz v15, :cond_9

    move v15, v2

    if-ltz v15, :cond_9

    .line 146
    move-object v15, v1

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v2

    const/16 v19, 0x0

    invoke-direct/range {v15 .. v19}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v15

    move v11, v15

    .line 147
    move v15, v11

    if-eqz v15, :cond_8

    .line 148
    add-int/lit8 v2, v2, -0x1

    .line 149
    const/4 v15, 0x1

    move v7, v15

    goto :goto_5

    .line 153
    :cond_9
    move v15, v2

    if-gez v15, :cond_a

    .line 154
    const/4 v15, 0x1

    move v6, v15

    .line 155
    goto/16 :goto_2

    .line 161
    :cond_a
    const/4 v15, 0x1

    move v12, v15

    .line 162
    .local v12, "topBorderNotWhite":Z
    :cond_b
    :goto_6
    move v15, v12

    if-eqz v15, :cond_c

    move v15, v4

    if-ltz v15, :cond_c

    .line 163
    move-object v15, v1

    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    const/16 v19, 0x1

    invoke-direct/range {v15 .. v19}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->containsBlackPoint(IIIZ)Z

    move-result v15

    move v12, v15

    .line 164
    move v15, v12

    if-eqz v15, :cond_b

    .line 165
    add-int/lit8 v4, v4, -0x1

    .line 166
    const/4 v15, 0x1

    move v7, v15

    goto :goto_6

    .line 170
    :cond_c
    move v15, v4

    if-gez v15, :cond_d

    .line 171
    const/4 v15, 0x1

    move v6, v15

    .line 172
    goto/16 :goto_2

    .line 175
    :cond_d
    move v15, v7

    if-eqz v15, :cond_e

    .line 176
    const/4 v15, 0x1

    move v8, v15

    .line 179
    :cond_e
    goto/16 :goto_0

    .line 186
    .end local v12    # "topBorderNotWhite":Z
    .local v9, "maxSize":I
    .local v10, "z":Lcom/google/zxing/ResultPoint;
    .local v11, "i":I
    :cond_f
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 197
    :cond_10
    const/4 v15, 0x0

    move-object v11, v15

    .line 199
    .local v11, "t":Lcom/google/zxing/ResultPoint;
    const/4 v15, 0x1

    move v12, v15

    .local v12, "i":I
    :goto_7
    move v15, v12

    move/from16 v16, v9

    move/from16 v0, v16

    if-ge v15, v0, :cond_11

    .line 200
    move-object v15, v1

    move/from16 v16, v2

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v17, v4

    move/from16 v18, v12

    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v18, v2

    move/from16 v19, v12

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v19, v4

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-direct/range {v15 .. v19}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v15

    move-object v11, v15

    .line 201
    move-object v15, v11

    if-eqz v15, :cond_12

    .line 202
    .line 206
    :cond_11
    move-object v15, v11

    if-nez v15, :cond_13

    .line 207
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v15

    throw v15

    .line 199
    :cond_12
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 210
    :cond_13
    const/4 v15, 0x0

    move-object v12, v15

    .line 212
    .local v12, "x":Lcom/google/zxing/ResultPoint;
    const/4 v15, 0x1

    move v13, v15

    .local v13, "i":I
    :goto_8
    move v15, v13

    move/from16 v16, v9

    move/from16 v0, v16

    if-ge v15, v0, :cond_14

    .line 213
    move-object v15, v1

    move/from16 v16, v3

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v17, v4

    move/from16 v18, v13

    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v18, v3

    move/from16 v19, v13

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v19, v4

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-direct/range {v15 .. v19}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v15

    move-object v12, v15

    .line 214
    move-object v15, v12

    if-eqz v15, :cond_15

    .line 215
    .line 219
    :cond_14
    move-object v15, v12

    if-nez v15, :cond_16

    .line 220
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v15

    throw v15

    .line 212
    :cond_15
    add-int/lit8 v13, v13, 0x1

    goto :goto_8

    .line 223
    :cond_16
    const/4 v15, 0x0

    move-object v13, v15

    .line 225
    .local v13, "y":Lcom/google/zxing/ResultPoint;
    const/4 v15, 0x1

    move v14, v15

    .local v14, "i":I
    :goto_9
    move v15, v14

    move/from16 v16, v9

    move/from16 v0, v16

    if-ge v15, v0, :cond_17

    .line 226
    move-object v15, v1

    move/from16 v16, v3

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v17, v5

    move/from16 v18, v14

    sub-int v17, v17, v18

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v18, v3

    move/from16 v19, v14

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v19, v5

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-direct/range {v15 .. v19}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->getBlackPointOnSegment(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v15

    move-object v13, v15

    .line 227
    move-object v15, v13

    if-eqz v15, :cond_18

    .line 228
    .line 232
    :cond_17
    move-object v15, v13

    if-nez v15, :cond_19

    .line 233
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v15

    throw v15

    .line 225
    :cond_18
    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    .line 236
    :cond_19
    move-object v15, v1

    move-object/from16 v16, v13

    move-object/from16 v17, v10

    move-object/from16 v18, v12

    move-object/from16 v19, v11

    invoke-direct/range {v15 .. v19}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->centerEdges(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)[Lcom/google/zxing/ResultPoint;

    move-result-object v15

    move-object v1, v15

    .end local v1    # "this":Lcom/google/zxing/common/detector/WhiteRectangleDetector;
    return-object v1

    .line 239
    .end local v9    # "maxSize":I
    .end local v10    # "z":Lcom/google/zxing/ResultPoint;
    .end local v11    # "t":Lcom/google/zxing/ResultPoint;
    .end local v12    # "x":Lcom/google/zxing/ResultPoint;
    .end local v13    # "y":Lcom/google/zxing/ResultPoint;
    .end local v14    # "i":I
    .restart local v1    # "this":Lcom/google/zxing/common/detector/WhiteRectangleDetector;
    :cond_1a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v15

    throw v15
.end method
