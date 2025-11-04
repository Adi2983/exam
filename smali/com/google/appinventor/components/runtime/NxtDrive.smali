.class public Lcom/google/appinventor/components/runtime/NxtDrive;
.super Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->NXT:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component that provides a high-level interface to a LEGO MINDSTORMS NXT robot, with functions that can move and turn the robot."
    iconName = "images/legoMindstormsNxt.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private FWhlgAfItZPAj52Sbrmx0NIMbFKmURdRAyv8T1hdxDpczs3OJmULpy7aDRNSO45K:Ljava/lang/String;

.field private I5ykmeJTgzyaiiAtvMLW8fRCQIZ9OEp56mK3swW1OQk12Icvz43SQQl0b809z20Q:Z

.field private KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/appinventor/components/common/NxtMotorPort;",
            ">;"
        }
    .end annotation
.end field

.field private hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:D


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 5

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "NxtDrive"

    invoke-direct {v2, v3, v4}, Lcom/google/appinventor/components/runtime/LegoMindstormsNxtBase;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;Ljava/lang/String;)V

    .line 55
    move-object v2, v0

    const-string/jumbo v3, "CB"

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/NxtDrive;->DriveMotors(Ljava/lang/String;)V

    .line 56
    move-object v2, v0

    const v3, 0x408a3d71    # 4.32f

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/NxtDrive;->WheelDiameter(F)V

    .line 57
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/appinventor/components/runtime/NxtDrive;->StopBeforeDisconnect(Z)V

    .line 58
    return-void
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;III)V
    .locals 16

    .prologue
    .line 210
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v6, v7}, Lcom/google/appinventor/components/runtime/NxtDrive;->checkBluetooth(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 211
    .line 218
    :goto_0
    return-void

    .line 214
    :cond_0
    move-object v6, v1

    move-object v7, v2

    move-object v8, v1

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/NxtDrive;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:Ljava/util/List;

    move v9, v4

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/appinventor/components/common/NxtMotorPort;

    move v9, v3

    sget-object v10, Lcom/google/appinventor/components/common/NxtMotorMode;->On:Lcom/google/appinventor/components/common/NxtMotorMode;

    sget-object v11, Lcom/google/appinventor/components/common/NxtRegulationMode;->Speed:Lcom/google/appinventor/components/common/NxtRegulationMode;

    const/4 v12, 0x0

    sget-object v13, Lcom/google/appinventor/components/common/NxtRunState;->Running:Lcom/google/appinventor/components/common/NxtRunState;

    const-wide/16 v14, 0x0

    invoke-virtual/range {v6 .. v15}, Lcom/google/appinventor/components/runtime/NxtDrive;->setOutputState(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtMotorPort;ILcom/google/appinventor/components/common/NxtMotorMode;Lcom/google/appinventor/components/common/NxtRegulationMode;ILcom/google/appinventor/components/common/NxtRunState;J)V

    .line 216
    move-object v6, v1

    move-object v7, v2

    move-object v8, v1

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/NxtDrive;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:Ljava/util/List;

    move v9, v5

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/appinventor/components/common/NxtMotorPort;

    move v9, v3

    neg-int v9, v9

    sget-object v10, Lcom/google/appinventor/components/common/NxtMotorMode;->On:Lcom/google/appinventor/components/common/NxtMotorMode;

    sget-object v11, Lcom/google/appinventor/components/common/NxtRegulationMode;->Speed:Lcom/google/appinventor/components/common/NxtRegulationMode;

    const/4 v12, 0x0

    sget-object v13, Lcom/google/appinventor/components/common/NxtRunState;->Running:Lcom/google/appinventor/components/common/NxtRunState;

    const-wide/16 v14, 0x0

    invoke-virtual/range {v6 .. v15}, Lcom/google/appinventor/components/runtime/NxtDrive;->setOutputState(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtMotorPort;ILcom/google/appinventor/components/common/NxtMotorMode;Lcom/google/appinventor/components/common/NxtRegulationMode;ILcom/google/appinventor/components/common/NxtRunState;J)V

    .line 218
    goto :goto_0
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;IJ)V
    .locals 19

    .prologue
    .line 173
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v8, v9}, Lcom/google/appinventor/components/runtime/NxtDrive;->checkBluetooth(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 174
    .line 181
    :goto_0
    return-void

    .line 177
    :cond_0
    move-object v8, v1

    iget-object v8, v8, Lcom/google/appinventor/components/runtime/NxtDrive;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v6, v8

    :goto_1
    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/appinventor/components/common/NxtMotorPort;

    move-object v7, v8

    .line 178
    move-object v8, v1

    move-object v9, v2

    move-object v10, v7

    move v11, v3

    sget-object v12, Lcom/google/appinventor/components/common/NxtMotorMode;->On:Lcom/google/appinventor/components/common/NxtMotorMode;

    sget-object v13, Lcom/google/appinventor/components/common/NxtRegulationMode;->Speed:Lcom/google/appinventor/components/common/NxtRegulationMode;

    const/4 v14, 0x0

    sget-object v15, Lcom/google/appinventor/components/common/NxtRunState;->Running:Lcom/google/appinventor/components/common/NxtRunState;

    move-wide/from16 v16, v4

    invoke-virtual/range {v8 .. v17}, Lcom/google/appinventor/components/runtime/NxtDrive;->setOutputState(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtMotorPort;ILcom/google/appinventor/components/common/NxtMotorMode;Lcom/google/appinventor/components/common/NxtRegulationMode;ILcom/google/appinventor/components/common/NxtRunState;J)V

    .line 180
    goto :goto_1

    .line 181
    :cond_1
    goto :goto_0
.end method


# virtual methods
.method public DriveMotors()Ljava/lang/String;
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The motor ports that are used for driving: the left wheel\'s motor port followed by the right wheel\'s motor port."
        userVisible = false
    .end annotation

    .prologue
    .line 77
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lcom/google/appinventor/components/runtime/NxtDrive;->FWhlgAfItZPAj52Sbrmx0NIMbFKmURdRAyv8T1hdxDpczs3OJmULpy7aDRNSO45K:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public DriveMotors(Ljava/lang/String;)V
    .locals 14
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "CB"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 87
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/NxtDrive;->FWhlgAfItZPAj52Sbrmx0NIMbFKmURdRAyv8T1hdxDpczs3OJmULpy7aDRNSO45K:Ljava/lang/String;

    .line 88
    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Lcom/google/appinventor/components/runtime/NxtDrive;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:Ljava/util/List;

    .line 89
    const/4 v5, 0x0

    move v2, v5

    :goto_0
    move v5, v2

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 90
    move-object v5, v1

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    .line 92
    move-object v3, v6

    invoke-static {v5}, Lcom/google/appinventor/components/common/NxtMotorPort;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/NxtMotorPort;

    move-result-object v5

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    .line 93
    move-object v4, v6

    if-nez v5, :cond_0

    .line 94
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/NxtDrive;->form:Lcom/google/appinventor/components/runtime/Form;

    move-object v6, v0

    const-string/jumbo v7, "DriveMotors"

    const/16 v8, 0x197

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v3

    aput-object v12, v10, v11

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 96
    .line 89
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/google/appinventor/components/runtime/NxtDrive;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:Ljava/util/List;

    move-object v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_1

    .line 100
    :cond_1
    return-void
.end method

.method public MoveBackward(ID)V
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Move the robot backward the given distance, with the specified percentage of maximum power, by powering both drive motors backward."
    .end annotation

    .prologue
    .line 167
    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v6, v2

    const-wide v8, 0x4076800000000000L    # 360.0

    mul-double/2addr v6, v8

    move-object v8, v0

    iget-wide v8, v8, Lcom/google/appinventor/components/runtime/NxtDrive;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:D

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    div-double/2addr v6, v8

    double-to-long v6, v6

    move-wide v4, v6

    .line 169
    move-object v6, v0

    const-string/jumbo v7, "MoveBackward"

    move v8, v1

    neg-int v8, v8

    move-wide v9, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/NxtDrive;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;IJ)V

    .line 170
    return-void
