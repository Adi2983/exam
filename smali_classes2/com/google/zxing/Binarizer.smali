.class public abstract Lcom/google/zxing/Binarizer;
.super Ljava/lang/Object;
.source "Binarizer.java"


# instance fields
.field private final source:Lcom/google/zxing/LuminanceSource;


# direct methods
.method protected constructor <init>(Lcom/google/zxing/LuminanceSource;)V
    .locals 4

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/Binarizer;
    move-object v1, p1

    .local v1, "source":Lcom/google/zxing/LuminanceSource;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 35
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/zxing/Binarizer;->source:Lcom/google/zxing/LuminanceSource;

    .line 36
    return-void
.end method


# virtual methods
.method public abstract createBinarizer(Lcom/google/zxing/LuminanceSource;)Lcom/google/zxing/Binarizer;
.end method

.method public abstract getBlackMatrix()Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation
.end method

.method public abstract getBlackRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation
.end method

.method public final getHeight()I
    .locals 2

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/Binarizer;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/Binarizer;->source:Lcom/google/zxing/LuminanceSource;

    invoke-virtual {v1}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/Binarizer;
    return v0
.end method

.method public final getLuminanceSource()Lcom/google/zxing/LuminanceSource;
    .locals 2

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/Binarizer;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/Binarizer;->source:Lcom/google/zxing/LuminanceSource;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/Binarizer;
    return-object v0
.end method

.method public final getWidth()I
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/Binarizer;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/Binarizer;->source:Lcom/google/zxing/LuminanceSource;

    invoke-virtual {v1}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/Binarizer;
    return v0
.end method
