.class public final Lcom/google/appinventor/components/runtime/util/AnimationUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static ApplyAnimation(Landroid/view/View;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const-string/jumbo v3, "ScrollRightSlow"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    move-object v2, v0

    const/4 v3, 0x0

    const/16 v4, 0x1f40

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/view/View;ZI)V

    .line 72
    :goto_0
    return-void

    .line 59
    :cond_0
    move-object v2, v1

    const-string/jumbo v3, "ScrollRight"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 60
    move-object v2, v0

    const/4 v3, 0x0

    const/16 v4, 0xfa0

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/view/View;ZI)V

    goto :goto_0

    .line 61
    :cond_1
    move-object v2, v1

    const-string/jumbo v3, "ScrollRightFast"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 62
    move-object v2, v0

    const/4 v3, 0x0

    const/16 v4, 0x3e8

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/view/View;ZI)V

    goto :goto_0

    .line 63
    :cond_2
    move-object v2, v1

    const-string/jumbo v3, "ScrollLeftSlow"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 64
    move-object v2, v0

    const/4 v3, 0x1

    const/16 v4, 0x1f40

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/view/View;ZI)V

    goto :goto_0

    .line 65
    :cond_3
    move-object v2, v1

    const-string/jumbo v3, "ScrollLeft"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 66
    move-object v2, v0

    const/4 v3, 0x1

    const/16 v4, 0xfa0

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/view/View;ZI)V

    goto :goto_0

    .line 67
    :cond_4
    move-object v2, v1

    const-string/jumbo v3, "ScrollLeftFast"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 68
    move-object v2, v0

    const/4 v3, 0x1

    const/16 v4, 0x3e8

    invoke-static {v2, v3, v4}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/view/View;ZI)V

    goto :goto_0

    .line 69
    :cond_5
    move-object v2, v1

    const-string/jumbo v3, "Stop"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 70
    move-object v2, v0

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 72
    :cond_6
    goto :goto_0
.end method

