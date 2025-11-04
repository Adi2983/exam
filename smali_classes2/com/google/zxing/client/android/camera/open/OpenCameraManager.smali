.class public final Lcom/google/zxing/client/android/camera/open/OpenCameraManager;
.super Lcom/google/zxing/client/android/common/PlatformSupportManager;
.source "OpenCameraManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/zxing/client/android/common/PlatformSupportManager",
        "<",
        "Lcom/google/zxing/client/android/camera/open/OpenCameraInterface;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/camera/open/OpenCameraManager;
    move-object v1, v0

    const-class v2, Lcom/google/zxing/client/android/camera/open/OpenCameraInterface;

    new-instance v3, Lcom/google/zxing/client/android/camera/open/DefaultOpenCameraInterface;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/google/zxing/client/android/camera/open/DefaultOpenCameraInterface;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/client/android/common/PlatformSupportManager;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 29
    move-object v1, v0

    const/16 v2, 0x9

    const-string/jumbo v3, "com.google.zxing.client.android.camera.open.GingerbreadOpenCameraInterface"

    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/client/android/camera/open/OpenCameraManager;->addImplementationClass(ILjava/lang/String;)V

    .line 30
    return-void
.end method
