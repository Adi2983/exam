.class public Lcom/wooplr/spotlight/target/ViewTarget;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wooplr/spotlight/target/Target;


# instance fields
.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v1

    iput-object v3, v2, Lcom/wooplr/spotlight/target/ViewTarget;->view:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public getPoint()Landroid/graphics/Point;
    .locals 10

    move-object v0, p0

    move-object v2, v0

    const/4 v3, 0x2

    new-array v3, v3, [I

    move-object v1, v3

    iget-object v2, v2, Lcom/wooplr/spotlight/target/ViewTarget;->view:Landroid/view/View;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance v2, Landroid/graphics/Point;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v1

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object v6, v0

    iget-object v6, v6, Lcom/wooplr/spotlight/target/ViewTarget;->view:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    const/4 v7, 0x2

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    move v1, v5

    const/4 v5, 0x1

    aget v4, v4, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/wooplr/spotlight/target/ViewTarget;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    const/4 v6, 0x2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    move v5, v1

    move v8, v4

    move v9, v5

    move v4, v9

    move v5, v8

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    move-object v0, v2

    return-object v0
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 13

    move-object v0, p0

    move-object v4, v0

    const/4 v5, 0x2

    new-array v5, v5, [I

    move-object v1, v5

    iget-object v4, v4, Lcom/wooplr/spotlight/target/ViewTarget;->view:Landroid/view/View;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance v4, Landroid/graphics/Rect;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v1

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v11, v6

    move-object v12, v7

    move-object v6, v11

    move-object v7, v12

    move-object v8, v11

    move-object v9, v12

    const/4 v10, 0x0

    aget v9, v9, v10

    move v1, v9

    const/4 v9, 0x1

    aget v8, v8, v9

    move v2, v8

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object v8, v0

    iget-object v8, v8, Lcom/wooplr/spotlight/target/ViewTarget;->view:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    move v3, v7

    const/4 v7, 0x1

    aget v6, v6, v7

    move-object v7, v0

    iget-object v7, v7, Lcom/wooplr/spotlight/target/ViewTarget;->view:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    move v0, v6

    move v6, v1

    move v7, v2

    move v8, v3

    move v9, v0

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v4

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/wooplr/spotlight/target/ViewTarget;->view:Landroid/view/View;

    move-object v0, v1

    return-object v0
.end method

.method public getViewBottom()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/wooplr/spotlight/target/ViewTarget;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    move v0, v1

    return v0
.end method

.method public getViewHeight()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/wooplr/spotlight/target/ViewTarget;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getViewLeft()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/wooplr/spotlight/target/ViewTarget;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    move v0, v1

    return v0
.end method

.method public getViewRight()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/wooplr/spotlight/target/ViewTarget;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    move v0, v1

    return v0
.end method

.method public getViewTop()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/wooplr/spotlight/target/ViewTarget;->getRect()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    move v0, v1

    return v0
.end method

.method public getViewWidth()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/wooplr/spotlight/target/ViewTarget;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    move v0, v1

    return v0
.end method
