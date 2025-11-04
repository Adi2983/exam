.class public Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;
.super Landroid/webkit/WebChromeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunny/CustomWebView/CustomWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ChromeClient"
.end annotation


# instance fields
.field private final FULL_SCREEN_SETTING:I

.field private mCustomView:Landroid/view/View;

.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mOriginalOrientation:I

.field private mOriginalSystemUiVisibility:I

.field final synthetic this$0:Lcom/sunny/CustomWebView/CustomWebView;


# direct methods
.method public constructor <init>(Lcom/sunny/CustomWebView/CustomWebView;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v2, v0

    invoke-direct {v2}, Landroid/webkit/WebChromeClient;-><init>()V

    move-object v2, v0

    const/16 v3, 0xf06

    iput v3, v2, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->FULL_SCREEN_SETTING:I

    return-void
.end method


# virtual methods
.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v3, v0

    iget-object v3, v3, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sunny/CustomWebView/CustomWebView;->getIndex(Landroid/webkit/WebView;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sunny/CustomWebView/CustomWebView;->OnCloseWindowRequest(I)V

    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v3, v1

    invoke-virtual {v3}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v4

    move-object v5, v1

    invoke-virtual {v5}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v5

    move-object v6, v1

    invoke-virtual {v6}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/ConsoleMessage$MessageLevel;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sunny/CustomWebView/CustomWebView;->OnConsoleMessage(Ljava/lang/String;IILjava/lang/String;)V

    const/4 v2, 0x1

    move v0, v2

    return v0
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    iget-object v5, v5, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    invoke-virtual {v5}, Lcom/sunny/CustomWebView/CustomWebView;->SupportMultipleWindows()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v6, v4

    iput-object v6, v5, Lcom/sunny/CustomWebView/CustomWebView;->resultObj:Landroid/os/Message;

    move-object v5, v0

    iget-object v5, v5, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v6, v0

    iget-object v6, v6, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v7, v1

    invoke-virtual {v6, v7}, Lcom/sunny/CustomWebView/CustomWebView;->getIndex(Landroid/webkit/WebView;)I

    move-result v6

    move v7, v2

    move v8, v3

    invoke-virtual {v5, v6, v7, v8}, Lcom/sunny/CustomWebView/CustomWebView;->OnNewWindowRequest(IZZ)V

    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    invoke-virtual {v5}, Lcom/sunny/CustomWebView/CustomWebView;->SupportMultipleWindows()Z

    move-result v5

    move v0, v5

    return v0
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    iget-boolean v3, v3, Lcom/sunny/CustomWebView/CustomWebView;->prompt:Z

    if-nez v3, :cond_0

    move-object v3, v2

    move-object v4, v1

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-interface {v3, v4, v5, v6}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    :goto_0
    return-void

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v4, v2

    iput-object v4, v3, Lcom/sunny/CustomWebView/CustomWebView;->theCallback:Landroid/webkit/GeolocationPermissions$Callback;

    move-object v3, v0

    iget-object v3, v3, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v4, v1

    iput-object v4, v3, Lcom/sunny/CustomWebView/CustomWebView;->theOrigin:Ljava/lang/String;

    move-object v3, v0

    iget-object v3, v3, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sunny/CustomWebView/CustomWebView;->OnGeolocationRequested(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onHideCustomView()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    invoke-virtual {v1}, Lcom/sunny/CustomWebView/CustomWebView;->OnHideCustomView()V

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->mCustomView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->mCustomView:Landroid/view/View;

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    move-object v2, v0

    iget v2, v2, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->mOriginalSystemUiVisibility:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->activity:Landroid/app/Activity;

    move-object v2, v0

    iget v2, v2, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->mOriginalOrientation:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v1}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->activity:Landroid/app/Activity;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    iget-object v5, v5, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v6, v0

    iget-object v6, v6, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v7, v1

    invoke-virtual {v6, v7}, Lcom/sunny/CustomWebView/CustomWebView;->getIndex(Landroid/webkit/WebView;)I

    move-result v6

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Lcom/sunny/CustomWebView/CustomWebView;->OnJsAlert(ILjava/lang/String;Ljava/lang/String;)V

    move-object v5, v0

    iget-object v5, v5, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v6, v4

    iput-object v6, v5, Lcom/sunny/CustomWebView/CustomWebView;->jsAlert:Landroid/webkit/JsResult;

    move-object v5, v0

    iget-object v5, v5, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    invoke-virtual {v5}, Lcom/sunny/CustomWebView/CustomWebView;->EnableJS()Z

    move-result v5

    move v0, v5

    return v0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    iget-object v5, v5, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v6, v4

    iput-object v6, v5, Lcom/sunny/CustomWebView/CustomWebView;->jsResult:Landroid/webkit/JsResult;

    move-object v5, v0

    iget-object v5, v5, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v6, v0

    iget-object v6, v6, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v7, v1

    invoke-virtual {v6, v7}, Lcom/sunny/CustomWebView/CustomWebView;->getIndex(Landroid/webkit/WebView;)I

    move-result v6

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Lcom/sunny/CustomWebView/CustomWebView;->OnJsConfirm(ILjava/lang/String;Ljava/lang/String;)V

    move-object v5, v0

    iget-object v5, v5, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    invoke-virtual {v5}, Lcom/sunny/CustomWebView/CustomWebView;->EnableJS()Z

    move-result v5

    move v0, v5

    return v0
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object v6, v0

    iget-object v6, v6, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v7, v5

    iput-object v7, v6, Lcom/sunny/CustomWebView/CustomWebView;->jsPromptResult:Landroid/webkit/JsPromptResult;

    move-object v6, v0

    iget-object v6, v6, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v7, v0

    iget-object v7, v7, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v8, v1

    invoke-virtual {v7, v8}, Lcom/sunny/CustomWebView/CustomWebView;->getIndex(Landroid/webkit/WebView;)I

    move-result v7

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/sunny/CustomWebView/CustomWebView;->OnJsPrompt(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v0

    iget-object v6, v6, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    invoke-virtual {v6}, Lcom/sunny/CustomWebView/CustomWebView;->EnableJS()Z

    move-result v6

    move v0, v6

    return v0
.end method

.method public onPermissionRequest(Landroid/webkit/PermissionRequest;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    iget-boolean v4, v4, Lcom/sunny/CustomWebView/CustomWebView;->prompt:Z

    if-nez v4, :cond_0

    move-object v4, v1

    move-object v5, v1

    invoke-virtual {v5}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v5, v1

    iput-object v5, v4, Lcom/sunny/CustomWebView/CustomWebView;->permissionRequest:Landroid/webkit/PermissionRequest;

    move-object v4, v1

    invoke-virtual {v4}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    move-object v4, v2

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object v3, v4

    move-object v4, v0

    iget-object v4, v4, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v5, v3

    invoke-virtual {v4, v5}, Lcom/sunny/CustomWebView/CustomWebView;->OnPermissionRequest(Ljava/util/List;)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v4, v0

    iget-object v4, v4, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/sunny/CustomWebView/CustomWebView;->getIndex(Landroid/webkit/WebView;)I

    move-result v4

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sunny/CustomWebView/CustomWebView;->OnProgressChanged(II)V

    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    invoke-virtual {v3}, Lcom/sunny/CustomWebView/CustomWebView;->OnShowCustomView()V

    move-object v3, v0

    iget-object v3, v3, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->mCustomView:Landroid/view/View;

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->onHideCustomView()V

    :goto_0
    return-void

    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->mCustomView:Landroid/view/View;

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    iget-object v4, v4, Lcom/sunny/CustomWebView/CustomWebView;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v4

    iput v4, v3, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->mOriginalSystemUiVisibility:I

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    iget-object v4, v4, Lcom/sunny/CustomWebView/CustomWebView;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v4

    iput v4, v3, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->mOriginalOrientation:I

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    move-object v3, v0

    iget-object v3, v3, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    iget-object v3, v3, Lcom/sunny/CustomWebView/CustomWebView;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    move-object v4, v0

    iget-object v4, v4, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->mCustomView:Landroid/view/View;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v3, v0

    iget-object v3, v3, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    iget-object v3, v3, Lcom/sunny/CustomWebView/CustomWebView;->activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/16 v4, 0xf06

    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    move-object v3, v0

    iget-object v3, v3, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    iget-object v3, v3, Lcom/sunny/CustomWebView/CustomWebView;->activity:Landroid/app/Activity;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    move-object v3, v0

    iget-object v3, v3, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->mCustomView:Landroid/view/View;

    new-instance v4, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient$1;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient$1;-><init>(Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    goto :goto_0
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v5, v2

    invoke-static {v4, v5}, Lcom/sunny/CustomWebView/CustomWebView;->access$002(Lcom/sunny/CustomWebView/CustomWebView;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;

    move-result-object v4

    move-object v4, v0

    iget-object v4, v4, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v5, v0

    iget-object v5, v5, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    move-object v6, v1

    invoke-virtual {v5, v6}, Lcom/sunny/CustomWebView/CustomWebView;->getIndex(Landroid/webkit/WebView;)I

    move-result v5

    move-object v6, v3

    invoke-virtual {v6}, Landroid/webkit/WebChromeClient$FileChooserParams;->getAcceptTypes()[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v6, v6, v7

    move-object v7, v3

    invoke-virtual {v7}, Landroid/webkit/WebChromeClient$FileChooserParams;->isCaptureEnabled()Z

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/sunny/CustomWebView/CustomWebView;->FileUploadNeeded(ILjava/lang/String;Z)V

    move-object v4, v0

    iget-object v4, v4, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    invoke-virtual {v4}, Lcom/sunny/CustomWebView/CustomWebView;->FileAccess()Z

    move-result v4

    move v0, v4

    return v0
.end method

.method updateControls()V
    .locals 4

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->mCustomView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    move-object v1, v2

    move-object v2, v1

    const/4 v3, 0x0

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move-object v2, v1

    const/4 v3, 0x0

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move-object v2, v1

    const/4 v3, 0x0

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move-object v2, v1

    const/4 v3, 0x0

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move-object v2, v1

    const/4 v3, -0x1

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    move-object v2, v1

    const/4 v3, -0x1

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->mCustomView:Landroid/view/View;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;->this$0:Lcom/sunny/CustomWebView/CustomWebView;

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0xf06

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method