.end method

.method public MoveBackwardIndefinitely(I)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Move the robot backward indefinitely, with the specified percentage of maximum power, by powering both drive motors backward."
    .end annotation

    .prologue
    .line 153
    move-object v1, p0

    move v2, p1

    move-object v3, v1

    const-string/jumbo v4, "MoveBackwardIndefinitely"

    move v5, v2

    neg-int v5, v5

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDrive;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;IJ)V

    .line 154
    return-void
.end method

.method public MoveForward(ID)V
    .locals 12
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Move the robot forward the given distance, with the specified percentage of maximum power, by powering both drive motors forward."
    .end annotation

    .prologue
    .line 159
    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v6, v2

    const-wide v8, 0x4076800000000000L    # 360.0

    mul-double/2addr v6, v8

    move-object v8, v0

    iget-wide v8, v8, Lcom/google/appinventor/components/runtime/NxtDrive;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:D

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    div-double/2addr v6, v8

    double-to-long v6, v6

    move-wide v4, v6

    .line 161
    move-object v6, v0

    const-string/jumbo v7, "MoveForward"

    move v8, v1

    move-wide v9, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/google/appinventor/components/runtime/NxtDrive;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;IJ)V

    .line 162
    return-void
.end method

.method public MoveForwardIndefinitely(I)V
    .locals 8
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Move the robot forward indefinitely, with the specified percentage of maximum power, by powering both drive motors forward."
    .end annotation

    .prologue
    .line 147
    move-object v1, p0

    move v2, p1

    move-object v3, v1

    const-string/jumbo v4, "MoveForwardIndefinitely"

    move v5, v2

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDrive;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;IJ)V

    .line 148
    return-void
