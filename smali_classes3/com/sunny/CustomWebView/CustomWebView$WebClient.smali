.class public Lcom/sunny/CustomWebView/CustomWebView$WebClient;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunny/CustomWebView/CustomWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebClient"
.end annotation


# instance fields
.field public loadedUrls:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sunny/CustomWebView/CustomWebView;


# direct methods
.method public constructor <init>(Lcom/sunny/CustomWebView/CustomWebView;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sunny/CustomWebView/CustomWebView$WebClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v2, v0

    invoke-direct {v2}, Landroid/webkit/WebViewClient;-><init>()V

    move-object v2, v0

    new-instance v3, Ljava/util/HashMap;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lcom/sunny/CustomWebView/CustomWebView$WebClient;->loadedUrls:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Lcom/sunny/CustomWebView/CustomWebView$WebClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v5, v2

    iput-object v5, v4, Lcom/sunny/CustomWebView/CustomWebView;->dontSend:Landroid/os/Message;

    move-object v4, v0

    iget-object v4, v4, Lcom/sunny/CustomWebView/CustomWebView$WebClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v5, v3

    iput-object v5, v4, Lcom/sunny/CustomWebView/CustomWebView;->reSend:Landroid/os/Message;

    move-object v4, v0

    iget-object v4, v4, Lcom/sunny/CustomWebView/CustomWebView$WebClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v5, v0

    iget-object v5, v5, Lcom/sunny/CustomWebView/CustomWebView$WebClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v6, v1

    invoke-virtual {v5, v6}, Lcom/sunny/CustomWebView/CustomWebView;->getIndex(Landroid/webkit/WebView;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sunny/CustomWebView/CustomWebView;->OnFormResubmission(I)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/sunny/CustomWebView/CustomWebView$WebClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    iget-object v3, v3, Lcom/sunny/CustomWebView/CustomWebView;->wv:Ljava/util/HashMap;

    move-object v4, v0

    iget-object v4, v4, Lcom/sunny/CustomWebView/CustomWebView$WebClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    invoke-virtual {v4}, Lcom/sunny/CustomWebView/CustomWebView;->CurrentId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v1

    if-ne v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sunny/CustomWebView/CustomWebView$WebClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    iget-boolean v3, v3, Lcom/sunny/CustomWebView/CustomWebView;->isLoading:Z

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sunny/CustomWebView/CustomWebView$WebClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sunny/CustomWebView/CustomWebView;->isLoading:Z

    move-object v3, v0

    iget-object v3, v3, Lcom/sunny/CustomWebView/CustomWebView$WebClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v4, v0

    iget-object v4, v4, Lcom/sunny/CustomWebView/CustomWebView$WebClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/sunny/CustomWebView/CustomWebView;->getIndex(Landroid/webkit/WebView;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sunny/CustomWebView/CustomWebView;->PageLoaded(I)V

    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Lcom/sunny/CustomWebView/CustomWebView$WebClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    iget-boolean v4, v4, Lcom/sunny/CustomWebView/CustomWebView;->isLoading:Z

    if-nez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/sunny/CustomWebView/CustomWebView$WebClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v5, v0

    iget-object v5, v5, Lcom/sunny/CustomWebView/CustomWebView$WebClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v6, v1

    invoke-virtual {v5, v6}, Lcom/sunny/CustomWebView/CustomWebView;->getIndex(Landroid/webkit/WebView;)I

    move-result v5

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/sunny/CustomWebView/CustomWebView;->PageStarted(ILjava/lang/String;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/sunny/CustomWebView/CustomWebView$WebClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sunny/CustomWebView/CustomWebView;->isLoading:Z

    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    iget-object v5, v5, Lcom/sunny/CustomWebView/CustomWebView$WebClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v6, v0

    iget-object v6, v6, Lcom/sunny/CustomWebView/CustomWebView$WebClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v7, v1

    invoke-virtual {v6, v7}, Lcom/sunny/CustomWebView/CustomWebView;->getIndex(Landroid/webkit/WebView;)I

    move-result v6

    move-object v7, v3

    move v8, v2

    move-object v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sunny/CustomWebView/CustomWebView;->OnErrorReceived(ILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Lcom/sunny/CustomWebView/CustomWebView$WebClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v5, v0

    iget-object v5, v5, Lcom/sunny/CustomWebView/CustomWebView$WebClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v6, v1

    invoke-virtual {v5, v6}, Lcom/sunny/CustomWebView/CustomWebView;->getIndex(Landroid/webkit/WebView;)I

    move-result v5

    move-object v6, v3

    invoke-virtual {v6}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v7}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v7

    move-object v8, v2

    invoke-interface {v8}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sunny/CustomWebView/CustomWebView;->OnErrorReceived(ILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    iget-object v5, v5, Lcom/sunny/CustomWebView/CustomWebView$WebClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v6, v2

    iput-object v6, v5, Lcom/sunny/CustomWebView/CustomWebView;->httpAuthHandler:Landroid/webkit/HttpAuthHandler;

    move-object v5, v0

    iget-object v5, v5, Lcom/sunny/CustomWebView/CustomWebView$WebClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v6, v0

    iget-object v6, v6, Lcom/sunny/CustomWebView/CustomWebView$WebClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v7, v1

    invoke-virtual {v6, v7}, Lcom/sunny/CustomWebView/CustomWebView;->getIndex(Landroid/webkit/WebView;)I

    move-result v6

    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v5, v6, v7, v8}, Lcom/sunny/CustomWebView/CustomWebView;->OnReceivedHttpAuthRequest(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Lcom/sunny/CustomWebView/CustomWebView$WebClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v5, v0

    iget-object v5, v5, Lcom/sunny/CustomWebView/CustomWebView$WebClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v6, v1

    invoke-virtual {v5, v6}, Lcom/sunny/CustomWebView/CustomWebView;->getIndex(Landroid/webkit/WebView;)I

    move-result v5

    move-object v6, v3

    invoke-virtual {v6}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v7}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v7

    move-object v8, v2

    invoke-interface {v8}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sunny/CustomWebView/CustomWebView;->OnErrorReceived(ILjava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Lcom/sunny/CustomWebView/CustomWebView$WebClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v5, v2

    iput-object v5, v4, Lcom/sunny/CustomWebView/CustomWebView;->sslHandler:Landroid/webkit/SslErrorHandler;

    move-object v4, v0

    iget-object v4, v4, Lcom/sunny/CustomWebView/CustomWebView$WebClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v5, v3

    invoke-virtual {v5}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sunny/CustomWebView/CustomWebView;->OnReceivedSslError(I)V

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    iget-object v6, v6, Lcom/sunny/CustomWebView/CustomWebView$WebClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    iget-boolean v6, v6, Lcom/sunny/CustomWebView/CustomWebView;->blockAds:Z

    if-eqz v6, :cond_2

    new-instance v6, Lcom/sunny/CustomWebView/CustomWebView$AdBlocker;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Lcom/sunny/CustomWebView/CustomWebView$AdBlocker;-><init>()V

    move-object v4, v6

    move-object v6, v2

    invoke-interface {v6}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    move-object v6, v0

    iget-object v6, v6, Lcom/sunny/CustomWebView/CustomWebView$WebClient;->loadedUrls:Ljava/util/HashMap;

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    move-object v6, v4

    move-object v7, v5

    invoke-virtual {v6, v7}, Lcom/sunny/CustomWebView/CustomWebView$AdBlocker;->isAd(Ljava/lang/String;)Z

    move-result v6

    move v3, v6

    move-object v6, v0

    iget-object v6, v6, Lcom/sunny/CustomWebView/CustomWebView$WebClient;->loadedUrls:Ljava/util/HashMap;

    move-object v7, v5

    move v8, v3

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :goto_0
    move v6, v3

    if-eqz v6, :cond_1

    move-object v6, v4

    invoke-virtual {v6}, Lcom/sunny/CustomWebView/CustomWebView$AdBlocker;->createEmptyResource()Landroid/webkit/WebResourceResponse;

    move-result-object v6

    :goto_1
    move-object v0, v6

    :goto_2
    return-object v0

    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/sunny/CustomWebView/CustomWebView$WebClient;->loadedUrls:Ljava/util/HashMap;

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move v3, v6

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_2
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    iget-object v5, v5, Lcom/sunny/CustomWebView/CustomWebView$WebClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    iget-boolean v5, v5, Lcom/sunny/CustomWebView/CustomWebView;->blockAds:Z

    if-eqz v5, :cond_2

    new-instance v5, Lcom/sunny/CustomWebView/CustomWebView$AdBlocker;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Lcom/sunny/CustomWebView/CustomWebView$AdBlocker;-><init>()V

    move-object v4, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/sunny/CustomWebView/CustomWebView$WebClient;->loadedUrls:Ljava/util/HashMap;

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v4

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/sunny/CustomWebView/CustomWebView$AdBlocker;->isAd(Ljava/lang/String;)Z

    move-result v5

    move v3, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/sunny/CustomWebView/CustomWebView$WebClient;->loadedUrls:Ljava/util/HashMap;

    move-object v6, v2

    move v7, v3

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :goto_0
    move v5, v3

    if-eqz v5, :cond_1

    move-object v5, v4

    invoke-virtual {v5}, Lcom/sunny/CustomWebView/CustomWebView$AdBlocker;->createEmptyResource()Landroid/webkit/WebResourceResponse;

    move-result-object v5

    :goto_1
    move-object v0, v5

    :goto_2
    return-object v0

    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/sunny/CustomWebView/CustomWebView$WebClient;->loadedUrls:Ljava/util/HashMap;

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move v3, v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_2
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v2

    invoke-interface {v4}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    move-object v4, v3

    const-string/jumbo v5, "http"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lcom/sunny/CustomWebView/CustomWebView$WebClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    iget-boolean v4, v4, Lcom/sunny/CustomWebView/CustomWebView;->followLinks:Z

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    move v0, v4

    :goto_1
    return v0

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lcom/sunny/CustomWebView/CustomWebView$WebClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    iget-boolean v4, v4, Lcom/sunny/CustomWebView/CustomWebView;->deepLinks:Z

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lcom/sunny/CustomWebView/CustomWebView$WebClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/sunny/CustomWebView/CustomWebView;->DeepLinkParser(Ljava/lang/String;)Z

    move-result v4

    move v0, v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    const-string/jumbo v4, "http"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/sunny/CustomWebView/CustomWebView$WebClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    iget-boolean v3, v3, Lcom/sunny/CustomWebView/CustomWebView;->followLinks:Z

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    :goto_1
    return v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sunny/CustomWebView/CustomWebView$WebClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    iget-boolean v3, v3, Lcom/sunny/CustomWebView/CustomWebView;->deepLinks:Z

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lcom/sunny/CustomWebView/CustomWebView$WebClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/sunny/CustomWebView/CustomWebView;->DeepLinkParser(Ljava/lang/String;)Z

    move-result v3

    move v0, v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method
