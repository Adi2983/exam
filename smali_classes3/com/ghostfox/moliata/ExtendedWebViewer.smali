.class public Lcom/ghostfox/moliata/ExtendedWebViewer;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "ExtendedWebViewer.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXTENSION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "An extension that extends the features of the existing Web Viewer component <br>Created by Sivagiri Visakan & ILoveThunkable"
    iconName = "http://voltscdn.weebly.com/uploads/2/0/8/1/20817010/idea.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
    external = true
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET,android.permission.ACCESS_NETWORK_STATE,android.permission.WRITE_EXTERNAL_STORAGE"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ghostfox/moliata/ExtendedWebViewer$webViewClient;
    }
.end annotation


# instance fields
.field public final LOG_TAG:Ljava/lang/String;

.field private final activity:Landroid/app/Activity;

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private desc:Ljava/lang/String;

.field private downloadReceiver:Landroid/content/BroadcastReceiver;

.field private showNotification:Z

.field public suppressToast:Z

.field public userAgentString:Ljava/lang/String;

.field public webView:Landroid/webkit/WebView;

.field public webViewer:Lcom/google/appinventor/components/runtime/WebViewer;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 8

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/ghostfox/moliata/ExtendedWebViewer;
    move-object v1, p1

    .local v1, "container":Lcom/google/appinventor/components/runtime/ComponentContainer;
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 44
    move-object v3, v0

    const-string/jumbo v4, "ExtendedWebViewer"

    iput-object v4, v3, Lcom/ghostfox/moliata/ExtendedWebViewer;->LOG_TAG:Ljava/lang/String;

    .line 46
    move-object v3, v0

    const-string/jumbo v4, ""

    iput-object v4, v3, Lcom/ghostfox/moliata/ExtendedWebViewer;->userAgentString:Ljava/lang/String;

    .line 50
    move-object v3, v0

    const-string/jumbo v4, "Downloading file"

    iput-object v4, v3, Lcom/ghostfox/moliata/ExtendedWebViewer;->desc:Ljava/lang/String;

    .line 51
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/ghostfox/moliata/ExtendedWebViewer;->showNotification:Z

    .line 249
    move-object v3, v0

    new-instance v4, Lcom/ghostfox/moliata/ExtendedWebViewer$3;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/ghostfox/moliata/ExtendedWebViewer$3;-><init>(Lcom/ghostfox/moliata/ExtendedWebViewer;)V

    iput-object v4, v3, Lcom/ghostfox/moliata/ExtendedWebViewer;->downloadReceiver:Landroid/content/BroadcastReceiver;

    .line 56
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/ghostfox/moliata/ExtendedWebViewer;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 57
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, v3, Lcom/ghostfox/moliata/ExtendedWebViewer;->context:Landroid/content/Context;

    .line 58
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, v3, Lcom/ghostfox/moliata/ExtendedWebViewer;->activity:Landroid/app/Activity;

    .line 59
    const-string/jumbo v3, "ExtendedWebViewer"

    const-string/jumbo v4, "ExtendedWebViewer Created"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 60
    new-instance v3, Landroid/content/IntentFilter;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 61
    .local v2, "filter":Landroid/content/IntentFilter;
    move-object v3, v0

    iget-object v3, v3, Lcom/ghostfox/moliata/ExtendedWebViewer;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v0

    iget-object v4, v4, Lcom/ghostfox/moliata/ExtendedWebViewer;->downloadReceiver:Landroid/content/BroadcastReceiver;

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    .line 62
    return-void
.end method


