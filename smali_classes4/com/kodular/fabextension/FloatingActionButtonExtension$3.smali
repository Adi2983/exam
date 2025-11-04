.class Lcom/kodular/fabextension/FloatingActionButtonExtension$3;
.super Ljava/lang/Object;
.source "FloatingActionButtonExtension.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 342
    move-object v0, p0

    .local v0, "this":Lcom/kodular/fabextension/FloatingActionButtonExtension$3;
    move-object v1, p1

    .local v1, "this$0":Lcom/kodular/fabextension/FloatingActionButtonExtension;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension$3;->this$0:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 345
    move-object v0, p0

    .local v0, "this":Lcom/kodular/fabextension/FloatingActionButtonExtension$3;
    move-object v1, v0

    iget-object v1, v1, Lcom/kodular/fabextension/FloatingActionButtonExtension$3;->this$0:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-static {v1}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->access$000(Lcom/kodular/fabextension/FloatingActionButtonExtension;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v1

    new-instance v2, Lcom/kodular/fabextension/FloatingActionButtonExtension$3$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/kodular/fabextension/FloatingActionButtonExtension$3$1;-><init>(Lcom/kodular/fabextension/FloatingActionButtonExtension$3;)V

    invoke-virtual {v1, v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->post(Ljava/lang/Runnable;)Z

    move-result v1

    .line 351
    return-void
.end method
