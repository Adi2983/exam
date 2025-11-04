.class public Lcom/oseamiya/deviceinformation/CameraInformation;
.super Ljava/lang/Object;
.source "CameraInformation.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/oseamiya/deviceinformation/CameraInformation;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/oseamiya/deviceinformation/CameraInformation;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/CameraInformation;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 13
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/oseamiya/deviceinformation/CameraInformation;->context:Landroid/content/Context;

    .line 14
    return-void
.end method

.method private getCharacteristics(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)[I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraCharacteristics$Key",
            "<[I>;)[I"
        }
    .end annotation

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/CameraInformation;
    move-object v1, p1

    .local v1, "cameraId":Ljava/lang/String;
    move-object v2, p2

    .local v2, "characterSpecificKey":Landroid/hardware/camera2/CameraCharacteristics$Key;, "Landroid/hardware/camera2/CameraCharacteristics$Key<[I>;"
    move-object v6, v0

    iget-object v6, v6, Lcom/oseamiya/deviceinformation/CameraInformation;->context:Landroid/content/Context;

    const-string/jumbo v7, "camera"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/CameraManager;

    move-object v3, v6

    .line 187
    .local v3, "cameraManager":Landroid/hardware/camera2/CameraManager;
    const/4 v6, 0x0

    move-object v4, v6

    .line 189
    .local v4, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    move-object v6, v3

    move-object v7, v1

    :try_start_0
    invoke-virtual {v6, v7}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v4, v6

    .line 192
    .line 193
    :goto_0
    move-object v6, v4

    move-object v7, v2

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    move-object v0, v6

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/CameraInformation;
    return-object v0

    .line 190
    .restart local v0    # "this":Lcom/oseamiya/deviceinformation/CameraInformation;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 191
    .local v5, "e":Landroid/hardware/camera2/CameraAccessException;
    move-object v6, v5

    invoke-virtual {v6}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method private getMaximumRegions(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraCharacteristics$Key",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/CameraInformation;
    move-object v1, p1

    .local v1, "cameraId":Ljava/lang/String;
    move-object v2, p2

    .local v2, "characterSpecific":Landroid/hardware/camera2/CameraCharacteristics$Key;, "Landroid/hardware/camera2/CameraCharacteristics$Key<Ljava/lang/Integer;>;"
    move-object v6, v0

    iget-object v6, v6, Lcom/oseamiya/deviceinformation/CameraInformation;->context:Landroid/content/Context;

    const-string/jumbo v7, "camera"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/camera2/CameraManager;

    move-object v3, v6

    .line 176
    .local v3, "cameraManager":Landroid/hardware/camera2/CameraManager;
    const/4 v6, 0x0

    move-object v4, v6

    .line 178
    .local v4, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    move-object v6, v3

    move-object v7, v1

    :try_start_0
    invoke-virtual {v6, v7}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v4, v6

    .line 181
    .line 182
    :goto_0
    sget-boolean v6, Lcom/oseamiya/deviceinformation/CameraInformation;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    move-object v6, v4

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 179
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 180
    .local v5, "e":Landroid/hardware/camera2/CameraAccessException;
    move-object v6, v5

    invoke-virtual {v6}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    goto :goto_0

    .line 183
    .end local v5    # "e":Landroid/hardware/camera2/CameraAccessException;
    :cond_0
    move-object v6, v4

    move-object v7, v2

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move v0, v6

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/CameraInformation;
    return v0
.end method


# virtual methods
.method public getAberrationModes(Ljava/lang/String;)[I
    .locals 5

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/CameraInformation;
    move-object v1, p1

    .local v1, "cameraId":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->COLOR_CORRECTION_AVAILABLE_ABERRATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v2, v3, v4}, Lcom/oseamiya/deviceinformation/CameraInformation;->getCharacteristics(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)[I

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/CameraInformation;
    return-object v0
.end method

.method public getAntibandingModes(Ljava/lang/String;)[I
    .locals 5

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/CameraInformation;
    move-object v1, p1

    .local v1, "cameraId":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_ANTIBANDING_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v2, v3, v4}, Lcom/oseamiya/deviceinformation/CameraInformation;->getCharacteristics(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)[I

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/CameraInformation;
    return-object v0
.end method

.method public getAutoExposureModes(Ljava/lang/String;)[I
    .locals 5

    .prologue
    .line 90
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/CameraInformation;
    move-object v1, p1

    .local v1, "cameraId":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v2, v3, v4}, Lcom/oseamiya/deviceinformation/CameraInformation;->getCharacteristics(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)[I

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/CameraInformation;
    return-object v0
.end method

.method public getAutoFocusModes(Ljava/lang/String;)[I
    .locals 5

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/CameraInformation;
    move-object v1, p1

    .local v1, "cameraId":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v2, v3, v4}, Lcom/oseamiya/deviceinformation/CameraInformation;->getCharacteristics(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)[I

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/CameraInformation;
    return-object v0
.end method

.method public getCameraIds()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 36
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/CameraInformation;
    move-object v3, v0

    iget-object v3, v3, Lcom/oseamiya/deviceinformation/CameraInformation;->context:Landroid/content/Context;

    const-string/jumbo v4, "camera"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CameraManager;

    move-object v1, v3

    .line 38
    .local v1, "cameraManager":Landroid/hardware/camera2/CameraManager;
    move-object v3, v1

    :try_start_0
    invoke-virtual {v3}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    .line 41
    .end local v0    # "this":Lcom/oseamiya/deviceinformation/CameraInformation;
    :goto_0
    return-object v0

    .line 39
    .restart local v0    # "this":Lcom/oseamiya/deviceinformation/CameraInformation;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 40
    .local v2, "e":Landroid/hardware/camera2/CameraAccessException;
    move-object v3, v2

    invoke-virtual {v3}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    .line 41
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public getEffects(Ljava/lang/String;)[I
    .locals 5

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/CameraInformation;
    move-object v1, p1

    .local v1, "cameraId":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_EFFECTS:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v2, v3, v4}, Lcom/oseamiya/deviceinformation/CameraInformation;->getCharacteristics(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)[I

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/CameraInformation;
    return-object v0
.end method

.method public getMaximumAutoExposureRegions(Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/CameraInformation;
    move-object v1, p1

    .local v1, "cameraId":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v2, v3, v4}, Lcom/oseamiya/deviceinformation/CameraInformation;->getMaximumRegions(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/CameraInformation;
    return v0
.end method

.method public getMaximumAutoFocusRegions(Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/CameraInformation;
    move-object v1, p1

    .local v1, "cameraId":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v2, v3, v4}, Lcom/oseamiya/deviceinformation/CameraInformation;->getMaximumRegions(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/CameraInformation;
    return v0
.end method

.method public getMaximumAutoWhiteBalanceRegions(Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/CameraInformation;
    move-object v1, p1

    .local v1, "cameraId":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AWB:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v2, v3, v4}, Lcom/oseamiya/deviceinformation/CameraInformation;->getMaximumRegions(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/CameraInformation;
    return v0
.end method

.method public getNumberOfCameras()I
    .locals 2

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/CameraInformation;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/CameraInformation;->getCameraIds()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    move v0, v1

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/CameraInformation;
    return v0
.end method

.method public getVideoStabilizationModes(Ljava/lang/String;)[I
    .locals 5

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/CameraInformation;
    move-object v1, p1

    .local v1, "cameraId":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v2, v3, v4}, Lcom/oseamiya/deviceinformation/CameraInformation;->getCharacteristics(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)[I

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/CameraInformation;
    return-object v0
.end method

.method public getWhiteBalanceModes(Ljava/lang/String;)[I
    .locals 5

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/CameraInformation;
    move-object v1, p1

    .local v1, "cameraId":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {v2, v3, v4}, Lcom/oseamiya/deviceinformation/CameraInformation;->getCharacteristics(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)[I

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/CameraInformation;
    return-object v0
.end method

.method public isCameraAvailable()Z
    .locals 3

    .prologue
    .line 20
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/CameraInformation;
    move-object v1, v0

    iget-object v1, v1, Lcom/oseamiya/deviceinformation/CameraInformation;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "android.hardware.camera.any"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/CameraInformation;
    return v0
.end method

.method public isFlashAvailable()Z
    .locals 3

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/CameraInformation;
    move-object v1, v0

    iget-object v1, v1, Lcom/oseamiya/deviceinformation/CameraInformation;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "android.hardware.camera.flash"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/CameraInformation;
    return v0
.end method
