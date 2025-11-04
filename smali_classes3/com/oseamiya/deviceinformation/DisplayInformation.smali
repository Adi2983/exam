.class public Lcom/oseamiya/deviceinformation/DisplayInformation;
.super Ljava/lang/Object;
.source "DisplayInformation.java"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 18
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/DisplayInformation;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 19
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/oseamiya/deviceinformation/DisplayInformation;->context:Landroid/content/Context;

    .line 21
    return-void
.end method


# virtual methods
.method public getBrightnessLevel()I
    .locals 8

    .prologue
    .line 203
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/DisplayInformation;
    move-object v5, v0

    iget-object v5, v5, Lcom/oseamiya/deviceinformation/DisplayInformation;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object v1, v5

    .line 204
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    const/4 v5, 0x0

    move v2, v5

    .line 205
    .local v2, "a":I
    const/4 v5, 0x0

    move v3, v5

    .line 207
    .local v3, "mode":I
    move-object v5, v1

    :try_start_0
    const-string/jumbo v6, "screen_brightness_mode"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    move v3, v5

    .line 210
    .line 211
    :goto_0
    move v5, v3

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 212
    const/4 v5, 0x1

    move v2, v5

    .line 213
    move-object v5, v1

    const-string/jumbo v6, "screen_brightness_mode"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v5

    .line 215
    :cond_0
    move-object v5, v1

    const-string/jumbo v6, "screen_brightness"

    const/16 v7, 0x7d

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    move v4, v5

    .line 216
    .local v4, "brightnessLevel":I
    move v5, v2

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 217
    move-object v5, v1

    const-string/jumbo v6, "screen_brightness_mode"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v5

    .line 219
    :cond_1
    move v5, v4

    move v0, v5

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/DisplayInformation;
    return v0

    .line 208
    .end local v4    # "brightnessLevel":I
    .restart local v0    # "this":Lcom/oseamiya/deviceinformation/DisplayInformation;
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 209
    .local v4, "e":Landroid/provider/Settings$SettingNotFoundException;
    move-object v5, v4

    invoke-virtual {v5}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public getDisplayHeight()I
    .locals 3

    .prologue
    .line 30
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/DisplayInformation;
    move-object v1, v0

    iget-object v1, v1, Lcom/oseamiya/deviceinformation/DisplayInformation;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object v2, v0

    invoke-virtual {v2}, Lcom/oseamiya/deviceinformation/DisplayInformation;->getNavigationBarHeight()I

    move-result v2

    add-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/DisplayInformation;
    return v0
.end method

.method public getDisplayWidth()I
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/DisplayInformation;
    move-object v1, v0

    iget-object v1, v1, Lcom/oseamiya/deviceinformation/DisplayInformation;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    move v0, v1

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/DisplayInformation;
    return v0
.end method

.method public getFontScale()F
    .locals 2

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/DisplayInformation;
    move-object v1, v0

    iget-object v1, v1, Lcom/oseamiya/deviceinformation/DisplayInformation;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    move v0, v1

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/DisplayInformation;
    return v0
.end method

.method public getNavigationBarHeight()I
    .locals 8

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/DisplayInformation;
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v5, v6, :cond_1

    .line 48
    new-instance v5, Landroid/util/DisplayMetrics;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    move-object v1, v5

    .line 49
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    move-object v5, v0

    iget-object v5, v5, Lcom/oseamiya/deviceinformation/DisplayInformation;->context:Landroid/content/Context;

    const-string/jumbo v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    move-object v2, v5

    .line 50
    .local v2, "windowManager":Landroid/view/WindowManager;
    move-object v5, v2

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 51
    move-object v5, v1

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    move v3, v5

    .line 52
    .local v3, "usableHeight":I
    move-object v5, v2

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 53
    move-object v5, v1

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    move v4, v5

    .line 54
    .local v4, "realHeight":I
    move v5, v4

    move v6, v3

    if-le v5, v6, :cond_0

    .line 55
    move v5, v4

    move v6, v3

    sub-int/2addr v5, v6

    move v0, v5

    .line 60
    .end local v0    # "this":Lcom/oseamiya/deviceinformation/DisplayInformation;
    :goto_0
    return v0

    .line 57
    .restart local v0    # "this":Lcom/oseamiya/deviceinformation/DisplayInformation;
    :cond_0
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0

    .line 60
    .end local v1    # "metrics":Landroid/util/DisplayMetrics;
    .end local v2    # "windowManager":Landroid/view/WindowManager;
    .end local v3    # "usableHeight":I
    .end local v4    # "realHeight":I
    :cond_1
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method public getOrientation()I
    .locals 2

    .prologue
    .line 101
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/DisplayInformation;
    move-object v1, v0

    iget-object v1, v1, Lcom/oseamiya/deviceinformation/DisplayInformation;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    move v0, v1

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/DisplayInformation;
    return v0
