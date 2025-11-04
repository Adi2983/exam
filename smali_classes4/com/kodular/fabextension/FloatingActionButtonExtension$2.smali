.class Lcom/kodular/fabextension/FloatingActionButtonExtension$2;
.super Ljava/lang/Object;
.source "FloatingActionButtonExtension.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 319
    move-object v0, p0

    .local v0, "this":Lcom/kodular/fabextension/FloatingActionButtonExtension$2;
    move-object v1, p1

    .local v1, "this$0":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension$2;->this$0:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .prologue
    .line 322
    move-object v0, p0

    .local v0, "this":Lcom/kodular/fabextension/FloatingActionButtonExtension$2;
    move-object v1, p1

    .local v1, "v":Landroid/view/View;
    move-object v2, v0

    iget-object v2, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension$2;->this$0:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-virtual {v2}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->isHideTextOnLongClick()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 323
    move-object v2, v0

    iget-object v2, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension$2;->this$0:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-virtual {v2}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->hideText()V

    .line 325
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension$2;->this$0:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-virtual {v2}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->isCallFabLongClickOnTextLongClick()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 326
    move-object v2, v0

    iget-object v2, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension$2;->this$0:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-static {v2}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->access$000(Lcom/kodular/fabextension/FloatingActionButtonExtension;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 327
    move-object v2, v0

    iget-object v2, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension$2;->this$0:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-static {v2}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->access$000(Lcom/kodular/fabextension/FloatingActionButtonExtension;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->performLongClick()Z

    move-result v2

    .line 330
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension$2;->this$0:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-virtual {v2}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->isHideTextOnLongClick()Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/kodular/fabextension/FloatingActionButtonExtension$2;
    return v0
.end method
