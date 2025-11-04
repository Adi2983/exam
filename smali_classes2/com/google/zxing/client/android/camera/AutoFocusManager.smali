.class final Lcom/google/zxing/client/android/camera/AutoFocusManager;
.super Ljava/lang/Object;
.source "AutoFocusManager.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/client/android/camera/AutoFocusManager$AutoFocusTask;
    }
.end annotation


# static fields
.field private static final AUTO_FOCUS_INTERVAL_MS:J = 0x7d0L

.field private static final FOCUS_MODES_CALLING_AF:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private active:Z

.field private final camera:Landroid/hardware/Camera;

.field private outstandingTask:Lcom/google/zxing/client/android/camera/AutoFocusManager$AutoFocusTask;

.field private final taskExec:Lcom/google/zxing/client/android/common/executor/AsyncTaskExecInterface;

.field private final useAutoFocus:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 34
    const-class v0, Lcom/google/zxing/client/android/camera/AutoFocusManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/camera/AutoFocusManager;->TAG:Ljava/lang/String;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/google/zxing/client/android/camera/AutoFocusManager;->FOCUS_MODES_CALLING_AF:Ljava/util/Collection;

    .line 40
    sget-object v0, Lcom/google/zxing/client/android/camera/AutoFocusManager;->FOCUS_MODES_CALLING_AF:Ljava/util/Collection;

    const-string/jumbo v1, "auto"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 41
    sget-object v0, Lcom/google/zxing/client/android/camera/AutoFocusManager;->FOCUS_MODES_CALLING_AF:Ljava/util/Collection;

    const-string/jumbo v1, "macro"

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 42
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/hardware/Camera;)V
    .locals 9

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/camera/AutoFocusManager;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "camera":Landroid/hardware/Camera;
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 51
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/google/zxing/client/android/camera/AutoFocusManager;->camera:Landroid/hardware/Camera;

    .line 52
    move-object v5, v0

    new-instance v6, Lcom/google/zxing/client/android/common/executor/AsyncTaskExecManager;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Lcom/google/zxing/client/android/common/executor/AsyncTaskExecManager;-><init>()V

    invoke-virtual {v6}, Lcom/google/zxing/client/android/common/executor/AsyncTaskExecManager;->build()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/zxing/client/android/common/executor/AsyncTaskExecInterface;

    iput-object v6, v5, Lcom/google/zxing/client/android/camera/AutoFocusManager;->taskExec:Lcom/google/zxing/client/android/common/executor/AsyncTaskExecInterface;

    .line 53
    move-object v5, v1

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    move-object v3, v5

    .line 54
    .local v3, "sharedPrefs":Landroid/content/SharedPreferences;
    move-object v5, v2

    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 55
    .local v4, "currentFocusMode":Ljava/lang/String;
    move-object v5, v0

    sget-object v6, Lcom/google/zxing/client/android/camera/AutoFocusManager;->FOCUS_MODES_CALLING_AF:Ljava/util/Collection;

    move-object v7, v4

    .line 56
    invoke-interface {v6, v7}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/google/zxing/client/android/camera/AutoFocusManager;->useAutoFocus:Z

    .line 57
    sget-object v5, Lcom/google/zxing/client/android/camera/AutoFocusManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Current focus mode \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'; use auto focus? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-boolean v7, v7, Lcom/google/zxing/client/android/camera/AutoFocusManager;->useAutoFocus:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 58
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/zxing/client/android/camera/AutoFocusManager;->start()V

    .line 59
    return-void
.end method

.method static synthetic access$100(Lcom/google/zxing/client/android/camera/AutoFocusManager;)Z
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "x0":Lcom/google/zxing/client/android/camera/AutoFocusManager;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/zxing/client/android/camera/AutoFocusManager;->active:Z

    move v0, v1

    .end local v0    # "x0":Lcom/google/zxing/client/android/camera/AutoFocusManager;
    return v0
.end method