.end method

.method public getPhysicalSize()D
    .locals 13

    .prologue
    .line 68
    move-object v1, p0

    .local v1, "this":Lcom/oseamiya/deviceinformation/DisplayInformation;
    new-instance v8, Landroid/util/DisplayMetrics;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Landroid/util/DisplayMetrics;-><init>()V

    move-object v2, v8

    .line 69
    .local v2, "dm":Landroid/util/DisplayMetrics;
    move-object v8, v1

    iget-object v8, v8, Lcom/oseamiya/deviceinformation/DisplayInformation;->context:Landroid/content/Context;

    const-string/jumbo v9, "window"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    move-object v3, v8

    .line 70
    .local v3, "windowManager":Landroid/view/WindowManager;
    move-object v8, v3

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 71
    move-object v8, v1

    invoke-virtual {v8}, Lcom/oseamiya/deviceinformation/DisplayInformation;->getDisplayWidth()I

    move-result v8

    int-to-float v8, v8

    move-object v9, v2

    iget v9, v9, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v8, v9

    float-to-double v8, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    move-wide v4, v8

    .line 72
    .local v4, "x":D
    move-object v8, v1

    invoke-virtual {v8}, Lcom/oseamiya/deviceinformation/DisplayInformation;->getDisplayHeight()I

    move-result v8

    int-to-float v8, v8

    move-object v9, v2

    iget v9, v9, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v8, v9

    float-to-double v8, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    move-wide v6, v8

    .line 73
    .local v6, "y":D
    move-wide v8, v4

    move-wide v10, v6

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    move-wide v1, v8

    .end local v1    # "this":Lcom/oseamiya/deviceinformation/DisplayInformation;
    return-wide v1
.end method

.method public getRefreshRate()F
    .locals 4

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/DisplayInformation;
    move-object v2, v0

    iget-object v2, v2, Lcom/oseamiya/deviceinformation/DisplayInformation;->context:Landroid/content/Context;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    move-object v1, v2

    .line 90
    .local v1, "display":Landroid/view/Display;
    move-object v2, v1

    invoke-virtual {v2}, Landroid/view/Display;->getRefreshRate()F

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/DisplayInformation;
    return v0
.end method

