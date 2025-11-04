.class Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->getLineAnim()Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;


# direct methods
.method constructor <init>(Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    iput-object v4, v3, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$1;->this$0:Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$1;->this$0:Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;

    invoke-static {v2}, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->access$300(Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$1;->this$0:Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;

    invoke-static {v2}, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->access$300(Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$1;->this$0:Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;

    invoke-static {v2}, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->access$300(Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$1;->this$0:Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;

    invoke-static {v2}, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->access$300(Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget-object v4, v4, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$1;->this$0:Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;

    invoke-static {v4}, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->access$008(Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;)I

    move-result v4

    iget-object v3, v3, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$1;->this$0:Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-static {v4}, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->access$200(Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;)Ljava/util/List;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$1;->this$0:Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;

    invoke-static {v5}, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->access$000(Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;)I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wooplr/spotlight/target/AnimPoint;

    invoke-static {v3, v4}, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->access$102(Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;Lcom/wooplr/spotlight/target/AnimPoint;)Lcom/wooplr/spotlight/target/AnimPoint;

    move-result-object v3

    iget-object v2, v2, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$1;->this$0:Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;

    invoke-static {v2}, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->access$300(Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$1;->this$0:Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;

    invoke-static {v2}, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->access$300(Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget-object v4, v4, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$1;->this$0:Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->access$002(Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;I)I

    move-result v4

    iget-object v3, v3, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$1;->this$0:Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-static {v4}, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->access$200(Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;)Ljava/util/List;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$1;->this$0:Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;

    invoke-static {v5}, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->access$000(Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;)I

    move-result v5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wooplr/spotlight/target/AnimPoint;

    invoke-static {v3, v4}, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->access$102(Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;Lcom/wooplr/spotlight/target/AnimPoint;)Lcom/wooplr/spotlight/target/AnimPoint;

    move-result-object v3

    iget-object v2, v2, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$1;->this$0:Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;

    invoke-static {v2}, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->access$300(Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable$1;->this$0:Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;

    invoke-static {v2}, Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;->access$300(Lcom/wooplr/spotlight/shape/NormalLineAnimDrawable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method
