.class Lcom/sunny/CustomWebView/DownloadHelper$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunny/CustomWebView/DownloadHelper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sunny/CustomWebView/DownloadHelper$2;

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Lcom/sunny/CustomWebView/DownloadHelper$2;I)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sunny/CustomWebView/DownloadHelper$2$1;->this$1:Lcom/sunny/CustomWebView/DownloadHelper$2;

    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sunny/CustomWebView/DownloadHelper$2$1;->val$progress:I

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/sunny/CustomWebView/DownloadHelper$2$1;->val$progress:I

    const/16 v2, 0x63

    if-lt v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/DownloadHelper$2$1;->this$1:Lcom/sunny/CustomWebView/DownloadHelper$2;

    iget-object v1, v1, Lcom/sunny/CustomWebView/DownloadHelper$2;->val$progressTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/DownloadHelper$2$1;->this$1:Lcom/sunny/CustomWebView/DownloadHelper$2;

    iget-object v1, v1, Lcom/sunny/CustomWebView/DownloadHelper$2;->val$progressTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    move-result v1

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sunny/CustomWebView/DownloadHelper$2$1;->this$1:Lcom/sunny/CustomWebView/DownloadHelper$2;

    iget-object v1, v1, Lcom/sunny/CustomWebView/DownloadHelper$2;->this$0:Lcom/sunny/CustomWebView/DownloadHelper;

    move-object v2, v0

    iget v2, v2, Lcom/sunny/CustomWebView/DownloadHelper$2$1;->val$progress:I

    invoke-virtual {v1, v2}, Lcom/sunny/CustomWebView/DownloadHelper;->DownloadProgressChanged(I)V

    return-void
.end method
