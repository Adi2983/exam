.class public Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;
.super Lcom/google/appinventor/components/runtime/util/NanoHTTPD;
.source "SourceFile"


# static fields
.field private static B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:[B

.field private static nItr2rEUwjLh7peU3NgfalZQrx3V2u3REmTnCv6vRXk7VqyYqrNzZhPvrb2eDYTE:I


# instance fields
.field private final androidUIHandler:Landroid/os/Handler;

.field private form:Lcom/google/appinventor/components/runtime/ReplForm;

.field private hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/io/File;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lgnu/expr/Language;

.field private secure:Z


# direct methods
.method public constructor <init>(ILjava/io/File;ZLcom/google/appinventor/components/runtime/ReplForm;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, v0

    move v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD;-><init>(ILjava/io/File;)V

    .line 47
    move-object v5, v0

    new-instance v6, Landroid/os/Handler;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->androidUIHandler:Landroid/os/Handler;

    .line 52
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/io/File;

    .line 53
    move-object v5, v0

    const-string/jumbo v6, "scheme"

    invoke-static {v6}, Lkawa/standard/Scheme;->getInstance(Ljava/lang/String;)Lgnu/expr/Language;

    move-result-object v6

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lgnu/expr/Language;

    .line 54
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    .line 55
    move-object v5, v0

    move v6, v3

    iput-boolean v6, v5, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->secure:Z

    .line 56
    invoke-static {}, Lgnu/expr/ModuleExp;->mustNeverCompile()V

    .line 57
    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;)Lcom/google/appinventor/components/runtime/ReplForm;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object v0, v1

    return-object v0
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .locals 4

    .prologue
    .line 491
    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "Access-Control-Allow-Origin"

    const-string/jumbo v3, "*"

    invoke-virtual {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    move-object v1, v0

    const-string/jumbo v2, "Access-Control-Allow-Headers"

    const-string/jumbo v3, "origin, content-type"

    invoke-virtual {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    move-object v1, v0

    const-string/jumbo v2, "Access-Control-Allow-Methods"

    const-string/jumbo v3, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    move-object v1, v0

    const-string/jumbo v2, "Allow"

    const-string/jumbo v3, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual {v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .locals 10

    .prologue
    .line 476
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Lorg/json/JSONObject;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    move-object v2, v3

    .line 478
    move-object v3, v2

    :try_start_0
    const-string/jumbo v4, "status"

    const-string/jumbo v5, "BAD"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    .line 479
    move-object v3, v2

    const-string/jumbo v4, "message"

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 482
    .line 483
    :goto_0
    new-instance v3, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    const-string/jumbo v6, "200 OK"

    const-string/jumbo v7, "application/json"

    move-object v8, v2

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v3

    move-object v0, v3

    return-object v0

    .line 480
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 481
    const-string/jumbo v3, "AppInvHTTPD"

    const-string/jumbo v4, "Unable to write basic JSON content"

    move-object v5, v1

    invoke-static {v3, v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    goto :goto_0
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/Throwable;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .locals 4

    .prologue
    .line 487
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/util/Properties;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .locals 12

    .prologue
    .line 431
    move-object v0, p0

    move-object v1, p1

    :try_start_0
    new-instance v5, Lorg/json/JSONArray;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v1

    const-string/jumbo v8, "extensions"

    const-string/jumbo v9, "[]"

    invoke-virtual {v7, v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    move-object v1, v5

    .line 432
    new-instance v5, Ljava/util/ArrayList;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v5

    .line 433
    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move-object v6, v1

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 434
    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    .line 435
    move-object v4, v6

    if-eqz v5, :cond_0

    .line 436
    move-object v5, v2

    move-object v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 433
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 438
    :cond_0
    move-object v5, v0

    const-string/jumbo v6, "Invalid JSON content at index "

    move v7, v3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    move-object v0, v5

    .line 448
    :goto_1
    return-object v0

    .line 442
    :cond_1
    move-object v5, v0

    :try_start_1
    iget-object v5, v5, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object v6, v2

    invoke-virtual {v5, v6}, Lcom/google/appinventor/components/runtime/ReplForm;->loadComponents(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 445
    .line 446
    move-object v5, v0

    :try_start_2
    const-string/jumbo v6, "OK"

    move-object v2, v6

    move-object v1, v5

    .line 2468
    new-instance v5, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v1

    const-string/jumbo v8, "200 OK"

    const-string/jumbo v9, "text/plain"

    move-object v10, v2

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v5

    .line 446
    move-object v0, v5

    goto :goto_1

    .line 443
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 444
    move-object v5, v0

    move-object v6, v3

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/Throwable;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v5

    move-object v0, v5

    goto :goto_1

    .line 447
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 448
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/Throwable;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v5

    move-object v0, v5

    goto :goto_1
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/io/File;Ljava/io/File;)V
    .locals 9

    .prologue
    .line 413
    move-object v0, p0

    move-object v1, p1

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v4

    .line 414
    new-instance v4, Ljava/io/FileOutputStream;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v4

    .line 415
    const v4, 0x8000

    new-array v4, v4, [B

    move-object v2, v4

    .line 418
    :goto_0
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    move v8, v4

    move v4, v8

    move v5, v8

    move v3, v5

    if-lez v4, :cond_0

    .line 419
    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 422
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 423
    move-object v4, v1

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    .line 427
    :goto_1
    return-void

    .line 425
    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 427
    goto :goto_1
.end method

.method public static setHmacKey(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 503
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    sput-object v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:[B

    .line 504
    const/4 v1, 0x1

    sput v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->nItr2rEUwjLh7peU3NgfalZQrx3V2u3REmTnCv6vRXk7VqyYqrNzZhPvrb2eDYTE:I

    .line 505
    return-void
.end method


# virtual methods
.method public resetSeq()V
    .locals 2

    .prologue
    .line 512
    move-object v0, p0

    const/4 v1, 0x1

    sput v1, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->nItr2rEUwjLh7peU3NgfalZQrx3V2u3REmTnCv6vRXk7VqyYqrNzZhPvrb2eDYTE:I

    .line 513
    return-void
.end method

.method public serve(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Ljava/util/Properties;Ljava/util/Properties;Ljava/net/Socket;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;
    .locals 23

    .prologue
    .line 69
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    const-string/jumbo v14, "AppInvHTTPD"

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v3

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v2

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\' "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 76
    move-object v14, v1

    iget-boolean v14, v14, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->secure:Z

    if-eqz v14, :cond_0

    .line 77
    move-object v14, v7

    invoke-virtual {v14}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v14

    .line 78
    invoke-virtual {v14}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    .line 79
    move-object v8, v15

    const-string/jumbo v15, "127.0.0.1"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 80
    const-string/jumbo v14, "AppInvHTTPD"

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    const-string/jumbo v17, "Debug: hostAddress = "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v8

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " while in secure mode, closing connection."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 81
    new-instance v14, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v1

    const-string/jumbo v17, "200 OK"

    const-string/jumbo v18, "application/json"

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v22, v19

    move-object/from16 v19, v22

    move-object/from16 v20, v22

    const-string/jumbo v21, "{\"status\" : \"BAD\", \"message\" : \"Security Error: Invalid Source Location "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v20, v8

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "\"}"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v15 .. v19}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    .line 85
    move-object v2, v15

    const-string/jumbo v15, "Access-Control-Allow-Origin"

    const-string/jumbo v16, "*"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    move-object v14, v2

    const-string/jumbo v15, "Access-Control-Allow-Headers"

    const-string/jumbo v16, "origin, content-type"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    move-object v14, v2

    const-string/jumbo v15, "Access-Control-Allow-Methods"

    const-string/jumbo v16, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    move-object v14, v2

    const-string/jumbo v15, "Allow"

    const-string/jumbo v16, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    move-object v14, v2

    move-object v1, v14

    .line 408
    :goto_0
    return-object v1

    .line 93
    :cond_0
    move-object v14, v3

    const-string/jumbo v15, "OPTIONS"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 97
    move-object v14, v4

    invoke-virtual {v14}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v14

    move-object v7, v14

    .line 98
    :goto_1
    move-object v14, v7

    invoke-interface {v14}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 100
    move-object v14, v7

    invoke-interface {v14}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object v8, v14

    .line 101
    const-string/jumbo v14, "AppInvHTTPD"

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    const-string/jumbo v17, "  HDR: \'"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v8

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\' = \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v4

    move-object/from16 v17, v8

    .line 102
    invoke-virtual/range {v16 .. v17}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 101
    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 103
    goto :goto_1

    .line 104
    :cond_1
    new-instance v14, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v1

    const-string/jumbo v17, "200 OK"

    const-string/jumbo v18, "text/plain"

    const-string/jumbo v19, "OK"

    invoke-direct/range {v15 .. v19}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    .line 105
    move-object v8, v15

    const-string/jumbo v15, "Access-Control-Allow-Origin"

    const-string/jumbo v16, "*"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    move-object v14, v8

    const-string/jumbo v15, "Access-Control-Allow-Headers"

    const-string/jumbo v16, "origin, content-type"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    move-object v14, v8

    const-string/jumbo v15, "Access-Control-Allow-Methods"

    const-string/jumbo v16, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    move-object v14, v8

    const-string/jumbo v15, "Allow"

    const-string/jumbo v16, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    move-object v14, v8

    move-object v1, v14

    goto/16 :goto_0

    .line 113
    :cond_2
    move-object v14, v2

    const-string/jumbo v15, "/_newblocks"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 1460
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v14

    invoke-virtual {v14}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    move-object v3, v14

    .line 1461
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    .line 1462
    move-object v2, v15

    invoke-virtual {v14}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    move-object v15, v3

    if-eq v14, v15, :cond_3

    .line 1463
    move-object v14, v2

    move-object v15, v3

    invoke-virtual {v14, v15}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 115
    :cond_3
    move-object v14, v5

    const-string/jumbo v15, "seq"

    const-string/jumbo v16, "0"

    invoke-virtual/range {v14 .. v16}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    .line 116
    move-object v7, v15

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move v8, v14

    .line 117
    move-object v14, v5

    const-string/jumbo v15, "blockid"

    invoke-virtual {v14, v15}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v2, v14

    .line 118
    move-object v14, v5

    const-string/jumbo v15, "code"

    invoke-virtual {v14, v15}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v3, v14

    .line 119
    move-object v14, v5

    const-string/jumbo v15, "mac"

    const-string/jumbo v16, "no key provided"

    invoke-virtual/range {v14 .. v16}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v4, v14

    .line 121
    move-object v14, v3

    move-object v6, v14

    .line 122
    sget-object v14, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:[B

    if-eqz v14, :cond_8

    .line 124
    :try_start_0
    const-string/jumbo v14, "HmacSHA1"

    invoke-static {v14}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v14

    move-object v9, v14

    .line 125
    new-instance v14, Ljavax/crypto/spec/SecretKeySpec;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    sget-object v16, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:[B

    const-string/jumbo v17, "RAW"

    invoke-direct/range {v15 .. v17}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object v5, v14

    .line 126
    move-object v14, v9

    move-object v15, v5

    invoke-virtual {v14, v15}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 127
    move-object v14, v9

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v3

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v7

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v2

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    invoke-virtual {v14, v15}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v14

    move-object v10, v14

    .line 128
    new-instance v14, Ljava/lang/StringBuffer;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v10

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    shl-int/lit8 v16, v16, 0x1

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v11, v14

    .line 129
    new-instance v14, Ljava/util/Formatter;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v11

    invoke-direct/range {v15 .. v16}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    move-object v12, v14

    .line 130
    move-object v14, v10

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object v5, v15

    array-length v14, v14

    move v9, v14

    const/4 v14, 0x0

    move v10, v14

    :goto_2
    move v14, v10

    move v15, v9

    if-ge v14, v15, :cond_4

    move-object v14, v5

    move v15, v10

    aget-byte v14, v14, v15

    move v13, v14

    .line 131
    move-object v14, v12

    const-string/jumbo v15, "%02x"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    const/16 v18, 0x0

    move/from16 v19, v13

    invoke-static/range {v19 .. v19}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-virtual/range {v14 .. v16}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v14

    .line 130
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 132
    :cond_4
    move-object v14, v11

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    move-object v5, v14

    .line 139
    .line 140
    const-string/jumbo v14, "AppInvHTTPD"

    const-string/jumbo v15, "Incoming Mac = "

    move-object/from16 v16, v4

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 141
    const-string/jumbo v14, "AppInvHTTPD"

    const-string/jumbo v15, "Computed Mac = "

    move-object/from16 v16, v5

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 142
    const-string/jumbo v14, "AppInvHTTPD"

    const-string/jumbo v15, "Incoming seq = "

    move-object/from16 v16, v7

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 143
    const-string/jumbo v14, "AppInvHTTPD"

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    const-string/jumbo v17, "Computed seq = "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v16, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->nItr2rEUwjLh7peU3NgfalZQrx3V2u3REmTnCv6vRXk7VqyYqrNzZhPvrb2eDYTE:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 144
    const-string/jumbo v14, "AppInvHTTPD"

    const-string/jumbo v15, "blockid = "

    move-object/from16 v16, v2

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 145
    move-object v14, v4

    move-object v15, v5

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 146
    const-string/jumbo v14, "AppInvHTTPD"

    const-string/jumbo v15, "Hmac does not match"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 147
    move-object v14, v1

    iget-object v14, v14, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object v15, v1

    iget-object v15, v15, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    const-string/jumbo v16, "AppInvHTTPD"

    const/16 v17, 0x709

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    const/16 v20, 0x0

    const-string/jumbo v21, "Invalid HMAC"

    aput-object v21, v19, v20

    invoke-virtual/range {v14 .. v18}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 149
    new-instance v14, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v1

    const-string/jumbo v17, "200 OK"

    const-string/jumbo v18, "application/json"

    const-string/jumbo v19, "{\"status\" : \"BAD\", \"message\" : \"Security Error: Invalid MAC\"}"

    invoke-direct/range {v15 .. v19}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    move-object v1, v14

    goto/16 :goto_0

    .line 133
    :catch_0
    move-exception v14

    move-object v9, v14

    .line 134
    const-string/jumbo v14, "AppInvHTTPD"

    const-string/jumbo v15, "Error working with hmac"

    move-object/from16 v16, v9

    invoke-static/range {v14 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v14

    .line 135
    move-object v14, v1

    iget-object v14, v14, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object v15, v1

    iget-object v15, v15, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    const-string/jumbo v16, "AppInvHTTPD"

    const/16 v17, 0x709

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    const/16 v20, 0x0

    const-string/jumbo v21, "Exception working on HMAC"

    aput-object v21, v19, v20

    invoke-virtual/range {v14 .. v18}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 137
    new-instance v14, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v1

    const-string/jumbo v17, "200 OK"

    const-string/jumbo v18, "text/plain"

    const-string/jumbo v19, "NOT"

    invoke-direct/range {v15 .. v19}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    move-object v1, v14

    goto/16 :goto_0

    .line 152
    :cond_5
    sget v14, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->nItr2rEUwjLh7peU3NgfalZQrx3V2u3REmTnCv6vRXk7VqyYqrNzZhPvrb2eDYTE:I

    move v15, v8

    if-eq v14, v15, :cond_6

    sget v14, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->nItr2rEUwjLh7peU3NgfalZQrx3V2u3REmTnCv6vRXk7VqyYqrNzZhPvrb2eDYTE:I

    move v15, v8

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    if-eq v14, v15, :cond_6

    .line 153
    const-string/jumbo v14, "AppInvHTTPD"

    const-string/jumbo v15, "Seq does not match"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 154
    move-object v14, v1

    iget-object v14, v14, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object v15, v1

    iget-object v15, v15, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    const-string/jumbo v16, "AppInvHTTPD"

    const/16 v17, 0x709

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    const/16 v20, 0x0

    const-string/jumbo v21, "Invalid Seq"

    aput-object v21, v19, v20

    invoke-virtual/range {v14 .. v18}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 156
    new-instance v14, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v1

    const-string/jumbo v17, "200 OK"

    const-string/jumbo v18, "application/json"

    const-string/jumbo v19, "{\"status\" : \"BAD\", \"message\" : \"Security Error: Invalid Seq\"}"

    invoke-direct/range {v15 .. v19}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    move-object v1, v14

    goto/16 :goto_0

    .line 161
    :cond_6
    sget v14, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->nItr2rEUwjLh7peU3NgfalZQrx3V2u3REmTnCv6vRXk7VqyYqrNzZhPvrb2eDYTE:I

    move v15, v8

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    if-ne v14, v15, :cond_7

    .line 162
    const-string/jumbo v14, "AppInvHTTPD"

    const-string/jumbo v15, "Seq Fixup Invoked"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 163
    :cond_7
    move v14, v8

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    sput v14, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->nItr2rEUwjLh7peU3NgfalZQrx3V2u3REmTnCv6vRXk7VqyYqrNzZhPvrb2eDYTE:I

    .line 172
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    const-string/jumbo v16, "(begin (require <com.google.youngandroid.runtime>) (process-repl-input "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v15, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " (begin "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v3

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " )))"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v3, v14

    .line 175
    const-string/jumbo v14, "AppInvHTTPD"

    const-string/jumbo v15, "To Eval: "

    move-object/from16 v16, v3

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 180
    move-object v14, v6

    :try_start_1
    const-string/jumbo v15, "#f"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 181
    const-string/jumbo v14, "AppInvHTTPD"

    const-string/jumbo v15, "Skipping evaluation of #f"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 185
    :goto_3
    new-instance v14, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v1

    const-string/jumbo v17, "200 OK"

    const-string/jumbo v18, "application/json"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/google/appinventor/components/runtime/util/RetValManager;->fetch(Z)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v15 .. v19}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-object v9, v14

    .line 190
    .line 191
    :goto_4
    move-object v14, v9

    const-string/jumbo v15, "Access-Control-Allow-Origin"

    const-string/jumbo v16, "*"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    move-object v14, v9

    const-string/jumbo v15, "Access-Control-Allow-Headers"

    const-string/jumbo v16, "origin, content-type"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    move-object v14, v9

    const-string/jumbo v15, "Access-Control-Allow-Methods"

    const-string/jumbo v16, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    move-object v14, v9

    const-string/jumbo v15, "Allow"

    const-string/jumbo v16, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    move-object v14, v9

    move-object v1, v14

    goto/16 :goto_0

    .line 165
    :cond_8
    const-string/jumbo v14, "AppInvHTTPD"

    const-string/jumbo v15, "No HMAC Key"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 166
    move-object v14, v1

    iget-object v14, v14, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object v15, v1

    iget-object v15, v15, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    const-string/jumbo v16, "AppInvHTTPD"

    const/16 v17, 0x709

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    const/16 v20, 0x0

    const-string/jumbo v21, "No HMAC Key"

    aput-object v21, v19, v20

    invoke-virtual/range {v14 .. v18}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 168
    new-instance v14, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v1

    const-string/jumbo v17, "200 OK"

    const-string/jumbo v18, "application/json"

    const-string/jumbo v19, "{\"status\" : \"BAD\", \"message\" : \"Security Error: No HMAC Key\"}"

    invoke-direct/range {v15 .. v19}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    move-object v1, v14

    goto/16 :goto_0

    .line 183
    :cond_9
    move-object v14, v1

    :try_start_2
    iget-object v14, v14, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lgnu/expr/Language;

    move-object v15, v3

    invoke-virtual {v14, v15}, Lgnu/expr/Language;->eval(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v14

    goto/16 :goto_3

    .line 186
    :catch_1
    move-exception v14

    move-object v5, v14

    .line 187
    const-string/jumbo v14, "AppInvHTTPD"

    const-string/jumbo v15, "newblocks: Scheme Failure"

    move-object/from16 v16, v5

    invoke-static/range {v14 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v14

    .line 188
    move-object v14, v2

    const-string/jumbo v15, "BAD"

    move-object/from16 v16, v5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/RetValManager;->appendReturnValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    new-instance v14, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v1

    const-string/jumbo v17, "200 OK"

    const-string/jumbo v18, "application/json"

    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/google/appinventor/components/runtime/util/RetValManager;->fetch(Z)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v15 .. v19}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v14

    goto/16 :goto_4

    .line 196
    :cond_a
    move-object v14, v2

    const-string/jumbo v15, "/_values"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 197
    new-instance v14, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v1

    const-string/jumbo v17, "200 OK"

    const-string/jumbo v18, "application/json"

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Lcom/google/appinventor/components/runtime/util/RetValManager;->fetch(Z)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v15 .. v19}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    .line 198
    move-object v7, v15

    const-string/jumbo v15, "Access-Control-Allow-Origin"

    const-string/jumbo v16, "*"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    move-object v14, v7

    const-string/jumbo v15, "Access-Control-Allow-Headers"

    const-string/jumbo v16, "origin, content-type"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    move-object v14, v7

    const-string/jumbo v15, "Access-Control-Allow-Methods"

    const-string/jumbo v16, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    move-object v14, v7

    const-string/jumbo v15, "Allow"

    const-string/jumbo v16, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    move-object v14, v7

    move-object v1, v14

    goto/16 :goto_0

    .line 203
    :cond_b
    move-object v14, v2

    const-string/jumbo v15, "/_getversion"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 206
    move-object v14, v1

    :try_start_3
    iget-object v14, v14, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v14}, Lcom/google/appinventor/components/runtime/ReplForm;->getPackageName()Ljava/lang/String;

    move-result-object v14

    move-object v8, v14

    .line 207
    move-object v14, v1

    iget-object v14, v14, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v14}, Lcom/google/appinventor/components/runtime/ReplForm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    move-object v15, v8

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v14

    move-object v2, v14

    .line 208
    move-object v14, v1

    iget-object v14, v14, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    invoke-virtual {v14}, Lcom/google/appinventor/components/runtime/ReplForm;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const-string/jumbo v15, "io.makeroid.companion"

    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v3, v14

    .line 211
    move-object v14, v2

    iget-object v14, v14, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object v4, v14

    .line 212
    move-object v14, v3

    if-nez v14, :cond_c

    .line 213
    const-string/jumbo v14, "Not Known"

    move-object v3, v14

    .line 217
    :cond_c
    new-instance v14, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v1

    const-string/jumbo v17, "200 OK"

    const-string/jumbo v18, "application/json"

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v22, v19

    move-object/from16 v19, v22

    move-object/from16 v20, v22

    const-string/jumbo v21, "{\"version\" : \""

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v20, v4

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "\", \"fingerprint\" : \""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "\", \"installer\" : \""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v20, v3

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "\", \"package\" : \""

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v20, v8

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, "\", \"fqcn\" : true }"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v15 .. v19}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v7, v14

    .line 224
    .line 225
    :goto_5
    move-object v14, v7

    const-string/jumbo v15, "Access-Control-Allow-Origin"

    const-string/jumbo v16, "*"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    move-object v14, v7

    const-string/jumbo v15, "Access-Control-Allow-Headers"

    const-string/jumbo v16, "origin, content-type"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    move-object v14, v7

    const-string/jumbo v15, "Access-Control-Allow-Methods"

    const-string/jumbo v16, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    move-object v14, v7

    const-string/jumbo v15, "Allow"

    const-string/jumbo v16, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    move-object v14, v1

    iget-boolean v14, v14, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->secure:Z

    if-eqz v14, :cond_d

    .line 230
    const/4 v14, 0x1

    sput v14, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->nItr2rEUwjLh7peU3NgfalZQrx3V2u3REmTnCv6vRXk7VqyYqrNzZhPvrb2eDYTE:I

    .line 231
    move-object v14, v1

    iget-object v14, v14, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->androidUIHandler:Landroid/os/Handler;

    new-instance v15, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD$1;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    move-object/from16 v17, v1

    invoke-direct/range {v16 .. v17}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD$1;-><init>(Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;)V

    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v14

    .line 237
    :cond_d
    move-object v14, v7

    move-object v1, v14

    goto/16 :goto_0

    .line 222
    :catch_2
    move-exception v14

    invoke-virtual {v14}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 223
    new-instance v14, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v1

    const-string/jumbo v17, "200 OK"

    const-string/jumbo v18, "application/json"

    const-string/jumbo v19, "{\"verison\" : \"Unknown\""

    invoke-direct/range {v15 .. v19}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v14

    goto :goto_5

    .line 238
    :cond_e
    move-object v14, v2

    const-string/jumbo v15, "/_update"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_f

    move-object v14, v2

    const-string/jumbo v15, "/_install"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13

    .line 239
    :cond_f
    move-object v14, v5

    const-string/jumbo v15, "url"

    const-string/jumbo v16, ""

    invoke-virtual/range {v14 .. v16}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v7, v14

    .line 240
    move-object v14, v5

    const-string/jumbo v15, "mac"

    const-string/jumbo v16, ""

    invoke-virtual/range {v14 .. v16}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v8, v14

    .line 242
    move-object v14, v7

    const-string/jumbo v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_12

    sget-object v14, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:[B

    if-eqz v14, :cond_12

    move-object v14, v8

    const-string/jumbo v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_12

    .line 244
    :try_start_4
    new-instance v14, Ljavax/crypto/spec/SecretKeySpec;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    sget-object v16, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:[B

    const-string/jumbo v17, "RAW"

    invoke-direct/range {v15 .. v17}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object v3, v14

    .line 245
    const-string/jumbo v14, "HmacSHA1"

    invoke-static {v14}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v14

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    .line 246
    move-object v4, v15

    move-object v15, v3

    invoke-virtual {v14, v15}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 247
    move-object v14, v4

    move-object v15, v7

    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v15

    invoke-virtual {v14, v15}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v14

    move-object v5, v14

    .line 248
    new-instance v14, Ljava/lang/StringBuffer;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v5

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    shl-int/lit8 v16, v16, 0x1

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuffer;-><init>(I)V

    move-object v6, v14

    .line 249
    new-instance v14, Ljava/util/Formatter;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v6

    invoke-direct/range {v15 .. v16}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    move-object v9, v14

    .line 250
    move-object v14, v5

    array-length v14, v14

    move v10, v14

    const/4 v14, 0x0

    move v11, v14

    :goto_6
    move v14, v11

    move v15, v10

    if-ge v14, v15, :cond_10

    move-object v14, v5

    move v15, v11

    aget-byte v14, v14, v15

    move v12, v14

    .line 251
    move-object v14, v9

    const-string/jumbo v15, "%02x"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    const/16 v18, 0x0

    move/from16 v19, v12

    invoke-static/range {v19 .. v19}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-virtual/range {v14 .. v16}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v14

    .line 250
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 252
    :cond_10
    move-object v14, v6

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v14

    move-object v2, v14

    .line 263
    .line 264
    const-string/jumbo v14, "AppInvHTTPD"

    const-string/jumbo v15, "Incoming Mac (update) = "

    move-object/from16 v16, v8

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 265
    const-string/jumbo v14, "AppInvHTTPD"

    const-string/jumbo v15, "Computed Mac (update) = "

    move-object/from16 v16, v2

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 266
    move-object v14, v8

    move-object v15, v2

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_11

    .line 267
    const-string/jumbo v14, "AppInvHTTPD"

    const-string/jumbo v15, "Hmac does not match"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 268
    move-object v14, v1

    iget-object v14, v14, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object v15, v1

    iget-object v15, v15, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    const-string/jumbo v16, "AppInvHTTPD"

    const/16 v17, 0x709

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    const/16 v20, 0x0

    const-string/jumbo v21, "Invalid HMAC (update)"

    aput-object v21, v19, v20

    invoke-virtual/range {v14 .. v18}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 270
    new-instance v14, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v1

    const-string/jumbo v17, "200 OK"

    const-string/jumbo v18, "application/json"

    const-string/jumbo v19, "{\"status\" : \"BAD\", \"message\" : \"Security Error: Invalid MAC\"}"

    invoke-direct/range {v15 .. v19}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    .line 271
    move-object v3, v15

    const-string/jumbo v15, "Access-Control-Allow-Origin"

    const-string/jumbo v16, "*"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    move-object v14, v3

    const-string/jumbo v15, "Access-Control-Allow-Headers"

    const-string/jumbo v16, "origin, content-type"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    move-object v14, v3

    const-string/jumbo v15, "Access-Control-Allow-Methods"

    const-string/jumbo v16, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    move-object v14, v3

    const-string/jumbo v15, "Allow"

    const-string/jumbo v16, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    move-object v14, v3

    move-object v1, v14

    goto/16 :goto_0

    .line 253
    :catch_3
    move-exception v14

    move-object v3, v14

    .line 254
    const-string/jumbo v14, "AppInvHTTPD"

    const-string/jumbo v15, "Error verifying update"

    move-object/from16 v16, v3

    invoke-static/range {v14 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v14

    .line 255
    move-object v14, v1

    iget-object v14, v14, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object v15, v1

    iget-object v15, v15, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    const-string/jumbo v16, "AppInvHTTPD"

    const/16 v17, 0x709

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    const/16 v20, 0x0

    const-string/jumbo v21, "Exception working on HMAC for update"

    aput-object v21, v19, v20

    invoke-virtual/range {v14 .. v18}, Lcom/google/appinventor/components/runtime/ReplForm;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 257
    new-instance v14, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v1

    const-string/jumbo v17, "200 OK"

    const-string/jumbo v18, "application/json"

    const-string/jumbo v19, "{\"status\" : \"BAD\", \"message\" : \"Security Error: Exception processing MAC\"}"

    invoke-direct/range {v15 .. v19}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    .line 258
    move-object v4, v15

    const-string/jumbo v15, "Access-Control-Allow-Origin"

    const-string/jumbo v16, "*"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    move-object v14, v4

    const-string/jumbo v15, "Access-Control-Allow-Headers"

    const-string/jumbo v16, "origin, content-type"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    move-object v14, v4

    const-string/jumbo v15, "Access-Control-Allow-Methods"

    const-string/jumbo v16, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    move-object v14, v4

    const-string/jumbo v15, "Allow"

    const-string/jumbo v16, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    move-object v14, v4

    move-object v1, v14

    goto/16 :goto_0

    .line 277
    :cond_11
    move-object v14, v1

    move-object v15, v7

    move-object v3, v15

    .line 1508
    iget-object v14, v14, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object v15, v3

    invoke-static {v14, v15}, Lcom/google/appinventor/components/runtime/util/PackageInstaller;->doPackageInstall(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)V

    .line 278
    new-instance v14, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v1

    const-string/jumbo v17, "200 OK"

    const-string/jumbo v18, "application/json"

    const-string/jumbo v19, "{\"status\" : \"OK\", \"message\" : \"Update Should Happen\"}"

    invoke-direct/range {v15 .. v19}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    .line 279
    move-object v3, v15

    const-string/jumbo v15, "Access-Control-Allow-Origin"

    const-string/jumbo v16, "*"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    move-object v14, v3

    const-string/jumbo v15, "Access-Control-Allow-Headers"

    const-string/jumbo v16, "origin, content-type"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    move-object v14, v3

    const-string/jumbo v15, "Access-Control-Allow-Methods"

    const-string/jumbo v16, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    move-object v14, v3

    const-string/jumbo v15, "Allow"

    const-string/jumbo v16, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    move-object v14, v3

    move-object v1, v14

    goto/16 :goto_0

    .line 285
    :cond_12
    new-instance v14, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v1

    const-string/jumbo v17, "200 OK"

    const-string/jumbo v18, "application/json"

    const-string/jumbo v19, "{\"status\" : \"BAD\", \"message\" : \"Missing Parameters\"}"

    invoke-direct/range {v15 .. v19}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    .line 286
    move-object v3, v15

    const-string/jumbo v15, "Access-Control-Allow-Origin"

    const-string/jumbo v16, "*"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    move-object v14, v3

    const-string/jumbo v15, "Access-Control-Allow-Headers"

    const-string/jumbo v16, "origin, content-type"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    move-object v14, v3

    const-string/jumbo v15, "Access-Control-Allow-Methods"

    const-string/jumbo v16, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    move-object v14, v3

    const-string/jumbo v15, "Allow"

    const-string/jumbo v16, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    move-object v14, v3

    move-object v1, v14

    goto/16 :goto_0

    .line 292
    :cond_13
    move-object v14, v2

    const-string/jumbo v15, "/_package"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_15

    .line 294
    move-object v14, v5

    const-string/jumbo v15, "package"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    .line 295
    move-object v8, v15

    if-nez v14, :cond_14

    .line 296
    new-instance v14, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v1

    const-string/jumbo v17, "200 OK"

    const-string/jumbo v18, "text/plain"

    const-string/jumbo v19, "NOT OK"

    invoke-direct/range {v15 .. v19}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    move-object v1, v14

    goto/16 :goto_0

    .line 299
    :cond_14
    const-string/jumbo v14, "AppInvHTTPD"

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/io/File;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v8

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 300
    new-instance v14, Landroid/content/Intent;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    const-string/jumbo v16, "android.intent.action.VIEW"

    invoke-direct/range {v15 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v14

    .line 301
    new-instance v14, Ljava/io/File;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v8

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v14}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v14

    move-object v3, v14

    .line 302
    move-object v14, v2

    move-object v15, v3

    const-string/jumbo v16, "application/vnd.android.package-archive"

    invoke-virtual/range {v14 .. v16}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    .line 303
    move-object v14, v1

    iget-object v14, v14, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->form:Lcom/google/appinventor/components/runtime/ReplForm;

    move-object v15, v2

    invoke-virtual {v14, v15}, Lcom/google/appinventor/components/runtime/ReplForm;->startActivity(Landroid/content/Intent;)V

    .line 304
    new-instance v14, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v1

    const-string/jumbo v17, "200 OK"

    const-string/jumbo v18, "text/plain"

    const-string/jumbo v19, "OK"

    invoke-direct/range {v15 .. v19}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    .line 305
    move-object v7, v15

    const-string/jumbo v15, "Access-Control-Allow-Origin"

    const-string/jumbo v16, "*"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    move-object v14, v7

    const-string/jumbo v15, "Access-Control-Allow-Headers"

    const-string/jumbo v16, "origin, content-type"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    move-object v14, v7

    const-string/jumbo v15, "Access-Control-Allow-Methods"

    const-string/jumbo v16, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    move-object v14, v7

    const-string/jumbo v15, "Allow"

    const-string/jumbo v16, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    move-object v14, v7

    move-object v1, v14

    goto/16 :goto_0

    .line 310
    :cond_15
    move-object v14, v2

    const-string/jumbo v15, "/_extensions"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16

    .line 311
    move-object v14, v1

    move-object v15, v5

    invoke-direct {v14, v15}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/util/Properties;)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v14

    move-object v1, v14

    goto/16 :goto_0

    .line 314
    :cond_16
    move-object v14, v3

    const-string/jumbo v15, "PUT"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1e

    .line 315
    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v7, v14

    .line 316
    move-object v14, v6

    const-string/jumbo v15, "content"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    .line 317
    move-object v8, v15

    if-eqz v14, :cond_1c

    .line 318
    new-instance v14, Ljava/io/File;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v8

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v2, v14

    .line 319
    move-object v14, v5

    const-string/jumbo v15, "filename"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    .line 320
    move-object v3, v15

    if-eqz v14, :cond_18

    .line 321
    move-object v14, v3

    const-string/jumbo v15, ".."

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_17

    move-object v14, v3

    const-string/jumbo v15, ".."

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_17

    move-object v14, v3

    const-string/jumbo v15, "../"

    .line 322
    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_18

    .line 323
    :cond_17
    const-string/jumbo v14, "AppInvHTTPD"

    const-string/jumbo v15, " Ignoring invalid filename: "

    move-object/from16 v16, v3

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 324
    const/4 v14, 0x0

    move-object v3, v14

    .line 327
    :cond_18
    move-object v14, v3

    if-eqz v14, :cond_1b

    .line 329
    new-instance v14, Ljava/io/File;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v3

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    .line 330
    move-object v4, v15

    invoke-virtual {v14}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v14

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    .line 331
    move-object v5, v15

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_19

    .line 332
    move-object v14, v5

    invoke-virtual {v14}, Ljava/io/File;->mkdirs()Z

    move-result v14

    .line 334
    :cond_19
    move-object v14, v2

    move-object v15, v4

    invoke-virtual {v14, v15}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v14

    if-nez v14, :cond_1a

    .line 335
    move-object v14, v2

    move-object v15, v4

    invoke-static {v14, v15}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/io/File;Ljava/io/File;)V

    .line 336
    move-object v14, v2

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    move-result v14

    .line 338
    .line 347
    :cond_1a
    :goto_7
    move-object v14, v7

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_1d

    .line 348
    new-instance v14, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v1

    const-string/jumbo v17, "200 OK"

    const-string/jumbo v18, "text/plain"

    const-string/jumbo v19, "NOTOK"

    invoke-direct/range {v15 .. v19}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    .line 349
    move-object v2, v15

    const-string/jumbo v15, "Access-Control-Allow-Origin"

    const-string/jumbo v16, "*"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    move-object v14, v2

    const-string/jumbo v15, "Access-Control-Allow-Headers"

    const-string/jumbo v16, "origin, content-type"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    move-object v14, v2

    const-string/jumbo v15, "Access-Control-Allow-Methods"

    const-string/jumbo v16, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    move-object v14, v2

    const-string/jumbo v15, "Allow"

    const-string/jumbo v16, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    move-object v14, v2

    move-object v1, v14

    goto/16 :goto_0

    .line 339
    :cond_1b
    move-object v14, v2

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    move-result v14

    .line 340
    const-string/jumbo v14, "AppInvHTTPD"

    const-string/jumbo v15, "Received content without a file name!"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 341
    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v7, v14

    .line 343
    goto :goto_7

    .line 344
    :cond_1c
    const-string/jumbo v14, "AppInvHTTPD"

    const-string/jumbo v15, "Received PUT without content."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 345
    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v7, v14

    goto :goto_7

    .line 355
    :cond_1d
    new-instance v14, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v1

    const-string/jumbo v17, "200 OK"

    const-string/jumbo v18, "text/plain"

    const-string/jumbo v19, "OK"

    invoke-direct/range {v15 .. v19}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    .line 356
    move-object v2, v15

    const-string/jumbo v15, "Access-Control-Allow-Origin"

    const-string/jumbo v16, "*"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    move-object v14, v2

    const-string/jumbo v15, "Access-Control-Allow-Headers"

    const-string/jumbo v16, "origin, content-type"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    move-object v14, v2

    const-string/jumbo v15, "Access-Control-Allow-Methods"

    const-string/jumbo v16, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    move-object v14, v2

    const-string/jumbo v15, "Allow"

    const-string/jumbo v16, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    move-object v14, v2

    move-object v1, v14

    goto/16 :goto_0

    .line 364
    :cond_1e
    move-object v14, v4

    invoke-virtual {v14}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v14

    move-object v7, v14

    .line 365
    :goto_8
    move-object v14, v7

    invoke-interface {v14}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_1f

    .line 367
    move-object v14, v7

    invoke-interface {v14}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object v8, v14

    .line 368
    const-string/jumbo v14, "AppInvHTTPD"

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    const-string/jumbo v17, "  HDR: \'"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v8

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\' = \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v4

    move-object/from16 v17, v8

    .line 369
    invoke-virtual/range {v16 .. v17}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 368
    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 370
    goto :goto_8

    .line 371
    :cond_1f
    move-object v14, v5

    invoke-virtual {v14}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v14

    move-object v7, v14

    .line 372
    :goto_9
    move-object v14, v7

    invoke-interface {v14}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_20

    .line 374
    move-object v14, v7

    invoke-interface {v14}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object v8, v14

    .line 375
    const-string/jumbo v14, "AppInvHTTPD"

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    const-string/jumbo v17, "  PRM: \'"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v8

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\' = \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v5

    move-object/from16 v17, v8

    .line 376
    invoke-virtual/range {v16 .. v17}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 375
    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 377
    goto :goto_9

    .line 378
    :cond_20
    move-object v14, v6

    invoke-virtual {v14}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v14

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    .line 379
    move-object v7, v15

    invoke-interface {v14}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v14

    if-eqz v14, :cond_25

    .line 381
    move-object v14, v7

    invoke-interface {v14}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object v8, v14

    .line 382
    move-object v14, v6

    move-object v15, v8

    invoke-virtual {v14, v15}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v2, v14

    .line 383
    move-object v14, v5

    move-object v15, v8

    invoke-virtual {v14, v15}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    .line 384
    move-object v3, v15

    const-string/jumbo v15, ".."

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_21

    move-object v14, v3

    const-string/jumbo v15, ".."

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_21

    move-object v14, v3

    const-string/jumbo v15, "../"

    .line 385
    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ltz v14, :cond_22

    .line 386
    :cond_21
    const-string/jumbo v14, "AppInvHTTPD"

    const-string/jumbo v15, " Ignoring invalid filename: "

    move-object/from16 v16, v3

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 387
    const/4 v14, 0x0

    move-object v3, v14

    .line 389
    :cond_22
    new-instance v14, Ljava/io/File;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v2

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v4, v14

    .line 390
    move-object v14, v3

    if-nez v14, :cond_24

    .line 391
    move-object v14, v4

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    move-result v14

    .line 399
    :cond_23
    :goto_a
    const-string/jumbo v14, "AppInvHTTPD"

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    const-string/jumbo v17, " UPLOADED: \'"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v3

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\' was at \'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v2

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\'"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .line 400
    new-instance v14, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v1

    const-string/jumbo v17, "200 OK"

    const-string/jumbo v18, "text/plain"

    const-string/jumbo v19, "OK"

    invoke-direct/range {v15 .. v19}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;-><init>(Lcom/google/appinventor/components/runtime/util/NanoHTTPD;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    .line 401
    move-object v5, v15

    const-string/jumbo v15, "Access-Control-Allow-Origin"

    const-string/jumbo v16, "*"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    move-object v14, v5

    const-string/jumbo v15, "Access-Control-Allow-Headers"

    const-string/jumbo v16, "origin, content-type"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    move-object v14, v5

    const-string/jumbo v15, "Access-Control-Allow-Methods"

    const-string/jumbo v16, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    move-object v14, v5

    const-string/jumbo v15, "Allow"

    const-string/jumbo v16, "POST,OPTIONS,GET,HEAD,PUT"

    invoke-virtual/range {v14 .. v16}, Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    move-object v14, v5

    move-object v1, v14

    goto/16 :goto_0

    .line 393
    :cond_24
    new-instance v14, Ljava/io/File;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/io/File;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v17, v3

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v5, v14

    .line 394
    move-object v14, v4

    move-object v15, v5

    invoke-virtual {v14, v15}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v14

    if-nez v14, :cond_23

    .line 395
    move-object v14, v4

    move-object v15, v5

    invoke-static {v14, v15}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/io/File;Ljava/io/File;)V

    .line 396
    move-object v14, v4

    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    move-result v14

    goto/16 :goto_a

    .line 408
    :cond_25
    move-object v14, v1

    move-object v15, v2

    move-object/from16 v16, v4

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Ljava/io/File;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v14 .. v18}, Lcom/google/appinventor/components/runtime/util/AppInvHTTPD;->serveFile(Ljava/lang/String;Ljava/util/Properties;Ljava/io/File;Z)Lcom/google/appinventor/components/runtime/util/NanoHTTPD$Response;

    move-result-object v14

    move-object v1, v14

    goto/16 :goto_0
.end method
