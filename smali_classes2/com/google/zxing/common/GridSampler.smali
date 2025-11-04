.class public abstract Lcom/google/zxing/common/GridSampler;
.super Ljava/lang/Object;
.source "GridSampler.java"


# static fields
.field private static gridSampler:Lcom/google/zxing/common/GridSampler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 36
    new-instance v0, Lcom/google/zxing/common/DefaultGridSampler;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/google/zxing/common/DefaultGridSampler;-><init>()V

    sput-object v0, Lcom/google/zxing/common/GridSampler;->gridSampler:Lcom/google/zxing/common/GridSampler;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/GridSampler;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static checkAndNudgePoints(Lcom/google/zxing/common/BitMatrix;[F)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 102
    move-object v0, p0

    .local v0, "image":Lcom/google/zxing/common/BitMatrix;
    move-object v1, p1

    .local v1, "points":[F
    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v8

    move v2, v8

    .line 103
    .local v2, "width":I
    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v8

    move v3, v8

    .line 105
    .local v3, "height":I
    const/4 v8, 0x1

    move v4, v8

    .line 106
    .local v4, "nudged":Z
    const/4 v8, 0x0

    move v5, v8

    .local v5, "offset":I
    :goto_0
    move v8, v5

    move-object v9, v1

    array-length v9, v9

    if-ge v8, v9, :cond_6

    move v8, v4

    if-eqz v8, :cond_6

    .line 107
    move-object v8, v1

    move v9, v5

    aget v8, v8, v9

    float-to-int v8, v8

    move v6, v8

    .line 108
    .local v6, "x":I
    move-object v8, v1

    move v9, v5

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    aget v8, v8, v9

    float-to-int v8, v8

    move v7, v8

    .line 109
    .local v7, "y":I
    move v8, v6

    const/4 v9, -0x1

    if-lt v8, v9, :cond_0

    move v8, v6

    move v9, v2

    if-gt v8, v9, :cond_0

    move v8, v7

    const/4 v9, -0x1

    if-lt v8, v9, :cond_0

    move v8, v7

    move v9, v3

    if-le v8, v9, :cond_1

    .line 110
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v8

    throw v8

    .line 112
    :cond_1
    const/4 v8, 0x0

    move v4, v8

    .line 113
    move v8, v6

    const/4 v9, -0x1

    if-ne v8, v9, :cond_4

    .line 114
    move-object v8, v1

    move v9, v5

    const/4 v10, 0x0

    aput v10, v8, v9

    .line 115
    const/4 v8, 0x1

    move v4, v8

    .line 120
    :cond_2
    :goto_1
    move v8, v7

    const/4 v9, -0x1

    if-ne v8, v9, :cond_5

    .line 121
    move-object v8, v1

    move v9, v5

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x0

    aput v10, v8, v9

    .line 122
    const/4 v8, 0x1

    move v4, v8

    .line 106
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 116
    :cond_4
    move v8, v6

    move v9, v2

    if-ne v8, v9, :cond_2

    .line 117
    move-object v8, v1

    move v9, v5

    move v10, v2

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    int-to-float v10, v10

    aput v10, v8, v9

    .line 118
    const/4 v8, 0x1

    move v4, v8

    goto :goto_1

    .line 123
    :cond_5
    move v8, v7

    move v9, v3

    if-ne v8, v9, :cond_3

    .line 124
    move-object v8, v1

    move v9, v5

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v10, v3

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    int-to-float v10, v10

    aput v10, v8, v9

    .line 125
    const/4 v8, 0x1

    move v4, v8

    goto :goto_2

    .line 129
    .end local v6    # "x":I
    .end local v7    # "y":I
    :cond_6
    const/4 v8, 0x1

    move v4, v8

    .line 130
    move-object v8, v1

    array-length v8, v8

    const/4 v9, 0x2

    add-int/lit8 v8, v8, -0x2

    move v5, v8

    :goto_3
    move v8, v5

    if-ltz v8, :cond_d

    move v8, v4

    if-eqz v8, :cond_d

    .line 131
    move-object v8, v1

    move v9, v5

    aget v8, v8, v9

    float-to-int v8, v8

    move v6, v8

    .line 132
    .restart local v6    # "x":I
    move-object v8, v1

    move v9, v5

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    aget v8, v8, v9

    float-to-int v8, v8

    move v7, v8

    .line 133
    .restart local v7    # "y":I
    move v8, v6

    const/4 v9, -0x1

    if-lt v8, v9, :cond_7

    move v8, v6

    move v9, v2

    if-gt v8, v9, :cond_7

    move v8, v7

    const/4 v9, -0x1

    if-lt v8, v9, :cond_7

    move v8, v7

    move v9, v3

    if-le v8, v9, :cond_8

    .line 134
    :cond_7
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v8

    throw v8

    .line 136
    :cond_8
    const/4 v8, 0x0

    move v4, v8

    .line 137
    move v8, v6

    const/4 v9, -0x1

    if-ne v8, v9, :cond_b

    .line 138
    move-object v8, v1

    move v9, v5

    const/4 v10, 0x0

    aput v10, v8, v9

    .line 139
    const/4 v8, 0x1

    move v4, v8

    .line 144
    :cond_9
    :goto_4
    move v8, v7

    const/4 v9, -0x1

    if-ne v8, v9, :cond_c

    .line 145
    move-object v8, v1

    move v9, v5

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x0

    aput v10, v8, v9

    .line 146
    const/4 v8, 0x1

    move v4, v8

    .line 130
    :cond_a
    :goto_5
    add-int/lit8 v5, v5, -0x2

    goto :goto_3

    .line 140
    :cond_b
    move v8, v6

    move v9, v2

    if-ne v8, v9, :cond_9

    .line 141
    move-object v8, v1

    move v9, v5

    move v10, v2

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    int-to-float v10, v10

    aput v10, v8, v9

    .line 142
    const/4 v8, 0x1

    move v4, v8

    goto :goto_4

    .line 147
    :cond_c
    move v8, v7

    move v9, v3

    if-ne v8, v9, :cond_a

    .line 148
    move-object v8, v1

    move v9, v5

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v10, v3

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    int-to-float v10, v10

    aput v10, v8, v9

    .line 149
    const/4 v8, 0x1

    move v4, v8

    goto :goto_5

    .line 152
    .end local v6    # "x":I
    .end local v7    # "y":I
    :cond_d
    return-void
.end method

.method public static getInstance()Lcom/google/zxing/common/GridSampler;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/google/zxing/common/GridSampler;->gridSampler:Lcom/google/zxing/common/GridSampler;

    return-object v0
.end method

.method public static setGridSampler(Lcom/google/zxing/common/GridSampler;)V
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "newGridSampler":Lcom/google/zxing/common/GridSampler;
    move-object v1, v0

    sput-object v1, Lcom/google/zxing/common/GridSampler;->gridSampler:Lcom/google/zxing/common/GridSampler;

    .line 49
    return-void
.end method


# virtual methods
.method public abstract sampleGrid(Lcom/google/zxing/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation
.end method

.method public abstract sampleGrid(Lcom/google/zxing/common/BitMatrix;IILcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/BitMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation
.end method
