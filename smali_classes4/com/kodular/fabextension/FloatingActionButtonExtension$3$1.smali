.class Lcom/kodular/fabextension/FloatingActionButtonExtension$3$1;
.super Ljava/lang/Object;
.source "FloatingActionButtonExtension.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kodular/fabextension/FloatingActionButtonExtension$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/kodular/fabextension/FloatingActionButtonExtension$3;


# direct methods
.method constructor <init>(Lcom/kodular/fabextension/FloatingActionButtonExtension$3;)V
    .locals 4

    .prologue
    .line 345
    move-object v0, p0

    .local v0, "this":Lcom/kodular/fabextension/FloatingActionButtonExtension$3$1;
    move-object v1, p1

    .local v1, "this$1":Lcom/kodular/fabextension/FloatingActionButtonExtension$3;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension$3$1;->this$1:Lcom/kodular/fabextension/FloatingActionButtonExtension$3;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 348
    move-object v0, p0

    .local v0, "this":Lcom/kodular/fabextension/FloatingActionButtonExtension$3$1;
    move-object v1, v0

    iget-object v1, v1, Lcom/kodular/fabextension/FloatingActionButtonExtension$3$1;->this$1:Lcom/kodular/fabextension/FloatingActionButtonExtension$3;

    iget-object v1, v1, Lcom/kodular/fabextension/FloatingActionButtonExtension$3;->this$0:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-static {v1}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->access$100(Lcom/kodular/fabextension/FloatingActionButtonExtension;)Landroid/widget/TextView;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension$3$1;->this$1:Lcom/kodular/fabextension/FloatingActionButtonExtension$3;

    iget-object v2, v2, Lcom/kodular/fabextension/FloatingActionButtonExtension$3;->this$0:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-static {v2}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->access$000(Lcom/kodular/fabextension/FloatingActionButtonExtension;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getY()F

    move-result v2

    move-object v3, v0

    iget-object v3, v3, Lcom/kodular/fabextension/FloatingActionButtonExtension$3$1;->this$1:Lcom/kodular/fabextension/FloatingActionButtonExtension$3;

    iget-object v3, v3, Lcom/kodular/fabextension/FloatingActionButtonExtension$3;->this$0:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-static {v3}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->access$000(Lcom/kodular/fabextension/FloatingActionButtonExtension;)Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->getHeight()I

    move-result v3

    int-to-double v3, v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v3, v5

    double-to-float v3, v3

    add-float/2addr v2, v3

    float-to-double v2, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/kodular/fabextension/FloatingActionButtonExtension$3$1;->this$1:Lcom/kodular/fabextension/FloatingActionButtonExtension$3;

    iget-object v4, v4, Lcom/kodular/fabextension/FloatingActionButtonExtension$3;->this$0:Lcom/kodular/fabextension/FloatingActionButtonExtension;

    invoke-static {v4}, Lcom/kodular/fabextension/FloatingActionButtonExtension;->access$100(Lcom/kodular/fabextension/FloatingActionButtonExtension;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    float-to-double v4, v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setY(F)V

    .line 349
    return-void
.end method
