.class public Lcom/wooplr/spotlight/target/AnimPoint;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private curX:F

.field private curY:F

.field private moveX:F

.field private moveY:F


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 12

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v10, v6

    move-object v11, v7

    move-object v6, v10

    move-object v7, v11

    move-object v8, v10

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    move v9, v1

    iput v9, v8, Lcom/wooplr/spotlight/target/AnimPoint;->curX:F

    move v8, v2

    iput v8, v7, Lcom/wooplr/spotlight/target/AnimPoint;->curY:F

    move v7, v3

    iput v7, v6, Lcom/wooplr/spotlight/target/AnimPoint;->moveX:F

    move v6, v4

    iput v6, v5, Lcom/wooplr/spotlight/target/AnimPoint;->moveY:F

    return-void
.end method


# virtual methods
.method public getCurX()F
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/wooplr/spotlight/target/AnimPoint;->curX:F

    move v0, v1

    return v0
.end method

.method public getCurY()F
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/wooplr/spotlight/target/AnimPoint;->curY:F

    move v0, v1

    return v0
.end method

.method public getMoveX()F
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/wooplr/spotlight/target/AnimPoint;->moveX:F

    move v0, v1

    return v0
.end method

.method public getMoveY()F
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/wooplr/spotlight/target/AnimPoint;->moveY:F

    move v0, v1

    return v0
.end method

.method public setCurX(F)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/wooplr/spotlight/target/AnimPoint;->curX:F

    return-void
.end method

.method public setCurY(F)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/wooplr/spotlight/target/AnimPoint;->curY:F

    return-void
.end method

.method public setMoveX(F)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/wooplr/spotlight/target/AnimPoint;->moveX:F

    return-void
.end method

.method public setMoveY(F)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/wooplr/spotlight/target/AnimPoint;->moveY:F

    return-void
.end method
