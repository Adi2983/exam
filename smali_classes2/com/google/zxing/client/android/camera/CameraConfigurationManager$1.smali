.class Lcom/google/zxing/client/android/camera/CameraConfigurationManager$1;
.super Ljava/lang/Object;
.source "CameraConfigurationManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->findBestPreviewSizeValue(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/hardware/Camera$Size;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;


# direct methods
.method constructor <init>(Lcom/google/zxing/client/android/camera/CameraConfigurationManager;)V
    .locals 4

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/camera/CameraConfigurationManager$1;
    move-object v1, p1

    .local v1, "this$0":Lcom/google/zxing/client/android/camera/CameraConfigurationManager;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/zxing/client/android/camera/CameraConfigurationManager$1;->this$0:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I
    .locals 7

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/camera/CameraConfigurationManager$1;
    move-object v1, p1

    .local v1, "a":Landroid/hardware/Camera$Size;
    move-object v2, p2

    .local v2, "b":Landroid/hardware/Camera$Size;
    move-object v5, v1

    iget v5, v5, Landroid/hardware/Camera$Size;->height:I

    move-object v6, v1

    iget v6, v6, Landroid/hardware/Camera$Size;->width:I

    mul-int/2addr v5, v6

    move v3, v5

    .line 178
    .local v3, "aPixels":I
    move-object v5, v2

    iget v5, v5, Landroid/hardware/Camera$Size;->height:I

    move-object v6, v2

    iget v6, v6, Landroid/hardware/Camera$Size;->width:I

    mul-int/2addr v5, v6

    move v4, v5

    .line 179
    .local v4, "bPixels":I
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_0

    .line 180
    const/4 v5, -0x1

    move v0, v5

    .line 185
    .end local v0    # "this":Lcom/google/zxing/client/android/camera/CameraConfigurationManager$1;
    :goto_0
    return v0

    .line 182
    .restart local v0    # "this":Lcom/google/zxing/client/android/camera/CameraConfigurationManager$1;
    :cond_0
    move v5, v4

    move v6, v3

    if-le v5, v6, :cond_1

    .line 183
    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    .line 185
    :cond_1
    const/4 v5, 0x0

    move v0, v5

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    .prologue
    .line 174
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/camera/CameraConfigurationManager$1;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Landroid/hardware/Camera$Size;

    move-object v5, v2

    check-cast v5, Landroid/hardware/Camera$Size;

    invoke-virtual {v3, v4, v5}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager$1;->compare(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/google/zxing/client/android/camera/CameraConfigurationManager$1;
    return v0
.end method
