.class public final Lcom/google/zxing/client/android/camera/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# static fields
.field private static final MIN_FRAME_HEIGHT:I = 0xf0

.field private static final MIN_FRAME_WIDTH:I = 0xf0

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;

.field private camera:Landroid/hardware/Camera;

.field private final configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

.field private final context:Landroid/content/Context;

.field private framingRect:Landroid/graphics/Rect;

.field private framingRectInPreview:Landroid/graphics/Rect;

.field private initialized:Z

.field private final previewCallback:Lcom/google/zxing/client/android/camera/PreviewCallback;

.field private previewing:Z

.field private requestedFramingRectHeight:I

.field private requestedFramingRectWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/camera/CameraManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/camera/CameraManager;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 62
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/zxing/client/android/camera/CameraManager;->context:Landroid/content/Context;

    .line 63
    move-object v2, v0

    new-instance v3, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/google/zxing/client/android/camera/CameraManager;->configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    .line 64
    move-object v2, v0

    new-instance v3, Lcom/google/zxing/client/android/camera/PreviewCallback;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/client/android/camera/CameraManager;->configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    invoke-direct {v4, v5}, Lcom/google/zxing/client/android/camera/PreviewCallback;-><init>(Lcom/google/zxing/client/android/camera/CameraConfigurationManager;)V

    iput-object v3, v2, Lcom/google/zxing/client/android/camera/CameraManager;->previewCallback:Lcom/google/zxing/client/android/camera/PreviewCallback;

    .line 65
    return-void
.end method


