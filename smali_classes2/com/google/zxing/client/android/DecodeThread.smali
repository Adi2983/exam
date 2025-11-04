.class final Lcom/google/zxing/client/android/DecodeThread;
.super Ljava/lang/Thread;
.source "DecodeThread.java"


# static fields
.field public static final BARCODE_BITMAP:Ljava/lang/String; = "barcode_bitmap"


# instance fields
.field private final activity:Lcom/google/zxing/client/android/AppInvCaptureActivity;

.field private handler:Landroid/os/Handler;

.field private final handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

.field private final hints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/zxing/client/android/AppInvCaptureActivity;Ljava/util/Collection;Ljava/lang/String;Lcom/google/zxing/ResultPointCallback;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/client/android/AppInvCaptureActivity;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/zxing/ResultPointCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/DecodeThread;
    move-object v1, p1

    .local v1, "activity":Lcom/google/zxing/client/android/AppInvCaptureActivity;
    move-object v2, p2

    .local v2, "decodeFormats":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/BarcodeFormat;>;"
    move-object v3, p3

    .local v3, "characterSet":Ljava/lang/String;
    move-object v4, p4

    .local v4, "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Thread;-><init>()V

    .line 53
    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/google/zxing/client/android/DecodeThread;->activity:Lcom/google/zxing/client/android/AppInvCaptureActivity;

    .line 54
    move-object v6, v0

    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const/4 v9, 0x1

    invoke-direct {v8, v9}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v7, v6, Lcom/google/zxing/client/android/DecodeThread;->handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    .line 56
    move-object v6, v0

    new-instance v7, Ljava/util/EnumMap;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const-class v9, Lcom/google/zxing/DecodeHintType;

    invoke-direct {v8, v9}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v7, v6, Lcom/google/zxing/client/android/DecodeThread;->hints:Ljava/util/Map;

    .line 59
    move-object v6, v2

    if-eqz v6, :cond_0

    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 60
    :cond_0
    move-object v6, v1

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    move-object v5, v6

    .line 61
    .local v5, "prefs":Landroid/content/SharedPreferences;
    const-class v6, Lcom/google/zxing/BarcodeFormat;

    invoke-static {v6}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v6

    move-object v2, v6

    .line 63
    move-object v6, v2

    sget-object v7, Lcom/google/zxing/client/android/DecodeFormatManager;->ONE_D_FORMATS:Ljava/util/Collection;

    invoke-interface {v6, v7}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v6

    .line 66
    move-object v6, v2

    sget-object v7, Lcom/google/zxing/client/android/DecodeFormatManager;->QR_CODE_FORMATS:Ljava/util/Collection;

    invoke-interface {v6, v7}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v6

    .line 72
    .end local v5    # "prefs":Landroid/content/SharedPreferences;
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/client/android/DecodeThread;->hints:Ljava/util/Map;

    sget-object v7, Lcom/google/zxing/DecodeHintType;->POSSIBLE_FORMATS:Lcom/google/zxing/DecodeHintType;

    move-object v8, v2

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 74
    move-object v6, v3

    if-eqz v6, :cond_2

    .line 75
    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/client/android/DecodeThread;->hints:Ljava/util/Map;

    sget-object v7, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    move-object v8, v3

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 77
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/client/android/DecodeThread;->hints:Ljava/util/Map;

    sget-object v7, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    move-object v8, v4

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 78
    return-void
.end method


# virtual methods
.method getHandler()Landroid/os/Handler;
    .locals 3

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/DecodeThread;
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/zxing/client/android/DecodeThread;->handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .line 86
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/client/android/DecodeThread;->handler:Landroid/os/Handler;

    move-object v0, v2

    .end local v0    # "this":Lcom/google/zxing/client/android/DecodeThread;
    return-object v0

    .line 83
    .restart local v0    # "this":Lcom/google/zxing/client/android/DecodeThread;
    :catch_0
    move-exception v2

    move-object v1, v2

    goto :goto_0
.end method

.method public run()V
    .locals 7

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/DecodeThread;
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 92
    move-object v1, v0

    new-instance v2, Lcom/google/zxing/client/android/DecodeHandler;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/client/android/DecodeThread;->activity:Lcom/google/zxing/client/android/AppInvCaptureActivity;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/client/android/DecodeThread;->hints:Ljava/util/Map;

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/client/android/DecodeHandler;-><init>(Lcom/google/zxing/client/android/AppInvCaptureActivity;Ljava/util/Map;)V

    iput-object v2, v1, Lcom/google/zxing/client/android/DecodeThread;->handler:Landroid/os/Handler;

    .line 93
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/android/DecodeThread;->handlerInitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 94
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 95
    return-void
.end method
