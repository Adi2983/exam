.class public Lcom/google/appinventor/components/runtime/util/TextViewUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/TextViewUtil$CustomTypefaceSpan;
    }
.end annotation


# static fields
.field private static vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 3

    .prologue
    .line 335
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 336
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v1

    move-object v0, v1

    .line 338
    :goto_0
    return-object v0

    :cond_0
    move-object v1, v0

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public static getFontSize(Landroid/widget/TextView;Landroid/content/Context;)F
    .locals 4

    .prologue
    .line 114
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    move v1, v2

    .line 115
    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    move v3, v1

    div-float/2addr v2, v3

    move v0, v2

    return v0
.end method

.method public static getText(Landroid/widget/TextView;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 193
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getTitleBarCustomTypeFace(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 5

    .prologue
    .line 155
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(ZZ)I

    move-result v3

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static getTitleBarTypeFace(I)Landroid/graphics/Typeface;
    .locals 4

    .prologue
    .line 151
    move v0, p0

    move v1, v0

    invoke-static {v1}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(I)Landroid/graphics/Typeface;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(ZZ)I

    move-result v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(ZZ)I
    .locals 5

    .prologue
    .line 324
    move v0, p0

    move v1, p1

    const/4 v3, 0x0

    move v2, v3

    .line 325
    move v3, v0

    if-eqz v3, :cond_0

    .line 326
    const/4 v3, 0x1

    move v2, v3

    .line 328
    :cond_0
    move v3, v1

    if-eqz v3, :cond_1

    .line 329
    move v3, v2

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    move v2, v3

    .line 331
    :cond_1
    move v3, v2

    move v0, v3

    return v0
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(I)Landroid/graphics/Typeface;
    .locals 4

    .prologue
    .line 256
    move v0, p0

    move v1, v0

    packed-switch v1, :pswitch_data_0

    .line 258
    new-instance v1, Ljava/lang/IllegalArgumentException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 261
    :pswitch_0
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object v0, v1

    .line 304
    :goto_0
    move-object v1, v0

    move-object v0, v1

    return-object v0

    .line 265
    :pswitch_1
    sget-object v1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    move-object v0, v1

    .line 266
    goto :goto_0

    .line 269
    :pswitch_2
    sget-object v1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    move-object v0, v1

    .line 270
    goto :goto_0

    .line 273
    :pswitch_3
    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    move-object v0, v1

    .line 274
    goto :goto_0

    .line 277
    :pswitch_4
    sget-object v1, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string/jumbo v2, "Roboto-Thin.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    move-object v0, v1

    .line 278
    goto :goto_0

    .line 281
    :pswitch_5
    sget-object v1, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string/jumbo v2, "Roboto-Regular.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    move-object v0, v1

    .line 282
    goto :goto_0

    .line 285
    :pswitch_6
    sget-object v1, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string/jumbo v2, "fontawesome-webfont.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    move-object v0, v1

    .line 286
    goto :goto_0

    .line 289
    :pswitch_7
    sget-object v1, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string/jumbo v2, "MaterialIcons-Regular.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    move-object v0, v1

    .line 290
    goto :goto_0

    .line 293
    :pswitch_8
    sget-object v1, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string/jumbo v2, "fa-regular-400.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    move-object v0, v1

    .line 294
    goto :goto_0

    .line 297
    :pswitch_9
    sget-object v1, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string/jumbo v2, "fa-solid-900.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    move-object v0, v1

    .line 298
    goto :goto_0

    .line 301
    :pswitch_a
    sget-object v1, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string/jumbo v2, "fa-brands-400.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 6

    .prologue
    .line 310
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    :try_start_0
    invoke-static {v2, v3}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getAssetFilePath(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    .line 311
    move-object v1, v3

    move-object v3, v0

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/QUtil;->getExternalStoragePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 312
    move-object v2, v1

    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v2

    move-object v0, v2

    .line 320
    :goto_0
    move-object v2, v0

    move-object v0, v2

    return-object v0

    .line 314
    :cond_0
    sget-object v2, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    .line 319
    goto :goto_0

    .line 316
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 317
    const-string/jumbo v2, "TextViewUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 318
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public static isEnabled(Landroid/widget/TextView;)Z
    .locals 2

    .prologue
    .line 92
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->isEnabled()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static linkifyMessage(Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 5

    .prologue
    .line 343
    move-object v0, p0

    new-instance v1, Landroid/text/SpannableString;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    .line 344
    move-object v0, v2

    const/16 v2, 0xf

    invoke-static {v1, v2}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v1

    .line 345
    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public static setAlignment(Landroid/widget/TextView;IZ)V
    .locals 7

    .prologue
    .line 50
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, v1

    packed-switch v3, :pswitch_data_0

    .line 52
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 55
    :pswitch_0
    const v3, 0x800003

    move v1, v3

    .line 66
    :goto_0
    move v3, v2

    if-eqz v3, :cond_0

    const/16 v3, 0x10

    :goto_1
    move v2, v3

    .line 67
    move-object v3, v0

    move v4, v1

    move v5, v2

    or-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 68
    move-object v3, v0

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextDirection(I)V

    .line 69
    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/TextView;->invalidate()V

    .line 70
    return-void

    .line 59
    :pswitch_1
    const/4 v3, 0x1

    move v1, v3

    .line 60
    goto :goto_0

    .line 63
    :pswitch_2
    const v3, 0x800005

    move v1, v3

    goto :goto_0

    .line 66
    :cond_0
    const/16 v3, 0x30

    goto :goto_1

    .line 50
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static setBackgroundColor(Landroid/widget/TextView;I)V
    .locals 4

    .prologue
    .line 81
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 82
    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/TextView;->invalidate()V

    .line 83
    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, v0

    sput-object v1, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/content/Context;

    .line 38
    return-void
.end method

.method public static setCustomFontTypeface(Lcom/google/appinventor/components/runtime/Form;Landroid/widget/TextView;Ljava/lang/String;ZZ)V
    .locals 10

    .prologue
    .line 170
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v1

    move-object v6, v0

    move-object v7, v2

    :try_start_0
    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    move v7, v3

    move v8, v4

    invoke-static {v7, v8}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(ZZ)I

    move-result v7

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 171
    move-object v5, v1

    invoke-virtual {v5}, Landroid/widget/TextView;->requestLayout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    .line 175
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 173
    const-string/jumbo v5, "TextViewUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 175
    goto :goto_0
.end method

.method public static setCustomFontTypefaceCanvas(Lcom/google/appinventor/components/runtime/Form;Landroid/graphics/Paint;Ljava/lang/String;ZZ)V
    .locals 10

    .prologue
    .line 180
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v1

    move-object v6, v0

    move-object v7, v2

    :try_start_0
    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    move v7, v3

    move v8, v4

    invoke-static {v7, v8}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(ZZ)I

    move-result v7

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 183
    .line 184
    :goto_0
    return-void

    .line 181
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 182
    const-string/jumbo v5, "TextViewUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 184
    goto :goto_0
.end method

.method public static setEnabled(Landroid/widget/TextView;Z)V
    .locals 4

    .prologue
    .line 102
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 103
    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/TextView;->invalidate()V

    .line 104
    return-void
.end method

.method public static setFontSize(Landroid/widget/TextView;F)V
    .locals 4

    .prologue
    .line 125
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 126
    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/TextView;->requestLayout()V

    .line 127
    return-void
.end method

.method public static setFontTypeface(Landroid/widget/TextView;IZZ)V
    .locals 9

    .prologue
    .line 143
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v1

    :try_start_0
    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(I)Landroid/graphics/Typeface;

    move-result-object v5

    move v6, v2

    move v7, v3

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(ZZ)I

    move-result v6

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 144
    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/TextView;->requestLayout()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .line 148
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 146
    const-string/jumbo v4, "TextViewUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 148
    goto :goto_0
.end method

.method public static setFontTypefaceCanvas(Landroid/graphics/Paint;IZZ)V
    .locals 9

    .prologue
    .line 161
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move v5, v1

    :try_start_0
    invoke-static {v5}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(I)Landroid/graphics/Typeface;

    move-result-object v5

    move v6, v2

    move v7, v3

    invoke-static {v6, v7}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(ZZ)I

    move-result v6

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 164
    .line 165
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 163
    const-string/jumbo v4, "TextViewUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 165
    goto :goto_0
.end method

.method public static setHint(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 250
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 251
    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/TextView;->invalidate()V

    .line 252
    return-void
.end method

.method public static setHintColor(Landroid/widget/TextView;I)V
    .locals 4

    .prologue
    .line 245
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 246
    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/TextView;->invalidate()V

    .line 247
    return-void
.end method

.method public static setMinHeight(Landroid/widget/TextView;I)V
    .locals 4

    .prologue
    .line 410
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 411
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMinimumHeight(I)V

    .line 412
    return-void
.end method

.method public static setMinSize(Landroid/widget/TextView;II)V
    .locals 5

    .prologue
    .line 422
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setMinWidth(Landroid/widget/TextView;I)V

    .line 423
    move-object v3, v0

    move v4, v2

    invoke-static {v3, v4}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->setMinHeight(Landroid/widget/TextView;I)V

    .line 424
    return-void
.end method

.method public static setMinWidth(Landroid/widget/TextView;I)V
    .locals 4

    .prologue
    .line 397
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 398
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 399
    return-void
.end method

.method public static setPadding(Landroid/widget/TextView;I)V
    .locals 8

    .prologue
    .line 225
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move v7, v3

    move v3, v7

    move v4, v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 226
    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/TextView;->requestLayout()V

    .line 227
    return-void
.end method

.method public static setText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 214
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/TextView;->requestLayout()V

    .line 216
    return-void
.end method

.method public static setTextColor(Landroid/widget/TextView;I)V
    .locals 4

    .prologue
    .line 236
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 237
    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/TextView;->invalidate()V

    .line 238
    return-void
.end method

.method public static setTextColors(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V
    .locals 4

    .prologue
    .line 241
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 242
    return-void
.end method

.method public static setTextHTML(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 203
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lcom/google/appinventor/components/runtime/util/TextViewUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    move-object v2, v0

    invoke-virtual {v2}, Landroid/widget/TextView;->requestLayout()V

    .line 205
    return-void
.end method
