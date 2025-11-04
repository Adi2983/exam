.class public abstract Lcom/google/appinventor/components/runtime/util/FileOperation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/PermissionResultHandler;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;,
        Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected volatile askedForPermission:Z

.field protected final async:Z

.field protected final component:Lcom/google/appinventor/components/runtime/Component;

.field protected final form:Lcom/google/appinventor/components/runtime/Form;

.field protected volatile hasPermission:Z

.field protected final method:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/google/appinventor/components/runtime/util/FileOperation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/appinventor/components/runtime/util/FileOperation;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Z)V
    .locals 7

    .prologue
    .line 43
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 40
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/google/appinventor/components/runtime/util/FileOperation;->askedForPermission:Z

    .line 41
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/google/appinventor/components/runtime/util/FileOperation;->hasPermission:Z

    .line 44
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/FileOperation;->form:Lcom/google/appinventor/components/runtime/Form;

    .line 45
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/FileOperation;->component:Lcom/google/appinventor/components/runtime/Component;

    .line 46
    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/FileOperation;->method:Ljava/lang/String;

    .line 47
    move-object v5, v0

    move v6, v4

    iput-boolean v6, v5, Lcom/google/appinventor/components/runtime/util/FileOperation;->async:Z

    .line 48
    return-void
.end method

.method static synthetic vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/google/appinventor/components/runtime/util/FileOperation;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public HandlePermissionResponse(Ljava/lang/String;Z)V
    .locals 5

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/util/FileOperation;->askedForPermission:Z

    .line 145
    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/util/FileOperation;->hasPermission:Z

    .line 146
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/util/FileOperation;->run()V

    .line 147
    return-void
.end method

.method public abstract getPermissions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract needsExternalStorage()Z
.end method

.method protected abstract needsPermission()Z
.end method

.method protected abstract performOperation()V
.end method

.method protected varargs reportError(I[Ljava/lang/Object;)V
    .locals 10

    .prologue
    .line 183
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/FileOperation;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v4, Lcom/google/appinventor/components/runtime/util/FileOperation$2;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move v7, v1

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/util/FileOperation$2;-><init>(Lcom/google/appinventor/components/runtime/util/FileOperation;I[Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 189
    return-void
.end method

.method public final run()V
    .locals 14

    .prologue
    .line 79
    move-object v0, p0

    move-object v5, v0

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    .line 1192
    move-object v1, v6

    iget-boolean v5, v5, Lcom/google/appinventor/components/runtime/util/FileOperation;->hasPermission:Z

    if-eqz v5, :cond_1

    .line 1193
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    .line 79
    :goto_0
    move-object v1, v5

    .line 80
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->isUiThread()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 83
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/util/FileOperation;->needsExternalStorage()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 84
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/FileUtil;->checkExternalStorageWriteable()V

    .line 86
    :cond_0
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    .line 87
    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/appinventor/components/runtime/util/FileOperation;->hasPermission:Z

    if-nez v5, :cond_5

    .line 88
    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/appinventor/components/runtime/util/FileOperation;->askedForPermission:Z

    if-eqz v5, :cond_4

    .line 89
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/FileOperation;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/util/FileOperation;->component:Lcom/google/appinventor/components/runtime/Component;

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/util/FileOperation;->method:Ljava/lang/String;

    move-object v8, v1

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :goto_1
    new-instance v5, Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    invoke-direct {v6}, Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;-><init>()V

    throw v5

    .line 1195
    :cond_1
    move-object v5, v1

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/util/FileOperation;->getPermissions()Ljava/util/List;

    move-result-object v5

    move-object v2, v5

    .line 1196
    new-instance v5, Ljava/util/HashSet;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    move-object v3, v5

    .line 1197
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v5

    :goto_2
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v4, v5

    .line 1198
    move-object v5, v1

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/FileOperation;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v6, v4

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1199
    move-object v5, v3

    move-object v6, v4

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 1201
    :cond_2
    goto :goto_2

    .line 1202
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v3

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 91
    :cond_4
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/google/appinventor/components/runtime/util/FileOperation;->askedForPermission:Z

    .line 92
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/FileOperation;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v6, Lcom/google/appinventor/components/runtime/util/FileOperation$1;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v0

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/util/FileOperation;->component:Lcom/google/appinventor/components/runtime/Component;

    move-object v10, v0

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/util/FileOperation;->method:Ljava/lang/String;

    move-object v11, v1

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/String;

    .line 93
    invoke-interface {v11, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/google/appinventor/components/runtime/util/FileOperation$1;-><init>(Lcom/google/appinventor/components/runtime/util/FileOperation;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V

    .line 92
    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;)V

    goto :goto_1

    .line 105
    :cond_5
    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/appinventor/components/runtime/util/FileOperation;->async:Z

    if-eqz v5, :cond_6

    .line 106
    move-object v5, v0

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    .line 130
    :goto_3
    return-void

    .line 108
    :cond_6
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/util/FileOperation;->performOperation()V

    .line 110
    goto :goto_3

    .line 114
    :cond_7
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/google/appinventor/components/runtime/util/FileOperation;->hasPermission:Z

    .line 116
    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/appinventor/components/runtime/util/FileOperation;->async:Z

    if-eqz v5, :cond_8

    .line 117
    move-object v5, v0

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 119
    :cond_8
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/util/FileOperation;->performOperation()V

    goto :goto_3

    .line 121
    :cond_9
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    .line 124
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/google/appinventor/components/runtime/util/FileOperation;->hasPermission:Z

    .line 125
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/google/appinventor/components/runtime/util/FileOperation;->askedForPermission:Z

    .line 126
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/FileOperation;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/Form;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 128
    :cond_a
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/appinventor/components/runtime/util/FileOperation;->performOperation()V

    .line 130
    goto :goto_3
.end method
