.class Lcom/sunny/CustomWebView/DownloadHelper$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunny/CustomWebView/DownloadHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sunny/CustomWebView/DownloadHelper;


# direct methods
.method constructor <init>(Lcom/sunny/CustomWebView/DownloadHelper;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sunny/CustomWebView/DownloadHelper$1;->this$0:Lcom/sunny/CustomWebView/DownloadHelper;

    move-object v2, v0

    invoke-direct {v2}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v3

    const-string/jumbo v5, "extra_download_id"

    const-wide/16 v6, -0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    move-object v6, v1

    iget-object v6, v6, Lcom/sunny/CustomWebView/DownloadHelper$1;->this$0:Lcom/sunny/CustomWebView/DownloadHelper;

    iget-wide v6, v6, Lcom/sunny/CustomWebView/DownloadHelper;->lastRequestId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    move-object v4, v1

    iget-object v4, v4, Lcom/sunny/CustomWebView/DownloadHelper$1;->this$0:Lcom/sunny/CustomWebView/DownloadHelper;

    invoke-virtual {v4}, Lcom/sunny/CustomWebView/DownloadHelper;->DownloadCompleted()V

    :cond_0
    return-void
.end method