.end method

.method public Stop()V
    .locals 14
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Stop the drive motors of the robot."
    .end annotation

    .prologue
    .line 227
    move-object v0, p0

    const-string/jumbo v4, "Stop"

    move-object v1, v4

    .line 228
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/google/appinventor/components/runtime/NxtDrive;->checkBluetooth(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 229
    .line 236
    :goto_0
    return-void

    .line 232
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/NxtDrive;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/appinventor/components/common/NxtMotorPort;

    move-object v3, v4

    .line 233
    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    const/4 v7, 0x0

    sget-object v8, Lcom/google/appinventor/components/common/NxtMotorMode;->Brake:Lcom/google/appinventor/components/common/NxtMotorMode;

    sget-object v9, Lcom/google/appinventor/components/common/NxtRegulationMode;->Disabled:Lcom/google/appinventor/components/common/NxtRegulationMode;

    const/4 v10, 0x0

    sget-object v11, Lcom/google/appinventor/components/common/NxtRunState;->Disabled:Lcom/google/appinventor/components/common/NxtRunState;

    const-wide/16 v12, 0x0

    invoke-virtual/range {v4 .. v13}, Lcom/google/appinventor/components/runtime/NxtDrive;->setOutputState(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtMotorPort;ILcom/google/appinventor/components/common/NxtMotorMode;Lcom/google/appinventor/components/common/NxtRegulationMode;ILcom/google/appinventor/components/common/NxtRunState;J)V

    .line 235
    goto :goto_1

    .line 236
    :cond_1
    goto :goto_0
.end method

.method public StopBeforeDisconnect(Z)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 141
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/google/appinventor/components/runtime/NxtDrive;->I5ykmeJTgzyaiiAtvMLW8fRCQIZ9OEp56mK3swW1OQk12Icvz43SQQl0b809z20Q:Z

    .line 142
    return-void
.end method

.method public StopBeforeDisconnect()Z
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Whether to stop the drive motors before disconnecting."
    .end annotation

    .prologue
    .line 129
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/appinventor/components/runtime/NxtDrive;->I5ykmeJTgzyaiiAtvMLW8fRCQIZ9OEp56mK3swW1OQk12Icvz43SQQl0b809z20Q:Z

    move v0, v1

    return v0
.end method

.method public TurnClockwiseIndefinitely(I)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Turn the robot clockwise indefinitely, with the specified percentage of maximum power, by powering the left drive motor forward and the right drive motor backward."
    .end annotation

    .prologue
    .line 187
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/NxtDrive;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v8, v3

    move v3, v8

    move v4, v8

    .line 188
    move v2, v4

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 190
    add-int/lit8 v2, v2, -0x1

    .line 191
    move-object v3, v0

    const-string/jumbo v4, "TurnClockwiseIndefinitely"

    move v5, v1

    const/4 v6, 0x0

    move v7, v2

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDrive;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;III)V

    .line 193
    :cond_0
    return-void
