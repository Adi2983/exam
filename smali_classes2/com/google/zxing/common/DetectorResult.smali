.class public Lcom/google/zxing/common/DetectorResult;
.super Ljava/lang/Object;
.source "DetectorResult.java"


# instance fields
.field private final bits:Lcom/google/zxing/common/BitMatrix;

.field private final points:[Lcom/google/zxing/ResultPoint;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;)V
    .locals 5

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/DetectorResult;
    move-object v1, p1

    .local v1, "bits":Lcom/google/zxing/common/BitMatrix;
    move-object v2, p2

    .local v2, "points":[Lcom/google/zxing/ResultPoint;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 34
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/zxing/common/DetectorResult;->bits:Lcom/google/zxing/common/BitMatrix;

    .line 35
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/zxing/common/DetectorResult;->points:[Lcom/google/zxing/ResultPoint;

    .line 36
    return-void
.end method


# virtual methods
.method public final getBits()Lcom/google/zxing/common/BitMatrix;
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/DetectorResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/common/DetectorResult;->bits:Lcom/google/zxing/common/BitMatrix;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/common/DetectorResult;
    return-object v0
.end method

.method public final getPoints()[Lcom/google/zxing/ResultPoint;
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/DetectorResult;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/common/DetectorResult;->points:[Lcom/google/zxing/ResultPoint;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/common/DetectorResult;
    return-object v0
.end method
