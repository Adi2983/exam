.class public Lcom/oseamiya/deviceinformation/SensorInformation;
.super Ljava/lang/Object;
.source "SensorInformation.java"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/SensorInformation;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 13
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/oseamiya/deviceinformation/SensorInformation;->context:Landroid/content/Context;

    .line 14
    return-void
.end method


# virtual methods
.method public getSensorList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Sensor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/SensorInformation;
    move-object v2, v0

    iget-object v2, v2, Lcom/oseamiya/deviceinformation/SensorInformation;->context:Landroid/content/Context;

    const-string/jumbo v3, "sensor"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    move-object v1, v2

    .line 24
    .local v1, "sensorManager":Landroid/hardware/SensorManager;
    move-object v2, v1

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/SensorInformation;
    return-object v0
.end method

.method public getSensorMaximumRange(Landroid/hardware/Sensor;)F
    .locals 3

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/SensorInformation;
    move-object v1, p1

    .local v1, "sensor":Landroid/hardware/Sensor;
    move-object v2, v1

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/SensorInformation;
    return v0
.end method

.method public getSensorName(Landroid/hardware/Sensor;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/SensorInformation;
    move-object v1, p1

    .local v1, "sensor":Landroid/hardware/Sensor;
    move-object v3, v1

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    move v2, v3

    .line 88
    .local v2, "sensorType":I
    move v3, v2

    packed-switch v3, :pswitch_data_0

    .line 124
    :pswitch_0
    const-string/jumbo v3, "Unknown"

    move-object v0, v3

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/SensorInformation;
    :goto_0
    return-object v0

    .line 90
    .restart local v0    # "this":Lcom/oseamiya/deviceinformation/SensorInformation;
    :pswitch_1
    const-string/jumbo v3, "Accelerometer"

    move-object v0, v3

    goto :goto_0

    .line 92
    :pswitch_2
    const-string/jumbo v3, "Ambient Temperature"

    move-object v0, v3

    goto :goto_0

    .line 94
    :pswitch_3
    const-string/jumbo v3, "Game Rotation Vector"

    move-object v0, v3

    goto :goto_0

    .line 96
    :pswitch_4
    const-string/jumbo v3, "Gravity"

    move-object v0, v3

    goto :goto_0

    .line 98
    :pswitch_5
    const-string/jumbo v3, "Geomagnetic Rotation Vector"

    move-object v0, v3

    goto :goto_0

    .line 100
    :pswitch_6
    const-string/jumbo v3, "Gyroscope"

    move-object v0, v3

    goto :goto_0

    .line 102
    :pswitch_7
    const-string/jumbo v3, "Heart Beat"

    move-object v0, v3

    goto :goto_0

    .line 104
    :pswitch_8
    const-string/jumbo v3, "Heart Rate"

    move-object v0, v3

    goto :goto_0

    .line 106
    :pswitch_9
    const-string/jumbo v3, "Light"

    move-object v0, v3

    goto :goto_0

    .line 108
    :pswitch_a
    const-string/jumbo v3, "Linear Acceleration"

    move-object v0, v3

    goto :goto_0

    .line 110
    :pswitch_b
    const-string/jumbo v3, "Magnetic Field"

    move-object v0, v3

    goto :goto_0

    .line 112
    :pswitch_c
    const-string/jumbo v3, "Pressure"

    move-object v0, v3

    goto :goto_0

    .line 114
    :pswitch_d
    const-string/jumbo v3, "Humidity"

    move-object v0, v3

    goto :goto_0

    .line 116
    :pswitch_e
    const-string/jumbo v3, "Rotation Vector"

    move-object v0, v3

    goto :goto_0

    .line 118
    :pswitch_f
    const-string/jumbo v3, "Step Counter"

    move-object v0, v3

    goto :goto_0

    .line 120
    :pswitch_10
    const-string/jumbo v3, "Significant Motion"

    move-object v0, v3

    goto :goto_0

    .line 122
    :pswitch_11
    const-string/jumbo v3, "Step Detector"

    move-object v0, v3

    goto :goto_0

    .line 88
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_b
        :pswitch_0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_a
        :pswitch_e
        :pswitch_d
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_f
        :pswitch_5
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public getSensorPower(Landroid/hardware/Sensor;)F
    .locals 3

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/SensorInformation;
    move-object v1, p1

    .local v1, "sensor":Landroid/hardware/Sensor;
    move-object v2, v1

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getPower()F

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/SensorInformation;
    return v0
.end method

.method public getSensorResolution(Landroid/hardware/Sensor;)F
    .locals 3

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/SensorInformation;
    move-object v1, p1

    .local v1, "sensor":Landroid/hardware/Sensor;
    move-object v2, v1

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getResolution()F

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/SensorInformation;
    return v0
.end method

.method public getSensorVendor(Landroid/hardware/Sensor;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/SensorInformation;
    move-object v1, p1

    .local v1, "sensor":Landroid/hardware/Sensor;
    move-object v2, v1

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getVendor()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/SensorInformation;
    return-object v0
.end method

.method public getSensorVersion(Landroid/hardware/Sensor;)I
    .locals 3

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/SensorInformation;
    move-object v1, p1

    .local v1, "sensor":Landroid/hardware/Sensor;
    move-object v2, v1

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getVersion()I

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/SensorInformation;
    return v0
.end method

.method public getTotalNumberOfSensors()I
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/SensorInformation;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/oseamiya/deviceinformation/SensorInformation;->getSensorList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/SensorInformation;
    return v0
.end method
