.class public final Lcom/google/zxing/qrcode/detector/FinderPattern;
.super Lcom/google/zxing/ResultPoint;
.source "FinderPattern.java"


# instance fields
.field private count:I

.field private final estimatedModuleSize:F


# direct methods
.method constructor <init>(FFF)V
    .locals 9

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/detector/FinderPattern;
    move v1, p1

    .local v1, "posX":F
    move v2, p2

    .local v2, "posY":F
    move v3, p3

    .local v3, "estimatedModuleSize":F
    move-object v4, v0

    move v5, v1

    move v6, v2

    move v7, v3

    const/4 v8, 0x1

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/zxing/qrcode/detector/FinderPattern;-><init>(FFFI)V

    .line 35
    return-void
.end method

.method private constructor <init>(FFFI)V
    .locals 8

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/detector/FinderPattern;
    move v1, p1

    .local v1, "posX":F
    move v2, p2

    .local v2, "posY":F
    move v3, p3

    .local v3, "estimatedModuleSize":F
    move v4, p4

    .local v4, "count":I
    move-object v5, v0

    move v6, v1

    move v7, v2

    invoke-direct {v5, v6, v7}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 39
    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/google/zxing/qrcode/detector/FinderPattern;->estimatedModuleSize:F

    .line 40
    move-object v5, v0

    move v6, v4

    iput v6, v5, Lcom/google/zxing/qrcode/detector/FinderPattern;->count:I

    .line 41
    return-void
.end method


# virtual methods
.method aboutEquals(FFF)Z
    .locals 7

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/detector/FinderPattern;
    move v1, p1

    .local v1, "moduleSize":F
    move v2, p2

    .local v2, "i":F
    move v3, p3

    .local v3, "j":F
    move v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    move v6, v1

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_2

    move v5, v3

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    move v6, v1

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_2

    .line 61
    move v5, v1

    move-object v6, v0

    iget v6, v6, Lcom/google/zxing/qrcode/detector/FinderPattern;->estimatedModuleSize:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    move v4, v5

    .line 62
    .local v4, "moduleSizeDiff":F
    move v5, v4

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v5, v5, v6

    if-lez v5, :cond_0

    move v5, v4

    move-object v6, v0

    iget v6, v6, Lcom/google/zxing/qrcode/detector/FinderPattern;->estimatedModuleSize:F

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_1

    :cond_0
    const/4 v5, 0x1

    :goto_0
    move v0, v5

    .line 64
    .end local v0    # "this":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .end local v4    # "moduleSizeDiff":F
    :goto_1
    return v0

    .line 62
    .restart local v0    # "this":Lcom/google/zxing/qrcode/detector/FinderPattern;
    .restart local v4    # "moduleSizeDiff":F
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 64
    .end local v4    # "moduleSizeDiff":F
    :cond_2
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1
.end method

.method combineEstimate(FFF)Lcom/google/zxing/qrcode/detector/FinderPattern;
    .locals 15

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/detector/FinderPattern;
    move/from16 v1, p1

    .local v1, "i":F
    move/from16 v2, p2

    .local v2, "j":F
    move/from16 v3, p3

    .local v3, "newModuleSize":F
    move-object v8, v0

    iget v8, v8, Lcom/google/zxing/qrcode/detector/FinderPattern;->count:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v4, v8

    .line 74
    .local v4, "combinedCount":I
    move-object v8, v0

    iget v8, v8, Lcom/google/zxing/qrcode/detector/FinderPattern;->count:I

    int-to-float v8, v8

    move-object v9, v0

    invoke-virtual {v9}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v9

    mul-float/2addr v8, v9

    move v9, v2

    add-float/2addr v8, v9

    move v9, v4

    int-to-float v9, v9

    div-float/2addr v8, v9

    move v5, v8

    .line 75
    .local v5, "combinedX":F
    move-object v8, v0

    iget v8, v8, Lcom/google/zxing/qrcode/detector/FinderPattern;->count:I

    int-to-float v8, v8

    move-object v9, v0

    invoke-virtual {v9}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v9

    mul-float/2addr v8, v9

    move v9, v1

    add-float/2addr v8, v9

    move v9, v4

    int-to-float v9, v9

    div-float/2addr v8, v9

    move v6, v8

    .line 76
    .local v6, "combinedY":F
    move-object v8, v0

    iget v8, v8, Lcom/google/zxing/qrcode/detector/FinderPattern;->count:I

    int-to-float v8, v8

    move-object v9, v0

    iget v9, v9, Lcom/google/zxing/qrcode/detector/FinderPattern;->estimatedModuleSize:F

    mul-float/2addr v8, v9

    move v9, v3

    add-float/2addr v8, v9

    move v9, v4

    int-to-float v9, v9

    div-float/2addr v8, v9

    move v7, v8

    .line 77
    .local v7, "combinedModuleSize":F
    new-instance v8, Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move v10, v5

    move v11, v6

    move v12, v7

    move v13, v4

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/google/zxing/qrcode/detector/FinderPattern;-><init>(FFFI)V

    move-object v0, v8

    .end local v0    # "this":Lcom/google/zxing/qrcode/detector/FinderPattern;
    return-object v0
.end method

.method getCount()I
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/detector/FinderPattern;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/qrcode/detector/FinderPattern;->count:I

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/qrcode/detector/FinderPattern;
    return v0
.end method

.method public getEstimatedModuleSize()F
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/detector/FinderPattern;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/qrcode/detector/FinderPattern;->estimatedModuleSize:F

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/qrcode/detector/FinderPattern;
    return v0
.end method

.method incrementCount()V
    .locals 5

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/detector/FinderPattern;
    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lcom/google/zxing/qrcode/detector/FinderPattern;->count:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/zxing/qrcode/detector/FinderPattern;->count:I

    .line 53
    return-void
.end method
