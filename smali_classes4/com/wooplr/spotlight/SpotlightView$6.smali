.class Lcom/wooplr/spotlight/SpotlightView$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wooplr/spotlight/SpotlightView;->addArcAnimation(Landroid/app/Activity;)V
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

    iput-object v6, v5, Lcom/wooplr/spotlight/SpotlightView$6;->this$0:Lcom/wooplr/spotlight/SpotlightView;

    move-object v5, v2

    iput-object v5, v4, Lcom/wooplr/spotlight/SpotlightView$6;->val$activity:Landroid/app/Activity;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/wooplr/spotlight/SpotlightView$6;->this$0:Lcom/wooplr/spotlight/SpotlightView;

    move-object v2, v0

    iget-object v2, v2, Lcom/wooplr/spotlight/SpotlightView$6;->val$activity:Landroid/app/Activity;

    invoke-static {v1, v2}, Lcom/wooplr/spotlight/SpotlightView;->access$500(Lcom/wooplr/spotlight/SpotlightView;Landroid/app/Activity;)V

    return-void
.end method
