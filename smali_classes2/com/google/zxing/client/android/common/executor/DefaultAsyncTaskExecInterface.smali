.class public final Lcom/google/zxing/client/android/common/executor/DefaultAsyncTaskExecInterface;
.super Ljava/lang/Object;
.source "DefaultAsyncTaskExecInterface.java"

# interfaces
.implements Lcom/google/zxing/client/android/common/executor/AsyncTaskExecInterface;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/common/executor/DefaultAsyncTaskExecInterface;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    .locals 5
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
    .line 29
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/common/executor/DefaultAsyncTaskExecInterface;
    move-object v1, p1

    .local v1, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<TT;**>;"
    move-object v2, p2

    .local v2, "args":[Ljava/lang/Object;, "[TT;"
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v3

    .line 30
    return-void
.end method