.method public static ApplyCloseScreenAnimation(Landroid/app/Activity;Lcom/google/appinventor/components/common/ScreenAnimation;)V
    .locals 8

    .prologue
    .line 152
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    if-nez v4, :cond_0

    .line 153
    .line 188
    :goto_0
    return-void

    .line 155
    :cond_0
    const/4 v4, 0x0

    move v2, v4

    .line 156
    const/4 v4, 0x0

    move v3, v4

    .line 157
    sget-object v4, Lcom/google/appinventor/components/runtime/util/AnimationUtil$1;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:[I

    move-object v5, v1

    invoke-virtual {v5}, Lcom/google/appinventor/components/common/ScreenAnimation;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 185
    goto :goto_0

    .line 159
    :pswitch_0
    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "fadeout"

    const-string/jumbo v6, "anim"

    move-object v7, v0

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 160
    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "hold"

    const-string/jumbo v6, "anim"

    move-object v7, v0

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v2, v4

    .line 187
    :goto_1
    move-object v4, v0

    move v5, v2

    move v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 188
    goto :goto_0

    .line 163
    :pswitch_1
    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "zoom_exit_reverse"

    const-string/jumbo v6, "anim"

    move-object v7, v0

    .line 164
    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 163
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 165
    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "zoom_enter_reverse"

    const-string/jumbo v6, "anim"

    move-object v7, v0

    .line 166
    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 165
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v2, v4

    .line 167
    goto :goto_1

    .line 169
    :pswitch_2
    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "slide_exit_reverse"

    const-string/jumbo v6, "anim"

    move-object v7, v0

    .line 170
    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 169
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 171
    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "slide_enter_reverse"

    const-string/jumbo v6, "anim"

    move-object v7, v0

    .line 172
    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 171
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v2, v4

    .line 173
    goto :goto_1

    .line 175
    :pswitch_3
    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "slide_v_exit_reverse"

    const-string/jumbo v6, "anim"

    move-object v7, v0

    .line 176
    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 175
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 177
    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "slide_v_enter_reverse"

    const-string/jumbo v6, "anim"

    move-object v7, v0

    .line 178
    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 177
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v2, v4

    .line 179
    goto/16 :goto_1

    .line 182
    :pswitch_4
    goto/16 :goto_1

    .line 157
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static ApplyCloseScreenAnimation(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 140
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Lcom/google/appinventor/components/common/ScreenAnimation;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/ScreenAnimation;

    move-result-object v2

    move-object v1, v2

    .line 141
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyCloseScreenAnimation(Landroid/app/Activity;Lcom/google/appinventor/components/common/ScreenAnimation;)V

    .line 142
    return-void
.end method

.method public static ApplyOpenScreenAnimation(Landroid/app/Activity;Lcom/google/appinventor/components/common/ScreenAnimation;)V
    .locals 8

    .prologue
    .line 94
    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    if-nez v4, :cond_0

    .line 95
    .line 131
    :goto_0
    return-void

    .line 97
    :cond_0
    const/4 v4, 0x0

    move v2, v4

    .line 98
    const/4 v4, 0x0

    move v3, v4

    .line 100
    sget-object v4, Lcom/google/appinventor/components/runtime/util/AnimationUtil$1;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:[I

    move-object v5, v1

    invoke-virtual {v5}, Lcom/google/appinventor/components/common/ScreenAnimation;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 128
    goto :goto_0

    .line 102
    :pswitch_0
    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "fadein"

    const-string/jumbo v6, "anim"

    move-object v7, v0

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v2, v4

    .line 103
    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "hold"

    const-string/jumbo v6, "anim"

    move-object v7, v0

    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 130
    :goto_1
    move-object v4, v0

    move v5, v2

    move v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 131
    goto :goto_0

    .line 106
    :pswitch_1
    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "zoom_exit"

    const-string/jumbo v6, "anim"

    move-object v7, v0

    .line 107
    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 106
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 108
    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "zoom_enter"

    const-string/jumbo v6, "anim"

    move-object v7, v0

    .line 109
    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 108
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v2, v4

    .line 110
    goto :goto_1

    .line 112
    :pswitch_2
    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "slide_exit"

    const-string/jumbo v6, "anim"

    move-object v7, v0

    .line 113
    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 112
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 114
    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "slide_enter"

    const-string/jumbo v6, "anim"

    move-object v7, v0

    .line 115
    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 114
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v2, v4

    .line 116
    goto :goto_1

    .line 118
    :pswitch_3
    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "slide_v_exit"

    const-string/jumbo v6, "anim"

    move-object v7, v0

    .line 119
    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 118
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v3, v4

    .line 120
    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "slide_v_enter"

    const-string/jumbo v6, "anim"

    move-object v7, v0

    .line 121
    invoke-virtual {v7}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 120
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v2, v4

    .line 122
    goto/16 :goto_1

    .line 125
    :pswitch_4
    goto/16 :goto_1

    .line 100
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static ApplyOpenScreenAnimation(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 82
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Lcom/google/appinventor/components/common/ScreenAnimation;->fromUnderlyingValue(Ljava/lang/String;)Lcom/google/appinventor/components/common/ScreenAnimation;

    move-result-object v2

    move-object v1, v2

    .line 83
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/AnimationUtil;->ApplyOpenScreenAnimation(Landroid/app/Activity;Lcom/google/appinventor/components/common/ScreenAnimation;)V

    .line 84
    return-void
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/view/View;ZI)V
    .locals 16

    .prologue
    .line 33
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move v5, v2

    if-eqz v5, :cond_0

    const/high16 v5, 0x3f800000    # 1.0f

    :goto_0
    move v2, v5

    .line 34
    new-instance v5, Landroid/view/animation/AnimationSet;

    move-object v15, v5

    move-object v5, v15

    move-object v6, v15

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    move-object v15, v5

    move-object v5, v15

    move-object v6, v15

    .line 35
    move-object v4, v6

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->setRepeatCount(I)V

    .line 36
    move-object v5, v4

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->setRepeatMode(I)V

    .line 38
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    move-object v15, v5

    move-object v5, v15

    move-object v6, v15

    const/4 v7, 0x2

    move v8, v2

    const v9, 0x3f333333    # 0.7f

    mul-float/2addr v8, v9

    const/4 v9, 0x2

    move v10, v2

    const v11, -0x40cccccd    # -0.7f

    mul-float/2addr v10, v11

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-direct/range {v6 .. v14}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    move-object v15, v5

    move-object v5, v15

    move-object v6, v15

    .line 41
    move-object v2, v6

    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 42
    move-object v5, v2

    move v6, v3

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 43
    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 44
    move-object v5, v4

    move-object v6, v2

    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 45
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 46
    return-void

    .line 33
    :cond_0
    const/high16 v5, -0x40800000    # -1.0f

    goto :goto_0
.end method
