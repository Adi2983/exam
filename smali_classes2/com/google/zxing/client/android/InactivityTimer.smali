.class final Lcom/google/zxing/client/android/InactivityTimer;
.super Ljava/lang/Object;
.source "InactivityTimer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/client/android/InactivityTimer$InactivityAsyncTask;,
        Lcom/google/zxing/client/android/InactivityTimer$PowerStatusReceiver;
    }
.end annotation


# static fields
.field private static final INACTIVITY_DELAY_MS:J = 0x493e0L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private inactivityTask:Lcom/google/zxing/client/android/InactivityTimer$InactivityAsyncTask;

.field private final powerStatusReceiver:Landroid/content/BroadcastReceiver;

.field private final taskExec:Lcom/google/zxing/client/android/common/executor/AsyncTaskExecInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/google/zxing/client/android/InactivityTimer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/InactivityTimer;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;)V
    .locals 8

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/InactivityTimer;
    move-object v1, p1

    .local v1, "activity":Landroid/app/Activity;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 46
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/zxing/client/android/InactivityTimer;->activity:Landroid/app/Activity;

    .line 47
    move-object v2, v0

    new-instance v3, Lcom/google/zxing/client/android/common/executor/AsyncTaskExecManager;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Lcom/google/zxing/client/android/common/executor/AsyncTaskExecManager;-><init>()V

    invoke-virtual {v3}, Lcom/google/zxing/client/android/common/executor/AsyncTaskExecManager;->build()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/client/android/common/executor/AsyncTaskExecInterface;

    iput-object v3, v2, Lcom/google/zxing/client/android/InactivityTimer;->taskExec:Lcom/google/zxing/client/android/common/executor/AsyncTaskExecInterface;

    .line 48
    move-object v2, v0

    new-instance v3, Lcom/google/zxing/client/android/InactivityTimer$PowerStatusReceiver;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/client/android/InactivityTimer$PowerStatusReceiver;-><init>(Lcom/google/zxing/client/android/InactivityTimer;Lcom/google/zxing/client/android/InactivityTimer$1;)V

    iput-object v3, v2, Lcom/google/zxing/client/android/InactivityTimer;->powerStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 49
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/zxing/client/android/InactivityTimer;->onActivity()V

    .line 50
    return-void
.end method

.method static synthetic access$200(Lcom/google/zxing/client/android/InactivityTimer;)V
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "x0":Lcom/google/zxing/client/android/InactivityTimer;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/zxing/client/android/InactivityTimer;->cancel()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/zxing/client/android/InactivityTimer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/zxing/client/android/InactivityTimer;)Landroid/app/Activity;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "x0":Lcom/google/zxing/client/android/InactivityTimer;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/android/InactivityTimer;->activity:Landroid/app/Activity;

    move-object v0, v1

    .end local v0    # "x0":Lcom/google/zxing/client/android/InactivityTimer;
    return-object v0
.end method

.method private declared-synchronized cancel()V
    .locals 5

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/InactivityTimer;
    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/zxing/client/android/InactivityTimer;->inactivityTask:Lcom/google/zxing/client/android/InactivityTimer$InactivityAsyncTask;

    move-object v1, v2

    .line 70
    .local v1, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<***>;"
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 71
    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    move-result v2

    .line 72
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/zxing/client/android/InactivityTimer;->inactivityTask:Lcom/google/zxing/client/android/InactivityTimer$InactivityAsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_0
    monitor-exit v4

    return-void

    .line 69
    .end local v1    # "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<***>;"
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lcom/google/zxing/client/android/InactivityTimer;
    throw v0
.end method


# virtual methods
.method declared-synchronized onActivity()V
    .locals 8

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/InactivityTimer;
    move-object v6, p0

    monitor-enter v6

    move-object v1, v0

    :try_start_0
    invoke-direct {v1}, Lcom/google/zxing/client/android/InactivityTimer;->cancel()V

    .line 54
    move-object v1, v0

    new-instance v2, Lcom/google/zxing/client/android/InactivityTimer$InactivityAsyncTask;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/client/android/InactivityTimer$InactivityAsyncTask;-><init>(Lcom/google/zxing/client/android/InactivityTimer;Lcom/google/zxing/client/android/InactivityTimer$1;)V

    iput-object v2, v1, Lcom/google/zxing/client/android/InactivityTimer;->inactivityTask:Lcom/google/zxing/client/android/InactivityTimer$InactivityAsyncTask;

    .line 55
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/android/InactivityTimer;->taskExec:Lcom/google/zxing/client/android/common/executor/AsyncTaskExecInterface;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/client/android/InactivityTimer;->inactivityTask:Lcom/google/zxing/client/android/InactivityTimer$InactivityAsyncTask;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/zxing/client/android/common/executor/AsyncTaskExecInterface;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit v6

    return-void

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v6

    .end local v0    # "this":Lcom/google/zxing/client/android/InactivityTimer;
    throw v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/InactivityTimer;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/zxing/client/android/InactivityTimer;->cancel()V

    .line 60
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/android/InactivityTimer;->activity:Landroid/app/Activity;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/client/android/InactivityTimer;->powerStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 61
    return-void
.end method

.method public onResume()V
    .locals 7

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/InactivityTimer;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/android/InactivityTimer;->activity:Landroid/app/Activity;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/client/android/InactivityTimer;->powerStatusReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string/jumbo v5, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 65
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/zxing/client/android/InactivityTimer;->onActivity()V

    .line 66
    return-void
.end method

.method shutdown()V
    .locals 2

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/InactivityTimer;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/zxing/client/android/InactivityTimer;->cancel()V

    .line 78
    return-void
.end method
