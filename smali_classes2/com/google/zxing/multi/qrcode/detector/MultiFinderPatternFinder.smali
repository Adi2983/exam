.class final Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;
.super Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
.source "MultiFinderPatternFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$1;,
        Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;
    }
.end annotation


# static fields
.field private static final DIFF_MODSIZE_CUTOFF:F = 0.5f

.field private static final DIFF_MODSIZE_CUTOFF_PERCENT:F = 0.05f

.field private static final EMPTY_RESULT_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

.field private static final MAX_MODULE_COUNT_PER_EDGE:F = 180.0f

.field private static final MIN_MODULE_COUNT_PER_EDGE:F = 9.0f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    sput-object v0, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    return-void
.end method

.method constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 4

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;
    move-object v1, p1

    .local v1, "image":Lcom/google/zxing/common/BitMatrix;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    .line 94
    return-void
.end method

.method constructor <init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V
    .locals 6

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;
    move-object v1, p1

    .local v1, "image":Lcom/google/zxing/common/BitMatrix;
    move-object v2, p2

    .local v2, "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V

    .line 98
    return-void
.end method

.method private selectMutipleBestPatterns()[[Lcom/google/zxing/qrcode/detector/FinderPattern;
    .locals 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 107
    move-object/from16 v3, p0

    .local v3, "this":Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;
    move-object/from16 v26, v3

    invoke-virtual/range {v26 .. v26}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->getPossibleCenters()Ljava/util/List;

    move-result-object v26

    move-object/from16 v4, v26

    .line 108
    .local v4, "possibleCenters":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    move-object/from16 v26, v4

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v5, v26

    .line 110
    .local v5, "size":I
    move/from16 v26, v5

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_0

    .line 112
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v26

    throw v26

    .line 118
    :cond_0
    move/from16 v26, v5

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    .line 119
    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [[Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-object/from16 v26, v0

    move-object/from16 v34, v26

    move-object/from16 v26, v34

    move-object/from16 v27, v34

    const/16 v28, 0x0

    const/16 v29, 0x3

    move/from16 v0, v29

    new-array v0, v0, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-object/from16 v29, v0

    move-object/from16 v34, v29

    move-object/from16 v29, v34

    move-object/from16 v30, v34

    const/16 v31, 0x0

    move-object/from16 v32, v4

    const/16 v33, 0x0

    invoke-interface/range {v32 .. v33}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v32, v30, v31

    move-object/from16 v34, v29

    move-object/from16 v29, v34

    move-object/from16 v30, v34

    const/16 v31, 0x1

    move-object/from16 v32, v4

    const/16 v33, 0x1

    invoke-interface/range {v32 .. v33}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v32, v30, v31

    move-object/from16 v34, v29

    move-object/from16 v29, v34

    move-object/from16 v30, v34

    const/16 v31, 0x2

    move-object/from16 v32, v4

    const/16 v33, 0x2

    invoke-interface/range {v32 .. v33}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v32, v30, v31

    aput-object v29, v27, v28

    move-object/from16 v3, v26

    .line 224
    .end local v3    # "this":Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;
    :goto_0
    return-object v3

    .line 129
    .restart local v3    # "this":Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;
    :cond_1
    move-object/from16 v26, v4

    new-instance v27, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;

    move-object/from16 v34, v27

    move-object/from16 v27, v34

    move-object/from16 v28, v34

    const/16 v29, 0x0

    invoke-direct/range {v28 .. v29}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$ModuleSizeComparator;-><init>(Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder$1;)V

    invoke-static/range {v26 .. v27}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 146
    new-instance v26, Ljava/util/ArrayList;

    move-object/from16 v34, v26

    move-object/from16 v26, v34

    move-object/from16 v27, v34

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v6, v26

    .line 148
    .local v6, "results":Ljava/util/List;, "Ljava/util/List<[Lcom/google/zxing/qrcode/detector/FinderPattern;>;"
    const/16 v26, 0x0

    move/from16 v7, v26

    .local v7, "i1":I
    :goto_1
    move/from16 v26, v7

    move/from16 v27, v5

    const/16 v28, 0x2

    add-int/lit8 v27, v27, -0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_d

    .line 149
    move-object/from16 v26, v4

    move/from16 v27, v7

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-object/from16 v8, v26

    .line 150
    .local v8, "p1":Lcom/google/zxing/qrcode/detector/FinderPattern;
    move-object/from16 v26, v8

    if-nez v26, :cond_3

    .line 151
    .line 148
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 154
    :cond_3
    move/from16 v26, v7

    const/16 v27, 0x1

    add-int/lit8 v26, v26, 0x1

    move/from16 v9, v26

    .local v9, "i2":I
    :goto_3
    move/from16 v26, v9

    move/from16 v27, v5

    const/16 v28, 0x1

    add-int/lit8 v27, v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_2

    .line 155
    move-object/from16 v26, v4

    move/from16 v27, v9

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-object/from16 v10, v26

    .line 156
    .local v10, "p2":Lcom/google/zxing/qrcode/detector/FinderPattern;
    move-object/from16 v26, v10

    if-nez v26, :cond_5

    .line 157
    .line 154
    :cond_4
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 161
    :cond_5
    move-object/from16 v26, v8

    invoke-virtual/range {v26 .. v26}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v26

    move-object/from16 v27, v10

    invoke-virtual/range {v27 .. v27}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v27

    sub-float v26, v26, v27

    move-object/from16 v27, v8

    invoke-virtual/range {v27 .. v27}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v27

    move-object/from16 v28, v10

    invoke-virtual/range {v28 .. v28}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v28

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->min(FF)F

    move-result v27

    div-float v26, v26, v27

    move/from16 v11, v26

    .line 163
    .local v11, "vModSize12":F
    move-object/from16 v26, v8

    invoke-virtual/range {v26 .. v26}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v26

    move-object/from16 v27, v10

    invoke-virtual/range {v27 .. v27}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v27

    sub-float v26, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    move/from16 v12, v26

    .line 164
    .local v12, "vModSize12A":F
    move/from16 v26, v12

    const/high16 v27, 0x3f000000    # 0.5f

    cmpl-float v26, v26, v27

    if-lez v26, :cond_6

    move/from16 v26, v11

    const v27, 0x3d4ccccd    # 0.05f

    cmpl-float v26, v26, v27

    if-ltz v26, :cond_6

    .line 167
    goto :goto_2

    .line 170
    :cond_6
    move/from16 v26, v9

    const/16 v27, 0x1

    add-int/lit8 v26, v26, 0x1

    move/from16 v13, v26

    .local v13, "i3":I
    :goto_5
    move/from16 v26, v13

    move/from16 v27, v5

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_4

    .line 171
    move-object/from16 v26, v4

    move/from16 v27, v13

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-object/from16 v14, v26

    .line 172
    .local v14, "p3":Lcom/google/zxing/qrcode/detector/FinderPattern;
    move-object/from16 v26, v14

    if-nez v26, :cond_8

    .line 173
    .line 170
    :cond_7
    :goto_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 177
    :cond_8
    move-object/from16 v26, v10

    invoke-virtual/range {v26 .. v26}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v26

    move-object/from16 v27, v14

    invoke-virtual/range {v27 .. v27}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v27

    sub-float v26, v26, v27

    move-object/from16 v27, v10

    invoke-virtual/range {v27 .. v27}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v27

    move-object/from16 v28, v14

    invoke-virtual/range {v28 .. v28}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v28

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->min(FF)F

    move-result v27

    div-float v26, v26, v27

    move/from16 v15, v26

    .line 179
    .local v15, "vModSize23":F
    move-object/from16 v26, v10

    invoke-virtual/range {v26 .. v26}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v26

    move-object/from16 v27, v14

    invoke-virtual/range {v27 .. v27}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v27

    sub-float v26, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    move/from16 v16, v26

    .line 180
    .local v16, "vModSize23A":F
    move/from16 v26, v16

    const/high16 v27, 0x3f000000    # 0.5f

    cmpl-float v26, v26, v27

    if-lez v26, :cond_9

    move/from16 v26, v15

    const v27, 0x3d4ccccd    # 0.05f

    cmpl-float v26, v26, v27

    if-ltz v26, :cond_9

    .line 183
    goto/16 :goto_4

    .line 186
    :cond_9
    const/16 v26, 0x3

    move/from16 v0, v26

    new-array v0, v0, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-object/from16 v26, v0

    move-object/from16 v34, v26

    move-object/from16 v26, v34

    move-object/from16 v27, v34

    const/16 v28, 0x0

    move-object/from16 v29, v8

    aput-object v29, v27, v28

    move-object/from16 v34, v26

    move-object/from16 v26, v34

    move-object/from16 v27, v34

    const/16 v28, 0x1

    move-object/from16 v29, v10

    aput-object v29, v27, v28

    move-object/from16 v34, v26

    move-object/from16 v26, v34

    move-object/from16 v27, v34

    const/16 v28, 0x2

    move-object/from16 v29, v14

    aput-object v29, v27, v28

    move-object/from16 v17, v26

    .line 187
    .local v17, "test":[Lcom/google/zxing/qrcode/detector/FinderPattern;
    move-object/from16 v26, v17

    invoke-static/range {v26 .. v26}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    .line 190
    new-instance v26, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    move-object/from16 v34, v26

    move-object/from16 v26, v34

    move-object/from16 v27, v34

    move-object/from16 v28, v17

    invoke-direct/range {v27 .. v28}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V

    move-object/from16 v18, v26

    .line 191
    .local v18, "info":Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    move-object/from16 v26, v18

    invoke-virtual/range {v26 .. v26}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v26

    move-object/from16 v27, v18

    invoke-virtual/range {v27 .. v27}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getBottomLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v26

    move/from16 v19, v26

    .line 192
    .local v19, "dA":F
    move-object/from16 v26, v18

    invoke-virtual/range {v26 .. v26}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopRight()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v26

    move-object/from16 v27, v18

    invoke-virtual/range {v27 .. v27}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getBottomLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v26

    move/from16 v20, v26

    .line 193
    .local v20, "dC":F
    move-object/from16 v26, v18

    invoke-virtual/range {v26 .. v26}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v26

    move-object/from16 v27, v18

    invoke-virtual/range {v27 .. v27}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopRight()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v26

    move/from16 v21, v26

    .line 196
    .local v21, "dB":F
    move/from16 v26, v19

    move/from16 v27, v21

    add-float v26, v26, v27

    move-object/from16 v27, v8

    invoke-virtual/range {v27 .. v27}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v27

    const/high16 v28, 0x40000000    # 2.0f

    mul-float v27, v27, v28

    div-float v26, v26, v27

    move/from16 v22, v26

    .line 197
    .local v22, "estimatedModuleCount":F
    move/from16 v26, v22

    const/high16 v27, 0x43340000    # 180.0f

    cmpl-float v26, v26, v27

    if-gtz v26, :cond_7

    move/from16 v26, v22

    const/high16 v27, 0x41100000    # 9.0f

    cmpg-float v26, v26, v27

    if-gez v26, :cond_a

    .line 199
    goto/16 :goto_6

    .line 203
    :cond_a
    move/from16 v26, v19

    move/from16 v27, v21

    sub-float v26, v26, v27

    move/from16 v27, v19

    move/from16 v28, v21

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->min(FF)F

    move-result v27

    div-float v26, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    move/from16 v23, v26

    .line 204
    .local v23, "vABBC":F
    move/from16 v26, v23

    const v27, 0x3dcccccd    # 0.1f

    cmpl-float v26, v26, v27

    if-ltz v26, :cond_b

    .line 205
    goto/16 :goto_6

    .line 209
    :cond_b
    move/from16 v26, v19

    move/from16 v27, v19

    mul-float v26, v26, v27

    move/from16 v27, v21

    move/from16 v28, v21

    mul-float v27, v27, v28

    add-float v26, v26, v27

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-float v0, v0

    move/from16 v26, v0

    move/from16 v24, v26

    .line 211
    .local v24, "dCpy":F
    move/from16 v26, v20

    move/from16 v27, v24

    sub-float v26, v26, v27

    move/from16 v27, v20

    move/from16 v28, v24

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->min(FF)F

    move-result v27

    div-float v26, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    move/from16 v25, v26

    .line 213
    .local v25, "vPyC":F
    move/from16 v26, v25

    const v27, 0x3dcccccd    # 0.1f

    cmpl-float v26, v26, v27

    if-ltz v26, :cond_c

    .line 214
    goto/16 :goto_6

    .line 218
    :cond_c
    move-object/from16 v26, v6

    move-object/from16 v27, v17

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v26

    goto/16 :goto_6

    .line 223
    .end local v8    # "p1":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v9    # "i2":I
    .end local v10    # "p2":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v11    # "vModSize12":F
    .end local v12    # "vModSize12A":F
    .end local v13    # "i3":I
    .end local v14    # "p3":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v15    # "vModSize23":F
    .end local v16    # "vModSize23A":F
    .end local v17    # "test":[Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v18    # "info":Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    .end local v19    # "dA":F
    .end local v20    # "dC":F
    .end local v21    # "dB":F
    .end local v22    # "estimatedModuleCount":F
    .end local v23    # "vABBC":F
    .end local v24    # "dCpy":F
    .end local v25    # "vPyC":F
    :cond_d
    move-object/from16 v26, v6

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_e

    .line 224
    move-object/from16 v26, v6

    move-object/from16 v27, v6

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v0, v27

    new-array v0, v0, [[Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-object/from16 v27, v0

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [[Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-object/from16 v3, v26

    goto/16 :goto_0

    .line 228
    :cond_e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v26

    throw v26
.end method


# virtual methods
.method public findMulti(Ljava/util/Map;)[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)[",
            "Lcom/google/zxing/qrcode/detector/FinderPatternInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 232
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;
    move-object/from16 v1, p1

    .local v1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object v14, v1

    if-eqz v14, :cond_3

    move-object v14, v1

    sget-object v15, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v14, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v14, 0x1

    :goto_0
    move v2, v14

    .line 233
    .local v2, "tryHarder":Z
    move-object v14, v0

    invoke-virtual {v14}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->getImage()Lcom/google/zxing/common/BitMatrix;

    move-result-object v14

    move-object v3, v14

    .line 234
    .local v3, "image":Lcom/google/zxing/common/BitMatrix;
    move-object v14, v3

    invoke-virtual {v14}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v14

    move v4, v14

    .line 235
    .local v4, "maxI":I
    move-object v14, v3

    invoke-virtual {v14}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v14

    move v5, v14

    .line 243
    .local v5, "maxJ":I
    move v14, v4

    int-to-float v14, v14

    const/high16 v15, 0x43640000    # 228.0f

    div-float/2addr v14, v15

    const/high16 v15, 0x40400000    # 3.0f

    mul-float/2addr v14, v15

    float-to-int v14, v14

    move v6, v14

    .line 244
    .local v6, "iSkip":I
    move v14, v6

    const/4 v15, 0x3

    if-lt v14, v15, :cond_0

    move v14, v2

    if-eqz v14, :cond_1

    .line 245
    :cond_0
    const/4 v14, 0x3

    move v6, v14

    .line 248
    :cond_1
    const/4 v14, 0x5

    new-array v14, v14, [I

    move-object v7, v14

    .line 249
    .local v7, "stateCount":[I
    move v14, v6

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    move v8, v14

    .local v8, "i":I
    :goto_1
    move v14, v8

    move v15, v4

    if-ge v14, v15, :cond_d

    .line 251
    move-object v14, v7

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 252
    move-object v14, v7

    const/4 v15, 0x1

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 253
    move-object v14, v7

    const/4 v15, 0x2

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 254
    move-object v14, v7

    const/4 v15, 0x3

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 255
    move-object v14, v7

    const/4 v15, 0x4

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 256
    const/4 v14, 0x0

    move v9, v14

    .line 257
    .local v9, "currentState":I
    const/4 v14, 0x0

    move v10, v14

    .local v10, "j":I
    :goto_2
    move v14, v10

    move v15, v5

    if-ge v14, v15, :cond_b

    .line 258
    move-object v14, v3

    move v15, v10

    move/from16 v16, v8

    invoke-virtual/range {v14 .. v16}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 260
    move v14, v9

    const/4 v15, 0x1

    and-int/lit8 v14, v14, 0x1

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    .line 261
    add-int/lit8 v9, v9, 0x1

    .line 263
    :cond_2
    move-object v14, v7

    move v15, v9

    move-object/from16 v18, v14

    move/from16 v19, v15

    move-object/from16 v14, v18

    move/from16 v15, v19

    move-object/from16 v16, v18

    move/from16 v17, v19

    aget v16, v16, v17

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    aput v16, v14, v15

    .line 257
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 232
    .end local v2    # "tryHarder":Z
    .end local v3    # "image":Lcom/google/zxing/common/BitMatrix;
    .end local v4    # "maxI":I
    .end local v5    # "maxJ":I
    .end local v6    # "iSkip":I
    .end local v7    # "stateCount":[I
    .end local v8    # "i":I
    .end local v9    # "currentState":I
    .end local v10    # "j":I
    :cond_3
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 265
    .restart local v2    # "tryHarder":Z
    .restart local v3    # "image":Lcom/google/zxing/common/BitMatrix;
    .restart local v4    # "maxI":I
    .restart local v5    # "maxJ":I
    .restart local v6    # "iSkip":I
    .restart local v7    # "stateCount":[I
    .restart local v8    # "i":I
    .restart local v9    # "currentState":I
    .restart local v10    # "j":I
    :cond_4
    move v14, v9

    const/4 v15, 0x1

    and-int/lit8 v14, v14, 0x1

    if-nez v14, :cond_a

    .line 266
    move v14, v9

    const/4 v15, 0x4

    if-ne v14, v15, :cond_9

    .line 267
    move-object v14, v7

    invoke-static {v14}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->foundPatternCross([I)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 268
    move-object v14, v0

    move-object v15, v7

    move/from16 v16, v8

    move/from16 v17, v10

    invoke-virtual/range {v14 .. v17}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->handlePossibleCenter([III)Z

    move-result v14

    move v11, v14

    .line 269
    .local v11, "confirmed":Z
    move v14, v11

    if-nez v14, :cond_7

    .line 271
    :cond_5
    add-int/lit8 v10, v10, 0x1

    .line 272
    move v14, v10

    move v15, v5

    if-ge v14, v15, :cond_6

    move-object v14, v3

    move v15, v10

    move/from16 v16, v8

    invoke-virtual/range {v14 .. v16}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 273
    :cond_6
    add-int/lit8 v10, v10, -0x1

    .line 276
    :cond_7
    const/4 v14, 0x0

    move v9, v14

    .line 277
    move-object v14, v7

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 278
    move-object v14, v7

    const/4 v15, 0x1

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 279
    move-object v14, v7

    const/4 v15, 0x2

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 280
    move-object v14, v7

    const/4 v15, 0x3

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 281
    move-object v14, v7

    const/4 v15, 0x4

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 282
    goto :goto_3

    .line 283
    .end local v11    # "confirmed":Z
    :cond_8
    move-object v14, v7

    const/4 v15, 0x0

    move-object/from16 v16, v7

    const/16 v17, 0x2

    aget v16, v16, v17

    aput v16, v14, v15

    .line 284
    move-object v14, v7

    const/4 v15, 0x1

    move-object/from16 v16, v7

    const/16 v17, 0x3

    aget v16, v16, v17

    aput v16, v14, v15

    .line 285
    move-object v14, v7

    const/4 v15, 0x2

    move-object/from16 v16, v7

    const/16 v17, 0x4

    aget v16, v16, v17

    aput v16, v14, v15

    .line 286
    move-object v14, v7

    const/4 v15, 0x3

    const/16 v16, 0x1

    aput v16, v14, v15

    .line 287
    move-object v14, v7

    const/4 v15, 0x4

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 288
    const/4 v14, 0x3

    move v9, v14

    goto/16 :goto_3

    .line 291
    :cond_9
    move-object v14, v7

    add-int/lit8 v9, v9, 0x1

    move v15, v9

    move-object/from16 v18, v14

    move/from16 v19, v15

    move-object/from16 v14, v18

    move/from16 v15, v19

    move-object/from16 v16, v18

    move/from16 v17, v19

    aget v16, v16, v17

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    aput v16, v14, v15

    goto/16 :goto_3

    .line 294
    :cond_a
    move-object v14, v7

    move v15, v9

    move-object/from16 v18, v14

    move/from16 v19, v15

    move-object/from16 v14, v18

    move/from16 v15, v19

    move-object/from16 v16, v18

    move/from16 v17, v19

    aget v16, v16, v17

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    aput v16, v14, v15

    goto/16 :goto_3

    .line 299
    :cond_b
    move-object v14, v7

    invoke-static {v14}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->foundPatternCross([I)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 300
    move-object v14, v0

    move-object v15, v7

    move/from16 v16, v8

    move/from16 v17, v5

    invoke-virtual/range {v14 .. v17}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->handlePossibleCenter([III)Z

    move-result v14

    .line 249
    :cond_c
    move v14, v8

    move v15, v6

    add-int/2addr v14, v15

    move v8, v14

    goto/16 :goto_1

    .line 303
    .end local v9    # "currentState":I
    .end local v10    # "j":I
    :cond_d
    move-object v14, v0

    invoke-direct {v14}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->selectMutipleBestPatterns()[[Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v14

    move-object v8, v14

    .line 304
    .local v8, "patternInfo":[[Lcom/google/zxing/qrcode/detector/FinderPattern;
    new-instance v14, Ljava/util/ArrayList;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v14

    .line 305
    .local v9, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/qrcode/detector/FinderPatternInfo;>;"
    move-object v14, v8

    move-object v10, v14

    .local v10, "arr$":[[Lcom/google/zxing/qrcode/detector/FinderPattern;
    move-object v14, v10

    array-length v14, v14

    move v11, v14

    .local v11, "len$":I
    const/4 v14, 0x0

    move v12, v14

    .local v12, "i$":I
    :goto_4
    move v14, v12

    move v15, v11

    if-ge v14, v15, :cond_e

    move-object v14, v10

    move v15, v12

    aget-object v14, v14, v15

    move-object v13, v14

    .line 306
    .local v13, "pattern":[Lcom/google/zxing/qrcode/detector/FinderPattern;
    move-object v14, v13

    invoke-static {v14}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    .line 307
    move-object v14, v9

    new-instance v15, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    move-object/from16 v18, v15

    move-object/from16 v15, v18

    move-object/from16 v16, v18

    move-object/from16 v17, v13

    invoke-direct/range {v16 .. v17}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v14

    .line 305
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 310
    .end local v13    # "pattern":[Lcom/google/zxing/qrcode/detector/FinderPattern;
    :cond_e
    move-object v14, v9

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_f

    .line 311
    sget-object v14, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->EMPTY_RESULT_ARRAY:[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    move-object v0, v14

    .line 313
    .end local v0    # "this":Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;
    :goto_5
    return-object v0

    .restart local v0    # "this":Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;
    :cond_f
    move-object v14, v9

    move-object v15, v9

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    new-array v15, v15, [Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    invoke-interface {v14, v15}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    move-object v0, v14

    goto :goto_5
.end method
