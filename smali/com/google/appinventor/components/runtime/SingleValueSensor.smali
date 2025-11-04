.class public abstract Lcom/google/appinventor/components/runtime/SingleValueSensor;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;
.implements Lcom/google/appinventor/components/runtime/OnPauseListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/SensorComponent;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Landroid/hardware/Sensor;

.field protected enabled:Z

.field protected refreshTime:I

.field protected final sensorManager:Landroid/hardware/SensorManager;

.field protected sensorType:I

.field protected value:F


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;I)V
    .locals 7

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 36
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/google/appinventor/components/runtime/SingleValueSensor;->sensorType:I

    .line 37
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/SingleValueSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 38
    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/SingleValueSensor;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/google/appinventor/components/runtime/Form;->registerForOnPause(Lcom/google/appinventor/components/runtime/OnPauseListener;)V

    .line 40
    move-object v3, v0

    const/16 v4, 0x3e8

    iput v4, v3, Lcom/google/appinventor/components/runtime/SingleValueSensor;->refreshTime:I

    .line 41
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/appinventor/components/runtime/SingleValueSensor;->enabled:Z

    .line 42
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "sensor"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorManager;

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/SingleValueSensor;->sensorManager:Landroid/hardware/SensorManager;

    .line 43
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/SingleValueSensor;->sensorManager:Landroid/hardware/SensorManager;

    move v5, v2

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    iput-object v4, v3, Lcom/google/appinventor/components/runtime/SingleValueSensor;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Landroid/hardware/Sensor;

    .line 44
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->startListening()V

    .line 45
    return-void
.end method


# virtual methods
.method public Available()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specifies whether or not the device has an ambient air pressure sensor."
    .end annotation

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->isAvailable()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public Enabled(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 96
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->setEnabled(Z)V

    .line 97
    return-void
.end method

.method public Enabled()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If enabled, then device will listen for changes."
    .end annotation

    .prologue
    .line 81
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/SingleValueSensor;->enabled:Z

    move v0, v1

    return v0
.end method

.method public RefreshTime()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "The requested minimum time in milliseconds between changes in air pressure being reported. Android is not guaranteed to honor the request. Setting this property has no effect on pre-Gingerbread devices."
    .end annotation

    .prologue
    .line 109
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/SingleValueSensor;->refreshTime:I

    move v0, v1

    return v0
.end method

.method public RefreshTime(I)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1000"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 122
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lcom/google/appinventor/components/runtime/SingleValueSensor;->refreshTime:I

    .line 123
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/SingleValueSensor;->enabled:Z

    if-eqz v2, :cond_0

    .line 124
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->stopListening()V

    .line 125
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->startListening()V

    .line 127
    :cond_0
    return-void
.end method

.method protected getValue()F
    .locals 2

    .prologue
    .line 181
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lcom/google/appinventor/components/runtime/SingleValueSensor;->value:F

    move v0, v1

    return v0
.end method

.method protected isAvailable()Z
    .locals 3

    .prologue
    .line 141
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/SingleValueSensor;->sensorManager:Landroid/hardware/SensorManager;

    move-object v2, v0

    iget v2, v2, Lcom/google/appinventor/components/runtime/SingleValueSensor;->sensorType:I

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public onDelete()V
    .locals 2

    .prologue
    .line 175
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/SingleValueSensor;->enabled:Z

    if-eqz v1, :cond_0

    .line 176
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->stopListening()V

    .line 178
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 161
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/SingleValueSensor;->enabled:Z

    if-eqz v1, :cond_0

    .line 162
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->stopListening()V

    .line 164
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 168
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/SingleValueSensor;->enabled:Z

    if-eqz v1, :cond_0

    .line 169
    move-object v1, v0

    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->startListening()V

    .line 171
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    .prologue
    .line 131
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/SingleValueSensor;->enabled:Z

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-object v2, v2, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    move-object v3, v0

    iget v3, v3, Lcom/google/appinventor/components/runtime/SingleValueSensor;->sensorType:I

    if-ne v2, v3, :cond_0

    .line 132
    move-object v2, v1

    iget-object v2, v2, Landroid/hardware/SensorEvent;->values:[F

    move-object v1, v2

    .line 133
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    aget v3, v3, v4

    iput v3, v2, Lcom/google/appinventor/components/runtime/SingleValueSensor;->value:F

    .line 134
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lcom/google/appinventor/components/runtime/SingleValueSensor;->value:F

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->onValueChanged(F)V

    .line 136
    :cond_0
    return-void
.end method

.method protected abstract onValueChanged(F)V
.end method

.method protected setEnabled(Z)V
    .locals 4

    .prologue
    .line 145
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/appinventor/components/runtime/SingleValueSensor;->enabled:Z

    move v3, v1

    if-ne v2, v3, :cond_0

    .line 146
    .line 154
    :goto_0
    return-void

    .line 148
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/SingleValueSensor;->enabled:Z

    .line 149
    move v2, v1

    if-eqz v2, :cond_1

    .line 150
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->startListening()V

    goto :goto_0

    .line 152
    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/appinventor/components/runtime/SingleValueSensor;->stopListening()V

    .line 154
    goto :goto_0
.end method

.method protected startListening()V
    .locals 7

    .prologue
    .line 53
    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lcom/google/appinventor/components/runtime/SingleValueSensor;->refreshTime:I

    const/16 v3, 0x3e8

    mul-int/lit16 v2, v2, 0x3e8

    move v1, v2

    .line 54
    move-object v2, v0

    iget-object v2, v2, Lcom/google/appinventor/components/runtime/SingleValueSensor;->sensorManager:Landroid/hardware/SensorManager;

    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/SingleValueSensor;->Co1rSUoyBoOJ9n0NOgrpxvTYmRPklnETeodUBiQlSBK151C8PCv1Q1Pl4SUa1qxB:Landroid/hardware/Sensor;

    move v5, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v2

    .line 55
    return-void
.end method

.method protected stopListening()V
    .locals 3

    .prologue
    .line 58
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/SingleValueSensor;->sensorManager:Landroid/hardware/SensorManager;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 59
    return-void
.end method
