.class public final Lcom/google/appinventor/components/runtime/util/ContinuationUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 14
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static callWithContinuation(Ljava/util/concurrent/Callable;Lcom/google/appinventor/components/runtime/util/Continuation;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;",
            "Lcom/google/appinventor/components/runtime/util/Continuation",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lcom/google/appinventor/components/runtime/util/ContinuationUtil$2;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/ContinuationUtil$2;-><init>(Ljava/util/concurrent/Callable;Lcom/google/appinventor/components/runtime/util/Continuation;)V

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 63
    return-void
.end method

.method public static callWithContinuationSync(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 76
    move-object v0, p0

    new-instance v2, Lcom/google/appinventor/components/runtime/util/Synchronizer;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Lcom/google/appinventor/components/runtime/util/Synchronizer;-><init>()V

    move-object v1, v2

    .line 77
    new-instance v2, Lcom/google/appinventor/components/runtime/util/ContinuationUtil$3;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/ContinuationUtil$3;-><init>(Ljava/util/concurrent/Callable;Lcom/google/appinventor/components/runtime/util/Synchronizer;)V

    new-instance v3, Lcom/google/appinventor/components/runtime/util/ContinuationUtil$4;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/google/appinventor/components/runtime/util/ContinuationUtil$4;-><init>(Lcom/google/appinventor/components/runtime/util/Synchronizer;)V

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/ContinuationUtil;->callWithContinuation(Ljava/util/concurrent/Callable;Lcom/google/appinventor/components/runtime/util/Continuation;)V

    .line 95
    move-object v2, v1

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->getThrowable()Ljava/lang/Throwable;

    move-result-object v2

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    .line 96
    move-object v0, v3

    if-eqz v2, :cond_1

    .line 97
    move-object v2, v0

    instance-of v2, v2, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_0

    .line 98
    move-object v2, v0

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 100
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "Exception in call"

    move-object v5, v0

    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 103
    :cond_1
    move-object v2, v1

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/util/Synchronizer;->getResult()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static wrap(Lgnu/mapping/Procedure;Ljava/lang/Class;)Lcom/google/appinventor/components/runtime/util/Continuation;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lgnu/mapping/Procedure;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/appinventor/components/runtime/util/Continuation",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 27
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lcom/google/appinventor/components/runtime/util/ContinuationUtil$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    move-object v5, v0

    invoke-direct {v3, v4, v5}, Lcom/google/appinventor/components/runtime/util/ContinuationUtil$1;-><init>(Ljava/lang/Class;Lgnu/mapping/Procedure;)V

    move-object v0, v2

    return-object v0
.end method
