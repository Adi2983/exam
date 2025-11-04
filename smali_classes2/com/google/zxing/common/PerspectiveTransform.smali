.class public final Lcom/google/zxing/common/PerspectiveTransform;
.super Ljava/lang/Object;
.source "PerspectiveTransform.java"


# instance fields
.field private final a11:F

.field private final a12:F

.field private final a13:F

.field private final a21:F

.field private final a22:F

.field private final a23:F

.field private final a31:F

.field private final a32:F

.field private final a33:F


# direct methods
.method private constructor <init>(FFFFFFFFF)V
    .locals 12

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/PerspectiveTransform;
    move v1, p1

    .local v1, "a11":F
    move v2, p2

    .local v2, "a21":F
    move v3, p3

    .local v3, "a31":F
    move/from16 v4, p4

    .local v4, "a12":F
    move/from16 v5, p5

    .local v5, "a22":F
    move/from16 v6, p6

    .local v6, "a32":F
    move/from16 v7, p7

    .local v7, "a13":F
    move/from16 v8, p8

    .local v8, "a23":F
    move/from16 v9, p9

    .local v9, "a33":F
    move-object v10, v0

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 41
    move-object v10, v0

    move v11, v1

    iput v11, v10, Lcom/google/zxing/common/PerspectiveTransform;->a11:F

    .line 42
    move-object v10, v0

    move v11, v4

    iput v11, v10, Lcom/google/zxing/common/PerspectiveTransform;->a12:F

    .line 43
    move-object v10, v0

    move v11, v7

    iput v11, v10, Lcom/google/zxing/common/PerspectiveTransform;->a13:F

    .line 44
    move-object v10, v0

    move v11, v2

    iput v11, v10, Lcom/google/zxing/common/PerspectiveTransform;->a21:F

    .line 45
    move-object v10, v0

    move v11, v5

    iput v11, v10, Lcom/google/zxing/common/PerspectiveTransform;->a22:F

    .line 46
    move-object v10, v0

    move v11, v8

    iput v11, v10, Lcom/google/zxing/common/PerspectiveTransform;->a23:F

    .line 47
    move-object v10, v0

    move v11, v3

    iput v11, v10, Lcom/google/zxing/common/PerspectiveTransform;->a31:F

    .line 48
    move-object v10, v0

    move v11, v6

    iput v11, v10, Lcom/google/zxing/common/PerspectiveTransform;->a32:F

    .line 49
    move-object v10, v0

    move v11, v9

    iput v11, v10, Lcom/google/zxing/common/PerspectiveTransform;->a33:F

    .line 50
    return-void
.end method

