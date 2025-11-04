.class Lcom/jdl/FloatingView/FloatingView$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jdl/FloatingView/FloatingView;->dismissFloatView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jdl/FloatingView/FloatingView;


# direct methods
.method constructor <init>(Lcom/jdl/FloatingView/FloatingView;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/jdl/FloatingView/FloatingView$5;->this$0:Lcom/jdl/FloatingView/FloatingView;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/jdl/FloatingView/FloatingView$5;->this$0:Lcom/jdl/FloatingView/FloatingView;

    invoke-static {v1}, Lcom/jdl/FloatingView/FloatingView;->access$200(Lcom/jdl/FloatingView/FloatingView;)Landroid/view/WindowManager;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/jdl/FloatingView/FloatingView$5;->this$0:Lcom/jdl/FloatingView/FloatingView;

    invoke-static {v1}, Lcom/jdl/FloatingView/FloatingView;->access$200(Lcom/jdl/FloatingView/FloatingView;)Landroid/view/WindowManager;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/jdl/FloatingView/FloatingView$5;->this$0:Lcom/jdl/FloatingView/FloatingView;

    invoke-static {v2}, Lcom/jdl/FloatingView/FloatingView;->access$000(Lcom/jdl/FloatingView/FloatingView;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_0
    return-void
.end method
