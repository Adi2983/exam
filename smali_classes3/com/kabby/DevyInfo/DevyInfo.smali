.class public Lcom/kabby/DevyInfo/DevyInfo;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXTENSION:Lcom/google/appinventor/components/common/ComponentCategory;
    description = ""
    iconName = ""
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
    external = true
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    libraries = "devyinfo.jar"
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET, android.permission.ACCESS_NETWORK_STATE, android.permission.ACCESS_NETWORK_STATE, android.permission.ACCESS_NETWORK_STATE, android.permission.ACCESS_FINE_LOCATION, android.permission.ACCESS_COARSE_LOCATION"
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private appsInformation:Lcom/oseamiya/deviceinformation/AppsInformation;

.field private batteryInformation:Lcom/oseamiya/deviceinformation/BatteryInformation;

.field private cameraInformation:Lcom/oseamiya/deviceinformation/CameraInformation;

.field private context:Landroid/content/Context;

.field private cpuInformation:Lcom/oseamiya/deviceinformation/CpuInformation;

.field private deviceInformation:Lcom/oseamiya/deviceinformation/DeviceInformation;

.field private displayInformation:Lcom/oseamiya/deviceinformation/DisplayInformation;

.field private kiddo:F

.field private locationInformation:Lcom/oseamiya/deviceinformation/LocationInformation;

.field private memoryInformation:Lcom/oseamiya/deviceinformation/MemoryInformation;

.field private networkInformation:Lcom/oseamiya/deviceinformation/NetworkInformation;

.field private sensorInformation:Lcom/oseamiya/deviceinformation/SensorInformation;

