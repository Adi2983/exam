.class public final Lcom/google/zxing/client/android/camera/exposure/FroyoExposureInterface;
.super Ljava/lang/Object;
.source "FroyoExposureInterface.java"

# interfaces
.implements Lcom/google/zxing/client/android/camera/exposure/ExposureInterface;


# static fields
.field private static final MAX_EXPOSURE_COMPENSATION:F = 1.5f

.field private static final MIN_EXPOSURE_COMPENSATION:F

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/google/zxing/client/android/camera/exposure/FroyoExposureInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/camera/exposure/FroyoExposureInterface;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 24
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/camera/exposure/FroyoExposureInterface;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setExposure(Landroid/hardware/Camera$Parameters;Z)V
    .locals 12

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/camera/exposure/FroyoExposureInterface;
    move-object v1, p1

    .local v1, "parameters":Landroid/hardware/Camera$Parameters;
    move v2, p2

    .local v2, "lightOn":Z
    move-object v7, v1

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v7

    move v3, v7

    .line 34
    .local v3, "minExposure":I
    move-object v7, v1

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v7

    move v4, v7

    .line 35
    .local v4, "maxExposure":I
    move v7, v3

    if-nez v7, :cond_0

    move v7, v4

    if-eqz v7, :cond_2

    .line 36
    :cond_0
    move-object v7, v1

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v7

    move v5, v7

    .line 38
    .local v5, "step":F
    move v7, v2

    if-eqz v7, :cond_1

    .line 40
    const/4 v7, 0x0

    move v8, v5

    div-float/2addr v7, v8

    float-to-int v7, v7

    move v8, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    move v6, v7

    .line 45
    .local v6, "desiredCompensation":I
    :goto_0
    sget-object v7, Lcom/google/zxing/client/android/camera/exposure/FroyoExposureInterface;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Setting exposure compensation to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move v9, v5

    move v10, v6

    int-to-float v10, v10

    mul-float/2addr v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 46
    move-object v7, v1

    move v8, v6

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    .line 47
    .line 50
    .end local v5    # "step":F
    .end local v6    # "desiredCompensation":I
    :goto_1
    return-void

    .line 43
    .restart local v5    # "step":F
    :cond_1
    const/high16 v7, 0x3fc00000    # 1.5f

    move v8, v5

    div-float/2addr v7, v8

    float-to-int v7, v7

    move v8, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    move v6, v7

    .restart local v6    # "desiredCompensation":I
    goto :goto_0

    .line 48
    .end local v5    # "step":F
    .end local v6    # "desiredCompensation":I
    :cond_2
    sget-object v7, Lcom/google/zxing/client/android/camera/exposure/FroyoExposureInterface;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Camera does not support exposure compensation"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    goto :goto_1
.end method