# virtual methods
.method public AfterReload(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event fires after the Reload block"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "this":Lcom/ghostfox/moliata/ExtendedWebViewer;
    move-object v1, p1

    .local v1, "url":Ljava/lang/String;
    move-object v2, v0

    const-string/jumbo v3, "AfterReload"

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

    .line 190
    return-void
.end method

.method public DownloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "A function to download files through android\'s default download manager."
    .end annotation

    .prologue
    .line 100
    move-object v1, p0

    .local v1, "this":Lcom/ghostfox/moliata/ExtendedWebViewer;
    move-object v2, p1

    .local v2, "filename":Ljava/lang/String;
    move-object/from16 v3, p2

    .local v3, "url":Ljava/lang/String;
    move-object/from16 v4, p3

    .local v4, "mimeType":Ljava/lang/String;
    move-object/from16 v5, p4

    .local v5, "userAgent":Ljava/lang/String;
    move-object/from16 v6, p5

    .local v6, "contentDisposition":Ljava/lang/String;
    move-object v10, v2

    if-eqz v10, :cond_1

    move-object v10, v2

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    move-object v10, v2

    :goto_0
    move-object v2, v10

    .line 101
    new-instance v10, Landroid/app/DownloadManager$Request;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v3

    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    move-object v7, v10

    .line 103
    .local v7, "request":Landroid/app/DownloadManager$Request;
    move-object v10, v7

    move-object v11, v4

    invoke-virtual {v10, v11}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    move-result-object v10

    .line 104
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v10

    move-object v11, v3

    invoke-virtual {v10, v11}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 105
    .local v8, "cookies":Ljava/lang/String;
    move-object v10, v7

    const-string/jumbo v11, "cookie"

    move-object v12, v8

    invoke-virtual {v10, v11, v12}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    move-result-object v10

    .line 106
    move-object v10, v7

    const-string/jumbo v11, "User-Agent"

    move-object v12, v5

    invoke-virtual {v10, v11, v12}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    move-result-object v10

    .line 108
    move-object v10, v7

    move-object v11, v2

    invoke-virtual {v10, v11}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    move-result-object v10

    .line 109
    move-object v10, v7

    invoke-virtual {v10}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    .line 110
    move-object v10, v1

    iget-boolean v10, v10, Lcom/ghostfox/moliata/ExtendedWebViewer;->showNotification:Z

    if-eqz v10, :cond_0

    .line 111
    move-object v10, v7

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    move-result-object v10

    .line 113
    :cond_0
    move-object v10, v7

    sget-object v11, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    move-object v12, v2

    invoke-virtual {v10, v11, v12}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    move-result-object v10

    .line 114
    move-object v10, v1

    iget-object v10, v10, Lcom/ghostfox/moliata/ExtendedWebViewer;->context:Landroid/content/Context;

    move-object v11, v1

    iget-object v11, v11, Lcom/ghostfox/moliata/ExtendedWebViewer;->context:Landroid/content/Context;

    const-string/jumbo v11, "download"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/DownloadManager;

    move-object v9, v10

    .line 115
    .local v9, "dm":Landroid/app/DownloadManager;
    move-object v10, v9

    move-object v11, v7

    invoke-virtual {v10, v11}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v10

    .line 116
    return-void

    .line 100
    .end local v7    # "request":Landroid/app/DownloadManager$Request;
    .end local v8    # "cookies":Ljava/lang/String;
    .end local v9    # "dm":Landroid/app/DownloadManager;
    :cond_1
    move-object v10, v3

    move-object v11, v6

    move-object v12, v4

    invoke-static {v10, v11, v12}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_0
.end method

.method public EnableOAuth()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Enable the OAuth requests made from the WebViewer"
    .end annotation

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/ghostfox/moliata/ExtendedWebViewer;
    move-object v1, v0

    iget-object v1, v1, Lcom/ghostfox/moliata/ExtendedWebViewer;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const-string/jumbo v2, "http.agent"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public GetContentHeight()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Gets the height of the HTML content."
    .end annotation

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lcom/ghostfox/moliata/ExtendedWebViewer;
    move-object v1, v0

    iget-object v1, v1, Lcom/ghostfox/moliata/ExtendedWebViewer;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/ghostfox/moliata/ExtendedWebViewer;
    return v0
.end method

.method public GetUserAgent()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the User Agent String of the WebViewer."
    .end annotation

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/ghostfox/moliata/ExtendedWebViewer;
    move-object v1, v0

    iget-object v1, v1, Lcom/ghostfox/moliata/ExtendedWebViewer;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/ghostfox/moliata/ExtendedWebViewer;
    return-object v0
.end method

.method public InvokeZoomPicker()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Show the zoom icons for the WebViewer"
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/ghostfox/moliata/ExtendedWebViewer;
    move-object v1, v0

    iget-object v1, v1, Lcom/ghostfox/moliata/ExtendedWebViewer;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->invokeZoomPicker()V

    .line 83
    return-void
.end method

.method public OnDownloadFinished()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that a webpage has finished loading."
    .end annotation

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "this":Lcom/ghostfox/moliata/ExtendedWebViewer;
    move-object v1, v0

    const-string/jumbo v2, "OnDownloadFinished"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    .line 225
    return-void
.end method

.method public OnDownloadNeeded(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 15
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that the content at the URL cannot be displayed in the Web Viewer \n and therefore needs to be downloaded to view the content. contentLength is the size in bytes"
    .end annotation

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Lcom/ghostfox/moliata/ExtendedWebViewer;
    move-object/from16 v1, p1

    .local v1, "url":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "mimeType":Ljava/lang/String;
    move-object/from16 v3, p3

    .local v3, "userAgent":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "contentDisposition":Ljava/lang/String;
    move-wide/from16 v5, p5

    .local v5, "contentLength":J
    move-object v7, v0

    const-string/jumbo v8, "OnDownloadNeeded"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x0

    move-object v12, v1

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

    .line 219
    return-void
.end method

.method public OnErrorOccured(ILjava/lang/String;Ljava/lang/String;)V
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that a webviewer has encountered an error while loading a webpage."
    .end annotation

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "this":Lcom/ghostfox/moliata/ExtendedWebViewer;
    move v1, p1

    .local v1, "code":I
    move-object v2, p2

    .local v2, "message":Ljava/lang/String;
    move-object v3, p3

    .local v3, "failingUrl":Ljava/lang/String;
    move-object v4, v0

    const-string/jumbo v5, "OnErrorOccured"

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

    .line 213
    return-void
.end method

.method public OnLoadingFinished(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that a webpage has finished loading."
    .end annotation

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Lcom/ghostfox/moliata/ExtendedWebViewer;
    move-object v1, p1

    .local v1, "url":Ljava/lang/String;
    move-object v2, v0

    const-string/jumbo v3, "OnLoadingFinished"

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

    .line 207
    return-void
.end method

.method public OnLoadingStarted(Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates that a webpage has started loading."
    .end annotation

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "this":Lcom/ghostfox/moliata/ExtendedWebViewer;
    move-object v1, p1

    .local v1, "url":Ljava/lang/String;
    move-object v2, v0

    const-string/jumbo v3, "OnLoadingStarted"

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

    .line 201
    return-void
.end method

.method public OnProgressChanged(I)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Indicates the progress of loading of a webpage.The value of \"progress\" lies between 1 and 100"
    .end annotation

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Lcom/ghostfox/moliata/ExtendedWebViewer;
    move v1, p1

    .local v1, "progress":I
    move-object v2, v0

    const-string/jumbo v3, "OnProgressChanged"

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

    .line 195
    return-void
.end method

.method public Reload()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Reload the current page. AfterReload event is called after this block"
    .end annotation

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/ghostfox/moliata/ExtendedWebViewer;
    move-object v1, v0

    iget-object v1, v1, Lcom/ghostfox/moliata/ExtendedWebViewer;->webView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->reload()V

    .line 89
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lcom/ghostfox/moliata/ExtendedWebViewer;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ghostfox/moliata/ExtendedWebViewer;->AfterReload(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public SetUserAgent(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set a custom User Agent for the WebViewer"
    .end annotation

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/ghostfox/moliata/ExtendedWebViewer;
    move-object v1, p1

    .local v1, "userAgent":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lcom/ghostfox/moliata/ExtendedWebViewer;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public ShowNotification(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Lcom/ghostfox/moliata/ExtendedWebViewer;
    move v1, p1

    .local v1, "show":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/ghostfox/moliata/ExtendedWebViewer;->showNotification:Z

    .line 181
    return-void
.end method

.method public ShowNotification()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Shows an notification about downloading of a file in the status bar if true "
    .end annotation

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Lcom/ghostfox/moliata/ExtendedWebViewer;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/ghostfox/moliata/ExtendedWebViewer;->showNotification:Z

    move v0, v1

    .end local v0    # "this":Lcom/ghostfox/moliata/ExtendedWebViewer;
    return v0
.end method

.method public WebViewer()Lcom/google/appinventor/components/runtime/WebViewer;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Get the Web Viewer component in which all the functions will be executed ."
    .end annotation

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Lcom/ghostfox/moliata/ExtendedWebViewer;
    move-object v1, v0

    iget-object v1, v1, Lcom/ghostfox/moliata/ExtendedWebViewer;->webViewer:Lcom/google/appinventor/components/runtime/WebViewer;

    move-object v0, v1

    .end local v0    # "this":Lcom/ghostfox/moliata/ExtendedWebViewer;
    return-object v0
.end method

.method public WebViewer(Lcom/google/appinventor/components/runtime/WebViewer;)V
    .locals 7
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the Web Viewer component in which all the functions will be executed ."
    .end annotation

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Lcom/ghostfox/moliata/ExtendedWebViewer;
    move-object v1, p1

    .local v1, "webViewerComponent":Lcom/google/appinventor/components/runtime/WebViewer;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/ghostfox/moliata/ExtendedWebViewer;->webViewer:Lcom/google/appinventor/components/runtime/WebViewer;

    .line 141
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/ghostfox/moliata/ExtendedWebViewer;->webViewer:Lcom/google/appinventor/components/runtime/WebViewer;

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/WebViewer;->getView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    iput-object v3, v2, Lcom/ghostfox/moliata/ExtendedWebViewer;->webView:Landroid/webkit/WebView;

    .line 143
    move-object v2, v0

    iget-object v2, v2, Lcom/ghostfox/moliata/ExtendedWebViewer;->webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/ghostfox/moliata/ExtendedWebViewer$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/ghostfox/moliata/ExtendedWebViewer$1;-><init>(Lcom/ghostfox/moliata/ExtendedWebViewer;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 150
    move-object v2, v0

    iget-object v2, v2, Lcom/ghostfox/moliata/ExtendedWebViewer;->webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/ghostfox/moliata/ExtendedWebViewer$webViewClient;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/ghostfox/moliata/ExtendedWebViewer$webViewClient;-><init>(Lcom/ghostfox/moliata/ExtendedWebViewer;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 153
    move-object v2, v0

    iget-object v2, v2, Lcom/ghostfox/moliata/ExtendedWebViewer;->webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/ghostfox/moliata/ExtendedWebViewer$2;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/ghostfox/moliata/ExtendedWebViewer$2;-><init>(Lcom/ghostfox/moliata/ExtendedWebViewer;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 159
    return-void
.end method
