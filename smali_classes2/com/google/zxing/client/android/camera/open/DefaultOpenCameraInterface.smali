.class final Lcom/google/zxing/client/android/camera/open/DefaultOpenCameraInterface;
.super Ljava/lang/Object;
.source "DefaultOpenCameraInterface.java"

# interfaces
.implements Lcom/google/zxing/client/android/camera/open/OpenCameraInterface;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/camera/open/DefaultOpenCameraInterface;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public open()Landroid/hardware/Camera;
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/camera/open/DefaultOpenCameraInterface;
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/android/camera/open/DefaultOpenCameraInterface;
    return-object v0
.end method
