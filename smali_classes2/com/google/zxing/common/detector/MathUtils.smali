.class public final Lcom/google/zxing/common/detector/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/detector/MathUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static distance(FFFF)F
    .locals 9

    .prologue
    .line 33
    move v0, p0

    .local v0, "aX":F
    move v1, p1

    .local v1, "aY":F
    move v2, p2

    .local v2, "bX":F
    move v3, p3

    .local v3, "bY":F
    move v6, v0

    move v7, v2

    sub-float/2addr v6, v7

    move v4, v6

    .line 34
    .local v4, "xDiff":F
    move v6, v1

    move v7, v3

    sub-float/2addr v6, v7

    move v5, v6

    .line 35
    .local v5, "yDiff":F
    move v6, v4

    move v7, v4

    mul-float/2addr v6, v7

    move v7, v5

    move v8, v5

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    move v0, v6

    .end local v0    # "aX":F
    return v0
.end method

.method public static distance(IIII)F
    .locals 9

    .prologue
    .line 39
    move v0, p0

    .local v0, "aX":I
    move v1, p1

    .local v1, "aY":I
    move v2, p2

    .local v2, "bX":I
    move v3, p3

    .local v3, "bY":I
    move v6, v0

    move v7, v2

    sub-int/2addr v6, v7

    move v4, v6

    .line 40
    .local v4, "xDiff":I
    move v6, v1

    move v7, v3

    sub-int/2addr v6, v7

    move v5, v6

    .line 41
    .local v5, "yDiff":I
    move v6, v4

    move v7, v4

    mul-int/2addr v6, v7

    move v7, v5

    move v8, v5

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    move v0, v6

    .end local v0    # "aX":I
    return v0
.end method

.method public static round(F)I
    .locals 3

    .prologue
    .line 29
    move v0, p0

    .local v0, "d":F
    move v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    move v0, v1

    .end local v0    # "d":F
    return v0
.end method