.end method

.method public TurnCounterClockwiseIndefinitely(I)V
    .locals 9
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Turn the robot counterclockwise indefinitely, with the specified percentage of maximum power, by powering the right drive motor forward and the left drive motor backward."
    .end annotation

    .prologue
    .line 199
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/google/appinventor/components/runtime/NxtDrive;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    move v8, v3

    move v3, v8

    move v4, v8

    .line 200
    move v2, v4

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 201
    add-int/lit8 v2, v2, -0x1

    .line 203
    move-object v3, v0

    const-string/jumbo v4, "TurnCounterClockwiseIndefinitely"

    move v5, v1

    move v6, v2

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/appinventor/components/runtime/NxtDrive;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;III)V

    .line 206
    :cond_0
    return-void
.end method

.method public WheelDiameter()F
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The diameter of the wheels used for driving."
        userVisible = false
    .end annotation

    .prologue
    .line 108
    move-object v1, p0

    move-object v2, v1

    iget-wide v2, v2, Lcom/google/appinventor/components/runtime/NxtDrive;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:D

    double-to-float v2, v2

    move v1, v2

    return v1
.end method

.method public WheelDiameter(F)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "4.32"
        editorType = "float"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 120
    move-object v1, p0

    move v2, p1

    move-object v3, v1

    move v4, v2

    float-to-double v4, v4

    iput-wide v4, v3, Lcom/google/appinventor/components/runtime/NxtDrive;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:D

    .line 121
    return-void
.end method

.method public beforeDisconnect(Lcom/google/appinventor/components/runtime/BluetoothConnectionBase;)V
    .locals 14

    .prologue
    .line 62
    move-object v1, p0

    move-object v2, p1

    move-object v4, v1

    iget-boolean v4, v4, Lcom/google/appinventor/components/runtime/NxtDrive;->I5ykmeJTgzyaiiAtvMLW8fRCQIZ9OEp56mK3swW1OQk12Icvz43SQQl0b809z20Q:Z

    if-eqz v4, :cond_0

    .line 63
    move-object v4, v1

    iget-object v4, v4, Lcom/google/appinventor/components/runtime/NxtDrive;->KXDzEMeLg0aMKCNRnRJuQGoMaVrKUgtBW3gGmn2kxU5q0F1ZNh5DKQo95IN9JPm2:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/appinventor/components/common/NxtMotorPort;

    move-object v3, v4

    .line 64
    move-object v4, v1

    const-string/jumbo v5, "Disconnect"

    move-object v6, v3

    const/4 v7, 0x0

    sget-object v8, Lcom/google/appinventor/components/common/NxtMotorMode;->Brake:Lcom/google/appinventor/components/common/NxtMotorMode;

    sget-object v9, Lcom/google/appinventor/components/common/NxtRegulationMode;->Disabled:Lcom/google/appinventor/components/common/NxtRegulationMode;

    const/4 v10, 0x0

    sget-object v11, Lcom/google/appinventor/components/common/NxtRunState;->Disabled:Lcom/google/appinventor/components/common/NxtRunState;

    const-wide/16 v12, 0x0

    invoke-virtual/range {v4 .. v13}, Lcom/google/appinventor/components/runtime/NxtDrive;->setOutputState(Ljava/lang/String;Lcom/google/appinventor/components/common/NxtMotorPort;ILcom/google/appinventor/components/common/NxtMotorMode;Lcom/google/appinventor/components/common/NxtRegulationMode;ILcom/google/appinventor/components/common/NxtRunState;J)V

    .line 66
    goto :goto_0

    .line 68
    :cond_0
    return-void
.end method
