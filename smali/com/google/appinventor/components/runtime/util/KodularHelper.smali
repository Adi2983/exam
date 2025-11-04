.class public Lcom/google/appinventor/components/runtime/util/KodularHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method public static getPackageIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    .line 114
    move-object v0, p0

    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_1

    .line 116
    move-object v3, v0

    instance-of v3, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_0

    .line 117
    move-object v3, v0

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    .line 146
    :goto_0
    return-object v0

    .line 118
    :cond_0
    move-object v3, v0

    instance-of v3, v3, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v3, :cond_2

    .line 119
    move-object v3, v0

    check-cast v3, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v1, v3

    .line 120
    move-object v3, v0

    check-cast v3, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object v0, v3

    .line 122
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    .line 123
    move-object v2, v4

    const/4 v4, 0x0

    move-object v5, v1

    aput-object v5, v3, v4

    .line 124
    move-object v3, v2

    const/4 v4, 0x1

    move-object v5, v0

    aput-object v5, v3, v4

    .line 126
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    invoke-direct {v4, v5}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    .line 128
    move-object v0, v4

    invoke-virtual {v3}, Landroid/graphics/drawable/LayerDrawable;->getIntrinsicWidth()I

    move-result v3

    move v1, v3

    .line 129
    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/drawable/LayerDrawable;->getIntrinsicHeight()I

    move-result v3

    move v2, v3

    .line 131
    move v3, v1

    move v4, v2

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v1, v3

    .line 133
    new-instance v3, Landroid/graphics/Canvas;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v2, v3

    .line 135
    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v2

    invoke-virtual {v6}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    move-object v7, v2

    invoke-virtual {v7}, Landroid/graphics/Canvas;->getHeight()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/LayerDrawable;->setBounds(IIII)V

    .line 136
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/LayerDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 138
    move-object v3, v1

    move-object v0, v3

    goto :goto_0

    .line 141
    :cond_1
    move-object v3, v0

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 145
    .line 146
    :cond_2
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 144
    :catch_0
    move-exception v3

    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public static prepareRippleDrawable(Landroid/view/View;Landroid/view/MotionEvent;I)V
    .locals 11

    .prologue
    .line 154
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    :try_start_0
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/RippleDrawable;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    .line 155
    move-object v0, v4

    move-object v4, v1

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/RippleDrawable;->setHotspot(FF)V

    .line 156
    const/4 v3, 0x1

    new-array v3, v3, [[I

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [I

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    const v9, 0x101009e

    aput v9, v7, v8

    aput-object v6, v4, v5

    move-object v1, v3

    .line 157
    const/4 v3, 0x1

    new-array v3, v3, [I

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const/4 v5, 0x0

    move v6, v2

    aput v6, v4, v5

    move-object v2, v3

    .line 159
    new-instance v3, Landroid/content/res/ColorStateList;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object v1, v3

    .line 160
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 161
    const-string/jumbo v3, "KodularHelper"

    const-string/jumbo v4, "Prepare new RippleDrawable successfully executed"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 164
    .line 165
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 163
    const-string/jumbo v3, "KodularHelper"

    move-object v4, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 165
    goto :goto_0
.end method

.method public static setAppBackgroundTaskInfo(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 13

    .prologue
    .line 96
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const/4 v6, 0x0

    move-object v3, v6

    .line 97
    move-object v6, v0

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    move-object v4, v6

    .line 98
    move-object v6, v0

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 100
    move-object v6, v4

    move-object v7, v5

    :try_start_0
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v3, v6

    .line 103
    .line 104
    :goto_0
    move-object v6, v3

    if-eqz v6, :cond_0

    .line 105
    move-object v6, v3

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/KodularHelper;->getPackageIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    .line 106
    move-object v3, v7

    if-eqz v6, :cond_0

    .line 107
    move-object v6, v0

    new-instance v7, Landroid/app/ActivityManager$TaskDescription;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v1

    move-object v10, v3

    move v11, v2

    invoke-direct {v8, v9, v10, v11}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 110
    :cond_0
    return-void

    .line 102
    :catch_0
    move-exception v6

    const-string/jumbo v6, "KodularHelper"

    const-string/jumbo v7, "wrong icon or icon was empty or null or not found. setAppBackgroundTaskInfo"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    goto :goto_0
.end method

.method public static setButtonTintList(Landroid/widget/CompoundButton;I)V
    .locals 4

    .prologue
    .line 191
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    :try_start_0
    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 192
    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->invalidate()V

    .line 193
    const-string/jumbo v2, "KodularHelper"

    const-string/jumbo v3, "Set new buttonTintList successfully executed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 196
    .line 197
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 195
    const-string/jumbo v2, "KodularHelper"

    move-object v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 197
    goto :goto_0
.end method

.method public static setMarginToBtn(Landroid/widget/Button;Landroid/content/Context;Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 225
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    .line 226
    move-object v2, v6

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 227
    move-object v5, v2

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 229
    new-instance v5, Ljava/util/ArrayList;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v5

    .line 230
    const/4 v5, 0x0

    move v4, v5

    :goto_0
    move v5, v4

    move-object v6, v2

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 231
    move-object v5, v3

    move-object v6, v1

    move-object v7, v2

    move v8, v4

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 230
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 233
    :cond_0
    move-object v5, v2

    array-length v5, v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 235
    move-object v5, v0

    :try_start_0
    invoke-virtual {v5}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    .line 236
    move-object v4, v6

    move-object v6, v3

    const/4 v7, 0x0

    .line 237
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v7, v3

    const/4 v8, 0x0

    .line 238
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v8, v3

    const/4 v9, 0x0

    .line 239
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object v9, v3

    const/4 v10, 0x0

    .line 240
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 236
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 242
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/Button;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    .line 277
    :goto_1
    return-void

    .line 244
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 245
    const-string/jumbo v5, "KodularHelper"

    move-object v6, v4

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 246
    goto :goto_1

    .line 247
    :cond_1
    move-object v5, v2

    array-length v5, v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 249
    move-object v5, v0

    :try_start_1
    invoke-virtual {v5}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    .line 250
    move-object v4, v6

    const/4 v6, 0x0

    move-object v7, v3

    const/4 v8, 0x0

    .line 252
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x0

    move-object v9, v3

    const/4 v10, 0x1

    .line 254
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 250
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 256
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/Button;->invalidate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 260
    goto :goto_1

    .line 258
    :catch_1
    move-exception v5

    move-object v4, v5

    .line 259
    const-string/jumbo v5, "KodularHelper"

    move-object v6, v4

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 260
    goto :goto_1

    .line 261
    :cond_2
    move-object v5, v2

    array-length v5, v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    .line 263
    move-object v5, v0

    :try_start_2
    invoke-virtual {v5}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    .line 264
    move-object v4, v6

    move-object v6, v3

    const/4 v7, 0x0

    .line 265
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v7, v3

    const/4 v8, 0x1

    .line 266
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v8, v3

    const/4 v9, 0x2

    .line 267
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object v9, v3

    const/4 v10, 0x3

    .line 268
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 264
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 270
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/Button;->invalidate()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 274
    goto/16 :goto_1

    .line 272
    :catch_2
    move-exception v5

    move-object v4, v5

    .line 273
    const-string/jumbo v5, "KodularHelper"

    move-object v6, v4

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 277
    :cond_3
    goto/16 :goto_1
.end method

.method public static setMarginToButton(Landroid/widget/Button;Landroid/content/Context;IIII)V
    .locals 14

    .prologue
    .line 281
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v7, v0

    :try_start_0
    invoke-virtual {v7}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    .line 282
    move-object v6, v8

    move-object v8, v1

    move v9, v2

    .line 283
    invoke-static {v8, v9}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v8

    move-object v9, v1

    move v10, v3

    .line 284
    invoke-static {v9, v10}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v9

    move-object v10, v1

    move v11, v4

    .line 285
    invoke-static {v10, v11}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v10

    move-object v11, v1

    move v12, v5

    .line 286
    invoke-static {v11, v12}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v11

    .line 282
    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 287
    move-object v7, v0

    move-object v8, v6

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    move-object v7, v0

    invoke-virtual {v7}, Landroid/widget/Button;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .line 292
    :goto_0
    return-void

    .line 289
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 290
    const-string/jumbo v7, "KodularHelper"

    move-object v8, v6

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 292
    goto :goto_0
.end method

.method public static setNavigationBarColor(Landroid/app/Activity;I)V
    .locals 4

    .prologue
    .line 84
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 85
    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 86
    const-string/jumbo v2, "KodularHelper"

    const-string/jumbo v3, "Set new navigationBarColor successfully executed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 89
    .line 90
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 88
    const-string/jumbo v2, "KodularHelper"

    move-object v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 90
    goto :goto_0
.end method

.method public static setPadding(Landroid/view/View;Landroid/content/Context;IIII)V
    .locals 12

    .prologue
    .line 204
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v6, v0

    move-object v7, v1

    move v8, v2

    .line 205
    :try_start_0
    invoke-static {v7, v8}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v7

    move-object v8, v1

    move v9, v3

    .line 206
    invoke-static {v8, v9}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v8

    move-object v9, v1

    move v10, v4

    .line 207
    invoke-static {v9, v10}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v9

    move-object v10, v1

    move v11, v5

    .line 208
    invoke-static {v10, v11}, Lcom/google/appinventor/components/runtime/util/KodularUnitUtil;->DpToPixels(Landroid/content/Context;I)I

    move-result v10

    .line 204
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 209
    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/View;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    .line 213
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 211
    const-string/jumbo v6, "KodularHelper"

    move-object v7, v0

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 213
    goto :goto_0
.end method

.method public static setRippleDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V
    .locals 13

    .prologue
    .line 172
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const/4 v5, 0x2

    :try_start_0
    new-array v5, v5, [Landroid/graphics/drawable/Drawable;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const/4 v7, 0x1

    move-object v8, v1

    aput-object v8, v6, v7

    move-object v3, v5

    .line 173
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v3

    invoke-direct {v6, v7}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move-object v3, v5

    .line 175
    const/4 v5, 0x1

    new-array v5, v5, [[I

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const/4 v7, 0x0

    const/4 v8, 0x1

    new-array v8, v8, [I

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    const v11, 0x101009e

    aput v11, v9, v10

    aput-object v8, v6, v7

    move-object v4, v5

    .line 176
    const/4 v5, 0x1

    new-array v5, v5, [I

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    const/4 v7, 0x0

    move v8, v2

    aput v8, v6, v7

    move-object v2, v5

    .line 177
    new-instance v5, Landroid/content/res/ColorStateList;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v4

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object v2, v5

    .line 178
    new-instance v5, Landroid/graphics/drawable/RippleDrawable;

    move-object v12, v5

    move-object v5, v12

    move-object v6, v12

    move-object v7, v2

    move-object v8, v3

    move-object v9, v1

    invoke-direct {v6, v7, v8, v9}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object v1, v5

    .line 179
    move-object v5, v0

    move-object v6, v1

    invoke-static {v5, v6}, Lcom/google/appinventor/components/runtime/util/ViewUtil;->setBackgroundDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 180
    const-string/jumbo v5, "KodularHelper"

    const-string/jumbo v6, "Set new RippleDrawable successfully executed"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 183
    .line 184
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 182
    const-string/jumbo v5, "KodularHelper"

    move-object v6, v3

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 184
    goto :goto_0
.end method

.method public static setShadow(Landroid/widget/TextView;FFFI)V
    .locals 10

    .prologue
    .line 316
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v0

    move v6, v3

    move v7, v1

    move v8, v2

    move v9, v4

    :try_start_0
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 317
    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/TextView;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    .line 321
    :goto_0
    return-void

    .line 318
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 319
    const-string/jumbo v5, "KodularHelper"

    move-object v6, v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 321
    goto :goto_0
.end method

.method public static setShape(Landroid/view/View;IIZ)V
    .locals 9

    .prologue
    .line 299
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    :try_start_0
    new-instance v5, Landroid/graphics/drawable/GradientDrawable;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    .line 300
    move-object v4, v6

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 301
    move-object v5, v4

    move v6, v3

    if-eqz v6, :cond_0

    const/high16 v6, 0x42480000    # 50.0f

    :goto_0
    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 302
    move-object v5, v4

    move v6, v1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 303
    move-object v5, v4

    const/4 v6, 0x3

    move v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 304
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 305
    move-object v5, v0

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    .line 309
    :goto_1
    return-void

    .line 301
    :cond_0
    const/high16 v6, 0x41200000    # 10.0f

    goto :goto_0

    .line 306
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 307
    const-string/jumbo v5, "KodularHelper"

    move-object v6, v4

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 309
    goto :goto_1
.end method

.method public static setStatusBarColor(Landroid/app/Activity;I)V
    .locals 5

    .prologue
    .line 70
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    .line 71
    move-object v0, v3

    const/high16 v3, -0x80000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 72
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 73
    const-string/jumbo v2, "KodularHelper"

    const-string/jumbo v3, "Set new statusBarColor successfully executed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 76
    .line 77
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 75
    const-string/jumbo v2, "KodularHelper"

    move-object v3, v0

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 77
    goto :goto_0
.end method

.method public static textToBitmap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IF)Landroid/graphics/Bitmap;
    .locals 12

    .prologue
    .line 328
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    :try_start_0
    new-instance v6, Landroid/graphics/Paint;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Landroid/graphics/Paint;-><init>(I)V

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    .line 329
    move-object v5, v7

    move v7, v4

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 330
    move-object v6, v5

    move v7, v3

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 331
    move-object v6, v5

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 332
    move-object v6, v0

    invoke-static {v6}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setContext(Landroid/content/Context;)V

    .line 333
    move-object v6, v1

    const-string/jumbo v7, "material"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 334
    move-object v6, v5

    const/4 v7, 0x7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypefaceCanvas(Landroid/graphics/Paint;IZZ)V

    .line 339
    :cond_0
    :goto_0
    move v6, v4

    float-to-int v6, v6

    move v11, v6

    move v6, v11

    move v7, v11

    .line 341
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object v0, v6

    .line 342
    new-instance v6, Landroid/graphics/Canvas;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    invoke-direct {v7, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    .line 344
    move-object v1, v7

    invoke-virtual {v6}, Landroid/graphics/Canvas;->getWidth()I

    move-result v6

    const/4 v7, 0x2

    div-int/lit8 v6, v6, 0x2

    move v3, v6

    .line 345
    move-object v6, v1

    invoke-virtual {v6}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    const/4 v7, 0x2

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    move-object v7, v5

    invoke-virtual {v7}, Landroid/graphics/Paint;->descent()F

    move-result v7

    move-object v8, v5

    invoke-virtual {v8}, Landroid/graphics/Paint;->ascent()F

    move-result v8

    add-float/2addr v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    float-to-int v6, v6

    move v4, v6

    .line 347
    move-object v6, v1

    move-object v7, v2

    invoke-static {v7}, Lcom/google/appinventor/components/common/HtmlEntities;->decodeHtmlText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move v8, v3

    int-to-float v8, v8

    move v9, v4

    int-to-float v9, v9

    move-object v10, v5

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 349
    move-object v6, v0

    move-object v0, v6

    .line 351
    :goto_1
    return-object v0

    .line 335
    :cond_1
    move-object v6, v1

    const-string/jumbo v7, "font_awesome"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 336
    move-object v6, v5

    const/4 v7, 0x6

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setFontTypefaceCanvas(Landroid/graphics/Paint;IZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 351
    :catch_0
    move-exception v6

    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1
.end method
