.class public final Lcom/sunny/CustomWebView/CustomWebView;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    androidMinSdk = 0x15
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXTENSION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "An extended form of Web Viewer <br> Developed by Sunny Gupta"
    helpUrl = "https://github.com/vknow360/CustomWebView"
    iconName = "https://res.cloudinary.com/andromedaviewflyvipul/image/upload/c_scale,h_20,w_20/v1571472765/ktvu4bapylsvnykoyhdm.png"
    nonVisible = true
    version = 0xb
    versionName = "11"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
    external = true
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.WRITE_EXTERNAL_STORAGE,android.permission.ACCESS_DOWNLOAD_MANAGER,android.permission.ACCESS_FINE_LOCATION,android.permission.RECORD_AUDIO, android.permission.MODIFY_AUDIO_SETTINGS, android.permission.CAMERA,android.permission.VIBRATE,android.webkit.resource.VIDEO_CAPTURE,android.webkit.resource.AUDIO_CAPTURE,android.launcher.permission.INSTALL_SHORTCUT"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunny/CustomWebView/CustomWebView$AdBlocker;,
        Lcom/sunny/CustomWebView/CustomWebView$PrintDocumentAdapterWrapper;,
        Lcom/sunny/CustomWebView/CustomWebView$WebViewInterface;,
        Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;,
        Lcom/sunny/CustomWebView/CustomWebView$WebClient;
    }
.end annotation


# static fields
.field public static AD_HOSTS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private MOBILE_USER_AGENT:Ljava/lang/String;

.field public UserAgent:Ljava/lang/String;

.field public activity:Landroid/app/Activity;

.field public blockAds:Z

.field public context:Landroid/content/Context;

.field public cookieManager:Landroid/webkit/CookieManager;

.field public deepLinks:Z

.field public desktopMode:Z

.field public deviceDensity:F

.field public displayZoom:Z

.field public dontSend:Landroid/os/Message;

.field public followLinks:Z

.field public httpAuthHandler:Landroid/webkit/HttpAuthHandler;

.field public iD:I

.field public isLoading:Z

.field public jobName:Ljava/lang/String;

.field public jsAlert:Landroid/webkit/JsResult;

.field public jsPromptResult:Landroid/webkit/JsPromptResult;

.field public jsResult:Landroid/webkit/JsResult;

.field private mFilePathCallback:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public permissionRequest:Landroid/webkit/PermissionRequest;

.field public printJob:Landroid/print/PrintJob;

.field public prompt:Z

.field public reSend:Landroid/os/Message;

.field public resultObj:Landroid/os/Message;

.field public sslHandler:Landroid/webkit/SslErrorHandler;

.field public theCallback:Landroid/webkit/GeolocationPermissions$Callback;

.field public theOrigin:Ljava/lang/String;

.field public webView:Landroid/webkit/WebView;

.field public wv:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field

.field public wvInterface:Lcom/sunny/CustomWebView/CustomWebView$WebViewInterface;

.field public zoomEnabled:Z

.field public zoomPercent:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sunny/CustomWebView/CustomWebView;->AD_HOSTS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sunny/CustomWebView/CustomWebView;->followLinks:Z

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sunny/CustomWebView/CustomWebView;->prompt:Z

    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/sunny/CustomWebView/CustomWebView;->UserAgent:Ljava/lang/String;

    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/sunny/CustomWebView/CustomWebView;->MOBILE_USER_AGENT:Ljava/lang/String;

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sunny/CustomWebView/CustomWebView;->deepLinks:Z

    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/sunny/CustomWebView/CustomWebView;->jobName:Ljava/lang/String;

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sunny/CustomWebView/CustomWebView;->isLoading:Z

    move-object v2, v0

    new-instance v3, Ljava/util/HashMap;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lcom/sunny/CustomWebView/CustomWebView;->wv:Ljava/util/HashMap;

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sunny/CustomWebView/CustomWebView;->blockAds:Z

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lcom/sunny/CustomWebView/CustomWebView;->iD:I

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sunny/CustomWebView/CustomWebView;->desktopMode:Z

    move-object v2, v0

    const/16 v3, 0x64

    iput v3, v2, Lcom/sunny/CustomWebView/CustomWebView;->zoomPercent:I

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sunny/CustomWebView/CustomWebView;->zoomEnabled:Z

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sunny/CustomWebView/CustomWebView;->displayZoom:Z

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/sunny/CustomWebView/CustomWebView;->activity:Landroid/app/Activity;

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sunny/CustomWebView/CustomWebView;->activity:Landroid/app/Activity;

    iput-object v3, v2, Lcom/sunny/CustomWebView/CustomWebView;->context:Landroid/content/Context;

    move-object v2, v0

    new-instance v3, Lcom/sunny/CustomWebView/CustomWebView$WebViewInterface;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/sunny/CustomWebView/CustomWebView$WebViewInterface;-><init>(Lcom/sunny/CustomWebView/CustomWebView;)V

    iput-object v3, v2, Lcom/sunny/CustomWebView/CustomWebView;->wvInterface:Lcom/sunny/CustomWebView/CustomWebView$WebViewInterface;

    move-object v2, v0

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    iput-object v3, v2, Lcom/sunny/CustomWebView/CustomWebView;->cookieManager:Landroid/webkit/CookieManager;

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v3

    iput v3, v2, Lcom/sunny/CustomWebView/CustomWebView;->deviceDensity:F

    move-object v2, v0

    new-instance v3, Landroid/webkit/WebView;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/sunny/CustomWebView/CustomWebView;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v3}, Lcom/sunny/CustomWebView/CustomWebView;->resetWebView(Landroid/webkit/WebView;)V

    return-void
.end method

