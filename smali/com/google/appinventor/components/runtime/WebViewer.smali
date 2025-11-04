.class public final Lcom/google/appinventor/components/runtime/WebViewer;
.super Lcom/google/appinventor/components/runtime/AndroidViewComponent;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/DownloadListener;
.implements Lcom/google/appinventor/components/runtime/ActivityResultListener;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->VIEWS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Component for viewing Web pages. The Home URL can be specified in the Designer or in the Blocks Editor. The view can be set to follow links when they are tapped, and users can fill in Web forms. Warning: This is not a full browser. For example, pressing the phone\'s hardware Back key will exit the app, rather than move back in the browser history.<p />You can use the WebViewer.WebViewString property to communicate between your app and Javascript code running in the Webviewer page. In the app, you get and set WebViewString.  In the WebViewer, you include Javascript that references the window.Kodular object, using the methoods <em>getWebViewString()</em> and <em>setWebViewString(text)</em>. <p />For example, if the WebViewer opens to a page that contains the Javascript command <br /><em>document.write(\"The answer is\" + window.Kodular.getWebViewString());</em> <br />and if you set WebView.WebVewString to \"hello\", then the web page will show <br /><em>The answer is hello</em>. <br />And if the Web page contains Javascript that executes the command <br /><em>window.Kodular.setWebViewString(\"hello from Javascript\")</em>, <br />then the value of the WebViewString property will be <br /><em>hello from Javascript</em>."
    version = 0xd
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET",
        "android.permission.READ_EXTERNAL_STORAGE",
        "android.permission.WRITE_EXTERNAL_STORAGE"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;,
        Lcom/google/appinventor/components/runtime/WebViewer$MyWebChromeClient;,
        Lcom/google/appinventor/components/runtime/WebViewer$MyWebViewClient;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WebViewer"

.field private static REQUEST_CODE_FILE_PICKER:I


# instance fields
.field private activity:Landroid/app/Activity;

.field private final androidUIHandler:Landroid/os/Handler;

.field private context:Landroid/content/Context;

.field private cookieMgr:Landroid/webkit/CookieManager;

.field private desktopMode:Z

.field private followLinks:Z

.field private form:Lcom/google/appinventor/components/runtime/Form;

.field private haveLocationPermission:Z

.field private havePermission:Z

.field private homeUrl:Ljava/lang/String;

.field private ignoreSslErrors:Z

.field private jsEnabled:Z

.field private loadImages:Z

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

.field private prompt:Z

.field private scrollbar:Z

.field private useExternalBrowser:Z

.field private final webview:Landroid/webkit/WebView;

.field wvInterface:Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;

.field private zoomControl:Z

.field private zoomEnabled:Z

