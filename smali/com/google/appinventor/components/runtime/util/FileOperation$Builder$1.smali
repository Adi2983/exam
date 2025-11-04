.class final Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;
.super Lcom/google/appinventor/components/runtime/util/FileOperation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->build()Lcom/google/appinventor/components/runtime/util/FileOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Z)V
    .locals 11

    .prologue
    .line 303
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    move-object v6, v0

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    move v10, v5

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/util/FileOperation;-><init>(Lcom/google/appinventor/components/runtime/Form;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final getPermissions()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 306
    move-object v0, p0

    new-instance v1, Ljava/util/ArrayList;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v1

    return-object v0
.end method

.method protected final needsExternalStorage()Z
    .locals 2

    .prologue
    .line 353
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method protected final needsPermission()Z
    .locals 2

    .prologue
    .line 348
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method protected final performOperation()V
    .locals 13

    .prologue
    .line 311
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 313
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v4

    .line 314
    :goto_0
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 315
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v2, v4

    .line 316
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v2

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->isDeniedPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 317
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 319
    :cond_0
    goto :goto_0

    .line 321
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->needsPermission()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1034
    sget-object v4, Lcom/google/appinventor/components/runtime/util/FileOperation;->LOG_TAG:Ljava/lang/String;

    .line 322
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->method:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " need permissions: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 323
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v5, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1$1;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v0

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->component:Lcom/google/appinventor/components/runtime/Component;

    move-object v9, v0

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->method:Ljava/lang/String;

    move-object v10, v0

    iget-object v10, v10, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    .line 324
    invoke-static {v10}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Ljava/util/Set;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/String;

    invoke-interface {v10, v11}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1$1;-><init>(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/String;)V

    .line 323
    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Lcom/google/appinventor/components/runtime/util/BulkPermissionRequest;)V

    .line 331
    new-instance v4, Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    invoke-direct {v5}, Lcom/google/appinventor/components/runtime/errors/StopBlocksExecution;-><init>()V

    throw v4

    .line 336
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Ljava/util/LinkedHashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Lcom/google/appinventor/components/runtime/util/ScopedFile;

    invoke-interface {v4, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/google/appinventor/components/runtime/util/ScopedFile;

    move-object v1, v4

    .line 337
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder$1;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;

    invoke-static {v4}, Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/FileOperation$Builder;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;

    move-object v3, v4

    .line 339
    move-object v4, v3

    move-object v5, v1

    :try_start_0
    invoke-interface {v4, v5}, Lcom/google/appinventor/components/runtime/util/FileOperation$FileInvocation;->call([Lcom/google/appinventor/components/runtime/util/ScopedFile;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    goto :goto_1

    .line 340
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 341
    new-instance v4, Ljava/lang/RuntimeException;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 344
    :cond_3
    return-void
.end method
