.class public Lcom/google/appinventor/components/runtime/util/KodularRippleDrawable;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 19
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static setRippleDrawable(Landroid/view/View;II)V
    .locals 9

    .prologue
    .line 24
    move-object v0, p0

    move v1, p1

    move v2, p2

    :try_start_0
    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move v5, v2

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object v1, v3

    .line 25
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    :goto_0
    return-void

    .line 26
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 27
    const-string/jumbo v3, "KodularRippleDrawable"

    move-object v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 29
    goto :goto_0
.end method