.field private zoomPercent:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility",
            "AddJavascriptInterface"
        }
    .end annotation

    .prologue
    .line 160
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V

    .line 109
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/WebViewer;->followLinks:Z

    .line 112
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/WebViewer;->prompt:Z

    .line 115
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/WebViewer;->scrollbar:Z

    .line 119
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/WebViewer;->ignoreSslErrors:Z

    .line 122
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/WebViewer;->zoomControl:Z

    .line 124
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/WebViewer;->zoomEnabled:Z

    .line 126
    move-object v3, v0

    const/16 v4, 0x64

    iput v4, v3, Lcom/google/appinventor/components/runtime/WebViewer;->zoomPercent:I

    .line 129
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/WebViewer;->loadImages:Z

    .line 132
    move-object v3, v0

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/WebViewer;->cookieMgr:Landroid/webkit/CookieManager;

    .line 135
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/WebViewer;->useExternalBrowser:Z

    .line 137
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/WebViewer;->jsEnabled:Z

    .line 138
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/WebViewer;->desktopMode:Z

    .line 144
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/WebViewer;->havePermission:Z

    .line 145
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/WebViewer;->haveLocationPermission:Z

    .line 146
    move-object v3, v0

    new-instance v4, Landroid/os/Handler;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/WebViewer;->androidUIHandler:Landroid/os/Handler;

    .line 162
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/WebViewer;->context:Landroid/content/Context;

    .line 163
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/WebViewer;->activity:Landroid/app/Activity;

    .line 165
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/WebViewer;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 166
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/WebViewer;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 167
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/WebViewer;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 168
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/WebViewer;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->registerForActivityResult(Lcom/google/appinventor/components/runtime/ActivityResultListener;)I

    move-result v3

    sput v3, Lcom/google/appinventor/components/runtime/WebViewer;->REQUEST_CODE_FILE_PICKER:I

    .line 170
    move-object v3, v0

    new-instance v4, Landroid/webkit/WebView;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/WebViewer;->context:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    .line 171
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/WebViewer;->resetWebViewClient()V

    .line 174
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    .line 176
    move-object v2, v4

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 177
    move-object v3, v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 178
    move-object v3, v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 181
    move-object v3, v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 182
    move-object v3, v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 183
    move-object v3, v2

    sget-object v4, Landroid/webkit/WebSettings$LayoutAlgorithm;->TEXT_AUTOSIZING:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 186
    move-object v3, v2

    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/appinventor/components/runtime/WebViewer;->zoomControl:Z

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 187
    move-object v3, v2

    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/appinventor/components/runtime/WebViewer;->zoomEnabled:Z

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 188
    move-object v3, v2

    move-object v4, v0

    iget v4, v4, Lcom/google/appinventor/components/runtime/WebViewer;->zoomPercent:I

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 190
    move-object v3, v2

    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/appinventor/components/runtime/WebViewer;->loadImages:Z

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 191
    move-object v3, v2

    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/appinventor/components/runtime/WebViewer;->loadImages:Z

    if-nez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 193
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 196
    move-object v3, v0

    new-instance v4, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v7}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;-><init>(Lcom/google/appinventor/components/runtime/WebViewer;Landroid/content/Context;)V

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/WebViewer;->wvInterface:Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;

    .line 197
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/WebViewer;->wvInterface:Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;

    const-string/jumbo v5, "AppInventor"

    invoke-virtual {v3, v4, v5}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/WebViewer;->wvInterface:Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;

    const-string/jumbo v5, "Makeroid"

    invoke-virtual {v3, v4, v5}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/WebViewer;->wvInterface:Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;

    const-string/jumbo v5, "Kodular"

    invoke-virtual {v3, v4, v5}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    new-instance v4, Lcom/google/appinventor/components/runtime/WebViewer$1;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/WebViewer$1;-><init>(Lcom/google/appinventor/components/runtime/WebViewer;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 216
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    new-instance v4, Lcom/google/appinventor/components/runtime/WebViewer$MyWebChromeClient;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/WebViewer$MyWebChromeClient;-><init>(Lcom/google/appinventor/components/runtime/WebViewer;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 219
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 221
    move-object v3, v1

    move-object v4, v0

    invoke-interface {v3, v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$add(Lcom/google/appinventor/components/runtime/AndroidViewComponent;)V

    .line 223
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-boolean v4, v4, Lcom/google/appinventor/components/runtime/WebViewer;->jsEnabled:Z

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/WebViewer;->EnableJavaScript(Z)V

    .line 224
    move-object v3, v0

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget-boolean v4, v4, Lcom/google/appinventor/components/runtime/WebViewer;->desktopMode:Z

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/WebViewer;->DesktopMode(Z)V

    .line 225
    move-object v3, v0

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/WebViewer;->HomeUrl(Ljava/lang/String;)V

    .line 229
    move-object v3, v0

    const/4 v4, -0x2

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/WebViewer;->Width(I)V

    .line 230
    move-object v3, v0

    const/4 v4, -0x2

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/WebViewer;->Height(I)V

    .line 231
    return-void

    .line 191
    :cond_0
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/google/appinventor/components/runtime/WebViewer;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 96
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/WebViewer;->shouldOverrideUrlLoading(Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method static synthetic access$100(Lcom/google/appinventor/components/runtime/WebViewer;)Z
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/WebViewer;->ignoreSslErrors:Z

    move v0, v1

    return v0
.end method

.method static synthetic access$200(Lcom/google/appinventor/components/runtime/WebViewer;)Lcom/google/appinventor/components/runtime/Form;
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/WebViewer;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/appinventor/components/runtime/WebViewer;)Landroid/webkit/ValueCallback;
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/WebViewer;->mFilePathCallback:Landroid/webkit/ValueCallback;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/appinventor/components/runtime/WebViewer;Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 7

    .prologue
    .line 96
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/WebViewer;->mFilePathCallback:Landroid/webkit/ValueCallback;

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 96
    sget v0, Lcom/google/appinventor/components/runtime/WebViewer;->REQUEST_CODE_FILE_PICKER:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/appinventor/components/runtime/WebViewer;)Landroid/app/Activity;
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/WebViewer;->activity:Landroid/app/Activity;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$602(Lcom/google/appinventor/components/runtime/WebViewer;Z)Z
    .locals 7

    .prologue
    .line 96
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/WebViewer;->havePermission:Z

    move v0, v2

    return v0
.end method

.method static synthetic access$700(Lcom/google/appinventor/components/runtime/WebViewer;)Landroid/webkit/WebView;
    .locals 2

    .prologue
    .line 96
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$802(Lcom/google/appinventor/components/runtime/WebViewer;Z)Z
    .locals 7

    .prologue
    .line 96
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/WebViewer;->haveLocationPermission:Z

    move v0, v2

    return v0
.end method

.method private loadUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 632
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    const-string/jumbo v4, "file:///mnt/sdcard/AppInventor/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 633
    move-object v3, v2

    const-string/jumbo v4, "AppInventor"

    const-string/jumbo v5, "Kodular"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 636
    :cond_0
    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/WebViewer;->havePermission:Z

    if-nez v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/WebViewer;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v2

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->isExternalFileUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 637
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/WebViewer;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string/jumbo v4, "android.permission.READ_EXTERNAL_STORAGE"

    new-instance v5, Lcom/google/appinventor/components/runtime/WebViewer$2;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v2

    move-object v9, v1

    invoke-direct {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/WebViewer$2;-><init>(Lcom/google/appinventor/components/runtime/WebViewer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    .line 650
    .line 653
    :goto_0
    return-void

    .line 652
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 653
    goto :goto_0
.end method

.method private resetWebViewClient()V
    .locals 6

    .prologue
    .line 962
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    new-instance v2, Lcom/google/appinventor/components/runtime/WebViewer$MyWebViewClient;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/WebViewer$MyWebViewClient;-><init>(Lcom/google/appinventor/components/runtime/WebViewer;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 963
    return-void
.end method

.method public static setupWebViewGeoLoc(Lcom/google/appinventor/components/runtime/WebViewer;Landroid/webkit/WebView;Landroid/app/Activity;)V
    .locals 9

    .prologue
    .line 973
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v4}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 974
    move-object v3, v1

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 975
    move-object v3, v2

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/WebViewerUtil;->initialize(Landroid/content/Context;)V

    .line 976
    move-object v3, v1

    new-instance v4, Lcom/google/appinventor/components/runtime/WebViewer$6;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/google/appinventor/components/runtime/WebViewer$6;-><init>(Lcom/google/appinventor/components/runtime/WebViewer;Landroid/app/Activity;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1006
    return-void
.end method

.method private shouldOverrideUrlLoading(Ljava/lang/String;)Z
    .locals 8

    .prologue
    .line 347
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/WebViewer;->useExternalBrowser:Z

    if-eqz v2, :cond_0

    move-object v2, v1

    const-string/jumbo v3, "http:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v1

    const-string/jumbo v3, "https:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v1

    const-string/jumbo v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v1

    const-string/jumbo v3, "mailto:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v1

    const-string/jumbo v3, "file:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 349
    :cond_1
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/appinventor/components/runtime/WebViewer;->activity:Landroid/app/Activity;

    new-instance v3, Landroid/content/Intent;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "android.intent.action.VIEW"

    move-object v6, v1

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    const/4 v2, 0x1

    move v0, v2

    .line 355
    :goto_0
    return v0

    .line 351
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 352
    const-string/jumbo v2, "WebViewer"

    move-object v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 355
    :cond_2
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/WebViewer;->followLinks:Z

    if-nez v2, :cond_3

    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public final AfterJSEvaluated(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Get the result of the evaluated JS"
    .end annotation

    .prologue
    .line 958
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "AfterJSEvaluated"

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

    .line 959
    return-void
.end method

.method public final CanGoBack()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true if the WebViewer can go back in the history list."
    .end annotation

    .prologue
    .line 602
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public final CanGoBackOrForward(I)Z
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true if the WebViewer can go back or forward the number of steps in the history list."
    .end annotation

    .prologue
    .line 607
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->canGoBackOrForward(I)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public final CanGoForward()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns true if the WebViewer can go forward in the history list."
    .end annotation

    .prologue
    .line 594
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public final ClearCaches()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Clear WebView caches."
    .end annotation

    .prologue
    .line 744
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 745
    return-void
.end method

.method public final ClearCookies()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start to clear the WebView cookies."
    .end annotation

    .prologue
    .line 752
    move-object v0, p0

    const-string/jumbo v1, "WebViewer"

    const-string/jumbo v2, "Api is bigger than 21"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 753
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/WebViewer;->cookieMgr:Landroid/webkit/CookieManager;

    new-instance v2, Lcom/google/appinventor/components/runtime/WebViewer$4;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/WebViewer$4;-><init>(Lcom/google/appinventor/components/runtime/WebViewer;)V

    invoke-virtual {v1, v2}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    .line 758
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/WebViewer;->cookieMgr:Landroid/webkit/CookieManager;

    invoke-virtual {v1}, Landroid/webkit/CookieManager;->flush()V

    .line 759
    return-void
.end method

.method public final ClearLocations()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Clear stored location permissions."
    .end annotation

    .prologue
    .line 732
    move-object v0, p0

    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v1

    .line 733
    invoke-virtual {v1}, Landroid/webkit/GeolocationPermissions;->clearAll()V

    .line 734
    return-void
.end method

.method public final CookiesRemoved(Z)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event return true when the cookies have been successfully removed. If the cookies was successfully cleared then the next run returns false as status, if in this time no new cookies was set."
    .end annotation

    .prologue
    .line 765
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

    .line 766
    return-void
.end method

.method public final CurrentPageTitle()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Title of the page currently viewed"
    .end annotation

    .prologue
    .line 493
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v1, ""

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public final CurrentUrl()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "URL of the page currently viewed. This could be different from the Home URL if new pages were visited by following links."
    .end annotation

    .prologue
    .line 482
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string/jumbo v1, ""

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public final DesktopMode(Z)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "false"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 912
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/WebViewer;->desktopMode:Z

    .line 914
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    move-object v2, v3

    .line 915
    move v3, v1

    if-eqz v3, :cond_0

    .line 916
    move-object v3, v2

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Mobile"

    const-string/jumbo v5, "eliboM"

    .line 917
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Android"

    const-string/jumbo v5, "diordnA"

    .line 918
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 919
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 920
    .line 923
    :goto_0
    return-void

    .line 921
    :cond_0
    move-object v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 923
    goto :goto_0
.end method

.method public final DesktopMode()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get/Set Desktop mode by altering the user agent string."
    .end annotation

    .prologue
    .line 927
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/WebViewer;->desktopMode:Z

    move v0, v1

    return v0
.end method

.method public final EnableJavaScript(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Enable/Disable JavaScript. Enabled by default"
    .end annotation

    .prologue
    .line 933
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/WebViewer;->jsEnabled:Z

    .line 934
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 935
    return-void
.end method

.method public final EnableJavaScript()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Evaluate Javascript in current page context"
    .end annotation

    .prologue
    .line 939
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/WebViewer;->jsEnabled:Z

    move v0, v1

    return v0
.end method

.method public final EvaluateJS(Ljava/lang/String;)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Evaluate JS in the context of the current page"
    .end annotation

    .prologue
    .line 944
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    move-object v3, v1

    new-instance v4, Lcom/google/appinventor/components/runtime/WebViewer$5;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/WebViewer$5;-><init>(Lcom/google/appinventor/components/runtime/WebViewer;)V

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 954
    return-void
.end method

.method public final FollowLinks(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 518
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/WebViewer;->followLinks:Z

    .line 519
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/WebViewer;->resetWebViewClient()V

    .line 520
    return-void
.end method

.method public final FollowLinks()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Determines whether to follow links when they are tapped in the WebViewer.  If you follow links, you can use GoBack and GoForward to navigate the browser history. "
    .end annotation

    .prologue
    .line 505
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/WebViewer;->followLinks:Z

    move v0, v1

    return v0
.end method

.method public final GoBack()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Go back to the previous page in the history list. Does nothing if there is no previous page."
    .end annotation

    .prologue
    .line 566
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 567
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->goBack()V

    .line 569
    :cond_0
    return-void
.end method

.method public final GoBackOrForward(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Go forward or backward a number of steps away from the current page. Steps is negative if backward and positive if forward."
    .end annotation

    .prologue
    .line 586
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->goBackOrForward(I)V

    .line 587
    return-void
.end method

.method public final GoForward()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Go forward to the next page in the history list. Does nothing if there is no next page."
    .end annotation

    .prologue
    .line 578
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 579
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->goForward()V

    .line 581
    :cond_0
    return-void
.end method

.method public final GoHome()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Loads the home URL page. This happens automatically when the home URL is changed."
    .end annotation

    .prologue
    .line 556
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "GoHome"

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/WebViewer;->homeUrl:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/WebViewer;->loadUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    return-void
.end method

.method public final GoToUrl(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Load the page at the given URL."
    .end annotation

    .prologue
    .line 625
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string/jumbo v3, "file:///mnt/sdcard/AppInventor/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 626
    move-object v2, v1

    const-string/jumbo v3, "AppInventor"

    const-string/jumbo v4, "Kodular"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 628
    :cond_0
    move-object v2, v0

    const-string/jumbo v3, "GoToUrl"

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lcom/google/appinventor/components/runtime/WebViewer;->loadUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    return-void
.end method

.method public final Height(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 441
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 442
    const/4 v2, -0x2

    move v1, v2

    .line 444
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Height(I)V

    .line 445
    return-void
.end method

.method public final HomeUrl()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "URL of the page the WebViewer should initially open to. Setting this will load the page."
    .end annotation

    .prologue
    .line 455
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/WebViewer;->homeUrl:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public final HomeUrl(Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 466
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/appinventor/components/runtime/WebViewer;->homeUrl:Ljava/lang/String;

    .line 468
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->clearHistory()V

    .line 469
    move-object v2, v0

    const-string/jumbo v3, "HomeUrl"

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/WebViewer;->homeUrl:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/google/appinventor/components/runtime/WebViewer;->loadUrl(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    return-void
.end method

.method public final IgnoreSslErrors(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 544
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/WebViewer;->ignoreSslErrors:Z

    .line 545
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/WebViewer;->resetWebViewClient()V

    .line 546
    return-void
.end method

.method public final IgnoreSslErrors()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Determine whether or not to ignore SSL errors. Set to true to ignore errors. Use this to accept self signed certificates from websites."
    .end annotation

    .prologue
    .line 532
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/WebViewer;->ignoreSslErrors:Z

    move v0, v1

    return v0
.end method

.method public final LoadHtml(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Load HTML content using Base64-encoded data URI scheme"
    .end annotation

    .prologue
    .line 657
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 658
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    move-object v3, v1

    const-string/jumbo v4, "text/html"

    const-string/jumbo v5, "base64"

    invoke-virtual {v2, v3, v4, v5}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    return-void
.end method

.method public final LoadImages(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .prologue
    .line 864
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/WebViewer;->loadImages:Z

    .line 865
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 866
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    move v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 867
    return-void

    .line 866
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public final LoadImages()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether or not to automatically load images"
    .end annotation

    .prologue
    .line 857
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/WebViewer;->loadImages:Z

    move v0, v1

    return v0
.end method

.method public final OnConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Get webpage console output"
    .end annotation

    .prologue
    .line 399
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    const-string/jumbo v5, "OnConsoleMessage"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v1

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    move v9, v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x2

    move-object v9, v3

    aput-object v9, v7, v8

    invoke-static {v4, v5, v6}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v4

    .line 400
    return-void
.end method

.method public final OnDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 14
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event for listening download links."
    .end annotation

    .prologue
    .line 259
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-object v6, v0

    const-string/jumbo v7, "OnDownloadStart"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x0

    move-object v11, v1

    aput-object v11, v9, v10

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x1

    move-object v11, v2

    aput-object v11, v9, v10

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x2

    move-object v11, v3

    aput-object v11, v9, v10

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x3

    move-wide v11, v4

    .line 260
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    .line 259
    invoke-static {v6, v7, v8}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v6

    .line 261
    return-void
.end method

.method public final PageLoaded(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Triggers when page finished loading"
    .end annotation

    .prologue
    .line 891
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "PageLoaded"

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

    .line 892
    return-void
.end method

.method public final ProgressChanged(I)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect that the loading progress has changed."
    .end annotation

    .prologue
    .line 394
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const-string/jumbo v3, "ProgressChanged"

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

    .line 395
    return-void
.end method

.method public final PromptforPermission(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        userVisible = true
    .end annotation

    .prologue
    .line 721
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/WebViewer;->prompt:Z

    .line 722
    return-void
.end method

.method public final PromptforPermission()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If True, then prompt the user of the WebView to give permission to access the geolocation API. If False, then assume permission is granted."
    .end annotation

    .prologue
    .line 709
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/WebViewer;->prompt:Z

    move v0, v1

    return v0
.end method

.method public final Reload()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reloads the current page"
    .end annotation

    .prologue
    .line 617
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->reload()V

    .line 618
    return-void
.end method

.method public final Scrollbar(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Whether to display a scrollbar"
    .end annotation

    .prologue
    .line 775
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 776
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 777
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/WebViewer;->scrollbar:Z

    .line 778
    return-void
.end method

.method public final Scrollbar()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 782
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/WebViewer;->scrollbar:Z

    move v0, v1

    return v0
.end method

.method public final StopLoading()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stops the current load."
    .end annotation

    .prologue
    .line 612
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->stopLoading()V

    .line 613
    return-void
.end method

.method public final UseExternalBrowser(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Open a link in the webviewer page using the external browser. If true the page will be loaded in the external browser and not in the webviewer itself."
    .end annotation

    .prologue
    .line 885
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/WebViewer;->useExternalBrowser:Z

    .line 886
    move-object v2, v0

    invoke-direct {v2}, Lcom/google/appinventor/components/runtime/WebViewer;->resetWebViewClient()V

    .line 887
    return-void
.end method

.method public final UseExternalBrowser()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Open a link in the webviewer page using the external browser. If true the page will be loaded in the external browser and not in the webviewer itself."
    .end annotation

    .prologue
    .line 875
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/WebViewer;->useExternalBrowser:Z

    move v0, v1

    return v0
.end method

.method public final UserAgent()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get User Agent"
    .end annotation

    .prologue
    .line 904
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public final UserAgent(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 899
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 900
    return-void
.end method

.method public final UsesLocation(Z)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
        propertyType = "advanced"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Whether or not to give the application permission to use the Javascript geolocation API. This property is available only in the designer."
        userVisible = false
    .end annotation

    .prologue
    .line 674
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/WebViewer;->haveLocationPermission:Z

    if-nez v2, :cond_0

    .line 676
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/WebViewer;->androidUIHandler:Landroid/os/Handler;

    new-instance v3, Lcom/google/appinventor/components/runtime/WebViewer$3;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/WebViewer$3;-><init>(Lcom/google/appinventor/components/runtime/WebViewer;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v2

    .line 698
    :goto_0
    return-void

    .line 695
    :cond_0
    move v2, v1

    if-eqz v2, :cond_1

    .line 696
    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/WebViewer;->activity:Landroid/app/Activity;

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/WebViewer;->setupWebViewGeoLoc(Lcom/google/appinventor/components/runtime/WebViewer;Landroid/webkit/WebView;Landroid/app/Activity;)V

    .line 698
    :cond_1
    goto :goto_0
.end method

.method public final WebViewString()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Gets the WebView\'s String, which is viewable through Javascript in the WebView as the window.AppInventor object"
    .end annotation

    .prologue
    .line 1019
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/WebViewer;->wvInterface:Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;->getWebViewString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public final WebViewString(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
    .end annotation

    .prologue
    .line 1027
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/WebViewer;->wvInterface:Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/WebViewer$WebViewInterface;->setWebViewStringFromBlocks(Ljava/lang/String;)V

    .line 1028
    return-void
.end method

.method public final WebViewStringChange(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "When the JavaScript calls AppInventor.setWebViewString this event is run."
    .end annotation

    .prologue
    .line 1035
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "WebViewStringChange"

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

    .line 1036
    return-void
.end method

.method public final Width(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 432
    move-object v0, p0

    move v1, p1

    move v2, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 433
    const/4 v2, -0x2

    move v1, v2

    .line 435
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidViewComponent;->Width(I)V

    .line 436
    return-void
.end method

.method public final ZoomDisplay(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .prologue
    .line 804
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/WebViewer;->zoomControl:Z

    .line 805
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    move-object v3, v0

    iget-boolean v3, v3, Lcom/google/appinventor/components/runtime/WebViewer;->zoomControl:Z

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 806
    return-void
.end method

.method public final ZoomDisplay()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Show or Hide the zoom display."
    .end annotation

    .prologue
    .line 793
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/WebViewer;->zoomControl:Z

    move v0, v1

    return v0
.end method

.method public final ZoomEnabled(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .prologue
    .line 827
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/WebViewer;->zoomEnabled:Z

    .line 828
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 829
    return-void
.end method

.method public final ZoomEnabled()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Enable or Disable pinch zooming. This effects both pinch zooming and the zoom controls."
    .end annotation

    .prologue
    .line 816
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/WebViewer;->zoomEnabled:Z

    move v0, v1

    return v0
.end method

.method public final ZoomPercent()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The zoom of the page in percent %"
    .end annotation

    .prologue
    .line 839
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/WebViewer;->zoomPercent:I

    move v0, v1

    return v0
.end method

.method public final ZoomPercent(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "100"
        editorType = "integer"
    .end annotation

    .prologue
    .line 850
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/WebViewer;->zoomPercent:I

    .line 851
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 852
    return-void
.end method

.method public final getView()Landroid/view/View;
    .locals 2

    .prologue
    .line 235
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    move-object v0, v1

    return-object v0
.end method

.method protected final handleAppRequest(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 14

    .prologue
    .line 322
    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    const-string/jumbo v6, "file:///android_asset/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 323
    move-object v5, v1

    const/16 v6, 0x16

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 329
    :goto_0
    :try_start_0
    const-string/jumbo v5, "WebViewer"

    const-string/jumbo v6, "webviewer requested path = "

    move-object v7, v1

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 330
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/WebViewer;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v6, v1

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/Form;->openAsset(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    move-object v2, v5

    .line 331
    new-instance v5, Ljava/util/HashMap;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    .line 332
    move-object v3, v6

    const-string/jumbo v6, "Access-Control-Allow-Origin"

    const-string/jumbo v7, "localhost"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 333
    invoke-static {}, Ljava/net/URLConnection;->getFileNameMap()Ljava/net/FileNameMap;

    move-result-object v5

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/net/FileNameMap;->getContentTypeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 334
    const-string/jumbo v5, "utf-8"

    move-object v4, v5

    .line 335
    const-string/jumbo v5, "WebViewer"

    const-string/jumbo v6, "Mime type = "

    move-object v7, v1

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 336
    move-object v5, v1

    const-string/jumbo v6, "text/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 337
    const/4 v5, 0x0

    move-object v4, v5

    .line 339
    :cond_0
    new-instance v5, Landroid/webkit/WebResourceResponse;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v1

    move-object v8, v4

    const/16 v9, 0xc8

    const-string/jumbo v10, "OK"

    move-object v11, v3

    move-object v12, v2

    invoke-direct/range {v6 .. v12}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    .line 342
    :goto_1
    return-object v0

    .line 325
    :cond_1
    move-object v5, v1

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    const-string/jumbo v7, "//localhost/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0xc

    add-int/lit8 v6, v6, 0xc

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    goto/16 :goto_0

    .line 341
    :catch_0
    move-exception v5

    new-instance v5, Ljava/io/ByteArrayInputStream;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    const-string/jumbo v7, "404 Not Found"

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v1, v5

    .line 342
    new-instance v5, Landroid/webkit/WebResourceResponse;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    const-string/jumbo v7, "text/plain"

    const-string/jumbo v8, "utf-8"

    const/16 v9, 0x194

    const-string/jumbo v10, "Not Found"

    const/4 v11, 0x0

    move-object v12, v1

    invoke-direct/range {v6 .. v12}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    move-object v0, v5

    goto :goto_1
.end method

.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 15

    .prologue
    .line 254
    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-wide/from16 v6, p5

    move-object v8, v1

    move-object v9, v2

    move-object v10, v4

    move-object v11, v5

    move-wide v12, v6

    invoke-virtual/range {v8 .. v13}, Lcom/google/appinventor/components/runtime/WebViewer;->OnDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 255
    return-void
.end method

.method public final onPause()V
    .locals 2

    .prologue
    .line 240
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 241
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->onPause()V

    .line 243
    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 2

    .prologue
    .line 247
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 248
    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/WebViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->onResume()V

    .line 250
    :cond_0
    return-void
.end method

.method public final resultReturned(IILandroid/content/Intent;)V
    .locals 10

    .prologue
    .line 404
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v5, v1

    sget v6, Lcom/google/appinventor/components/runtime/WebViewer;->REQUEST_CODE_FILE_PICKER:I

    if-ne v5, v6, :cond_2

    .line 406
    move v5, v2

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 407
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/WebViewer;->mFilePathCallback:Landroid/webkit/ValueCallback;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 408
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/WebViewer;->mFilePathCallback:Landroid/webkit/ValueCallback;

    .line 409
    .line 425
    :goto_0
    return-void

    .line 412
    :cond_0
    move v5, v2

    move-object v6, v3

    invoke-static {v5, v6}, Landroid/webkit/WebChromeClient$FileChooserParams;->parseResult(ILandroid/content/Intent;)[Landroid/net/Uri;

    move-result-object v5

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    .line 413
    move-object v1, v6

    if-nez v5, :cond_1

    .line 414
    move-object v5, v3

    invoke-virtual {v5}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v5

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    .line 415
    move-object v2, v6

    invoke-virtual {v5}, Landroid/content/ClipData;->getItemCount()I

    move-result v5

    move v9, v5

    move v5, v9

    move v6, v9

    .line 416
    move v3, v6

    new-array v5, v5, [Landroid/net/Uri;

    move-object v1, v5

    .line 418
    const/4 v5, 0x0

    move v4, v5

    :goto_1
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_1

    .line 419
    move-object v5, v1

    move v6, v4

    move-object v7, v2

    move v8, v4

    invoke-virtual {v7, v8}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v7

    aput-object v7, v5, v6

    .line 418
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 422
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/WebViewer;->mFilePathCallback:Landroid/webkit/ValueCallback;

    move-object v6, v1

    invoke-interface {v5, v6}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 423
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/WebViewer;->mFilePathCallback:Landroid/webkit/ValueCallback;

    .line 425
    :cond_2
    goto :goto_0
.end method