# virtual methods
.method public declared-synchronized onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 10

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/camera/AutoFocusManager;
    move v1, p1

    .local v1, "success":Z
    move-object v2, p2

    .local v2, "theCamera":Landroid/hardware/Camera;
    move-object v8, p0

    monitor-enter v8

    move-object v3, v0

    :try_start_0
    iget-boolean v3, v3, Lcom/google/zxing/client/android/camera/AutoFocusManager;->active:Z

    if-eqz v3, :cond_0

    .line 64
    move-object v3, v0

    new-instance v4, Lcom/google/zxing/client/android/camera/AutoFocusManager$AutoFocusTask;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/google/zxing/client/android/camera/AutoFocusManager$AutoFocusTask;-><init>(Lcom/google/zxing/client/android/camera/AutoFocusManager;Lcom/google/zxing/client/android/camera/AutoFocusManager$1;)V

    iput-object v4, v3, Lcom/google/zxing/client/android/camera/AutoFocusManager;->outstandingTask:Lcom/google/zxing/client/android/camera/AutoFocusManager$AutoFocusTask;

    .line 65
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/client/android/camera/AutoFocusManager;->taskExec:Lcom/google/zxing/client/android/common/executor/AsyncTaskExecInterface;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/client/android/camera/AutoFocusManager;->outstandingTask:Lcom/google/zxing/client/android/camera/AutoFocusManager$AutoFocusTask;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/zxing/client/android/common/executor/AsyncTaskExecInterface;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_0
    monitor-exit v8

    return-void

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v8

    .end local v0    # "this":Lcom/google/zxing/client/android/camera/AutoFocusManager;
    throw v0
.end method

.method declared-synchronized start()V
    .locals 6

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/camera/AutoFocusManager;
    move-object v5, p0

    monitor-enter v5

    move-object v2, v0

    :try_start_0
    iget-boolean v2, v2, Lcom/google/zxing/client/android/camera/AutoFocusManager;->useAutoFocus:Z

    if-eqz v2, :cond_0

    .line 71
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/zxing/client/android/camera/AutoFocusManager;->active:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    move-object v2, v0

    :try_start_1
    iget-object v2, v2, Lcom/google/zxing/client/android/camera/AutoFocusManager;->camera:Landroid/hardware/Camera;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    .line 79
    :cond_0
    :goto_0
    monitor-exit v5

    return-void

    .line 74
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 76
    .local v1, "re":Ljava/lang/RuntimeException;
    :try_start_2
    sget-object v2, Lcom/google/zxing/client/android/camera/AutoFocusManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Unexpected exception while focusing"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    goto :goto_0

    .line 70
    .end local v1    # "re":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v0

    monitor-exit v5

    .end local v0    # "this":Lcom/google/zxing/client/android/camera/AutoFocusManager;
    throw v0
.end method

.method declared-synchronized stop()V
    .locals 6

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/camera/AutoFocusManager;
    move-object v5, p0

    monitor-enter v5

    move-object v2, v0

    :try_start_0
    iget-boolean v2, v2, Lcom/google/zxing/client/android/camera/AutoFocusManager;->useAutoFocus:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 84
    move-object v2, v0

    :try_start_1
    iget-object v2, v2, Lcom/google/zxing/client/android/camera/AutoFocusManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->cancelAutoFocus()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    .line 90
    :cond_0
    :goto_0
    move-object v2, v0

    :try_start_2
    iget-object v2, v2, Lcom/google/zxing/client/android/camera/AutoFocusManager;->outstandingTask:Lcom/google/zxing/client/android/camera/AutoFocusManager$AutoFocusTask;

    if-eqz v2, :cond_1

    .line 91
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/client/android/camera/AutoFocusManager;->outstandingTask:Lcom/google/zxing/client/android/camera/AutoFocusManager$AutoFocusTask;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/zxing/client/android/camera/AutoFocusManager$AutoFocusTask;->cancel(Z)Z

    move-result v2

    .line 92
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/zxing/client/android/camera/AutoFocusManager;->outstandingTask:Lcom/google/zxing/client/android/camera/AutoFocusManager$AutoFocusTask;

    .line 94
    :cond_1
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/zxing/client/android/camera/AutoFocusManager;->active:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    monitor-exit v5

    return-void

    .line 85
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 87
    .local v1, "re":Ljava/lang/RuntimeException;
    :try_start_3
    sget-object v2, Lcom/google/zxing/client/android/camera/AutoFocusManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Unexpected exception while cancelling focusing"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    goto :goto_0

    .line 82
    .end local v1    # "re":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v0

    monitor-exit v5

    .end local v0    # "this":Lcom/google/zxing/client/android/camera/AutoFocusManager;
    throw v0
.end method
