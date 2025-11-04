.class Lcom/sunny/CustomWebView/CustomWebView$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunny/CustomWebView/CustomWebView;->ScrollTo(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sunny/CustomWebView/CustomWebView;

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/sunny/CustomWebView/CustomWebView;II)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sunny/CustomWebView/CustomWebView$9;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/sunny/CustomWebView/CustomWebView$9;->val$x:I

    move-object v4, v0

    move v5, v3

    iput v5, v4, Lcom/sunny/CustomWebView/CustomWebView$9;->val$y:I

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView$9;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView$9;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v3, v0

    iget v3, v3, Lcom/sunny/CustomWebView/CustomWebView$9;->val$x:I

    invoke-virtual {v2, v3}, Lcom/sunny/CustomWebView/CustomWebView;->p2d(I)I

    move-result v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sunny/CustomWebView/CustomWebView$9;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v4, v0

    iget v4, v4, Lcom/sunny/CustomWebView/CustomWebView$9;->val$y:I

    invoke-virtual {v3, v4}, Lcom/sunny/CustomWebView/CustomWebView;->p2d(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/webkit/WebView;->scrollTo(II)V

    return-void
.end method
