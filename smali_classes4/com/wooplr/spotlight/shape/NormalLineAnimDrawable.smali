.class public Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$DisplayMode;
    }
.end annotation


# static fields
.field private static final FACTOR_X:Ljava/lang/String; = "factorX"

.field private static final FACTOR_Y:Ljava/lang/String; = "factorY"


# instance fields
.field private curAnimPoint:Lcom/wooplr/spotlight/target/AnimPoint;

.field private curDisplayMode:Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$DisplayMode;

.field private factorX:F

.field private factorY:F

.field private lineAnimDuration:J

.field private lineColor:I

.field private lineStroke:I

.field private mAnimPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wooplr/spotlight/target/AnimPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mLineAnim:Landroid/animation/ObjectAnimator;

.field private mListner:Landroid/animation/Animator$AnimatorListener;

.field private final mPaint2:Landroid/graphics/Paint;

.field private final mPath2:Landroid/graphics/Path;

.field private moveTimes:I


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;-><init>(Landroid/graphics/Paint;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Paint;)V
    .locals 14

    move-object v1, p0

    move-object v2, p1

    move-object v3, v2

    move-object v4, v1

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v12, v4

    move-object v13, v5

    move-object v4, v12

    move-object v5, v13

    move-object v6, v12

    move-object v7, v13

    move-object v12, v6

    move-object v13, v7

    move-object v6, v12

    move-object v7, v13

    move-object v8, v12

    move-object v9, v13

    move-object v12, v8

    move-object v13, v9

    move-object v8, v12

    move-object v9, v13

    move-object v10, v12

    move-object v11, v13

    invoke-direct {v11}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v11, 0x0

    iput-object v11, v10, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->curAnimPoint:Lcom/wooplr/spotlight/target/AnimPoint;

    new-instance v10, Ljava/util/ArrayList;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v9, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->mAnimPoints:Ljava/util/List;

    sget-object v9, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$DisplayMode;->Appear:Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$DisplayMode;

    iput-object v9, v8, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->curDisplayMode:Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$DisplayMode;

    const-wide/16 v8, 0x190

    iput-wide v8, v7, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->lineAnimDuration:J

    const-string/jumbo v7, "#eb273f"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->lineColor:I

    const/16 v6, 0x8

    iput v6, v5, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->lineStroke:I

    new-instance v5, Landroid/graphics/Path;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v5, v4, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->mPath2:Landroid/graphics/Path;

    if-nez v3, :cond_0

    move-object v3, v1

    invoke-direct {v3}, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->getDefaultPaint()Landroid/graphics/Paint;

    move-result-object v3

    move-object v2, v3

    :cond_0
    move-object v3, v1

    move-object v4, v2

    iput-object v4, v3, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->mPaint2:Landroid/graphics/Paint;

    return-void
.end method

.method static synthetic access$000(Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;)I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->moveTimes:I

    move v0, v1

    return v0
.end method

.method static synthetic access$002(Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;I)I
    .locals 5

    move-object v0, p0

    move v1, p1

    move v2, v1

    move-object v3, v0

    move v4, v1

    iput v4, v3, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->moveTimes:I

    move v0, v2

    return v0
.end method

.method static synthetic access$008(Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;)I
    .locals 7

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->moveTimes:I

    move v5, v1

    move v1, v5

    move v2, v5

    move-object v3, v0

    move v5, v2

    move-object v6, v3

    move-object v2, v6

    move v3, v5

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->moveTimes:I

    move v0, v1

    return v0
.end method

.method static synthetic access$102(Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;Lcom/wooplr/spotlight/target/AnimPoint;)Lcom/wooplr/spotlight/target/AnimPoint;
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->curAnimPoint:Lcom/wooplr/spotlight/target/AnimPoint;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$200(Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;)Ljava/util/List;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->mAnimPoints:Ljava/util/List;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$300(Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;)Landroid/animation/Animator$AnimatorListener;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->mListner:Landroid/animation/Animator$AnimatorListener;

    move-object v0, v1

    return-object v0
.end method

