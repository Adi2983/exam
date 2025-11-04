.class public final Lcom/google/zxing/common/detector/MonochromeRectangleDetector;
.super Ljava/lang/Object;
.source "MonochromeRectangleDetector.java"


# static fields
.field private static final MAX_MODULES:I = 0x20


# instance fields
.field private final image:Lcom/google/zxing/common/BitMatrix;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 4

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/detector/MonochromeRectangleDetector;
    move-object v1, p1

    .local v1, "image":Lcom/google/zxing/common/BitMatrix;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 37
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 38
    return-void
.end method

.method private blackWhiteRange(IIIIZ)[I
    .locals 16

    .prologue
    .line 170
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/common/detector/MonochromeRectangleDetector;
    move/from16 v1, p1

    .local v1, "fixedDimension":I
    move/from16 v2, p2

    .local v2, "maxWhiteRun":I
    move/from16 v3, p3

    .local v3, "minDim":I
    move/from16 v4, p4

    .local v4, "maxDim":I
    move/from16 v5, p5

    .local v5, "horizontal":Z
    move v11, v3

    move v12, v4

    add-int/2addr v11, v12

    const/4 v12, 0x1

    shr-int/lit8 v11, v11, 0x1

    move v6, v11

    .line 173
    .local v6, "center":I
    move v11, v6

    move v7, v11

    .line 174
    .local v7, "start":I
    :goto_0
    move v11, v7

    move v12, v3

    if-lt v11, v12, :cond_6

    .line 175
    move v11, v5

    if-eqz v11, :cond_1

    move-object v11, v0

    iget-object v11, v11, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    move v12, v7

    move v13, v1

    invoke-virtual {v11, v12, v13}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 176
    :cond_0
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 175
    :cond_1
    move-object v11, v0

    iget-object v11, v11, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    move v12, v1

    move v13, v7

    invoke-virtual {v11, v12, v13}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    if-nez v11, :cond_0

    .line 178
    :cond_2
    move v11, v7

    move v8, v11

    .line 180
    .local v8, "whiteRunStart":I
    :cond_3
    add-int/lit8 v7, v7, -0x1

    .line 181
    move v11, v7

    move v12, v3

    if-lt v11, v12, :cond_4

    move v11, v5

    if-eqz v11, :cond_8

    move-object v11, v0

    iget-object v11, v11, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    move v12, v7

    move v13, v1

    invoke-virtual {v11, v12, v13}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 183
    :cond_4
    :goto_1
    move v11, v8

    move v12, v7

    sub-int/2addr v11, v12

    move v9, v11

    .line 184
    .local v9, "whiteRunSize":I
    move v11, v7

    move v12, v3

    if-lt v11, v12, :cond_5

    move v11, v9

    move v12, v2

    if-le v11, v12, :cond_9

    .line 185
    :cond_5
    move v11, v8

    move v7, v11

    .line 190
    .end local v8    # "whiteRunStart":I
    .end local v9    # "whiteRunSize":I
    :cond_6
    add-int/lit8 v7, v7, 0x1

    .line 193
    move v11, v6

    move v8, v11

    .line 194
    .local v8, "end":I
    :goto_2
    move v11, v8

    move v12, v4

    if-ge v11, v12, :cond_f

    .line 195
    move v11, v5

    if-eqz v11, :cond_a

    move-object v11, v0

    iget-object v11, v11, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    move v12, v8

    move v13, v1

    invoke-virtual {v11, v12, v13}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 196
    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 181
    .local v8, "whiteRunStart":I
    :cond_8
    move-object v11, v0

    iget-object v11, v11, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    move v12, v1

    move v13, v7

    invoke-virtual {v11, v12, v13}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_1

    .line 188
    .restart local v9    # "whiteRunSize":I
    :cond_9
    goto :goto_0

    .line 195
    .end local v9    # "whiteRunSize":I
    .local v8, "end":I
    :cond_a
    move-object v11, v0

    iget-object v11, v11, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    move v12, v1

    move v13, v8

    invoke-virtual {v11, v12, v13}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    if-nez v11, :cond_7

    .line 198
    :cond_b
    move v11, v8

    move v9, v11

    .line 200
    .local v9, "whiteRunStart":I
    :cond_c
    add-int/lit8 v8, v8, 0x1

    .line 201
    move v11, v8

    move v12, v4

    if-ge v11, v12, :cond_d

    move v11, v5

    if-eqz v11, :cond_10

    move-object v11, v0

    iget-object v11, v11, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    move v12, v8

    move v13, v1

    invoke-virtual {v11, v12, v13}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 203
    :cond_d
    :goto_3
    move v11, v8

    move v12, v9

    sub-int/2addr v11, v12

    move v10, v11

    .line 204
    .local v10, "whiteRunSize":I
    move v11, v8

    move v12, v4

    if-ge v11, v12, :cond_e

    move v11, v10

    move v12, v2

    if-le v11, v12, :cond_11

    .line 205
    :cond_e
    move v11, v9

    move v8, v11

    .line 210
    .end local v9    # "whiteRunStart":I
    .end local v10    # "whiteRunSize":I
    :cond_f
    add-int/lit8 v8, v8, -0x1

    .line 212
    move v11, v8

    move v12, v7

    if-le v11, v12, :cond_12

    const/4 v11, 0x2

    new-array v11, v11, [I

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    move v14, v7

    aput v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x1

    move v14, v8

    aput v14, v12, v13

    :goto_4
    move-object v0, v11

    .end local v0    # "this":Lcom/google/zxing/common/detector/MonochromeRectangleDetector;
    return-object v0

    .line 201
    .restart local v0    # "this":Lcom/google/zxing/common/detector/MonochromeRectangleDetector;
    .restart local v9    # "whiteRunStart":I
    :cond_10
    move-object v11, v0

    iget-object v11, v11, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    move v12, v1

    move v13, v8

    invoke-virtual {v11, v12, v13}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    if-eqz v11, :cond_c

    goto :goto_3

    .line 208
    .restart local v10    # "whiteRunSize":I
    :cond_11
    goto :goto_2

    .line 212
    .end local v9    # "whiteRunStart":I
    .end local v10    # "whiteRunSize":I
    :cond_12
    const/4 v11, 0x0

    goto :goto_4
.end method

.method private findCornerFromCenter(IIIIIIIII)Lcom/google/zxing/ResultPoint;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 109
    move-object/from16 v2, p0

    .local v2, "this":Lcom/google/zxing/common/detector/MonochromeRectangleDetector;
    move/from16 v3, p1

    .local v3, "centerX":I
    move/from16 v4, p2

    .local v4, "deltaX":I
    move/from16 v5, p3

    .local v5, "left":I
    move/from16 v6, p4

    .local v6, "right":I
    move/from16 v7, p5

    .local v7, "centerY":I
    move/from16 v8, p6

    .local v8, "deltaY":I
    move/from16 v9, p7

    .local v9, "top":I
    move/from16 v10, p8

    .local v10, "bottom":I
    move/from16 v11, p9

    .local v11, "maxWhiteRun":I
    const/16 v17, 0x0

    move-object/from16 v12, v17

    .line 110
    .local v12, "lastRange":[I
    move/from16 v17, v7

    move/from16 v13, v17

    .local v13, "y":I
    move/from16 v17, v3

    move/from16 v14, v17

    .line 111
    .local v14, "x":I
    :goto_0
    move/from16 v17, v13

    move/from16 v18, v10

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_a

    move/from16 v17, v13

    move/from16 v18, v9

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_a

    move/from16 v17, v14

    move/from16 v18, v6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_a

    move/from16 v17, v14

    move/from16 v18, v5

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_a

    .line 114
    move/from16 v17, v4

    if-nez v17, :cond_0

    .line 116
    move-object/from16 v17, v2

    move/from16 v18, v13

    move/from16 v19, v11

    move/from16 v20, v5

    move/from16 v21, v6

    const/16 v22, 0x1

    invoke-direct/range {v17 .. v22}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->blackWhiteRange(IIIIZ)[I

    move-result-object v17

    move-object/from16 v15, v17

    .line 121
    .local v15, "range":[I
    :goto_1
    move-object/from16 v17, v15

    if-nez v17, :cond_9

    .line 122
    move-object/from16 v17, v12

    if-nez v17, :cond_1

    .line 123
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v17

    throw v17

    .line 119
    .end local v15    # "range":[I
    :cond_0
    move-object/from16 v17, v2

    move/from16 v18, v14

    move/from16 v19, v11

    move/from16 v20, v9

    move/from16 v21, v10

    const/16 v22, 0x0

    invoke-direct/range {v17 .. v22}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->blackWhiteRange(IIIIZ)[I

    move-result-object v17

    move-object/from16 v15, v17

    .restart local v15    # "range":[I
    goto :goto_1

    .line 126
    :cond_1
    move/from16 v17, v4

    if-nez v17, :cond_5

    .line 127
    move/from16 v17, v13

    move/from16 v18, v8

    sub-int v17, v17, v18

    move/from16 v16, v17

    .line 128
    .local v16, "lastY":I
    move-object/from16 v17, v12

    const/16 v18, 0x0

    aget v17, v17, v18

    move/from16 v18, v3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    .line 129
    move-object/from16 v17, v12

    const/16 v18, 0x1

    aget v17, v17, v18

    move/from16 v18, v3

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_3

    .line 131
    new-instance v17, Lcom/google/zxing/ResultPoint;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    move/from16 v19, v8

    if-lez v19, :cond_2

    move-object/from16 v19, v12

    const/16 v20, 0x0

    aget v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    :goto_2
    move/from16 v20, v16

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-direct/range {v18 .. v20}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    move-object/from16 v2, v17

    .line 145
    .end local v2    # "this":Lcom/google/zxing/common/detector/MonochromeRectangleDetector;
    .end local v16    # "lastY":I
    :goto_3
    return-object v2

    .line 131
    .restart local v2    # "this":Lcom/google/zxing/common/detector/MonochromeRectangleDetector;
    .restart local v16    # "lastY":I
    :cond_2
    move-object/from16 v19, v12

    const/16 v20, 0x1

    aget v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    goto :goto_2

    .line 133
    :cond_3
    new-instance v17, Lcom/google/zxing/ResultPoint;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    move-object/from16 v19, v12

    const/16 v20, 0x0

    aget v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v20, v16

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-direct/range {v18 .. v20}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    move-object/from16 v2, v17

    goto :goto_3

    .line 135
    :cond_4
    new-instance v17, Lcom/google/zxing/ResultPoint;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    move-object/from16 v19, v12

    const/16 v20, 0x1

    aget v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v20, v16

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-direct/range {v18 .. v20}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    move-object/from16 v2, v17

    goto :goto_3

    .line 138
    .end local v16    # "lastY":I
    :cond_5
    move/from16 v17, v14

    move/from16 v18, v4

    sub-int v17, v17, v18

    move/from16 v16, v17

    .line 139
    .local v16, "lastX":I
    move-object/from16 v17, v12

    const/16 v18, 0x0

    aget v17, v17, v18

    move/from16 v18, v7

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_8

    .line 140
    move-object/from16 v17, v12

    const/16 v18, 0x1

    aget v17, v17, v18

    move/from16 v18, v7

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_7

    .line 141
    new-instance v17, Lcom/google/zxing/ResultPoint;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    move/from16 v19, v16

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v20, v4

    if-gez v20, :cond_6

    move-object/from16 v20, v12

    const/16 v21, 0x0

    aget v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    :goto_4
    invoke-direct/range {v18 .. v20}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    move-object/from16 v2, v17

    goto/16 :goto_3

    :cond_6
    move-object/from16 v20, v12

    const/16 v21, 0x1

    aget v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    goto :goto_4

    .line 143
    :cond_7
    new-instance v17, Lcom/google/zxing/ResultPoint;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    move/from16 v19, v16

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v20, v12

    const/16 v21, 0x0

    aget v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-direct/range {v18 .. v20}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    move-object/from16 v2, v17

    goto/16 :goto_3

    .line 145
    :cond_8
    new-instance v17, Lcom/google/zxing/ResultPoint;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    move/from16 v19, v16

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v20, v12

    const/16 v21, 0x1

    aget v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-direct/range {v18 .. v20}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    move-object/from16 v2, v17

    goto/16 :goto_3

    .line 149
    .end local v16    # "lastX":I
    :cond_9
    move-object/from16 v17, v15

    move-object/from16 v12, v17

    .line 112
    move/from16 v17, v13

    move/from16 v18, v8

    add-int v17, v17, v18

    move/from16 v13, v17

    move/from16 v17, v14

    move/from16 v18, v4

    add-int v17, v17, v18

    move/from16 v14, v17

    goto/16 :goto_0

    .line 151
    .end local v15    # "range":[I
    :cond_a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v17

    throw v17
.end method


# virtual methods
.method public detect()[Lcom/google/zxing/ResultPoint;
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 51
    move-object/from16 v1, p0

    .local v1, "this":Lcom/google/zxing/common/detector/MonochromeRectangleDetector;
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v16

    move/from16 v2, v16

    .line 52
    .local v2, "height":I
    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->image:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v16

    move/from16 v3, v16

    .line 53
    .local v3, "width":I
    move/from16 v16, v2

    const/16 v17, 0x1

    shr-int/lit8 v16, v16, 0x1

    move/from16 v4, v16

    .line 54
    .local v4, "halfHeight":I
    move/from16 v16, v3

    const/16 v17, 0x1

    shr-int/lit8 v16, v16, 0x1

    move/from16 v5, v16

    .line 55
    .local v5, "halfWidth":I
    const/16 v16, 0x1

    move/from16 v17, v2

    const/16 v18, 0x100

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0x100

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v16

    move/from16 v6, v16

    .line 56
    .local v6, "deltaY":I
    const/16 v16, 0x1

    move/from16 v17, v3

    const/16 v18, 0x100

    move/from16 v0, v17

    div-int/lit16 v0, v0, 0x100

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v16

    move/from16 v7, v16

    .line 58
    .local v7, "deltaX":I
    const/16 v16, 0x0

    move/from16 v8, v16

    .line 59
    .local v8, "top":I
    move/from16 v16, v2

    move/from16 v9, v16

    .line 60
    .local v9, "bottom":I
    const/16 v16, 0x0

    move/from16 v10, v16

    .line 61
    .local v10, "left":I
    move/from16 v16, v3

    move/from16 v11, v16

    .line 62
    .local v11, "right":I
    move-object/from16 v16, v1

    move/from16 v17, v5

    const/16 v18, 0x0

    move/from16 v19, v10

    move/from16 v20, v11

    move/from16 v21, v4

    move/from16 v22, v6

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v5

    const/16 v26, 0x1

    shr-int/lit8 v25, v25, 0x1

    invoke-direct/range {v16 .. v25}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/google/zxing/ResultPoint;

    move-result-object v16

    move-object/from16 v12, v16

    .line 64
    .local v12, "pointA":Lcom/google/zxing/ResultPoint;
    move-object/from16 v16, v12

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    move/from16 v8, v16

    .line 65
    move-object/from16 v16, v1

    move/from16 v17, v5

    move/from16 v18, v7

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    move/from16 v19, v10

    move/from16 v20, v11

    move/from16 v21, v4

    const/16 v22, 0x0

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v4

    const/16 v26, 0x1

    shr-int/lit8 v25, v25, 0x1

    invoke-direct/range {v16 .. v25}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/google/zxing/ResultPoint;

    move-result-object v16

    move-object/from16 v13, v16

    .line 67
    .local v13, "pointB":Lcom/google/zxing/ResultPoint;
    move-object/from16 v16, v13

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    move/from16 v10, v16

    .line 68
    move-object/from16 v16, v1

    move/from16 v17, v5

    move/from16 v18, v7

    move/from16 v19, v10

    move/from16 v20, v11

    move/from16 v21, v4

    const/16 v22, 0x0

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v4

    const/16 v26, 0x1

    shr-int/lit8 v25, v25, 0x1

    invoke-direct/range {v16 .. v25}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/google/zxing/ResultPoint;

    move-result-object v16

    move-object/from16 v14, v16

    .line 70
    .local v14, "pointC":Lcom/google/zxing/ResultPoint;
    move-object/from16 v16, v14

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    move/from16 v11, v16

    .line 71
    move-object/from16 v16, v1

    move/from16 v17, v5

    const/16 v18, 0x0

    move/from16 v19, v10

    move/from16 v20, v11

    move/from16 v21, v4

    move/from16 v22, v6

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v5

    const/16 v26, 0x1

    shr-int/lit8 v25, v25, 0x1

    invoke-direct/range {v16 .. v25}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/google/zxing/ResultPoint;

    move-result-object v16

    move-object/from16 v15, v16

    .line 73
    .local v15, "pointD":Lcom/google/zxing/ResultPoint;
    move-object/from16 v16, v15

    invoke-virtual/range {v16 .. v16}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    move/from16 v9, v16

    .line 76
    move-object/from16 v16, v1

    move/from16 v17, v5

    const/16 v18, 0x0

    move/from16 v19, v10

    move/from16 v20, v11

    move/from16 v21, v4

    move/from16 v22, v6

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v23, v8

    move/from16 v24, v9

    move/from16 v25, v5

    const/16 v26, 0x2

    shr-int/lit8 v25, v25, 0x2

    invoke-direct/range {v16 .. v25}, Lcom/google/zxing/common/detector/MonochromeRectangleDetector;->findCornerFromCenter(IIIIIIIII)Lcom/google/zxing/ResultPoint;

    move-result-object v16

    move-object/from16 v12, v16

    .line 79
    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v16, v0

    move-object/from16 v27, v16

    move-object/from16 v16, v27

    move-object/from16 v17, v27

    const/16 v18, 0x0

    move-object/from16 v19, v12

    aput-object v19, v17, v18

    move-object/from16 v27, v16

    move-object/from16 v16, v27

    move-object/from16 v17, v27

    const/16 v18, 0x1

    move-object/from16 v19, v13

    aput-object v19, v17, v18

    move-object/from16 v27, v16

    move-object/from16 v16, v27

    move-object/from16 v17, v27

    const/16 v18, 0x2

    move-object/from16 v19, v14

    aput-object v19, v17, v18

    move-object/from16 v27, v16

    move-object/from16 v16, v27

    move-object/from16 v17, v27

    const/16 v18, 0x3

    move-object/from16 v19, v15

    aput-object v19, v17, v18

    move-object/from16 v1, v16

    .end local v1    # "this":Lcom/google/zxing/common/detector/MonochromeRectangleDetector;
    return-object v1
.end method
