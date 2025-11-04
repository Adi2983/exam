.class public Lcom/oseamiya/deviceinformation/DeviceInformation;
.super Ljava/lang/Object;
.source "DeviceInformation.java"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 22
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/DeviceInformation;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 23
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/oseamiya/deviceinformation/DeviceInformation;->context:Landroid/content/Context;

    .line 24
    return-void
.end method

.method private capitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .prologue
    .line 185
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/DeviceInformation;
    move-object v1, p1

    .local v1, "s":Ljava/lang/String;
    move-object v9, v1

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 186
    move-object v9, v1

    move-object v0, v9

    .line 200
    .end local v0    # "this":Lcom/oseamiya/deviceinformation/DeviceInformation;
    :goto_0
    return-object v0

    .line 188
    .restart local v0    # "this":Lcom/oseamiya/deviceinformation/DeviceInformation;
    :cond_0
    move-object v9, v1

    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    move-object v2, v9

    .line 189
    .local v2, "arr":[C
    const/4 v9, 0x1

    move v3, v9

    .line 190
    .local v3, "capitalizeNext":Z
    const-string/jumbo v9, ""

    move-object v4, v9

    .line 191
    .local v4, "phrase":Ljava/lang/String;
    move-object v9, v2

    move-object v5, v9

    move-object v9, v5

    array-length v9, v9

    move v6, v9

    const/4 v9, 0x0

    move v7, v9

    :goto_1
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_3

    move-object v9, v5

    move v10, v7

    aget-char v9, v9, v10

    move v8, v9

    .line 192
    .local v8, "c":C
    move v9, v3

    if-eqz v9, :cond_1

    move v9, v8

    invoke-static {v9}, Ljava/lang/Character;->isLetter(C)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 193
    const/4 v9, 0x0

    move v3, v9

    .line 191
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 195
    :cond_1
    move v9, v8

    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 196
    const/4 v9, 0x1

    move v3, v9

    .line 198
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    goto :goto_2

    .line 200
    .end local v8    # "c":C
    :cond_3
    move-object v9, v4

    move-object v0, v9

    goto :goto_0
.end method


# virtual methods
.method public getBoardName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/DeviceInformation;
    sget-object v1, Landroid/os/Build;->BOARD:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/DeviceInformation;
    return-object v0
.end method

.method public getBrandName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/DeviceInformation;
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/DeviceInformation;
    return-object v0
.end method

.method public getBuildFingerPrint()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/DeviceInformation;
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/DeviceInformation;
    return-object v0
.end method

.method public getBuildTime()J
    .locals 3

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/DeviceInformation;
    sget-wide v1, Landroid/os/Build;->TIME:J

    move-wide v0, v1

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/DeviceInformation;
    return-wide v0
.end method

.method public getBuildUser()Ljava/lang/String;
    .locals 2

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/DeviceInformation;
    sget-object v1, Landroid/os/Build;->USER:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/DeviceInformation;
    return-object v0
.end method

.method public getCodeName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/DeviceInformation;
    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/DeviceInformation;
    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/DeviceInformation;
    move-object v1, v0

    iget-object v1, v1, Lcom/oseamiya/deviceinformation/DeviceInformation;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/DeviceInformation;
    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/DeviceInformation;
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    move-object v1, v3

    .line 41
    .local v1, "manafacture":Ljava/lang/String;
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object v2, v3

    .line 42
    .local v2, "model":Ljava/lang/String;
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 43
    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lcom/oseamiya/deviceinformation/DeviceInformation;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 45
    .end local v0    # "this":Lcom/oseamiya/deviceinformation/DeviceInformation;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/oseamiya/deviceinformation/DeviceInformation;
    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/oseamiya/deviceinformation/DeviceInformation;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 5

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/DeviceInformation;
    move-object v3, v0

    iget-object v3, v3, Lcom/oseamiya/deviceinformation/DeviceInformation;->context:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    move-object v1, v3

    .line 86
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    move-object v3, v1

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    move v2, v3

    .line 87
    .local v2, "phoneType":I
    move v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 88
    const-string/jumbo v3, "CDMA"

    move-object v0, v3

    .line 94
    .end local v0    # "this":Lcom/oseamiya/deviceinformation/DeviceInformation;
    :goto_0
    return-object v0

    .line 89
    .restart local v0    # "this":Lcom/oseamiya/deviceinformation/DeviceInformation;
    :cond_0
    move v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 90
    const-string/jumbo v3, "GSM"

    move-object v0, v3

    goto :goto_0

    .line 91
    :cond_1
    move v3, v2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 92
    const-string/jumbo v3, "SIP"

    move-object v0, v3

    goto :goto_0

    .line 94
    :cond_2
    const-string/jumbo v3, ""

    move-object v0, v3

    goto :goto_0
.end method

.method public getDisplayVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/DeviceInformation;
    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/DeviceInformation;
    return-object v0
.end method

.method public getHardwareName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/DeviceInformation;
    sget-object v1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/DeviceInformation;
    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 2

    .prologue
    .line 158
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/DeviceInformation;
    sget-object v1, Landroid/os/Build;->HOST:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/DeviceInformation;
    return-object v0
.end method

.method public getImei(I)Ljava/lang/String;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission",
            "HardwareIds"
        }
    .end annotation

    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.READ_PHONE_STATE"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/DeviceInformation;
    move v1, p1

    .local v1, "slotNumber":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-ge v3, v4, :cond_0

    .line 127
    move-object v3, v0

    iget-object v3, v3, Lcom/oseamiya/deviceinformation/DeviceInformation;->context:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    move-object v2, v3

    .line 128
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    move-object v3, v2

    move v4, v1

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getDeviceId(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 130
    .end local v0    # "this":Lcom/oseamiya/deviceinformation/DeviceInformation;
    .end local v2    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/oseamiya/deviceinformation/DeviceInformation;
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/oseamiya/deviceinformation/DeviceInformation;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public getManafacturerName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/DeviceInformation;
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/DeviceInformation;
    return-object v0
.end method

.method public getModelName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/DeviceInformation;
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/DeviceInformation;
    return-object v0
.end method

.method public getNumberOfSimSlot()I
    .locals 4

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/DeviceInformation;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-lt v2, v3, :cond_0

    .line 106
    move-object v2, v0

    iget-object v2, v2, Lcom/oseamiya/deviceinformation/DeviceInformation;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    move-object v1, v2

    .line 107
    .local v1, "subscriptionManager":Landroid/telephony/SubscriptionManager;
    move-object v2, v1

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCountMax()I

    move-result v2

    move v0, v2

    .line 111
    .end local v0    # "this":Lcom/oseamiya/deviceinformation/DeviceInformation;
    :goto_0
    return v0

    .end local v1    # "subscriptionManager":Landroid/telephony/SubscriptionManager;
    .restart local v0    # "this":Lcom/oseamiya/deviceinformation/DeviceInformation;
    :cond_0
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/DeviceInformation;
    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/DeviceInformation;
    return-object v0
.end method

.method public getRadioVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/DeviceInformation;
    invoke-static {}, Landroid/os/Build;->getRadioVersion()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/DeviceInformation;
    return-object v0
.end method

.method public getSerial()Ljava/lang/String;
    .locals 2

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/DeviceInformation;
    sget-object v1, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/DeviceInformation;
    return-object v0
.end method

.method public isRooted()Z
    .locals 11

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/DeviceInformation;
    const/16 v6, 0x8

    new-array v6, v6, [Ljava/lang/String;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    const-string/jumbo v9, "/sbin"

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    const-string/jumbo v9, "/system/bin"

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x2

    const-string/jumbo v9, "/system/xbin/"

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x3

    const-string/jumbo v9, "/system/sd/xbin"

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x4

    const-string/jumbo v9, "/system/bin/failsafe/"

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x5

    const-string/jumbo v9, "/data/local/xbin/"

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x6

    const-string/jumbo v9, "/data/local/bin/"

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x7

    const-string/jumbo v9, "/data/local/"

    aput-object v9, v7, v8

    move-object v1, v6

    .line 175
    .local v1, "locations":[Ljava/lang/String;
    move-object v6, v1

    move-object v2, v6

    move-object v6, v2

    array-length v6, v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_1

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 176
    .local v5, "location":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "su"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 177
    const/4 v6, 0x1

    move v0, v6

    .line 180
    .end local v0    # "this":Lcom/oseamiya/deviceinformation/DeviceInformation;
    .end local v5    # "location":Ljava/lang/String;
    :goto_1
    return v0

    .line 175
    .restart local v0    # "this":Lcom/oseamiya/deviceinformation/DeviceInformation;
    .restart local v5    # "location":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 180
    .end local v5    # "location":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    move v0, v6

    goto :goto_1
.end method

.method public isUsbHostSupported()Z
    .locals 3

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/DeviceInformation;
    move-object v1, v0

    iget-object v1, v1, Lcom/oseamiya/deviceinformation/DeviceInformation;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "android.hardware.usb.host"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/DeviceInformation;
    return v0
.end method
