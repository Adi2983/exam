.class Lcom/kodular/fabextension/FloatingActionButtonExtension$1;
.super Ljava/lang/Object;
.source "FloatingActionButtonExtension.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kodular/fabextension/FloatingActionButtonExtension;->showText()V
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
    .line 306
    move-object v0, p0

    .local v0, "this":Lcom/kodular/fabextension/FloatingActionButtonExtension$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension$1;->this$0:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 309
    move-object v0, p0

    .local v0, "this":Lcom/kodular/fabextension/FloatingActionButtonExtension$1;
    move-object v1, p1

    .local v1, "v":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension$1;->this$0:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-virtual {v2}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->isHideTextOnClick()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 310
    move-object v2, v0

    iget-object v2, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension$1;->this$0:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-virtual {v2}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->hideText()V

    .line 312
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension$1;->this$0:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-virtual {v2}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->isCallFabClickOnTextClick()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 313
    move-object v2, v0

    iget-object v2, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension$1;->this$0:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-static {v2}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->access$000(Lcom/kodular/fabextension/FloatingActionButtonExtension;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 314
    move-object v2, v0

    iget-object v2, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension$1;->this$0:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-static {v2}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->access$000(Lcom/kodular/fabextension/FloatingActionButtonExtension;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->performClick()Z

    move-result v2

    .line 317
    :cond_1
    return-void
.end method
