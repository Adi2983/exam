.class public final Lcom/google/zxing/aztec/AztecDetectorResult;
.super Lcom/google/zxing/common/DetectorResult;
.source "AztecDetectorResult.java"


# instance fields
.field private final compact:Z

.field private final nbDatablocks:I

.field private final nbLayers:I


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;ZII)V
    .locals 9

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/aztec/AztecDetectorResult;
    move-object v1, p1

    .local v1, "bits":Lcom/google/zxing/common/BitMatrix;
    move-object v2, p2

    .local v2, "points":[Lcom/google/zxing/ResultPoint;
    move v3, p3

    .local v3, "compact":Z
    move v4, p4

    .local v4, "nbDatablocks":I
    move v5, p5

    .local v5, "nbLayers":I
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lcom/google/zxing/common/DetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;)V

    .line 35
    move-object v6, v0

    move v7, v3

    iput-boolean v7, v6, Lcom/google/zxing/aztec/AztecDetectorResult;->compact:Z

    .line 36
    move-object v6, v0

    move v7, v4

    iput v7, v6, Lcom/google/zxing/aztec/AztecDetectorResult;->nbDatablocks:I

    .line 37
    move-object v6, v0

    move v7, v5

    iput v7, v6, Lcom/google/zxing/aztec/AztecDetectorResult;->nbLayers:I

    .line 38
    return-void
.end method


# virtual methods
.method public getNbDatablocks()I
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/aztec/AztecDetectorResult;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/aztec/AztecDetectorResult;->nbDatablocks:I

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/aztec/AztecDetectorResult;
    return v0
.end method

.method public getNbLayers()I
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/aztec/AztecDetectorResult;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/aztec/AztecDetectorResult;->nbLayers:I

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/aztec/AztecDetectorResult;
    return v0
.end method

.method public isCompact()Z
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/aztec/AztecDetectorResult;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/zxing/aztec/AztecDetectorResult;->compact:Z

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/aztec/AztecDetectorResult;
    return v0
.end method
