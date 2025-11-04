.class final Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
.super Ljava/lang/Object;
.source "Detector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/datamatrix/detector/Detector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResultPointsAndTransitions"
.end annotation


# instance fields
.field private final from:Lcom/google/zxing/ResultPoint;

.field private final to:Lcom/google/zxing/ResultPoint;

.field private final transitions:I


# direct methods
.method private constructor <init>(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)V
    .locals 6

    .prologue
    .line 405
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    move-object v1, p1

    .local v1, "from":Lcom/google/zxing/ResultPoint;
    move-object v2, p2

    .local v2, "to":Lcom/google/zxing/ResultPoint;
    move v3, p3

    .local v3, "transitions":I
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 406
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->from:Lcom/google/zxing/ResultPoint;

    .line 407
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->to:Lcom/google/zxing/ResultPoint;

    .line 408
    move-object v4, v0

    move v5, v3

    iput v5, v4, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->transitions:I

    .line 409
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;ILcom/google/zxing/datamatrix/detector/Detector$1;)V
    .locals 9

    .prologue
    .line 399
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    move-object v1, p1

    .local v1, "x0":Lcom/google/zxing/ResultPoint;
    move-object v2, p2

    .local v2, "x1":Lcom/google/zxing/ResultPoint;
    move v3, p3

    .local v3, "x2":I
    move-object v4, p4

    .local v4, "x3":Lcom/google/zxing/datamatrix/detector/Detector$1;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;-><init>(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;I)V

    return-void
.end method


# virtual methods
.method getFrom()Lcom/google/zxing/ResultPoint;
    .locals 2

    .prologue
    .line 412
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->from:Lcom/google/zxing/ResultPoint;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    return-object v0
.end method

.method getTo()Lcom/google/zxing/ResultPoint;
    .locals 2

    .prologue
    .line 416
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->to:Lcom/google/zxing/ResultPoint;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    return-object v0
.end method

.method public getTransitions()I
    .locals 2

    .prologue
    .line 420
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->transitions:I

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 425
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->from:Lcom/google/zxing/ResultPoint;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->to:Lcom/google/zxing/ResultPoint;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;->transitions:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/datamatrix/detector/Detector$ResultPointsAndTransitions;
    return-object v0
.end method
