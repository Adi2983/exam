.class public Lcom/google/zxing/qrcode/detector/Detector;
.super Ljava/lang/Object;
.source "Detector.java"


# instance fields
.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private resultPointCallback:Lcom/google/zxing/ResultPointCallback;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/detector/Detector;
    move-object v1, p1

    .local v1, "image":Lcom/google/zxing/common/BitMatrix;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 45
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 46
    return-void
.end method

.method private calculateModuleSizeOneWay(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F
    .locals 10

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/detector/Detector;
    move-object v1, p1

    .local v1, "pattern":Lcom/google/zxing/ResultPoint;
    move-object v2, p2

    .local v2, "otherPattern":Lcom/google/zxing/ResultPoint;
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    float-to-int v6, v6

    move-object v7, v1

    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    float-to-int v7, v7

    move-object v8, v2

    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v8

    float-to-int v8, v8

    move-object v9, v2

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    float-to-int v9, v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/zxing/qrcode/detector/Detector;->sizeOfBlackWhiteBlackRunBothWays(IIII)F

    move-result v5

    move v3, v5

    .line 240
    .local v3, "moduleSizeEst1":F
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    float-to-int v6, v6

    move-object v7, v2

    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v7

    float-to-int v7, v7

    move-object v8, v1

    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v8

    float-to-int v8, v8

    move-object v9, v1

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    float-to-int v9, v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/zxing/qrcode/detector/Detector;->sizeOfBlackWhiteBlackRunBothWays(IIII)F

    move-result v5

    move v4, v5

    .line 244
    .local v4, "moduleSizeEst2":F
    move v5, v3

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 245
    move v5, v4

    const/high16 v6, 0x40e00000    # 7.0f

    div-float/2addr v5, v6

    move v0, v5

    .line 252
    .end local v0    # "this":Lcom/google/zxing/qrcode/detector/Detector;
    :goto_0
    return v0

    .line 247
    .restart local v0    # "this":Lcom/google/zxing/qrcode/detector/Detector;
    :cond_0
    move v5, v4

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 248
    move v5, v3

    const/high16 v6, 0x40e00000    # 7.0f

    div-float/2addr v5, v6

    move v0, v5

    goto :goto_0

    .line 252
    :cond_1
    move v5, v3

    move v6, v4

    add-float/2addr v5, v6

    const/high16 v6, 0x41600000    # 14.0f

    div-float/2addr v5, v6

    move v0, v5

    goto :goto_0
.end method

.method private static computeDimension(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;F)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "topLeft":Lcom/google/zxing/ResultPoint;
    move-object v1, p1

    .local v1, "topRight":Lcom/google/zxing/ResultPoint;
    move-object v2, p2

    .local v2, "bottomLeft":Lcom/google/zxing/ResultPoint;
    move v3, p3

    .local v3, "moduleSize":F
    move-object v7, v0

    move-object v8, v1

    invoke-static {v7, v8}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v7

    move v8, v3

    div-float/2addr v7, v8

    invoke-static {v7}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v7

    move v4, v7

    .line 202
    .local v4, "tltrCentersDimension":I
    move-object v7, v0

    move-object v8, v2

    invoke-static {v7, v8}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v7

    move v8, v3

    div-float/2addr v7, v8

    invoke-static {v7}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v7

    move v5, v7

    .line 203
    .local v5, "tlblCentersDimension":I
    move v7, v4

    move v8, v5

    add-int/2addr v7, v8

    const/4 v8, 0x1

    shr-int/lit8 v7, v7, 0x1

    const/4 v8, 0x7

    add-int/lit8 v7, v7, 0x7

    move v6, v7

    .line 204
    .local v6, "dimension":I
    move v7, v6

    const/4 v8, 0x3

    and-int/lit8 v7, v7, 0x3

    packed-switch v7, :pswitch_data_0

    .line 215
    :goto_0
    :pswitch_0
    move v7, v6

    move v0, v7

    .end local v0    # "topLeft":Lcom/google/zxing/ResultPoint;
    return v0

    .line 206
    .restart local v0    # "topLeft":Lcom/google/zxing/ResultPoint;
    :pswitch_1
    add-int/lit8 v6, v6, 0x1

    .line 207
    goto :goto_0

    .line 210
    :pswitch_2
    add-int/lit8 v6, v6, -0x1

    .line 211
    goto :goto_0

    .line 213
    :pswitch_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v7

    throw v7

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static createTransform(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/common/PerspectiveTransform;
    .locals 26

    .prologue
    .line 148
    move-object/from16 v0, p0

    .local v0, "topLeft":Lcom/google/zxing/ResultPoint;
    move-object/from16 v1, p1

    .local v1, "topRight":Lcom/google/zxing/ResultPoint;
    move-object/from16 v2, p2

    .local v2, "bottomLeft":Lcom/google/zxing/ResultPoint;
    move-object/from16 v3, p3

    .local v3, "alignmentPattern":Lcom/google/zxing/ResultPoint;
    move/from16 v4, p4

    .local v4, "dimension":I
    move v10, v4

    int-to-float v10, v10

    const/high16 v11, 0x40600000    # 3.5f

    sub-float/2addr v10, v11

    move v5, v10

    .line 153
    .local v5, "dimMinusThree":F
    move-object v10, v3

    if-eqz v10, :cond_0

    .line 154
    move-object v10, v3

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v10

    move v6, v10

    .line 155
    .local v6, "bottomRightX":F
    move-object v10, v3

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v10

    move v7, v10

    .line 156
    .local v7, "bottomRightY":F
    move v10, v5

    const/high16 v11, 0x40400000    # 3.0f

    sub-float/2addr v10, v11

    move v8, v10

    .line 157
    .local v8, "sourceBottomRightX":F
    move v10, v8

    move v9, v10

    .line 166
    .local v9, "sourceBottomRightY":F
    :goto_0
    const/high16 v10, 0x40600000    # 3.5f

    const/high16 v11, 0x40600000    # 3.5f

    move v12, v5

    const/high16 v13, 0x40600000    # 3.5f

    move v14, v8

    move v15, v9

    const/high16 v16, 0x40600000    # 3.5f

    move/from16 v17, v5

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v18

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v19

    move-object/from16 v20, v1

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v20

    move-object/from16 v21, v1

    invoke-virtual/range {v21 .. v21}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v21

    move/from16 v22, v6

    move/from16 v23, v7

    move-object/from16 v24, v2

    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v24

    move-object/from16 v25, v2

    invoke-virtual/range {v25 .. v25}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v25

    invoke-static/range {v10 .. v25}, Lcom/google/zxing/common/PerspectiveTransform;->quadrilateralToQuadrilateral(FFFFFFFFFFFFFFFF)Lcom/google/zxing/common/PerspectiveTransform;

    move-result-object v10

    move-object v0, v10

    .end local v0    # "topLeft":Lcom/google/zxing/ResultPoint;
    return-object v0

    .line 160
    .end local v6    # "bottomRightX":F
    .end local v7    # "bottomRightY":F
    .end local v8    # "sourceBottomRightX":F
    .end local v9    # "sourceBottomRightY":F
    .restart local v0    # "topLeft":Lcom/google/zxing/ResultPoint;
    :cond_0
    move-object v10, v1

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v10

    move-object v11, v0

    invoke-virtual {v11}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v11

    sub-float/2addr v10, v11

    move-object v11, v2

    invoke-virtual {v11}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v11

    add-float/2addr v10, v11

    move v6, v10

    .line 161
    .restart local v6    # "bottomRightX":F
    move-object v10, v1

    invoke-virtual {v10}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v10

    move-object v11, v0

    invoke-virtual {v11}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v11

    sub-float/2addr v10, v11

    move-object v11, v2

    invoke-virtual {v11}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v11

    add-float/2addr v10, v11

    move v7, v10

    .line 162
    .restart local v7    # "bottomRightY":F
    move v10, v5

    move v8, v10

    .line 163
    .restart local v8    # "sourceBottomRightX":F
    move v10, v5

    move v9, v10

    .restart local v9    # "sourceBottomRightY":F
    goto :goto_0
.end method

.method private static sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/common/PerspectiveTransform;I)Lcom/google/zxing/common/BitMatrix;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "image":Lcom/google/zxing/common/BitMatrix;
    move-object v1, p1

    .local v1, "transform":Lcom/google/zxing/common/PerspectiveTransform;
    move v2, p2

    .local v2, "dimension":I
    invoke-static {}, Lcom/google/zxing/common/GridSampler;->getInstance()Lcom/google/zxing/common/GridSampler;

    move-result-object v4

    move-object v3, v4

    .line 190
    .local v3, "sampler":Lcom/google/zxing/common/GridSampler;
    move-object v4, v3

    move-object v5, v0

    move v6, v2

    move v7, v2

    move-object v8, v1

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/zxing/common/GridSampler;->sampleGrid(Lcom/google/zxing/common/BitMatrix;IILcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "image":Lcom/google/zxing/common/BitMatrix;
    return-object v0
.end method

.method private sizeOfBlackWhiteBlackRun(IIII)F
    .locals 23

    .prologue
    .line 303
    move-object/from16 v2, p0

    .local v2, "this":Lcom/google/zxing/qrcode/detector/Detector;
    move/from16 v3, p1

    .local v3, "fromX":I
    move/from16 v4, p2

    .local v4, "fromY":I
    move/from16 v5, p3

    .local v5, "toX":I
    move/from16 v6, p4

    .local v6, "toY":I
    move/from16 v19, v6

    move/from16 v20, v4

    sub-int v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v19

    move/from16 v20, v5

    move/from16 v21, v3

    sub-int v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_1

    const/16 v19, 0x1

    :goto_0
    move/from16 v7, v19

    .line 304
    .local v7, "steep":Z
    move/from16 v19, v7

    if-eqz v19, :cond_0

    .line 305
    move/from16 v19, v3

    move/from16 v8, v19

    .line 306
    .local v8, "temp":I
    move/from16 v19, v4

    move/from16 v3, v19

    .line 307
    move/from16 v19, v8

    move/from16 v4, v19

    .line 308
    move/from16 v19, v5

    move/from16 v8, v19

    .line 309
    move/from16 v19, v6

    move/from16 v5, v19

    .line 310
    move/from16 v19, v8

    move/from16 v6, v19

    .line 313
    .end local v8    # "temp":I
    :cond_0
    move/from16 v19, v5

    move/from16 v20, v3

    sub-int v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v19

    move/from16 v8, v19

    .line 314
    .local v8, "dx":I
    move/from16 v19, v6

    move/from16 v20, v4

    sub-int v19, v19, v20

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v19

    move/from16 v9, v19

    .line 315
    .local v9, "dy":I
    move/from16 v19, v8

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v19, v0

    const/16 v20, 0x1

    shr-int/lit8 v19, v19, 0x1

    move/from16 v10, v19

    .line 316
    .local v10, "error":I
    move/from16 v19, v3

    move/from16 v20, v5

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_2

    const/16 v19, 0x1

    :goto_1
    move/from16 v11, v19

    .line 317
    .local v11, "xstep":I
    move/from16 v19, v4

    move/from16 v20, v6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    const/16 v19, 0x1

    :goto_2
    move/from16 v12, v19

    .line 320
    .local v12, "ystep":I
    const/16 v19, 0x0

    move/from16 v13, v19

    .line 322
    .local v13, "state":I
    move/from16 v19, v5

    move/from16 v20, v11

    add-int v19, v19, v20

    move/from16 v14, v19

    .line 323
    .local v14, "xLimit":I
    move/from16 v19, v3

    move/from16 v15, v19

    .local v15, "x":I
    move/from16 v19, v4

    move/from16 v16, v19

    .local v16, "y":I
    :goto_3
    move/from16 v19, v15

    move/from16 v20, v14

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_9

    .line 324
    move/from16 v19, v7

    if-eqz v19, :cond_4

    move/from16 v19, v16

    :goto_4
    move/from16 v17, v19

    .line 325
    .local v17, "realX":I
    move/from16 v19, v7

    if-eqz v19, :cond_5

    move/from16 v19, v15

    :goto_5
    move/from16 v18, v19

    .line 330
    .local v18, "realY":I
    move/from16 v19, v13

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    const/16 v19, 0x1

    :goto_6
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v20, v0

    move/from16 v21, v17

    move/from16 v22, v18

    invoke-virtual/range {v20 .. v22}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 331
    move/from16 v19, v13

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 332
    move/from16 v19, v15

    move/from16 v20, v16

    move/from16 v21, v3

    move/from16 v22, v4

    invoke-static/range {v19 .. v22}, Lcom/google/zxing/common/detector/MathUtils;->distance(IIII)F

    move-result v19

    move/from16 v2, v19

    .line 353
    .end local v2    # "this":Lcom/google/zxing/qrcode/detector/Detector;
    .end local v17    # "realX":I
    .end local v18    # "realY":I
    :goto_7
    return v2

    .line 303
    .end local v7    # "steep":Z
    .end local v8    # "dx":I
    .end local v9    # "dy":I
    .end local v10    # "error":I
    .end local v11    # "xstep":I
    .end local v12    # "ystep":I
    .end local v13    # "state":I
    .end local v14    # "xLimit":I
    .end local v15    # "x":I
    .end local v16    # "y":I
    .restart local v2    # "this":Lcom/google/zxing/qrcode/detector/Detector;
    :cond_1
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 316
    .restart local v7    # "steep":Z
    .restart local v8    # "dx":I
    .restart local v9    # "dy":I
    .restart local v10    # "error":I
    :cond_2
    const/16 v19, -0x1

    goto :goto_1

    .line 317
    .restart local v11    # "xstep":I
    :cond_3
    const/16 v19, -0x1

    goto :goto_2

    .line 324
    .restart local v12    # "ystep":I
    .restart local v13    # "state":I
    .restart local v14    # "xLimit":I
    .restart local v15    # "x":I
    .restart local v16    # "y":I
    :cond_4
    move/from16 v19, v15

    goto :goto_4

    .line 325
    .restart local v17    # "realX":I
    :cond_5
    move/from16 v19, v16

    goto :goto_5

    .line 330
    .restart local v18    # "realY":I
    :cond_6
    const/16 v19, 0x0

    goto :goto_6

    .line 334
    :cond_7
    add-int/lit8 v13, v13, 0x1

    .line 337
    :cond_8
    move/from16 v19, v10

    move/from16 v20, v9

    add-int v19, v19, v20

    move/from16 v10, v19

    .line 338
    move/from16 v19, v10

    if-lez v19, :cond_b

    .line 339
    move/from16 v19, v16

    move/from16 v20, v6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 340
    .line 349
    .end local v17    # "realX":I
    .end local v18    # "realY":I
    :cond_9
    move/from16 v19, v13

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_c

    .line 350
    move/from16 v19, v5

    move/from16 v20, v11

    add-int v19, v19, v20

    move/from16 v20, v6

    move/from16 v21, v3

    move/from16 v22, v4

    invoke-static/range {v19 .. v22}, Lcom/google/zxing/common/detector/MathUtils;->distance(IIII)F

    move-result v19

    move/from16 v2, v19

    goto :goto_7

    .line 342
    .restart local v17    # "realX":I
    .restart local v18    # "realY":I
    :cond_a
    move/from16 v19, v16

    move/from16 v20, v12

    add-int v19, v19, v20

    move/from16 v16, v19

    .line 343
    move/from16 v19, v10

    move/from16 v20, v8

    sub-int v19, v19, v20

    move/from16 v10, v19

    .line 323
    :cond_b
    move/from16 v19, v15

    move/from16 v20, v11

    add-int v19, v19, v20

    move/from16 v15, v19

    goto/16 :goto_3

    .line 353
    .end local v17    # "realX":I
    .end local v18    # "realY":I
    :cond_c
    const/high16 v19, 0x7fc00000    # Float.NaN

    move/from16 v2, v19

    goto :goto_7
.end method

.method private sizeOfBlackWhiteBlackRunBothWays(IIII)F
    .locals 15

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/detector/Detector;
    move/from16 v1, p1

    .local v1, "fromX":I
    move/from16 v2, p2

    .local v2, "fromY":I
    move/from16 v3, p3

    .local v3, "toX":I
    move/from16 v4, p4

    .local v4, "toY":I
    move-object v9, v0

    move v10, v1

    move v11, v2

    move v12, v3

    move v13, v4

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/google/zxing/qrcode/detector/Detector;->sizeOfBlackWhiteBlackRun(IIII)F

    move-result v9

    move v5, v9

    .line 265
    .local v5, "result":F
    const/high16 v9, 0x3f800000    # 1.0f

    move v6, v9

    .line 266
    .local v6, "scale":F
    move v9, v1

    move v10, v3

    move v11, v1

    sub-int/2addr v10, v11

    sub-int/2addr v9, v10

    move v7, v9

    .line 267
    .local v7, "otherToX":I
    move v9, v7

    if-gez v9, :cond_2

    .line 268
    move v9, v1

    int-to-float v9, v9

    move v10, v1

    move v11, v7

    sub-int/2addr v10, v11

    int-to-float v10, v10

    div-float/2addr v9, v10

    move v6, v9

    .line 269
    const/4 v9, 0x0

    move v7, v9

    .line 274
    :cond_0
    :goto_0
    move v9, v2

    int-to-float v9, v9

    move v10, v4

    move v11, v2

    sub-int/2addr v10, v11

    int-to-float v10, v10

    move v11, v6

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    float-to-int v9, v9

    move v8, v9

    .line 276
    .local v8, "otherToY":I
    const/high16 v9, 0x3f800000    # 1.0f

    move v6, v9

    .line 277
    move v9, v8

    if-gez v9, :cond_3

    .line 278
    move v9, v2

    int-to-float v9, v9

    move v10, v2

    move v11, v8

    sub-int/2addr v10, v11

    int-to-float v10, v10

    div-float/2addr v9, v10

    move v6, v9

    .line 279
    const/4 v9, 0x0

    move v8, v9

    .line 284
    :cond_1
    :goto_1
    move v9, v1

    int-to-float v9, v9

    move v10, v7

    move v11, v1

    sub-int/2addr v10, v11

    int-to-float v10, v10

    move v11, v6

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    float-to-int v9, v9

    move v7, v9

    .line 286
    move v9, v5

    move-object v10, v0

    move v11, v1

    move v12, v2

    move v13, v7

    move v14, v8

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/zxing/qrcode/detector/Detector;->sizeOfBlackWhiteBlackRun(IIII)F

    move-result v10

    add-float/2addr v9, v10

    move v5, v9

    .line 289
    move v9, v5

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v9, v10

    move v0, v9

    .end local v0    # "this":Lcom/google/zxing/qrcode/detector/Detector;
    return v0

    .line 270
    .end local v8    # "otherToY":I
    .restart local v0    # "this":Lcom/google/zxing/qrcode/detector/Detector;
    :cond_2
    move v9, v7

    move-object v10, v0

    iget-object v10, v10, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v10}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v10

    if-lt v9, v10, :cond_0

    .line 271
    move-object v9, v0

    iget-object v9, v9, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v9}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v10, v1

    sub-int/2addr v9, v10

    int-to-float v9, v9

    move v10, v7

    move v11, v1

    sub-int/2addr v10, v11

    int-to-float v10, v10

    div-float/2addr v9, v10

    move v6, v9

    .line 272
    move-object v9, v0

    iget-object v9, v9, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v9}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v7, v9

    goto :goto_0

    .line 280
    .restart local v8    # "otherToY":I
    :cond_3
    move v9, v8

    move-object v10, v0

    iget-object v10, v10, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v10}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v10

    if-lt v9, v10, :cond_1

    .line 281
    move-object v9, v0

    iget-object v9, v9, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v9}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v10, v2

    sub-int/2addr v9, v10

    int-to-float v9, v9

    move v10, v8

    move v11, v2

    sub-int/2addr v10, v11

    int-to-float v10, v10

    div-float/2addr v9, v10

    move v6, v9

    .line 282
    move-object v9, v0

    iget-object v9, v9, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v9}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v8, v9

    goto :goto_1
