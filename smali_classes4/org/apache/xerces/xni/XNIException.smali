.class public Lorg/apache/xerces/xni/XNIException;
.super Ljava/lang/RuntimeException;


# static fields
.field static final serialVersionUID:J = 0x7d2cd64b50ff589fL


# instance fields
.field private fException:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    move-object v3, v0

    iput-object v3, v2, Lorg/apache/xerces/xni/XNIException;->fException:Ljava/lang/Exception;

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/xni/XNIException;->fException:Ljava/lang/Exception;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    move-object v3, v0

    iput-object v3, v2, Lorg/apache/xerces/xni/XNIException;->fException:Ljava/lang/Exception;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    move-object v4, v0

    iput-object v4, v3, Lorg/apache/xerces/xni/XNIException;->fException:Ljava/lang/Exception;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lorg/apache/xerces/xni/XNIException;->fException:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/xni/XNIException;->getException()Ljava/lang/Exception;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xni/XNIException;->fException:Ljava/lang/Exception;

    move-object v2, v0

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xni/XNIException;->fException:Ljava/lang/Exception;

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lorg/apache/xerces/xni/XNIException;->fException:Ljava/lang/Exception;

    move-object v3, v0

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_0
    move-object v2, v1

    move-object v3, v0

    if-ne v2, v3, :cond_1

    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_1
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/Exception;

    iput-object v3, v2, Lorg/apache/xerces/xni/XNIException;->fException:Ljava/lang/Exception;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v0

    move-object v0, v2

    monitor-exit v4

    return-object v0
.end method
