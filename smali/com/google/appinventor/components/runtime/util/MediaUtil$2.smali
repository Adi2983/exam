.class final Lcom/google/appinventor/components/runtime/util/MediaUtil$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawableAsync(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Form;

.field private synthetic SZ5aRRQoo4RABtl0KnlkQDhNcppg3ZUNkmsRmBa9EW4UdQenZXJCu8cuK0SgtVYc:Ljava/lang/String;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

.field private synthetic kkTI9AxohjOECYVBpzZOuVO0b9llYVM2xqggkPHvpPoNGTREwN5YZmwC10Gk8X2Q:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;ILcom/google/appinventor/components/runtime/util/AsyncCallbackPair;)V
    .locals 7

    .prologue
    .line 370
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->SZ5aRRQoo4RABtl0KnlkQDhNcppg3ZUNkmsRmBa9EW4UdQenZXJCu8cuK0SgtVYc:Ljava/lang/String;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Form;

    move-object v5, v0

    move v6, v3

    iput v6, v5, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->kkTI9AxohjOECYVBpzZOuVO0b9llYVM2xqggkPHvpPoNGTREwN5YZmwC10Gk8X2Q:I

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .prologue
    .line 378
    move-object v0, p0

    const-string/jumbo v6, "MediaUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string/jumbo v9, "mediaPath = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->SZ5aRRQoo4RABtl0KnlkQDhNcppg3ZUNkmsRmBa9EW4UdQenZXJCu8cuK0SgtVYc:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 379
    const/4 v6, 0x0

    move-object v1, v6

    .line 380
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v2, v6

    .line 381
    const/16 v6, 0x1000

    new-array v6, v6, [B

    move-object v3, v6

    .line 385
    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Form;

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->SZ5aRRQoo4RABtl0KnlkQDhNcppg3ZUNkmsRmBa9EW4UdQenZXJCu8cuK0SgtVYc:Ljava/lang/String;

    move-object v8, v0

    iget v8, v8, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->kkTI9AxohjOECYVBpzZOuVO0b9llYVM2xqggkPHvpPoNGTREwN5YZmwC10Gk8X2Q:I

    invoke-static {v6, v7, v8}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;I)Ljava/io/InputStream;

    move-result-object v6

    move-object v1, v6

    .line 386
    :goto_0
    move-object v6, v1

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/io/InputStream;->read([B)I

    move-result v6

    move v12, v6

    move v6, v12

    move v7, v12

    move v4, v7

    if-lez v6, :cond_0

    .line 387
    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    move v9, v4

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 389
    :cond_0
    move-object v6, v2

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    move-object v3, v6

    .line 406
    move-object v6, v1

    if-eqz v6, :cond_1

    .line 408
    move-object v6, v1

    :try_start_1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 412
    .line 416
    :cond_1
    :goto_1
    move-object v6, v2

    :try_start_2
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 419
    .line 422
    :goto_2
    new-instance v6, Ljava/io/ByteArrayInputStream;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v3

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v5, v6

    .line 423
    move-object v6, v3

    array-length v6, v6

    move v4, v6

    .line 426
    move-object v6, v5

    move v7, v4

    :try_start_3
    invoke-virtual {v6, v7}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 427
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Form;

    move-object v7, v5

    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->SZ5aRRQoo4RABtl0KnlkQDhNcppg3ZUNkmsRmBa9EW4UdQenZXJCu8cuK0SgtVYc:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Form;Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v6

    move-object v3, v6

    .line 428
    move-object v6, v5

    invoke-virtual {v6}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 429
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    move-object v9, v5

    move-object v10, v3

    invoke-static {v9, v10}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Ljava/io/InputStream;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    .line 443
    move-object v1, v7

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 444
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB()Z

    move-result v6

    if-nez v6, :cond_2

    move-object v6, v3

    iget v6, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-nez v6, :cond_8

    .line 445
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    move-object v7, v1

    invoke-interface {v6, v7}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onSuccess(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_e
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 466
    move-object v6, v5

    :try_start_4
    invoke-virtual {v6}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_c

    .line 470
    :goto_3
    return-void

    .line 409
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 411
    const-string/jumbo v6, "MediaUtil"

    const-string/jumbo v7, "Unexpected error on close"

    move-object v8, v5

    invoke-static {v6, v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    goto :goto_1

    .line 421
    :catch_1
    move-exception v6

    goto :goto_2

    .line 390
    :catch_2
    move-exception v6

    move-object v5, v6

    .line 391
    move-object v6, v0

    :try_start_5
    iget-object v6, v6, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string/jumbo v9, "PERMISSION_DENIED:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v8, v5

    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/errors/PermissionException;->getPermissionNeeded()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onFailure(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 406
    move-object v6, v1

    if-eqz v6, :cond_3

    .line 408
    move-object v6, v1

    :try_start_6
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 412
    .line 416
    :cond_3
    :goto_4
    move-object v6, v2

    :try_start_7
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 419
    goto :goto_3

    .line 409
    :catch_3
    move-exception v6

    move-object v3, v6

    .line 411
    const-string/jumbo v6, "MediaUtil"

    const-string/jumbo v7, "Unexpected error on close"

    move-object v8, v3

    invoke-static {v6, v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    goto :goto_4

    .line 392
    :catch_4
    move-exception v6

    goto :goto_3

    .line 393
    :catch_5
    move-exception v6

    move-object v5, v6

    .line 394
    move-object v6, v0

    :try_start_8
    iget v6, v6, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->kkTI9AxohjOECYVBpzZOuVO0b9llYVM2xqggkPHvpPoNGTREwN5YZmwC10Gk8X2Q:I

    sget v7, Lcom/google/appinventor/components/runtime/util/MediaUtil$b;->QMAkvNZ7PS9svrCQagoyYbfcp0VhAnlVqmqxnYH8cmskKuYxqiwVnZvGO7Q279iL:I

    if-ne v6, v7, :cond_5

    .line 396
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Form;

    .line 397
    invoke-virtual {v9}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1080066

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v3, v6

    .line 399
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    move-object v7, v3

    invoke-interface {v6, v7}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onSuccess(Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 406
    move-object v6, v1

    if-eqz v6, :cond_4

    .line 408
    move-object v6, v1

    :try_start_9
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 412
    .line 416
    :cond_4
    :goto_5
    move-object v6, v2

    :try_start_a
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 419
    goto/16 :goto_3

    .line 409
    :catch_6
    move-exception v6

    move-object v1, v6

    .line 411
    const-string/jumbo v6, "MediaUtil"

    const-string/jumbo v7, "Unexpected error on close"

    move-object v8, v1

    invoke-static {v6, v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    goto :goto_5

    .line 400
    :catch_7
    move-exception v6

    goto/16 :goto_3

    .line 402
    :cond_5
    :try_start_b
    const-string/jumbo v6, "MediaUtil"

    const-string/jumbo v7, "Exception reading file."

    move-object v8, v5

    invoke-static {v6, v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    .line 403
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v5

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onFailure(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 406
    move-object v6, v1

    if-eqz v6, :cond_6

    .line 408
    move-object v6, v1

    :try_start_c
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    .line 412
    .line 416
    :cond_6
    :goto_6
    move-object v6, v2

    :try_start_d
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    .line 419
    goto/16 :goto_3

    .line 409
    :catch_8
    move-exception v6

    move-object v3, v6

    .line 411
    const-string/jumbo v6, "MediaUtil"

    const-string/jumbo v7, "Unexpected error on close"

    move-object v8, v3

    invoke-static {v6, v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    goto :goto_6

    .line 404
    :catch_9
    move-exception v6

    goto/16 :goto_3

    .line 406
    :catchall_0
    move-exception v6

    move-object v3, v6

    move-object v6, v1

    if-eqz v6, :cond_7

    .line 408
    move-object v6, v1

    :try_start_e
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    .line 412
    .line 416
    :cond_7
    :goto_7
    move-object v6, v2

    :try_start_f
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b

    .line 419
    .line 421
    :goto_8
    move-object v6, v3

    throw v6

    .line 409
    :catch_a
    move-exception v6

    move-object v4, v6

    .line 411
    const-string/jumbo v6, "MediaUtil"

    const-string/jumbo v7, "Unexpected error on close"

    move-object v8, v4

    invoke-static {v6, v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    goto :goto_7

    :catch_b
    move-exception v6

    goto :goto_8

    .line 467
    :catch_c
    move-exception v6

    move-object v3, v6

    .line 469
    const-string/jumbo v6, "MediaUtil"

    const-string/jumbo v7, "Unexpected error on close"

    move-object v8, v3

    invoke-static {v6, v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    .line 446
    goto/16 :goto_3

    .line 448
    :cond_8
    move-object v6, v0

    :try_start_10
    iget-object v6, v6, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v6

    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    move v3, v6

    .line 449
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v6}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v6

    move-object v7, v1

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    move v4, v6

    .line 450
    const-string/jumbo v6, "MediaUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string/jumbo v9, "form.deviceDensity() = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/Form;->deviceDensity()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 451
    const-string/jumbo v6, "MediaUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string/jumbo v9, "originalBitmapDrawable.getIntrinsicWidth() = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v8, v1

    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 452
    const-string/jumbo v6, "MediaUtil"

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string/jumbo v9, "originalBitmapDrawable.getIntrinsicHeight() = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v8, v1

    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 453
    move-object v6, v1

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    move v7, v3

    move v8, v4

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v1, v6

    .line 455
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v8}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    move-object v9, v1

    invoke-direct {v7, v8, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    .line 456
    move-object v1, v7

    move-object v7, v0

    iget-object v7, v7, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v7}, Lcom/google/appinventor/components/runtime/Form;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V

    .line 458
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 459
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    move-object v7, v1

    invoke-interface {v6, v7}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onSuccess(Ljava/lang/Object;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_e
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 466
    move-object v6, v5

    :try_start_11
    invoke-virtual {v6}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_d

    .line 470
    goto/16 :goto_3

    .line 467
    :catch_d
    move-exception v6

    move-object v3, v6

    .line 469
    const-string/jumbo v6, "MediaUtil"

    const-string/jumbo v7, "Unexpected error on close"

    move-object v8, v3

    invoke-static {v6, v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    .line 470
    goto/16 :goto_3

    .line 460
    :catch_e
    move-exception v6

    move-object v3, v6

    .line 461
    :try_start_12
    const-string/jumbo v6, "MediaUtil"

    const-string/jumbo v7, "Exception while loading media."

    move-object v8, v3

    invoke-static {v6, v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    .line 462
    move-object v6, v0

    iget-object v6, v6, Lcom/google/appinventor/components/runtime/util/MediaUtil$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v3

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/google/appinventor/components/runtime/util/AsyncCallbackPair;->onFailure(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    .line 466
    move-object v6, v5

    :try_start_13
    invoke-virtual {v6}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_f

    .line 470
    goto/16 :goto_3

    .line 467
    :catch_f
    move-exception v6

    move-object v3, v6

    .line 469
    const-string/jumbo v6, "MediaUtil"

    const-string/jumbo v7, "Unexpected error on close"

    move-object v8, v3

    invoke-static {v6, v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    .line 470
    goto/16 :goto_3

    .line 464
    :catchall_1
    move-exception v6

    move-object v1, v6

    .line 466
    move-object v6, v5

    :try_start_14
    invoke-virtual {v6}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_10

    .line 470
    .line 472
    :goto_9
    move-object v6, v1

    throw v6

    .line 467
    :catch_10
    move-exception v6

    move-object v2, v6

    .line 469
    const-string/jumbo v6, "MediaUtil"

    const-string/jumbo v7, "Unexpected error on close"

    move-object v8, v2

    invoke-static {v6, v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v6

    goto :goto_9
.end method
