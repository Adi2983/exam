.class final Lcom/google/zxing/client/android/camera/AutoFocusManager$AutoFocusTask;
.super Landroid/os/AsyncTask;
.source "AutoFocusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/client/android/camera/AutoFocusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoFocusTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/zxing/client/android/camera/AutoFocusManager;


# direct methods
.method private constructor <init>(Lcom/google/zxing/client/android/camera/AutoFocusManager;)V
    .locals 4

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/camera/AutoFocusManager$AutoFocusTask;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/zxing/client/android/camera/AutoFocusManager$AutoFocusTask;->this$0:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    move-object v2, v0

    invoke-direct {v2}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/zxing/client/android/camera/AutoFocusManager;Lcom/google/zxing/client/android/camera/AutoFocusManager$1;)V
    .locals 5

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/camera/AutoFocusManager$AutoFocusTask;
    move-object v1, p1

    .local v1, "x0":Lcom/google/zxing/client/android/camera/AutoFocusManager;
    move-object v2, p2

    .local v2, "x1":Lcom/google/zxing/client/android/camera/AutoFocusManager$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/zxing/client/android/camera/AutoFocusManager$AutoFocusTask;-><init>(Lcom/google/zxing/client/android/camera/AutoFocusManager;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/camera/AutoFocusManager$AutoFocusTask;
    move-object v1, p1

    .local v1, "voids":[Ljava/lang/Object;
    const-wide/16 v4, 0x7d0

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .line 105
    :goto_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/client/android/camera/AutoFocusManager$AutoFocusTask;->this$0:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v2, v5

    monitor-enter v4

    .line 106
    move-object v4, v0

    :try_start_1
    iget-object v4, v4, Lcom/google/zxing/client/android/camera/AutoFocusManager$AutoFocusTask;->this$0:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    invoke-static {v4}, Lcom/google/zxing/client/android/camera/AutoFocusManager;->access$100(Lcom/google/zxing/client/android/camera/AutoFocusManager;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 107
    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/client/android/camera/AutoFocusManager$AutoFocusTask;->this$0:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    invoke-virtual {v4}, Lcom/google/zxing/client/android/camera/AutoFocusManager;->start()V

    .line 109
    :cond_0
    move-object v4, v2

    monitor-exit v4

    .line 110
    const/4 v4, 0x0

    move-object v0, v4

    .end local v0    # "this":Lcom/google/zxing/client/android/camera/AutoFocusManager$AutoFocusTask;
    return-object v0

    .line 102
    .restart local v0    # "this":Lcom/google/zxing/client/android/camera/AutoFocusManager$AutoFocusTask;
    :catch_0
    move-exception v4

    move-object v2, v4

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v2

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v3

    throw v4
.end method
