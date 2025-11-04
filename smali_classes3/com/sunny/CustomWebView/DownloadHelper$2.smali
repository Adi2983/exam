.class Lcom/sunny/CustomWebView/DownloadHelper$2;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunny/CustomWebView/DownloadHelper;->Download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sunny/CustomWebView/DownloadHelper;

.field final synthetic val$progressTimer:Ljava/util/Timer;


# direct methods
.method constructor <init>(Lcom/sunny/CustomWebView/DownloadHelper;Ljava/util/Timer;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sunny/CustomWebView/DownloadHelper$2;->this$0:Lcom/sunny/CustomWebView/DownloadHelper;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/sunny/CustomWebView/DownloadHelper$2;->val$progressTimer:Ljava/util/Timer;

    move-object v3, v0

    invoke-direct {v3}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    move-object v0, p0

    new-instance v6, Landroid/app/DownloadManager$Query;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Landroid/app/DownloadManager$Query;-><init>()V

    move-object v1, v6

    move-object v6, v1

    const/4 v7, 0x1

    new-array v7, v7, [J

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Lcom/sunny/CustomWebView/DownloadHelper$2;->this$0:Lcom/sunny/CustomWebView/DownloadHelper;

    iget-wide v10, v10, Lcom/sunny/CustomWebView/DownloadHelper;->lastRequestId:J

    aput-wide v10, v8, v9

    invoke-virtual {v6, v7}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    move-result-object v6

    move-object v6, v0

    iget-object v6, v6, Lcom/sunny/CustomWebView/DownloadHelper$2;->this$0:Lcom/sunny/CustomWebView/DownloadHelper;

    iget-object v6, v6, Lcom/sunny/CustomWebView/DownloadHelper;->downloadManager:Landroid/app/DownloadManager;

    move-object v7, v1

    invoke-virtual {v6, v7}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v6

    move-object v2, v6

    move-object v6, v2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v2

    move-object v7, v2

    const-string/jumbo v8, "bytes_so_far"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v3, v6

    move-object v6, v2

    move-object v7, v2

    const-string/jumbo v8, "total_size"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move v4, v6

    move-object v6, v2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v6, v3

    const/16 v7, 0x64

    mul-int/lit8 v6, v6, 0x64

    move v7, v4

    div-int/2addr v6, v7

    move v5, v6

    move-object v6, v0

    iget-object v6, v6, Lcom/sunny/CustomWebView/DownloadHelper$2;->this$0:Lcom/sunny/CustomWebView/DownloadHelper;

    invoke-static {v6}, Lcom/sunny/CustomWebView/DownloadHelper;->access$000(Lcom/sunny/CustomWebView/DownloadHelper;)Lcom/google/appinventor/components/runtime/Form;

    move-result-object v6

    new-instance v7, Lcom/sunny/CustomWebView/DownloadHelper$2$1;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    move v10, v5

    invoke-direct {v8, v9, v10}, Lcom/sunny/CustomWebView/DownloadHelper$2$1;-><init>(Lcom/sunny/CustomWebView/DownloadHelper$2;I)V

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
