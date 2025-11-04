.class Lcom/jdl/FloatingView/FloatingView$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    iput-object v3, v2, Lcom/jdl/FloatingView/FloatingView$7;->this$0:Lcom/jdl/FloatingView/FloatingView;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v0

    iget-object v7, v7, Lcom/jdl/FloatingView/FloatingView$7;->this$0:Lcom/jdl/FloatingView/FloatingView;

    invoke-static {v7}, Lcom/jdl/FloatingView/FloatingView;->access$700(Lcom/jdl/FloatingView/FloatingView;)I

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Lcom/jdl/FloatingView/FloatingView$7;->this$0:Lcom/jdl/FloatingView/FloatingView;

    invoke-static {v8}, Lcom/jdl/FloatingView/FloatingView;->access$800(Lcom/jdl/FloatingView/FloatingView;)I

    move-result v8

    sub-int/2addr v7, v8

    move v3, v7

    move-object v7, v0

    iget-object v7, v7, Lcom/jdl/FloatingView/FloatingView$7;->this$0:Lcom/jdl/FloatingView/FloatingView;

    invoke-static {v7}, Lcom/jdl/FloatingView/FloatingView;->access$900(Lcom/jdl/FloatingView/FloatingView;)I

    move-result v7

    move-object v8, v0

    iget-object v8, v8, Lcom/jdl/FloatingView/FloatingView$7;->this$0:Lcom/jdl/FloatingView/FloatingView;

    invoke-static {v8}, Lcom/jdl/FloatingView/FloatingView;->access$1000(Lcom/jdl/FloatingView/FloatingView;)I

    move-result v8

    sub-int/2addr v7, v8

    move v4, v7

    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :cond_0
    :goto_0
    move-object v7, v0

    iget-object v7, v7, Lcom/jdl/FloatingView/FloatingView$7;->this$0:Lcom/jdl/FloatingView/FloatingView;

    invoke-static {v7}, Lcom/jdl/FloatingView/FloatingView;->access$1100(Lcom/jdl/FloatingView/FloatingView;)Z

    move-result v7

    move v0, v7

    return v0

    :pswitch_0
    move-object v7, v0

    iget-object v7, v7, Lcom/jdl/FloatingView/FloatingView$7;->this$0:Lcom/jdl/FloatingView/FloatingView;

    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    float-to-int v8, v8

    invoke-static {v7, v8}, Lcom/jdl/FloatingView/FloatingView;->access$702(Lcom/jdl/FloatingView/FloatingView;I)I

    move-result v7

    move-object v7, v0

    iget-object v7, v7, Lcom/jdl/FloatingView/FloatingView$7;->this$0:Lcom/jdl/FloatingView/FloatingView;

    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v8, v8

    invoke-static {v7, v8}, Lcom/jdl/FloatingView/FloatingView;->access$902(Lcom/jdl/FloatingView/FloatingView;I)I

    move-result v7

    move-object v7, v0

    iget-object v7, v7, Lcom/jdl/FloatingView/FloatingView$7;->this$0:Lcom/jdl/FloatingView/FloatingView;

    move-object v8, v0

    iget-object v8, v8, Lcom/jdl/FloatingView/FloatingView$7;->this$0:Lcom/jdl/FloatingView/FloatingView;

    invoke-static {v8}, Lcom/jdl/FloatingView/FloatingView;->access$700(Lcom/jdl/FloatingView/FloatingView;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/jdl/FloatingView/FloatingView;->access$802(Lcom/jdl/FloatingView/FloatingView;I)I

    move-result v7

    move-object v7, v0

    iget-object v7, v7, Lcom/jdl/FloatingView/FloatingView$7;->this$0:Lcom/jdl/FloatingView/FloatingView;

    move-object v8, v0

    iget-object v8, v8, Lcom/jdl/FloatingView/FloatingView$7;->this$0:Lcom/jdl/FloatingView/FloatingView;

    invoke-static {v8}, Lcom/jdl/FloatingView/FloatingView;->access$900(Lcom/jdl/FloatingView/FloatingView;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/jdl/FloatingView/FloatingView;->access$1002(Lcom/jdl/FloatingView/FloatingView;I)I

    move-result v7

    move-object v7, v0

    iget-object v7, v7, Lcom/jdl/FloatingView/FloatingView$7;->this$0:Lcom/jdl/FloatingView/FloatingView;

    move-object v8, v0

    iget-object v8, v8, Lcom/jdl/FloatingView/FloatingView$7;->this$0:Lcom/jdl/FloatingView/FloatingView;

    invoke-static {v8}, Lcom/jdl/FloatingView/FloatingView;->access$1200(Lcom/jdl/FloatingView/FloatingView;)Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v8, 0x1

    :goto_1
    invoke-static {v7, v8}, Lcom/jdl/FloatingView/FloatingView;->access$1102(Lcom/jdl/FloatingView/FloatingView;Z)Z

    move-result v7

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    :pswitch_1
    move-object v7, v0

    iget-object v7, v7, Lcom/jdl/FloatingView/FloatingView$7;->this$0:Lcom/jdl/FloatingView/FloatingView;

    move-object v8, v0

    iget-object v8, v8, Lcom/jdl/FloatingView/FloatingView$7;->this$0:Lcom/jdl/FloatingView/FloatingView;

    invoke-static {v8}, Lcom/jdl/FloatingView/FloatingView;->access$1200(Lcom/jdl/FloatingView/FloatingView;)Z

    move-result v8

    if-nez v8, :cond_2

    const/4 v8, 0x1

    :goto_2
    invoke-static {v7, v8}, Lcom/jdl/FloatingView/FloatingView;->access$1102(Lcom/jdl/FloatingView/FloatingView;Z)Z

    move-result v7

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    :pswitch_2
    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v7, v7

    move-object v8, v0

    iget-object v8, v8, Lcom/jdl/FloatingView/FloatingView$7;->this$0:Lcom/jdl/FloatingView/FloatingView;

    invoke-static {v8}, Lcom/jdl/FloatingView/FloatingView;->access$700(Lcom/jdl/FloatingView/FloatingView;)I

    move-result v8

    sub-int/2addr v7, v8

    move v5, v7

    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v7, v7

    move-object v8, v0

    iget-object v8, v8, Lcom/jdl/FloatingView/FloatingView$7;->this$0:Lcom/jdl/FloatingView/FloatingView;

    invoke-static {v8}, Lcom/jdl/FloatingView/FloatingView;->access$900(Lcom/jdl/FloatingView/FloatingView;)I

    move-result v8

    sub-int/2addr v7, v8

    move v6, v7

    move-object v7, v0

    iget-object v7, v7, Lcom/jdl/FloatingView/FloatingView$7;->this$0:Lcom/jdl/FloatingView/FloatingView;

    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    float-to-int v8, v8

    invoke-static {v7, v8}, Lcom/jdl/FloatingView/FloatingView;->access$702(Lcom/jdl/FloatingView/FloatingView;I)I

    move-result v7

    move-object v7, v0

    iget-object v7, v7, Lcom/jdl/FloatingView/FloatingView$7;->this$0:Lcom/jdl/FloatingView/FloatingView;

    move-object v8, v2

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    float-to-int v8, v8

    invoke-static {v7, v8}, Lcom/jdl/FloatingView/FloatingView;->access$902(Lcom/jdl/FloatingView/FloatingView;I)I

    move-result v7

    move v7, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    const/4 v8, 0x5

    if-ge v7, v8, :cond_3

    move v7, v4

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    const/4 v8, 0x5

    if-lt v7, v8, :cond_5

    :cond_3
    move-object v7, v2

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    move-object v7, v0

    iget-object v7, v7, Lcom/jdl/FloatingView/FloatingView$7;->this$0:Lcom/jdl/FloatingView/FloatingView;

    invoke-static {v7}, Lcom/jdl/FloatingView/FloatingView;->access$600(Lcom/jdl/FloatingView/FloatingView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    move v9, v5

    add-int/2addr v8, v9

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object v7, v0

    iget-object v7, v7, Lcom/jdl/FloatingView/FloatingView$7;->this$0:Lcom/jdl/FloatingView/FloatingView;

    invoke-static {v7}, Lcom/jdl/FloatingView/FloatingView;->access$600(Lcom/jdl/FloatingView/FloatingView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    move v9, v6

    add-int/2addr v8, v9

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object v7, v0

    iget-object v7, v7, Lcom/jdl/FloatingView/FloatingView$7;->this$0:Lcom/jdl/FloatingView/FloatingView;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/jdl/FloatingView/FloatingView;->access$1102(Lcom/jdl/FloatingView/FloatingView;Z)Z

    move-result v7

    move-object v7, v0

    iget-object v7, v7, Lcom/jdl/FloatingView/FloatingView$7;->this$0:Lcom/jdl/FloatingView/FloatingView;

    invoke-static {v7}, Lcom/jdl/FloatingView/FloatingView;->access$200(Lcom/jdl/FloatingView/FloatingView;)Landroid/view/WindowManager;

    move-result-object v7

    if-eqz v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Lcom/jdl/FloatingView/FloatingView$7;->this$0:Lcom/jdl/FloatingView/FloatingView;

    move-object v8, v0

    iget-object v8, v8, Lcom/jdl/FloatingView/FloatingView$7;->this$0:Lcom/jdl/FloatingView/FloatingView;

    invoke-static {v8}, Lcom/jdl/FloatingView/FloatingView;->access$600(Lcom/jdl/FloatingView/FloatingView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object v9, v0

    iget-object v9, v9, Lcom/jdl/FloatingView/FloatingView$7;->this$0:Lcom/jdl/FloatingView/FloatingView;

    invoke-static {v9}, Lcom/jdl/FloatingView/FloatingView;->access$600(Lcom/jdl/FloatingView/FloatingView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v7, v8, v9}, Lcom/jdl/FloatingView/FloatingView;->PositionMoved(II)V

    move-object v7, v0

    iget-object v7, v7, Lcom/jdl/FloatingView/FloatingView$7;->this$0:Lcom/jdl/FloatingView/FloatingView;

    invoke-static {v7}, Lcom/jdl/FloatingView/FloatingView;->access$200(Lcom/jdl/FloatingView/FloatingView;)Landroid/view/WindowManager;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lcom/jdl/FloatingView/FloatingView$7;->this$0:Lcom/jdl/FloatingView/FloatingView;

    invoke-static {v8}, Lcom/jdl/FloatingView/FloatingView;->access$000(Lcom/jdl/FloatingView/FloatingView;)Landroid/widget/RelativeLayout;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Lcom/jdl/FloatingView/FloatingView$7;->this$0:Lcom/jdl/FloatingView/FloatingView;

    invoke-static {v9}, Lcom/jdl/FloatingView/FloatingView;->access$600(Lcom/jdl/FloatingView/FloatingView;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_4
    move-object v7, v0

    iget-object v7, v7, Lcom/jdl/FloatingView/FloatingView$7;->this$0:Lcom/jdl/FloatingView/FloatingView;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/jdl/FloatingView/FloatingView;->access$1102(Lcom/jdl/FloatingView/FloatingView;Z)Z

    move-result v7

    goto/16 :goto_0

    :cond_5
    move-object v7, v0

    iget-object v7, v7, Lcom/jdl/FloatingView/FloatingView$7;->this$0:Lcom/jdl/FloatingView/FloatingView;

    const/4 v8, 0x0

    invoke-static {v7, v8}, Lcom/jdl/FloatingView/FloatingView;->access$1102(Lcom/jdl/FloatingView/FloatingView;Z)Z

    move-result v7

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
