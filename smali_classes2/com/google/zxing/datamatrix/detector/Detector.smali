.class public final Lcom/google/zxing/datamatrix/detector/Detector;
.super Ljava/lang/Object;
.source "Detector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/datamatrix/detector/Detector$1;,
        Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;,
        Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    }
.end annotation


# instance fields
.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private final rectangleDetector:Lcom/google/zxing/common/detector/WhiteRectangleDetector;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/datamatrix/detector/Detector;
    move-object v1, p1

    .local v1, "image":Lcom/google/zxing/common/BitMatrix;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 47
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 48
    move-object v2, v0

    new-instance v3, Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    iput-object v3, v2, Lcom/google/zxing/datamatrix/detector/Detector;->rectangleDetector:Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    .line 49
    return-void
.end method

.method private correctTopRight(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/ResultPoint;
    .locals 21

    .prologue
    .line 273
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/datamatrix/detector/Detector;
    move-object/from16 v1, p1

    .local v1, "bottomLeft":Lcom/google/zxing/ResultPoint;
    move-object/from16 v2, p2

    .local v2, "bottomRight":Lcom/google/zxing/ResultPoint;
    move-object/from16 v3, p3

    .local v3, "topLeft":Lcom/google/zxing/ResultPoint;
    move-object/from16 v4, p4

    .local v4, "topRight":Lcom/google/zxing/ResultPoint;
    move/from16 v5, p5

    .local v5, "dimension":I
    move-object v14, v1

    move-object v15, v2

    invoke-static {v14, v15}, Lcom/google/zxing/datamatrix/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v14

    int-to-float v14, v14

    move v15, v5

    int-to-float v15, v15

    div-float/2addr v14, v15

    move v6, v14

    .line 274
    .local v6, "corr":F
    move-object v14, v3

    move-object v15, v4

    invoke-static {v14, v15}, Lcom/google/zxing/datamatrix/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v14

    move v7, v14

    .line 275
    .local v7, "norm":I
    move-object v14, v4

    invoke-virtual {v14}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v14

    move-object v15, v3

    invoke-virtual {v15}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v15

    sub-float/2addr v14, v15

    move v15, v7

    int-to-float v15, v15

    div-float/2addr v14, v15

    move v8, v14

    .line 276
    .local v8, "cos":F
    move-object v14, v4

    invoke-virtual {v14}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v14

    move-object v15, v3

    invoke-virtual {v15}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v15

    sub-float/2addr v14, v15

    move v15, v7

    int-to-float v15, v15

    div-float/2addr v14, v15

    move v9, v14

    .line 278
    .local v9, "sin":F
    new-instance v14, Lcom/google/zxing/ResultPoint;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move-object/from16 v16, v4

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v16

    move/from16 v17, v6

    move/from16 v18, v8

    mul-float v17, v17, v18

    add-float v16, v16, v17

    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v17

    move/from16 v18, v6

    move/from16 v19, v9

    mul-float v18, v18, v19

    add-float v17, v17, v18

    invoke-direct/range {v15 .. v17}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    move-object v10, v14

    .line 280
    .local v10, "c1":Lcom/google/zxing/ResultPoint;
    move-object v14, v1

    move-object v15, v3

    invoke-static {v14, v15}, Lcom/google/zxing/datamatrix/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v14

    int-to-float v14, v14

    move v15, v5

    int-to-float v15, v15

    div-float/2addr v14, v15

    move v6, v14

    .line 281
    move-object v14, v2

    move-object v15, v4

    invoke-static {v14, v15}, Lcom/google/zxing/datamatrix/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v14

    move v7, v14

    .line 282
    move-object v14, v4

    invoke-virtual {v14}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v14

    move-object v15, v2

    invoke-virtual {v15}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v15

    sub-float/2addr v14, v15

    move v15, v7

    int-to-float v15, v15

    div-float/2addr v14, v15

    move v8, v14

    .line 283
    move-object v14, v4

    invoke-virtual {v14}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v14

    move-object v15, v2

    invoke-virtual {v15}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v15

    sub-float/2addr v14, v15

    move v15, v7

    int-to-float v15, v15

    div-float/2addr v14, v15

    move v9, v14

    .line 285
    new-instance v14, Lcom/google/zxing/ResultPoint;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move-object/from16 v16, v4

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v16

    move/from16 v17, v6

    move/from16 v18, v8

    mul-float v17, v17, v18

    add-float v16, v16, v17

    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v17

    move/from16 v18, v6

    move/from16 v19, v9

    mul-float v18, v18, v19

    add-float v17, v17, v18

    invoke-direct/range {v15 .. v17}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    move-object v11, v14

    .line 287
    .local v11, "c2":Lcom/google/zxing/ResultPoint;
    move-object v14, v0

    move-object v15, v10

    invoke-direct {v14, v15}, Lcom/google/zxing/datamatrix/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 288
    move-object v14, v0

    move-object v15, v11

    invoke-direct {v14, v15}, Lcom/google/zxing/datamatrix/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 289
    move-object v14, v11

    move-object v0, v14

    .line 302
    .end local v0    # "this":Lcom/google/zxing/datamatrix/detector/Detector;
    :goto_0
    return-object v0

    .line 291
    .restart local v0    # "this":Lcom/google/zxing/datamatrix/detector/Detector;
    :cond_0
    const/4 v14, 0x0

    move-object v0, v14

    goto :goto_0

    .line 293
    :cond_1
    move-object v14, v0

    move-object v15, v11

    invoke-direct {v14, v15}, Lcom/google/zxing/datamatrix/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 294
    move-object v14, v10

    move-object v0, v14

    goto :goto_0

    .line 297
    :cond_2
    move-object v14, v0

    move-object v15, v3

    move-object/from16 v16, v10

    invoke-direct/range {v14 .. v16}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v14

    move-object v15, v0

    move-object/from16 v16, v2

    move-object/from16 v17, v10

    invoke-direct/range {v15 .. v17}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    move v12, v14

    .line 299
    .local v12, "l1":I
    move-object v14, v0

    move-object v15, v3

    move-object/from16 v16, v11

    invoke-direct/range {v14 .. v16}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v14

    invoke-virtual {v14}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v14

    move-object v15, v0

    move-object/from16 v16, v2

    move-object/from16 v17, v11

    invoke-direct/range {v15 .. v17}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v15

    invoke-virtual {v15}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    move v13, v14

    .line 302
    .local v13, "l2":I
    move v14, v12

    move v15, v13

    if-gt v14, v15, :cond_3

    move-object v14, v10

    :goto_1
    move-object v0, v14

    goto :goto_0

    :cond_3
    move-object v14, v11

    goto :goto_1
.end method

.method private correctTopRightRectangular(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/ResultPoint;
    .locals 24

    .prologue
    .line 227
    move-object/from16 v2, p0

    .local v2, "this":Lcom/google/zxing/datamatrix/detector/Detector;
    move-object/from16 v3, p1

    .local v3, "bottomLeft":Lcom/google/zxing/ResultPoint;
    move-object/from16 v4, p2

    .local v4, "bottomRight":Lcom/google/zxing/ResultPoint;
    move-object/from16 v5, p3

    .local v5, "topLeft":Lcom/google/zxing/ResultPoint;
    move-object/from16 v6, p4

    .local v6, "topRight":Lcom/google/zxing/ResultPoint;
    move/from16 v7, p5

    .local v7, "dimensionTop":I
    move/from16 v8, p6

    .local v8, "dimensionRight":I
    move-object/from16 v17, v3

    move-object/from16 v18, v4

    invoke-static/range {v17 .. v18}, Lcom/google/zxing/datamatrix/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v18, v7

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    move/from16 v9, v17

    .line 228
    .local v9, "corr":F
    move-object/from16 v17, v5

    move-object/from16 v18, v6

    invoke-static/range {v17 .. v18}, Lcom/google/zxing/datamatrix/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v17

    move/from16 v10, v17

    .line 229
    .local v10, "norm":I
    move-object/from16 v17, v6

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v17

    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v18

    sub-float v17, v17, v18

    move/from16 v18, v10

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    move/from16 v11, v17

    .line 230
    .local v11, "cos":F
    move-object/from16 v17, v6

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v17

    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v18

    sub-float v17, v17, v18

    move/from16 v18, v10

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    move/from16 v12, v17

    .line 232
    .local v12, "sin":F
    new-instance v17, Lcom/google/zxing/ResultPoint;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    move-object/from16 v19, v6

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v19

    move/from16 v20, v9

    move/from16 v21, v11

    mul-float v20, v20, v21

    add-float v19, v19, v20

    move-object/from16 v20, v6

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v20

    move/from16 v21, v9

    move/from16 v22, v12

    mul-float v21, v21, v22

    add-float v20, v20, v21

    invoke-direct/range {v18 .. v20}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    move-object/from16 v13, v17

    .line 234
    .local v13, "c1":Lcom/google/zxing/ResultPoint;
    move-object/from16 v17, v3

    move-object/from16 v18, v5

    invoke-static/range {v17 .. v18}, Lcom/google/zxing/datamatrix/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v18, v8

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    move/from16 v9, v17

    .line 235
    move-object/from16 v17, v4

    move-object/from16 v18, v6

    invoke-static/range {v17 .. v18}, Lcom/google/zxing/datamatrix/detector/Detector;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I

    move-result v17

    move/from16 v10, v17

    .line 236
    move-object/from16 v17, v6

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v17

    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v18

    sub-float v17, v17, v18

    move/from16 v18, v10

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    move/from16 v11, v17

    .line 237
    move-object/from16 v17, v6

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v17

    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v18

    sub-float v17, v17, v18

    move/from16 v18, v10

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    div-float v17, v17, v18

    move/from16 v12, v17

    .line 239
    new-instance v17, Lcom/google/zxing/ResultPoint;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    move-object/from16 v19, v6

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v19

    move/from16 v20, v9

    move/from16 v21, v11

    mul-float v20, v20, v21

    add-float v19, v19, v20

    move-object/from16 v20, v6

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v20

    move/from16 v21, v9

    move/from16 v22, v12

    mul-float v21, v21, v22

    add-float v20, v20, v21

    invoke-direct/range {v18 .. v20}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    move-object/from16 v14, v17

    .line 241
    .local v14, "c2":Lcom/google/zxing/ResultPoint;
    move-object/from16 v17, v2

    move-object/from16 v18, v13

    invoke-direct/range {v17 .. v18}, Lcom/google/zxing/datamatrix/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 242
    move-object/from16 v17, v2

    move-object/from16 v18, v14

    invoke-direct/range {v17 .. v18}, Lcom/google/zxing/datamatrix/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 243
    move-object/from16 v17, v14

    move-object/from16 v2, v17

    .line 260
    .end local v2    # "this":Lcom/google/zxing/datamatrix/detector/Detector;
    :goto_0
    return-object v2

    .line 245
    .restart local v2    # "this":Lcom/google/zxing/datamatrix/detector/Detector;
    :cond_0
    const/16 v17, 0x0

    move-object/from16 v2, v17

    goto :goto_0

    .line 247
    :cond_1
    move-object/from16 v17, v2

    move-object/from16 v18, v14

    invoke-direct/range {v17 .. v18}, Lcom/google/zxing/datamatrix/detector/Detector;->isValid(Lcom/google/zxing/ResultPoint;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 248
    move-object/from16 v17, v13

    move-object/from16 v2, v17

    goto :goto_0

    .line 251
    :cond_2
    move/from16 v17, v7

    move-object/from16 v18, v2

    move-object/from16 v19, v5

    move-object/from16 v20, v13

    invoke-direct/range {v18 .. v20}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v18

    sub-int v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move/from16 v18, v8

    move-object/from16 v19, v2

    move-object/from16 v20, v4

    move-object/from16 v21, v13

    invoke-direct/range {v19 .. v21}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v19

    sub-int v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    add-int v17, v17, v18

    move/from16 v15, v17

    .line 253
    .local v15, "l1":I
    move/from16 v17, v7

    move-object/from16 v18, v2

    move-object/from16 v19, v5

    move-object/from16 v20, v14

    invoke-direct/range {v18 .. v20}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v18

    sub-int v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move/from16 v18, v8

    move-object/from16 v19, v2

    move-object/from16 v20, v4

    move-object/from16 v21, v14

    invoke-direct/range {v19 .. v21}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v19

    sub-int v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    add-int v17, v17, v18

    move/from16 v16, v17

    .line 256
    .local v16, "l2":I
    move/from16 v17, v15

    move/from16 v18, v16

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_3

    .line 257
    move-object/from16 v17, v13

    move-object/from16 v2, v17

    goto/16 :goto_0

    .line 260
    :cond_3
    move-object/from16 v17, v14

    move-object/from16 v2, v17

    goto/16 :goto_0
.end method

.method private static distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)I
    .locals 4

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "a":Lcom/google/zxing/ResultPoint;
    move-object v1, p1

    .local v1, "b":Lcom/google/zxing/ResultPoint;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v2

    move v0, v2

    .end local v0    # "a":Lcom/google/zxing/ResultPoint;
    return v0
.end method

.method private static increment(Ljava/util/Map;Lcom/google/zxing/ResultPoint;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/ResultPoint;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/zxing/ResultPoint;",
            ")V"
        }
    .end annotation

    .prologue
    .line 317
    move-object v0, p0

    .local v0, "table":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultPoint;Ljava/lang/Integer;>;"
    move-object v1, p1

    .local v1, "key":Lcom/google/zxing/ResultPoint;
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    move-object v2, v3

    .line 318
    .local v2, "value":Ljava/lang/Integer;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    if-nez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 319
    return-void

    .line 318
    :cond_0
    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private isValid(Lcom/google/zxing/ResultPoint;)Z
    .locals 4

    .prologue
    .line 306
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/datamatrix/detector/Detector;
    move-object v1, p1

    .local v1, "p":Lcom/google/zxing/ResultPoint;
    move-object v2, v1

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v3}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v3}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Lcom/google/zxing/datamatrix/detector/Detector;
    return v0

    .restart local v0    # "this":Lcom/google/zxing/datamatrix/detector/Detector;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/common/BitMatrix;
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 329
    move-object/from16 v1, p0

    .local v1, "image":Lcom/google/zxing/common/BitMatrix;
    move-object/from16 v2, p1

    .local v2, "topLeft":Lcom/google/zxing/ResultPoint;
    move-object/from16 v3, p2

    .local v3, "bottomLeft":Lcom/google/zxing/ResultPoint;
    move-object/from16 v4, p3

    .local v4, "bottomRight":Lcom/google/zxing/ResultPoint;
    move-object/from16 v5, p4

    .local v5, "topRight":Lcom/google/zxing/ResultPoint;
    move/from16 v6, p5

    .local v6, "dimensionX":I
    move/from16 v7, p6

    .local v7, "dimensionY":I
    invoke-static {}, Lcom/google/zxing/common/GridSampler;->getInstance()Lcom/google/zxing/common/GridSampler;

    move-result-object v9

    move-object v8, v9

    .line 331
    .local v8, "sampler":Lcom/google/zxing/common/GridSampler;
    move-object v9, v8

    move-object v10, v1

    move v11, v6

    move v12, v7

    const/high16 v13, 0x3f000000    # 0.5f

    const/high16 v14, 0x3f000000    # 0.5f

    move v15, v6

    int-to-float v15, v15

    const/high16 v16, 0x3f000000    # 0.5f

    sub-float v15, v15, v16

    const/high16 v16, 0x3f000000    # 0.5f

    move/from16 v17, v6

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x3f000000    # 0.5f

    sub-float v17, v17, v18

    move/from16 v18, v7

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3f000000    # 0.5f

    sub-float v18, v18, v19

    const/high16 v19, 0x3f000000    # 0.5f

    move/from16 v20, v7

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x3f000000    # 0.5f

    sub-float v20, v20, v21

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v21

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v22

    move-object/from16 v23, v5

    invoke-virtual/range {v23 .. v23}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v23

    move-object/from16 v24, v5

    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v24

    move-object/from16 v25, v4

    invoke-virtual/range {v25 .. v25}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v25

    move-object/from16 v26, v4

    invoke-virtual/range {v26 .. v26}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v26

    move-object/from16 v27, v3

    invoke-virtual/range {v27 .. v27}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v27

    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v28

    invoke-virtual/range {v9 .. v28}, Lcom/google/zxing/common/GridSampler;->sampleGrid(Lcom/google/zxing/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;

    move-result-object v9

    move-object v1, v9

    .end local v1    # "image":Lcom/google/zxing/common/BitMatrix;
    return-object v1
.end method

.method private transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    .locals 27

    .prologue
    .line 357
    move-object/from16 v2, p0

    .local v2, "this":Lcom/google/zxing/datamatrix/detector/Detector;
    move-object/from16 v3, p1

    .local v3, "from":Lcom/google/zxing/ResultPoint;
    move-object/from16 v4, p2

    .local v4, "to":Lcom/google/zxing/ResultPoint;
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v5, v20

    .line 358
    .local v5, "fromX":I
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v6, v20

    .line 359
    .local v6, "fromY":I
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v7, v20

    .line 360
    .local v7, "toX":I
    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v8, v20

    .line 361
    .local v8, "toY":I
    move/from16 v20, v8

    move/from16 v21, v6

    sub-int v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v20

    move/from16 v21, v7

    move/from16 v22, v5

    sub-int v21, v21, v22

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_3

    const/16 v20, 0x1

    :goto_0
    move/from16 v9, v20

    .line 362
    .local v9, "steep":Z
    move/from16 v20, v9

    if-eqz v20, :cond_0

    .line 363
    move/from16 v20, v5

    move/from16 v10, v20

    .line 364
    .local v10, "temp":I
    move/from16 v20, v6

    move/from16 v5, v20

    .line 365
    move/from16 v20, v10

    move/from16 v6, v20

    .line 366
    move/from16 v20, v7

    move/from16 v10, v20

    .line 367
    move/from16 v20, v8

    move/from16 v7, v20

    .line 368
    move/from16 v20, v10

    move/from16 v8, v20

    .line 371
    .end local v10    # "temp":I
    :cond_0
    move/from16 v20, v7

    move/from16 v21, v5

    sub-int v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v20

    move/from16 v10, v20

    .line 372
    .local v10, "dx":I
    move/from16 v20, v8

    move/from16 v21, v6

    sub-int v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v20

    move/from16 v11, v20

    .line 373
    .local v11, "dy":I
    move/from16 v20, v10

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    const/16 v21, 0x1

    shr-int/lit8 v20, v20, 0x1

    move/from16 v12, v20

    .line 374
    .local v12, "error":I
    move/from16 v20, v6

    move/from16 v21, v8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_4

    const/16 v20, 0x1

    :goto_1
    move/from16 v13, v20

    .line 375
    .local v13, "ystep":I
    move/from16 v20, v5

    move/from16 v21, v7

    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    const/16 v20, 0x1

    :goto_2
    move/from16 v14, v20

    .line 376
    .local v14, "xstep":I
    const/16 v20, 0x0

    move/from16 v15, v20

    .line 377
    .local v15, "transitions":I
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v20, v0

    move/from16 v21, v9

    if-eqz v21, :cond_6

    move/from16 v21, v6

    :goto_3
    move/from16 v22, v9

    if-eqz v22, :cond_7

    move/from16 v22, v5

    :goto_4
    invoke-virtual/range {v20 .. v22}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v20

    move/from16 v16, v20

    .line 378
    .local v16, "inBlack":Z
    move/from16 v20, v5

    move/from16 v17, v20

    .local v17, "x":I
    move/from16 v20, v6

    move/from16 v18, v20

    .local v18, "y":I
    :goto_5
    move/from16 v20, v17

    move/from16 v21, v7

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_2

    .line 379
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v20, v0

    move/from16 v21, v9

    if-eqz v21, :cond_8

    move/from16 v21, v18

    :goto_6
    move/from16 v22, v9

    if-eqz v22, :cond_9

    move/from16 v22, v17

    :goto_7
    invoke-virtual/range {v20 .. v22}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v20

    move/from16 v19, v20

    .line 380
    .local v19, "isBlack":Z
    move/from16 v20, v19

    move/from16 v21, v16

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    .line 381
    add-int/lit8 v15, v15, 0x1

    .line 382
    move/from16 v20, v19

    move/from16 v16, v20

    .line 384
    :cond_1
    move/from16 v20, v12

    move/from16 v21, v11

    add-int v20, v20, v21

    move/from16 v12, v20

    .line 385
    move/from16 v20, v12

    if-lez v20, :cond_b

    .line 386
    move/from16 v20, v18

    move/from16 v21, v8

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 387
    .line 393
    .end local v19    # "isBlack":Z
    :cond_2
    new-instance v20, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-object/from16 v26, v20

    move-object/from16 v20, v26

    move-object/from16 v21, v26

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move/from16 v24, v15

    const/16 v25, 0x0

    invoke-direct/range {v21 .. v25}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;-><init>(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;ILcom/google/zxing/datamatrix/detector/Detector$1;)V

    move-object/from16 v2, v20

    .end local v2    # "this":Lcom/google/zxing/datamatrix/detector/Detector;
    return-object v2

    .line 361
    .end local v9    # "steep":Z
    .end local v10    # "dx":I
    .end local v11    # "dy":I
    .end local v12    # "error":I
    .end local v13    # "ystep":I
    .end local v14    # "xstep":I
    .end local v15    # "transitions":I
    .end local v16    # "inBlack":Z
    .end local v17    # "x":I
    .end local v18    # "y":I
    .restart local v2    # "this":Lcom/google/zxing/datamatrix/detector/Detector;
    :cond_3
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 374
    .restart local v9    # "steep":Z
    .restart local v10    # "dx":I
    .restart local v11    # "dy":I
    .restart local v12    # "error":I
    :cond_4
    const/16 v20, -0x1

    goto/16 :goto_1

    .line 375
    .restart local v13    # "ystep":I
    :cond_5
    const/16 v20, -0x1

    goto/16 :goto_2

    .line 377
    .restart local v14    # "xstep":I
    .restart local v15    # "transitions":I
    :cond_6
    move/from16 v21, v5

    goto/16 :goto_3

    :cond_7
    move/from16 v22, v6

    goto :goto_4

    .line 379
    .restart local v16    # "inBlack":Z
    .restart local v17    # "x":I
    .restart local v18    # "y":I
    :cond_8
    move/from16 v21, v17

    goto :goto_6

    :cond_9
    move/from16 v22, v18

    goto :goto_7

    .line 389
    .restart local v19    # "isBlack":Z
    :cond_a
    move/from16 v20, v18

    move/from16 v21, v13

    add-int v20, v20, v21

    move/from16 v18, v20

    .line 390
    move/from16 v20, v12

    move/from16 v21, v10

    sub-int v20, v20, v21

    move/from16 v12, v20

    .line 378
    :cond_b
    move/from16 v20, v17

    move/from16 v21, v14

    add-int v20, v20, v21

    move/from16 v17, v20

    goto/16 :goto_5
.end method


# virtual methods
.method public detect()Lcom/google/zxing/common/DetectorResult;
    .locals 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 59
    move-object/from16 v2, p0

    .local v2, "this":Lcom/google/zxing/datamatrix/detector/Detector;
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/google/zxing/datamatrix/detector/Detector;->rectangleDetector:Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->detect()[Lcom/google/zxing/ResultPoint;

    move-result-object v25

    move-object/from16 v3, v25

    .line 60
    .local v3, "cornerPoints":[Lcom/google/zxing/ResultPoint;
    move-object/from16 v25, v3

    const/16 v26, 0x0

    aget-object v25, v25, v26

    move-object/from16 v4, v25

    .line 61
    .local v4, "pointA":Lcom/google/zxing/ResultPoint;
    move-object/from16 v25, v3

    const/16 v26, 0x1

    aget-object v25, v25, v26

    move-object/from16 v5, v25

    .line 62
    .local v5, "pointB":Lcom/google/zxing/ResultPoint;
    move-object/from16 v25, v3

    const/16 v26, 0x2

    aget-object v25, v25, v26

    move-object/from16 v6, v25

    .line 63
    .local v6, "pointC":Lcom/google/zxing/ResultPoint;
    move-object/from16 v25, v3

    const/16 v26, 0x3

    aget-object v25, v25, v26

    move-object/from16 v7, v25

    .line 68
    .local v7, "pointD":Lcom/google/zxing/ResultPoint;
    new-instance v25, Ljava/util/ArrayList;

    move-object/from16 v32, v25

    move-object/from16 v25, v32

    move-object/from16 v26, v32

    const/16 v27, 0x4

    invoke-direct/range {v26 .. v27}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v8, v25

    .line 69
    .local v8, "transitions":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;>;"
    move-object/from16 v25, v8

    move-object/from16 v26, v2

    move-object/from16 v27, v4

    move-object/from16 v28, v5

    invoke-direct/range {v26 .. v28}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v26

    invoke-interface/range {v25 .. v26}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v25

    .line 70
    move-object/from16 v25, v8

    move-object/from16 v26, v2

    move-object/from16 v27, v4

    move-object/from16 v28, v6

    invoke-direct/range {v26 .. v28}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v26

    invoke-interface/range {v25 .. v26}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v25

    .line 71
    move-object/from16 v25, v8

    move-object/from16 v26, v2

    move-object/from16 v27, v5

    move-object/from16 v28, v7

    invoke-direct/range {v26 .. v28}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v26

    invoke-interface/range {v25 .. v26}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v25

    .line 72
    move-object/from16 v25, v8

    move-object/from16 v26, v2

    move-object/from16 v27, v6

    move-object/from16 v28, v7

    invoke-direct/range {v26 .. v28}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v26

    invoke-interface/range {v25 .. v26}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v25

    .line 73
    move-object/from16 v25, v8

    new-instance v26, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;

    move-object/from16 v32, v26

    move-object/from16 v26, v32

    move-object/from16 v27, v32

    const/16 v28, 0x0

    invoke-direct/range {v27 .. v28}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;-><init>(Lcom/google/zxing/datamatrix/detector/Detector$1;)V

    invoke-static/range {v25 .. v26}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 77
    move-object/from16 v25, v8

    const/16 v26, 0x0

    invoke-interface/range {v25 .. v26}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-object/from16 v9, v25

    .line 78
    .local v9, "lSideOne":Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    move-object/from16 v25, v8

    const/16 v26, 0x1

    invoke-interface/range {v25 .. v26}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-object/from16 v10, v25

    .line 82
    .local v10, "lSideTwo":Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    new-instance v25, Ljava/util/HashMap;

    move-object/from16 v32, v25

    move-object/from16 v25, v32

    move-object/from16 v26, v32

    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v11, v25

    .line 83
    .local v11, "pointCount":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultPoint;Ljava/lang/Integer;>;"
    move-object/from16 v25, v11

    move-object/from16 v26, v9

    invoke-virtual/range {v26 .. v26}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getFrom()Lcom/google/zxing/ResultPoint;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/google/zxing/datamatrix/detector/Detector;->increment(Ljava/util/Map;Lcom/google/zxing/ResultPoint;)V

    .line 84
    move-object/from16 v25, v11

    move-object/from16 v26, v9

    invoke-virtual/range {v26 .. v26}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTo()Lcom/google/zxing/ResultPoint;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/google/zxing/datamatrix/detector/Detector;->increment(Ljava/util/Map;Lcom/google/zxing/ResultPoint;)V

    .line 85
    move-object/from16 v25, v11

    move-object/from16 v26, v10

    invoke-virtual/range {v26 .. v26}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getFrom()Lcom/google/zxing/ResultPoint;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/google/zxing/datamatrix/detector/Detector;->increment(Ljava/util/Map;Lcom/google/zxing/ResultPoint;)V

    .line 86
    move-object/from16 v25, v11

    move-object/from16 v26, v10

    invoke-virtual/range {v26 .. v26}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTo()Lcom/google/zxing/ResultPoint;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/google/zxing/datamatrix/detector/Detector;->increment(Ljava/util/Map;Lcom/google/zxing/ResultPoint;)V

    .line 88
    const/16 v25, 0x0

    move-object/from16 v12, v25

    .line 89
    .local v12, "maybeTopLeft":Lcom/google/zxing/ResultPoint;
    const/16 v25, 0x0

    move-object/from16 v13, v25

    .line 90
    .local v13, "bottomLeft":Lcom/google/zxing/ResultPoint;
    const/16 v25, 0x0

    move-object/from16 v14, v25

    .line 91
    .local v14, "maybeBottomRight":Lcom/google/zxing/ResultPoint;
    move-object/from16 v25, v11

    invoke-interface/range {v25 .. v25}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    move-object/from16 v15, v25

    .local v15, "i$":Ljava/util/Iterator;
    :goto_0
    move-object/from16 v25, v15

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_2

    move-object/from16 v25, v15

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Map$Entry;

    move-object/from16 v16, v25

    .line 92
    .local v16, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/zxing/ResultPoint;Ljava/lang/Integer;>;"
    move-object/from16 v25, v16

    invoke-interface/range {v25 .. v25}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/google/zxing/ResultPoint;

    move-object/from16 v17, v25

    .line 93
    .local v17, "point":Lcom/google/zxing/ResultPoint;
    move-object/from16 v25, v16

    invoke-interface/range {v25 .. v25}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    move-object/from16 v18, v25

    .line 94
    .local v18, "value":Ljava/lang/Integer;
    move-object/from16 v25, v18

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_0

    .line 95
    move-object/from16 v25, v17

    move-object/from16 v13, v25

    .line 104
    :goto_1
    goto :goto_0

    .line 98
    :cond_0
    move-object/from16 v25, v12

    if-nez v25, :cond_1

    .line 99
    move-object/from16 v25, v17

    move-object/from16 v12, v25

    goto :goto_1

    .line 101
    :cond_1
    move-object/from16 v25, v17

    move-object/from16 v14, v25

    goto :goto_1

    .line 106
    .end local v16    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/zxing/ResultPoint;Ljava/lang/Integer;>;"
    .end local v17    # "point":Lcom/google/zxing/ResultPoint;
    .end local v18    # "value":Ljava/lang/Integer;
    :cond_2
    move-object/from16 v25, v12

    if-eqz v25, :cond_3

    move-object/from16 v25, v13

    if-eqz v25, :cond_3

    move-object/from16 v25, v14

    if-nez v25, :cond_4

    .line 107
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v25

    throw v25

    .line 111
    :cond_4
    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v25, v0

    move-object/from16 v32, v25

    move-object/from16 v25, v32

    move-object/from16 v26, v32

    const/16 v27, 0x0

    move-object/from16 v28, v12

    aput-object v28, v26, v27

    move-object/from16 v32, v25

    move-object/from16 v25, v32

    move-object/from16 v26, v32

    const/16 v27, 0x1

    move-object/from16 v28, v13

    aput-object v28, v26, v27

    move-object/from16 v32, v25

    move-object/from16 v25, v32

    move-object/from16 v26, v32

    const/16 v27, 0x2

    move-object/from16 v28, v14

    aput-object v28, v26, v27

    move-object/from16 v15, v25

    .line 113
    .local v15, "corners":[Lcom/google/zxing/ResultPoint;
    move-object/from16 v25, v15

    invoke-static/range {v25 .. v25}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    .line 116
    move-object/from16 v25, v15

    const/16 v26, 0x0

    aget-object v25, v25, v26

    move-object/from16 v16, v25

    .line 117
    .local v16, "bottomRight":Lcom/google/zxing/ResultPoint;
    move-object/from16 v25, v15

    const/16 v26, 0x1

    aget-object v25, v25, v26

    move-object/from16 v13, v25

    .line 118
    move-object/from16 v25, v15

    const/16 v26, 0x2

    aget-object v25, v25, v26

    move-object/from16 v17, v25

    .line 122
    .local v17, "topLeft":Lcom/google/zxing/ResultPoint;
    move-object/from16 v25, v11

    move-object/from16 v26, v4

    invoke-interface/range {v25 .. v26}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_b

    .line 123
    move-object/from16 v25, v4

    move-object/from16 v18, v25

    .line 141
    .local v18, "topRight":Lcom/google/zxing/ResultPoint;
    :goto_2
    move-object/from16 v25, v2

    move-object/from16 v26, v17

    move-object/from16 v27, v18

    invoke-direct/range {v25 .. v27}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v25

    move/from16 v19, v25

    .line 142
    .local v19, "dimensionTop":I
    move-object/from16 v25, v2

    move-object/from16 v26, v16

    move-object/from16 v27, v18

    invoke-direct/range {v25 .. v27}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v25

    move/from16 v20, v25

    .line 144
    .local v20, "dimensionRight":I
    move/from16 v25, v19

    const/16 v26, 0x1

    and-int/lit8 v25, v25, 0x1

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_5

    .line 146
    add-int/lit8 v19, v19, 0x1

    .line 148
    :cond_5
    add-int/lit8 v19, v19, 0x2

    .line 150
    move/from16 v25, v20

    const/16 v26, 0x1

    and-int/lit8 v25, v25, 0x1

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_6

    .line 152
    add-int/lit8 v20, v20, 0x1

    .line 154
    :cond_6
    add-int/lit8 v20, v20, 0x2

    .line 162
    const/16 v25, 0x4

    move/from16 v26, v19

    mul-int v25, v25, v26

    const/16 v26, 0x7

    move/from16 v27, v20

    mul-int v26, v26, v27

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_7

    const/16 v25, 0x4

    move/from16 v26, v20

    mul-int v25, v25, v26

    const/16 v26, 0x7

    move/from16 v27, v19

    mul-int v26, v26, v27

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_e

    .line 165
    :cond_7
    move-object/from16 v25, v2

    move-object/from16 v26, v13

    move-object/from16 v27, v16

    move-object/from16 v28, v17

    move-object/from16 v29, v18

    move/from16 v30, v19

    move/from16 v31, v20

    invoke-direct/range {v25 .. v31}, Lcom/google/zxing/datamatrix/detector/Detector;->correctTopRightRectangular(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/ResultPoint;

    move-result-object v25

    move-object/from16 v22, v25

    .line 167
    .local v22, "correctedTopRight":Lcom/google/zxing/ResultPoint;
    move-object/from16 v25, v22

    if-nez v25, :cond_8

    .line 168
    move-object/from16 v25, v18

    move-object/from16 v22, v25

    .line 171
    :cond_8
    move-object/from16 v25, v2

    move-object/from16 v26, v17

    move-object/from16 v27, v22

    invoke-direct/range {v25 .. v27}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v25

    move/from16 v19, v25

    .line 172
    move-object/from16 v25, v2

    move-object/from16 v26, v16

    move-object/from16 v27, v22

    invoke-direct/range {v25 .. v27}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v25

    move/from16 v20, v25

    .line 174
    move/from16 v25, v19

    const/16 v26, 0x1

    and-int/lit8 v25, v25, 0x1

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_9

    .line 176
    add-int/lit8 v19, v19, 0x1

    .line 179
    :cond_9
    move/from16 v25, v20

    const/16 v26, 0x1

    and-int/lit8 v25, v25, 0x1

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_a

    .line 181
    add-int/lit8 v20, v20, 0x1

    .line 184
    :cond_a
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v25, v0

    move-object/from16 v26, v17

    move-object/from16 v27, v13

    move-object/from16 v28, v16

    move-object/from16 v29, v22

    move/from16 v30, v19

    move/from16 v31, v20

    invoke-static/range {v25 .. v31}, Lcom/google/zxing/datamatrix/detector/Detector;->sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object v25

    move-object/from16 v21, v25

    .line 213
    .local v21, "bits":Lcom/google/zxing/common/BitMatrix;
    :goto_3
    new-instance v25, Lcom/google/zxing/common/DetectorResult;

    move-object/from16 v32, v25

    move-object/from16 v25, v32

    move-object/from16 v26, v32

    move-object/from16 v27, v21

    const/16 v28, 0x4

    move/from16 v0, v28

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v28, v0

    move-object/from16 v32, v28

    move-object/from16 v28, v32

    move-object/from16 v29, v32

    const/16 v30, 0x0

    move-object/from16 v31, v17

    aput-object v31, v29, v30

    move-object/from16 v32, v28

    move-object/from16 v28, v32

    move-object/from16 v29, v32

    const/16 v30, 0x1

    move-object/from16 v31, v13

    aput-object v31, v29, v30

    move-object/from16 v32, v28

    move-object/from16 v28, v32

    move-object/from16 v29, v32

    const/16 v30, 0x2

    move-object/from16 v31, v16

    aput-object v31, v29, v30

    move-object/from16 v32, v28

    move-object/from16 v28, v32

    move-object/from16 v29, v32

    const/16 v30, 0x3

    move-object/from16 v31, v22

    aput-object v31, v29, v30

    invoke-direct/range {v26 .. v28}, Lcom/google/zxing/common/DetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;)V

    move-object/from16 v2, v25

    .end local v2    # "this":Lcom/google/zxing/datamatrix/detector/Detector;
    return-object v2

    .line 124
    .end local v18    # "topRight":Lcom/google/zxing/ResultPoint;
    .end local v19    # "dimensionTop":I
    .end local v20    # "dimensionRight":I
    .end local v21    # "bits":Lcom/google/zxing/common/BitMatrix;
    .end local v22    # "correctedTopRight":Lcom/google/zxing/ResultPoint;
    .restart local v2    # "this":Lcom/google/zxing/datamatrix/detector/Detector;
    :cond_b
    move-object/from16 v25, v11

    move-object/from16 v26, v5

    invoke-interface/range {v25 .. v26}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_c

    .line 125
    move-object/from16 v25, v5

    move-object/from16 v18, v25

    .restart local v18    # "topRight":Lcom/google/zxing/ResultPoint;
    goto/16 :goto_2

    .line 126
    .end local v18    # "topRight":Lcom/google/zxing/ResultPoint;
    :cond_c
    move-object/from16 v25, v11

    move-object/from16 v26, v6

    invoke-interface/range {v25 .. v26}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_d

    .line 127
    move-object/from16 v25, v6

    move-object/from16 v18, v25

    .restart local v18    # "topRight":Lcom/google/zxing/ResultPoint;
    goto/16 :goto_2

    .line 129
    .end local v18    # "topRight":Lcom/google/zxing/ResultPoint;
    :cond_d
    move-object/from16 v25, v7

    move-object/from16 v18, v25

    .restart local v18    # "topRight":Lcom/google/zxing/ResultPoint;
    goto/16 :goto_2

    .line 189
    .restart local v19    # "dimensionTop":I
    .restart local v20    # "dimensionRight":I
    :cond_e
    move/from16 v25, v20

    move/from16 v26, v19

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->min(II)I

    move-result v25

    move/from16 v23, v25

    .line 191
    .local v23, "dimension":I
    move-object/from16 v25, v2

    move-object/from16 v26, v13

    move-object/from16 v27, v16

    move-object/from16 v28, v17

    move-object/from16 v29, v18

    move/from16 v30, v23

    invoke-direct/range {v25 .. v30}, Lcom/google/zxing/datamatrix/detector/Detector;->correctTopRight(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/ResultPoint;

    move-result-object v25

    move-object/from16 v22, v25

    .line 192
    .restart local v22    # "correctedTopRight":Lcom/google/zxing/ResultPoint;
    move-object/from16 v25, v22

    if-nez v25, :cond_f

    .line 193
    move-object/from16 v25, v18

    move-object/from16 v22, v25

    .line 197
    :cond_f
    move-object/from16 v25, v2

    move-object/from16 v26, v17

    move-object/from16 v27, v22

    invoke-direct/range {v25 .. v27}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v25

    move-object/from16 v26, v2

    move-object/from16 v27, v16

    move-object/from16 v28, v22

    invoke-direct/range {v26 .. v28}, Lcom/google/zxing/datamatrix/detector/Detector;->transitionsBetween(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v26

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->max(II)I

    move-result v25

    move/from16 v24, v25

    .line 199
    .local v24, "dimensionCorrected":I
    add-int/lit8 v24, v24, 0x1

    .line 200
    move/from16 v25, v24

    const/16 v26, 0x1

    and-int/lit8 v25, v25, 0x1

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_10

    .line 201
    add-int/lit8 v24, v24, 0x1

    .line 204
    :cond_10
    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/google/zxing/datamatrix/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v25, v0

    move-object/from16 v26, v17

    move-object/from16 v27, v13

    move-object/from16 v28, v16

    move-object/from16 v29, v22

    move/from16 v30, v24

    move/from16 v31, v24

    invoke-static/range {v25 .. v31}, Lcom/google/zxing/datamatrix/detector/Detector;->sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object v25

    move-object/from16 v21, v25

    .restart local v21    # "bits":Lcom/google/zxing/common/BitMatrix;
    goto/16 :goto_3
.end method
