.class final Lcom/google/zxing/aztec/detector/Detector$Point;
.super Ljava/lang/Object;
.source "Detector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/aztec/detector/Detector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Point"
.end annotation


# instance fields
.field public final x:I

.field public final y:I


# direct methods
.method private constructor <init>(II)V
    .locals 5

    .prologue
    .line 610
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/aztec/detector/Detector$Point;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 611
    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    .line 612
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    .line 613
    return-void
.end method

.method synthetic constructor <init>(IILcom/google/zxing/aztec/detector/Detector$1;)V
    .locals 7

    .prologue
    .line 602
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/aztec/detector/Detector$Point;
    move v1, p1

    .local v1, "x0":I
    move v2, p2

    .local v2, "x1":I
    move-object v3, p3

    .local v3, "x2":Lcom/google/zxing/aztec/detector/Detector$1;
    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(II)V

    return-void
.end method


# virtual methods
.method public toResultPoint()Lcom/google/zxing/ResultPoint;
    .locals 6

    .prologue
    .line 607
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/aztec/detector/Detector$Point;
    new-instance v1, Lcom/google/zxing/ResultPoint;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    iget v3, v3, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    int-to-float v3, v3

    move-object v4, v0

    iget v4, v4, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    int-to-float v4, v4

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/aztec/detector/Detector$Point;
    return-object v0
.end method
