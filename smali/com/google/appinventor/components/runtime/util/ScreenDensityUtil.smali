.class public final Lcom/google/appinventor/components/runtime/util/ScreenDensityUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_NORMAL_SHORT_DIMENSION:I = 0x140

.field public static final MAXIMUM_ASPECT_RATIO:F = 1.7791667f


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 30
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static computeCompatibleScaling(Landroid/content/Context;)F
    .locals 9

    .prologue
    .line 41
    move-object v0, p0

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    move-object v1, v5

    .line 43
    new-instance v5, Landroid/graphics/Point;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    move-object v2, v5

    .line 44
    move-object v5, v0

    move-object v6, v2

    move-object v3, v6

    move-object v0, v5

    .line 1087
    new-instance v5, Landroid/util/DisplayMetrics;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    move-object v4, v5

    .line 1088
    move-object v5, v0

    const-string/jumbo v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 1089
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    move-object v0, v5

    .line 1091
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v5, v6, :cond_1

    .line 1093
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1094
    move-object v5, v3

    move-object v6, v4

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v6, v5, Landroid/graphics/Point;->x:I

    .line 1095
    move-object v5, v3

    move-object v6, v4

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v6, v5, Landroid/graphics/Point;->y:I

    .line 46
    :goto_0
    move-object v5, v2

    iget v5, v5, Landroid/graphics/Point;->x:I

    move v0, v5

    .line 47
    move-object v5, v2

    iget v5, v5, Landroid/graphics/Point;->y:I

    move v2, v5

    .line 50
    move v5, v0

    move v6, v2

    if-ge v5, v6, :cond_2

    .line 51
    move v5, v0

    move v3, v5

    .line 52
    move v5, v2

    move v4, v5

    .line 57
    :goto_1
    const/high16 v5, 0x43a00000    # 320.0f

    move-object v6, v1

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    move v1, v5

    .line 58
    move v5, v4

    int-to-float v5, v5

    move v6, v3

    int-to-float v6, v6

    div-float/2addr v5, v6

    move v8, v5

    move v5, v8

    move v6, v8

    .line 59
    move v3, v6

    const v6, 0x3fe3bbbc

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 60
    const v5, 0x3fe3bbbc

    move v3, v5

    .line 62
    :cond_0
    move v5, v1

    int-to-float v5, v5

    move v6, v3

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    move v3, v5

    .line 64
    move v5, v0

    move v6, v2

    if-ge v5, v6, :cond_3

    .line 65
    move v5, v1

    move v4, v5

    .line 66
    move v5, v3

    move v1, v5

    .line 72
    :goto_2
    move v5, v0

    int-to-float v5, v5

    move v6, v4

    int-to-float v6, v6

    div-float/2addr v5, v6

    move v0, v5

    .line 73
    move v5, v2

    int-to-float v5, v5

    move v6, v1

    int-to-float v6, v6

    div-float/2addr v5, v6

    move v1, v5

    .line 75
    const/high16 v5, 0x3f800000    # 1.0f

    move v6, v0

    move v7, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    const v7, 0x3fe3bbbc

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    move v0, v5

    return v0

    .line 1098
    :cond_1
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_0

    .line 54
    :cond_2
    move v5, v2

    move v3, v5

    .line 55
    move v5, v0

    move v4, v5

    goto :goto_1

    .line 68
    :cond_3
    move v5, v3

    move v4, v5

    goto :goto_2
.end method
