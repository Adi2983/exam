.class Lcom/wooplr/spotlight/SpotlightView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wooplr/spotlight/SpotlightView;->startFadeout()V
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

    iput-object v4, v3, Lcom/wooplr/spotlight/SpotlightView$5;->this$0:Lcom/wooplr/spotlight/SpotlightView;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget-object v3, v3, Lcom/wooplr/spotlight/SpotlightView$5;->this$0:Lcom/wooplr/spotlight/SpotlightView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v2, v2, Lcom/wooplr/spotlight/SpotlightView$5;->this$0:Lcom/wooplr/spotlight/SpotlightView;

    invoke-static {v2}, Lcom/wooplr/spotlight/SpotlightView;->access$600(Lcom/wooplr/spotlight/SpotlightView;)V

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
