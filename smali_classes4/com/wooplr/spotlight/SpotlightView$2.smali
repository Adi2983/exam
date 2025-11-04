.class Lcom/wooplr/spotlight/SpotlightView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wooplr/spotlight/SpotlightView;->startRevealAnimation(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wooplr/spotlight/SpotlightView;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/wooplr/spotlight/SpotlightView;Landroid/app/Activity;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    iput-object v6, v5, Lcom/wooplr/spotlight/SpotlightView$2;->this$0:Lcom/wooplr/spotlight/SpotlightView;

    move-object v5, v2

    iput-object v5, v4, Lcom/wooplr/spotlight/SpotlightView$2;->val$activity:Landroid/app/Activity;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/wooplr/spotlight/SpotlightView$2;->this$0:Lcom/wooplr/spotlight/SpotlightView;

    invoke-static {v2}, Lcom/wooplr/spotlight/SpotlightView;->access$300(Lcom/wooplr/spotlight/SpotlightView;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/wooplr/spotlight/SpotlightView$2;->this$0:Lcom/wooplr/spotlight/SpotlightView;

    move-object v3, v0

    iget-object v3, v3, Lcom/wooplr/spotlight/SpotlightView$2;->val$activity:Landroid/app/Activity;

    invoke-static {v2, v3}, Lcom/wooplr/spotlight/SpotlightView;->access$400(Lcom/wooplr/spotlight/SpotlightView;Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/wooplr/spotlight/SpotlightView$2;->this$0:Lcom/wooplr/spotlight/SpotlightView;

    move-object v3, v0

    iget-object v3, v3, Lcom/wooplr/spotlight/SpotlightView$2;->val$activity:Landroid/app/Activity;

    invoke-static {v2, v3}, Lcom/wooplr/spotlight/SpotlightView;->access$500(Lcom/wooplr/spotlight/SpotlightView;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
