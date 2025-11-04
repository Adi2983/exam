.class public final Lcom/google/zxing/oned/rss/FinderPattern;
.super Ljava/lang/Object;
.source "FinderPattern.java"


# instance fields
.field private final resultPoints:[Lcom/google/zxing/ResultPoint;

.field private final startEnd:[I

.field private final value:I


# direct methods
.method public constructor <init>(I[IIII)V
    .locals 15

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/FinderPattern;
    move/from16 v1, p1

    .local v1, "value":I
    move-object/from16 v2, p2

    .local v2, "startEnd":[I
    move/from16 v3, p3

    .local v3, "start":I
    move/from16 v4, p4

    .local v4, "end":I
    move/from16 v5, p5

    .local v5, "rowNumber":I
    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    .line 28
    move-object v6, v0

    move v7, v1

    iput v7, v6, Lcom/google/zxing/oned/rss/FinderPattern;->value:I

    .line 29
    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lcom/google/zxing/oned/rss/FinderPattern;->startEnd:[I

    .line 30
    move-object v6, v0

    const/4 v7, 0x2

    new-array v7, v7, [Lcom/google/zxing/ResultPoint;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/ResultPoint;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move v12, v3

    int-to-float v12, v12

    move v13, v5

    int-to-float v13, v13

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v8, v9

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    const/4 v9, 0x1

    new-instance v10, Lcom/google/zxing/ResultPoint;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move v12, v4

    int-to-float v12, v12

    move v13, v5

    int-to-float v13, v13

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v8, v9

    iput-object v7, v6, Lcom/google/zxing/oned/rss/FinderPattern;->resultPoints:[Lcom/google/zxing/ResultPoint;

    .line 34
    return-void
.end method


# virtual methods
.method public getResultPoints()[Lcom/google/zxing/ResultPoint;
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/FinderPattern;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/oned/rss/FinderPattern;->resultPoints:[Lcom/google/zxing/ResultPoint;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/oned/rss/FinderPattern;
    return-object v0
.end method

.method public getStartEnd()[I
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/FinderPattern;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/oned/rss/FinderPattern;->startEnd:[I

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/oned/rss/FinderPattern;
    return-object v0
.end method

.method public getValue()I
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/rss/FinderPattern;
    move-object v1, v0

    iget v1, v1, Lcom/google/zxing/oned/rss/FinderPattern;->value:I

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/oned/rss/FinderPattern;
    return v0
.end method