# virtual methods
.method public buildLuminanceSource([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;
    .locals 16

    .prologue
    .line 287
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/camera/CameraManager;
    move-object/from16 v1, p1

    .local v1, "data":[B
    move/from16 v2, p2

    .local v2, "width":I
    move/from16 v3, p3

    .local v3, "height":I
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/zxing/client/android/camera/CameraManager;->getFramingRectInPreview()Landroid/graphics/Rect;

    move-result-object v5

    move-object v4, v5

    .line 288
    .local v4, "rect":Landroid/graphics/Rect;
    move-object v5, v4

    if-nez v5, :cond_0

    .line 289
    const/4 v5, 0x0

    move-object v0, v5

    .line 292
    .end local v0    # "this":Lcom/google/zxing/client/android/camera/CameraManager;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/google/zxing/client/android/camera/CameraManager;
    :cond_0
    new-instance v5, Lcom/google/zxing/PlanarYUVLuminanceSource;

    move-object v15, v5

    move-object v5, v15

    move-object v6, v15

    move-object v7, v1

    move v8, v2

    move v9, v3

    move-object v10, v4

    iget v10, v10, Landroid/graphics/Rect;->left:I

    move-object v11, v4

    iget v11, v11, Landroid/graphics/Rect;->top:I

    move-object v12, v4

    .line 293
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    move-object v13, v4

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    const/4 v14, 0x0

    invoke-direct/range {v6 .. v14}, Lcom/google/zxing/PlanarYUVLuminanceSource;-><init>([BIIIIIIZ)V

    .line 292
    move-object v0, v5

    goto :goto_0
.end method

.method public declared-synchronized closeDriver()V
    .locals 4

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/camera/CameraManager;
    move-object v3, p0

    monitor-enter v3

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 127
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 128
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 131
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/zxing/client/android/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    .line 132
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/zxing/client/android/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :cond_0
    monitor-exit v3

    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v3

    .end local v0    # "this":Lcom/google/zxing/client/android/camera/CameraManager;
    throw v0
.end method

.method public declared-synchronized getFramingRect()Landroid/graphics/Rect;
    .locals 16

    .prologue
    .line 202
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/camera/CameraManager;
    move-object/from16 v14, p0

    monitor-enter v14

    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lcom/google/zxing/client/android/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    if-nez v6, :cond_3

    .line 203
    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_0

    .line 204
    const/4 v6, 0x0

    move-object v0, v6

    .line 221
    .end local v0    # "this":Lcom/google/zxing/client/android/camera/CameraManager;
    :goto_0
    monitor-exit v14

    return-object v0

    .line 206
    .restart local v0    # "this":Lcom/google/zxing/client/android/camera/CameraManager;
    :cond_0
    move-object v6, v0

    :try_start_1
    iget-object v6, v6, Lcom/google/zxing/client/android/camera/CameraManager;->configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {v6}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v6

    move-object v1, v6

    .line 207
    .local v1, "screenResolution":Landroid/graphics/Point;
    move-object v6, v1

    if-nez v6, :cond_1

    .line 209
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    .line 211
    :cond_1
    move-object v6, v1

    iget v6, v6, Landroid/graphics/Point;->x:I

    const/4 v7, 0x3

    mul-int/lit8 v6, v6, 0x3

    const/4 v7, 0x4

    div-int/lit8 v6, v6, 0x4

    move v2, v6

    .line 212
    .local v2, "width":I
    move v6, v2

    const/16 v7, 0xf0

    if-ge v6, v7, :cond_2

    .line 213
    const/16 v6, 0xf0

    move v2, v6

    .line 215
    :cond_2
    move v6, v2

    move v3, v6

    .line 216
    .local v3, "height":I
    move-object v6, v1

    iget v6, v6, Landroid/graphics/Point;->x:I

    move v7, v2

    sub-int/2addr v6, v7

    const/4 v7, 0x2

    div-int/lit8 v6, v6, 0x2

    move v4, v6

    .line 217
    .local v4, "leftOffset":I
    move-object v6, v1

    iget v6, v6, Landroid/graphics/Point;->y:I

    move v7, v3

    sub-int/2addr v6, v7

    const/4 v7, 0x2

    div-int/lit8 v6, v6, 0x2

    move v5, v6

    .line 218
    .local v5, "topOffset":I
    move-object v6, v0

    new-instance v7, Landroid/graphics/Rect;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    move v9, v4

    move v10, v5

    move v11, v4

    move v12, v2

    add-int/2addr v11, v12

    move v12, v5

    move v13, v3

    add-int/2addr v12, v13

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, v6, Lcom/google/zxing/client/android/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    .line 219
    sget-object v6, Lcom/google/zxing/client/android/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Calculated framing rect: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lcom/google/zxing/client/android/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 221
    .end local v1    # "screenResolution":Landroid/graphics/Point;
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v4    # "leftOffset":I
    .end local v5    # "topOffset":I
    :cond_3
    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/client/android/camera/CameraManager;->framingRect:Landroid/graphics/Rect;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v6

    goto :goto_0

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit v14

    .end local v0    # "this":Lcom/google/zxing/client/android/camera/CameraManager;
    throw v0
.end method

.method public declared-synchronized getFramingRectInPreview()Landroid/graphics/Rect;
    .locals 10

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/camera/CameraManager;
    move-object v8, p0

    monitor-enter v8

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/google/zxing/client/android/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    if-nez v5, :cond_3

    .line 230
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/zxing/client/android/camera/CameraManager;->getFramingRect()Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    move-object v1, v5

    .line 231
    .local v1, "framingRect":Landroid/graphics/Rect;
    move-object v5, v1

    if-nez v5, :cond_0

    .line 232
    const/4 v5, 0x0

    move-object v0, v5

    .line 247
    .end local v0    # "this":Lcom/google/zxing/client/android/camera/CameraManager;
    .end local v1    # "framingRect":Landroid/graphics/Rect;
    :goto_0
    monitor-exit v8

    return-object v0

    .line 234
    .restart local v0    # "this":Lcom/google/zxing/client/android/camera/CameraManager;
    .restart local v1    # "framingRect":Landroid/graphics/Rect;
    :cond_0
    :try_start_1
    new-instance v5, Landroid/graphics/Rect;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    invoke-direct {v6, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    move-object v2, v5

    .line 235
    .local v2, "rect":Landroid/graphics/Rect;
    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/client/android/camera/CameraManager;->configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {v5}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v5

    move-object v3, v5

    .line 236
    .local v3, "cameraResolution":Landroid/graphics/Point;
    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/client/android/camera/CameraManager;->configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {v5}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v5

    move-object v4, v5

    .line 237
    .local v4, "screenResolution":Landroid/graphics/Point;
    move-object v5, v3

    if-eqz v5, :cond_1

    move-object v5, v4

    if-nez v5, :cond_2

    .line 239
    :cond_1
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    .line 241
    :cond_2
    move-object v5, v2

    move-object v6, v2

    iget v6, v6, Landroid/graphics/Rect;->left:I

    move-object v7, v3

    iget v7, v7, Landroid/graphics/Point;->y:I

    mul-int/2addr v6, v7

    move-object v7, v4

    iget v7, v7, Landroid/graphics/Point;->x:I

    div-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 242
    move-object v5, v2

    move-object v6, v2

    iget v6, v6, Landroid/graphics/Rect;->right:I

    move-object v7, v3

    iget v7, v7, Landroid/graphics/Point;->y:I

    mul-int/2addr v6, v7

    move-object v7, v4

    iget v7, v7, Landroid/graphics/Point;->x:I

    div-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 243
    move-object v5, v2

    move-object v6, v2

    iget v6, v6, Landroid/graphics/Rect;->top:I

    move-object v7, v3

    iget v7, v7, Landroid/graphics/Point;->x:I

    mul-int/2addr v6, v7

    move-object v7, v4

    iget v7, v7, Landroid/graphics/Point;->y:I

    div-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 244
    move-object v5, v2

    move-object v6, v2

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    move-object v7, v3

    iget v7, v7, Landroid/graphics/Point;->x:I

    mul-int/2addr v6, v7

    move-object v7, v4

    iget v7, v7, Landroid/graphics/Point;->y:I

    div-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 245
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/google/zxing/client/android/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    .line 247
    .end local v1    # "framingRect":Landroid/graphics/Rect;
    .end local v2    # "rect":Landroid/graphics/Rect;
    .end local v3    # "cameraResolution":Landroid/graphics/Point;
    .end local v4    # "screenResolution":Landroid/graphics/Point;
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/client/android/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v5

    goto :goto_0

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit v8

    .end local v0    # "this":Lcom/google/zxing/client/android/camera/CameraManager;
    throw v0
.end method

.method public declared-synchronized isOpen()Z
    .locals 3

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/camera/CameraManager;
    move-object v2, p0

    monitor-enter v2

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/android/camera/CameraManager;
    monitor-exit v2

    return v0

    .restart local v0    # "this":Lcom/google/zxing/client/android/camera/CameraManager;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    .end local v0    # "this":Lcom/google/zxing/client/android/camera/CameraManager;
    throw v0
.end method

.method public declared-synchronized openDriver(Landroid/view/SurfaceHolder;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/camera/CameraManager;
    move-object v1, p1

    .local v1, "holder":Landroid/view/SurfaceHolder;
    move-object v10, p0

    monitor-enter v10

    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    move-object v2, v7

    .line 75
    .local v2, "theCamera":Landroid/hardware/Camera;
    move-object v7, v2

    if-nez v7, :cond_1

    .line 76
    new-instance v7, Lcom/google/zxing/client/android/camera/open/OpenCameraManager;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Lcom/google/zxing/client/android/camera/open/OpenCameraManager;-><init>()V

    invoke-virtual {v7}, Lcom/google/zxing/client/android/camera/open/OpenCameraManager;->build()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/zxing/client/android/camera/open/OpenCameraInterface;

    invoke-interface {v7}, Lcom/google/zxing/client/android/camera/open/OpenCameraInterface;->open()Landroid/hardware/Camera;

    move-result-object v7

    move-object v2, v7

    .line 77
    move-object v7, v2

    if-nez v7, :cond_0

    .line 78
    new-instance v7, Ljava/io/IOException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/io/IOException;-><init>()V

    throw v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .end local v2    # "theCamera":Landroid/hardware/Camera;
    :catchall_0
    move-exception v0

    monitor-exit v10

    .end local v0    # "this":Lcom/google/zxing/client/android/camera/CameraManager;
    throw v0

    .line 80
    .restart local v0    # "this":Lcom/google/zxing/client/android/camera/CameraManager;
    .restart local v2    # "theCamera":Landroid/hardware/Camera;
    :cond_0
    move-object v7, v0

    move-object v8, v2

    :try_start_1
    iput-object v8, v7, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    .line 82
    :cond_1
    move-object v7, v2

    move-object v8, v1

    invoke-virtual {v7, v8}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 84
    move-object v7, v0

    iget-boolean v7, v7, Lcom/google/zxing/client/android/camera/CameraManager;->initialized:Z

    if-nez v7, :cond_2

    .line 85
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/google/zxing/client/android/camera/CameraManager;->initialized:Z

    .line 86
    move-object v7, v0

    iget-object v7, v7, Lcom/google/zxing/client/android/camera/CameraManager;->configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    move-object v8, v2

    invoke-virtual {v7, v8}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->initFromCameraParameters(Landroid/hardware/Camera;)V

    .line 87
    move-object v7, v0

    iget v7, v7, Lcom/google/zxing/client/android/camera/CameraManager;->requestedFramingRectWidth:I

    if-lez v7, :cond_2

    move-object v7, v0

    iget v7, v7, Lcom/google/zxing/client/android/camera/CameraManager;->requestedFramingRectHeight:I

    if-lez v7, :cond_2

    .line 88
    move-object v7, v0

    move-object v8, v0

    iget v8, v8, Lcom/google/zxing/client/android/camera/CameraManager;->requestedFramingRectWidth:I

    move-object v9, v0

    iget v9, v9, Lcom/google/zxing/client/android/camera/CameraManager;->requestedFramingRectHeight:I

    invoke-virtual {v7, v8, v9}, Lcom/google/zxing/client/android/camera/CameraManager;->setManualFramingRect(II)V

    .line 89
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Lcom/google/zxing/client/android/camera/CameraManager;->requestedFramingRectWidth:I

    .line 90
    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Lcom/google/zxing/client/android/camera/CameraManager;->requestedFramingRectHeight:I

    .line 94
    :cond_2
    move-object v7, v2

    invoke-virtual {v7}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    move-object v3, v7

    .line 95
    .local v3, "parameters":Landroid/hardware/Camera$Parameters;
    move-object v7, v3

    if-nez v7, :cond_4

    const/4 v7, 0x0

    :goto_0
    move-object v4, v7

    .line 97
    .local v4, "parametersFlattened":Ljava/lang/String;
    move-object v7, v0

    :try_start_2
    iget-object v7, v7, Lcom/google/zxing/client/android/camera/CameraManager;->configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    move-object v8, v2

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->setDesiredCameraParameters(Landroid/hardware/Camera;Z)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    .line 116
    :cond_3
    :goto_1
    monitor-exit v10

    return-void

    .line 95
    .end local v4    # "parametersFlattened":Ljava/lang/String;
    :cond_4
    move-object v7, v3

    :try_start_3
    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 98
    .restart local v4    # "parametersFlattened":Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v5, v7

    .line 100
    .local v5, "re":Ljava/lang/RuntimeException;
    sget-object v7, Lcom/google/zxing/client/android/camera/CameraManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Camera rejected parameters. Setting only minimal safe-mode parameters"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 101
    sget-object v7, Lcom/google/zxing/client/android/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Resetting to saved camera params: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 103
    move-object v7, v4

    if-eqz v7, :cond_3

    .line 104
    move-object v7, v2

    invoke-virtual {v7}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v7

    move-object v3, v7

    .line 105
    move-object v7, v3

    move-object v8, v4

    invoke-virtual {v7, v8}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 107
    move-object v7, v2

    move-object v8, v3

    :try_start_4
    invoke-virtual {v7, v8}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 108
    move-object v7, v0

    iget-object v7, v7, Lcom/google/zxing/client/android/camera/CameraManager;->configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    move-object v8, v2

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->setDesiredCameraParameters(Landroid/hardware/Camera;Z)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 112
    goto :goto_1

    .line 109
    :catch_1
    move-exception v7

    move-object v6, v7

    .line 111
    .local v6, "re2":Ljava/lang/RuntimeException;
    :try_start_5
    sget-object v7, Lcom/google/zxing/client/android/camera/CameraManager;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "Camera rejected even safe-mode parameters! No configuration"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v7

    goto :goto_1
.end method

.method public declared-synchronized requestPreviewFrame(Landroid/os/Handler;I)V
    .locals 8

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/camera/CameraManager;
    move-object v1, p1

    .local v1, "handler":Landroid/os/Handler;
    move v2, p2

    .local v2, "message":I
    move-object v7, p0

    monitor-enter v7

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    move-object v3, v4

    .line 188
    .local v3, "theCamera":Landroid/hardware/Camera;
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-boolean v4, v4, Lcom/google/zxing/client/android/camera/CameraManager;->previewing:Z

    if-eqz v4, :cond_0

    .line 189
    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/client/android/camera/CameraManager;->previewCallback:Lcom/google/zxing/client/android/camera/PreviewCallback;

    move-object v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Lcom/google/zxing/client/android/camera/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 190
    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/client/android/camera/CameraManager;->previewCallback:Lcom/google/zxing/client/android/camera/PreviewCallback;

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    :cond_0
    monitor-exit v7

    return-void

    .line 187
    .end local v3    # "theCamera":Landroid/hardware/Camera;
    :catchall_0
    move-exception v0

    monitor-exit v7

    .end local v0    # "this":Lcom/google/zxing/client/android/camera/CameraManager;
    throw v0
.end method

.method public declared-synchronized setManualFramingRect(II)V
    .locals 16

    .prologue
    .line 258
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/camera/CameraManager;
    move/from16 v1, p1

    .local v1, "width":I
    move/from16 v2, p2

    .local v2, "height":I
    move-object/from16 v14, p0

    monitor-enter v14

    move-object v6, v0

    :try_start_0
    iget-boolean v6, v6, Lcom/google/zxing/client/android/camera/CameraManager;->initialized:Z

    if-eqz v6, :cond_2

    .line 259
    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/client/android/camera/CameraManager;->configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    invoke-virtual {v6}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v6

    move-object v3, v6

    .line 260
    .local v3, "screenResolution":Landroid/graphics/Point;
    move v6, v1

    move-object v7, v3

    iget v7, v7, Landroid/graphics/Point;->x:I

    if-le v6, v7, :cond_0

    .line 261
    move-object v6, v3

    iget v6, v6, Landroid/graphics/Point;->x:I

    move v1, v6

    .line 263
    :cond_0
    move v6, v2

    move-object v7, v3

    iget v7, v7, Landroid/graphics/Point;->y:I

    if-le v6, v7, :cond_1

    .line 264
    move-object v6, v3

    iget v6, v6, Landroid/graphics/Point;->y:I

    move v2, v6

    .line 266
    :cond_1
    move-object v6, v3

    iget v6, v6, Landroid/graphics/Point;->x:I

    move v7, v1

    sub-int/2addr v6, v7

    const/4 v7, 0x2

    div-int/lit8 v6, v6, 0x2

    move v4, v6

    .line 267
    .local v4, "leftOffset":I
    move-object v6, v3

    iget v6, v6, Landroid/graphics/Point;->y:I

    move v7, v2

    sub-int/2addr v6, v7

    const/4 v7, 0x2

    div-int/lit8 v6, v6, 0x2

    move v5, v6

    .line 268
    .local v5, "topOffset":I
    move-object v6, v0

    new-instance v7, Landroid/graphics/Rect;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    move v9, v4

    move v10, v5

    move v11, v4

    move v12, v1

    add-int/2addr v11, v12

    move v12, v5

    move v13, v2

    add-int/2addr v12, v13

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, v6, Lcom/google/zxing/client/android/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    .line 269
    sget-object v6, Lcom/google/zxing/client/android/camera/CameraManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Calculated manual framing rect: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lcom/google/zxing/client/android/camera/CameraManager;->framingRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 270
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/google/zxing/client/android/camera/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    .line 275
    .end local v3    # "screenResolution":Landroid/graphics/Point;
    .end local v4    # "leftOffset":I
    .end local v5    # "topOffset":I
    :goto_0
    monitor-exit v14

    return-void

    .line 272
    :cond_2
    move-object v6, v0

    move v7, v1

    :try_start_1
    iput v7, v6, Lcom/google/zxing/client/android/camera/CameraManager;->requestedFramingRectWidth:I

    .line 273
    move-object v6, v0

    move v7, v2

    iput v7, v6, Lcom/google/zxing/client/android/camera/CameraManager;->requestedFramingRectHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit v14

    .end local v0    # "this":Lcom/google/zxing/client/android/camera/CameraManager;
    throw v0
.end method

.method public declared-synchronized setTorch(Z)V
    .locals 6

    .prologue
    .line 167
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/camera/CameraManager;
    move v1, p1

    .local v1, "newSetting":Z
    move-object v5, p0

    monitor-enter v5

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v2, :cond_1

    .line 168
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    if-eqz v2, :cond_0

    .line 169
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    invoke-virtual {v2}, Lcom/google/zxing/client/android/camera/AutoFocusManager;->stop()V

    .line 171
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/client/android/camera/CameraManager;->configManager:Lcom/google/zxing/client/android/camera/CameraConfigurationManager;

    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    move v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->setTorch(Landroid/hardware/Camera;Z)V

    .line 172
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    if-eqz v2, :cond_1

    .line 173
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    invoke-virtual {v2}, Lcom/google/zxing/client/android/camera/AutoFocusManager;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    :cond_1
    monitor-exit v5

    return-void

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit v5

    .end local v0    # "this":Lcom/google/zxing/client/android/camera/CameraManager;
    throw v0
.end method

.method public declared-synchronized startPreview()V
    .locals 9

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/camera/CameraManager;
    move-object v7, p0

    monitor-enter v7

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    move-object v1, v2

    .line 141
    .local v1, "theCamera":Landroid/hardware/Camera;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/zxing/client/android/camera/CameraManager;->previewing:Z

    if-nez v2, :cond_0

    .line 142
    move-object v2, v1

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V

    .line 143
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/zxing/client/android/camera/CameraManager;->previewing:Z

    .line 144
    move-object v2, v0

    new-instance v3, Lcom/google/zxing/client/android/camera/AutoFocusManager;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/client/android/camera/CameraManager;->context:Landroid/content/Context;

    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/client/android/camera/AutoFocusManager;-><init>(Landroid/content/Context;Landroid/hardware/Camera;)V

    iput-object v3, v2, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :cond_0
    monitor-exit v7

    return-void

    .line 140
    .end local v1    # "theCamera":Landroid/hardware/Camera;
    :catchall_0
    move-exception v0

    monitor-exit v7

    .end local v0    # "this":Lcom/google/zxing/client/android/camera/CameraManager;
    throw v0
.end method

.method public declared-synchronized stopPreview()V
    .locals 5

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/camera/CameraManager;
    move-object v4, p0

    monitor-enter v4

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    if-eqz v1, :cond_0

    .line 153
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    invoke-virtual {v1}, Lcom/google/zxing/client/android/camera/AutoFocusManager;->stop()V

    .line 154
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/zxing/client/android/camera/CameraManager;->autoFocusManager:Lcom/google/zxing/client/android/camera/AutoFocusManager;

    .line 156
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-boolean v1, v1, Lcom/google/zxing/client/android/camera/CameraManager;->previewing:Z

    if-eqz v1, :cond_1

    .line 157
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/android/camera/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 158
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/android/camera/CameraManager;->previewCallback:Lcom/google/zxing/client/android/camera/PreviewCallback;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/zxing/client/android/camera/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 159
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/zxing/client/android/camera/CameraManager;->previewing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :cond_1
    monitor-exit v4

    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit v4

    .end local v0    # "this":Lcom/google/zxing/client/android/camera/CameraManager;
    throw v0
.end method
