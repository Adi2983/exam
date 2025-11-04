.class public Lcom/sunny/CustomWebView/CustomWebView$WebViewInterface;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunny/CustomWebView/CustomWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebViewInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sunny/CustomWebView/CustomWebView;

.field webViewString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sunny/CustomWebView/CustomWebView;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sunny/CustomWebView/CustomWebView$WebViewInterface;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/sunny/CustomWebView/CustomWebView$WebViewInterface;->webViewString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getWebViewString()Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView$WebViewInterface;->webViewString:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public setWebViewString(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sunny/CustomWebView/CustomWebView$WebViewInterface;->webViewString:Ljava/lang/String;

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView$WebViewInterface;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->activity:Landroid/app/Activity;

    new-instance v3, Lcom/sunny/CustomWebView/CustomWebView$WebViewInterface$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/sunny/CustomWebView/CustomWebView$WebViewInterface$1;-><init>(Lcom/sunny/CustomWebView/CustomWebView$WebViewInterface;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setWebViewStringFromBlocks(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sunny/CustomWebView/CustomWebView$WebViewInterface;->webViewString:Ljava/lang/String;

    return-void
.end method
