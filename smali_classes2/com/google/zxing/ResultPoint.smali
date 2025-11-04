.class public Lcom/google/zxing/ResultPoint;
.super Ljava/lang/Object;
.source "ResultPoint.java"


# instance fields
.field private final x:F

.field private final y:F


# direct methods
.method public constructor <init>(FF)V
    .locals 5

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/ResultPoint;
    move v1, p1

    .local v1, "x":F
    move v2, p2

    .local v2, "y":F
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 33
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/google/zxing/ResultPoint;->x:F

    .line 34
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/google/zxing/ResultPoint;->y:F

    .line 35
    return-void
.end method

.method private static crossProductZ(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F
    .locals 9

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "pointA":Lcom/google/zxing/ResultPoint;
    move-object v1, p1

    .local v1, "pointB":Lcom/google/zxing/ResultPoint;
    move-object v2, p2

    .local v2, "pointC":Lcom/google/zxing/ResultPoint;
    move-object v5, v1

    iget v5, v5, Lcom/google/zxing/ResultPoint;->x:F

    move v3, v5

    .line 129
    .local v3, "bX":F
    move-object v5, v1

    iget v5, v5, Lcom/google/zxing/ResultPoint;->y:F

    move v4, v5

    .line 130
    .local v4, "bY":F
    move-object v5, v2

    iget v5, v5, Lcom/google/zxing/ResultPoint;->x:F

    move v6, v3

    sub-float/2addr v5, v6

    move-object v6, v0

    iget v6, v6, Lcom/google/zxing/ResultPoint;->y:F

    move v7, v4

    sub-float/2addr v6, v7

    mul-float/2addr v5, v6

    move-object v6, v2

    iget v6, v6, Lcom/google/zxing/ResultPoint;->y:F

    move v7, v4

    sub-float/2addr v6, v7

    move-object v7, v0

    iget v7, v7, Lcom/google/zxing/ResultPoint;->x:F

    move v8, v3

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    move v0, v5

    .end local v0    # "pointA":Lcom/google/zxing/ResultPoint;
    return v0
.end method

.method public static distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F
    .locals 6

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "pattern1":Lcom/google/zxing/ResultPoint;
    move-object v1, p1

    .local v1, "pattern2":Lcom/google/zxing/ResultPoint;
    move-object v2, v0

    iget v2, v2, Lcom/google/zxing/ResultPoint;->x:F

    move-object v3, v0

    iget v3, v3, Lcom/google/zxing/ResultPoint;->y:F

    move-object v4, v1

    iget v4, v4, Lcom/google/zxing/ResultPoint;->x:F

    move-object v5, v1

    iget v5, v5, Lcom/google/zxing/ResultPoint;->y:F

    invoke-static {v2, v3, v4, v5}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v2

    move v0, v2

    .end local v0    # "pattern1":Lcom/google/zxing/ResultPoint;
    return v0
.end method

.method public static orderBestPatterns([Lcom/google/zxing/ResultPoint;)V
    .locals 11

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "patterns":[Lcom/google/zxing/ResultPoint;
    move-object v8, v0

    const/4 v9, 0x0

    aget-object v8, v8, v9

    move-object v9, v0

    const/4 v10, 0x1

    aget-object v9, v9, v10

    invoke-static {v8, v9}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v8

    move v1, v8

    .line 78
    .local v1, "zeroOneDistance":F
    move-object v8, v0

    const/4 v9, 0x1

    aget-object v8, v8, v9

    move-object v9, v0

    const/4 v10, 0x2

    aget-object v9, v9, v10

    invoke-static {v8, v9}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v8

    move v2, v8

    .line 79
    .local v2, "oneTwoDistance":F
    move-object v8, v0

    const/4 v9, 0x0

    aget-object v8, v8, v9

    move-object v9, v0

    const/4 v10, 0x2

    aget-object v9, v9, v10

    invoke-static {v8, v9}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v8

    move v3, v8

    .line 85
    .local v3, "zeroTwoDistance":F
    move v8, v2

    move v9, v1

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_1

    move v8, v2

    move v9, v3

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_1

    .line 86
    move-object v8, v0

    const/4 v9, 0x0

    aget-object v8, v8, v9

    move-object v5, v8

    .line 87
    .local v5, "pointB":Lcom/google/zxing/ResultPoint;
    move-object v8, v0

    const/4 v9, 0x1

    aget-object v8, v8, v9

    move-object v4, v8

    .line 88
    .local v4, "pointA":Lcom/google/zxing/ResultPoint;
    move-object v8, v0

    const/4 v9, 0x2

    aget-object v8, v8, v9

    move-object v6, v8

    .line 103
    .local v6, "pointC":Lcom/google/zxing/ResultPoint;
    :goto_0
    move-object v8, v4

    move-object v9, v5

    move-object v10, v6

    invoke-static {v8, v9, v10}, Lcom/google/zxing/ResultPoint;->crossProductZ(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v8

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_0

    .line 104
    move-object v8, v4

    move-object v7, v8

    .line 105
    .local v7, "temp":Lcom/google/zxing/ResultPoint;
    move-object v8, v6

    move-object v4, v8

    .line 106
    move-object v8, v7

    move-object v6, v8

    .line 109
    .end local v7    # "temp":Lcom/google/zxing/ResultPoint;
    :cond_0
    move-object v8, v0

    const/4 v9, 0x0

    move-object v10, v4

    aput-object v10, v8, v9

    .line 110
    move-object v8, v0

    const/4 v9, 0x1

    move-object v10, v5

    aput-object v10, v8, v9

    .line 111
    move-object v8, v0

    const/4 v9, 0x2

    move-object v10, v6

    aput-object v10, v8, v9

    .line 112
    return-void

    .line 89
    .end local v4    # "pointA":Lcom/google/zxing/ResultPoint;
    .end local v5    # "pointB":Lcom/google/zxing/ResultPoint;
    .end local v6    # "pointC":Lcom/google/zxing/ResultPoint;
    :cond_1
    move v8, v3

    move v9, v2

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_2

    move v8, v3

    move v9, v1

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_2

    .line 90
    move-object v8, v0

    const/4 v9, 0x1

    aget-object v8, v8, v9

    move-object v5, v8

    .line 91
    .restart local v5    # "pointB":Lcom/google/zxing/ResultPoint;
    move-object v8, v0

    const/4 v9, 0x0

    aget-object v8, v8, v9

    move-object v4, v8

    .line 92
    .restart local v4    # "pointA":Lcom/google/zxing/ResultPoint;
    move-object v8, v0

    const/4 v9, 0x2

    aget-object v8, v8, v9

    move-object v6, v8

    .restart local v6    # "pointC":Lcom/google/zxing/ResultPoint;
    goto :goto_0

    .line 94
    .end local v4    # "pointA":Lcom/google/zxing/ResultPoint;
    .end local v5    # "pointB":Lcom/google/zxing/ResultPoint;
    .end local v6    # "pointC":Lcom/google/zxing/ResultPoint;
    :cond_2
    move-object v8, v0

    const/4 v9, 0x2

    aget-object v8, v8, v9

    move-object v5, v8

    .line 95
    .restart local v5    # "pointB":Lcom/google/zxing/ResultPoint;
    move-object v8, v0

    const/4 v9, 0x0

    aget-object v8, v8, v9

    move-object v4, v8

    .line 96
    .restart local v4    # "pointA":Lcom/google/zxing/ResultPoint;
    move-object v8, v0

    const/4 v9, 0x1

    aget-object v8, v8, v9

    move-object v6, v8

    .restart local v6    # "pointC":Lcom/google/zxing/ResultPoint;
    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/ResultPoint;
    move-object v1, p1

    .local v1, "other":Ljava/lang/Object;
    move-object v3, v1

    instance-of v3, v3, Lcom/google/zxing/ResultPoint;

    if-eqz v3, :cond_1

    .line 48
    move-object v3, v1

    check-cast v3, Lcom/google/zxing/ResultPoint;

    move-object v2, v3

    .line 49
    .local v2, "otherPoint":Lcom/google/zxing/ResultPoint;
    move-object v3, v0

    iget v3, v3, Lcom/google/zxing/ResultPoint;->x:F

    move-object v4, v2

    iget v4, v4, Lcom/google/zxing/ResultPoint;->x:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    move-object v3, v0

    iget v3, v3, Lcom/google/zxing/ResultPoint;->y:F

    move-object v4, v2

    iget v4, v4, Lcom/google/zxing/ResultPoint;->y:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .line 51
    .end local v0    # "this":Lcom/google/zxing/ResultPoint;
    .end local v2    # "otherPoint":Lcom/google/zxing/ResultPoint;
    :goto_1
    return v0

    .line 49
    .restart local v0    # "this":Lcom/google/zxing/ResultPoint;
    .restart local v2    # "otherPoint":Lcom/google/zxing/ResultPoint;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 51
    .end local v2    # "otherPoint":Lcom/google/zxing/ResultPoint;
    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method public final getX()F
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/ResultPoint;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/ResultPoint;->x:F

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/ResultPoint;
    return v0
.end method

.method public final getY()F
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/ResultPoint;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/ResultPoint;->y:F

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/ResultPoint;
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/ResultPoint;
    const/16 v1, 0x1f

    move-object v2, v0

    iget v2, v2, Lcom/google/zxing/ResultPoint;->x:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    mul-int/2addr v1, v2

    move-object v2, v0

    iget v2, v2, Lcom/google/zxing/ResultPoint;->y:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/ResultPoint;
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/ResultPoint;
    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0x19

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v2

    .line 62
    .local v1, "result":Ljava/lang/StringBuilder;
    move-object v2, v1

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 63
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/google/zxing/ResultPoint;->x:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 64
    move-object v2, v1

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 65
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Lcom/google/zxing/ResultPoint;->y:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 66
    move-object v2, v1

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 67
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/zxing/ResultPoint;
    return-object v0
.end method