.method public getRotation()I
    .locals 6

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/DisplayInformation;
    move-object v4, v0

    iget-object v4, v4, Lcom/oseamiya/deviceinformation/DisplayInformation;->context:Landroid/content/Context;

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    move-object v1, v4

    .line 111
    .local v1, "windowManager":Landroid/view/WindowManager;
    const/4 v4, 0x0

    move v2, v4

    .line 112
    .local v2, "angle":I
    move-object v4, v1

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    move v3, v4

    .line 113
    .local v3, "rotation":I
    move v4, v3

    packed-switch v4, :pswitch_data_0

    .line 124
    const/4 v4, 0x0

    move v2, v4

    .line 128
    :goto_0
    move v4, v2

    move v0, v4

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/DisplayInformation;
    return v0

    .line 115
    .restart local v0    # "this":Lcom/oseamiya/deviceinformation/DisplayInformation;
    :pswitch_0
    const/16 v4, 0x5a

    move v2, v4

    .line 116
    goto :goto_0

    .line 118
    :pswitch_1
    const/16 v4, 0xb4

    move v2, v4

    .line 119
    goto :goto_0

    .line 121
    :pswitch_2
    const/16 v4, 0x10e

    move v2, v4

    .line 122
    goto :goto_0

    .line 113
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getScreenTimeout()I
    .locals 4

    .prologue
    .line 246
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/DisplayInformation;
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/oseamiya/deviceinformation/DisplayInformation;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_off_timeout"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v0, v2

    .line 249
    .end local v0    # "this":Lcom/oseamiya/deviceinformation/DisplayInformation;
    :goto_0
    return v0

    .line 247
    .restart local v0    # "this":Lcom/oseamiya/deviceinformation/DisplayInformation;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 248
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    move-object v2, v1

    invoke-virtual {v2}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 249
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public isBrightnessAutoMode()Z
    .locals 4

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/DisplayInformation;
    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/oseamiya/deviceinformation/DisplayInformation;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_brightness_mode"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v1, v2

    .line 183
    .local v1, "brightnesses":I
    move v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 184
    const/4 v2, 0x1

    move v0, v2

    .line 190
    .end local v0    # "this":Lcom/oseamiya/deviceinformation/DisplayInformation;
    :goto_0
    return v0

    .line 186
    .restart local v0    # "this":Lcom/oseamiya/deviceinformation/DisplayInformation;
    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 188
    .end local v1    # "brightnesses":I
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 189
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    move-object v2, v1

    invoke-virtual {v2}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 190
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public isHdrCapable()Z
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/DisplayInformation;
    new-instance v2, Landroid/content/res/Configuration;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    move-object v1, v2

    .line 139
    .local v1, "configuration":Landroid/content/res/Configuration;
    move-object v2, v0

    iget-object v2, v2, Lcom/oseamiya/deviceinformation/DisplayInformation;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    move-object v1, v2

    .line 140
    move-object v2, v1

    invoke-virtual {v2}, Landroid/content/res/Configuration;->isScreenHdr()Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/DisplayInformation;
    return v0
.end method

.method public isNightModeActive()Z
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .prologue
    .line 149
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/DisplayInformation;
    new-instance v2, Landroid/content/res/Configuration;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    move-object v1, v2

    .line 150
    .local v1, "configuration":Landroid/content/res/Configuration;
    move-object v2, v0

    iget-object v2, v2, Lcom/oseamiya/deviceinformation/DisplayInformation;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    move-object v1, v2

    .line 151
    move-object v2, v1

    invoke-virtual {v2}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/DisplayInformation;
    return v0
.end method

.method public isScreenRound()Z
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x17
    .end annotation

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/DisplayInformation;
    new-instance v2, Landroid/content/res/Configuration;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    move-object v1, v2

    .line 161
    .local v1, "configuration":Landroid/content/res/Configuration;
    move-object v2, v0

    iget-object v2, v2, Lcom/oseamiya/deviceinformation/DisplayInformation;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    move-object v1, v2

    .line 162
    move-object v2, v1

    invoke-virtual {v2}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/DisplayInformation;
    return v0
.end method

.method public isScreenWideColorGamut()Z
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/DisplayInformation;
    new-instance v2, Landroid/content/res/Configuration;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    move-object v1, v2

    .line 172
    .local v1, "configuration":Landroid/content/res/Configuration;
    move-object v2, v0

    iget-object v2, v2, Lcom/oseamiya/deviceinformation/DisplayInformation;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    move-object v1, v2

    .line 173
    move-object v2, v1

    invoke-virtual {v2}, Landroid/content/res/Configuration;->isScreenWideColorGamut()Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/oseamiya/deviceinformation/DisplayInformation;
    return v0
.end method

.method public triggerBrightnessMode()V
    .locals 6

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Lcom/oseamiya/deviceinformation/DisplayInformation;
    move-object v3, v0

    iget-object v3, v3, Lcom/oseamiya/deviceinformation/DisplayInformation;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object v1, v3

    .line 229
    .local v1, "contentResolver":Landroid/content/ContentResolver;
    move-object v3, v1

    :try_start_0
    const-string/jumbo v4, "screen_brightness_mode"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    move v2, v3

    .line 230
    .local v2, "mode":I
    move v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 231
    move-object v3, v1

    const-string/jumbo v4, "screen_brightness_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v3

    .line 237
    .line 238
    .end local v2    # "mode":I
    :goto_0
    return-void

    .line 233
    .restart local v2    # "mode":I
    :cond_0
    move-object v3, v1

    const-string/jumbo v4, "screen_brightness_mode"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 235
    .end local v2    # "mode":I
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 236
    .local v2, "e":Landroid/provider/Settings$SettingNotFoundException;
    move-object v3, v2

    invoke-virtual {v3}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
