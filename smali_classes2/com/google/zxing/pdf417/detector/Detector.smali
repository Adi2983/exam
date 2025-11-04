.class public final Lcom/google/zxing/pdf417/detector/Detector;
.super Ljava/lang/Object;
.source "Detector.java"


# static fields
.field private static final INTEGER_MATH_SHIFT:I = 0x8

.field private static final MAX_AVG_VARIANCE:I = 0x6b

.field private static final MAX_INDIVIDUAL_VARIANCE:I = 0xcc

.field private static final PATTERN_MATCH_RESULT_SCALE_FACTOR:I = 0x100

.field private static final SKEW_THRESHOLD:I = 0x3

.field private static final START_PATTERN:[I

.field private static final START_PATTERN_REVERSE:[I

.field private static final STOP_PATTERN:[I

.field private static final STOP_PATTERN_REVERSE:[I


# instance fields
.field private final image:Lcom/google/zxing/BinaryBitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN:[I

    .line 51
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN_REVERSE:[I

    .line 54
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN:[I

    .line 58
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN_REVERSE:[I

    return-void

    .line 48
    nop

    :array_0
    .array-data 4
        0x8
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
    .end array-data

    .line 51
    :array_1
    .array-data 4
        0x3
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x8
    .end array-data

    .line 54
    :array_2
    .array-data 4
        0x7
        0x1
        0x1
        0x3
        0x1
        0x1
        0x1
        0x2
        0x1
    .end array-data

    .line 58
    :array_3
    .array-data 4
        0x1
        0x2
        0x1
        0x1
        0x1
        0x3
        0x1
        0x1
        0x7
    .end array-data
.end method

.method public constructor <init>(Lcom/google/zxing/BinaryBitmap;)V
    .locals 4

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/detector/Detector;
    move-object v1, p1

    .local v1, "image":Lcom/google/zxing/BinaryBitmap;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 63
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/zxing/pdf417/detector/Detector;->image:Lcom/google/zxing/BinaryBitmap;

    .line 64
    return-void
.end method

.method private static computeDimension(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;F)I
    .locals 9

    .prologue
    .line 400
    move-object v0, p0

    .local v0, "topLeft":Lcom/google/zxing/ResultPoint;
    move-object v1, p1

    .local v1, "topRight":Lcom/google/zxing/ResultPoint;
    move-object v2, p2

    .local v2, "bottomLeft":Lcom/google/zxing/ResultPoint;
    move-object v3, p3

    .local v3, "bottomRight":Lcom/google/zxing/ResultPoint;
    move v4, p4

    .local v4, "moduleWidth":F
    move-object v7, v0

    move-object v8, v1

    invoke-static {v7, v8}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v7

    move v8, v4

    div-float/2addr v7, v8

    invoke-static {v7}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v7

    move v5, v7

    .line 401
    .local v5, "topRowDimension":I
    move-object v7, v2

    move-object v8, v3

    invoke-static {v7, v8}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v7

    move v8, v4

    div-float/2addr v7, v8

    invoke-static {v7}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v7

    move v6, v7

    .line 402
    .local v6, "bottomRowDimension":I
    move v7, v5

    move v8, v6

    add-int/2addr v7, v8

    const/4 v8, 0x1

    shr-int/lit8 v7, v7, 0x1

    const/16 v8, 0x8

    add-int/lit8 v7, v7, 0x8

    const/16 v8, 0x11

    div-int/lit8 v7, v7, 0x11

    const/16 v8, 0x11

    mul-int/lit8 v7, v7, 0x11

    move v0, v7

    .end local v0    # "topLeft":Lcom/google/zxing/ResultPoint;
    return v0
.end method

.method private static computeModuleWidth([Lcom/google/zxing/ResultPoint;)F
    .locals 10

    .prologue
    .line 375
    move-object v0, p0

    .local v0, "vertices":[Lcom/google/zxing/ResultPoint;
    move-object v7, v0

    const/4 v8, 0x0

    aget-object v7, v7, v8

    move-object v8, v0

    const/4 v9, 0x4

    aget-object v8, v8, v9

    invoke-static {v7, v8}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v7

    move v1, v7

    .line 376
    .local v1, "pixels1":F
    move-object v7, v0

    const/4 v8, 0x1

    aget-object v7, v7, v8

    move-object v8, v0

    const/4 v9, 0x5

    aget-object v8, v8, v9

    invoke-static {v7, v8}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v7

    move v2, v7

    .line 377
    .local v2, "pixels2":F
    move v7, v1

    move v8, v2

    add-float/2addr v7, v8

    const/high16 v8, 0x42080000    # 34.0f

    div-float/2addr v7, v8

    move v3, v7

    .line 378
    .local v3, "moduleWidth1":F
    move-object v7, v0

    const/4 v8, 0x6

    aget-object v7, v7, v8

    move-object v8, v0

    const/4 v9, 0x2

    aget-object v8, v8, v9

    invoke-static {v7, v8}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v7

    move v4, v7

    .line 379
    .local v4, "pixels3":F
    move-object v7, v0

    const/4 v8, 0x7

    aget-object v7, v7, v8

    move-object v8, v0

    const/4 v9, 0x3

    aget-object v8, v8, v9

    invoke-static {v7, v8}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v7

    move v5, v7

    .line 380
    .local v5, "pixels4":F
    move v7, v4

    move v8, v5

    add-float/2addr v7, v8

    const/high16 v8, 0x42100000    # 36.0f

    div-float/2addr v7, v8

    move v6, v7

    .line 381
    .local v6, "moduleWidth2":F
    move v7, v3

    move v8, v6

    add-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    move v0, v7

    .end local v0    # "vertices":[Lcom/google/zxing/ResultPoint;
    return v0
.end method

.method private static computeYDimension(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;F)I
    .locals 9

    .prologue
    .line 421
    move-object v0, p0

    .local v0, "topLeft":Lcom/google/zxing/ResultPoint;
    move-object v1, p1

    .local v1, "topRight":Lcom/google/zxing/ResultPoint;
    move-object v2, p2

    .local v2, "bottomLeft":Lcom/google/zxing/ResultPoint;
    move-object v3, p3

    .local v3, "bottomRight":Lcom/google/zxing/ResultPoint;
    move v4, p4

    .local v4, "moduleWidth":F
    move-object v7, v0

    move-object v8, v2

    invoke-static {v7, v8}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v7

    move v8, v4

    div-float/2addr v7, v8

    invoke-static {v7}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v7

    move v5, v7

    .line 422
    .local v5, "leftColumnDimension":I
    move-object v7, v1

    move-object v8, v3

    invoke-static {v7, v8}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v7

    move v8, v4

    div-float/2addr v7, v8

    invoke-static {v7}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v7

    move v6, v7

    .line 423
    .local v6, "rightColumnDimension":I
    move v7, v5

    move v8, v6

    add-int/2addr v7, v8

    const/4 v8, 0x1

    shr-int/lit8 v7, v7, 0x1

    move v0, v7

    .end local v0    # "topLeft":Lcom/google/zxing/ResultPoint;
    return v0
.end method

.method private static correctCodeWordVertices([Lcom/google/zxing/ResultPoint;Z)V
    .locals 33

    .prologue
    .line 300
    move-object/from16 v1, p0

    .local v1, "vertices":[Lcom/google/zxing/ResultPoint;
    move/from16 v2, p1

    .local v2, "upsideDown":Z
    move-object/from16 v24, v1

    const/16 v25, 0x0

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v24

    move/from16 v3, v24

    .line 301
    .local v3, "v0x":F
    move-object/from16 v24, v1

    const/16 v25, 0x0

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v24

    move/from16 v4, v24

    .line 302
    .local v4, "v0y":F
    move-object/from16 v24, v1

    const/16 v25, 0x2

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v24

    move/from16 v5, v24

    .line 303
    .local v5, "v2x":F
    move-object/from16 v24, v1

    const/16 v25, 0x2

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v24

    move/from16 v6, v24

    .line 304
    .local v6, "v2y":F
    move-object/from16 v24, v1

    const/16 v25, 0x4

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v24

    move/from16 v7, v24

    .line 305
    .local v7, "v4x":F
    move-object/from16 v24, v1

    const/16 v25, 0x4

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v24

    move/from16 v8, v24

    .line 306
    .local v8, "v4y":F
    move-object/from16 v24, v1

    const/16 v25, 0x6

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v24

    move/from16 v9, v24

    .line 307
    .local v9, "v6x":F
    move-object/from16 v24, v1

    const/16 v25, 0x6

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v24

    move/from16 v10, v24

    .line 309
    .local v10, "v6y":F
    move/from16 v24, v8

    move/from16 v25, v10

    sub-float v24, v24, v25

    move/from16 v11, v24

    .line 310
    .local v11, "skew":F
    move/from16 v24, v2

    if-eqz v24, :cond_0

    .line 311
    move/from16 v24, v11

    move/from16 v0, v24

    neg-float v0, v0

    move/from16 v24, v0

    move/from16 v11, v24

    .line 313
    :cond_0
    move/from16 v24, v11

    const/high16 v25, 0x40400000    # 3.0f

    cmpl-float v24, v24, v25

    if-lez v24, :cond_4

    .line 315
    move/from16 v24, v9

    move/from16 v25, v3

    sub-float v24, v24, v25

    move/from16 v12, v24

    .line 316
    .local v12, "deltax":F
    move/from16 v24, v10

    move/from16 v25, v4

    sub-float v24, v24, v25

    move/from16 v13, v24

    .line 317
    .local v13, "deltay":F
    move/from16 v24, v12

    move/from16 v25, v12

    mul-float v24, v24, v25

    move/from16 v25, v13

    move/from16 v26, v13

    mul-float v25, v25, v26

    add-float v24, v24, v25

    move/from16 v14, v24

    .line 318
    .local v14, "delta2":F
    move/from16 v24, v7

    move/from16 v25, v3

    sub-float v24, v24, v25

    move/from16 v25, v12

    mul-float v24, v24, v25

    move/from16 v25, v14

    div-float v24, v24, v25

    move/from16 v15, v24

    .line 319
    .local v15, "correction":F
    move-object/from16 v24, v1

    const/16 v25, 0x4

    new-instance v26, Lcom/google/zxing/ResultPoint;

    move-object/from16 v32, v26

    move-object/from16 v26, v32

    move-object/from16 v27, v32

    move/from16 v28, v3

    move/from16 v29, v15

    move/from16 v30, v12

    mul-float v29, v29, v30

    add-float v28, v28, v29

    move/from16 v29, v4

    move/from16 v30, v15

    move/from16 v31, v13

    mul-float v30, v30, v31

    add-float v29, v29, v30

    invoke-direct/range {v27 .. v29}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v26, v24, v25

    .line 320
    .line 329
    .end local v12    # "deltax":F
    .end local v13    # "deltay":F
    .end local v14    # "delta2":F
    .end local v15    # "correction":F
    :cond_1
    :goto_0
    move-object/from16 v24, v1

    const/16 v25, 0x1

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v24

    move/from16 v12, v24

    .line 330
    .local v12, "v1x":F
    move-object/from16 v24, v1

    const/16 v25, 0x1

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v24

    move/from16 v13, v24

    .line 331
    .local v13, "v1y":F
    move-object/from16 v24, v1

    const/16 v25, 0x3

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v24

    move/from16 v14, v24

    .line 332
    .local v14, "v3x":F
    move-object/from16 v24, v1

    const/16 v25, 0x3

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v24

    move/from16 v15, v24

    .line 333
    .local v15, "v3y":F
    move-object/from16 v24, v1

    const/16 v25, 0x5

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v24

    move/from16 v16, v24

    .line 334
    .local v16, "v5x":F
    move-object/from16 v24, v1

    const/16 v25, 0x5

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v24

    move/from16 v17, v24

    .line 335
    .local v17, "v5y":F
    move-object/from16 v24, v1

    const/16 v25, 0x7

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v24

    move/from16 v18, v24

    .line 336
    .local v18, "v7x":F
    move-object/from16 v24, v1

    const/16 v25, 0x7

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v24

    move/from16 v19, v24

    .line 338
    .local v19, "v7y":F
    move/from16 v24, v19

    move/from16 v25, v17

    sub-float v24, v24, v25

    move/from16 v11, v24

    .line 339
    move/from16 v24, v2

    if-eqz v24, :cond_2

    .line 340
    move/from16 v24, v11

    move/from16 v0, v24

    neg-float v0, v0

    move/from16 v24, v0

    move/from16 v11, v24

    .line 342
    :cond_2
    move/from16 v24, v11

    const/high16 v25, 0x40400000    # 3.0f

    cmpl-float v24, v24, v25

    if-lez v24, :cond_5

    .line 344
    move/from16 v24, v18

    move/from16 v25, v12

    sub-float v24, v24, v25

    move/from16 v20, v24

    .line 345
    .local v20, "deltax":F
    move/from16 v24, v19

    move/from16 v25, v13

    sub-float v24, v24, v25

    move/from16 v21, v24

    .line 346
    .local v21, "deltay":F
    move/from16 v24, v20

    move/from16 v25, v20

    mul-float v24, v24, v25

    move/from16 v25, v21

    move/from16 v26, v21

    mul-float v25, v25, v26

    add-float v24, v24, v25

    move/from16 v22, v24

    .line 347
    .local v22, "delta2":F
    move/from16 v24, v16

    move/from16 v25, v12

    sub-float v24, v24, v25

    move/from16 v25, v20

    mul-float v24, v24, v25

    move/from16 v25, v22

    div-float v24, v24, v25

    move/from16 v23, v24

    .line 348
    .local v23, "correction":F
    move-object/from16 v24, v1

    const/16 v25, 0x5

    new-instance v26, Lcom/google/zxing/ResultPoint;

    move-object/from16 v32, v26

    move-object/from16 v26, v32

    move-object/from16 v27, v32

    move/from16 v28, v12

    move/from16 v29, v23

    move/from16 v30, v20

    mul-float v29, v29, v30

    add-float v28, v28, v29

    move/from16 v29, v13

    move/from16 v30, v23

    move/from16 v31, v21

    mul-float v30, v30, v31

    add-float v29, v29, v30

    invoke-direct/range {v27 .. v29}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v26, v24, v25

    .line 349
    .line 357
    .end local v20    # "deltax":F
    .end local v21    # "deltay":F
    .end local v22    # "delta2":F
    .end local v23    # "correction":F
    :cond_3
    :goto_1
    return-void

    .line 320
    .end local v12    # "v1x":F
    .end local v13    # "v1y":F
    .end local v14    # "v3x":F
    .end local v15    # "v3y":F
    .end local v16    # "v5x":F
    .end local v17    # "v5y":F
    .end local v18    # "v7x":F
    .end local v19    # "v7y":F
    :cond_4
    move/from16 v24, v11

    move/from16 v0, v24

    neg-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x40400000    # 3.0f

    cmpl-float v24, v24, v25

    if-lez v24, :cond_1

    .line 322
    move/from16 v24, v5

    move/from16 v25, v7

    sub-float v24, v24, v25

    move/from16 v12, v24

    .line 323
    .local v12, "deltax":F
    move/from16 v24, v6

    move/from16 v25, v8

    sub-float v24, v24, v25

    move/from16 v13, v24

    .line 324
    .local v13, "deltay":F
    move/from16 v24, v12

    move/from16 v25, v12

    mul-float v24, v24, v25

    move/from16 v25, v13

    move/from16 v26, v13

    mul-float v25, v25, v26

    add-float v24, v24, v25

    move/from16 v14, v24

    .line 325
    .local v14, "delta2":F
    move/from16 v24, v5

    move/from16 v25, v9

    sub-float v24, v24, v25

    move/from16 v25, v12

    mul-float v24, v24, v25

    move/from16 v25, v14

    div-float v24, v24, v25

    move/from16 v15, v24

    .line 326
    .local v15, "correction":F
    move-object/from16 v24, v1

    const/16 v25, 0x6

    new-instance v26, Lcom/google/zxing/ResultPoint;

    move-object/from16 v32, v26

    move-object/from16 v26, v32

    move-object/from16 v27, v32

    move/from16 v28, v5

    move/from16 v29, v15

    move/from16 v30, v12

    mul-float v29, v29, v30

    sub-float v28, v28, v29

    move/from16 v29, v6

    move/from16 v30, v15

    move/from16 v31, v13

    mul-float v30, v30, v31

    sub-float v29, v29, v30

    invoke-direct/range {v27 .. v29}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v26, v24, v25

    goto/16 :goto_0

    .line 349
    .local v12, "v1x":F
    .local v13, "v1y":F
    .local v14, "v3x":F
    .local v15, "v3y":F
    .restart local v16    # "v5x":F
    .restart local v17    # "v5y":F
    .restart local v18    # "v7x":F
    .restart local v19    # "v7y":F
    :cond_5
    move/from16 v24, v11

    move/from16 v0, v24

    neg-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x40400000    # 3.0f

    cmpl-float v24, v24, v25

    if-lez v24, :cond_3

    .line 351
    move/from16 v24, v14

    move/from16 v25, v16

    sub-float v24, v24, v25

    move/from16 v20, v24

    .line 352
    .restart local v20    # "deltax":F
    move/from16 v24, v15

    move/from16 v25, v17

    sub-float v24, v24, v25

    move/from16 v21, v24

    .line 353
    .restart local v21    # "deltay":F
    move/from16 v24, v20

    move/from16 v25, v20

    mul-float v24, v24, v25

    move/from16 v25, v21

    move/from16 v26, v21

    mul-float v25, v25, v26

    add-float v24, v24, v25

    move/from16 v22, v24

    .line 354
    .restart local v22    # "delta2":F
    move/from16 v24, v14

    move/from16 v25, v18

    sub-float v24, v24, v25

    move/from16 v25, v20

    mul-float v24, v24, v25

    move/from16 v25, v22

    div-float v24, v24, v25

    move/from16 v23, v24

    .line 355
    .restart local v23    # "correction":F
    move-object/from16 v24, v1

    const/16 v25, 0x7

    new-instance v26, Lcom/google/zxing/ResultPoint;

    move-object/from16 v32, v26

    move-object/from16 v26, v32

    move-object/from16 v27, v32

    move/from16 v28, v14

    move/from16 v29, v23

    move/from16 v30, v20

    mul-float v29, v29, v30

    sub-float v28, v28, v29

    move/from16 v29, v15

    move/from16 v30, v23

    move/from16 v31, v21

    mul-float v30, v30, v31

    sub-float v29, v29, v30

    invoke-direct/range {v27 .. v29}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v26, v24, v25

    goto/16 :goto_1
.end method

.method private static findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I
    .locals 21

    .prologue
    .line 476
    move-object/from16 v0, p0

    .local v0, "matrix":Lcom/google/zxing/common/BitMatrix;
    move/from16 v1, p1

    .local v1, "column":I
    move/from16 v2, p2

    .local v2, "row":I
    move/from16 v3, p3

    .local v3, "width":I
    move/from16 v4, p4

    .local v4, "whiteFirst":Z
    move-object/from16 v5, p5

    .local v5, "pattern":[I
    move-object/from16 v6, p6

    .local v6, "counters":[I
    move-object v13, v6

    const/4 v14, 0x0

    move-object v15, v6

    array-length v15, v15

    const/16 v16, 0x0

    invoke-static/range {v13 .. v16}, Ljava/util/Arrays;->fill([IIII)V

    .line 477
    move-object v13, v5

    array-length v13, v13

    move v7, v13

    .line 478
    .local v7, "patternLength":I
    move v13, v4

    move v8, v13

    .line 480
    .local v8, "isWhite":Z
    const/4 v13, 0x0

    move v9, v13

    .line 481
    .local v9, "counterPosition":I
    move v13, v1

    move v10, v13

    .line 482
    .local v10, "patternStart":I
    move v13, v1

    move v11, v13

    .local v11, "x":I
    :goto_0
    move v13, v11

    move v14, v1

    move v15, v3

    add-int/2addr v14, v15

    if-ge v13, v14, :cond_4

    .line 483
    move-object v13, v0

    move v14, v11

    move v15, v2

    invoke-virtual {v13, v14, v15}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v13

    move v12, v13

    .line 484
    .local v12, "pixel":Z
    move v13, v12

    move v14, v8

    xor-int/2addr v13, v14

    if-eqz v13, :cond_0

    .line 485
    move-object v13, v6

    move v14, v9

    move-object/from16 v19, v13

    move/from16 v20, v14

    move-object/from16 v13, v19

    move/from16 v14, v20

    move-object/from16 v15, v19

    move/from16 v16, v20

    aget v15, v15, v16

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    aput v15, v13, v14

    .line 482
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 487
    :cond_0
    move v13, v9

    move v14, v7

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    if-ne v13, v14, :cond_2

    .line 488
    move-object v13, v6

    move-object v14, v5

    const/16 v15, 0xcc

    invoke-static {v13, v14, v15}, Lcom/google/zxing/pdf417/detector/Detector;->patternMatchVariance([I[II)I

    move-result v13

    const/16 v14, 0x6b

    if-ge v13, v14, :cond_1

    .line 489
    const/4 v13, 0x2

    new-array v13, v13, [I

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/4 v15, 0x0

    move/from16 v16, v10

    aput v16, v14, v15

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/4 v15, 0x1

    move/from16 v16, v11

    aput v16, v14, v15

    move-object v0, v13

    .line 503
    .end local v0    # "matrix":Lcom/google/zxing/common/BitMatrix;
    .end local v12    # "pixel":Z
    :goto_2
    return-object v0

    .line 491
    .restart local v0    # "matrix":Lcom/google/zxing/common/BitMatrix;
    .restart local v12    # "pixel":Z
    :cond_1
    move v13, v10

    move-object v14, v6

    const/4 v15, 0x0

    aget v14, v14, v15

    move-object v15, v6

    const/16 v16, 0x1

    aget v15, v15, v16

    add-int/2addr v14, v15

    add-int/2addr v13, v14

    move v10, v13

    .line 492
    move-object v13, v6

    const/4 v14, 0x2

    move-object v15, v6

    const/16 v16, 0x0

    move/from16 v17, v7

    const/16 v18, 0x2

    add-int/lit8 v17, v17, -0x2

    invoke-static/range {v13 .. v17}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 493
    move-object v13, v6

    move v14, v7

    const/4 v15, 0x2

    add-int/lit8 v14, v14, -0x2

    const/4 v15, 0x0

    aput v15, v13, v14

    .line 494
    move-object v13, v6

    move v14, v7

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    const/4 v15, 0x0

    aput v15, v13, v14

    .line 495
    add-int/lit8 v9, v9, -0x1

    .line 499
    :goto_3
    move-object v13, v6

    move v14, v9

    const/4 v15, 0x1

    aput v15, v13, v14

    .line 500
    move v13, v8

    if-nez v13, :cond_3

    const/4 v13, 0x1

    :goto_4
    move v8, v13

    goto :goto_1

    .line 497
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 500
    :cond_3
    const/4 v13, 0x0

    goto :goto_4

    .line 503
    .end local v12    # "pixel":Z
    :cond_4
    const/4 v13, 0x0

    move-object v0, v13

    goto :goto_2
.end method

.method private static findVertices(Lcom/google/zxing/common/BitMatrix;Z)[Lcom/google/zxing/ResultPoint;
    .locals 18

    .prologue
    .line 140
    move-object/from16 v0, p0

    .local v0, "matrix":Lcom/google/zxing/common/BitMatrix;
    move/from16 v1, p1

    .local v1, "tryHarder":Z
    move-object v10, v0

    invoke-virtual {v10}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v10

    move v2, v10

    .line 141
    .local v2, "height":I
    move-object v10, v0

    invoke-virtual {v10}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v10

    move v3, v10

    .line 143
    .local v3, "width":I
    const/16 v10, 0x8

    new-array v10, v10, [Lcom/google/zxing/ResultPoint;

    move-object v4, v10

    .line 144
    .local v4, "result":[Lcom/google/zxing/ResultPoint;
    const/4 v10, 0x0

    move v5, v10

    .line 146
    .local v5, "found":Z
    sget-object v10, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN:[I

    array-length v10, v10

    new-array v10, v10, [I

    move-object v6, v10

    .line 148
    .local v6, "counters":[I
    const/4 v10, 0x1

    move v11, v2

    move v12, v1

    if-eqz v12, :cond_4

    const/16 v12, 0x9

    :goto_0
    shr-int/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    move v7, v10

    .line 151
    .local v7, "rowStep":I
    const/4 v10, 0x0

    move v8, v10

    .local v8, "i":I
    :goto_1
    move v10, v8

    move v11, v2

    if-ge v10, v11, :cond_0

    .line 152
    move-object v10, v0

    const/4 v11, 0x0

    move v12, v8

    move v13, v3

    const/4 v14, 0x0

    sget-object v15, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN:[I

    move-object/from16 v16, v6

    invoke-static/range {v10 .. v16}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v10

    move-object v9, v10

    .line 153
    .local v9, "loc":[I
    move-object v10, v9

    if-eqz v10, :cond_5

    .line 154
    move-object v10, v4

    const/4 v11, 0x0

    new-instance v12, Lcom/google/zxing/ResultPoint;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v9

    const/4 v15, 0x0

    aget v14, v14, v15

    int-to-float v14, v14

    move v15, v8

    int-to-float v15, v15

    invoke-direct {v13, v14, v15}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v12, v10, v11

    .line 155
    move-object v10, v4

    const/4 v11, 0x4

    new-instance v12, Lcom/google/zxing/ResultPoint;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v9

    const/4 v15, 0x1

    aget v14, v14, v15

    int-to-float v14, v14

    move v15, v8

    int-to-float v15, v15

    invoke-direct {v13, v14, v15}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v12, v10, v11

    .line 156
    const/4 v10, 0x1

    move v5, v10

    .line 161
    .end local v9    # "loc":[I
    :cond_0
    move v10, v5

    if-eqz v10, :cond_1

    .line 162
    const/4 v10, 0x0

    move v5, v10

    .line 163
    move v10, v2

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move v8, v10

    :goto_2
    move v10, v8

    if-lez v10, :cond_1

    .line 164
    move-object v10, v0

    const/4 v11, 0x0

    move v12, v8

    move v13, v3

    const/4 v14, 0x0

    sget-object v15, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN:[I

    move-object/from16 v16, v6

    invoke-static/range {v10 .. v16}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v10

    move-object v9, v10

    .line 165
    .restart local v9    # "loc":[I
    move-object v10, v9

    if-eqz v10, :cond_6

    .line 166
    move-object v10, v4

    const/4 v11, 0x1

    new-instance v12, Lcom/google/zxing/ResultPoint;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v9

    const/4 v15, 0x0

    aget v14, v14, v15

    int-to-float v14, v14

    move v15, v8

    int-to-float v15, v15

    invoke-direct {v13, v14, v15}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v12, v10, v11

    .line 167
    move-object v10, v4

    const/4 v11, 0x5

    new-instance v12, Lcom/google/zxing/ResultPoint;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v9

    const/4 v15, 0x1

    aget v14, v14, v15

    int-to-float v14, v14

    move v15, v8

    int-to-float v15, v15

    invoke-direct {v13, v14, v15}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v12, v10, v11

    .line 168
    const/4 v10, 0x1

    move v5, v10

    .line 174
    .end local v9    # "loc":[I
    :cond_1
    sget-object v10, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN:[I

    array-length v10, v10

    new-array v10, v10, [I

    move-object v6, v10

    .line 177
    move v10, v5

    if-eqz v10, :cond_2

    .line 178
    const/4 v10, 0x0

    move v5, v10

    .line 179
    const/4 v10, 0x0

    move v8, v10

    :goto_3
    move v10, v8

    move v11, v2

    if-ge v10, v11, :cond_2

    .line 180
    move-object v10, v0

    const/4 v11, 0x0

    move v12, v8

    move v13, v3

    const/4 v14, 0x0

    sget-object v15, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN:[I

    move-object/from16 v16, v6

    invoke-static/range {v10 .. v16}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v10

    move-object v9, v10

    .line 181
    .restart local v9    # "loc":[I
    move-object v10, v9

    if-eqz v10, :cond_7

    .line 182
    move-object v10, v4

    const/4 v11, 0x2

    new-instance v12, Lcom/google/zxing/ResultPoint;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v9

    const/4 v15, 0x1

    aget v14, v14, v15

    int-to-float v14, v14

    move v15, v8

    int-to-float v15, v15

    invoke-direct {v13, v14, v15}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v12, v10, v11

    .line 183
    move-object v10, v4

    const/4 v11, 0x6

    new-instance v12, Lcom/google/zxing/ResultPoint;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v9

    const/4 v15, 0x0

    aget v14, v14, v15

    int-to-float v14, v14

    move v15, v8

    int-to-float v15, v15

    invoke-direct {v13, v14, v15}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v12, v10, v11

    .line 184
    const/4 v10, 0x1

    move v5, v10

    .line 190
    .end local v9    # "loc":[I
    :cond_2
    move v10, v5

    if-eqz v10, :cond_3

    .line 191
    const/4 v10, 0x0

    move v5, v10

    .line 192
    move v10, v2

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move v8, v10

    :goto_4
    move v10, v8

    if-lez v10, :cond_3

    .line 193
    move-object v10, v0

    const/4 v11, 0x0

    move v12, v8

    move v13, v3

    const/4 v14, 0x0

    sget-object v15, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN:[I

    move-object/from16 v16, v6

    invoke-static/range {v10 .. v16}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v10

    move-object v9, v10

    .line 194
    .restart local v9    # "loc":[I
    move-object v10, v9

    if-eqz v10, :cond_8

    .line 195
    move-object v10, v4

    const/4 v11, 0x3

    new-instance v12, Lcom/google/zxing/ResultPoint;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v9

    const/4 v15, 0x1

    aget v14, v14, v15

    int-to-float v14, v14

    move v15, v8

    int-to-float v15, v15

    invoke-direct {v13, v14, v15}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v12, v10, v11

    .line 196
    move-object v10, v4

    const/4 v11, 0x7

    new-instance v12, Lcom/google/zxing/ResultPoint;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v9

    const/4 v15, 0x0

    aget v14, v14, v15

    int-to-float v14, v14

    move v15, v8

    int-to-float v15, v15

    invoke-direct {v13, v14, v15}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v12, v10, v11

    .line 197
    const/4 v10, 0x1

    move v5, v10

    .line 202
    .end local v9    # "loc":[I
    :cond_3
    move v10, v5

    if-eqz v10, :cond_9

    move-object v10, v4

    :goto_5
    move-object v0, v10

    .end local v0    # "matrix":Lcom/google/zxing/common/BitMatrix;
    return-object v0

    .line 148
    .end local v7    # "rowStep":I
    .end local v8    # "i":I
    .restart local v0    # "matrix":Lcom/google/zxing/common/BitMatrix;
    :cond_4
    const/4 v12, 0x7

    goto/16 :goto_0

    .line 151
    .restart local v7    # "rowStep":I
    .restart local v8    # "i":I
    .restart local v9    # "loc":[I
    :cond_5
    move v10, v8

    move v11, v7

    add-int/2addr v10, v11

    move v8, v10

    goto/16 :goto_1

    .line 163
    :cond_6
    move v10, v8

    move v11, v7

    sub-int/2addr v10, v11

    move v8, v10

    goto/16 :goto_2

    .line 179
    :cond_7
    move v10, v8

    move v11, v7

    add-int/2addr v10, v11

    move v8, v10

    goto/16 :goto_3

    .line 192
    :cond_8
    move v10, v8

    move v11, v7

    sub-int/2addr v10, v11

    move v8, v10

    goto :goto_4

    .line 202
    .end local v9    # "loc":[I
    :cond_9
    const/4 v10, 0x0

    goto :goto_5
.end method

.method private static findVertices180(Lcom/google/zxing/common/BitMatrix;Z)[Lcom/google/zxing/ResultPoint;
    .locals 20

    .prologue
    .line 224
    move-object/from16 v1, p0

    .local v1, "matrix":Lcom/google/zxing/common/BitMatrix;
    move/from16 v2, p1

    .local v2, "tryHarder":Z
    move-object v12, v1

    invoke-virtual {v12}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v12

    move v3, v12

    .line 225
    .local v3, "height":I
    move-object v12, v1

    invoke-virtual {v12}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v12

    move v4, v12

    .line 226
    .local v4, "width":I
    move v12, v4

    const/4 v13, 0x1

    shr-int/lit8 v12, v12, 0x1

    move v5, v12

    .line 228
    .local v5, "halfWidth":I
    const/16 v12, 0x8

    new-array v12, v12, [Lcom/google/zxing/ResultPoint;

    move-object v6, v12

    .line 229
    .local v6, "result":[Lcom/google/zxing/ResultPoint;
    const/4 v12, 0x0

    move v7, v12

    .line 231
    .local v7, "found":Z
    sget-object v12, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN_REVERSE:[I

    array-length v12, v12

    new-array v12, v12, [I

    move-object v8, v12

    .line 233
    .local v8, "counters":[I
    const/4 v12, 0x1

    move v13, v3

    move v14, v2

    if-eqz v14, :cond_4

    const/16 v14, 0x9

    :goto_0
    shr-int/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    move v9, v12

    .line 236
    .local v9, "rowStep":I
    move v12, v3

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v10, v12

    .local v10, "i":I
    :goto_1
    move v12, v10

    if-lez v12, :cond_0

    .line 237
    move-object v12, v1

    move v13, v5

    move v14, v10

    move v15, v5

    const/16 v16, 0x1

    sget-object v17, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN_REVERSE:[I

    move-object/from16 v18, v8

    invoke-static/range {v12 .. v18}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v12

    move-object v11, v12

    .line 238
    .local v11, "loc":[I
    move-object v12, v11

    if-eqz v12, :cond_5

    .line 239
    move-object v12, v6

    const/4 v13, 0x0

    new-instance v14, Lcom/google/zxing/ResultPoint;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object/from16 v16, v11

    const/16 v17, 0x1

    aget v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v17, v10

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v14, v12, v13

    .line 240
    move-object v12, v6

    const/4 v13, 0x4

    new-instance v14, Lcom/google/zxing/ResultPoint;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object/from16 v16, v11

    const/16 v17, 0x0

    aget v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v17, v10

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v14, v12, v13

    .line 241
    const/4 v12, 0x1

    move v7, v12

    .line 246
    .end local v11    # "loc":[I
    :cond_0
    move v12, v7

    if-eqz v12, :cond_1

    .line 247
    const/4 v12, 0x0

    move v7, v12

    .line 248
    const/4 v12, 0x0

    move v10, v12

    :goto_2
    move v12, v10

    move v13, v3

    if-ge v12, v13, :cond_1

    .line 249
    move-object v12, v1

    move v13, v5

    move v14, v10

    move v15, v5

    const/16 v16, 0x1

    sget-object v17, Lcom/google/zxing/pdf417/detector/Detector;->START_PATTERN_REVERSE:[I

    move-object/from16 v18, v8

    invoke-static/range {v12 .. v18}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v12

    move-object v11, v12

    .line 250
    .restart local v11    # "loc":[I
    move-object v12, v11

    if-eqz v12, :cond_6

    .line 251
    move-object v12, v6

    const/4 v13, 0x1

    new-instance v14, Lcom/google/zxing/ResultPoint;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object/from16 v16, v11

    const/16 v17, 0x1

    aget v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v17, v10

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v14, v12, v13

    .line 252
    move-object v12, v6

    const/4 v13, 0x5

    new-instance v14, Lcom/google/zxing/ResultPoint;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object/from16 v16, v11

    const/16 v17, 0x0

    aget v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v17, v10

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v14, v12, v13

    .line 253
    const/4 v12, 0x1

    move v7, v12

    .line 259
    .end local v11    # "loc":[I
    :cond_1
    sget-object v12, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN_REVERSE:[I

    array-length v12, v12

    new-array v12, v12, [I

    move-object v8, v12

    .line 262
    move v12, v7

    if-eqz v12, :cond_2

    .line 263
    const/4 v12, 0x0

    move v7, v12

    .line 264
    move v12, v3

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    move v10, v12

    :goto_3
    move v12, v10

    if-lez v12, :cond_2

    .line 265
    move-object v12, v1

    const/4 v13, 0x0

    move v14, v10

    move v15, v5

    const/16 v16, 0x0

    sget-object v17, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN_REVERSE:[I

    move-object/from16 v18, v8

    invoke-static/range {v12 .. v18}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v12

    move-object v11, v12

    .line 266
    .restart local v11    # "loc":[I
    move-object v12, v11

    if-eqz v12, :cond_7

    .line 267
    move-object v12, v6

    const/4 v13, 0x2

    new-instance v14, Lcom/google/zxing/ResultPoint;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object/from16 v16, v11

    const/16 v17, 0x0

    aget v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v17, v10

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v14, v12, v13

    .line 268
    move-object v12, v6

    const/4 v13, 0x6

    new-instance v14, Lcom/google/zxing/ResultPoint;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object/from16 v16, v11

    const/16 v17, 0x1

    aget v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v17, v10

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v14, v12, v13

    .line 269
    const/4 v12, 0x1

    move v7, v12

    .line 275
    .end local v11    # "loc":[I
    :cond_2
    move v12, v7

    if-eqz v12, :cond_3

    .line 276
    const/4 v12, 0x0

    move v7, v12

    .line 277
    const/4 v12, 0x0

    move v10, v12

    :goto_4
    move v12, v10

    move v13, v3

    if-ge v12, v13, :cond_3

    .line 278
    move-object v12, v1

    const/4 v13, 0x0

    move v14, v10

    move v15, v5

    const/16 v16, 0x0

    sget-object v17, Lcom/google/zxing/pdf417/detector/Detector;->STOP_PATTERN_REVERSE:[I

    move-object/from16 v18, v8

    invoke-static/range {v12 .. v18}, Lcom/google/zxing/pdf417/detector/Detector;->findGuardPattern(Lcom/google/zxing/common/BitMatrix;IIIZ[I[I)[I

    move-result-object v12

    move-object v11, v12

    .line 279
    .restart local v11    # "loc":[I
    move-object v12, v11

    if-eqz v12, :cond_8

    .line 280
    move-object v12, v6

    const/4 v13, 0x3

    new-instance v14, Lcom/google/zxing/ResultPoint;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object/from16 v16, v11

    const/16 v17, 0x0

    aget v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v17, v10

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v14, v12, v13

    .line 281
    move-object v12, v6

    const/4 v13, 0x7

    new-instance v14, Lcom/google/zxing/ResultPoint;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    move-object/from16 v16, v11

    const/16 v17, 0x1

    aget v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move/from16 v17, v10

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v14, v12, v13

    .line 282
    const/4 v12, 0x1

    move v7, v12

    .line 287
    .end local v11    # "loc":[I
    :cond_3
    move v12, v7

    if-eqz v12, :cond_9

    move-object v12, v6

    :goto_5
    move-object v1, v12

    .end local v1    # "matrix":Lcom/google/zxing/common/BitMatrix;
    return-object v1

    .line 233
    .end local v9    # "rowStep":I
    .end local v10    # "i":I
    .restart local v1    # "matrix":Lcom/google/zxing/common/BitMatrix;
    :cond_4
    const/4 v14, 0x7

    goto/16 :goto_0

    .line 236
    .restart local v9    # "rowStep":I
    .restart local v10    # "i":I
    .restart local v11    # "loc":[I
    :cond_5
    move v12, v10

    move v13, v9

    sub-int/2addr v12, v13

    move v10, v12

    goto/16 :goto_1

    .line 248
    :cond_6
    move v12, v10

    move v13, v9

    add-int/2addr v12, v13

    move v10, v12

    goto/16 :goto_2

    .line 264
    :cond_7
    move v12, v10

    move v13, v9

    sub-int/2addr v12, v13

    move v10, v12

    goto/16 :goto_3

    .line 277
    :cond_8
    move v12, v10

    move v13, v9

    add-int/2addr v12, v13

    move v10, v12

    goto :goto_4

    .line 287
    .end local v11    # "loc":[I
    :cond_9
    const/4 v12, 0x0

    goto :goto_5
.end method

.method private static patternMatchVariance([I[II)I
    .locals 15

    .prologue
    .line 522
    move-object v0, p0

    .local v0, "counters":[I
    move-object/from16 v1, p1

    .local v1, "pattern":[I
    move/from16 v2, p2

    .local v2, "maxIndividualVariance":I
    move-object v12, v0

    array-length v12, v12

    move v3, v12

    .line 523
    .local v3, "numCounters":I
    const/4 v12, 0x0

    move v4, v12

    .line 524
    .local v4, "total":I
    const/4 v12, 0x0

    move v5, v12

    .line 525
    .local v5, "patternLength":I
    const/4 v12, 0x0

    move v6, v12

    .local v6, "i":I
    :goto_0
    move v12, v6

    move v13, v3

    if-ge v12, v13, :cond_0

    .line 526
    move v12, v4

    move-object v13, v0

    move v14, v6

    aget v13, v13, v14

    add-int/2addr v12, v13

    move v4, v12

    .line 527
    move v12, v5

    move-object v13, v1

    move v14, v6

    aget v13, v13, v14

    add-int/2addr v12, v13

    move v5, v12

    .line 525
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 529
    :cond_0
    move v12, v4

    move v13, v5

    if-ge v12, v13, :cond_1

    .line 532
    const v12, 0x7fffffff

    move v0, v12

    .line 550
    .end local v0    # "counters":[I
    .end local v6    # "i":I
    :goto_1
    return v0

    .line 537
    .restart local v0    # "counters":[I
    .restart local v6    # "i":I
    :cond_1
    move v12, v4

    const/16 v13, 0x8

    shl-int/lit8 v12, v12, 0x8

    move v13, v5

    div-int/2addr v12, v13

    move v6, v12

    .line 538
    .local v6, "unitBarWidth":I
    move v12, v2

    move v13, v6

    mul-int/2addr v12, v13

    const/16 v13, 0x8

    shr-int/lit8 v12, v12, 0x8

    move v2, v12

    .line 540
    const/4 v12, 0x0

    move v7, v12

    .line 541
    .local v7, "totalVariance":I
    const/4 v12, 0x0

    move v8, v12

    .local v8, "x":I
    :goto_2
    move v12, v8

    move v13, v3

    if-ge v12, v13, :cond_4

    .line 542
    move-object v12, v0

    move v13, v8

    aget v12, v12, v13

    const/16 v13, 0x8

    shl-int/lit8 v12, v12, 0x8

    move v9, v12

    .line 543
    .local v9, "counter":I
    move-object v12, v1

    move v13, v8

    aget v12, v12, v13

    move v13, v6

    mul-int/2addr v12, v13

    move v10, v12

    .line 544
    .local v10, "scaledPattern":I
    move v12, v9

    move v13, v10

    if-le v12, v13, :cond_2

    move v12, v9

    move v13, v10

    sub-int/2addr v12, v13

    :goto_3
    move v11, v12

    .line 545
    .local v11, "variance":I
    move v12, v11

    move v13, v2

    if-le v12, v13, :cond_3

    .line 546
    const v12, 0x7fffffff

    move v0, v12

    goto :goto_1

    .line 544
    .end local v11    # "variance":I
    :cond_2
    move v12, v10

    move v13, v9

    sub-int/2addr v12, v13

    goto :goto_3

    .line 548
    .restart local v11    # "variance":I
    :cond_3
    move v12, v7

    move v13, v11

    add-int/2addr v12, v13

    move v7, v12

    .line 541
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 550
    .end local v9    # "counter":I
    .end local v10    # "scaledPattern":I
    .end local v11    # "variance":I
    :cond_4
    move v12, v7

    move v13, v4

    div-int/2addr v12, v13

    move v0, v12

    goto :goto_1
.end method

.method private static sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/common/BitMatrix;
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 436
    move-object/from16 v1, p0

    .local v1, "matrix":Lcom/google/zxing/common/BitMatrix;
    move-object/from16 v2, p1

    .local v2, "topLeft":Lcom/google/zxing/ResultPoint;
    move-object/from16 v3, p2

    .local v3, "bottomLeft":Lcom/google/zxing/ResultPoint;
    move-object/from16 v4, p3

    .local v4, "topRight":Lcom/google/zxing/ResultPoint;
    move-object/from16 v5, p4

    .local v5, "bottomRight":Lcom/google/zxing/ResultPoint;
    move/from16 v6, p5

    .local v6, "xdimension":I
    move/from16 v7, p6

    .local v7, "ydimension":I
    invoke-static {}, Lcom/google/zxing/common/GridSampler;->getInstance()Lcom/google/zxing/common/GridSampler;

    move-result-object v9

    move-object v8, v9

    .line 438
    .local v8, "sampler":Lcom/google/zxing/common/GridSampler;
    move-object v9, v8

    move-object v10, v1

    move v11, v6

    move v12, v7

    const/4 v13, 0x0

    const/4 v14, 0x0

    move v15, v6

    int-to-float v15, v15

    const/16 v16, 0x0

    move/from16 v17, v6

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v18, v7

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v20, v7

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v21

    move-object/from16 v22, v2

    invoke-virtual/range {v22 .. v22}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v22

    move-object/from16 v23, v4

    invoke-virtual/range {v23 .. v23}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v23

    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v24

    move-object/from16 v25, v5

    invoke-virtual/range {v25 .. v25}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v25

    move-object/from16 v26, v5

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

    .end local v1    # "matrix":Lcom/google/zxing/common/BitMatrix;
    return-object v1
.end method


# virtual methods
.method public detect()Lcom/google/zxing/common/DetectorResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/detector/Detector;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/zxing/pdf417/detector/Detector;->detect(Ljava/util/Map;)Lcom/google/zxing/common/DetectorResult;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/pdf417/detector/Detector;
    return-object v0
.end method

.method public detect(Ljava/util/Map;)Lcom/google/zxing/common/DetectorResult;
    .locals 18
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
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 85
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/detector/Detector;
    move-object/from16 v1, p1

    .local v1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object v9, v0

    iget-object v9, v9, Lcom/google/zxing/pdf417/detector/Detector;->image:Lcom/google/zxing/BinaryBitmap;

    invoke-virtual {v9}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v9

    move-object v2, v9

    .line 87
    .local v2, "matrix":Lcom/google/zxing/common/BitMatrix;
    move-object v9, v1

    if-eqz v9, :cond_1

    move-object v9, v1

    sget-object v10, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v9, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    :goto_0
    move v3, v9

    .line 90
    .local v3, "tryHarder":Z
    move-object v9, v2

    move v10, v3

    invoke-static {v9, v10}, Lcom/google/zxing/pdf417/detector/Detector;->findVertices(Lcom/google/zxing/common/BitMatrix;Z)[Lcom/google/zxing/ResultPoint;

    move-result-object v9

    move-object v4, v9

    .line 91
    .local v4, "vertices":[Lcom/google/zxing/ResultPoint;
    move-object v9, v4

    if-nez v9, :cond_2

    .line 93
    move-object v9, v2

    move v10, v3

    invoke-static {v9, v10}, Lcom/google/zxing/pdf417/detector/Detector;->findVertices180(Lcom/google/zxing/common/BitMatrix;Z)[Lcom/google/zxing/ResultPoint;

    move-result-object v9

    move-object v4, v9

    .line 94
    move-object v9, v4

    if-eqz v9, :cond_0

    .line 95
    move-object v9, v4

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/google/zxing/pdf417/detector/Detector;->correctCodeWordVertices([Lcom/google/zxing/ResultPoint;Z)V

    .line 101
    :cond_0
    :goto_1
    move-object v9, v4

    if-nez v9, :cond_3

    .line 102
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 87
    .end local v3    # "tryHarder":Z
    .end local v4    # "vertices":[Lcom/google/zxing/ResultPoint;
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 98
    .restart local v3    # "tryHarder":Z
    .restart local v4    # "vertices":[Lcom/google/zxing/ResultPoint;
    :cond_2
    move-object v9, v4

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/google/zxing/pdf417/detector/Detector;->correctCodeWordVertices([Lcom/google/zxing/ResultPoint;Z)V

    goto :goto_1

    .line 105
    :cond_3
    move-object v9, v4

    invoke-static {v9}, Lcom/google/zxing/pdf417/detector/Detector;->computeModuleWidth([Lcom/google/zxing/ResultPoint;)F

    move-result v9

    move v5, v9

    .line 106
    .local v5, "moduleWidth":F
    move v9, v5

    const/high16 v10, 0x3f800000    # 1.0f

    cmpg-float v9, v9, v10

    if-gez v9, :cond_4

    .line 107
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 110
    :cond_4
    move-object v9, v4

    const/4 v10, 0x4

    aget-object v9, v9, v10

    move-object v10, v4

    const/4 v11, 0x6

    aget-object v10, v10, v11

    move-object v11, v4

    const/4 v12, 0x5

    aget-object v11, v11, v12

    move-object v12, v4

    const/4 v13, 0x7

    aget-object v12, v12, v13

    move v13, v5

    invoke-static {v9, v10, v11, v12, v13}, Lcom/google/zxing/pdf417/detector/Detector;->computeDimension(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;F)I

    move-result v9

    move v6, v9

    .line 112
    .local v6, "dimension":I
    move v9, v6

    const/4 v10, 0x1

    if-ge v9, v10, :cond_5

    .line 113
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 116
    :cond_5
    move-object v9, v4

    const/4 v10, 0x4

    aget-object v9, v9, v10

    move-object v10, v4

    const/4 v11, 0x6

    aget-object v10, v10, v11

    move-object v11, v4

    const/4 v12, 0x5

    aget-object v11, v11, v12

    move-object v12, v4

    const/4 v13, 0x7

    aget-object v12, v12, v13

    move v13, v5

    invoke-static {v9, v10, v11, v12, v13}, Lcom/google/zxing/pdf417/detector/Detector;->computeYDimension(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;F)I

    move-result v9

    move v7, v9

    .line 117
    .local v7, "ydimension":I
    move v9, v7

    move v10, v6

    if-le v9, v10, :cond_6

    move v9, v7

    :goto_2
    move v7, v9

    .line 120
    move-object v9, v2

    move-object v10, v4

    const/4 v11, 0x4

    aget-object v10, v10, v11

    move-object v11, v4

    const/4 v12, 0x5

    aget-object v11, v11, v12

    move-object v12, v4

    const/4 v13, 0x6

    aget-object v12, v12, v13

    move-object v13, v4

    const/4 v14, 0x7

    aget-object v13, v13, v14

    move v14, v6

    move v15, v7

    invoke-static/range {v9 .. v15}, Lcom/google/zxing/pdf417/detector/Detector;->sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object v9

    move-object v8, v9

    .line 121
    .local v8, "bits":Lcom/google/zxing/common/BitMatrix;
    new-instance v9, Lcom/google/zxing/common/DetectorResult;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    move-object v11, v8

    const/4 v12, 0x4

    new-array v12, v12, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/4 v14, 0x0

    move-object v15, v4

    const/16 v16, 0x5

    aget-object v15, v15, v16

    aput-object v15, v13, v14

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/4 v14, 0x1

    move-object v15, v4

    const/16 v16, 0x4

    aget-object v15, v15, v16

    aput-object v15, v13, v14

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/4 v14, 0x2

    move-object v15, v4

    const/16 v16, 0x6

    aget-object v15, v15, v16

    aput-object v15, v13, v14

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/4 v14, 0x3

    move-object v15, v4

    const/16 v16, 0x7

    aget-object v15, v15, v16

    aput-object v15, v13, v14

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/common/DetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;)V

    move-object v0, v9

    .end local v0    # "this":Lcom/google/zxing/pdf417/detector/Detector;
    return-object v0

    .line 117
    .end local v8    # "bits":Lcom/google/zxing/common/BitMatrix;
    .restart local v0    # "this":Lcom/google/zxing/pdf417/detector/Detector;
    :cond_6
    move v9, v6

    goto :goto_2
.end method
