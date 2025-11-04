.class public Lcom/wooplr/spotlight/SpotlightView$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wooplr/spotlight/SpotlightView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private spotlightView:Lcom/wooplr/spotlight/SpotlightView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v4, v3, Lcom/wooplr/spotlight/SpotlightView$Builder;->activity:Landroid/app/Activity;

    new-instance v3, Lcom/wooplr/spotlight/SpotlightView;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v2, v4

    move-object v4, v1

    move-object v5, v0

    move-object v6, v2

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v1

    invoke-direct {v7, v8}, Lcom/wooplr/spotlight/SpotlightView;-><init>(Landroid/content/Context;)V

    iput-object v6, v5, Lcom/wooplr/spotlight/SpotlightView$Builder;->spotlightView:Lcom/wooplr/spotlight/SpotlightView;

    invoke-static {v4}, Lcom/wooplr/spotlight/SpotlightView;->access$1200(Landroid/app/Activity;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/wooplr/spotlight/SpotlightView;->access$1300(Lcom/wooplr/spotlight/SpotlightView;I)V

    return-void
.end method


# virtual methods
.method public build()Lcom/wooplr/spotlight/SpotlightView;
    .locals 8

    move-object v0, p0

    move-object v2, v0

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    new-instance v4, Lcom/wooplr/spotlight/shape/Circle;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v1, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/wooplr/spotlight/SpotlightView$Builder;->spotlightView:Lcom/wooplr/spotlight/SpotlightView;

    invoke-static {v5}, Lcom/wooplr/spotlight/SpotlightView;->access$1500(Lcom/wooplr/spotlight/SpotlightView;)Lcom/wooplr/spotlight/target/Target;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/wooplr/spotlight/SpotlightView$Builder;->spotlightView:Lcom/wooplr/spotlight/SpotlightView;

    invoke-static {v6}, Lcom/wooplr/spotlight/SpotlightView;->access$1600(Lcom/wooplr/spotlight/SpotlightView;)I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/wooplr/spotlight/shape/Circle;-><init>(Lcom/wooplr/spotlight/target/Target;I)V

    iget-object v3, v3, Lcom/wooplr/spotlight/SpotlightView$Builder;->spotlightView:Lcom/wooplr/spotlight/SpotlightView;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView;->setCircleShape(Lcom/wooplr/spotlight/shape/Circle;)V

    iget-object v2, v2, Lcom/wooplr/spotlight/SpotlightView$Builder;->spotlightView:Lcom/wooplr/spotlight/SpotlightView;

    invoke-static {v2}, Lcom/wooplr/spotlight/SpotlightView;->access$1700(Lcom/wooplr/spotlight/SpotlightView;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/wooplr/spotlight/SpotlightView$Builder;->spotlightView:Lcom/wooplr/spotlight/SpotlightView;

    invoke-static {v2}, Lcom/wooplr/spotlight/SpotlightView;->access$1800(Lcom/wooplr/spotlight/SpotlightView;)V

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/wooplr/spotlight/SpotlightView$Builder;->spotlightView:Lcom/wooplr/spotlight/SpotlightView;

    move-object v0, v2

    return-object v0
.end method

.method public dismissOnBackPress(Z)Lcom/wooplr/spotlight/SpotlightView$Builder;
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/wooplr/spotlight/SpotlightView$Builder;->spotlightView:Lcom/wooplr/spotlight/SpotlightView;

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView;->setDismissOnBackPress(Z)V

    move-object v0, v2

    return-object v0
.end method

.method public dismissOnTouch(Z)Lcom/wooplr/spotlight/SpotlightView$Builder;
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/wooplr/spotlight/SpotlightView$Builder;->spotlightView:Lcom/wooplr/spotlight/SpotlightView;

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView;->setDismissOnTouch(Z)V

    move-object v0, v2

    return-object v0
.end method

.method public enableDismissAfterShown(Z)Lcom/wooplr/spotlight/SpotlightView$Builder;
    .locals 6

    move-object v0, p0

    move v1, p1

    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/wooplr/spotlight/SpotlightView$Builder;->spotlightView:Lcom/wooplr/spotlight/SpotlightView;

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView;->setEnableDismissAfterShown(Z)V

    iget-object v2, v2, Lcom/wooplr/spotlight/SpotlightView$Builder;->spotlightView:Lcom/wooplr/spotlight/SpotlightView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/wooplr/spotlight/SpotlightView;->setDismissOnTouch(Z)V

    :cond_0
    move-object v2, v0

    move-object v0, v2

    return-object v0
.end method

.method public enableRevealAnimation(Z)Lcom/wooplr/spotlight/SpotlightView$Builder;
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/wooplr/spotlight/SpotlightView$Builder;->spotlightView:Lcom/wooplr/spotlight/SpotlightView;

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView;->setRevealAnimationEnabled(Z)V

    move-object v0, v2

    return-object v0
.end method

.method public extraPaddingForArc(I)Lcom/wooplr/spotlight/SpotlightView$Builder;
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/wooplr/spotlight/SpotlightView$Builder;->spotlightView:Lcom/wooplr/spotlight/SpotlightView;

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView;->setExtraPaddingForArc(I)V

    move-object v0, v2

    return-object v0
.end method

.method public fadeinTextDuration(J)Lcom/wooplr/spotlight/SpotlightView$Builder;
    .locals 9

    move-object v1, p0

    move-wide v2, p1

    move-object v4, v1

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget-object v5, v5, Lcom/wooplr/spotlight/SpotlightView$Builder;->spotlightView:Lcom/wooplr/spotlight/SpotlightView;

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Lcom/wooplr/spotlight/SpotlightView;->setFadingTextDuration(J)V

    move-object v1, v4

    return-object v1
.end method

.method public headingTvColor(I)Lcom/wooplr/spotlight/SpotlightView$Builder;
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/wooplr/spotlight/SpotlightView$Builder;->spotlightView:Lcom/wooplr/spotlight/SpotlightView;

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView;->setHeadingTvColor(I)V

    move-object v0, v2

    return-object v0
.end method

.method public headingTvSize(I)Lcom/wooplr/spotlight/SpotlightView$Builder;
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/wooplr/spotlight/SpotlightView$Builder;->spotlightView:Lcom/wooplr/spotlight/SpotlightView;

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView;->setHeadingTvSize(I)V

    move-object v0, v2

    return-object v0
.end method

.method public headingTvSize(II)Lcom/wooplr/spotlight/SpotlightView$Builder;
    .locals 8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget-object v4, v4, Lcom/wooplr/spotlight/SpotlightView$Builder;->spotlightView:Lcom/wooplr/spotlight/SpotlightView;

    move v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/wooplr/spotlight/SpotlightView;->setHeadingTvSize(II)V

    move-object v0, v3

    return-object v0
.end method

.method public headingTvText(Ljava/lang/CharSequence;)Lcom/wooplr/spotlight/SpotlightView$Builder;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/wooplr/spotlight/SpotlightView$Builder;->spotlightView:Lcom/wooplr/spotlight/SpotlightView;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView;->setHeadingTvText(Ljava/lang/CharSequence;)V

    move-object v0, v2

    return-object v0
.end method

.method public introAnimationDuration(J)Lcom/wooplr/spotlight/SpotlightView$Builder;
    .locals 9

    move-object v1, p0

    move-wide v2, p1

    move-object v4, v1

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget-object v5, v5, Lcom/wooplr/spotlight/SpotlightView$Builder;->spotlightView:Lcom/wooplr/spotlight/SpotlightView;

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Lcom/wooplr/spotlight/SpotlightView;->setIntroAnimationDuration(J)V

    move-object v1, v4

    return-object v1
.end method

.method public lineAndArcColor(I)Lcom/wooplr/spotlight/SpotlightView$Builder;
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/wooplr/spotlight/SpotlightView$Builder;->spotlightView:Lcom/wooplr/spotlight/SpotlightView;

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView;->setLineAndArcColor(I)V

    move-object v0, v2

    return-object v0
.end method

.method public lineAnimDuration(J)Lcom/wooplr/spotlight/SpotlightView$Builder;
    .locals 9

    move-object v1, p0

    move-wide v2, p1

    move-object v4, v1

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget-object v5, v5, Lcom/wooplr/spotlight/SpotlightView$Builder;->spotlightView:Lcom/wooplr/spotlight/SpotlightView;

    move-wide v6, v2

    invoke-virtual {v5, v6, v7}, Lcom/wooplr/spotlight/SpotlightView;->setLineAnimationDuration(J)V

    move-object v1, v4

    return-object v1
.end method

.method public lineEffect(Landroid/graphics/PathEffect;)Lcom/wooplr/spotlight/SpotlightView$Builder;
    .locals 6
    .param p1    # Landroid/graphics/PathEffect;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/wooplr/spotlight/SpotlightView$Builder;->spotlightView:Lcom/wooplr/spotlight/SpotlightView;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView;->setLineEffect(Landroid/graphics/PathEffect;)V

    move-object v0, v2

    return-object v0
.end method

.method public lineStroke(I)Lcom/wooplr/spotlight/SpotlightView$Builder;
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/wooplr/spotlight/SpotlightView$Builder;->spotlightView:Lcom/wooplr/spotlight/SpotlightView;

    move v4, v1

    invoke-static {v4}, Lcom/wooplr/spotlight/utils/Utils;->dpToPx(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView;->setLineStroke(I)V

    move-object v0, v2

    return-object v0
.end method

.method public maskColor(I)Lcom/wooplr/spotlight/SpotlightView$Builder;
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/wooplr/spotlight/SpotlightView$Builder;->spotlightView:Lcom/wooplr/spotlight/SpotlightView;

    move v4, v1

    invoke-static {v3, v4}, Lcom/wooplr/spotlight/SpotlightView;->access$1400(Lcom/wooplr/spotlight/SpotlightView;I)V

    move-object v0, v2

    return-object v0
.end method

.method public performClick(Z)Lcom/wooplr/spotlight/SpotlightView$Builder;
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/wooplr/spotlight/SpotlightView$Builder;->spotlightView:Lcom/wooplr/spotlight/SpotlightView;

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView;->setPerformClick(Z)V

    move-object v0, v2

    return-object v0
.end method

.method public setConfiguration(Lcom/wooplr/spotlight/SpotlightConfig;)Lcom/wooplr/spotlight/SpotlightView$Builder;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/wooplr/spotlight/SpotlightView$Builder;->spotlightView:Lcom/wooplr/spotlight/SpotlightView;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView;->setConfiguration(Lcom/wooplr/spotlight/SpotlightConfig;)V

    move-object v0, v2

    return-object v0
.end method

.method public setHeadingTypeface(Landroid/graphics/Typeface;)Lcom/wooplr/spotlight/SpotlightView$Builder;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/wooplr/spotlight/SpotlightView$Builder;->spotlightView:Lcom/wooplr/spotlight/SpotlightView;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView;->setHeadingTypeface(Landroid/graphics/Typeface;)V

    move-object v0, v2

    return-object v0
.end method

.method public setListener(Lcom/wooplr/spotlight/utils/SpotlightListener;)Lcom/wooplr/spotlight/SpotlightView$Builder;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/wooplr/spotlight/SpotlightView$Builder;->spotlightView:Lcom/wooplr/spotlight/SpotlightView;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView;->setListener(Lcom/wooplr/spotlight/utils/SpotlightListener;)V

    move-object v0, v2

    return-object v0
.end method

.method public setSubHeadingTypeface(Landroid/graphics/Typeface;)Lcom/wooplr/spotlight/SpotlightView$Builder;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/wooplr/spotlight/SpotlightView$Builder;->spotlightView:Lcom/wooplr/spotlight/SpotlightView;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView;->setSubHeadingTypeface(Landroid/graphics/Typeface;)V

    move-object v0, v2

    return-object v0
.end method

.method public show()Lcom/wooplr/spotlight/SpotlightView;
    .locals 5

    move-object v0, p0

    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-virtual {v2}, Lcom/wooplr/spotlight/SpotlightView$Builder;->build()Lcom/wooplr/spotlight/SpotlightView;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/wooplr/spotlight/SpotlightView$Builder;->activity:Landroid/app/Activity;

    invoke-static {v2, v3}, Lcom/wooplr/spotlight/SpotlightView;->access$1900(Lcom/wooplr/spotlight/SpotlightView;Landroid/app/Activity;)V

    iget-object v1, v1, Lcom/wooplr/spotlight/SpotlightView$Builder;->spotlightView:Lcom/wooplr/spotlight/SpotlightView;

    move-object v0, v1

    return-object v0
.end method

.method public showAlways(Z)Lcom/wooplr/spotlight/SpotlightView$Builder;
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/wooplr/spotlight/SpotlightView$Builder;->spotlightView:Lcom/wooplr/spotlight/SpotlightView;

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView;->setShowAlways(Z)V

    move-object v0, v2

    return-object v0
.end method

.method public showTargetArc(Z)Lcom/wooplr/spotlight/SpotlightView$Builder;
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/wooplr/spotlight/SpotlightView$Builder;->spotlightView:Lcom/wooplr/spotlight/SpotlightView;

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView;->setShowTargetArc(Z)V

    move-object v0, v2

    return-object v0
.end method

.method public subHeadingTvColor(I)Lcom/wooplr/spotlight/SpotlightView$Builder;
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/wooplr/spotlight/SpotlightView$Builder;->spotlightView:Lcom/wooplr/spotlight/SpotlightView;

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView;->setSubHeadingTvColor(I)V

    move-object v0, v2

    return-object v0
.end method

.method public subHeadingTvSize(I)Lcom/wooplr/spotlight/SpotlightView$Builder;
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/wooplr/spotlight/SpotlightView$Builder;->spotlightView:Lcom/wooplr/spotlight/SpotlightView;

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView;->setSubHeadingTvSize(I)V

    move-object v0, v2

    return-object v0
.end method

.method public subHeadingTvSize(II)Lcom/wooplr/spotlight/SpotlightView$Builder;
    .locals 8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget-object v4, v4, Lcom/wooplr/spotlight/SpotlightView$Builder;->spotlightView:Lcom/wooplr/spotlight/SpotlightView;

    move v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/wooplr/spotlight/SpotlightView;->setSubHeadingTvSize(II)V

    move-object v0, v3

    return-object v0
.end method

.method public subHeadingTvText(Ljava/lang/CharSequence;)Lcom/wooplr/spotlight/SpotlightView$Builder;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/wooplr/spotlight/SpotlightView$Builder;->spotlightView:Lcom/wooplr/spotlight/SpotlightView;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView;->setSubHeadingTvText(Ljava/lang/CharSequence;)V

    move-object v0, v2

    return-object v0
.end method

.method public target(Landroid/view/View;)Lcom/wooplr/spotlight/SpotlightView$Builder;
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    iget-object v3, v3, Lcom/wooplr/spotlight/SpotlightView$Builder;->spotlightView:Lcom/wooplr/spotlight/SpotlightView;

    new-instance v4, Lcom/wooplr/spotlight/target/ViewTarget;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/wooplr/spotlight/target/ViewTarget;-><init>(Landroid/view/View;)V

    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView;->setTargetView(Lcom/wooplr/spotlight/target/Target;)V

    move-object v0, v2

    return-object v0
.end method

.method public targetPadding(I)Lcom/wooplr/spotlight/SpotlightView$Builder;
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/wooplr/spotlight/SpotlightView$Builder;->spotlightView:Lcom/wooplr/spotlight/SpotlightView;

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView;->setPadding(I)V

    move-object v0, v2

    return-object v0
.end method

.method public usageId(Ljava/lang/String;)Lcom/wooplr/spotlight/SpotlightView$Builder;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/wooplr/spotlight/SpotlightView$Builder;->spotlightView:Lcom/wooplr/spotlight/SpotlightView;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/wooplr/spotlight/SpotlightView;->setUsageId(Ljava/lang/String;)V

    move-object v0, v2

    return-object v0
.end method
