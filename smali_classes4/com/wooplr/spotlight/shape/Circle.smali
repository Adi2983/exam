.class public Lcom/wooplr/spotlight/shape/Circle;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private circlePoint:Landroid/graphics/Point;

.field private padding:I

.field private radius:I

.field private target:Lcom/wooplr/spotlight/target/Target;


# direct methods
.method public constructor <init>(Lcom/wooplr/spotlight/target/Target;I)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object v3, v0

    move v4, v2

    move-object v5, v0

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move v8, v2

    move-object v9, v0

    move-object v10, v1

    move-object v11, v0

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    const/16 v12, 0x14

    iput v12, v11, Lcom/wooplr/spotlight/shape/Circle;->padding:I

    iput-object v10, v9, Lcom/wooplr/spotlight/shape/Circle;->target:Lcom/wooplr/spotlight/target/Target;

    iput v8, v7, Lcom/wooplr/spotlight/shape/Circle;->padding:I

    invoke-direct {v6}, Lcom/wooplr/spotlight/shape/Circle;->getFocusPoint()Landroid/graphics/Point;

    move-result-object v6

    iput-object v6, v5, Lcom/wooplr/spotlight/shape/Circle;->circlePoint:Landroid/graphics/Point;

    invoke-direct {v3, v4}, Lcom/wooplr/spotlight/shape/Circle;->calculateRadius(I)V

    return-void
.end method

.method private calculateRadius(I)V
    .locals 8

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    iget-object v3, v3, Lcom/wooplr/spotlight/shape/Circle;->target:Lcom/wooplr/spotlight/target/Target;

    invoke-interface {v3}, Lcom/wooplr/spotlight/target/Target;->getRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    const/4 v4, 0x2

    div-int/lit8 v3, v3, 0x2

    move-object v4, v0

    iget-object v4, v4, Lcom/wooplr/spotlight/shape/Circle;->target:Lcom/wooplr/spotlight/target/Target;

    invoke-interface {v4}, Lcom/wooplr/spotlight/target/Target;->getRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    const/4 v5, 0x2

    div-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object v4, v0

    iget-object v4, v4, Lcom/wooplr/spotlight/shape/Circle;->target:Lcom/wooplr/spotlight/target/Target;

    invoke-interface {v4}, Lcom/wooplr/spotlight/target/Target;->getRect()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    const/4 v5, 0x2

    div-int/lit8 v4, v4, 0x2

    move-object v5, v0

    iget-object v5, v5, Lcom/wooplr/spotlight/shape/Circle;->target:Lcom/wooplr/spotlight/target/Target;

    invoke-interface {v5}, Lcom/wooplr/spotlight/target/Target;->getRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    const/4 v6, 0x2

    div-int/lit8 v5, v5, 0x2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/2addr v3, v4

    const/4 v4, 0x2

    div-int/lit8 v3, v3, 0x2

    move v4, v1

    add-int/2addr v3, v4

    iput v3, v2, Lcom/wooplr/spotlight/shape/Circle;->radius:I

    return-void
.end method

.method private getFocusPoint()Landroid/graphics/Point;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/wooplr/spotlight/shape/Circle;->target:Lcom/wooplr/spotlight/target/Target;

    invoke-interface {v1}, Lcom/wooplr/spotlight/target/Target;->getPoint()Landroid/graphics/Point;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v1

    move-object v5, v0

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move v8, v3

    invoke-direct {v7, v8}, Lcom/wooplr/spotlight/shape/Circle;->calculateRadius(I)V

    invoke-direct {v6}, Lcom/wooplr/spotlight/shape/Circle;->getFocusPoint()Landroid/graphics/Point;

    move-result-object v6

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v1, v7

    iput-object v6, v5, Lcom/wooplr/spotlight/shape/Circle;->circlePoint:Landroid/graphics/Point;

    move-object v5, v1

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    move-object v6, v0

    move-object v7, v1

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    move v0, v7

    iget v6, v6, Lcom/wooplr/spotlight/shape/Circle;->radius:I

    int-to-float v6, v6

    move v7, v0

    move v9, v6

    move v10, v7

    move v6, v10

    move v7, v9

    move-object v8, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getPoint()Landroid/graphics/Point;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/wooplr/spotlight/shape/Circle;->circlePoint:Landroid/graphics/Point;

    move-object v0, v1

    return-object v0
.end method

.method public getRadius()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/wooplr/spotlight/shape/Circle;->radius:I

    move v0, v1

    return v0
.end method

.method public reCalculateAll()V
    .locals 7

    move-object v0, p0

    move-object v1, v0

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v5, v1

    move-object v6, v2

    move-object v1, v5

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iget v4, v4, Lcom/wooplr/spotlight/shape/Circle;->padding:I

    invoke-direct {v3, v4}, Lcom/wooplr/spotlight/shape/Circle;->calculateRadius(I)V

    invoke-direct {v2}, Lcom/wooplr/spotlight/shape/Circle;->getFocusPoint()Landroid/graphics/Point;

    move-result-object v2

    iput-object v2, v1, Lcom/wooplr/spotlight/shape/Circle;->circlePoint:Landroid/graphics/Point;

    return-void
.end method
