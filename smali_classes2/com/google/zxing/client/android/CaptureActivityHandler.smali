.class public final Lcom/google/zxing/client/android/CaptureActivityHandler;
.super Landroid/os/Handler;
.source "CaptureActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/client/android/CaptureActivityHandler$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Lcom/google/zxing/client/android/AppInvCaptureActivity;

.field private final cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

.field private final decodeThread:Lcom/google/zxing/client/android/DecodeThread;

.field private state:Lcom/google/zxing/client/android/CaptureActivityHandler$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/google/zxing/client/android/CaptureActivityHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/CaptureActivityHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/zxing/client/android/AppInvCaptureActivity;Ljava/util/Collection;Ljava/lang/String;Lcom/google/zxing/client/android/camera/CameraManager;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/client/android/AppInvCaptureActivity;",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/zxing/client/android/camera/CameraManager;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/CaptureActivityHandler;
    move-object/from16 v1, p1

    .local v1, "activity":Lcom/google/zxing/client/android/AppInvCaptureActivity;
    move-object/from16 v2, p2

    .local v2, "decodeFormats":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/google/zxing/BarcodeFormat;>;"
    move-object/from16 v3, p3

    .local v3, "characterSet":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "cameraManager":Lcom/google/zxing/client/android/camera/CameraManager;
    move-object v5, v0

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    .line 57
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/google/zxing/client/android/CaptureActivityHandler;->activity:Lcom/google/zxing/client/android/AppInvCaptureActivity;

    .line 58
    move-object v5, v0

    new-instance v6, Lcom/google/zxing/client/android/DecodeThread;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    new-instance v11, Lcom/google/zxing/client/android/ViewfinderResultPointCallback;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    move-object v13, v1

    .line 59
    invoke-virtual {v13}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->getViewfinderView()Lcom/google/zxing/client/android/ViewfinderView;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/google/zxing/client/android/ViewfinderResultPointCallback;-><init>(Lcom/google/zxing/client/android/ViewfinderView;)V

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/google/zxing/client/android/DecodeThread;-><init>(Lcom/google/zxing/client/android/AppInvCaptureActivity;Ljava/util/Collection;Ljava/lang/String;Lcom/google/zxing/ResultPointCallback;)V

    iput-object v6, v5, Lcom/google/zxing/client/android/CaptureActivityHandler;->decodeThread:Lcom/google/zxing/client/android/DecodeThread;

    .line 60
    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/client/android/CaptureActivityHandler;->decodeThread:Lcom/google/zxing/client/android/DecodeThread;

    invoke-virtual {v5}, Lcom/google/zxing/client/android/DecodeThread;->start()V

    .line 61
    move-object v5, v0

    sget-object v6, Lcom/google/zxing/client/android/CaptureActivityHandler$State;->SUCCESS:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    iput-object v6, v5, Lcom/google/zxing/client/android/CaptureActivityHandler;->state:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    .line 64
    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lcom/google/zxing/client/android/CaptureActivityHandler;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    .line 65
    move-object v5, v4

    invoke-virtual {v5}, Lcom/google/zxing/client/android/camera/CameraManager;->startPreview()V

    .line 66
    move-object v5, v0

    invoke-direct {v5}, Lcom/google/zxing/client/android/CaptureActivityHandler;->restartPreviewAndDecode()V

    .line 67
    return-void
.end method

