.class public Ljavax/xml/bind/JAXBException;
.super Ljava/lang/Exception;
.source "JAXBException.java"


# static fields
.field static final serialVersionUID:J = -0x4e032b8ea226b88bL


# instance fields
.field private errorCode:Ljava/lang/String;

.field private linkedException:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/JAXBException;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Ljavax/xml/bind/JAXBException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/JAXBException;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, p2

    .local v2, "errorCode":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Ljavax/xml/bind/JAXBException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/JAXBException;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, p2

    .local v2, "errorCode":Ljava/lang/String;
    move-object v3, p3

    .local v3, "exception":Ljava/lang/Throwable;
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 88
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Ljavax/xml/bind/JAXBException;->errorCode:Ljava/lang/String;

    .line 89
    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Ljavax/xml/bind/JAXBException;->linkedException:Ljava/lang/Throwable;

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/JAXBException;
    move-object v1, p1

    .local v1, "message":Ljava/lang/String;
    move-object v2, p2

    .local v2, "exception":Ljava/lang/Throwable;
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v2

    invoke-direct {v3, v4, v5, v6}, Ljavax/xml/bind/JAXBException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/JAXBException;
    move-object v1, p1

    .local v1, "exception":Ljava/lang/Throwable;
    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v1

    invoke-direct {v2, v3, v4, v5}, Ljavax/xml/bind/JAXBException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 2

    .prologue
    .line 163
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/JAXBException;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/bind/JAXBException;->linkedException:Ljava/lang/Throwable;

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/bind/JAXBException;
    return-object v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/JAXBException;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/bind/JAXBException;->errorCode:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/bind/JAXBException;
    return-object v0
.end method

.method public getLinkedException()Ljava/lang/Throwable;
    .locals 2

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/JAXBException;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/bind/JAXBException;->linkedException:Ljava/lang/Throwable;

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/bind/JAXBException;
    return-object v0
.end method

.method public printStackTrace()V
    .locals 2

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/JAXBException;
    move-object v1, v0

    invoke-super {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 149
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintStream;)V
    .locals 4

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/JAXBException;
    move-object v1, p1

    .local v1, "s":Ljava/io/PrintStream;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 140
    return-void
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .locals 4

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/JAXBException;
    move-object v1, p1

    .local v1, "s":Ljava/io/PrintWriter;
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 159
    return-void
.end method

.method public declared-synchronized setLinkedException(Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/JAXBException;
    move-object v1, p1

    .local v1, "exception":Ljava/lang/Throwable;
    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    move-object v3, v1

    :try_start_0
    iput-object v3, v2, Ljavax/xml/bind/JAXBException;->linkedException:Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    monitor-exit v4

    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Ljavax/xml/bind/JAXBException;
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/JAXBException;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/bind/JAXBException;->linkedException:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-super {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/bind/JAXBException;
    return-object v0

    .restart local v0    # "this":Ljavax/xml/bind/JAXBException;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    invoke-super {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n - with linked exception:\n["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavax/xml/bind/JAXBException;->linkedException:Ljava/lang/Throwable;

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
