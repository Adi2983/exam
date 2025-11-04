.class public final Lcom/google/zxing/qrcode/detector/AlignmentPattern;
.super Lcom/google/zxing/ResultPoint;
.source "AlignmentPattern.java"


# instance fields
.field private final estimatedModuleSize:F


# direct methods
.method constructor <init>(FFF)V
    .locals 7

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    move v1, p1

    .local v1, "posX":F
    move v2, p2

    .local v2, "posY":F
    move v3, p3

    .local v3, "estimatedModuleSize":F
    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    .line 33
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lcom/google/zxing/qrcode/detector/AlignmentPattern;->estimatedModuleSize:F

    .line 34
    return-void
.end method


# virtual methods
.method aboutEquals(FFF)Z
    .locals 7

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    move v1, p1

    .local v1, "moduleSize":F
    move v2, p2

    .local v2, "i":F
    move v3, p3

    .local v3, "j":F
    move v5, v2

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/zxing/qrcode/detector/AlignmentPattern;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    move v6, v1

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_2

    move v5, v3

    move-object v6, v0

    invoke-virtual {v6}, Lcom/google/zxing/qrcode/detector/AlignmentPattern;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    move v6, v1

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_2

    .line 42
    move v5, v1

    move-object v6, v0

    iget v6, v6, Lcom/google/zxing/qrcode/detector/AlignmentPattern;->estimatedModuleSize:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    move v4, v5

    .line 43
    .local v4, "moduleSizeDiff":F
    move v5, v4

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v5, v5, v6

    if-lez v5, :cond_0

    move v5, v4

    move-object v6, v0

    iget v6, v6, Lcom/google/zxing/qrcode/detector/AlignmentPattern;->estimatedModuleSize:F

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_1

    :cond_0
    const/4 v5, 0x1

    :goto_0
    move v0, v5

    .line 45
    .end local v0    # "this":Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    .end local v4    # "moduleSizeDiff":F
    :goto_1
    return v0

    .line 43
    .restart local v0    # "this":Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    .restart local v4    # "moduleSizeDiff":F
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 45
    .end local v4    # "moduleSizeDiff":F
    :cond_2
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1
.end method

.method combineEstimate(FFF)Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    .locals 13

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    move v1, p1

    .local v1, "i":F
    move v2, p2

    .local v2, "j":F
    move/from16 v3, p3

    .local v3, "newModuleSize":F
    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/zxing/qrcode/detector/AlignmentPattern;->getX()F

    move-result v7

    move v8, v2

    add-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    move v4, v7

    .line 54
    .local v4, "combinedX":F
    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/zxing/qrcode/detector/AlignmentPattern;->getY()F

    move-result v7

    move v8, v1

    add-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    move v5, v7

    .line 55
    .local v5, "combinedY":F
    move-object v7, v0

    iget v7, v7, Lcom/google/zxing/qrcode/detector/AlignmentPattern;->estimatedModuleSize:F

    move v8, v3

    add-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    move v6, v7

    .line 56
    .local v6, "combinedModuleSize":F
    new-instance v7, Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move v9, v4

    move v10, v5

    move v11, v6

    invoke-direct {v8, v9, v10, v11}, Lcom/google/zxing/qrcode/detector/AlignmentPattern;-><init>(FFF)V

    move-object v0, v7

    .end local v0    # "this":Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    return-object v0
.end method
