.class public Lcom/microsoft/appcenter/utils/DeviceInfoHelper;
.super Ljava/lang/Object;
.source "DeviceInfoHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/microsoft/appcenter/utils/DeviceInfoHelper$DeviceInfoException;
    }
.end annotation


# static fields
.field private static final OS_NAME:Ljava/lang/String; = "Android"

.field private static mCountryCode:Ljava/lang/String;

.field private static sWrapperSdk:Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/microsoft/appcenter/utils/DeviceInfoHelper;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getDeviceInfo(Landroid/content/Context;)Lcom/microsoft/appcenter/ingestion/models/Device;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/microsoft/appcenter/utils/DeviceInfoHelper$DeviceInfoException;
        }
    .end annotation

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    const-class v10, Lcom/microsoft/appcenter/utils/DeviceInfoHelper;

    monitor-enter v10

    :try_start_0
    new-instance v6, Lcom/microsoft/appcenter/ingestion/models/Device;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Lcom/microsoft/appcenter/ingestion/models/Device;-><init>()V

    move-object v1, v6

    .line 71
    .local v1, "device":Lcom/microsoft/appcenter/ingestion/models/Device;
    move-object v6, v0

    invoke-static {v6}, Lcom/microsoft/appcenter/utils/DeviceInfoHelper;->getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v6

    move-object v2, v6

    .line 72
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    move-object v6, v2

    if-nez v6, :cond_0

    .line 73
    new-instance v6, Lcom/microsoft/appcenter/utils/DeviceInfoHelper$DeviceInfoException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string/jumbo v8, "Cannot retrieve package info"

    invoke-direct {v7, v8}, Lcom/microsoft/appcenter/utils/DeviceInfoHelper$DeviceInfoException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    .end local v1    # "device":Lcom/microsoft/appcenter/ingestion/models/Device;
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :catchall_0
    move-exception v0

    monitor-exit v10

    .end local v0    # "context":Landroid/content/Context;
    throw v0

    .line 75
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v1    # "device":Lcom/microsoft/appcenter/ingestion/models/Device;
    .restart local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    move-object v6, v1

    move-object v7, v2

    :try_start_1
    iget-object v7, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/microsoft/appcenter/ingestion/models/Device;->setAppVersion(Ljava/lang/String;)V

    .line 76
    move-object v6, v1

    move-object v7, v2

    invoke-static {v7}, Lcom/microsoft/appcenter/utils/DeviceInfoHelper;->getVersionCode(Landroid/content/pm/PackageInfo;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/microsoft/appcenter/ingestion/models/Device;->setAppBuild(Ljava/lang/String;)V

    .line 79
    move-object v6, v1

    move-object v7, v0

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/microsoft/appcenter/ingestion/models/Device;->setAppNamespace(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    move-object v6, v0

    :try_start_2
    const-string/jumbo v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    move-object v3, v6

    .line 84
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    move-object v6, v3

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 85
    .local v4, "networkCountryIso":Ljava/lang/String;
    move-object v6, v4

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 86
    move-object v6, v1

    move-object v7, v4

    invoke-virtual {v6, v7}, Lcom/microsoft/appcenter/ingestion/models/Device;->setCarrierCountry(Ljava/lang/String;)V

    .line 88
    :cond_1
    move-object v6, v3

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 89
    .local v5, "networkOperatorName":Ljava/lang/String;
    move-object v6, v5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 90
    move-object v6, v1

    move-object v7, v5

    invoke-virtual {v6, v7}, Lcom/microsoft/appcenter/ingestion/models/Device;->setCarrierName(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    .line 97
    .end local v3    # "telephonyManager":Landroid/telephony/TelephonyManager;
    .end local v4    # "networkCountryIso":Ljava/lang/String;
    .end local v5    # "networkOperatorName":Ljava/lang/String;
    :cond_2
    :goto_0
    :try_start_3
    sget-object v6, Lcom/microsoft/appcenter/utils/DeviceInfoHelper;->mCountryCode:Ljava/lang/String;

    if-eqz v6, :cond_3

    .line 98
    move-object v6, v1

    sget-object v7, Lcom/microsoft/appcenter/utils/DeviceInfoHelper;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/microsoft/appcenter/ingestion/models/Device;->setCarrierCountry(Ljava/lang/String;)V

    .line 102
    :cond_3
    move-object v6, v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/microsoft/appcenter/ingestion/models/Device;->setLocale(Ljava/lang/String;)V

    .line 105
    move-object v6, v1

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/microsoft/appcenter/ingestion/models/Device;->setModel(Ljava/lang/String;)V

    .line 106
    move-object v6, v1

    sget-object v7, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/microsoft/appcenter/ingestion/models/Device;->setOemName(Ljava/lang/String;)V

    .line 109
    move-object v6, v1

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/microsoft/appcenter/ingestion/models/Device;->setOsApiLevel(Ljava/lang/Integer;)V

    .line 110
    move-object v6, v1

    const-string/jumbo v7, "Android"

    invoke-virtual {v6, v7}, Lcom/microsoft/appcenter/ingestion/models/Device;->setOsName(Ljava/lang/String;)V

    .line 111
    move-object v6, v1

    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/microsoft/appcenter/ingestion/models/Device;->setOsVersion(Ljava/lang/String;)V

    .line 112
    move-object v6, v1

    sget-object v7, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/microsoft/appcenter/ingestion/models/Device;->setOsBuild(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 116
    move-object v6, v1

    move-object v7, v0

    :try_start_4
    invoke-static {v7}, Lcom/microsoft/appcenter/utils/DeviceInfoHelper;->getScreenSize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/microsoft/appcenter/ingestion/models/Device;->setScreenSize(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 119
    .line 122
    :goto_1
    move-object v6, v1

    :try_start_5
    const-string/jumbo v7, "appcenter.android"

    invoke-virtual {v6, v7}, Lcom/microsoft/appcenter/ingestion/models/Device;->setSdkName(Ljava/lang/String;)V

    .line 123
    move-object v6, v1

    const-string/jumbo v7, "5.0.0"

    invoke-virtual {v6, v7}, Lcom/microsoft/appcenter/ingestion/models/Device;->setSdkVersion(Ljava/lang/String;)V

    .line 126
    move-object v6, v1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v7

    const/16 v8, 0x3c

    div-int/lit8 v7, v7, 0x3c

    const/16 v8, 0x3e8

    div-int/lit16 v7, v7, 0x3e8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/microsoft/appcenter/ingestion/models/Device;->setTimeZoneOffset(Ljava/lang/Integer;)V

    .line 129
    sget-object v6, Lcom/microsoft/appcenter/utils/DeviceInfoHelper;->sWrapperSdk:Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;

    if-eqz v6, :cond_4

    .line 130
    move-object v6, v1

    sget-object v7, Lcom/microsoft/appcenter/utils/DeviceInfoHelper;->sWrapperSdk:Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;

    invoke-virtual {v7}, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->getWrapperSdkVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/microsoft/appcenter/ingestion/models/Device;->setWrapperSdkVersion(Ljava/lang/String;)V

    .line 131
    move-object v6, v1

    sget-object v7, Lcom/microsoft/appcenter/utils/DeviceInfoHelper;->sWrapperSdk:Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;

    invoke-virtual {v7}, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->getWrapperSdkName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/microsoft/appcenter/ingestion/models/Device;->setWrapperSdkName(Ljava/lang/String;)V

    .line 132
    move-object v6, v1

    sget-object v7, Lcom/microsoft/appcenter/utils/DeviceInfoHelper;->sWrapperSdk:Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;

    invoke-virtual {v7}, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->getWrapperRuntimeVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/microsoft/appcenter/ingestion/models/Device;->setWrapperRuntimeVersion(Ljava/lang/String;)V

    .line 133
    move-object v6, v1

    sget-object v7, Lcom/microsoft/appcenter/utils/DeviceInfoHelper;->sWrapperSdk:Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;

    invoke-virtual {v7}, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->getLiveUpdateReleaseLabel()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/microsoft/appcenter/ingestion/models/Device;->setLiveUpdateReleaseLabel(Ljava/lang/String;)V

    .line 134
    move-object v6, v1

    sget-object v7, Lcom/microsoft/appcenter/utils/DeviceInfoHelper;->sWrapperSdk:Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;

    invoke-virtual {v7}, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->getLiveUpdateDeploymentKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/microsoft/appcenter/ingestion/models/Device;->setLiveUpdateDeploymentKey(Ljava/lang/String;)V

    .line 135
    move-object v6, v1

    sget-object v7, Lcom/microsoft/appcenter/utils/DeviceInfoHelper;->sWrapperSdk:Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;

    invoke-virtual {v7}, Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;->getLiveUpdatePackageHash()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/microsoft/appcenter/ingestion/models/Device;->setLiveUpdatePackageHash(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 139
    :cond_4
    move-object v6, v1

    move-object v0, v6

    .end local v0    # "context":Landroid/content/Context;
    monitor-exit v10

    return-object v0

    .line 92
    .restart local v0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 93
    .local v3, "e":Ljava/lang/Exception;
    :try_start_6
    const-string/jumbo v6, "AppCenter"

    const-string/jumbo v7, "Cannot retrieve carrier info"

    move-object v8, v3

    invoke-static {v6, v7, v8}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 117
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    move-object v3, v6

    .line 118
    .restart local v3    # "e":Ljava/lang/Exception;
    const-string/jumbo v6, "AppCenter"

    const-string/jumbo v7, "Cannot retrieve screen size"

    move-object v8, v3

    invoke-static {v6, v7, v8}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1
.end method

.method public static getPackageInfo(Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 5

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object v1, v2

    .line 53
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 56
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v0

    .line 54
    .restart local v0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 55
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "AppCenter"

    const-string/jumbo v3, "Cannot retrieve package info"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method private static getScreenSize(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SwitchIntDef"
        }
    .end annotation

    .prologue
    .line 168
    move-object v0, p0

    .local v0, "context":Landroid/content/Context;
    new-instance v7, Landroid/graphics/Point;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    move-object v4, v7

    .line 171
    .local v4, "size":Landroid/graphics/Point;
    move-object v7, v0

    const-string/jumbo v8, "display"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/display/DisplayManager;

    move-object v5, v7

    .line 172
    .local v5, "displayManager":Landroid/hardware/display/DisplayManager;
    move-object v7, v5

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v7

    move-object v3, v7

    .line 173
    .local v3, "defaultDisplay":Landroid/view/Display;
    move-object v7, v0

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    move-object v6, v7

    .line 174
    .local v6, "displayMetrics":Landroid/util/DisplayMetrics;
    move-object v7, v4

    move-object v8, v6

    iget v8, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v8, v7, Landroid/graphics/Point;->x:I

    .line 175
    move-object v7, v4

    move-object v8, v6

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v8, v7, Landroid/graphics/Point;->y:I

    .line 176
    move-object v7, v3

    invoke-virtual {v7}, Landroid/view/Display;->getRotation()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 183
    :pswitch_0
    move-object v7, v4

    iget v7, v7, Landroid/graphics/Point;->x:I

    move v1, v7

    .line 184
    .local v1, "screenWidth":I
    move-object v7, v4

    iget v7, v7, Landroid/graphics/Point;->y:I

    move v2, v7

    .line 188
    .local v2, "screenHeight":I
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "context":Landroid/content/Context;
    return-object v0

    .line 179
    .end local v1    # "screenWidth":I
    .end local v2    # "screenHeight":I
    .restart local v0    # "context":Landroid/content/Context;
    :pswitch_1
    move-object v7, v4

    iget v7, v7, Landroid/graphics/Point;->x:I

    move v2, v7

    .line 180
    .restart local v2    # "screenHeight":I
    move-object v7, v4

    iget v7, v7, Landroid/graphics/Point;->y:I

    move v1, v7

    .line 181
    .restart local v1    # "screenWidth":I
    goto :goto_0

    .line 176
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getVersionCode(Landroid/content/pm/PackageInfo;)I
    .locals 2

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    move-object v1, v0

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    move v0, v1

    .end local v0    # "packageInfo":Landroid/content/pm/PackageInfo;
    return v0
.end method

.method public static setCountryCode(Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "countryCode":Ljava/lang/String;
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 207
    const-string/jumbo v1, "AppCenter"

    const-string/jumbo v2, "App Center accepts only the two-letter ISO country code."

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .line 212
    :goto_0
    return-void

    .line 210
    :cond_0
    move-object v1, v0

    sput-object v1, Lcom/microsoft/appcenter/utils/DeviceInfoHelper;->mCountryCode:Ljava/lang/String;

    .line 211
    const-string/jumbo v1, "AppCenter"

    const-string/jumbo v2, "Set country code: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v0

    aput-object v6, v4, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/microsoft/appcenter/utils/AppCenterLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    goto :goto_0
.end method

.method public static declared-synchronized setWrapperSdk(Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;)V
    .locals 3

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "wrapperSdk":Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;
    const-class v2, Lcom/microsoft/appcenter/utils/DeviceInfoHelper;

    monitor-enter v2

    move-object v1, v0

    :try_start_0
    sput-object v1, Lcom/microsoft/appcenter/utils/DeviceInfoHelper;->sWrapperSdk:Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    monitor-exit v2

    return-void

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit v2

    .end local v0    # "wrapperSdk":Lcom/microsoft/appcenter/ingestion/models/WrapperSdk;
    throw v0
.end method
