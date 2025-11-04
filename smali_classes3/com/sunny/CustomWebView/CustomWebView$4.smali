.class Lcom/sunny/CustomWebView/CustomWebView$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunny/CustomWebView/CustomWebView;->resetWebView(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sunny/CustomWebView/CustomWebView;

.field final synthetic val$web:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Lcom/sunny/CustomWebView/CustomWebView;Landroid/webkit/WebView;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sunny/CustomWebView/CustomWebView$4;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sunny/CustomWebView/CustomWebView$4;->val$web:Landroid/webkit/WebView;

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    iget-object v7, v7, Lcom/sunny/CustomWebView/CustomWebView$4;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    iget-object v7, v7, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v7

    move-object v2, v7

    move-object v7, v2

    invoke-virtual {v7}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    move-object v7, v2

    invoke-virtual {v7}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v7

    move v4, v7

    move v7, v4

    if-eqz v7, :cond_2

    move-object v7, v3

    if-nez v7, :cond_0

    const-string/jumbo v7, ""

    move-object v3, v7

    :cond_0
    const-string/jumbo v7, ""

    move-object v5, v7

    move v7, v4

    const/16 v8, 0x8

    if-ne v7, v8, :cond_1

    new-instance v7, Landroid/os/Handler;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v7}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v7

    move-object v6, v7

    move-object v7, v0

    iget-object v7, v7, Lcom/sunny/CustomWebView/CustomWebView$4;->val$web:Landroid/webkit/WebView;

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->requestFocusNodeHref(Landroid/os/Message;)V

    move-object v7, v6

    invoke-virtual {v7}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "url"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v5, v7

    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lcom/sunny/CustomWebView/CustomWebView$4;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v8, v0

    iget-object v8, v8, Lcom/sunny/CustomWebView/CustomWebView$4;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v9, v0

    iget-object v9, v9, Lcom/sunny/CustomWebView/CustomWebView$4;->val$web:Landroid/webkit/WebView;

    invoke-virtual {v8, v9}, Lcom/sunny/CustomWebView/CustomWebView;->getIndex(Landroid/webkit/WebView;)I

    move-result v8

    move-object v9, v3

    move-object v10, v5

    move v11, v4

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/sunny/CustomWebView/CustomWebView;->LongClicked(ILjava/lang/String;Ljava/lang/String;I)V

    move-object v7, v0

    iget-object v7, v7, Lcom/sunny/CustomWebView/CustomWebView$4;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    iget-object v7, v7, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->isLongClickable()Z

    move-result v7

    move v0, v7

    :goto_0
    return v0

    :cond_2
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0
.end method