.field private systemInformation:Lcom/oseamiya/deviceinformation/SystemInformation;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/kabby/DevyInfo/DevyInfo;->activity:Landroid/app/Activity;

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v3

    iput-object v3, v2, Lcom/kabby/DevyInfo/DevyInfo;->context:Landroid/content/Context;

    move-object v2, v0

    new-instance v3, Lcom/oseamiya/deviceinformation/DeviceInformation;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/kabby/DevyInfo/DevyInfo;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/oseamiya/deviceinformation/DeviceInformation;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/kabby/DevyInfo/DevyInfo;->deviceInformation:Lcom/oseamiya/deviceinformation/DeviceInformation;

    move-object v2, v0

    new-instance v3, Lcom/oseamiya/deviceinformation/DisplayInformation;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/kabby/DevyInfo/DevyInfo;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/oseamiya/deviceinformation/DisplayInformation;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/kabby/DevyInfo/DevyInfo;->displayInformation:Lcom/oseamiya/deviceinformation/DisplayInformation;

    move-object v2, v0

    new-instance v3, Lcom/oseamiya/deviceinformation/AppsInformation;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/kabby/DevyInfo/DevyInfo;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/oseamiya/deviceinformation/AppsInformation;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/kabby/DevyInfo/DevyInfo;->appsInformation:Lcom/oseamiya/deviceinformation/AppsInformation;

    move-object v2, v0

    new-instance v3, Lcom/oseamiya/deviceinformation/BatteryInformation;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/kabby/DevyInfo/DevyInfo;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/oseamiya/deviceinformation/BatteryInformation;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/kabby/DevyInfo/DevyInfo;->batteryInformation:Lcom/oseamiya/deviceinformation/BatteryInformation;

    move-object v2, v0

    new-instance v3, Lcom/oseamiya/deviceinformation/CameraInformation;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/kabby/DevyInfo/DevyInfo;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/oseamiya/deviceinformation/CameraInformation;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/kabby/DevyInfo/DevyInfo;->cameraInformation:Lcom/oseamiya/deviceinformation/CameraInformation;

    move-object v2, v0

    new-instance v3, Lcom/oseamiya/deviceinformation/CpuInformation;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/kabby/DevyInfo/DevyInfo;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/oseamiya/deviceinformation/CpuInformation;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/kabby/DevyInfo/DevyInfo;->cpuInformation:Lcom/oseamiya/deviceinformation/CpuInformation;

    move-object v2, v0

    new-instance v3, Lcom/oseamiya/deviceinformation/LocationInformation;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/kabby/DevyInfo/DevyInfo;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/oseamiya/deviceinformation/LocationInformation;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/kabby/DevyInfo/DevyInfo;->locationInformation:Lcom/oseamiya/deviceinformation/LocationInformation;

    move-object v2, v0

    new-instance v3, Lcom/oseamiya/deviceinformation/MemoryInformation;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lcom/oseamiya/deviceinformation/MemoryInformation;-><init>()V

    iput-object v3, v2, Lcom/kabby/DevyInfo/DevyInfo;->memoryInformation:Lcom/oseamiya/deviceinformation/MemoryInformation;

    move-object v2, v0

    new-instance v3, Lcom/oseamiya/deviceinformation/SensorInformation;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/kabby/DevyInfo/DevyInfo;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/oseamiya/deviceinformation/SensorInformation;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/kabby/DevyInfo/DevyInfo;->sensorInformation:Lcom/oseamiya/deviceinformation/SensorInformation;

    move-object v2, v0

    new-instance v3, Lcom/oseamiya/deviceinformation/SystemInformation;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/kabby/DevyInfo/DevyInfo;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/oseamiya/deviceinformation/SystemInformation;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/kabby/DevyInfo/DevyInfo;->systemInformation:Lcom/oseamiya/deviceinformation/SystemInformation;

    move-object v2, v0

    new-instance v3, Lcom/oseamiya/deviceinformation/NetworkInformation;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/kabby/DevyInfo/DevyInfo;->context:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/oseamiya/deviceinformation/NetworkInformation;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/kabby/DevyInfo/DevyInfo;->networkInformation:Lcom/oseamiya/deviceinformation/NetworkInformation;

    move-object v2, v0

    iget-object v2, v2, Lcom/kabby/DevyInfo/DevyInfo;->memoryInformation:Lcom/oseamiya/deviceinformation/MemoryInformation;

    move-object v3, v0

    iget-object v3, v3, Lcom/kabby/DevyInfo/DevyInfo;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/oseamiya/deviceinformation/MemoryInformation;->MemoryInformation(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public GetAllAppsPackageName()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->appsInformation:Lcom/oseamiya/deviceinformation/AppsInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/AppsInformation;->getAllAppsPackageName()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public GetApiLevel()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->systemInformation:Lcom/oseamiya/deviceinformation/SystemInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/SystemInformation;->getApiLevel()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public GetApplicationName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/kabby/DevyInfo/DevyInfo;->appsInformation:Lcom/oseamiya/deviceinformation/AppsInformation;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/oseamiya/deviceinformation/AppsInformation;->getApplicationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public GetAvailableExternalStorageSize()J
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->memoryInformation:Lcom/oseamiya/deviceinformation/MemoryInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/MemoryInformation;->getAvailableExternalStorageSize()J

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public GetAvailableInternalMemorySize()J
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->memoryInformation:Lcom/oseamiya/deviceinformation/MemoryInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/MemoryInformation;->getAvailableInternalMemorySize()J

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public GetAvailableRam()J
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->memoryInformation:Lcom/oseamiya/deviceinformation/MemoryInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/MemoryInformation;->getAvailableRam()J

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public GetBatteryCapacity()D
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->batteryInformation:Lcom/oseamiya/deviceinformation/BatteryInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/BatteryInformation;->getBatteryCapacity()D

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public GetBatteryPercentage()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->batteryInformation:Lcom/oseamiya/deviceinformation/BatteryInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/BatteryInformation;->getPercentage()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public GetBatteryTemperature()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->batteryInformation:Lcom/oseamiya/deviceinformation/BatteryInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/BatteryInformation;->getBatteryTemperature()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public GetBatteryVoltage()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->batteryInformation:Lcom/oseamiya/deviceinformation/BatteryInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/BatteryInformation;->getBatteryVoltage()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public GetBoardName()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->deviceInformation:Lcom/oseamiya/deviceinformation/DeviceInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/DeviceInformation;->getBoardName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public GetBogoMips()F
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v2, v0

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/kabby/DevyInfo/DevyInfo;->cpuInformation:Lcom/oseamiya/deviceinformation/CpuInformation;

    invoke-static {}, Lcom/oseamiya/deviceinformation/CpuInformation;->getBogoMips()F

    move-result v3

    iput v3, v2, Lcom/kabby/DevyInfo/DevyInfo;->kiddo:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v2, v0

    iget v2, v2, Lcom/kabby/DevyInfo/DevyInfo;->kiddo:F

    move v0, v2

    return v0

    :catch_0
    move-exception v2

    move-object v1, v2

    goto :goto_0
.end method

.method public GetBootloader()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->systemInformation:Lcom/oseamiya/deviceinformation/SystemInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/SystemInformation;->getBootloader()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public GetBrandName()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->deviceInformation:Lcom/oseamiya/deviceinformation/DeviceInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/DeviceInformation;->getBrandName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public GetBrightnessLevel()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->displayInformation:Lcom/oseamiya/deviceinformation/DisplayInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/DisplayInformation;->getBrightnessLevel()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public GetBuildFingerPrint()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->deviceInformation:Lcom/oseamiya/deviceinformation/DeviceInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/DeviceInformation;->getBuildFingerPrint()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public GetBuildTime()J
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->deviceInformation:Lcom/oseamiya/deviceinformation/DeviceInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/DeviceInformation;->getBuildTime()J

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public GetBuildUser()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->deviceInformation:Lcom/oseamiya/deviceinformation/DeviceInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/DeviceInformation;->getBuildUser()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public GetCameraIds()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->cameraInformation:Lcom/oseamiya/deviceinformation/CameraInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/CameraInformation;->getCameraIds()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public GetChargingSource()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->batteryInformation:Lcom/oseamiya/deviceinformation/BatteryInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/BatteryInformation;->getChargingSource()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public GetCity(DD)Ljava/lang/String;
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, v0

    iget-object v5, v5, Lcom/kabby/DevyInfo/DevyInfo;->locationInformation:Lcom/oseamiya/deviceinformation/LocationInformation;

    move-wide v6, v1

    move-wide v8, v3

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/oseamiya/deviceinformation/LocationInformation;->getCity(DD)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method public GetClockSpeed()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->cpuInformation:Lcom/oseamiya/deviceinformation/CpuInformation;

    invoke-static {}, Lcom/oseamiya/deviceinformation/CpuInformation;->getClockSpeed()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public GetCountry()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->systemInformation:Lcom/oseamiya/deviceinformation/SystemInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/SystemInformation;->getCountry()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public GetCountryDisplayName()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->systemInformation:Lcom/oseamiya/deviceinformation/SystemInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/SystemInformation;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public GetCountryName(DD)Ljava/lang/String;
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, v0

    iget-object v5, v5, Lcom/kabby/DevyInfo/DevyInfo;->locationInformation:Lcom/oseamiya/deviceinformation/LocationInformation;

    move-wide v6, v1

    move-wide v8, v3

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/oseamiya/deviceinformation/LocationInformation;->getCountryName(DD)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method public GetCurrentLatitude()D
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->locationInformation:Lcom/oseamiya/deviceinformation/LocationInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/LocationInformation;->getCurrentLatitude()D

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public GetCurrentLongitude()D
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->locationInformation:Lcom/oseamiya/deviceinformation/LocationInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/LocationInformation;->getCurrentLongitude()D

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public GetDeviceId()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->deviceInformation:Lcom/oseamiya/deviceinformation/DeviceInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/DeviceInformation;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public GetDeviceName()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->deviceInformation:Lcom/oseamiya/deviceinformation/DeviceInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/DeviceInformation;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public GetDeviceType()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->deviceInformation:Lcom/oseamiya/deviceinformation/DeviceInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/DeviceInformation;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public GetDisplayCountry()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->systemInformation:Lcom/oseamiya/deviceinformation/SystemInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/SystemInformation;->getDisplayCountry()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public GetDisplayHeight()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->displayInformation:Lcom/oseamiya/deviceinformation/DisplayInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/DisplayInformation;->getDisplayHeight()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public GetDisplayLanguage()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->systemInformation:Lcom/oseamiya/deviceinformation/SystemInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/SystemInformation;->getDisplayLanguage()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public GetDisplayVersion()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->deviceInformation:Lcom/oseamiya/deviceinformation/DeviceInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/DeviceInformation;->getDisplayVersion()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public GetDisplayWidth()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->displayInformation:Lcom/oseamiya/deviceinformation/DisplayInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/DisplayInformation;->getDisplayWidth()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public GetFontScale()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->displayInformation:Lcom/oseamiya/deviceinformation/DisplayInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/DisplayInformation;->getFontScale()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public GetGPUExtension()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->cpuInformation:Lcom/oseamiya/deviceinformation/CpuInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/CpuInformation;->getGPUVersion()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public GetGPURenderer()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->cpuInformation:Lcom/oseamiya/deviceinformation/CpuInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/CpuInformation;->getGPURenderer()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public GetGPUVendor()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->cpuInformation:Lcom/oseamiya/deviceinformation/CpuInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/CpuInformation;->getGPUVendor()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public GetGPUVersion()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->cpuInformation:Lcom/oseamiya/deviceinformation/CpuInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/CpuInformation;->getGPUVersion()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public GetHardwareName()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->deviceInformation:Lcom/oseamiya/deviceinformation/DeviceInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/DeviceInformation;->getHardwareName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public GetHealth()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->batteryInformation:Lcom/oseamiya/deviceinformation/BatteryInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/BatteryInformation;->getHealth()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public GetHost()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->deviceInformation:Lcom/oseamiya/deviceinformation/DeviceInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/DeviceInformation;->getHost()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public GetInstalledTime(Ljava/lang/String;)J
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/kabby/DevyInfo/DevyInfo;->appsInformation:Lcom/oseamiya/deviceinformation/AppsInformation;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/oseamiya/deviceinformation/AppsInformation;->getInstalledTime(Ljava/lang/String;)J

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public GetIpAddress(Z)Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/kabby/DevyInfo/DevyInfo;->networkInformation:Lcom/oseamiya/deviceinformation/NetworkInformation;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/oseamiya/deviceinformation/NetworkInformation;->getIpAddress(Z)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public GetIso3Country()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->systemInformation:Lcom/oseamiya/deviceinformation/SystemInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/SystemInformation;->getIso3Country()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public GetIso3Language()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->systemInformation:Lcom/oseamiya/deviceinformation/SystemInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/SystemInformation;->getIso3Language()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public GetKernalVersion()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->systemInformation:Lcom/oseamiya/deviceinformation/SystemInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/SystemInformation;->getKernalVersion()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public GetLanguage()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->systemInformation:Lcom/oseamiya/deviceinformation/SystemInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/SystemInformation;->getLanguage()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public GetLanguageTag()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->systemInformation:Lcom/oseamiya/deviceinformation/SystemInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/SystemInformation;->getLanguageTag()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public GetLastUpdatedTime(Ljava/lang/String;)J
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/kabby/DevyInfo/DevyInfo;->appsInformation:Lcom/oseamiya/deviceinformation/AppsInformation;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/oseamiya/deviceinformation/AppsInformation;->getLastUpdatedTime(Ljava/lang/String;)J

    move-result-wide v2

    move-wide v0, v2

    return-wide v0
.end method

.method public GetManafacturerName()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->deviceInformation:Lcom/oseamiya/deviceinformation/DeviceInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/DeviceInformation;->getManafacturerName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public GetMaxScalingFrequency()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->cpuInformation:Lcom/oseamiya/deviceinformation/CpuInformation;

    invoke-static {}, Lcom/oseamiya/deviceinformation/CpuInformation;->getMaxScalingFrequency()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public GetMaximumAutoExposureRegions(Ljava/lang/String;)I
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/kabby/DevyInfo/DevyInfo;->cameraInformation:Lcom/oseamiya/deviceinformation/CameraInformation;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/oseamiya/deviceinformation/CameraInformation;->getMaximumAutoExposureRegions(Ljava/lang/String;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public GetMaximumAutoFocusRegions(Ljava/lang/String;)I
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/kabby/DevyInfo/DevyInfo;->cameraInformation:Lcom/oseamiya/deviceinformation/CameraInformation;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/oseamiya/deviceinformation/CameraInformation;->getMaximumAutoFocusRegions(Ljava/lang/String;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public GetMaximumAutoWhiteBalancingRegions(Ljava/lang/String;)I
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/kabby/DevyInfo/DevyInfo;->cameraInformation:Lcom/oseamiya/deviceinformation/CameraInformation;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/oseamiya/deviceinformation/CameraInformation;->getMaximumAutoWhiteBalanceRegions(Ljava/lang/String;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public GetMaximumFrequency()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->cpuInformation:Lcom/oseamiya/deviceinformation/CpuInformation;

    invoke-static {}, Lcom/oseamiya/deviceinformation/CpuInformation;->getMaximumFrequency()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public GetMinScalingFrequency()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->cpuInformation:Lcom/oseamiya/deviceinformation/CpuInformation;

    invoke-static {}, Lcom/oseamiya/deviceinformation/CpuInformation;->getMinScalingFrequency()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public GetMinimumFrequency()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->cpuInformation:Lcom/oseamiya/deviceinformation/CpuInformation;

    invoke-static {}, Lcom/oseamiya/deviceinformation/CpuInformation;->getMinimumFrequency()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public GetModelName()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->deviceInformation:Lcom/oseamiya/deviceinformation/DeviceInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/DeviceInformation;->getModelName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public GetNavigationBarHeight()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->displayInformation:Lcom/oseamiya/deviceinformation/DisplayInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/DisplayInformation;->getNavigationBarHeight()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public GetNumberOfCameras()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->cameraInformation:Lcom/oseamiya/deviceinformation/CameraInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/CameraInformation;->getNumberOfCameras()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public GetNumberOfCores()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->cpuInformation:Lcom/oseamiya/deviceinformation/CpuInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/CpuInformation;->getNumberOfCores()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public GetNumberOfSimSlot()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->deviceInformation:Lcom/oseamiya/deviceinformation/DeviceInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/DeviceInformation;->getNumberOfSimSlot()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public GetOrientation()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->displayInformation:Lcom/oseamiya/deviceinformation/DisplayInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/DisplayInformation;->getOrientation()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public GetPhysicalSize()D
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->displayInformation:Lcom/oseamiya/deviceinformation/DisplayInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/DisplayInformation;->getPhysicalSize()D

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public GetPostalCode(DD)Ljava/lang/String;
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, v0

    iget-object v5, v5, Lcom/kabby/DevyInfo/DevyInfo;->locationInformation:Lcom/oseamiya/deviceinformation/LocationInformation;

    move-wide v6, v1

    move-wide v8, v3

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/oseamiya/deviceinformation/LocationInformation;->getPostalCode(DD)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method public GetProductName()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->deviceInformation:Lcom/oseamiya/deviceinformation/DeviceInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/DeviceInformation;->getProductName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public GetRadioVersion()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->deviceInformation:Lcom/oseamiya/deviceinformation/DeviceInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/DeviceInformation;->getRadioVersion()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public GetRefreshRate()F
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->displayInformation:Lcom/oseamiya/deviceinformation/DisplayInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/DisplayInformation;->getRefreshRate()F

    move-result v1

    move v0, v1

    return v0
.end method

.method public GetRequestedPermissions(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/kabby/DevyInfo/DevyInfo;->appsInformation:Lcom/oseamiya/deviceinformation/AppsInformation;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/oseamiya/deviceinformation/AppsInformation;->getRequestedPermissions(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public GetRotation()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->displayInformation:Lcom/oseamiya/deviceinformation/DisplayInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/DisplayInformation;->getRotation()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public GetScreenTimeout()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->displayInformation:Lcom/oseamiya/deviceinformation/DisplayInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/DisplayInformation;->getScreenTimeout()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public GetSecurityPatchDate()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->systemInformation:Lcom/oseamiya/deviceinformation/SystemInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/SystemInformation;->getSecurityPathDate()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public GetSensorList()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->sensorInformation:Lcom/oseamiya/deviceinformation/SensorInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/SensorInformation;->getSensorList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public GetSerial()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->deviceInformation:Lcom/oseamiya/deviceinformation/DeviceInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/DeviceInformation;->getSerial()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public GetServers()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->networkInformation:Lcom/oseamiya/deviceinformation/NetworkInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/NetworkInformation;->getServers()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public GetStreetAddress(DD)Ljava/lang/String;
    .locals 11
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, v0

    iget-object v5, v5, Lcom/kabby/DevyInfo/DevyInfo;->locationInformation:Lcom/oseamiya/deviceinformation/LocationInformation;

    move-wide v6, v1

    move-wide v8, v3

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/oseamiya/deviceinformation/LocationInformation;->getStreetAddress(DD)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method public GetSupportedABIs()Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->cpuInformation:Lcom/oseamiya/deviceinformation/CpuInformation;

    invoke-static {}, Lcom/oseamiya/deviceinformation/CpuInformation;->getSupportedABIs()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public GetTechnology()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->batteryInformation:Lcom/oseamiya/deviceinformation/BatteryInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/BatteryInformation;->getTechnology()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public GetTotalExternalStorageSize()J
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->memoryInformation:Lcom/oseamiya/deviceinformation/MemoryInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/MemoryInformation;->getTotalExternalStorageSize()J

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public GetTotalInternalMemorySize()J
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->memoryInformation:Lcom/oseamiya/deviceinformation/MemoryInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/MemoryInformation;->getTotalInternalMemorySize()J

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public GetTotalNumberOfSensors()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->sensorInformation:Lcom/oseamiya/deviceinformation/SensorInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/SensorInformation;->getTotalNumberOfSensors()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public GetTotalRam()J
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->memoryInformation:Lcom/oseamiya/deviceinformation/MemoryInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/MemoryInformation;->getTotalRam()J

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public GetUsedExternalStorageSize()J
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->memoryInformation:Lcom/oseamiya/deviceinformation/MemoryInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/MemoryInformation;->getUsedExternalStorageSize()J

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public GetUsedInternalMemorySize()J
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->memoryInformation:Lcom/oseamiya/deviceinformation/MemoryInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/MemoryInformation;->getUsedInternalMemorySize()J

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public GetUsedRam()J
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->memoryInformation:Lcom/oseamiya/deviceinformation/MemoryInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/MemoryInformation;->getUsedRam()J

    move-result-wide v1

    move-wide v0, v1

    return-wide v0
.end method

.method public GetVersionCode(Ljava/lang/String;)I
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/kabby/DevyInfo/DevyInfo;->appsInformation:Lcom/oseamiya/deviceinformation/AppsInformation;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/oseamiya/deviceinformation/AppsInformation;->getVersionCode(Ljava/lang/String;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public GetVersionCode()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->deviceInformation:Lcom/oseamiya/deviceinformation/DeviceInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/DeviceInformation;->getCodeName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public GetVersionName()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->systemInformation:Lcom/oseamiya/deviceinformation/SystemInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/SystemInformation;->getVersionName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public GetVersionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lcom/kabby/DevyInfo/DevyInfo;->appsInformation:Lcom/oseamiya/deviceinformation/AppsInformation;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/oseamiya/deviceinformation/AppsInformation;->getVersionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public Is64Bit()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->cpuInformation:Lcom/oseamiya/deviceinformation/CpuInformation;

    invoke-static {}, Lcom/oseamiya/deviceinformation/CpuInformation;->is64Bit()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public IsBatteryAvailable()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->batteryInformation:Lcom/oseamiya/deviceinformation/BatteryInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/BatteryInformation;->isBatteryAvailable()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public IsBrightnessAutoMode()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->displayInformation:Lcom/oseamiya/deviceinformation/DisplayInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/DisplayInformation;->isBrightnessAutoMode()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public IsCameraAvailable()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->cameraInformation:Lcom/oseamiya/deviceinformation/CameraInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/CameraInformation;->isCameraAvailable()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public IsCharging()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->batteryInformation:Lcom/oseamiya/deviceinformation/BatteryInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/BatteryInformation;->isCharging()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public IsExternalMemoryAvailable()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->memoryInformation:Lcom/oseamiya/deviceinformation/MemoryInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/MemoryInformation;->isExternalMemoryAvailable()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public IsFlashAvailable()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->cameraInformation:Lcom/oseamiya/deviceinformation/CameraInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/CameraInformation;->isFlashAvailable()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public IsGPUSupported()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->cpuInformation:Lcom/oseamiya/deviceinformation/CpuInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/CpuInformation;->isGPUSupported()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public IsHdrCapable()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->displayInformation:Lcom/oseamiya/deviceinformation/DisplayInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/DisplayInformation;->isHdrCapable()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public IsInMultiWindowMode()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public IsNightModeActive()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->displayInformation:Lcom/oseamiya/deviceinformation/DisplayInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/DisplayInformation;->isNightModeActive()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public IsRooted()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->deviceInformation:Lcom/oseamiya/deviceinformation/DeviceInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/DeviceInformation;->isRooted()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public IsScreenCurved()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->displayInformation:Lcom/oseamiya/deviceinformation/DisplayInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/DisplayInformation;->isScreenRound()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public IsScreenWideColorGamut()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->displayInformation:Lcom/oseamiya/deviceinformation/DisplayInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/DisplayInformation;->isScreenWideColorGamut()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public IsUsbHostSupported()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->deviceInformation:Lcom/oseamiya/deviceinformation/DeviceInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/DeviceInformation;->isUsbHostSupported()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public TriggerBrightnessMode()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/kabby/DevyInfo/DevyInfo;->displayInformation:Lcom/oseamiya/deviceinformation/DisplayInformation;

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/DisplayInformation;->triggerBrightnessMode()V

    return-void
.end method