.method private drawLine(Ljava/util/List;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wooplr/spotlight/target/AnimPoint;",
            ">;I)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v0, v4

    move-object v4, v1

    move v5, v2

    move v6, v0

    invoke-direct {v3, v4, v5, v6}, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->drawLine(Ljava/util/List;II)V

    return-void
.end method

.method private drawLine(Ljava/util/List;II)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wooplr/spotlight/target/AnimPoint;",
            ">;II)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    :goto_0
    move v6, v2

    move v7, v3

    if-ge v6, v7, :cond_0

    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v1

    move v9, v2

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/wooplr/spotlight/target/AnimPoint;

    move-object v4, v8

    iget-object v7, v7, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->mPath2:Landroid/graphics/Path;

    move-object v8, v4

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-virtual {v9}, Lcom/wooplr/spotlight/target/AnimPoint;->getCurX()F

    move-result v9

    move v5, v9

    invoke-virtual {v8}, Lcom/wooplr/spotlight/target/AnimPoint;->getCurY()F

    move-result v8

    move v9, v5

    move v10, v8

    move v11, v9

    move v8, v11

    move v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v6, v6, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->mPath2:Landroid/graphics/Path;

    move-object v7, v4

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-virtual {v8}, Lcom/wooplr/spotlight/target/AnimPoint;->getMoveX()F

    move-result v8

    move v4, v8

    invoke-virtual {v7}, Lcom/wooplr/spotlight/target/AnimPoint;->getMoveY()F

    move-result v7

    move v8, v4

    move v10, v7

    move v11, v8

    move v7, v11

    move v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getDefaultPaint()Landroid/graphics/Paint;
    .locals 15

    move-object v0, p0

    new-instance v2, Landroid/graphics/Paint;

    move-object v13, v2

    move-object v2, v13

    move-object v3, v13

    move-object v13, v3

    move-object v3, v13

    move-object v4, v13

    move-object v1, v4

    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    move-object v7, v1

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v13, v7

    move-object v14, v8

    move-object v7, v13

    move-object v8, v14

    move-object v9, v13

    move-object v10, v14

    move-object v13, v9

    move-object v14, v10

    move-object v9, v13

    move-object v10, v14

    move-object v11, v13

    move-object v12, v14

    invoke-direct {v12}, Landroid/graphics/Paint;-><init>()V

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setDither(Z)V

    sget-object v10, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v9, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    sget-object v8, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget v6, v6, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->lineStroke:I

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v4, v4, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->lineColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    move-object v0, v2

    return-object v0
.end method

.method private getLineAnim()Landroid/animation/ObjectAnimator;
    .locals 14

    move-object v0, p0

    move-object v3, v0

    const/4 v4, 0x2

    new-array v4, v4, [F

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v1, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v4, v5

    const-string/jumbo v4, "factorY"

    move-object v5, v1

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    move-object v1, v4

    const/4 v4, 0x2

    new-array v4, v4, [F

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v2, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v7, v5, v6

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v4, v5

    const-string/jumbo v4, "factorX"

    move-object v5, v2

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    move-object v2, v4

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    const/4 v6, 0x1

    move-object v7, v2

    aput-object v7, v5, v6

    invoke-static {v3, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    move-object v4, v0

    iget-wide v4, v4, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->lineAnimDuration:J

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    move-object v12, v3

    move-object v3, v12

    move-object v4, v12

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v12, v4

    move-object v13, v5

    move-object v4, v12

    move-object v5, v13

    move-object v6, v12

    move-object v7, v13

    move-object v1, v7

    move-object v7, v0

    move-object v8, v1

    move-object v9, v0

    move-object v10, v1

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    iget-object v9, v9, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->mAnimPoints:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    invoke-virtual {v6, v7}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    new-instance v5, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$1;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$1;-><init>(Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;)V

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v8, v0

    iget-object v8, v8, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->curAnimPoint:Lcom/wooplr/spotlight/target/AnimPoint;

    if-eqz v8, :cond_0

    move-object v8, v0

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v8, v16

    move-object/from16 v9, v17

    move-object/from16 v10, v16

    move-object/from16 v11, v17

    move-object/from16 v16, v10

    move-object/from16 v17, v11

    move-object/from16 v10, v16

    move-object/from16 v11, v17

    move-object/from16 v12, v16

    move-object/from16 v13, v17

    iget-object v13, v13, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->mPath2:Landroid/graphics/Path;

    invoke-virtual {v13}, Landroid/graphics/Path;->rewind()V

    iget-object v12, v12, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->curAnimPoint:Lcom/wooplr/spotlight/target/AnimPoint;

    invoke-virtual {v12}, Lcom/wooplr/spotlight/target/AnimPoint;->getCurX()F

    move-result v12

    move v2, v12

    iget-object v11, v11, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->curAnimPoint:Lcom/wooplr/spotlight/target/AnimPoint;

    invoke-virtual {v11}, Lcom/wooplr/spotlight/target/AnimPoint;->getCurY()F

    move-result v11

    move v3, v11

    iget-object v10, v10, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->curAnimPoint:Lcom/wooplr/spotlight/target/AnimPoint;

    invoke-virtual {v10}, Lcom/wooplr/spotlight/target/AnimPoint;->getMoveX()F

    move-result v10

    move v4, v10

    iget-object v9, v9, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->curAnimPoint:Lcom/wooplr/spotlight/target/AnimPoint;

    invoke-virtual {v9}, Lcom/wooplr/spotlight/target/AnimPoint;->getMoveY()F

    move-result v9

    move v5, v9

    iget-object v8, v8, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->curDisplayMode:Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$DisplayMode;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    move-object v6, v9

    sget-object v9, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$DisplayMode;->Disappear:Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$DisplayMode;

    if-ne v8, v9, :cond_3

    move v8, v2

    move v9, v4

    move-object v10, v0

    iget-object v10, v10, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->mPath2:Landroid/graphics/Path;

    move-object v6, v10

    cmpl-float v8, v8, v9

    if-nez v8, :cond_1

    move v8, v4

    move v2, v8

    :goto_0
    move v8, v3

    move v9, v5

    cmpl-float v8, v8, v9

    if-nez v8, :cond_2

    move v8, v5

    move v3, v8

    :goto_1
    move-object v8, v0

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    move-object/from16 v9, v16

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    move-object v11, v6

    move v12, v2

    move v13, v3

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v10, v10, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->mPath2:Landroid/graphics/Path;

    move v11, v4

    move v12, v5

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v9, v9, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->mAnimPoints:Ljava/util/List;

    move-object v10, v0

    iget v10, v10, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->moveTimes:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    invoke-direct {v8, v9, v10}, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->drawLine(Ljava/util/List;I)V

    :cond_0
    :goto_2
    move-object v8, v1

    move-object v9, v0

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    iget-object v10, v10, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->mPath2:Landroid/graphics/Path;

    move-object v0, v10

    iget-object v9, v9, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->mPaint2:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    move-object/from16 v9, v17

    move-object/from16 v10, v16

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    :cond_1
    move v8, v2

    move v9, v4

    move v10, v2

    sub-float/2addr v9, v10

    move-object v10, v0

    iget v10, v10, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->factorX:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    move v2, v8

    goto :goto_0

    :cond_2
    move v8, v3

    move v9, v5

    move v10, v3

    sub-float/2addr v9, v10

    move-object v10, v0

    iget v10, v10, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->factorY:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    move v3, v8

    goto :goto_1

    :cond_3
    move-object v8, v6

    sget-object v9, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$DisplayMode;->Appear:Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$DisplayMode;

    if-ne v8, v9, :cond_0

    move v8, v2

    move v9, v4

    move-object v10, v0

    move-object/from16 v16, v10

    move-object/from16 v10, v16

    move-object/from16 v11, v16

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    move-object/from16 v11, v16

    move-object/from16 v12, v17

    move-object/from16 v13, v16

    move-object/from16 v14, v17

    iget-object v14, v14, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->mAnimPoints:Ljava/util/List;

    move-object v6, v14

    iget v13, v13, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->moveTimes:I

    move v7, v13

    move-object v13, v6

    const/4 v14, 0x0

    move v15, v7

    invoke-direct {v12, v13, v14, v15}, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->drawLine(Ljava/util/List;II)V

    iget-object v11, v11, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->mPath2:Landroid/graphics/Path;

    move v12, v2

    move v13, v3

    invoke-virtual {v11, v12, v13}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v10, v10, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->mPath2:Landroid/graphics/Path;

    move-object v6, v10

    cmpl-float v8, v8, v9

    if-nez v8, :cond_4

    :goto_3
    move v8, v3

    move v9, v5

    cmpl-float v8, v8, v9

    if-nez v8, :cond_5

    :goto_4
    move-object v8, v6

    move v9, v4

    move v10, v5

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    :cond_4
    move v8, v2

    move v9, v4

    move v10, v2

    sub-float/2addr v9, v10

    move-object v10, v0

    iget v10, v10, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->factorX:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    move v4, v8

    goto :goto_3

    :cond_5
    move v8, v3

    move v9, v5

    move v10, v3

    sub-float/2addr v9, v10

    move-object v10, v0

    iget v10, v10, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->factorY:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    move v5, v8

    goto :goto_4
.end method

.method public getCurDisplayMode()Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$DisplayMode;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->curDisplayMode:Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$DisplayMode;

    move-object v0, v1

    return-object v0
.end method

.method public getFactorX()F
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->factorX:F

    move v0, v1

    return v0
.end method

.method public getFactorY()F
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->factorY:F

    move v0, v1

    return v0
.end method

.method public getOpacity()I
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public getPoints()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wooplr/spotlight/target/AnimPoint;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->mAnimPoints:Ljava/util/List;

    move-object v0, v1

    return-object v0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public playAnim()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->playAnim(Ljava/util/List;)V

    return-void
.end method

.method public playAnim(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wooplr/spotlight/target/AnimPoint;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->mAnimPoints:Ljava/util/List;

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->mLineAnim:Landroid/animation/ObjectAnimator;

    if-nez v2, :cond_1

    move-object v2, v0

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->getLineAnim()Landroid/animation/ObjectAnimator;

    move-result-object v3

    iput-object v3, v2, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->mLineAnim:Landroid/animation/ObjectAnimator;

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->mLineAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->mLineAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->mLineAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setCurDisplayMode(Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$DisplayMode;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->curDisplayMode:Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$DisplayMode;

    return-void
.end method

.method public setFactorX(F)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->factorX:F

    return-void
.end method

.method public setFactorY(F)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->factorY:F

    return-void
.end method

.method public setLineAnimDuration(J)V
    .locals 7

    move-object v0, p0

    move-wide v1, p1

    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->lineAnimDuration:J

    return-void
.end method

.method public setLineColor(I)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->lineColor:I

    return-void
.end method

.method public setLineStroke(I)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->lineStroke:I

    return-void
.end method

.method public setPoints(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wooplr/spotlight/target/AnimPoint;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->mAnimPoints:Ljava/util/List;

    return-void
.end method

.method public setmListner(Landroid/animation/Animator$AnimatorListener;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->mListner:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method