.method public static quadrilateralToQuadrilateral(FFFFFFFFFFFFFFFF)Lcom/google/zxing/common/PerspectiveTransform;
    .locals 26

    .prologue
    .line 61
    move/from16 v0, p0

    .local v0, "x0":F
    move/from16 v1, p1

    .local v1, "y0":F
    move/from16 v2, p2

    .local v2, "x1":F
    move/from16 v3, p3

    .local v3, "y1":F
    move/from16 v4, p4

    .local v4, "x2":F
    move/from16 v5, p5

    .local v5, "y2":F
    move/from16 v6, p6

    .local v6, "x3":F
    move/from16 v7, p7

    .local v7, "y3":F
    move/from16 v8, p8

    .local v8, "x0p":F
    move/from16 v9, p9

    .local v9, "y0p":F
    move/from16 v10, p10

    .local v10, "x1p":F
    move/from16 v11, p11

    .local v11, "y1p":F
    move/from16 v12, p12

    .local v12, "x2p":F
    move/from16 v13, p13

    .local v13, "y2p":F
    move/from16 v14, p14

    .local v14, "x3p":F
    move/from16 v15, p15

    .local v15, "y3p":F
    move/from16 v18, v0

    move/from16 v19, v1

    move/from16 v20, v2

    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v23, v5

    move/from16 v24, v6

    move/from16 v25, v7

    invoke-static/range {v18 .. v25}, Lcom/google/zxing/common/PerspectiveTransform;->quadrilateralToSquare(FFFFFFFF)Lcom/google/zxing/common/PerspectiveTransform;

    move-result-object v18

    move-object/from16 v16, v18

    .line 62
    .local v16, "qToS":Lcom/google/zxing/common/PerspectiveTransform;
    move/from16 v18, v8

    move/from16 v19, v9

    move/from16 v20, v10

    move/from16 v21, v11

    move/from16 v22, v12

    move/from16 v23, v13

    move/from16 v24, v14

    move/from16 v25, v15

    invoke-static/range {v18 .. v25}, Lcom/google/zxing/common/PerspectiveTransform;->squareToQuadrilateral(FFFFFFFF)Lcom/google/zxing/common/PerspectiveTransform;

    move-result-object v18

    move-object/from16 v17, v18

    .line 63
    .local v17, "sToQ":Lcom/google/zxing/common/PerspectiveTransform;
    move-object/from16 v18, v17

    move-object/from16 v19, v16

    invoke-virtual/range {v18 .. v19}, Lcom/google/zxing/common/PerspectiveTransform;->times(Lcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/PerspectiveTransform;

    move-result-object v18

    move-object/from16 v0, v18

    .end local v0    # "x0":F
    return-object v0
.end method

.method public static quadrilateralToSquare(FFFFFFFF)Lcom/google/zxing/common/PerspectiveTransform;
    .locals 16

    .prologue
    .line 128
    move/from16 v0, p0

    .local v0, "x0":F
    move/from16 v1, p1

    .local v1, "y0":F
    move/from16 v2, p2

    .local v2, "x1":F
    move/from16 v3, p3

    .local v3, "y1":F
    move/from16 v4, p4

    .local v4, "x2":F
    move/from16 v5, p5

    .local v5, "y2":F
    move/from16 v6, p6

    .local v6, "x3":F
    move/from16 v7, p7

    .local v7, "y3":F
    move v8, v0

    move v9, v1

    move v10, v2

    move v11, v3

    move v12, v4

    move v13, v5

    move v14, v6

    move v15, v7

    invoke-static/range {v8 .. v15}, Lcom/google/zxing/common/PerspectiveTransform;->squareToQuadrilateral(FFFFFFFF)Lcom/google/zxing/common/PerspectiveTransform;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/zxing/common/PerspectiveTransform;->buildAdjoint()Lcom/google/zxing/common/PerspectiveTransform;

    move-result-object v8

    move-object v0, v8

    .end local v0    # "x0":F
    return-object v0
.end method

.method public static squareToQuadrilateral(FFFFFFFF)Lcom/google/zxing/common/PerspectiveTransform;
    .locals 29

    .prologue
    .line 102
    move/from16 v0, p0

    .local v0, "x0":F
    move/from16 v1, p1

    .local v1, "y0":F
    move/from16 v2, p2

    .local v2, "x1":F
    move/from16 v3, p3

    .local v3, "y1":F
    move/from16 v4, p4

    .local v4, "x2":F
    move/from16 v5, p5

    .local v5, "y2":F
    move/from16 v6, p6

    .local v6, "x3":F
    move/from16 v7, p7

    .local v7, "y3":F
    move/from16 v17, v0

    move/from16 v18, v2

    sub-float v17, v17, v18

    move/from16 v18, v4

    add-float v17, v17, v18

    move/from16 v18, v6

    sub-float v17, v17, v18

    move/from16 v8, v17

    .line 103
    .local v8, "dx3":F
    move/from16 v17, v1

    move/from16 v18, v3

    sub-float v17, v17, v18

    move/from16 v18, v5

    add-float v17, v17, v18

    move/from16 v18, v7

    sub-float v17, v17, v18

    move/from16 v9, v17

    .line 104
    .local v9, "dy3":F
    move/from16 v17, v8

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-nez v17, :cond_0

    move/from16 v17, v9

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-nez v17, :cond_0

    .line 106
    new-instance v17, Lcom/google/zxing/common/PerspectiveTransform;

    move-object/from16 v28, v17

    move-object/from16 v17, v28

    move-object/from16 v18, v28

    move/from16 v19, v2

    move/from16 v20, v0

    sub-float v19, v19, v20

    move/from16 v20, v4

    move/from16 v21, v2

    sub-float v20, v20, v21

    move/from16 v21, v0

    move/from16 v22, v3

    move/from16 v23, v1

    sub-float v22, v22, v23

    move/from16 v23, v5

    move/from16 v24, v3

    sub-float v23, v23, v24

    move/from16 v24, v1

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/high16 v27, 0x3f800000    # 1.0f

    invoke-direct/range {v18 .. v27}, Lcom/google/zxing/common/PerspectiveTransform;-><init>(FFFFFFFFF)V

    move-object/from16 v0, v17

    .line 117
    .end local v0    # "x0":F
    :goto_0
    return-object v0

    .line 110
    .restart local v0    # "x0":F
    :cond_0
    move/from16 v17, v2

    move/from16 v18, v4

    sub-float v17, v17, v18

    move/from16 v10, v17

    .line 111
    .local v10, "dx1":F
    move/from16 v17, v6

    move/from16 v18, v4

    sub-float v17, v17, v18

    move/from16 v11, v17

    .line 112
    .local v11, "dx2":F
    move/from16 v17, v3

    move/from16 v18, v5

    sub-float v17, v17, v18

    move/from16 v12, v17

    .line 113
    .local v12, "dy1":F
    move/from16 v17, v7

    move/from16 v18, v5

    sub-float v17, v17, v18

    move/from16 v13, v17

    .line 114
    .local v13, "dy2":F
    move/from16 v17, v10

    move/from16 v18, v13

    mul-float v17, v17, v18

    move/from16 v18, v11

    move/from16 v19, v12

    mul-float v18, v18, v19

    sub-float v17, v17, v18

    move/from16 v14, v17

    .line 115
    .local v14, "denominator":F
    move/from16 v17, v8

    move/from16 v18, v13

    mul-float v17, v17, v18

    move/from16 v18, v11

    move/from16 v19, v9

    mul-float v18, v18, v19

    sub-float v17, v17, v18

    move/from16 v18, v14

    div-float v17, v17, v18

    move/from16 v15, v17

    .line 116
    .local v15, "a13":F
    move/from16 v17, v10

    move/from16 v18, v9

    mul-float v17, v17, v18

    move/from16 v18, v8

    move/from16 v19, v12

    mul-float v18, v18, v19

    sub-float v17, v17, v18

    move/from16 v18, v14

    div-float v17, v17, v18

    move/from16 v16, v17

    .line 117
    .local v16, "a23":F
    new-instance v17, Lcom/google/zxing/common/PerspectiveTransform;

    move-object/from16 v28, v17

    move-object/from16 v17, v28

    move-object/from16 v18, v28

    move/from16 v19, v2

    move/from16 v20, v0

    sub-float v19, v19, v20

    move/from16 v20, v15

    move/from16 v21, v2

    mul-float v20, v20, v21

    add-float v19, v19, v20

    move/from16 v20, v6

    move/from16 v21, v0

    sub-float v20, v20, v21

    move/from16 v21, v16

    move/from16 v22, v6

    mul-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v21, v0

    move/from16 v22, v3

    move/from16 v23, v1

    sub-float v22, v22, v23

    move/from16 v23, v15

    move/from16 v24, v3

    mul-float v23, v23, v24

    add-float v22, v22, v23

    move/from16 v23, v7

    move/from16 v24, v1

    sub-float v23, v23, v24

    move/from16 v24, v16

    move/from16 v25, v7

    mul-float v24, v24, v25

    add-float v23, v23, v24

    move/from16 v24, v1

    move/from16 v25, v15

    move/from16 v26, v16

    const/high16 v27, 0x3f800000    # 1.0f

    invoke-direct/range {v18 .. v27}, Lcom/google/zxing/common/PerspectiveTransform;-><init>(FFFFFFFFF)V

    move-object/from16 v0, v17

    goto/16 :goto_0
.end method


# virtual methods
.method buildAdjoint()Lcom/google/zxing/common/PerspectiveTransform;
    .locals 15

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/PerspectiveTransform;
    new-instance v1, Lcom/google/zxing/common/PerspectiveTransform;

    move-object v14, v1

    move-object v1, v14

    move-object v2, v14

    move-object v3, v0

    iget v3, v3, Lcom/google/zxing/common/PerspectiveTransform;->a22:F

    move-object v4, v0

    iget v4, v4, Lcom/google/zxing/common/PerspectiveTransform;->a33:F

    mul-float/2addr v3, v4

    move-object v4, v0

    iget v4, v4, Lcom/google/zxing/common/PerspectiveTransform;->a23:F

    move-object v5, v0

    iget v5, v5, Lcom/google/zxing/common/PerspectiveTransform;->a32:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    move-object v4, v0

    iget v4, v4, Lcom/google/zxing/common/PerspectiveTransform;->a23:F

    move-object v5, v0

    iget v5, v5, Lcom/google/zxing/common/PerspectiveTransform;->a31:F

    mul-float/2addr v4, v5

    move-object v5, v0

    iget v5, v5, Lcom/google/zxing/common/PerspectiveTransform;->a21:F

    move-object v6, v0

    iget v6, v6, Lcom/google/zxing/common/PerspectiveTransform;->a33:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object v5, v0

    iget v5, v5, Lcom/google/zxing/common/PerspectiveTransform;->a21:F

    move-object v6, v0

    iget v6, v6, Lcom/google/zxing/common/PerspectiveTransform;->a32:F

    mul-float/2addr v5, v6

    move-object v6, v0

    iget v6, v6, Lcom/google/zxing/common/PerspectiveTransform;->a22:F

    move-object v7, v0

    iget v7, v7, Lcom/google/zxing/common/PerspectiveTransform;->a31:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    move-object v6, v0

    iget v6, v6, Lcom/google/zxing/common/PerspectiveTransform;->a13:F

    move-object v7, v0

    iget v7, v7, Lcom/google/zxing/common/PerspectiveTransform;->a32:F

    mul-float/2addr v6, v7

    move-object v7, v0

    iget v7, v7, Lcom/google/zxing/common/PerspectiveTransform;->a12:F

    move-object v8, v0

    iget v8, v8, Lcom/google/zxing/common/PerspectiveTransform;->a33:F

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    move-object v7, v0

    iget v7, v7, Lcom/google/zxing/common/PerspectiveTransform;->a11:F

    move-object v8, v0

    iget v8, v8, Lcom/google/zxing/common/PerspectiveTransform;->a33:F

    mul-float/2addr v7, v8

    move-object v8, v0

    iget v8, v8, Lcom/google/zxing/common/PerspectiveTransform;->a13:F

    move-object v9, v0

    iget v9, v9, Lcom/google/zxing/common/PerspectiveTransform;->a31:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    move-object v8, v0

    iget v8, v8, Lcom/google/zxing/common/PerspectiveTransform;->a12:F

    move-object v9, v0

    iget v9, v9, Lcom/google/zxing/common/PerspectiveTransform;->a31:F

    mul-float/2addr v8, v9

    move-object v9, v0

    iget v9, v9, Lcom/google/zxing/common/PerspectiveTransform;->a11:F

    move-object v10, v0

    iget v10, v10, Lcom/google/zxing/common/PerspectiveTransform;->a32:F

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    move-object v9, v0

    iget v9, v9, Lcom/google/zxing/common/PerspectiveTransform;->a12:F

    move-object v10, v0

    iget v10, v10, Lcom/google/zxing/common/PerspectiveTransform;->a23:F

    mul-float/2addr v9, v10

    move-object v10, v0

    iget v10, v10, Lcom/google/zxing/common/PerspectiveTransform;->a13:F

    move-object v11, v0

    iget v11, v11, Lcom/google/zxing/common/PerspectiveTransform;->a22:F

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    move-object v10, v0

    iget v10, v10, Lcom/google/zxing/common/PerspectiveTransform;->a13:F

    move-object v11, v0

    iget v11, v11, Lcom/google/zxing/common/PerspectiveTransform;->a21:F

    mul-float/2addr v10, v11

    move-object v11, v0

    iget v11, v11, Lcom/google/zxing/common/PerspectiveTransform;->a11:F

    move-object v12, v0

    iget v12, v12, Lcom/google/zxing/common/PerspectiveTransform;->a23:F

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    move-object v11, v0

    iget v11, v11, Lcom/google/zxing/common/PerspectiveTransform;->a11:F

    move-object v12, v0

    iget v12, v12, Lcom/google/zxing/common/PerspectiveTransform;->a22:F

    mul-float/2addr v11, v12

    move-object v12, v0

    iget v12, v12, Lcom/google/zxing/common/PerspectiveTransform;->a12:F

    move-object v13, v0

    iget v13, v13, Lcom/google/zxing/common/PerspectiveTransform;->a21:F

    mul-float/2addr v12, v13

    sub-float/2addr v11, v12

    invoke-direct/range {v2 .. v11}, Lcom/google/zxing/common/PerspectiveTransform;-><init>(FFFFFFFFF)V

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/common/PerspectiveTransform;
    return-object v0
.end method

.method times(Lcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/PerspectiveTransform;
    .locals 16

    .prologue
    .line 145
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/common/PerspectiveTransform;
    move-object/from16 v1, p1

    .local v1, "other":Lcom/google/zxing/common/PerspectiveTransform;
    new-instance v2, Lcom/google/zxing/common/PerspectiveTransform;

    move-object v15, v2

    move-object v2, v15

    move-object v3, v15

    move-object v4, v0

    iget v4, v4, Lcom/google/zxing/common/PerspectiveTransform;->a11:F

    move-object v5, v1

    iget v5, v5, Lcom/google/zxing/common/PerspectiveTransform;->a11:F

    mul-float/2addr v4, v5

    move-object v5, v0

    iget v5, v5, Lcom/google/zxing/common/PerspectiveTransform;->a21:F

    move-object v6, v1

    iget v6, v6, Lcom/google/zxing/common/PerspectiveTransform;->a12:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    move-object v5, v0

    iget v5, v5, Lcom/google/zxing/common/PerspectiveTransform;->a31:F

    move-object v6, v1

    iget v6, v6, Lcom/google/zxing/common/PerspectiveTransform;->a13:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    move-object v5, v0

    iget v5, v5, Lcom/google/zxing/common/PerspectiveTransform;->a11:F

    move-object v6, v1

    iget v6, v6, Lcom/google/zxing/common/PerspectiveTransform;->a21:F

    mul-float/2addr v5, v6

    move-object v6, v0

    iget v6, v6, Lcom/google/zxing/common/PerspectiveTransform;->a21:F

    move-object v7, v1

    iget v7, v7, Lcom/google/zxing/common/PerspectiveTransform;->a22:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    move-object v6, v0

    iget v6, v6, Lcom/google/zxing/common/PerspectiveTransform;->a31:F

    move-object v7, v1

    iget v7, v7, Lcom/google/zxing/common/PerspectiveTransform;->a23:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    move-object v6, v0

    iget v6, v6, Lcom/google/zxing/common/PerspectiveTransform;->a11:F

    move-object v7, v1

    iget v7, v7, Lcom/google/zxing/common/PerspectiveTransform;->a31:F

    mul-float/2addr v6, v7

    move-object v7, v0

    iget v7, v7, Lcom/google/zxing/common/PerspectiveTransform;->a21:F

    move-object v8, v1

    iget v8, v8, Lcom/google/zxing/common/PerspectiveTransform;->a32:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    move-object v7, v0

    iget v7, v7, Lcom/google/zxing/common/PerspectiveTransform;->a31:F

    move-object v8, v1

    iget v8, v8, Lcom/google/zxing/common/PerspectiveTransform;->a33:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    move-object v7, v0

    iget v7, v7, Lcom/google/zxing/common/PerspectiveTransform;->a12:F

    move-object v8, v1

    iget v8, v8, Lcom/google/zxing/common/PerspectiveTransform;->a11:F

    mul-float/2addr v7, v8

    move-object v8, v0

    iget v8, v8, Lcom/google/zxing/common/PerspectiveTransform;->a22:F

    move-object v9, v1

    iget v9, v9, Lcom/google/zxing/common/PerspectiveTransform;->a12:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    move-object v8, v0

    iget v8, v8, Lcom/google/zxing/common/PerspectiveTransform;->a32:F

    move-object v9, v1

    iget v9, v9, Lcom/google/zxing/common/PerspectiveTransform;->a13:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    move-object v8, v0

    iget v8, v8, Lcom/google/zxing/common/PerspectiveTransform;->a12:F

    move-object v9, v1

    iget v9, v9, Lcom/google/zxing/common/PerspectiveTransform;->a21:F

    mul-float/2addr v8, v9

    move-object v9, v0

    iget v9, v9, Lcom/google/zxing/common/PerspectiveTransform;->a22:F

    move-object v10, v1

    iget v10, v10, Lcom/google/zxing/common/PerspectiveTransform;->a22:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    move-object v9, v0

    iget v9, v9, Lcom/google/zxing/common/PerspectiveTransform;->a32:F

    move-object v10, v1

    iget v10, v10, Lcom/google/zxing/common/PerspectiveTransform;->a23:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    move-object v9, v0

    iget v9, v9, Lcom/google/zxing/common/PerspectiveTransform;->a12:F

    move-object v10, v1

    iget v10, v10, Lcom/google/zxing/common/PerspectiveTransform;->a31:F

    mul-float/2addr v9, v10

    move-object v10, v0

    iget v10, v10, Lcom/google/zxing/common/PerspectiveTransform;->a22:F

    move-object v11, v1

    iget v11, v11, Lcom/google/zxing/common/PerspectiveTransform;->a32:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    move-object v10, v0

    iget v10, v10, Lcom/google/zxing/common/PerspectiveTransform;->a32:F

    move-object v11, v1

    iget v11, v11, Lcom/google/zxing/common/PerspectiveTransform;->a33:F

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    move-object v10, v0

    iget v10, v10, Lcom/google/zxing/common/PerspectiveTransform;->a13:F

    move-object v11, v1

    iget v11, v11, Lcom/google/zxing/common/PerspectiveTransform;->a11:F

    mul-float/2addr v10, v11

    move-object v11, v0

    iget v11, v11, Lcom/google/zxing/common/PerspectiveTransform;->a23:F

    move-object v12, v1

    iget v12, v12, Lcom/google/zxing/common/PerspectiveTransform;->a12:F

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    move-object v11, v0

    iget v11, v11, Lcom/google/zxing/common/PerspectiveTransform;->a33:F

    move-object v12, v1

    iget v12, v12, Lcom/google/zxing/common/PerspectiveTransform;->a13:F

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    move-object v11, v0

    iget v11, v11, Lcom/google/zxing/common/PerspectiveTransform;->a13:F

    move-object v12, v1

    iget v12, v12, Lcom/google/zxing/common/PerspectiveTransform;->a21:F

    mul-float/2addr v11, v12

    move-object v12, v0

    iget v12, v12, Lcom/google/zxing/common/PerspectiveTransform;->a23:F

    move-object v13, v1

    iget v13, v13, Lcom/google/zxing/common/PerspectiveTransform;->a22:F

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    move-object v12, v0

    iget v12, v12, Lcom/google/zxing/common/PerspectiveTransform;->a33:F

    move-object v13, v1

    iget v13, v13, Lcom/google/zxing/common/PerspectiveTransform;->a23:F

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    move-object v12, v0

    iget v12, v12, Lcom/google/zxing/common/PerspectiveTransform;->a13:F

    move-object v13, v1

    iget v13, v13, Lcom/google/zxing/common/PerspectiveTransform;->a31:F

    mul-float/2addr v12, v13

    move-object v13, v0

    iget v13, v13, Lcom/google/zxing/common/PerspectiveTransform;->a23:F

    move-object v14, v1

    iget v14, v14, Lcom/google/zxing/common/PerspectiveTransform;->a32:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    move-object v13, v0

    iget v13, v13, Lcom/google/zxing/common/PerspectiveTransform;->a33:F

    move-object v14, v1

    iget v14, v14, Lcom/google/zxing/common/PerspectiveTransform;->a33:F

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    invoke-direct/range {v3 .. v12}, Lcom/google/zxing/common/PerspectiveTransform;-><init>(FFFFFFFFF)V

    move-object v0, v2

    .end local v0    # "this":Lcom/google/zxing/common/PerspectiveTransform;
    return-object v0
.end method

.method public transformPoints([F)V
    .locals 23

    .prologue
    .line 67
    move-object/from16 v2, p0

    .local v2, "this":Lcom/google/zxing/common/PerspectiveTransform;
    move-object/from16 v3, p1

    .local v3, "points":[F
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v4, v18

    .line 68
    .local v4, "max":I
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/google/zxing/common/PerspectiveTransform;->a11:F

    move/from16 v18, v0

    move/from16 v5, v18

    .line 69
    .local v5, "a11":F
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/google/zxing/common/PerspectiveTransform;->a12:F

    move/from16 v18, v0

    move/from16 v6, v18

    .line 70
    .local v6, "a12":F
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/google/zxing/common/PerspectiveTransform;->a13:F

    move/from16 v18, v0

    move/from16 v7, v18

    .line 71
    .local v7, "a13":F
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/google/zxing/common/PerspectiveTransform;->a21:F

    move/from16 v18, v0

    move/from16 v8, v18

    .line 72
    .local v8, "a21":F
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/google/zxing/common/PerspectiveTransform;->a22:F

    move/from16 v18, v0

    move/from16 v9, v18

    .line 73
    .local v9, "a22":F
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/google/zxing/common/PerspectiveTransform;->a23:F

    move/from16 v18, v0

    move/from16 v10, v18

    .line 74
    .local v10, "a23":F
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/google/zxing/common/PerspectiveTransform;->a31:F

    move/from16 v18, v0

    move/from16 v11, v18

    .line 75
    .local v11, "a31":F
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/google/zxing/common/PerspectiveTransform;->a32:F

    move/from16 v18, v0

    move/from16 v12, v18

    .line 76
    .local v12, "a32":F
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget v0, v0, Lcom/google/zxing/common/PerspectiveTransform;->a33:F

    move/from16 v18, v0

    move/from16 v13, v18

    .line 77
    .local v13, "a33":F
    const/16 v18, 0x0

    move/from16 v14, v18

    .local v14, "i":I
    :goto_0
    move/from16 v18, v14

    move/from16 v19, v4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 78
    move-object/from16 v18, v3

    move/from16 v19, v14

    aget v18, v18, v19

    move/from16 v15, v18

    .line 79
    .local v15, "x":F
    move-object/from16 v18, v3

    move/from16 v19, v14

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    aget v18, v18, v19

    move/from16 v16, v18

    .line 80
    .local v16, "y":F
    move/from16 v18, v7

    move/from16 v19, v15

    mul-float v18, v18, v19

    move/from16 v19, v10

    move/from16 v20, v16

    mul-float v19, v19, v20

    add-float v18, v18, v19

    move/from16 v19, v13

    add-float v18, v18, v19

    move/from16 v17, v18

    .line 81
    .local v17, "denominator":F
    move-object/from16 v18, v3

    move/from16 v19, v14

    move/from16 v20, v5

    move/from16 v21, v15

    mul-float v20, v20, v21

    move/from16 v21, v8

    move/from16 v22, v16

    mul-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v21, v11

    add-float v20, v20, v21

    move/from16 v21, v17

    div-float v20, v20, v21

    aput v20, v18, v19

    .line 82
    move-object/from16 v18, v3

    move/from16 v19, v14

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    move/from16 v20, v6

    move/from16 v21, v15

    mul-float v20, v20, v21

    move/from16 v21, v9

    move/from16 v22, v16

    mul-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v21, v12

    add-float v20, v20, v21

    move/from16 v21, v17

    div-float v20, v20, v21

    aput v20, v18, v19

    .line 77
    add-int/lit8 v14, v14, 0x2

    goto :goto_0

    .line 84
    .end local v15    # "x":F
    .end local v16    # "y":F
    .end local v17    # "denominator":F
    :cond_0
    return-void
.end method

.method public transformPoints([F[F)V
    .locals 13

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/PerspectiveTransform;
    move-object v1, p1

    .local v1, "xValues":[F
    move-object v2, p2

    .local v2, "yValues":[F
    move-object v8, v1

    array-length v8, v8

    move v3, v8

    .line 89
    .local v3, "n":I
    const/4 v8, 0x0

    move v4, v8

    .local v4, "i":I
    :goto_0
    move v8, v4

    move v9, v3

    if-ge v8, v9, :cond_0

    .line 90
    move-object v8, v1

    move v9, v4

    aget v8, v8, v9

    move v5, v8

    .line 91
    .local v5, "x":F
    move-object v8, v2

    move v9, v4

    aget v8, v8, v9

    move v6, v8

    .line 92
    .local v6, "y":F
    move-object v8, v0

    iget v8, v8, Lcom/google/zxing/common/PerspectiveTransform;->a13:F

    move v9, v5

    mul-float/2addr v8, v9

    move-object v9, v0

    iget v9, v9, Lcom/google/zxing/common/PerspectiveTransform;->a23:F

    move v10, v6

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    move-object v9, v0

    iget v9, v9, Lcom/google/zxing/common/PerspectiveTransform;->a33:F

    add-float/2addr v8, v9

    move v7, v8

    .line 93
    .local v7, "denominator":F
    move-object v8, v1

    move v9, v4

    move-object v10, v0

    iget v10, v10, Lcom/google/zxing/common/PerspectiveTransform;->a11:F

    move v11, v5

    mul-float/2addr v10, v11

    move-object v11, v0

    iget v11, v11, Lcom/google/zxing/common/PerspectiveTransform;->a21:F

    move v12, v6

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    move-object v11, v0

    iget v11, v11, Lcom/google/zxing/common/PerspectiveTransform;->a31:F

    add-float/2addr v10, v11

    move v11, v7

    div-float/2addr v10, v11

    aput v10, v8, v9

    .line 94
    move-object v8, v2

    move v9, v4

    move-object v10, v0

    iget v10, v10, Lcom/google/zxing/common/PerspectiveTransform;->a12:F

    move v11, v5

    mul-float/2addr v10, v11

    move-object v11, v0

    iget v11, v11, Lcom/google/zxing/common/PerspectiveTransform;->a22:F

    move v12, v6

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    move-object v11, v0

    iget v11, v11, Lcom/google/zxing/common/PerspectiveTransform;->a32:F

    add-float/2addr v10, v11

    move v11, v7

    div-float/2addr v10, v11

    aput v10, v8, v9

    .line 89
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 96
    .end local v5    # "x":F
    .end local v6    # "y":F
    .end local v7    # "denominator":F
    :cond_0
    return-void
.end method