.end method


# virtual methods
.method protected final calculateModuleSize(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F
    .locals 8

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/detector/Detector;
    move-object v1, p1

    .local v1, "topLeft":Lcom/google/zxing/ResultPoint;
    move-object v2, p2

    .local v2, "topRight":Lcom/google/zxing/ResultPoint;
    move-object v3, p3

    .local v3, "bottomLeft":Lcom/google/zxing/ResultPoint;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/qrcode/detector/Detector;->calculateModuleSizeOneWay(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lcom/google/zxing/qrcode/detector/Detector;->calculateModuleSizeOneWay(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    move v0, v4

    .end local v0    # "this":Lcom/google/zxing/qrcode/detector/Detector;
    return v0
.end method

.method public detect()Lcom/google/zxing/common/DetectorResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/detector/Detector;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/zxing/qrcode/detector/Detector;->detect(Ljava/util/Map;)Lcom/google/zxing/common/DetectorResult;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/qrcode/detector/Detector;
    return-object v0
.end method

.method public final detect(Ljava/util/Map;)Lcom/google/zxing/common/DetectorResult;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DetectorResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/detector/Detector;
    move-object v1, p1

    .local v1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object v4, v0

    move-object v5, v1

    if-nez v5, :cond_0

    const/4 v5, 0x0

    :goto_0
    iput-object v5, v4, Lcom/google/zxing/qrcode/detector/Detector;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    .line 79
    new-instance v4, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    move-object v7, v0

    iget-object v7, v7, Lcom/google/zxing/qrcode/detector/Detector;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    invoke-direct {v5, v6, v7}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V

    move-object v2, v4

    .line 80
    .local v2, "finder":Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->find(Ljava/util/Map;)Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    move-result-object v4

    move-object v3, v4

    .line 82
    .local v3, "info":Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/google/zxing/qrcode/detector/Detector;->processFinderPatternInfo(Lcom/google/zxing/qrcode/detector/FinderPatternInfo;)Lcom/google/zxing/common/DetectorResult;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/google/zxing/qrcode/detector/Detector;
    return-object v0

    .line 76
    .end local v2    # "finder":Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
    .end local v3    # "info":Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    .restart local v0    # "this":Lcom/google/zxing/qrcode/detector/Detector;
    :cond_0
    move-object v5, v1

    sget-object v6, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/ResultPointCallback;

    goto :goto_0
.end method

.method protected final findAlignmentInRegion(FIIF)Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 374
    move-object/from16 v1, p0

    .local v1, "this":Lcom/google/zxing/qrcode/detector/Detector;
    move/from16 v2, p1

    .local v2, "overallEstModuleSize":F
    move/from16 v3, p2

    .local v3, "estAlignmentX":I
    move/from16 v4, p3

    .local v4, "estAlignmentY":I
    move/from16 v5, p4

    .local v5, "allowanceFactor":F
    move v12, v5

    move v13, v2

    mul-float/2addr v12, v13

    float-to-int v12, v12

    move v6, v12

    .line 375
    .local v6, "allowance":I
    const/4 v12, 0x0

    move v13, v3

    move v14, v6

    sub-int/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    move v7, v12

    .line 376
    .local v7, "alignmentAreaLeftX":I
    move-object v12, v1

    iget-object v12, v12, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v12}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v12

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v13, v3

    move v14, v6

    add-int/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    move v8, v12

    .line 377
    .local v8, "alignmentAreaRightX":I
    move v12, v8

    move v13, v7

    sub-int/2addr v12, v13

    int-to-float v12, v12

    move v13, v2

    const/high16 v14, 0x40400000    # 3.0f

    mul-float/2addr v13, v14

    cmpg-float v12, v12, v13

    if-gez v12, :cond_0

    .line 378
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v12

    throw v12

    .line 381
    :cond_0
    const/4 v12, 0x0

    move v13, v4

    move v14, v6

    sub-int/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    move v9, v12

    .line 382
    .local v9, "alignmentAreaTopY":I
    move-object v12, v1

    iget-object v12, v12, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v12}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v12

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v13, v4

    move v14, v6

    add-int/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    move v10, v12

    .line 383
    .local v10, "alignmentAreaBottomY":I
    move v12, v10

    move v13, v9

    sub-int/2addr v12, v13

    int-to-float v12, v12

    move v13, v2

    const/high16 v14, 0x40400000    # 3.0f

    mul-float/2addr v13, v14

    cmpg-float v12, v12, v13

    if-gez v12, :cond_1

    .line 384
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v12

    throw v12

    .line 387
    :cond_1
    new-instance v12, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    move-object v14, v1

    iget-object v14, v14, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    move v15, v7

    move/from16 v16, v9

    move/from16 v17, v8

    move/from16 v18, v7

    sub-int v17, v17, v18

    move/from16 v18, v10

    move/from16 v19, v9

    sub-int v18, v18, v19

    move/from16 v19, v2

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/zxing/qrcode/detector/Detector;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    move-object/from16 v20, v0

    invoke-direct/range {v13 .. v20}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;IIIIFLcom/google/zxing/ResultPointCallback;)V

    move-object v11, v12

    .line 396
    .local v11, "alignmentFinder":Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;
    move-object v12, v11

    invoke-virtual {v12}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->find()Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    move-result-object v12

    move-object v1, v12

    .end local v1    # "this":Lcom/google/zxing/qrcode/detector/Detector;
    return-object v1
