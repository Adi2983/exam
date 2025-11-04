.class final Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;
.super Ljava/lang/Object;
.source "AlignmentPatternFinder.java"


# instance fields
.field private final crossCheckStateCount:[I

.field private final height:I

.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private final moduleSize:F

.field private final possibleCenters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/qrcode/detector/AlignmentPattern;",
            ">;"
        }
    .end annotation
.end field

.field private final resultPointCallback:Lcom/google/zxing/ResultPointCallback;

.field private final startX:I

.field private final startY:I

.field private final width:I


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitMatrix;IIIIFLcom/google/zxing/ResultPointCallback;)V
    .locals 13

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;
    move-object v1, p1

    .local v1, "image":Lcom/google/zxing/common/BitMatrix;
    move v2, p2

    .local v2, "startX":I
    move/from16 v3, p3

    .local v3, "startY":I
    move/from16 v4, p4

    .local v4, "width":I
    move/from16 v5, p5

    .local v5, "height":I
    move/from16 v6, p6

    .local v6, "moduleSize":F
    move-object/from16 v7, p7

    .local v7, "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    move-object v8, v0

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 69
    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    .line 70
    move-object v8, v0

    new-instance v9, Ljava/util/ArrayList;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    const/4 v11, 0x5

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v9, v8, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->possibleCenters:Ljava/util/List;

    .line 71
    move-object v8, v0

    move v9, v2

    iput v9, v8, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->startX:I

    .line 72
    move-object v8, v0

    move v9, v3

    iput v9, v8, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->startY:I

    .line 73
    move-object v8, v0

    move v9, v4

    iput v9, v8, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->width:I

    .line 74
    move-object v8, v0

    move v9, v5

    iput v9, v8, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->height:I

    .line 75
    move-object v8, v0

    move v9, v6

    iput v9, v8, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->moduleSize:F

    .line 76
    move-object v8, v0

    const/4 v9, 0x3

    new-array v9, v9, [I

    iput-object v9, v8, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->crossCheckStateCount:[I

    .line 77
    move-object v8, v0

    move-object v9, v7

    iput-object v9, v8, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    .line 78
    return-void
.end method

.method private static centerFromEnd([II)F
    .locals 5

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "stateCount":[I
    move v1, p1

    .local v1, "end":I
    move v2, v1

    move-object v3, v0

    const/4 v4, 0x2

    aget v3, v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    move-object v3, v0

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    move v0, v2

    .end local v0    # "stateCount":[I
    return v0
.end method

.method private crossCheckVertical(IIII)F
    .locals 16

    .prologue
    .line 193
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;
    move/from16 v1, p1

    .local v1, "startI":I
    move/from16 v2, p2

    .local v2, "centerJ":I
    move/from16 v3, p3

    .local v3, "maxCount":I
    move/from16 v4, p4

    .local v4, "originalStateCountTotal":I
    move-object v10, v0

    iget-object v10, v10, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    move-object v5, v10

    .line 195
    .local v5, "image":Lcom/google/zxing/common/BitMatrix;
    move-object v10, v5

    invoke-virtual {v10}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v10

    move v6, v10

    .line 196
    .local v6, "maxI":I
    move-object v10, v0

    iget-object v10, v10, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->crossCheckStateCount:[I

    move-object v7, v10

    .line 197
    .local v7, "stateCount":[I
    move-object v10, v7

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    .line 198
    move-object v10, v7

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v10, v11

    .line 199
    move-object v10, v7

    const/4 v11, 0x2

    const/4 v12, 0x0

    aput v12, v10, v11

    .line 202
    move v10, v1

    move v8, v10

    .line 203
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

    move-object v10, v7

    const/4 v11, 0x1

    aget v10, v10, v11

    move v11, v3

    if-gt v10, v11, :cond_0

    .line 204
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

    .line 205
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 208
    :cond_0
    move v10, v8

    if-ltz v10, :cond_1

    move-object v10, v7

    const/4 v11, 0x1

    aget v10, v10, v11

    move v11, v3

    if-le v10, v11, :cond_2

    .line 209
    :cond_1
    const/high16 v10, 0x7fc00000    # Float.NaN

    move v0, v10

    .line 241
    .end local v0    # "this":Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;
    :goto_1
    return v0

    .line 211
    .restart local v0    # "this":Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;
    :cond_2
    :goto_2
    move v10, v8

    if-ltz v10, :cond_3

    move-object v10, v5

    move v11, v2

    move v12, v8

    invoke-virtual {v10, v11, v12}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    if-nez v10, :cond_3

    move-object v10, v7

    const/4 v11, 0x0

    aget v10, v10, v11

    move v11, v3

    if-gt v10, v11, :cond_3

    .line 212
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

    .line 213
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 215
    :cond_3
    move-object v10, v7

    const/4 v11, 0x0

    aget v10, v10, v11

    move v11, v3

    if-le v10, v11, :cond_4

    .line 216
    const/high16 v10, 0x7fc00000    # Float.NaN

    move v0, v10

    goto :goto_1

    .line 220
    :cond_4
    move v10, v1

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move v8, v10

    .line 221
    :goto_3
    move v10, v8

    move v11, v6

    if-ge v10, v11, :cond_5

    move-object v10, v5

    move v11, v2

    move v12, v8

    invoke-virtual {v10, v11, v12}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    if-eqz v10, :cond_5

    move-object v10, v7

    const/4 v11, 0x1

    aget v10, v10, v11

    move v11, v3

    if-gt v10, v11, :cond_5

    .line 222
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

    .line 223
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 225
    :cond_5
    move v10, v8

    move v11, v6

    if-eq v10, v11, :cond_6

    move-object v10, v7

    const/4 v11, 0x1

    aget v10, v10, v11

    move v11, v3

    if-le v10, v11, :cond_7

    .line 226
    :cond_6
    const/high16 v10, 0x7fc00000    # Float.NaN

    move v0, v10

    goto :goto_1

    .line 228
    :cond_7
    :goto_4
    move v10, v8

    move v11, v6

    if-ge v10, v11, :cond_8

    move-object v10, v5

    move v11, v2

    move v12, v8

    invoke-virtual {v10, v11, v12}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    if-nez v10, :cond_8

    move-object v10, v7

    const/4 v11, 0x2

    aget v10, v10, v11

    move v11, v3

    if-gt v10, v11, :cond_8

    .line 229
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

    .line 230
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 232
    :cond_8
    move-object v10, v7

    const/4 v11, 0x2

    aget v10, v10, v11

    move v11, v3

    if-le v10, v11, :cond_9

    .line 233
    const/high16 v10, 0x7fc00000    # Float.NaN

    move v0, v10

    goto/16 :goto_1

    .line 236
    :cond_9
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

    move v9, v10

    .line 237
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

    if-lt v10, v11, :cond_a

    .line 238
    const/high16 v10, 0x7fc00000    # Float.NaN

    move v0, v10

    goto/16 :goto_1

    .line 241
    :cond_a
    move-object v10, v0

    move-object v11, v7

    invoke-direct {v10, v11}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->foundPatternCross([I)Z

    move-result v10

    if-eqz v10, :cond_b

    move-object v10, v7

    move v11, v8

    invoke-static {v10, v11}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->centerFromEnd([II)F

    move-result v10

    :goto_5
    move v0, v10

    goto/16 :goto_1

    :cond_b
    const/high16 v10, 0x7fc00000    # Float.NaN

    goto :goto_5
.end method

.method private foundPatternCross([I)Z
    .locals 8

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;
    move-object v1, p1

    .local v1, "stateCount":[I
    move-object v5, v0

    iget v5, v5, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->moduleSize:F

    move v2, v5

    .line 171
    .local v2, "moduleSize":F
    move v5, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    move v3, v5

    .line 172
    .local v3, "maxVariance":F
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_0
    move v5, v4

    const/4 v6, 0x3

    if-ge v5, v6, :cond_1

    .line 173
    move v5, v2

    move-object v6, v1

    move v7, v4

    aget v6, v6, v7

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    move v6, v3

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_0

    .line 174
    const/4 v5, 0x0

    move v0, v5

    .line 177
    .end local v0    # "this":Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;
    :goto_1
    return v0

    .line 172
    .restart local v0    # "this":Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 177
    :cond_1
    const/4 v5, 0x1

    move v0, v5

    goto :goto_1
.end method

.method private handlePossibleCenter([III)Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    .locals 17

    .prologue
    .line 256
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;
    move-object/from16 v1, p1

    .local v1, "stateCount":[I
    move/from16 v2, p2

    .local v2, "i":I
    move/from16 v3, p3

    .local v3, "j":I
    move-object v10, v1

    const/4 v11, 0x0

    aget v10, v10, v11

    move-object v11, v1

    const/4 v12, 0x1

    aget v11, v11, v12

    add-int/2addr v10, v11

    move-object v11, v1

    const/4 v12, 0x2

    aget v11, v11, v12

    add-int/2addr v10, v11

    move v4, v10

    .line 257
    .local v4, "stateCountTotal":I
    move-object v10, v1

    move v11, v3

    invoke-static {v10, v11}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->centerFromEnd([II)F

    move-result v10

    move v5, v10

    .line 258
    .local v5, "centerJ":F
    move-object v10, v0

    move v11, v2

    move v12, v5

    float-to-int v12, v12

    const/4 v13, 0x2

    move-object v14, v1

    const/4 v15, 0x1

    aget v14, v14, v15

    mul-int/2addr v13, v14

    move v14, v4

    invoke-direct {v10, v11, v12, v13, v14}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->crossCheckVertical(IIII)F

    move-result v10

    move v6, v10

    .line 259
    .local v6, "centerI":F
    move v10, v6

    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-nez v10, :cond_2

    .line 260
    move-object v10, v1

    const/4 v11, 0x0

    aget v10, v10, v11

    move-object v11, v1

    const/4 v12, 0x1

    aget v11, v11, v12

    add-int/2addr v10, v11

    move-object v11, v1

    const/4 v12, 0x2

    aget v11, v11, v12

    add-int/2addr v10, v11

    int-to-float v10, v10

    const/high16 v11, 0x40400000    # 3.0f

    div-float/2addr v10, v11

    move v7, v10

    .line 261
    .local v7, "estimatedModuleSize":F
    move-object v10, v0

    iget-object v10, v10, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v8, v10

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    move-object v10, v8

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v10, v8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    move-object v9, v10

    .line 263
    .local v9, "center":Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    move-object v10, v9

    move v11, v7

    move v12, v6

    move v13, v5

    invoke-virtual {v10, v11, v12, v13}, Lcom/google/zxing/qrcode/detector/AlignmentPattern;->aboutEquals(FFF)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 264
    move-object v10, v9

    move v11, v6

    move v12, v5

    move v13, v7

    invoke-virtual {v10, v11, v12, v13}, Lcom/google/zxing/qrcode/detector/AlignmentPattern;->combineEstimate(FFF)Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    move-result-object v10

    move-object v0, v10

    .line 274
    .end local v0    # "this":Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;
    .end local v7    # "estimatedModuleSize":F
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "center":Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    :goto_1
    return-object v0

    .line 264
    .restart local v0    # "this":Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;
    .restart local v7    # "estimatedModuleSize":F
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v9    # "center":Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    :cond_0
    goto :goto_0

    .line 268
    .end local v9    # "center":Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    :cond_1
    new-instance v10, Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move v12, v5

    move v13, v6

    move v14, v7

    invoke-direct {v11, v12, v13, v14}, Lcom/google/zxing/qrcode/detector/AlignmentPattern;-><init>(FFF)V

    move-object v8, v10

    .line 269
    .local v8, "point":Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    move-object v10, v0

    iget-object v10, v10, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->possibleCenters:Ljava/util/List;

    move-object v11, v8

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 270
    move-object v10, v0

    iget-object v10, v10, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    if-eqz v10, :cond_2

    .line 271
    move-object v10, v0

    iget-object v10, v10, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->resultPointCallback:Lcom/google/zxing/ResultPointCallback;

    move-object v11, v8

    invoke-interface {v10, v11}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 274
    .end local v7    # "estimatedModuleSize":F
    .end local v8    # "point":Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    :cond_2
    const/4 v10, 0x0

    move-object v0, v10

    goto :goto_1
.end method


# virtual methods
.method find()Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 88
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;
    move-object v11, v0

    iget v11, v11, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->startX:I

    move v1, v11

    .line 89
    .local v1, "startX":I
    move-object v11, v0

    iget v11, v11, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->height:I

    move v2, v11

    .line 90
    .local v2, "height":I
    move v11, v1

    move-object v12, v0

    iget v12, v12, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->width:I

    add-int/2addr v11, v12

    move v3, v11

    .line 91
    .local v3, "maxJ":I
    move-object v11, v0

    iget v11, v11, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->startY:I

    move v12, v2

    const/4 v13, 0x1

    shr-int/lit8 v12, v12, 0x1

    add-int/2addr v11, v12

    move v4, v11

    .line 94
    .local v4, "middleI":I
    const/4 v11, 0x3

    new-array v11, v11, [I

    move-object v5, v11

    .line 95
    .local v5, "stateCount":[I
    const/4 v11, 0x0

    move v6, v11

    .local v6, "iGen":I
    :goto_0
    move v11, v6

    move v12, v2

    if-ge v11, v12, :cond_9

    .line 97
    move v11, v4

    move v12, v6

    const/4 v13, 0x1

    and-int/lit8 v12, v12, 0x1

    if-nez v12, :cond_0

    move v12, v6

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    const/4 v13, 0x1

    shr-int/lit8 v12, v12, 0x1

    :goto_1
    add-int/2addr v11, v12

    move v7, v11

    .line 98
    .local v7, "i":I
    move-object v11, v5

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, v11, v12

    .line 99
    move-object v11, v5

    const/4 v12, 0x1

    const/4 v13, 0x0

    aput v13, v11, v12

    .line 100
    move-object v11, v5

    const/4 v12, 0x2

    const/4 v13, 0x0

    aput v13, v11, v12

    .line 101
    move v11, v1

    move v8, v11

    .line 105
    .local v8, "j":I
    :goto_2
    move v11, v8

    move v12, v3

    if-ge v11, v12, :cond_1

    move-object v11, v0

    iget-object v11, v11, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    move v12, v8

    move v13, v7

    invoke-virtual {v11, v12, v13}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    if-nez v11, :cond_1

    .line 106
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 97
    .end local v7    # "i":I
    .end local v8    # "j":I
    :cond_0
    move v12, v6

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    const/4 v13, 0x1

    shr-int/lit8 v12, v12, 0x1

    neg-int v12, v12

    goto :goto_1

    .line 108
    .restart local v7    # "i":I
    .restart local v8    # "j":I
    :cond_1
    const/4 v11, 0x0

    move v9, v11

    .line 109
    .local v9, "currentState":I
    :goto_3
    move v11, v8

    move v12, v3

    if-ge v11, v12, :cond_7

    .line 110
    move-object v11, v0

    iget-object v11, v11, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->image:Lcom/google/zxing/common/BitMatrix;

    move v12, v8

    move v13, v7

    invoke-virtual {v11, v12, v13}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 112
    move v11, v9

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    .line 113
    move-object v11, v5

    move v12, v9

    move-object v15, v11

    move/from16 v16, v12

    move-object v11, v15

    move/from16 v12, v16

    move-object v13, v15

    move/from16 v14, v16

    aget v13, v13, v14

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    aput v13, v11, v12

    .line 136
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 115
    :cond_2
    move v11, v9

    const/4 v12, 0x2

    if-ne v11, v12, :cond_4

    .line 116
    move-object v11, v0

    move-object v12, v5

    invoke-direct {v11, v12}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->foundPatternCross([I)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 117
    move-object v11, v0

    move-object v12, v5

    move v13, v7

    move v14, v8

    invoke-direct {v11, v12, v13, v14}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->handlePossibleCenter([III)Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    move-result-object v11

    move-object v10, v11

    .line 118
    .local v10, "confirmed":Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    move-object v11, v10

    if-eqz v11, :cond_3

    .line 119
    move-object v11, v10

    move-object v0, v11

    .line 150
    .end local v0    # "this":Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;
    .end local v7    # "i":I
    .end local v8    # "j":I
    .end local v9    # "currentState":I
    .end local v10    # "confirmed":Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    :goto_5
    return-object v0

    .line 122
    .restart local v0    # "this":Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;
    .restart local v7    # "i":I
    .restart local v8    # "j":I
    .restart local v9    # "currentState":I
    :cond_3
    move-object v11, v5

    const/4 v12, 0x0

    move-object v13, v5

    const/4 v14, 0x2

    aget v13, v13, v14

    aput v13, v11, v12

    .line 123
    move-object v11, v5

    const/4 v12, 0x1

    const/4 v13, 0x1

    aput v13, v11, v12

    .line 124
    move-object v11, v5

    const/4 v12, 0x2

    const/4 v13, 0x0

    aput v13, v11, v12

    .line 125
    const/4 v11, 0x1

    move v9, v11

    goto :goto_4

    .line 127
    :cond_4
    move-object v11, v5

    add-int/lit8 v9, v9, 0x1

    move v12, v9

    move-object v15, v11

    move/from16 v16, v12

    move-object v11, v15

    move/from16 v12, v16

    move-object v13, v15

    move/from16 v14, v16

    aget v13, v13, v14

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    aput v13, v11, v12

    goto :goto_4

    .line 131
    :cond_5
    move v11, v9

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    .line 132
    add-int/lit8 v9, v9, 0x1

    .line 134
    :cond_6
    move-object v11, v5

    move v12, v9

    move-object v15, v11

    move/from16 v16, v12

    move-object v11, v15

    move/from16 v12, v16

    move-object v13, v15

    move/from16 v14, v16

    aget v13, v13, v14

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    aput v13, v11, v12

    goto :goto_4

    .line 138
    :cond_7
    move-object v11, v0

    move-object v12, v5

    invoke-direct {v11, v12}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->foundPatternCross([I)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 139
    move-object v11, v0

    move-object v12, v5

    move v13, v7

    move v14, v3

    invoke-direct {v11, v12, v13, v14}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->handlePossibleCenter([III)Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    move-result-object v11

    move-object v10, v11

    .line 140
    .restart local v10    # "confirmed":Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    move-object v11, v10

    if-eqz v11, :cond_8

    .line 141
    move-object v11, v10

    move-object v0, v11

    goto :goto_5

    .line 95
    .end local v10    # "confirmed":Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 149
    .end local v7    # "i":I
    .end local v8    # "j":I
    .end local v9    # "currentState":I
    :cond_9
    move-object v11, v0

    iget-object v11, v11, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->possibleCenters:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_a

    .line 150
    move-object v11, v0

    iget-object v11, v11, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->possibleCenters:Ljava/util/List;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    move-object v0, v11

    goto :goto_5

    .line 153
    :cond_a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v11

    throw v11
.end method
