.class Lcom/jdl/FloatingView/FloatingView$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jdl/FloatingView/FloatingView;->RestoreFloatingView()V
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

    iput-object v3, v2, Lcom/jdl/FloatingView/FloatingView$1;->this$0:Lcom/jdl/FloatingView/FloatingView;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/jdl/FloatingView/FloatingView$1;->this$0:Lcom/jdl/FloatingView/FloatingView;

    invoke-static {v2}, Lcom/jdl/FloatingView/FloatingView;->access$000(Lcom/jdl/FloatingView/FloatingView;)Landroid/widget/RelativeLayout;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/jdl/FloatingView/FloatingView;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/jdl/FloatingView/FloatingView$1;->this$0:Lcom/jdl/FloatingView/FloatingView;

    invoke-static {v2}, Lcom/jdl/FloatingView/FloatingView;->access$200(Lcom/jdl/FloatingView/FloatingView;)Landroid/view/WindowManager;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/jdl/FloatingView/FloatingView$1;->this$0:Lcom/jdl/FloatingView/FloatingView;

    invoke-static {v2}, Lcom/jdl/FloatingView/FloatingView;->access$200(Lcom/jdl/FloatingView/FloatingView;)Landroid/view/WindowManager;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/jdl/FloatingView/FloatingView$1;->this$0:Lcom/jdl/FloatingView/FloatingView;

    invoke-static {v3}, Lcom/jdl/FloatingView/FloatingView;->access$000(Lcom/jdl/FloatingView/FloatingView;)Landroid/widget/RelativeLayout;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/jdl/FloatingView/FloatingView;->access$102(Z)Z

    move-result v2

    move-object v2, v0

    iget-object v2, v2, Lcom/jdl/FloatingView/FloatingView$1;->this$0:Lcom/jdl/FloatingView/FloatingView;

    invoke-static {v2}, Lcom/jdl/FloatingView/FloatingView;->access$000(Lcom/jdl/FloatingView/FloatingView;)Landroid/widget/RelativeLayout;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/jdl/FloatingView/FloatingView$1;->this$0:Lcom/jdl/FloatingView/FloatingView;

    invoke-static {v3}, Lcom/jdl/FloatingView/FloatingView;->access$300(Lcom/jdl/FloatingView/FloatingView;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    move-object v2, v0

    iget-object v2, v2, Lcom/jdl/FloatingView/FloatingView$1;->this$0:Lcom/jdl/FloatingView/FloatingView;

    invoke-static {v2}, Lcom/jdl/FloatingView/FloatingView;->access$300(Lcom/jdl/FloatingView/FloatingView;)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Lcom/jdl/FloatingView/FloatingView$1;->this$0:Lcom/jdl/FloatingView/FloatingView;

    invoke-static {v2}, Lcom/jdl/FloatingView/FloatingView;->access$300(Lcom/jdl/FloatingView/FloatingView;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    :goto_0
    move-object v1, v2

    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object v2, v0

    iget-object v2, v2, Lcom/jdl/FloatingView/FloatingView$1;->this$0:Lcom/jdl/FloatingView/FloatingView;

    invoke-static {v2}, Lcom/jdl/FloatingView/FloatingView;->access$500(Lcom/jdl/FloatingView/FloatingView;)Landroid/view/ViewGroup;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/jdl/FloatingView/FloatingView$1;->this$0:Lcom/jdl/FloatingView/FloatingView;

    invoke-static {v3}, Lcom/jdl/FloatingView/FloatingView;->access$300(Lcom/jdl/FloatingView/FloatingView;)Landroid/view/View;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/jdl/FloatingView/FloatingView$1;->this$0:Lcom/jdl/FloatingView/FloatingView;

    invoke-static {v4}, Lcom/jdl/FloatingView/FloatingView;->access$400(Lcom/jdl/FloatingView/FloatingView;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    move-object v2, v0

    iget-object v2, v2, Lcom/jdl/FloatingView/FloatingView$1;->this$0:Lcom/jdl/FloatingView/FloatingView;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/jdl/FloatingView/FloatingView;->access$002(Lcom/jdl/FloatingView/FloatingView;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    move-result-object v2

    :cond_1
    return-void

    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/jdl/FloatingView/FloatingView$1;->this$0:Lcom/jdl/FloatingView/FloatingView;

    invoke-static {v2}, Lcom/jdl/FloatingView/FloatingView;->access$300(Lcom/jdl/FloatingView/FloatingView;)Landroid/view/View;

    move-result-object v2

    goto :goto_0
.end method
