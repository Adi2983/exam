.class public final Lcom/google/zxing/client/android/common/executor/HoneycombAsyncTaskExecInterface;
.super Ljava/lang/Object;
.source "HoneycombAsyncTaskExecInterface.java"

# interfaces
.implements Lcom/google/zxing/client/android/common/executor/AsyncTaskExecInterface;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/common/executor/HoneycombAsyncTaskExecInterface;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/AsyncTask",
            "<TT;**>;[TT;)V"
        }
    .end annotation

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/common/executor/HoneycombAsyncTaskExecInterface;
    move-object v1, p1

    .local v1, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TT;**>;"
    move-object v2, p2

    .local v2, "args":[Ljava/lang/Object;, "[TT;"
    :try_start_0
    const-class v5, Landroid/os/AsyncTask;

    const-string/jumbo v6, "THREAD_POOL_EXECUTOR"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    move-object v3, v5

    .line 37
    .local v3, "tpe":Ljava/lang/reflect/Field;
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v6, "executeOnExecutor"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    move-object v4, v5

    .line 38
    .local v4, "emethod":Ljava/lang/reflect/Method;
    move-object v5, v4

    move-object v6, v1

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v3

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    move-object v10, v2

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 41
    .line 42
    .end local v3    # "tpe":Ljava/lang/reflect/Field;
    .end local v4    # "emethod":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 39
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 40
    .local v3, "e":Ljava/lang/Exception;
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
