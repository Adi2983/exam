.class Lcom/wooplr/spotlight/SpotlightView$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wooplr/spotlight/SpotlightView$7;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wooplr/spotlight/SpotlightView$7;


# direct methods
.method constructor <init>(Lcom/wooplr/spotlight/SpotlightView$7;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    iput-object v4, v3, Lcom/wooplr/spotlight/SpotlightView$7$1;->this$1:Lcom/wooplr/spotlight/SpotlightView$7;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/wooplr/spotlight/SpotlightView$7$1;->this$1:Lcom/wooplr/spotlight/SpotlightView$7;

    iget-object v2, v2, Lcom/wooplr/spotlight/SpotlightView$7;->this$0:Lcom/wooplr/spotlight/SpotlightView;

    invoke-static {v2}, Lcom/wooplr/spotlight/SpotlightView;->access$700(Lcom/wooplr/spotlight/SpotlightView;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/wooplr/spotlight/SpotlightView$7$1;->this$1:Lcom/wooplr/spotlight/SpotlightView$7;

    iget-object v2, v2, Lcom/wooplr/spotlight/SpotlightView$7;->this$0:Lcom/wooplr/spotlight/SpotlightView;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/wooplr/spotlight/SpotlightView;->access$802(Lcom/wooplr/spotlight/SpotlightView;Z)Z

    move-result v2

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
