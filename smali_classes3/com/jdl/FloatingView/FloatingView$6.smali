.class Lcom/jdl/FloatingView/FloatingView$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jdl/FloatingView/FloatingView;->floatViewHV(II)V
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

    iput-object v3, v2, Lcom/jdl/FloatingView/FloatingView$6;->this$0:Lcom/jdl/FloatingView/FloatingView;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/jdl/FloatingView/FloatingView$6;->this$0:Lcom/jdl/FloatingView/FloatingView;

    invoke-virtual {v2}, Lcom/jdl/FloatingView/FloatingView;->ClickView()V

    return-void
.end method
