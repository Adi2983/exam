.class public final Lcom/google/zxing/common/DefaultGridSampler;
.super Lcom/google/zxing/common/GridSampler;
.source "DefaultGridSampler.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/DefaultGridSampler;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/zxing/common/GridSampler;-><init>()V

    return-void
.end method


# virtual methods
.method public sampleGrid(Lcom/google/zxing/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;
    .locals 37
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 39
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/common/DefaultGridSampler;
    move-object/from16 v1, p1

    .local v1, "image":Lcom/google/zxing/common/BitMatrix;
    move/from16 v2, p2

    .local v2, "dimensionX":I
    move/from16 v3, p3

    .local v3, "dimensionY":I
    move/from16 v4, p4

    .local v4, "p1ToX":F
    move/from16 v5, p5

    .local v5, "p1ToY":F
    move/from16 v6, p6

    .local v6, "p2ToX":F
    move/from16 v7, p7

    .local v7, "p2ToY":F
    move/from16 v8, p8

    .local v8, "p3ToX":F
    move/from16 v9, p9

    .local v9, "p3ToY":F
    move/from16 v10, p10

    .local v10, "p4ToX":F
    move/from16 v11, p11

    .local v11, "p4ToY":F
    move/from16 v12, p12

    .local v12, "p1FromX":F
    move/from16 v13, p13

    .local v13, "p1FromY":F
    move/from16 v14, p14

    .local v14, "p2FromX":F
    move/from16 v15, p15

    .local v15, "p2FromY":F
    move/from16 v16, p16

    .local v16, "p3FromX":F
    move/from16 v17, p17

    .local v17, "p3FromY":F
    move/from16 v18, p18

    .local v18, "p4FromX":F
    move/from16 v19, p19

    .local v19, "p4FromY":F
    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v7

    move/from16 v25, v8

    move/from16 v26, v9

    move/from16 v27, v10

    move/from16 v28, v11

    move/from16 v29, v12

    move/from16 v30, v13

    move/from16 v31, v14

    move/from16 v32, v15

    move/from16 v33, v16

    move/from16 v34, v17

    move/from16 v35, v18

    move/from16 v36, v19

    invoke-static/range {v21 .. v36}, Lcom/google/zxing/common/PerspectiveTransform;->quadrilateralToQuadrilateral(FFFFFFFFFFFFFFFF)Lcom/google/zxing/common/PerspectiveTransform;

    move-result-object v21

    move-object/from16 v20, v21

    .line 43
    .local v20, "transform":Lcom/google/zxing/common/PerspectiveTransform;
    move-object/from16 v21, v0

    move-object/from16 v22, v1

    move/from16 v23, v2

    move/from16 v24, v3

    move-object/from16 v25, v20

    invoke-virtual/range {v21 .. v25}, Lcom/google/zxing/common/DefaultGridSampler;->sampleGrid(Lcom/google/zxing/common/BitMatrix;IILcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v21

    move-object/from16 v0, v21

    .end local v0    # "this":Lcom/google/zxing/common/DefaultGridSampler;
    return-object v0
.end method

.method public sampleGrid(Lcom/google/zxing/common/BitMatrix;IILcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/BitMatrix;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 51
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/common/DefaultGridSampler;
    move-object/from16 v1, p1

    .local v1, "image":Lcom/google/zxing/common/BitMatrix;
    move/from16 v2, p2

    .local v2, "dimensionX":I
    move/from16 v3, p3

    .local v3, "dimensionY":I
    move-object/from16 v4, p4

    .local v4, "transform":Lcom/google/zxing/common/PerspectiveTransform;
    move v11, v2

    if-lez v11, :cond_0

    move v11, v3

    if-gtz v11, :cond_1

    .line 52
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v11

    throw v11

    .line 54
    :cond_1
    new-instance v11, Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move v13, v2

    move v14, v3

    invoke-direct {v12, v13, v14}, Lcom/google/zxing/common/BitMatrix;-><init>(II)V

    move-object v5, v11

    .line 55
    .local v5, "bits":Lcom/google/zxing/common/BitMatrix;
    move v11, v2

    const/4 v12, 0x1

    shl-int/lit8 v11, v11, 0x1

    new-array v11, v11, [F

    move-object v6, v11

    .line 56
    .local v6, "points":[F
    const/4 v11, 0x0

    move v7, v11

    .local v7, "y":I
    :goto_0
    move v11, v7

    move v12, v3

    if-ge v11, v12, :cond_5

    .line 57
    move-object v11, v6

    array-length v11, v11

    move v8, v11

    .line 58
    .local v8, "max":I
    move v11, v7

    int-to-float v11, v11

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v11, v12

    move v9, v11

    .line 59
    .local v9, "iValue":F
    const/4 v11, 0x0

    move v10, v11

    .local v10, "x":I
    :goto_1
    move v11, v10

    move v12, v8

    if-ge v11, v12, :cond_2

    .line 60
    move-object v11, v6

    move v12, v10

    move v13, v10

    const/4 v14, 0x1

    shr-int/lit8 v13, v13, 0x1

    int-to-float v13, v13

    const/high16 v14, 0x3f000000    # 0.5f

    add-float/2addr v13, v14

    aput v13, v11, v12

    .line 61
    move-object v11, v6

    move v12, v10

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move v13, v9

    aput v13, v11, v12

    .line 59
    add-int/lit8 v10, v10, 0x2

    goto :goto_1

    .line 63
    :cond_2
    move-object v11, v4

    move-object v12, v6

    invoke-virtual {v11, v12}, Lcom/google/zxing/common/PerspectiveTransform;->transformPoints([F)V

    .line 66
    move-object v11, v1

    move-object v12, v6

    invoke-static {v11, v12}, Lcom/google/zxing/common/DefaultGridSampler;->checkAndNudgePoints(Lcom/google/zxing/common/BitMatrix;[F)V

    .line 68
    const/4 v11, 0x0

    move v10, v11

    :goto_2
    move v11, v10

    move v12, v8

    if-ge v11, v12, :cond_4

    .line 69
    move-object v11, v1

    move-object v12, v6

    move v13, v10

    :try_start_0
    aget v12, v12, v13

    float-to-int v12, v12

    move-object v13, v6

    move v14, v10

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    aget v13, v13, v14

    float-to-int v13, v13

    invoke-virtual {v11, v12, v13}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 71
    move-object v11, v5

    move v12, v10

    const/4 v13, 0x1

    shr-int/lit8 v12, v12, 0x1

    move v13, v7

    invoke-virtual {v11, v12, v13}, Lcom/google/zxing/common/BitMatrix;->set(II)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :cond_3
    add-int/lit8 v10, v10, 0x2

    goto :goto_2

    .line 83
    .line 56
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 74
    :catch_0
    move-exception v11

    move-object v10, v11

    .line 82
    .local v10, "aioobe":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v11

    throw v11

    .line 85
    .end local v8    # "max":I
    .end local v9    # "iValue":F
    .end local v10    # "aioobe":Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_5
    move-object v11, v5

    move-object v0, v11

    .end local v0    # "this":Lcom/google/zxing/common/DefaultGridSampler;
    return-object v0
.end method
