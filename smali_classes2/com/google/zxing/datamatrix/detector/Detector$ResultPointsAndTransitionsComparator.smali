.class final Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;
.super Ljava/lang/Object;
.source "Detector.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/datamatrix/detector/Detector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResultPointsAndTransitionsComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 432
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/zxing/datamatrix/detector/Detector$1;)V
    .locals 3

    .prologue
    .line 432
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;
    move-object v1, p1

    .local v1, "x0":Lcom/google/zxing/datamatrix/detector/Detector$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;)I
    .locals 5

    .prologue
    .line 436
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;
    move-object v1, p1

    .local v1, "o1":Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    move-object v2, p2

    .local v2, "o2":Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    move-object v3, v1

    invoke-virtual {v3}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v3

    move-object v4, v2

    invoke-virtual {v4}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->getTransitions()I

    move-result v4

    sub-int/2addr v3, v4

    move v0, v3

    .end local v0    # "this":Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .prologue
    .line 432
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "x1":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    move-object v5, v2

    check-cast v5, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;

    invoke-virtual {v3, v4, v5}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;->compare(Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitionsComparator;
    return v0
.end method
