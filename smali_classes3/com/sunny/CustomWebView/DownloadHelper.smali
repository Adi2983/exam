.class public Lcom/sunny/CustomWebView/DownloadHelper;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;

# interfaces
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    androidMinSdk = 0x15
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXTENSION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Helper class of CustomWebView extension for downloading files <br> Developed by Sunny Gupta"
    helpUrl = "https://github.com/vknow360/CustomWebView"
    iconName = "https://res.cloudinary.com/andromedaviewflyvipul/image/upload/c_scale,h_20,w_20/v1571472765/ktvu4bapylsvnykoyhdm.png"
    nonVisible = true
    version = 0x1
    versionName = "1.1"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
    external = true
.end annotation


# instance fields
.field public completed:Landroid/content/BroadcastReceiver;

.field public context:Landroid/content/Context;

.field public downloadManager:Landroid/app/DownloadManager;

.field public lastRequestId:J


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    move-object v2, v0

    new-instance v3, Lcom/sunny/CustomWebView/DownloadHelper$1;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/sunny/CustomWebView/DownloadHelper$1;-><init>(Lcom/sunny/CustomWebView/DownloadHelper;)V

    iput-object v3, v2, Lcom/sunny/CustomWebView/DownloadHelper;->completed:Landroid/content/BroadcastReceiver;

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/sunny/CustomWebView/DownloadHelper;->context:Landroid/content/Context;

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lcom/sunny/CustomWebView/DownloadHelper;->context:Landroid/content/Context;

    const-string/jumbo v4, "download"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/DownloadManager;

    iput-object v3, v2, Lcom/sunny/CustomWebView/DownloadHelper;->downloadManager:Landroid/app/DownloadManager;

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/DownloadHelper;->context:Landroid/content/Context;

    move-object v3, v0

    iget-object v3, v3, Lcom/sunny/CustomWebView/DownloadHelper;->completed:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string/jumbo v6, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    return-void
.end method

.method static synthetic access$000(Lcom/sunny/CustomWebView/DownloadHelper;)Lcom/google/appinventor/components/runtime/Form;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/DownloadHelper;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public Cancel()V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Cancels the current download request"
    .end annotation

    move-object v1, p0

    move-object v2, v1

    iget-object v2, v2, Lcom/sunny/CustomWebView/DownloadHelper;->downloadManager:Landroid/app/DownloadManager;

    const/4 v3, 0x1

    new-array v3, v3, [J

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    move-object v6, v1

    iget-wide v6, v6, Lcom/sunny/CustomWebView/DownloadHelper;->lastRequestId:J

    aput-wide v6, v4, v5

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager;->remove([J)I

    move-result v2

    return-void
.end method

.method public Download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Downloads the given file"
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object v12, v5

    move-object v7, v12

    move-object v12, v6

    move-object v8, v12

    new-instance v12, Landroid/app/DownloadManager$Request;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-object v14, v2

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    move-object v9, v12

    move-object v12, v9

    move-object v13, v3

    invoke-virtual {v12, v13}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    move-result-object v12

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v12

    move-object v13, v2

    invoke-virtual {v12, v13}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    move-object v12, v9

    const-string/jumbo v13, "cookie"

    move-object v14, v10

    invoke-virtual {v12, v13, v14}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    move-result-object v12

    move-object v12, v9

    const-string/jumbo v13, "Downloading file..."

    invoke-virtual {v12, v13}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    move-result-object v12

    move-object v12, v9

    move-object v13, v5

    invoke-virtual {v12, v13}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    move-result-object v12

    move-object v12, v9

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    move-result-object v12

    move-object v12, v6

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_0

    sget-object v12, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    move-object v8, v12

    :cond_0
    move-object v12, v5

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1

    move-object v12, v2

    move-object v13, v4

    move-object v14, v3

    invoke-static {v12, v13, v14}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v7, v12

    move-object v12, v9

    move-object v13, v7

    invoke-virtual {v12, v13}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    move-result-object v12

    :cond_1
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0x1d

    if-lt v12, v13, :cond_2

    move-object v12, v9

    move-object v13, v1

    iget-object v13, v13, Lcom/sunny/CustomWebView/DownloadHelper;->context:Landroid/content/Context;

    move-object v14, v8

    move-object v15, v7

    invoke-virtual {v12, v13, v14, v15}, Landroid/app/DownloadManager$Request;->setDestinationInExternalFilesDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    move-result-object v12

    :goto_0
    move-object v12, v1

    move-object v13, v1

    iget-object v13, v13, Lcom/sunny/CustomWebView/DownloadHelper;->downloadManager:Landroid/app/DownloadManager;

    move-object v14, v9

    invoke-virtual {v13, v14}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v13

    iput-wide v13, v12, Lcom/sunny/CustomWebView/DownloadHelper;->lastRequestId:J

    new-instance v12, Ljava/util/Timer;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    invoke-direct {v13}, Ljava/util/Timer;-><init>()V

    move-object v11, v12

    move-object v12, v11

    new-instance v13, Lcom/sunny/CustomWebView/DownloadHelper$2;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    move-object v15, v1

    move-object/from16 v16, v11

    invoke-direct/range {v14 .. v16}, Lcom/sunny/CustomWebView/DownloadHelper$2;-><init>(Lcom/sunny/CustomWebView/DownloadHelper;Ljava/util/Timer;)V

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x3e8

    invoke-virtual/range {v12 .. v17}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void

    :cond_2
    move-object v12, v9

    move-object v13, v8

    move-object v14, v7

    invoke-virtual {v12, v13, v14}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    move-result-object v12

    goto :goto_0
.end method

.method public DownloadCompleted()V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event invoked when downloading gets completed"
    .end annotation

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "DownloadCompleted"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    move-result v1

    return-void
.end method

.method public DownloadProgressChanged(I)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event invoked when downloading progress changes"
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const-string/jumbo v3, "DownloadProgressChanged"

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

.method public OpenFile()V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Tries to open the last downloaded file"
    .end annotation

    move-object v1, p0

    move-object v3, v1

    :try_start_0
    iget-object v3, v3, Lcom/sunny/CustomWebView/DownloadHelper;->downloadManager:Landroid/app/DownloadManager;

    move-object v4, v1

    iget-wide v4, v4, Lcom/sunny/CustomWebView/DownloadHelper;->lastRequestId:J

    invoke-virtual {v3, v4, v5}, Landroid/app/DownloadManager;->openDownloadedFile(J)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-void

    :catch_0
    move-exception v3

    move-object v2, v3

    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/DownloadHelper;->context:Landroid/content/Context;

    move-object v2, v0

    iget-object v2, v2, Lcom/sunny/CustomWebView/DownloadHelper;->completed:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
