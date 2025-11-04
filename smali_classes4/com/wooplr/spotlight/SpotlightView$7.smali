.class Lcom/wooplr/spotlight/SpotlightView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wooplr/spotlight/SpotlightView;->addPathAnimation(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wooplr/spotlight/SpotlightView;


# direct methods
.method constructor <init>(Lcom/wooplr/spotlight/SpotlightView;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    iput-object v4, v3, Lcom/wooplr/spotlight/SpotlightView$7;->this$0:Lcom/wooplr/spotlight/SpotlightView;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v2, v0

    move-object v13, v2

    move-object v2, v13

    move-object v3, v13

    move-object v13, v2

    move-object v14, v3

    move-object v2, v13

    move-object v3, v14

    move-object v4, v13

    move-object v5, v14

    new-instance v6, Landroid/view/animation/AlphaAnimation;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v1, v8

    move-object v8, v0

    move-object v9, v1

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v10, v11, v12}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance v10, Lcom/wooplr/spotlight/SpotlightView$7$1;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v0

    invoke-direct {v11, v12}, Lcom/wooplr/spotlight/SpotlightView$7$1;-><init>(Lcom/wooplr/spotlight/SpotlightView$7;)V

    invoke-virtual {v9, v10}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v8, v8, Lcom/wooplr/spotlight/SpotlightView$7;->this$0:Lcom/wooplr/spotlight/SpotlightView;

    invoke-static {v8}, Lcom/wooplr/spotlight/SpotlightView;->access$900(Lcom/wooplr/spotlight/SpotlightView;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    iget-object v5, v5, Lcom/wooplr/spotlight/SpotlightView$7;->this$0:Lcom/wooplr/spotlight/SpotlightView;

    invoke-static {v5}, Lcom/wooplr/spotlight/SpotlightView;->access$1000(Lcom/wooplr/spotlight/SpotlightView;)Landroid/widget/TextView;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v4, v4, Lcom/wooplr/spotlight/SpotlightView$7;->this$0:Lcom/wooplr/spotlight/SpotlightView;

    invoke-static {v4}, Lcom/wooplr/spotlight/SpotlightView;->access$1100(Lcom/wooplr/spotlight/SpotlightView;)Landroid/widget/TextView;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, v3, Lcom/wooplr/spotlight/SpotlightView$7;->this$0:Lcom/wooplr/spotlight/SpotlightView;

    invoke-static {v3}, Lcom/wooplr/spotlight/SpotlightView;->access$1000(Lcom/wooplr/spotlight/SpotlightView;)Landroid/widget/TextView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v2, Lcom/wooplr/spotlight/SpotlightView$7;->this$0:Lcom/wooplr/spotlight/SpotlightView;

    invoke-static {v2}, Lcom/wooplr/spotlight/SpotlightView;->access$1100(Lcom/wooplr/spotlight/SpotlightView;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
