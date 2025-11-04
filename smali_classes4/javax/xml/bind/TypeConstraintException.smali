.class public Ljavax/xml/bind/TypeConstraintException;
.super Ljava/lang/RuntimeException;
.source "TypeConstraintException.java"


# instance fields
.field private errorCode:Ljava/lang/String;

.field private linkedException:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/TypeConstraintException;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Ljavax/xml/bind/TypeConstraintException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/TypeConstraintException;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, p2

    .local v2, "errorCode":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Ljavax/xml/bind/TypeConstraintException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 95
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/TypeConstraintException;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, p2

    .local v2, "errorCode":Ljava/lang/String;
    move-object v3, p3

    .local v3, "exception":Ljava/lang/Throwable;
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 96
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Ljavax/xml/bind/TypeConstraintException;->errorCode:Ljava/lang/String;

    .line 97
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljavax/xml/bind/TypeConstraintException;->linkedException:Ljava/lang/Throwable;

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/TypeConstraintException;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, p2

    .local v2, "exception":Ljava/lang/Throwable;
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v2

    invoke-direct {v3, v4, v5, v6}, Ljavax/xml/bind/TypeConstraintException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/TypeConstraintException;
    move-object v1, p1

    .local v1, "exception":Ljava/lang/Throwable;
    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v1

    invoke-direct {v2, v3, v4, v5}, Ljavax/xml/bind/TypeConstraintException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    return-void
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/TypeConstraintException;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/bind/TypeConstraintException;->errorCode:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/bind/TypeConstraintException;
    return-object v0
.end method

.method public getLinkedException()Ljava/lang/Throwable;
    .locals 2

    .prologue
    .line 115
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/TypeConstraintException;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/bind/TypeConstraintException;->linkedException:Ljava/lang/Throwable;

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/bind/TypeConstraintException;
    return-object v0
.end method

.method public printStackTrace()V
    .locals 3

    .prologue
    .line 161
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/TypeConstraintException;
    move-object v1, v0

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljavax/xml/bind/TypeConstraintException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 162
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 4

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/TypeConstraintException;
    move-object v1, p1

    .local v1, "s":Ljava/io/PrintStream;
    move-object v2, v0

    iget-object v2, v2, Ljavax/xml/bind/TypeConstraintException;->linkedException:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 148
    move-object v2, v0

    iget-object v2, v2, Ljavax/xml/bind/TypeConstraintException;->linkedException:Ljava/lang/Throwable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    .line 149
    move-object v2, v1

    const-string/jumbo v3, "--------------- linked to ------------------"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 152
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 153
    return-void
.end method

.method public declared-synchronized setLinkedException(Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/TypeConstraintException;
    move-object v1, p1

    .local v1, "exception":Ljava/lang/Throwable;
    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    move-object v3, v1

    :try_start_0
    iput-object v3, v2, Ljavax/xml/bind/TypeConstraintException;->linkedException:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit v4

    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Ljavax/xml/bind/TypeConstraintException;
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/TypeConstraintException;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/bind/TypeConstraintException;->linkedException:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-super {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/bind/TypeConstraintException;
    return-object v0

    .restart local v0    # "this":Ljavax/xml/bind/TypeConstraintException;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    invoke-super {v2}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n - with linked exception:\n["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavax/xml/bind/TypeConstraintException;->linkedException:Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
