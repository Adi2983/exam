.class public Lcom/oseamiya/deviceinformation/BatteryInformation;
.super Ljava/lang/Object;
.source "BatteryInformation.java"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 13
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/BatteryInformation;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 14
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/oseamiya/deviceinformation/BatteryInformation;->context:Landroid/content/Context;

    .line 15
    return-void
.end method

.method private getBatteryStatus()Landroid/content/Intent;
    .locals 6

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/BatteryInformation;
    new-instance v2, Landroid/content/IntentFilter;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 19
    .local v1, "filter":Landroid/content/IntentFilter;
    move-object v2, v0

    iget-object v2, v2, Lcom/oseamiya/deviceinformation/BatteryInformation;->context:Landroid/content/Context;

    const/4 v3, 0x0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/BatteryInformation;
    return-object v0
.end method


# virtual methods
.method public getBatteryCapacity()D
    .locals 12
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/BatteryInformation;
    const-wide/16 v6, 0x0

    move-wide v2, v6

    .line 153
    .local v2, "batteryCapacity":D
    const-string/jumbo v6, "com.android.internal.os.PowerProfile"

    move-object v4, v6

    .line 156
    .local v4, "POWER_PROFILE_CLASS":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v6, "com.android.internal.os.PowerProfile"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    .line 157
    invoke-virtual {v6, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Lcom/oseamiya/deviceinformation/BatteryInformation;->context:Landroid/content/Context;

    aput-object v10, v8, v9

    .line 158
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v1, v6

    .line 159
    .local v1, "powerProfile":Ljava/lang/Object;
    const-string/jumbo v6, "com.android.internal.os.PowerProfile"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string/jumbo v7, "getBatteryCapacity"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    .line 160
    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    move-object v7, v1

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    .line 161
    invoke-virtual {v6, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    .line 159
    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    move-wide v2, v6

    .line 164
    .line 165
    .end local v1    # "powerProfile":Ljava/lang/Object;
    :goto_0
    move-wide v6, v2

    move-wide v0, v6

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/BatteryInformation;
    return-wide v0

    .line 162
    .restart local v0    # "this":Lcom/oseamiya/deviceinformation/BatteryInformation;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 163
    .local v5, "e":Ljava/lang/Exception;
    move-object v6, v5

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getBatteryTemperature()F
    .locals 6

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/BatteryInformation;
    const/4 v3, 0x0

    move v1, v3

    .line 95
    .local v1, "temperature":F
    move-object v3, v0

    invoke-direct {v3}, Lcom/oseamiya/deviceinformation/BatteryInformation;->getBatteryStatus()Landroid/content/Intent;

    move-result-object v3

    move-object v2, v3

    .line 96
    .local v2, "intent":Landroid/content/Intent;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 97
    move-object v3, v2

    const-string/jumbo v4, "temperature"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/16 v4, 0xa

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    move v1, v3

    .line 99
    :cond_0
    move v3, v1

    move v0, v3

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/BatteryInformation;
    return v0
.end method

.method public getBatteryVoltage()I
    .locals 6

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/BatteryInformation;
    const/4 v3, 0x0

    move v1, v3

    .line 109
    .local v1, "voltage":I
    move-object v3, v0

    invoke-direct {v3}, Lcom/oseamiya/deviceinformation/BatteryInformation;->getBatteryStatus()Landroid/content/Intent;

    move-result-object v3

    move-object v2, v3

    .line 110
    .local v2, "intent":Landroid/content/Intent;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 111
    move-object v3, v2

    const-string/jumbo v4, "voltage"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    move v1, v3

    .line 113
    :cond_0
    move v3, v1

    move v0, v3

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/BatteryInformation;
    return v0
.end method

.method public getChargingSource()Ljava/lang/String;
    .locals 6

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/BatteryInformation;
    move-object v3, v0

    invoke-direct {v3}, Lcom/oseamiya/deviceinformation/BatteryInformation;->getBatteryStatus()Landroid/content/Intent;

    move-result-object v3

    move-object v1, v3

    .line 131
    .local v1, "intent":Landroid/content/Intent;
    move-object v3, v1

    const-string/jumbo v4, "plugged"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    move v2, v3

    .line 133
    .local v2, "chargingSource":I
    move v3, v2

    packed-switch v3, :pswitch_data_0

    .line 141
    :pswitch_0
    const-string/jumbo v3, "UNKNOWN"

    move-object v0, v3

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/BatteryInformation;
    :goto_0
    return-object v0

    .line 135
    .restart local v0    # "this":Lcom/oseamiya/deviceinformation/BatteryInformation;
    :pswitch_1
    const-string/jumbo v3, "AC"

    move-object v0, v3

    goto :goto_0

    .line 137
    :pswitch_2
    const-string/jumbo v3, "WIRELESS"

    move-object v0, v3

    goto :goto_0

    .line 139
    :pswitch_3
    const-string/jumbo v3, "USB"

    move-object v0, v3

    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final getHealth()I
    .locals 6

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/BatteryInformation;
    move-object v3, v0

    invoke-direct {v3}, Lcom/oseamiya/deviceinformation/BatteryInformation;->getBatteryStatus()Landroid/content/Intent;

    move-result-object v3

    move-object v1, v3

    .line 72
    .local v1, "intent":Landroid/content/Intent;
    const/4 v3, 0x0

    move v2, v3

    .line 73
    .local v2, "health":I
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 74
    move-object v3, v1

    const-string/jumbo v4, "health"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    move v2, v3

    .line 76
    :cond_0
    move v3, v2

    move v0, v3

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/BatteryInformation;
    return v0
.end method

.method public final getPercentage()I
    .locals 8

    .prologue
    .line 27
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/BatteryInformation;
    move-object v5, v0

    invoke-direct {v5}, Lcom/oseamiya/deviceinformation/BatteryInformation;->getBatteryStatus()Landroid/content/Intent;

    move-result-object v5

    move-object v1, v5

    .line 28
    .local v1, "status":Landroid/content/Intent;
    const/4 v5, 0x0

    move v2, v5

    .line 29
    .local v2, "batteryPercentage":I
    move-object v5, v1

    if-eqz v5, :cond_0

    .line 30
    move-object v5, v1

    const-string/jumbo v6, "level"

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    move v3, v5

    .line 31
    .local v3, "level":I
    move-object v5, v1

    const-string/jumbo v6, "scale"

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    move v4, v5

    .line 32
    .local v4, "scale":I
    move v5, v3

    int-to-float v5, v5

    move v6, v4

    int-to-float v6, v6

    div-float/2addr v5, v6

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    move v2, v5

    .line 34
    .end local v3    # "level":I
    .end local v4    # "scale":I
    :cond_0
    move v5, v2

    move v0, v5

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/BatteryInformation;
    return v0
.end method

.method public getTechnology()Ljava/lang/String;
    .locals 4

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/BatteryInformation;
    move-object v2, v0

    invoke-direct {v2}, Lcom/oseamiya/deviceinformation/BatteryInformation;->getBatteryStatus()Landroid/content/Intent;

    move-result-object v2

    move-object v1, v2

    .line 86
    .local v1, "intent":Landroid/content/Intent;
    move-object v2, v1

    const-string/jumbo v3, "technology"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/BatteryInformation;
    return-object v0
.end method

.method public isBatteryAvailable()Z
    .locals 3

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/BatteryInformation;
    move-object v1, v0

    invoke-direct {v1}, Lcom/oseamiya/deviceinformation/BatteryInformation;->getBatteryStatus()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-direct {v1}, Lcom/oseamiya/deviceinformation/BatteryInformation;->getBatteryStatus()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "present"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/BatteryInformation;
    return v0

    .restart local v0    # "this":Lcom/oseamiya/deviceinformation/BatteryInformation;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCharging()Z
    .locals 7

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/BatteryInformation;
    const/4 v4, 0x0

    move v1, v4

    .line 47
    .local v1, "isCharging":Z
    move-object v4, v0

    invoke-direct {v4}, Lcom/oseamiya/deviceinformation/BatteryInformation;->getBatteryStatus()Landroid/content/Intent;

    move-result-object v4

    move-object v2, v4

    .line 48
    .local v2, "intent":Landroid/content/Intent;
    move-object v4, v2

    const-string/jumbo v5, "plugged"

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    move v3, v4

    .line 49
    .local v3, "plugged":I
    move v4, v3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    move v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    :cond_0
    const/4 v4, 0x1

    :goto_0
    move v1, v4

    .line 50
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-le v4, v5, :cond_2

    .line 51
    move v4, v1

    if-nez v4, :cond_1

    move v4, v3

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    :cond_1
    const/4 v4, 0x1

    :goto_1
    move v1, v4

    .line 53
    :cond_2
    move v4, v1

    move v0, v4

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/BatteryInformation;
    return v0

    .line 49
    .restart local v0    # "this":Lcom/oseamiya/deviceinformation/BatteryInformation;
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 51
    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method
