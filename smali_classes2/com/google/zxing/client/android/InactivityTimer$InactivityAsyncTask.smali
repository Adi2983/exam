.class final Lcom/google/zxing/client/android/InactivityTimer$InactivityAsyncTask;
.super Landroid/os/AsyncTask;
.source "InactivityTimer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/zxing/client/android/InactivityTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InactivityAsyncTask"
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
.field final synthetic this$0:Lcom/google/zxing/client/android/InactivityTimer;


# direct methods
.method private constructor <init>(Lcom/google/zxing/client/android/InactivityTimer;)V
    .locals 4

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/InactivityTimer$InactivityAsyncTask;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/zxing/client/android/InactivityTimer$InactivityAsyncTask;->this$0:Lcom/google/zxing/client/android/InactivityTimer;

    move-object v2, v0

    invoke-direct {v2}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/zxing/client/android/InactivityTimer;Lcom/google/zxing/client/android/InactivityTimer$1;)V
    .locals 5

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/InactivityTimer$InactivityAsyncTask;
    move-object v1, p1

    .local v1, "x0":Lcom/google/zxing/client/android/InactivityTimer;
    move-object v2, p2

    .local v2, "x1":Lcom/google/zxing/client/android/InactivityTimer$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/google/zxing/client/android/InactivityTimer$InactivityAsyncTask;-><init>(Lcom/google/zxing/client/android/InactivityTimer;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 99
    move-object v1, p0

    .local v1, "this":Lcom/google/zxing/client/android/InactivityTimer$InactivityAsyncTask;
    move-object v2, p1

    .local v2, "objects":[Ljava/lang/Object;
    const-wide/32 v4, 0x493e0

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 100
    invoke-static {}, Lcom/google/zxing/client/android/InactivityTimer;->access$300()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Finishing activity due to inactivity"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 101
    move-object v4, v1

    iget-object v4, v4, Lcom/google/zxing/client/android/InactivityTimer$InactivityAsyncTask;->this$0:Lcom/google/zxing/client/android/InactivityTimer;

    invoke-static {v4}, Lcom/google/zxing/client/android/InactivityTimer;->access$400(Lcom/google/zxing/client/android/InactivityTimer;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .line 105
    :goto_0
    const/4 v4, 0x0

    move-object v1, v4

    .end local v1    # "this":Lcom/google/zxing/client/android/InactivityTimer$InactivityAsyncTask;
    return-object v1

    .line 102
    .restart local v1    # "this":Lcom/google/zxing/client/android/InactivityTimer$InactivityAsyncTask;
    :catch_0
    move-exception v4

    move-object v3, v4

    goto :goto_0
.end method
