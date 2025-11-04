.class public Lcom/google/zxing/client/android/camera/HoneycombMR2Util;
.super Ljava/lang/Object;
.source "HoneycombMR2Util.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 17
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/camera/HoneycombMR2Util;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static getSize(Landroid/view/Display;Landroid/graphics/Point;)V
    .locals 4

    .prologue
    .line 21
    move-object v0, p0

    .local v0, "display":Landroid/view/Display;
    move-object v1, p1

    .local v1, "pt":Landroid/graphics/Point;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 22
    return-void
.end method
