.class Lcom/wooplr/spotlight/SpotlightView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wooplr/spotlight/SpotlightView;->show(Landroid/app/Activity;)V
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

    iput-object v6, v5, Lcom/wooplr/spotlight/SpotlightView$1;->this$0:Lcom/wooplr/spotlight/SpotlightView;

    move-object v5, v2

    iput-object v5, v4, Lcom/wooplr/spotlight/SpotlightView$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    move-object v0, p0

    const/4 v3, 0x1

    move v1, v3

    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    move v5, v3

    move v3, v5

    move v4, v5

    move v2, v4

    const/16 v4, 0x13

    if-lt v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/wooplr/spotlight/SpotlightView$1;->this$0:Lcom/wooplr/spotlight/SpotlightView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v3

    move v1, v3

    :cond_0
    move v3, v1

    if-eqz v3, :cond_1

    move v3, v2

    const/16 v4, 0x15

    if-lt v3, v4, :cond_3

    move-object v3, v0

    iget-object v3, v3, Lcom/wooplr/spotlight/SpotlightView$1;->this$0:Lcom/wooplr/spotlight/SpotlightView;

    invoke-static {v3}, Lcom/wooplr/spotlight/SpotlightView;->access$000(Lcom/wooplr/spotlight/SpotlightView;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lcom/wooplr/spotlight/SpotlightView$1;->this$0:Lcom/wooplr/spotlight/SpotlightView;

    move-object v4, v0

    iget-object v4, v4, Lcom/wooplr/spotlight/SpotlightView$1;->val$activity:Landroid/app/Activity;

    invoke-static {v3, v4}, Lcom/wooplr/spotlight/SpotlightView;->access$100(Lcom/wooplr/spotlight/SpotlightView;Landroid/app/Activity;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/wooplr/spotlight/SpotlightView$1;->this$0:Lcom/wooplr/spotlight/SpotlightView;

    move-object v4, v0

    iget-object v4, v4, Lcom/wooplr/spotlight/SpotlightView$1;->val$activity:Landroid/app/Activity;

    :goto_1
    invoke-static {v3, v4}, Lcom/wooplr/spotlight/SpotlightView;->access$200(Lcom/wooplr/spotlight/SpotlightView;Landroid/app/Activity;)V

    goto :goto_0

    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/wooplr/spotlight/SpotlightView$1;->this$0:Lcom/wooplr/spotlight/SpotlightView;

    move-object v4, v0

    iget-object v4, v4, Lcom/wooplr/spotlight/SpotlightView$1;->val$activity:Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
