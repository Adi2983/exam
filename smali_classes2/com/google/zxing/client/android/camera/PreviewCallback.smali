.class final Lcom/google/zxing/client/android/camera/PreviewCallback;
.super Ljava/lang/Object;
.source "PreviewCallback.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

.field private previewHandler:Landroid/os/Handler;

.field private previewMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/google/zxing/client/android/camera/PreviewCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/camera/PreviewCallback;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/zxing/client/android/camera/CameraConfigurationManager;)V
    .locals 4

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/camera/PreviewCallback;
    move-object v1, p1

    .local v1, "configManager":Lcom/google/zxing/client/android/camera/CameraConfigurationManager;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 34
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/zxing/client/android/camera/PreviewCallback;->configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    .line 35
    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 11

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/camera/PreviewCallback;
    move-object v1, p1

    .local v1, "data":[B
    move-object v2, p2

    .local v2, "camera":Landroid/hardware/Camera;
    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/client/android/camera/PreviewCallback;->configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {v6}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v6

    move-object v3, v6

    .line 45
    .local v3, "cameraResolution":Landroid/graphics/Point;
    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/client/android/camera/PreviewCallback;->previewHandler:Landroid/os/Handler;

    move-object v4, v6

    .line 46
    .local v4, "thePreviewHandler":Landroid/os/Handler;
    move-object v6, v3

    if-eqz v6, :cond_0

    move-object v6, v4

    if-eqz v6, :cond_0

    .line 47
    move-object v6, v4

    move-object v7, v0

    iget v7, v7, Lcom/google/zxing/client/android/camera/PreviewCallback;->previewMessage:I

    move-object v8, v3

    iget v8, v8, Landroid/graphics/Point;->x:I

    move-object v9, v3

    iget v9, v9, Landroid/graphics/Point;->y:I

    move-object v10, v1

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object v5, v6

    .line 49
    .local v5, "message":Landroid/os/Message;
    move-object v6, v5

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 50
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/google/zxing/client/android/camera/PreviewCallback;->previewHandler:Landroid/os/Handler;

    .line 51
    .line 54
    .end local v5    # "message":Landroid/os/Message;
    :goto_0
    return-void

    .line 52
    :cond_0
    sget-object v6, Lcom/google/zxing/client/android/camera/PreviewCallback;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Got preview callback, but no handler or resolution available"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto :goto_0
.end method

.method setHandler(Landroid/os/Handler;I)V
    .locals 5

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/camera/PreviewCallback;
    move-object v1, p1

    .local v1, "previewHandler":Landroid/os/Handler;
    move v2, p2

    .local v2, "previewMessage":I
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/zxing/client/android/camera/PreviewCallback;->previewHandler:Landroid/os/Handler;

    .line 39
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/google/zxing/client/android/camera/PreviewCallback;->previewMessage:I

    .line 40
    return-void
.end method