.method private restartPreviewAndDecode()V
    .locals 4

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/CaptureActivityHandler;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/android/CaptureActivityHandler;->state:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    sget-object v2, Lcom/google/zxing/client/android/CaptureActivityHandler$State;->SUCCESS:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    if-ne v1, v2, :cond_0

    .line 115
    move-object v1, v0

    sget-object v2, Lcom/google/zxing/client/android/CaptureActivityHandler$State;->PREVIEW:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    iput-object v2, v1, Lcom/google/zxing/client/android/CaptureActivityHandler;->state:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    .line 116
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/android/CaptureActivityHandler;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/client/android/CaptureActivityHandler;->decodeThread:Lcom/google/zxing/client/android/DecodeThread;

    invoke-virtual {v2}, Lcom/google/zxing/client/android/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/client/android/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    .line 117
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/android/CaptureActivityHandler;->activity:Lcom/google/zxing/client/android/AppInvCaptureActivity;

    invoke-virtual {v1}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->drawViewfinder()V

    .line 119
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/CaptureActivityHandler;
    move-object v1, p1

    .local v1, "message":Landroid/os/Message;
    move-object v4, v1

    iget v4, v4, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 94
    :goto_0
    :pswitch_0
    return-void

    .line 73
    :pswitch_1
    sget-object v4, Lcom/google/zxing/client/android/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Got restart preview message"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 74
    move-object v4, v0

    invoke-direct {v4}, Lcom/google/zxing/client/android/CaptureActivityHandler;->restartPreviewAndDecode()V

    .line 75
    goto :goto_0

    .line 77
    :pswitch_2
    sget-object v4, Lcom/google/zxing/client/android/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Got decode succeeded message"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 78
    move-object v4, v0

    sget-object v5, Lcom/google/zxing/client/android/CaptureActivityHandler$State;->SUCCESS:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    iput-object v5, v4, Lcom/google/zxing/client/android/CaptureActivityHandler;->state:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    .line 79
    move-object v4, v1

    invoke-virtual {v4}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    move-object v2, v4

    .line 80
    .local v2, "bundle":Landroid/os/Bundle;
    move-object v4, v2

    if-nez v4, :cond_0

    const/4 v4, 0x0

    .line 81
    :goto_1
    move-object v3, v4

    .line 82
    .local v3, "barcode":Landroid/graphics/Bitmap;
    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/client/android/CaptureActivityHandler;->activity:Lcom/google/zxing/client/android/AppInvCaptureActivity;

    move-object v5, v1

    iget-object v5, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/google/zxing/Result;

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->handleDecode(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V

    .line 83
    goto :goto_0

    .line 80
    .end local v3    # "barcode":Landroid/graphics/Bitmap;
    :cond_0
    move-object v4, v2

    const-string/jumbo v5, "barcode_bitmap"

    .line 81
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    goto :goto_1

    .line 86
    .end local v2    # "bundle":Landroid/os/Bundle;
    :pswitch_3
    move-object v4, v0

    sget-object v5, Lcom/google/zxing/client/android/CaptureActivityHandler$State;->PREVIEW:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    iput-object v5, v4, Lcom/google/zxing/client/android/CaptureActivityHandler;->state:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    .line 87
    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/client/android/CaptureActivityHandler;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/client/android/CaptureActivityHandler;->decodeThread:Lcom/google/zxing/client/android/DecodeThread;

    invoke-virtual {v5}, Lcom/google/zxing/client/android/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/google/zxing/client/android/camera/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    .line 88
    goto :goto_0

    .line 90
    :pswitch_4
    sget-object v4, Lcom/google/zxing/client/android/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Got return scan result message"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 91
    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/client/android/CaptureActivityHandler;->activity:Lcom/google/zxing/client/android/AppInvCaptureActivity;

    const/4 v5, -0x1

    move-object v6, v1

    iget-object v6, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/content/Intent;

    invoke-virtual {v4, v5, v6}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->setResult(ILandroid/content/Intent;)V

    .line 92
    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/client/android/CaptureActivityHandler;->activity:Lcom/google/zxing/client/android/AppInvCaptureActivity;

    invoke-virtual {v4}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->finish()V

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public quitSynchronously()V
    .locals 6

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/CaptureActivityHandler;
    move-object v3, v0

    sget-object v4, Lcom/google/zxing/client/android/CaptureActivityHandler$State;->DONE:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    iput-object v4, v3, Lcom/google/zxing/client/android/CaptureActivityHandler;->state:Lcom/google/zxing/client/android/CaptureActivityHandler$State;

    .line 98
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/client/android/CaptureActivityHandler;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v3}, Lcom/google/zxing/client/android/camera/CameraManager;->stopPreview()V

    .line 99
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/client/android/CaptureActivityHandler;->decodeThread:Lcom/google/zxing/client/android/DecodeThread;

    invoke-virtual {v3}, Lcom/google/zxing/client/android/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    move-object v1, v3

    .line 100
    .local v1, "quit":Landroid/os/Message;
    move-object v3, v1

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 103
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/google/zxing/client/android/CaptureActivityHandler;->decodeThread:Lcom/google/zxing/client/android/DecodeThread;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v4, v5}, Lcom/google/zxing/client/android/DecodeThread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .line 109
    :goto_0
    move-object v3, v0

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/google/zxing/client/android/CaptureActivityHandler;->removeMessages(I)V

    .line 110
    move-object v3, v0

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/google/zxing/client/android/CaptureActivityHandler;->removeMessages(I)V

    .line 111
    return-void

    .line 104
    :catch_0
    move-exception v3

    move-object v2, v3

    goto :goto_0
.end method
