.class final Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;
.super Ljava/lang/Object;
.source "FinderPatternFinder.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FurthestFromAverageComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/zxing/qrcode/detector/FinderPattern;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final average:F


# direct methods
.method private constructor <init>(F)V
    .locals 4

    .prologue
    .line 554
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;
    move v1, p1

    .local v1, "f":F
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 555
    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;->average:F

    .line 556
    return-void
.end method

.method synthetic constructor <init>(FLcom/google/zxing/qrcode/detector/FinderPatternFinder$1;)V
    .locals 5

    .prologue
    .line 552
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;
    move v1, p1

    .local v1, "x0":F
    move-object v2, p2

    .local v2, "x1":Lcom/google/zxing/qrcode/detector/FinderPatternFinder$1;
    move-object v3, v0

    move v4, v1

    invoke-direct {v3, v4}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;-><init>(F)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/zxing/qrcode/detector/FinderPattern;Lcom/google/zxing/qrcode/detector/FinderPattern;)I
    .locals 7

    .prologue
    .line 559
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;
    move-object v1, p1

    .local v1, "center1":Lcom/google/zxing/qrcode/detector/FinderPattern;
    move-object v2, p2

    .local v2, "center2":Lcom/google/zxing/qrcode/detector/FinderPattern;
    move-object v5, v2

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v5

    move-object v6, v0

    iget v6, v6, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;->average:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    move v3, v5

    .line 560
    .local v3, "dA":F
    move-object v5, v1

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v5

    move-object v6, v0

    iget v6, v6, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;->average:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    move v4, v5

    .line 561
    .local v4, "dB":F
    move v5, v3

    move v6, v4

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    const/4 v5, -0x1

    :goto_0
    move v0, v5

    .end local v0    # "this":Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;
    return v0

    .restart local v0    # "this":Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;
    :cond_0
    move v5, v3

    move v6, v4

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .prologue
    .line 552
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-object v5, v2

    check-cast v5, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-virtual {v3, v4, v5}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;->compare(Lcom/google/zxing/qrcode/detector/FinderPattern;Lcom/google/zxing/qrcode/detector/FinderPattern;)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;
    return v0
.end method
