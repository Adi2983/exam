.class Lcom/kodular/fabextension/FloatingActionButtonExtension$5;
.super Ljava/lang/Object;
.source "FloatingActionButtonExtension.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kodular/fabextension/FloatingActionButtonExtension;->hideText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kodular/fabextension/FloatingActionButtonExtension;


# direct methods
.method constructor <init>(Lcom/kodular/fabextension/FloatingActionButtonExtension;)V
    .locals 4

    .prologue
    .line 396
    move-object v0, p0

    .local v0, "this":Lcom/kodular/fabextension/FloatingActionButtonExtension$5;
    move-object v1, p1

    .local v1, "this$0":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension$5;->this$0:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 400
    move-object v0, p0

    .local v0, "this":Lcom/kodular/fabextension/FloatingActionButtonExtension$5;
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension$5;->this$0:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-static {v2}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->access$100(Lcom/kodular/fabextension/FloatingActionButtonExtension;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object v1, v2

    .line 401
    .local v1, "viewGroup":Landroid/view/ViewGroup;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 402
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/kodular/fabextension/FloatingActionButtonExtension$5;->this$0:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-static {v3}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->access$100(Lcom/kodular/fabextension/FloatingActionButtonExtension;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 404
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension$5;->this$0:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->access$302(Lcom/kodular/fabextension/FloatingActionButtonExtension;Z)Z

    move-result v2

    .line 405
    move-object v2, v0

    iget-object v2, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension$5;->this$0:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->access$102(Lcom/kodular/fabextension/FloatingActionButtonExtension;Landroid/widget/TextView;)Landroid/widget/TextView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 408
    .line 409
    .end local v1    # "viewGroup":Landroid/view/ViewGroup;
    :goto_0
    return-void

    .line 406
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 407
    .local v1, "e":Ljava/lang/Exception;
    move-object v2, v0

    iget-object v2, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension$5;->this$0:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-static {v2}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->access$400(Lcom/kodular/fabextension/FloatingActionButtonExtension;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method
