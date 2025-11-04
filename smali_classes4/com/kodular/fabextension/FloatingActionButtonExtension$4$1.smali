.class Lcom/kodular/fabextension/FloatingActionButtonExtension$4$1;
.super Ljava/lang/Object;
.source "FloatingActionButtonExtension.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kodular/fabextension/FloatingActionButtonExtension$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kodular/fabextension/FloatingActionButtonExtension$4;


# direct methods
.method constructor <init>(Lcom/kodular/fabextension/FloatingActionButtonExtension$4;)V
    .locals 4

    .prologue
    .line 370
    move-object v0, p0

    .local v0, "this":Lcom/kodular/fabextension/FloatingActionButtonExtension$4$1;
    move-object v1, p1

    .local v1, "this$1":Lcom/kodular/fabextension/FloatingActionButtonExtension$4;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension$4$1;->this$1:Lcom/kodular/fabextension/FloatingActionButtonExtension$4;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 373
    move-object v0, p0

    .local v0, "this":Lcom/kodular/fabextension/FloatingActionButtonExtension$4$1;
    move-object v1, v0

    iget-object v1, v1, Lcom/kodular/fabextension/FloatingActionButtonExtension$4$1;->this$1:Lcom/kodular/fabextension/FloatingActionButtonExtension$4;

    iget-object v1, v1, Lcom/kodular/fabextension/FloatingActionButtonExtension$4;->this$0:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-virtual {v1}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->isShowTextOnLeftSide()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 374
    move-object v1, v0

    iget-object v1, v1, Lcom/kodular/fabextension/FloatingActionButtonExtension$4$1;->this$1:Lcom/kodular/fabextension/FloatingActionButtonExtension$4;

    iget-object v1, v1, Lcom/kodular/fabextension/FloatingActionButtonExtension$4;->this$0:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-static {v1}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->access$100(Lcom/kodular/fabextension/FloatingActionButtonExtension;)Landroid/widget/TextView;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension$4$1;->this$1:Lcom/kodular/fabextension/FloatingActionButtonExtension$4;

    iget-object v2, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension$4;->this$0:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-static {v2}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->access$000(Lcom/kodular/fabextension/FloatingActionButtonExtension;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getX()F

    move-result v2

    move-object v3, v0

    iget-object v3, v3, Lcom/kodular/fabextension/FloatingActionButtonExtension$4$1;->this$1:Lcom/kodular/fabextension/FloatingActionButtonExtension$4;

    iget-object v3, v3, Lcom/kodular/fabextension/FloatingActionButtonExtension$4;->this$0:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-static {v3}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->access$100(Lcom/kodular/fabextension/FloatingActionButtonExtension;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/kodular/fabextension/FloatingActionButtonExtension$4$1;->this$1:Lcom/kodular/fabextension/FloatingActionButtonExtension$4;

    iget-object v3, v3, Lcom/kodular/fabextension/FloatingActionButtonExtension$4;->this$0:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    const/16 v4, 0x10

    invoke-static {v3, v4}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->access$200(Lcom/kodular/fabextension/FloatingActionButtonExtension;I)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setX(F)V

    .line 378
    :goto_0
    return-void

    .line 376
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/kodular/fabextension/FloatingActionButtonExtension$4$1;->this$1:Lcom/kodular/fabextension/FloatingActionButtonExtension$4;

    iget-object v1, v1, Lcom/kodular/fabextension/FloatingActionButtonExtension$4;->this$0:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-static {v1}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->access$100(Lcom/kodular/fabextension/FloatingActionButtonExtension;)Landroid/widget/TextView;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension$4$1;->this$1:Lcom/kodular/fabextension/FloatingActionButtonExtension$4;

    iget-object v2, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension$4;->this$0:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-static {v2}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->access$000(Lcom/kodular/fabextension/FloatingActionButtonExtension;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getX()F

    move-result v2

    move-object v3, v0

    iget-object v3, v3, Lcom/kodular/fabextension/FloatingActionButtonExtension$4$1;->this$1:Lcom/kodular/fabextension/FloatingActionButtonExtension$4;

    iget-object v3, v3, Lcom/kodular/fabextension/FloatingActionButtonExtension$4;->this$0:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-static {v3}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->access$000(Lcom/kodular/fabextension/FloatingActionButtonExtension;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/kodular/fabextension/FloatingActionButtonExtension$4$1;->this$1:Lcom/kodular/fabextension/FloatingActionButtonExtension$4;

    iget-object v3, v3, Lcom/kodular/fabextension/FloatingActionButtonExtension$4;->this$0:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    const/16 v4, 0x10

    invoke-static {v3, v4}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->access$200(Lcom/kodular/fabextension/FloatingActionButtonExtension;I)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setX(F)V

    goto :goto_0
.end method
