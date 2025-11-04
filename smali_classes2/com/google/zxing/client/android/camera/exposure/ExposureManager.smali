.class public final Lcom/google/zxing/client/android/camera/exposure/ExposureManager;
.super Lcom/google/zxing/client/android/common/PlatformSupportManager;
.source "ExposureManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/zxing/client/android/common/PlatformSupportManager",
        "<",
        "Lcom/google/zxing/client/android/camera/exposure/ExposureInterface;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/camera/exposure/ExposureManager;
    move-object v1, v0

    const-class v2, Lcom/google/zxing/client/android/camera/exposure/ExposureInterface;

    new-instance v3, Lcom/google/zxing/client/android/camera/exposure/DefaultExposureInterface;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/google/zxing/client/android/camera/exposure/DefaultExposureInterface;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/client/android/common/PlatformSupportManager;-><init>(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 25
    move-object v1, v0

    const/16 v2, 0x8

    const-string/jumbo v3, "com.google.zxing.client.android.camera.exposure.FroyoExposureInterface"

    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/client/android/camera/exposure/ExposureManager;->addImplementationClass(ILjava/lang/String;)V

    .line 26
    return-void
.end method