.method static synthetic access$002(Lcom/sunny/CustomWebView/CustomWebView;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/sunny/CustomWebView/CustomWebView;->mFilePathCallback:Landroid/webkit/ValueCallback;

    move-object v0, v2

    return-object v0
.end method


# virtual methods
.method public AdHosts(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the ad hosts which will be blocked"
    .end annotation

    move-object v0, p0

    move-object v1, p1

    sget-object v2, Lcom/sunny/CustomWebView/CustomWebView;->AD_HOSTS:Ljava/util/List;

    move-object v3, v1

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v2

    return-void
.end method

.method public AfterArchiveSaved(ZLjava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised after \'SaveArchive\' method.If \'success\' is true then returns file path else empty string."
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    const-string/jumbo v4, "AfterArchiveSaved"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move v8, v1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v3

    return-void
.end method

.method public AfterJavaScriptEvaluated(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised after evaluating Js and returns result."
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "AfterJavaScriptEvaluated"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    return-void
.end method

.method public AllowGeolocationAccess(ZZ)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/sunny/CustomWebView/CustomWebView;->theCallback:Landroid/webkit/GeolocationPermissions$Callback;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sunny/CustomWebView/CustomWebView;->theCallback:Landroid/webkit/GeolocationPermissions$Callback;

    move-object v4, v0

    iget-object v4, v4, Lcom/sunny/CustomWebView/CustomWebView;->theOrigin:Ljava/lang/String;

    move v5, v1

    move v6, v2

    invoke-interface {v3, v4, v5, v6}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sunny/CustomWebView/CustomWebView;->theCallback:Landroid/webkit/GeolocationPermissions$Callback;

    move-object v3, v0

    const-string/jumbo v4, ""

    iput-object v4, v3, Lcom/sunny/CustomWebView/CustomWebView;->theOrigin:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public AutoLoadImages(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets whether the WebView should load image resources"
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    move v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    return-void

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public AutoLoadImages()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returnss whether the WebView should load image resources"
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getLoadsImagesAutomatically()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public AutoplayMedia(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets whether the WebView requires a user gesture to play media"
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    return-void
.end method

.method public AutoplayMedia()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns whether the WebView requires a user gesture to play media"
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getMediaPlaybackRequiresUserGesture()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets background color of webview"
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    return-void
.end method

.method public BlockAds(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets whether to block ads or not"
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sunny/CustomWebView/CustomWebView;->blockAds:Z

    return-void
.end method

.method public BlockNetworkLoads(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets whether the WebView should not load resources from the network.Use this to save data."
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    return-void
.end method

.method public BlockNetworkLoads()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns whether the WebView should not load resources from the network"
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getBlockNetworkLoads()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public CacheMode()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Gets cache mode of active webview"
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getCacheMode()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public CacheMode(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets cache mode for active webview"
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    return-void
.end method

.method public CanGoBack()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets whether this WebView has a back history item"
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public CanGoBackOrForward(I)Z
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets whether the page can go back or forward the given number of steps."
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->canGoBackOrForward(I)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public CanGoForward()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets whether this WebView has a forward history item."
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public CancelJsRequests()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->jsAlert:Landroid/webkit/JsResult;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->jsAlert:Landroid/webkit/JsResult;

    invoke-virtual {v1}, Landroid/webkit/JsResult;->cancel()V

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sunny/CustomWebView/CustomWebView;->jsAlert:Landroid/webkit/JsResult;

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->jsResult:Landroid/webkit/JsResult;

    if-eqz v1, :cond_2

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->jsResult:Landroid/webkit/JsResult;

    invoke-virtual {v1}, Landroid/webkit/JsResult;->cancel()V

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sunny/CustomWebView/CustomWebView;->jsResult:Landroid/webkit/JsResult;

    goto :goto_0

    :cond_2
    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->jsPromptResult:Landroid/webkit/JsPromptResult;

    if-eqz v1, :cond_3

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->jsPromptResult:Landroid/webkit/JsPromptResult;

    invoke-virtual {v1}, Landroid/webkit/JsPromptResult;->cancel()V

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sunny/CustomWebView/CustomWebView;->jsPromptResult:Landroid/webkit/JsPromptResult;

    goto :goto_0

    :cond_3
    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->mFilePathCallback:Landroid/webkit/ValueCallback;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->mFilePathCallback:Landroid/webkit/ValueCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sunny/CustomWebView/CustomWebView;->mFilePathCallback:Landroid/webkit/ValueCallback;

    goto :goto_0
.end method

.method public CancelPrinting()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Cancels current print job. You can request cancellation of a queued, started, blocked, or failed print job."
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->printJob:Landroid/print/PrintJob;

    invoke-virtual {v1}, Landroid/print/PrintJob;->cancel()V

    return-void
.end method

.method public ClearCache()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Clears the resource cache."
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    return-void
.end method

.method public ClearCookies()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Removes all cookies and raises \'CookiesRemoved\' event"
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->cookieManager:Landroid/webkit/CookieManager;

    new-instance v2, Lcom/sunny/CustomWebView/CustomWebView$6;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/sunny/CustomWebView/CustomWebView$6;-><init>(Lcom/sunny/CustomWebView/CustomWebView;)V

    invoke-virtual {v1, v2}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->cookieManager:Landroid/webkit/CookieManager;

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->flush()V

    return-void
.end method

.method public ClearInternalHistory()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Tells this WebView to clear its internal back/forward list."
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->clearHistory()V

    return-void
.end method

.method public ClearLocation()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Clear all location preferences."
    .end annotation

    move-object v0, p0

    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/GeolocationPermissions;->clearAll()V

    return-void
.end method

.method public ClearMatches()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Clears the highlighting surrounding text matches."
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->clearMatches()V

    return-void
.end method

.method public ConfirmJs(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Whether to proceed JavaScript originated request"
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->jsResult:Landroid/webkit/JsResult;

    if-eqz v2, :cond_0

    move v2, v1

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->jsResult:Landroid/webkit/JsResult;

    invoke-virtual {v2}, Landroid/webkit/JsResult;->confirm()V

    :goto_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sunny/CustomWebView/CustomWebView;->jsResult:Landroid/webkit/JsResult;

    :cond_0
    return-void

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->jsResult:Landroid/webkit/JsResult;

    invoke-virtual {v2}, Landroid/webkit/JsResult;->cancel()V

    goto :goto_0
.end method

.method public ContentHeight()I
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets height of HTML content"
    .end annotation

    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sunny/CustomWebView/CustomWebView;->d2p(I)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public ContinueJs(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Inputs a confirmation response to Js"
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->jsPromptResult:Landroid/webkit/JsPromptResult;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->jsPromptResult:Landroid/webkit/JsPromptResult;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sunny/CustomWebView/CustomWebView;->jsPromptResult:Landroid/webkit/JsPromptResult;

    :cond_0
    return-void
.end method

.method public CookiesRemoved(Z)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised after \'ClearCokies\' method with result"
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const-string/jumbo v3, "CookiesRemoved"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move v7, v1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    return-void
.end method

.method public CreateShortcut(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 20
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Creates a shortcut of given website on home screen"
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v15, v3

    :try_start_0
    invoke-static {v15}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v15

    move-object v5, v15

    move-object v15, v5

    if-eqz v15, :cond_0

    move-object v15, v1

    iget-object v15, v15, Lcom/sunny/CustomWebView/CustomWebView;->context:Landroid/content/Context;

    const-string/jumbo v16, "TinyDB1"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    const-string/jumbo v16, "ssn"

    const-string/jumbo v17, ""

    invoke-interface/range {v15 .. v17}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v6, v15

    move-object v15, v1

    iget-object v15, v15, Lcom/sunny/CustomWebView/CustomWebView;->context:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object v7, v15

    new-instance v15, Landroid/content/Intent;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    move-object v8, v15

    move-object v15, v1

    iget-object v15, v15, Lcom/sunny/CustomWebView/CustomWebView;->context:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sunny/CustomWebView/CustomWebView;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    move-object/from16 v17, v7

    invoke-virtual/range {v16 .. v17}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v15

    invoke-static {v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    iget-object v15, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string/jumbo v16, "Screen1"

    move-object/from16 v17, v6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_1

    const-string/jumbo v17, "Screen1"

    :goto_0
    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v9, v15

    move-object v15, v8

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sunny/CustomWebView/CustomWebView;->context:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v17, v9

    invoke-virtual/range {v15 .. v17}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v15

    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v15

    move-object v15, v10

    move-object/from16 v16, v2

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v15

    move-object v15, v10

    const-string/jumbo v16, "2"

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v15

    move-object v15, v8

    const-string/jumbo v16, "APP_INVENTOR_START"

    move-object/from16 v17, v10

    invoke-static/range {v17 .. v17}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v15

    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x1a

    move/from16 v0, v16

    if-ge v15, v0, :cond_2

    new-instance v15, Landroid/content/Intent;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const-string/jumbo v17, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct/range {v16 .. v17}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v11, v15

    move-object v15, v11

    const-string/jumbo v16, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v17, v8

    invoke-virtual/range {v15 .. v17}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v15

    move-object v15, v11

    const-string/jumbo v16, "android.intent.extra.shortcut.NAME"

    move-object/from16 v17, v4

    invoke-virtual/range {v15 .. v17}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v15

    move-object v15, v11

    const-string/jumbo v16, "android.intent.extra.shortcut.ICON"

    move-object/from16 v17, v5

    invoke-virtual/range {v15 .. v17}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v15

    move-object v15, v11

    const-string/jumbo v16, "duplicate"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v15

    move-object v15, v1

    iget-object v15, v15, Lcom/sunny/CustomWebView/CustomWebView;->context:Landroid/content/Context;

    move-object/from16 v16, v11

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move-object/from16 v17, v6

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_0

    :cond_2
    move-object v15, v1

    iget-object v15, v15, Lcom/sunny/CustomWebView/CustomWebView;->context:Landroid/content/Context;

    const-string/jumbo v16, "shortcut"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ShortcutManager;

    move-object v11, v15

    move-object v15, v11

    invoke-virtual {v15}, Landroid/content/pm/ShortcutManager;->isRequestPinShortcutSupported()Z

    move-result v15

    if-eqz v15, :cond_0

    new-instance v15, Landroid/content/pm/ShortcutInfo$Builder;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sunny/CustomWebView/CustomWebView;->context:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v18, v4

    invoke-direct/range {v16 .. v18}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v16, v4

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v15

    move-object/from16 v16, v5

    invoke-static/range {v16 .. v16}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v15

    move-object/from16 v16, v8

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object v15

    move-object v12, v15

    move-object v15, v11

    move-object/from16 v16, v12

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/ShortcutManager;->createShortcutResultIntent(Landroid/content/pm/ShortcutInfo;)Landroid/content/Intent;

    move-result-object v15

    move-object v13, v15

    move-object v15, v1

    iget-object v15, v15, Lcom/sunny/CustomWebView/CustomWebView;->context:Landroid/content/Context;

    const/16 v16, 0x0

    move-object/from16 v17, v13

    const/16 v18, 0x0

    invoke-static/range {v15 .. v18}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    move-object v14, v15

    move-object v15, v11

    move-object/from16 v16, v12

    move-object/from16 v17, v14

    invoke-virtual/range {v17 .. v17}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/pm/ShortcutManager;->requestPinShortcut(Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    goto :goto_1

    :catch_0
    move-exception v15

    move-object v5, v15

    move-object v15, v5

    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public CreateWebView(Lcom/google/appinventor/components/runtime/HVArrangement;I)V
    .locals 13
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Creates the webview in given arrangement with id"
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v6, v0

    iget-object v6, v6, Lcom/sunny/CustomWebView/CustomWebView;->wv:Ljava/util/HashMap;

    move v7, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v1

    if-eqz v6, :cond_1

    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/HVArrangement;->getView()Landroid/view/View;

    move-result-object v6

    move-object v3, v6

    move-object v6, v0

    iget-object v6, v6, Lcom/sunny/CustomWebView/CustomWebView;->wv:Ljava/util/HashMap;

    move v7, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Landroid/webkit/WebView;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    iget-object v8, v8, Lcom/sunny/CustomWebView/CustomWebView;->context:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    move-object v4, v6

    move-object v6, v0

    move-object v7, v4

    invoke-virtual {v6, v7}, Lcom/sunny/CustomWebView/CustomWebView;->resetWebView(Landroid/webkit/WebView;)V

    move-object v6, v3

    check-cast v6, Landroid/widget/FrameLayout;

    move-object v5, v6

    move-object v6, v5

    move-object v7, v4

    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-direct {v9, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v6, v0

    iget-object v6, v6, Lcom/sunny/CustomWebView/CustomWebView;->wv:Ljava/util/HashMap;

    move v7, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v8, v4

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :cond_1
    return-void
.end method

.method public CurrentId()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns current id"
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->iD:I

    move v0, v1

    return v0
.end method

.method public CurrentPageTitle()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Title of the page currently viewed"
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v1, ""

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public CurrentUrl()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "URL of the page currently viewed"
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v1, ""

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public DeepLinkParser(Ljava/lang/String;)Z
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Lcom/sunny/CustomWebView/CustomWebView;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    move-object v2, v5

    move-object v5, v1

    const-string/jumbo v6, "tel:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Landroid/content/Intent;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "android.intent.action.DIAL"

    move-object v8, v1

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v3, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/sunny/CustomWebView/CustomWebView;->activity:Landroid/app/Activity;

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v5, 0x1

    move v0, v5

    :goto_0
    return v0

    :cond_0
    move-object v5, v1

    const-string/jumbo v6, "mailto:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v1

    const-string/jumbo v6, "sms:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    new-instance v5, Landroid/content/Intent;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "android.intent.action.VIEW"

    move-object v8, v1

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v3, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/sunny/CustomWebView/CustomWebView;->activity:Landroid/app/Activity;

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    :cond_2
    move-object v5, v1

    const-string/jumbo v6, "whatsapp:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v5, Landroid/content/Intent;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "android.intent.action.VIEW"

    move-object v8, v1

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v3, v5

    move-object v5, v3

    const-string/jumbo v6, "com.whatsapp"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    move-object v5, v0

    iget-object v5, v5, Lcom/sunny/CustomWebView/CustomWebView;->activity:Landroid/app/Activity;

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    :cond_3
    move-object v5, v1

    const-string/jumbo v6, "geo:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Landroid/content/Intent;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "android.intent.action.VIEW"

    move-object v8, v1

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v3, v5

    move-object v5, v3

    const-string/jumbo v6, "com.google.android.apps.maps"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    move-object v5, v3

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_4

    move-object v5, v0

    iget-object v5, v5, Lcom/sunny/CustomWebView/CustomWebView;->activity:Landroid/app/Activity;

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v5, 0x1

    move v0, v5

    goto/16 :goto_0

    :cond_4
    const/4 v5, 0x0

    move v0, v5

    goto/16 :goto_0

    :cond_5
    move-object v5, v1

    const-string/jumbo v6, "intent:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    move-object v5, v1

    const/4 v6, 0x1

    :try_start_0
    invoke-static {v5, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    move-object v3, v5

    move-object v5, v3

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_6

    move-object v5, v0

    iget-object v5, v5, Lcom/sunny/CustomWebView/CustomWebView;->activity:Landroid/app/Activity;

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v5, 0x1

    move v0, v5

    goto/16 :goto_0

    :cond_6
    move-object v5, v3

    const-string/jumbo v6, "browser_fallback_url"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    move-object v5, v4

    if-eqz v5, :cond_7

    move-object v5, v0

    iget-object v5, v5, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_7
    new-instance v5, Landroid/content/Intent;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string/jumbo v7, "android.intent.action.VIEW"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "market://details?id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v7}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v5

    move-object v3, v5

    move-object v5, v3

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_8

    move-object v5, v0

    iget-object v5, v5, Lcom/sunny/CustomWebView/CustomWebView;->activity:Landroid/app/Activity;

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    move v0, v5

    goto/16 :goto_0

    :cond_8
    const/4 v5, 0x0

    move v0, v5

    goto/16 :goto_0

    :catch_0
    move-exception v5

    move-object v4, v5

    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v5, 0x0

    move v0, v5

    goto/16 :goto_0

    :cond_9
    const/4 v5, 0x0

    move v0, v5

    goto/16 :goto_0
.end method

.method public DeepLinks(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets whether to enable deep links or not i.e. tel: , whatsapp: , sms: , etc."
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sunny/CustomWebView/CustomWebView;->deepLinks:Z

    return-void
.end method

.method public DeepLinks()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns whether deep links are enabled or not"
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->deepLinks:Z

    move v0, v1

    return v0
.end method

.method public DesktopMode(Z)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets whether to load content in desktop mode"
    .end annotation

    move-object v0, p0

    move v1, p1

    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sunny/CustomWebView/CustomWebView;->UserAgent:Ljava/lang/String;

    const-string/jumbo v4, "Android"

    const-string/jumbo v5, "diordnA"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Mobile"

    const-string/jumbo v5, "eliboM"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sunny/CustomWebView/CustomWebView;->UserAgent:Ljava/lang/String;

    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sunny/CustomWebView/CustomWebView;->UserAgent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sunny/CustomWebView/CustomWebView;->desktopMode:Z

    return-void

    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sunny/CustomWebView/CustomWebView;->UserAgent:Ljava/lang/String;

    const-string/jumbo v4, "diordnA"

    const-string/jumbo v5, "Android"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "eliboM"

    const-string/jumbo v5, "Mobile"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sunny/CustomWebView/CustomWebView;->UserAgent:Ljava/lang/String;

    goto :goto_0
.end method

.method public DesktopMode()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns whether to load content in desktop mode"
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->desktopMode:Z

    move v0, v1

    return v0
.end method

.method public DismissJsAlert()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Dismiss previously requested Js alert"
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->jsAlert:Landroid/webkit/JsResult;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->jsAlert:Landroid/webkit/JsResult;

    invoke-virtual {v1}, Landroid/webkit/JsResult;->cancel()V

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sunny/CustomWebView/CustomWebView;->jsAlert:Landroid/webkit/JsResult;

    :cond_0
    return-void
.end method

.method public DisplayZoom(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets whether the WebView should display on-screen zoom controls"
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sunny/CustomWebView/CustomWebView;->displayZoom:Z

    return-void
.end method

.method public DisplayZoom()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Gets whether the WebView should display on-screen zoom controls"
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->displayZoom:Z

    move v0, v1

    return v0
.end method

.method public EnableJS(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Tells the WebView to enable JavaScript execution."
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    return-void
.end method

.method public EnableJS()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns whether webview supports JavaScript execution"
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public EvaluateJavaScript(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Asynchronously evaluates JavaScript in the context of the currently displayed page."
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    move-object v3, v1

    new-instance v4, Lcom/sunny/CustomWebView/CustomWebView$7;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/sunny/CustomWebView/CustomWebView$7;-><init>(Lcom/sunny/CustomWebView/CustomWebView;)V

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public FileAccess(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets whether webview can access local files.Use this to enable file uploading and loading files using HTML"
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    return-void
.end method

.method public FileAccess()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns whether webview can access local files"
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getAllowFileAccess()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public FileUploadNeeded(ILjava/lang/String;Z)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised when file uploading is needed"
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    const-string/jumbo v5, "FileUploadNeeded"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move v9, v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v2

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x2

    move v9, v3

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v5, v6}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v4

    return-void
.end method

.method public Find(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Finds all instances of find on the page and highlights them, asynchronously. Successive calls to this will cancel any pending searches."
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->findAllAsync(Ljava/lang/String;)V

    return-void
.end method

.method public FindNext(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Highlights and scrolls to the next match if \'forward\' is true else scrolls to previous match."
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->findNext(Z)V

    return-void
.end method

.method public FindResultReceived(IIIZ)V
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised after \'Find\' method with int \'activeMatchOrdinal\',\'numberOfMatches\' and \'isDoneCounting\'"
    .end annotation

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object v5, v0

    const-string/jumbo v6, "FindResultReceived"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move v10, v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    move v10, v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x2

    move v10, v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x3

    move v10, v4

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v6, v7}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v5

    return-void
.end method

.method public FollowLinks(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets whether to follow links or not"
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sunny/CustomWebView/CustomWebView;->followLinks:Z

    return-void
.end method

.method public FollowLinks()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Determines whether to follow links when they are tapped in the WebViewer.If you follow links, you can use GoBack and GoForward to navigate the browser history"
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->followLinks:Z

    move v0, v1

    return v0
.end method

.method public FontSize()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the font size of text"
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getDefaultFontSize()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public FontSize(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the default font size of text. The default is 16."
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    return-void
.end method

.method public GetCookies(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get cookies for specific url"
    .end annotation

    move-object v0, p0

    move-object v1, p1

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    :goto_0
    move-object v0, v3

    return-object v0

    :cond_0
    const-string/jumbo v3, ""

    goto :goto_0
.end method

.method public GetIds()Ljava/util/List;
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns a list of used ids"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    new-instance v1, Ljava/util/ArrayList;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Lcom/sunny/CustomWebView/CustomWebView;->wv:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    return-object v0
.end method

.method public GetInternalHistory(I)Ljava/util/List;
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get internal history of given webview."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    new-instance v6, Ljava/util/ArrayList;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v6

    move-object v6, v0

    iget-object v6, v6, Lcom/sunny/CustomWebView/CustomWebView;->wv:Ljava/util/HashMap;

    move v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lcom/sunny/CustomWebView/CustomWebView;->wv:Ljava/util/HashMap;

    move v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v6

    move-object v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move-object v7, v3

    invoke-virtual {v7}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v7

    if-ge v6, v7, :cond_0

    move-object v6, v3

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v6

    move-object v5, v6

    move-object v6, v2

    move-object v7, v5

    invoke-virtual {v7}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move-object v6, v2

    move-object v0, v6

    return-object v0
.end method

.method public GetProgress(I)I
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets the progress for the given webview"
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->wv:Ljava/util/HashMap;

    move v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getProgress()I

    move-result v2

    move v0, v2

    return v0
.end method

.method public GetScrollX()I
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Return the scrolled left position of the webview"
    .end annotation

    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScrollX()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sunny/CustomWebView/CustomWebView;->d2p(I)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public GetScrollY()I
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Return the scrolled top position of the webview"
    .end annotation

    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getScrollY()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sunny/CustomWebView/CustomWebView;->d2p(I)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public GetSslCertificate()V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets the SSL certificate for the main top-level page and raises \'GotCertificate\' event"
    .end annotation

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v2

    move-object v1, v2

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    const/4 v3, 0x1

    move-object v4, v1

    invoke-virtual {v4}, Landroid/net/http/SslCertificate;->getIssuedBy()Landroid/net/http/SslCertificate$DName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/http/SslCertificate$DName;->getDName()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v5}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/http/SslCertificate$DName;->getDName()Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v6}, Landroid/net/http/SslCertificate;->getValidNotAfterDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sunny/CustomWebView/CustomWebView;->GotCertificate(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, ""

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sunny/CustomWebView/CustomWebView;->GotCertificate(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public GetWebView(I)Ljava/lang/Object;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns webview object from id"
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->wv:Ljava/util/HashMap;

    move v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->wv:Ljava/util/HashMap;

    move v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public GoBack()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Goes back in the history of this WebView."
    .end annotation

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sunny/CustomWebView/CustomWebView;->CanGoBack()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->goBack()V

    :cond_0
    return-void
.end method

.method public GoBackOrForward(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Goes to the history item that is the number of steps away from the current item. Steps is negative if backward and positive if forward."
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sunny/CustomWebView/CustomWebView;->CanGoBackOrForward(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->goBackOrForward(I)V

    :cond_0
    return-void
.end method

.method public GoForward()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Goes forward in the history of this WebView."
    .end annotation

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sunny/CustomWebView/CustomWebView;->CanGoForward()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->goForward()V

    :cond_0
    return-void
.end method

.method public GoToUrl(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Loads the given URL."
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sunny/CustomWebView/CustomWebView;->CancelJsRequests()V

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public GotCertificate(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised after getting SSL certificate of current displayed url/website with boolean \'isSecure\' and Strings \'issuedBy\',\'issuedTo\' and \'validTill\'.If \'isSecure\' is false and other values are empty then assume that website is not secure"
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object v5, v0

    const-string/jumbo v6, "GotCertificate"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move v10, v1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    move-object v10, v2

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x2

    move-object v10, v3

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x3

    move-object v10, v4

    aput-object v10, v8, v9

    invoke-static {v5, v6, v7}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v5

    return-void
.end method

.method public GotPrintResult(Ljava/lang/String;ZZZ)V
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised after getting previus print\'s result."
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object v5, v0

    const-string/jumbo v6, "GotPrintResult"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v1

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    move v10, v2

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x2

    move v10, v3

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x3

    move v10, v4

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v6, v7}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v5

    return-void
.end method

.method public GrantPermission(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Grants given permissions to webview.Use empty list to deny the request."
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->permissionRequest:Landroid/webkit/PermissionRequest;

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->permissionRequest:Landroid/webkit/PermissionRequest;

    invoke-virtual {v2}, Landroid/webkit/PermissionRequest;->deny()V

    :goto_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sunny/CustomWebView/CustomWebView;->permissionRequest:Landroid/webkit/PermissionRequest;

    :cond_0
    return-void

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->permissionRequest:Landroid/webkit/PermissionRequest;

    move-object v3, v0

    iget-object v3, v3, Lcom/sunny/CustomWebView/CustomWebView;->permissionRequest:Landroid/webkit/PermissionRequest;

    invoke-virtual {v3}, Landroid/webkit/PermissionRequest;->getResources()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/webkit/PermissionRequest;->grant([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public HideCustomView()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Hides previously shown custom view"
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    return-void
.end method

.method public InitialScale(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the initial scale for active WebView. 0 means default. If initial scale is greater than 0, WebView starts with this value as initial scale."
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setInitialScale(I)V

    return-void
.end method

.method public InvokeZoomPicker()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Invokes the graphical zoom picker widget for this WebView. This will result in the zoom widget appearing on the screen to control the zoom level of this WebView.Note that it does not checks whether zoom is enabled or not."
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->invokeZoomPicker()V

    return-void
.end method

.method public LayerType()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = ""
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getLayerType()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public LayerType(I)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = ""
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    move v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public LoadHtml(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Loads the given data into this WebView using a \'data\' scheme URL."
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sunny/CustomWebView/CustomWebView;->CancelJsRequests()V

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "text/html"

    const-string/jumbo v5, "base64"

    invoke-virtual {v2, v3, v4, v5}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public LoadInNewWindow(I)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Loads requested url in given webview"
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget-object v4, v4, Lcom/sunny/CustomWebView/CustomWebView;->wv:Ljava/util/HashMap;

    move v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/sunny/CustomWebView/CustomWebView;->resultObj:Landroid/os/Message;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lcom/sunny/CustomWebView/CustomWebView;->wv:Ljava/util/HashMap;

    move v5, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/webkit/WebView;

    move-object v2, v4

    move-object v4, v0

    iget-object v4, v4, Lcom/sunny/CustomWebView/CustomWebView;->resultObj:Landroid/os/Message;

    iget-object v4, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/webkit/WebView$WebViewTransport;

    move-object v3, v4

    move-object v4, v3

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    move-object v4, v0

    iget-object v4, v4, Lcom/sunny/CustomWebView/CustomWebView;->resultObj:Landroid/os/Message;

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/sunny/CustomWebView/CustomWebView;->resultObj:Landroid/os/Message;

    :cond_0
    return-void
.end method

.method public LoadWithHeaders(Ljava/lang/String;Ljava/util/List;)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Loads the given URL with the specified additional HTTP headers defined is list of lists."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v2

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    new-instance v6, Ljava/util/HashMap;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    move-object v3, v6

    move-object v6, v2

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_0
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    move-object v5, v6

    move-object v6, v3

    move-object v7, v5

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v5

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    move-object v7, v1

    move-object v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    :goto_1
    return-void

    :cond_1
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Lcom/sunny/CustomWebView/CustomWebView;->GoToUrl(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public LoadWithOverviewMode(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets whether the WebView loads pages in overview mode, that is, zooms out the content to fit on screen by width. This setting is taken into account when the content width is greater than the width of the WebView control."
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    return-void
.end method

.method public LoadWithOverviewMode()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns whether the WebView loads pages in overview mode"
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getLoadWithOverviewMode()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public LongClickable(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets whether to enable text selection and context menu"
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    move v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setLongClickable(Z)V

    return-void

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public LongClickable()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns whether text selection and context menu are enabled or not"
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->isLongClickable()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public LongClicked(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised when something is long clicked in webview with item(image,string,empty,etc) and type(item type like 0,1,8,etc)"
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object v5, v0

    const-string/jumbo v6, "LongClicked"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move v10, v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    move-object v10, v2

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x2

    move-object v10, v3

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x3

    move v10, v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v6, v7}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v5

    return-void
.end method

.method public OnCloseWindowRequest(I)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event triggered when a window needs to be closed"
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const-string/jumbo v3, "OnCloseWindowRequest"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    return-void
.end method

.method public OnConsoleMessage(Ljava/lang/String;IILjava/lang/String;)V
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised after getting console message."
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object v5, v0

    const-string/jumbo v6, "OnConsoleMessage"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v1

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    move v10, v2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x2

    move v10, v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x3

    move-object v10, v4

    aput-object v10, v8, v9

    invoke-static {v5, v6, v7}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v5

    return-void
.end method

.method public OnDownloadNeeded(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 15
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised when downloading is needed."
    .end annotation

    move-object v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move-object v7, v0

    const-string/jumbo v8, "OnDownloadNeeded"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x0

    move v12, v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x1

    move-object v12, v2

    aput-object v12, v10, v11

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x2

    move-object v12, v3

    aput-object v12, v10, v11

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x3

    move-object v12, v4

    aput-object v12, v10, v11

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x4

    move-wide v12, v5

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v7, v8, v9}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v7

    return-void
.end method

.method public OnErrorReceived(ILjava/lang/String;ILjava/lang/String;)V
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised when any error is received during loading url and returns message,error code and failing url"
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object v5, v0

    const-string/jumbo v6, "OnErrorReceived"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move v10, v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    move-object v10, v2

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x2

    move v10, v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x3

    move-object v10, v4

    aput-object v10, v8, v9

    invoke-static {v5, v6, v7}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v5

    return-void
.end method

.method public OnFormResubmission(I)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised when resubmission of form is needed"
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const-string/jumbo v3, "OnFormResubmission"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    return-void
.end method

.method public OnGeolocationRequested(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "OnGeolocationRequested"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    return-void
.end method

.method public OnHideCustomView()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised when current page exits from full screen mode"
    .end annotation

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "OnHideCustomView"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    return-void
.end method

.method public OnJsAlert(ILjava/lang/String;Ljava/lang/String;)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised when Js have to show an alert to user"
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    const-string/jumbo v5, "OnJsAlert"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move v9, v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v2

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x2

    move-object v9, v3

    aput-object v9, v7, v8

    invoke-static {v4, v5, v6}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v4

    return-void
.end method

.method public OnJsConfirm(ILjava/lang/String;Ljava/lang/String;)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Tells to display a confirm dialog to the user."
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    const-string/jumbo v5, "OnJsConfirm"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move v9, v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v2

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x2

    move-object v9, v3

    aput-object v9, v7, v8

    invoke-static {v4, v5, v6}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v4

    return-void
.end method

.method public OnJsPrompt(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised when JavaScript needs input from user"
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object v5, v0

    const-string/jumbo v6, "OnJsPrompt"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move v10, v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    move-object v10, v2

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x2

    move-object v10, v3

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x3

    move-object v10, v4

    aput-object v10, v8, v9

    invoke-static {v5, v6, v7}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v5

    return-void
.end method

.method public OnNewWindowRequest(IZZ)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised when new window is requested by webview with boolean \'isDialog\' and \'isPopup\'"
    .end annotation

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    const-string/jumbo v5, "OnNewWindowRequest"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move v9, v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move v9, v2

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x2

    move v9, v3

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v4, v5, v6}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v4

    return-void
.end method

.method public OnPermissionRequest(Ljava/util/List;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised when a website asks for specific permission(s) in list format."
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "OnPermissionRequest"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    return-void
.end method

.method public OnProgressChanged(II)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised when page loading progress has changed."
    .end annotation

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    const-string/jumbo v4, "OnProgressChanged"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move v8, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v3

    return-void
.end method

.method public OnReceivedHttpAuthRequest(ILjava/lang/String;Ljava/lang/String;)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Notifies that the WebView received an HTTP authentication request."
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    const-string/jumbo v5, "OnReceivedHttpAuthRequest"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move v9, v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move-object v9, v2

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x2

    move-object v9, v3

    aput-object v9, v7, v8

    invoke-static {v4, v5, v6}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v4

    return-void
.end method

.method public OnReceivedSslError(I)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const-string/jumbo v3, "OnReceivedSslError"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    return-void
.end method

.method public OnScrollChanged(IIIIIZZ)V
    .locals 15
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised when webview gets scrolled"
    .end annotation

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object v8, v0

    const-string/jumbo v9, "OnScrollChanged"

    const/4 v10, 0x7

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move v13, v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x1

    move v13, v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x2

    move v13, v3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x3

    move v13, v4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x4

    move v13, v5

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x5

    move v13, v6

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x6

    move v13, v7

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v8, v9, v10}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v8

    return-void
.end method

.method public OnShowCustomView()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised when current page enters in full screen mode"
    .end annotation

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "OnShowCustomView"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    return-void
.end method

.method public OverScrollMode()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = ""
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getOverScrollMode()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public OverScrollMode(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = ""
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setOverScrollMode(I)V

    return-void
.end method

.method public PageDown(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Scrolls the contents of the WebView down by half the page size"
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->pageDown(Z)Z

    move-result v2

    return-void
.end method

.method public PageLoaded(I)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event raised when page loading has finished."
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const-string/jumbo v3, "PageLoaded"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    return-void
.end method

.method public PageStarted(ILjava/lang/String;)V
    .locals 10
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event indicating that page loading has started in web view."
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    const-string/jumbo v4, "PageStarted"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move-object v8, v2

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v3

    return-void
.end method

.method public PageUp(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Scrolls the contents of the WebView up by half the page size"
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->pageUp(Z)Z

    move-result v2

    return-void
.end method

.method public PauseWebView(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Does a best-effort attempt to pause any processing that can be paused safely, such as animations and geolocation. Note that this call does not pause JavaScript."
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->wv:Ljava/util/HashMap;

    move v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->onPause()V

    return-void
.end method

.method public PostData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Loads the URL with postData using \'POST\' method into active WebView."
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    move-object v4, v1

    move-object v5, v2

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    return-void
.end method

.method public PrintWebContent(Ljava/lang/String;)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Prints the content of webview with given document name"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Lcom/sunny/CustomWebView/CustomWebView;->context:Landroid/content/Context;

    const-string/jumbo v5, "print"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/print/PrintManager;

    move-object v2, v4

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v0

    iget-object v6, v6, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "_Document"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/sunny/CustomWebView/CustomWebView;->jobName:Ljava/lang/String;

    :goto_0
    new-instance v4, Lcom/sunny/CustomWebView/CustomWebView$PrintDocumentAdapterWrapper;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    move-object v8, v0

    iget-object v8, v8, Lcom/sunny/CustomWebView/CustomWebView;->jobName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->createPrintDocumentAdapter(Ljava/lang/String;)Landroid/print/PrintDocumentAdapter;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/sunny/CustomWebView/CustomWebView$PrintDocumentAdapterWrapper;-><init>(Lcom/sunny/CustomWebView/CustomWebView;Landroid/print/PrintDocumentAdapter;)V

    move-object v3, v4

    move-object v4, v2

    if-eqz v4, :cond_0

    move-object v4, v0

    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/sunny/CustomWebView/CustomWebView;->jobName:Ljava/lang/String;

    move-object v7, v3

    new-instance v8, Landroid/print/PrintAttributes$Builder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Landroid/print/PrintAttributes$Builder;-><init>()V

    invoke-virtual {v8}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    move-result-object v5

    iput-object v5, v4, Lcom/sunny/CustomWebView/CustomWebView;->printJob:Landroid/print/PrintJob;

    :cond_0
    return-void

    :cond_1
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sunny/CustomWebView/CustomWebView;->jobName:Ljava/lang/String;

    goto :goto_0
.end method

.method public ProceedHttpAuthRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Instructs the WebView to proceed with the authentication with the given credentials.If both parameters are empty then it will cancel the request."
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/sunny/CustomWebView/CustomWebView;->httpAuthHandler:Landroid/webkit/HttpAuthHandler;

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/sunny/CustomWebView/CustomWebView;->httpAuthHandler:Landroid/webkit/HttpAuthHandler;

    invoke-virtual {v3}, Landroid/webkit/HttpAuthHandler;->cancel()V

    :goto_0
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sunny/CustomWebView/CustomWebView;->httpAuthHandler:Landroid/webkit/HttpAuthHandler;

    :cond_0
    return-void

    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sunny/CustomWebView/CustomWebView;->httpAuthHandler:Landroid/webkit/HttpAuthHandler;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public ProceedSslError(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->sslHandler:Landroid/webkit/SslErrorHandler;

    if-eqz v2, :cond_0

    move v2, v1

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->sslHandler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v2}, Landroid/webkit/SslErrorHandler;->proceed()V

    :goto_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sunny/CustomWebView/CustomWebView;->sslHandler:Landroid/webkit/SslErrorHandler;

    :cond_0
    return-void

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->sslHandler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v2}, Landroid/webkit/SslErrorHandler;->cancel()V

    goto :goto_0
.end method

.method public PromptForPermission(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets whether webview will prompt for permission and raise \'OnPermissionRequest\' event or not else assume permission is granted."
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sunny/CustomWebView/CustomWebView;->prompt:Z

    return-void
.end method

.method public PromptForPermission()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns whether webview will prompt for permission and raise \'OnPermissionRequest\' event or not"
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->prompt:Z

    move v0, v1

    return v0
.end method

.method public Reload()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reloads the current URL."
    .end annotation

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sunny/CustomWebView/CustomWebView;->CancelJsRequests()V

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->reload()V

    return-void
.end method

.method public RemoveWebView(I)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Destroys the webview and removes it completely from view system"
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/sunny/CustomWebView/CustomWebView;->wv:Ljava/util/HashMap;

    move v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sunny/CustomWebView/CustomWebView;->wv:Ljava/util/HashMap;

    move v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    move-object v2, v3

    move-object v3, v2

    invoke-virtual {v3}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    move-object v3, v2

    invoke-virtual {v3}, Landroid/webkit/WebView;->destroy()V

    move-object v3, v0

    iget-object v3, v3, Lcom/sunny/CustomWebView/CustomWebView;->wv:Ljava/util/HashMap;

    move v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/sunny/CustomWebView/CustomWebView;->iD:I

    :cond_0
    return-void
.end method

.method public RestartPrinting()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Restarts current/previous print job. You can request restart of a failed print job."
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->printJob:Landroid/print/PrintJob;

    invoke-virtual {v1}, Landroid/print/PrintJob;->restart()V

    return-void
.end method

.method public ResubmitForm(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Whether to resubmit form or not."
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->reSend:Landroid/os/Message;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->dontSend:Landroid/os/Message;

    if-eqz v2, :cond_0

    move v2, v1

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->reSend:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sunny/CustomWebView/CustomWebView;->reSend:Landroid/os/Message;

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sunny/CustomWebView/CustomWebView;->dontSend:Landroid/os/Message;

    :cond_0
    return-void

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->dontSend:Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public ResumeWebView(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Resumes the previously paused WebView."
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->wv:Ljava/util/HashMap;

    move v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->onResume()V

    return-void
.end method

.method public RotationAngle()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getRotation()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public RotationAngle(F)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setRotation(F)V

    return-void
.end method

.method public SaveArchive(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Saves the current site as a web archive"
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    move-object v3, v1

    const/4 v4, 0x1

    new-instance v5, Lcom/sunny/CustomWebView/CustomWebView$8;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v0

    invoke-direct {v6, v7}, Lcom/sunny/CustomWebView/CustomWebView$8;-><init>(Lcom/sunny/CustomWebView/CustomWebView;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/webkit/WebView;->saveWebArchive(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V

    return-void
.end method

.method public ScrollBar(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Whether to display horizonatal and vertical scrollbars or not"
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    return-void
.end method

.method public ScrollBarStyle()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = ""
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScrollBarStyle()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public ScrollBarStyle(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = ""
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    return-void
.end method

.method public ScrollTo(II)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Scrolls the webview to given position"
    .end annotation

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, v1

    iget-object v4, v4, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    new-instance v5, Lcom/sunny/CustomWebView/CustomWebView$9;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    move v8, v2

    move v9, v3

    invoke-direct {v6, v7, v8, v9}, Lcom/sunny/CustomWebView/CustomWebView$9;-><init>(Lcom/sunny/CustomWebView/CustomWebView;II)V

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v5, v6, v7}, Landroid/webkit/WebView;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v4

    return-void
.end method

.method public SetCookies(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets cookies for given url"
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    :try_start_0
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v4

    move-object v3, v4

    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public SetVisibility(IZ)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Sets the visibility of webview by id"
    .end annotation

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/sunny/CustomWebView/CustomWebView;->wv:Ljava/util/HashMap;

    move v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/sunny/CustomWebView/CustomWebView;->wv:Ljava/util/HashMap;

    move v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sunny/CustomWebView/CustomWebView;->wv:Ljava/util/HashMap;

    move v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setVisibility(I)V

    goto :goto_0
.end method

.method public SetWebView(I)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set specific webview to current webview by id"
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->wv:Ljava/util/HashMap;

    move v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sunny/CustomWebView/CustomWebView;->wv:Ljava/util/HashMap;

    move v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    iput-object v3, v2, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setVisibility(I)V

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sunny/CustomWebView/CustomWebView;->iD:I

    :cond_0
    return-void
.end method

.method public StopLoading()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stops the current load."
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V

    return-void
.end method

.method public SupportMultipleWindows(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets whether the WebView supports multiple windows"
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    return-void
.end method

.method public SupportMultipleWindows()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns whether the WebView supports multiple windows"
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getJavaScriptCanOpenWindowsAutomatically()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public UploadFile(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Uploads the given file from content uri.Use empty string to cancel the upload request."
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->mFilePathCallback:Landroid/webkit/ValueCallback;

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->mFilePathCallback:Landroid/webkit/ValueCallback;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sunny/CustomWebView/CustomWebView;->mFilePathCallback:Landroid/webkit/ValueCallback;

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->mFilePathCallback:Landroid/webkit/ValueCallback;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/net/Uri;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v1

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sunny/CustomWebView/CustomWebView;->mFilePathCallback:Landroid/webkit/ValueCallback;

    goto :goto_0
.end method

.method public UseWideViewPort(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets whether the WebView should enable support for the \'viewport\' HTML meta tag or should use a wide viewport."
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    return-void
.end method

.method public UseWideViewPort()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns whether the WebView should enable support for the \'viewport\' HTML meta tag or should use a wide viewport."
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public UserAgent()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Get webview user agent"
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->UserAgent:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public UserAgent(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the WebView\'s user-agent string. If the string is null or empty, the system default value will be used. "
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sunny/CustomWebView/CustomWebView;->UserAgent:Ljava/lang/String;

    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sunny/CustomWebView/CustomWebView;->UserAgent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    return-void

    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sunny/CustomWebView/CustomWebView;->MOBILE_USER_AGENT:Ljava/lang/String;

    iput-object v3, v2, Lcom/sunny/CustomWebView/CustomWebView;->UserAgent:Ljava/lang/String;

    goto :goto_0
.end method

.method public UsesLocation(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Whether or not to give the application permission to use the Javascript geolocation API"
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    return-void
.end method

.method public Visible()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Returns the visibility of current webview"
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public WebViewString()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Get webview string"
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->wvInterface:Lcom/sunny/CustomWebView/CustomWebView$WebViewInterface;

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView$WebViewInterface;->webViewString:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public WebViewString(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Set webview string"
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->wvInterface:Lcom/sunny/CustomWebView/CustomWebView$WebViewInterface;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sunny/CustomWebView/CustomWebView$WebViewInterface;->setWebViewStringFromBlocks(Ljava/lang/String;)V

    return-void
.end method

.method public WebViewStringChanged(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "When the JavaScript calls AppInventor.setWebViewString this event is run."
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "WebViewStringChanged"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v1

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v2

    return-void
.end method

.method public ZoomBy(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs a zoom operation in the WebView by given zoom percent"
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    move v3, v1

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->zoomBy(F)V

    return-void
.end method

.method public ZoomEnabled(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets whether the WebView should support zooming using its on-screen zoom controls and gestures"
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sunny/CustomWebView/CustomWebView;->zoomEnabled:Z

    return-void
.end method

.method public ZoomEnabled()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Gets whether the WebView should support zooming using its on-screen zoom controls and gestures"
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->zoomEnabled:Z

    move v0, v1

    return v0
.end method

.method public ZoomIn()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs zoom in in the WebView"
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->zoomIn()Z

    move-result v1

    return-void
.end method

.method public ZoomOut()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Performs zoom out in the WebView"
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->zoomOut()Z

    move-result v1

    return-void
.end method

.method public ZoomPercent()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Gets the zoom of the page in percent"
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/sunny/CustomWebView/CustomWebView;->zoomPercent:I

    move v0, v1

    return v0
.end method

.method public ZoomPercent(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "100"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Sets the zoom of the page in percent. The default is 100"
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/sunny/CustomWebView/CustomWebView;->zoomPercent:I

    return-void
.end method

.method public d2p(I)I
    .locals 4

    move-object v0, p0

    move v1, p1

    move v2, v1

    int-to-float v2, v2

    move-object v3, v0

    iget v3, v3, Lcom/sunny/CustomWebView/CustomWebView;->deviceDensity:F

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getIndex(Landroid/webkit/WebView;)I
    .locals 7

    move-object v0, p0

    move-object v1, p1

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/sunny/CustomWebView/CustomWebView;->wv:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v2, v3

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/sunny/CustomWebView/CustomWebView;->wv:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v4, v2

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v0, v3

    return v0
.end method

.method public p2d(I)I
    .locals 4

    move-object v0, p0

    move v1, p1

    move v2, v1

    int-to-float v2, v2

    move-object v3, v0

    iget v3, v3, Lcom/sunny/CustomWebView/CustomWebView;->deviceDensity:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public resetWebView(Landroid/webkit/WebView;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lcom/sunny/CustomWebView/CustomWebView;->wvInterface:Lcom/sunny/CustomWebView/CustomWebView$WebViewInterface;

    const-string/jumbo v4, "AppInventor"

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/sunny/CustomWebView/CustomWebView;->MOBILE_USER_AGENT:Ljava/lang/String;

    move-object v2, v1

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    sget-object v3, Landroid/webkit/WebSettings$LayoutAlgorithm;->TEXT_AUTOSIZING:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    move-object v2, v1

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setFocusable(Z)V

    move-object v2, v1

    new-instance v3, Lcom/sunny/CustomWebView/CustomWebView$WebClient;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/sunny/CustomWebView/CustomWebView$WebClient;-><init>(Lcom/sunny/CustomWebView/CustomWebView;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    move-object v2, v1

    new-instance v3, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/sunny/CustomWebView/CustomWebView$ChromeClient;-><init>(Lcom/sunny/CustomWebView/CustomWebView;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    move-object v2, v1

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    move-object v2, v1

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    move-object v3, v0

    iget-boolean v3, v3, Lcom/sunny/CustomWebView/CustomWebView;->displayZoom:Z

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    move-object v2, v1

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    move-object v2, v1

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    move-object v2, v1

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    move-object v2, v1

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    move-object v2, v1

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    move-object v3, v0

    iget-boolean v3, v3, Lcom/sunny/CustomWebView/CustomWebView;->zoomEnabled:Z

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    move-object v2, v1

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    move-object v3, v0

    iget-boolean v3, v3, Lcom/sunny/CustomWebView/CustomWebView;->zoomEnabled:Z

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setLongClickable(Z)V

    move-object v2, v1

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    move-object v3, v0

    iget v3, v3, Lcom/sunny/CustomWebView/CustomWebView;->zoomPercent:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->cookieManager:Landroid/webkit/CookieManager;

    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    move-object v2, v1

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    move-object v2, v1

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    move-object v2, v1

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    move-object v2, v1

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    move-object v2, v1

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    move-object v2, v1

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    move-object v2, v1

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    move-object v2, v1

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    move-object v2, v1

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    move-object v2, v1

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    move-object v2, v1

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    move-object v2, v1

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    move-object v2, v1

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/CustomWebView;->UserAgent:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sunny/CustomWebView/CustomWebView;->MOBILE_USER_AGENT:Ljava/lang/String;

    iput-object v3, v2, Lcom/sunny/CustomWebView/CustomWebView;->UserAgent:Ljava/lang/String;

    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sunny/CustomWebView/CustomWebView;->UserAgent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    move-object v2, v1

    new-instance v3, Lcom/sunny/CustomWebView/CustomWebView$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/sunny/CustomWebView/CustomWebView$1;-><init>(Lcom/sunny/CustomWebView/CustomWebView;Landroid/webkit/WebView;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    move-object v2, v1

    new-instance v3, Lcom/sunny/CustomWebView/CustomWebView$2;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/sunny/CustomWebView/CustomWebView$2;-><init>(Lcom/sunny/CustomWebView/CustomWebView;Landroid/webkit/WebView;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setFindListener(Landroid/webkit/WebView$FindListener;)V

    move-object v2, v1

    new-instance v3, Lcom/sunny/CustomWebView/CustomWebView$3;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/sunny/CustomWebView/CustomWebView$3;-><init>(Lcom/sunny/CustomWebView/CustomWebView;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object v2, v1

    new-instance v3, Lcom/sunny/CustomWebView/CustomWebView$4;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/sunny/CustomWebView/CustomWebView$4;-><init>(Lcom/sunny/CustomWebView/CustomWebView;Landroid/webkit/WebView;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    move-object v2, v1

    new-instance v3, Lcom/sunny/CustomWebView/CustomWebView$5;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lcom/sunny/CustomWebView/CustomWebView$5;-><init>(Lcom/sunny/CustomWebView/CustomWebView;Landroid/webkit/WebView;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    return-void
.end method