.end method

.method protected final getImage()Lcom/google/zxing/common/BitMatrix;
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/detector/Detector;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/qrcode/detector/Detector;
    return-object v0
.end method

.method protected final getResultPointCallback()Lcom/google/zxing/ResultPointCallback;
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/detector/Detector;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/qrcode/detector/Detector;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/qrcode/detector/Detector;
    return-object v0
.end method

.method protected final processFinderPatternInfo(Lcom/google/zxing/qrcode/detector/FinderPatternInfo;)Lcom/google/zxing/common/DetectorResult;
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 88
    move-object/from16 v2, p0

    .local v2, "this":Lcom/google/zxing/qrcode/detector/Detector;
    move-object/from16 v3, p1

    .local v3, "info":Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v19

    move-object/from16 v4, v19

    .line 89
    .local v4, "topLeft":Lcom/google/zxing/qrcode/detector/FinderPattern;
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopRight()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v19

    move-object/from16 v5, v19

    .line 90
    .local v5, "topRight":Lcom/google/zxing/qrcode/detector/FinderPattern;
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getBottomLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v19

    move-object/from16 v6, v19

    .line 92
    .local v6, "bottomLeft":Lcom/google/zxing/qrcode/detector/FinderPattern;
    move-object/from16 v19, v2

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    invoke-virtual/range {v19 .. v22}, Lcom/google/zxing/qrcode/detector/Detector;->calculateModuleSize(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v19

    move/from16 v7, v19

    .line 93
    .local v7, "moduleSize":F
    move/from16 v19, v7

    const/high16 v20, 0x3f800000    # 1.0f

    cmpg-float v19, v19, v20

    if-gez v19, :cond_0

    .line 94
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v19

    throw v19

    .line 96
    :cond_0
    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move/from16 v22, v7

    invoke-static/range {v19 .. v22}, Lcom/google/zxing/qrcode/detector/Detector;->computeDimension(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;F)I

    move-result v19

    move/from16 v8, v19

    .line 97
    .local v8, "dimension":I
    move/from16 v19, v8

    invoke-static/range {v19 .. v19}, Lcom/google/zxing/qrcode/decoder/Version;->getProvisionalVersionForDimension(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v19

    move-object/from16 v9, v19

    .line 98
    .local v9, "provisionalVersion":Lcom/google/zxing/qrcode/decoder/Version;
    move-object/from16 v19, v9

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v19

    const/16 v20, 0x7

    add-int/lit8 v19, v19, -0x7

    move/from16 v10, v19

    .line 100
    .local v10, "modulesBetweenFPCenters":I
    const/16 v19, 0x0

    move-object/from16 v11, v19

    .line 102
    .local v11, "alignmentPattern":Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    move-object/from16 v19, v9

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/qrcode/decoder/Version;->getAlignmentPatternCenters()[I

    move-result-object v19

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    if-lez v19, :cond_1

    .line 105
    move-object/from16 v19, v5

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v19

    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v20

    sub-float v19, v19, v20

    move-object/from16 v20, v6

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v20

    add-float v19, v19, v20

    move/from16 v12, v19

    .line 106
    .local v12, "bottomRightX":F
    move-object/from16 v19, v5

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v19

    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v20

    sub-float v19, v19, v20

    move-object/from16 v20, v6

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v20

    add-float v19, v19, v20

    move/from16 v13, v19

    .line 110
    .local v13, "bottomRightY":F
    const/high16 v19, 0x3f800000    # 1.0f

    const/high16 v20, 0x40400000    # 3.0f

    move/from16 v21, v10

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    sub-float v19, v19, v20

    move/from16 v14, v19

    .line 111
    .local v14, "correctionToTopLeft":F
    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v19

    move/from16 v20, v14

    move/from16 v21, v12

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v22

    sub-float v21, v21, v22

    mul-float v20, v20, v21

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v15, v19

    .line 112
    .local v15, "estAlignmentX":I
    move-object/from16 v19, v4

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v19

    move/from16 v20, v14

    move/from16 v21, v13

    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v22

    sub-float v21, v21, v22

    mul-float v20, v20, v21

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v16, v19

    .line 115
    .local v16, "estAlignmentY":I
    const/16 v19, 0x4

    move/from16 v17, v19

    .local v17, "i":I
    :goto_0
    move/from16 v19, v17

    const/16 v20, 0x10

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_1

    .line 117
    move-object/from16 v19, v2

    move/from16 v20, v7

    move/from16 v21, v15

    move/from16 v22, v16

    move/from16 v23, v17

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    :try_start_0
    invoke-virtual/range {v19 .. v23}, Lcom/google/zxing/qrcode/detector/Detector;->findAlignmentInRegion(FIIF)Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    move-object/from16 v11, v19

    .line 121
    .line 129
    .end local v12    # "bottomRightX":F
    .end local v13    # "bottomRightY":F
    .end local v14    # "correctionToTopLeft":F
    .end local v15    # "estAlignmentX":I
    .end local v16    # "estAlignmentY":I
    .end local v17    # "i":I
    :cond_1
    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v11

    move/from16 v23, v8

    invoke-static/range {v19 .. v23}, Lcom/google/zxing/qrcode/detector/Detector;->createTransform(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)Lcom/google/zxing/common/PerspectiveTransform;

    move-result-object v19

    move-object/from16 v12, v19

    .line 132
    .local v12, "transform":Lcom/google/zxing/common/PerspectiveTransform;
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/zxing/qrcode/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v19, v0

    move-object/from16 v20, v12

    move/from16 v21, v8

    invoke-static/range {v19 .. v21}, Lcom/google/zxing/qrcode/detector/Detector;->sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/common/PerspectiveTransform;I)Lcom/google/zxing/common/BitMatrix;

    move-result-object v19

    move-object/from16 v13, v19

    .line 135
    .local v13, "bits":Lcom/google/zxing/common/BitMatrix;
    move-object/from16 v19, v11

    if-nez v19, :cond_2

    .line 136
    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v19, v0

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    const/16 v21, 0x0

    move-object/from16 v22, v6

    aput-object v22, v20, v21

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    const/16 v21, 0x1

    move-object/from16 v22, v4

    aput-object v22, v20, v21

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    const/16 v21, 0x2

    move-object/from16 v22, v5

    aput-object v22, v20, v21

    move-object/from16 v14, v19

    .line 140
    .local v14, "points":[Lcom/google/zxing/ResultPoint;
    :goto_1
    new-instance v19, Lcom/google/zxing/common/DetectorResult;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    move-object/from16 v21, v13

    move-object/from16 v22, v14

    invoke-direct/range {v20 .. v22}, Lcom/google/zxing/common/DetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;)V

    move-object/from16 v2, v19

    .end local v2    # "this":Lcom/google/zxing/qrcode/detector/Detector;
    return-object v2

    .line 122
    .restart local v2    # "this":Lcom/google/zxing/qrcode/detector/Detector;
    .local v12, "bottomRightX":F
    .local v13, "bottomRightY":F
    .local v14, "correctionToTopLeft":F
    .restart local v15    # "estAlignmentX":I
    .restart local v16    # "estAlignmentY":I
    .restart local v17    # "i":I
    :catch_0
    move-exception v19

    move-object/from16 v18, v19

    .line 115
    move/from16 v19, v17

    const/16 v20, 0x1

    shl-int/lit8 v19, v19, 0x1

    move/from16 v17, v19

    goto/16 :goto_0

    .line 138
    .end local v14    # "correctionToTopLeft":F
    .end local v15    # "estAlignmentX":I
    .end local v16    # "estAlignmentY":I
    .end local v17    # "i":I
    .local v12, "transform":Lcom/google/zxing/common/PerspectiveTransform;
    .local v13, "bits":Lcom/google/zxing/common/BitMatrix;
    :cond_2
    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v19, v0

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    const/16 v21, 0x0

    move-object/from16 v22, v6

    aput-object v22, v20, v21

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    const/16 v21, 0x1

    move-object/from16 v22, v4

    aput-object v22, v20, v21

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    const/16 v21, 0x2

    move-object/from16 v22, v5

    aput-object v22, v20, v21

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    const/16 v21, 0x3

    move-object/from16 v22, v11

    aput-object v22, v20, v21

    move-object/from16 v14, v19

    .local v14, "points":[Lcom/google/zxing/ResultPoint;
    goto :goto_1
.end method
