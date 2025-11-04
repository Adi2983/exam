.class public final Lcom/google/zxing/client/android/ViewfinderView;
.super Landroid/view/View;
.source "ViewfinderView.java"


# static fields
.field private static final ANIMATION_DELAY:J = 0x50L

.field private static final CURRENT_POINT_OPACITY:I = 0xa0

.field private static final MAX_RESULT_POINTS:I = 0x14

.field private static final POINT_SIZE:I = 0x6

.field private static final SCANNER_ALPHA:[I


# instance fields
.field private cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

.field private final laserColor:I

.field private lastPossibleResultPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final maskColor:I

.field private final paint:Landroid/graphics/Paint;

.field private possibleResultPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation
.end field

.field private resultBitmap:Landroid/graphics/Bitmap;

.field private final resultColor:I

.field private final resultPointColor:I

.field private scannerAlpha:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/client/android/ViewfinderView;->SCANNER_ALPHA:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x40
        0x80
        0xc0
        0xff
        0xc0
        0x80
        0x40
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/ViewfinderView;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, p2

    .local v2, "attrs":Landroid/util/AttributeSet;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    move-object v3, v0

    new-instance v4, Landroid/graphics/Paint;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v4, v3, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    .line 64
    move-object v3, v0

    const/high16 v4, 0x60000000

    iput v4, v3, Lcom/google/zxing/client/android/ViewfinderView;->maskColor:I

    .line 65
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Lcom/google/zxing/client/android/ViewfinderView;->resultColor:I

    .line 66
    move-object v3, v0

    const/high16 v4, -0x340000

    iput v4, v3, Lcom/google/zxing/client/android/ViewfinderView;->laserColor:I

    .line 67
    move-object v3, v0

    const v4, -0x3f663400

    iput v4, v3, Lcom/google/zxing/client/android/ViewfinderView;->resultPointColor:I

    .line 68
    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lcom/google/zxing/client/android/ViewfinderView;->scannerAlpha:I

    .line 69
    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const/4 v6, 0x5

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, v3, Lcom/google/zxing/client/android/ViewfinderView;->possibleResultPoints:Ljava/util/List;

    .line 70
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/google/zxing/client/android/ViewfinderView;->lastPossibleResultPoints:Ljava/util/List;

    .line 71
    return-void
.end method


# virtual methods
.method public addPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .locals 11

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/ViewfinderView;
    move-object v1, p1

    .local v1, "point":Lcom/google/zxing/ResultPoint;
    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/client/android/ViewfinderView;->possibleResultPoints:Ljava/util/List;

    move-object v2, v6

    .line 193
    .local v2, "points":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/ResultPoint;>;"
    move-object v6, v2

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v3, v7

    monitor-enter v6

    .line 194
    move-object v6, v2

    move-object v7, v1

    :try_start_0
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 195
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    move v4, v6

    .line 196
    .local v4, "size":I
    move v6, v4

    const/16 v7, 0x14

    if-le v6, v7, :cond_0

    .line 198
    move-object v6, v2

    const/4 v7, 0x0

    move v8, v4

    const/16 v9, 0xa

    add-int/lit8 v8, v8, -0xa

    invoke-interface {v6, v7, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 200
    :cond_0
    move-object v6, v3

    monitor-exit v6

    .line 201
    return-void

    .line 200
    .end local v4    # "size":I
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v3

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v5

    throw v6
.end method

.method public drawResultBitmap(Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/ViewfinderView;
    move-object v1, p1

    .local v1, "barcode":Landroid/graphics/Bitmap;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/zxing/client/android/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    .line 188
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/zxing/client/android/ViewfinderView;->invalidate()V

    .line 189
    return-void
.end method

.method public drawViewfinder()V
    .locals 4

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/ViewfinderView;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/client/android/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    move-object v1, v2

    .line 174
    .local v1, "resultBitmap":Landroid/graphics/Bitmap;
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/zxing/client/android/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    .line 175
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 176
    move-object v2, v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 178
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/zxing/client/android/ViewfinderView;->invalidate()V

    .line 179
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 30

    .prologue
    .line 79
    move-object/from16 v3, p0

    .local v3, "this":Lcom/google/zxing/client/android/ViewfinderView;
    move-object/from16 v4, p1

    .local v4, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/zxing/client/android/ViewfinderView;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    move-object/from16 v21, v0

    if-nez v21, :cond_0

    .line 80
    .line 170
    :goto_0
    return-void

    .line 82
    :cond_0
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/zxing/client/android/ViewfinderView;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/zxing/client/android/camera/CameraManager;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v21

    move-object/from16 v5, v21

    .line 83
    .local v5, "frame":Landroid/graphics/Rect;
    move-object/from16 v21, v5

    if-nez v21, :cond_1

    .line 84
    goto :goto_0

    .line 86
    :cond_1
    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Canvas;->getWidth()I

    move-result v21

    move/from16 v6, v21

    .line 87
    .local v6, "width":I
    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Canvas;->getHeight()I

    move-result v21

    move/from16 v7, v21

    .line 90
    .local v7, "height":I
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/zxing/client/android/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget v0, v0, Lcom/google/zxing/client/android/ViewfinderView;->resultColor:I

    move/from16 v22, v0

    :goto_1
    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    move-object/from16 v21, v4

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v24, v6

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v25, v5

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    invoke-virtual/range {v21 .. v26}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 92
    move-object/from16 v21, v4

    const/16 v22, 0x0

    move-object/from16 v23, v5

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v25, v5

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    const/16 v26, 0x1

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    invoke-virtual/range {v21 .. v26}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 93
    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    const/16 v23, 0x1

    add-int/lit8 v22, v22, 0x1

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v23, v5

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v24, v6

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v25, v5

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    const/16 v26, 0x1

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    invoke-virtual/range {v21 .. v26}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 94
    move-object/from16 v21, v4

    const/16 v22, 0x0

    move-object/from16 v23, v5

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    const/16 v24, 0x1

    add-int/lit8 v23, v23, 0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v24, v6

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v25, v7

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    invoke-virtual/range {v21 .. v26}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 97
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    const/16 v22, -0x1

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    const/16 v23, 0x14

    add-int/lit8 v22, v22, -0x14

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v23, v5

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    const/16 v24, 0x14

    add-int/lit8 v23, v23, -0x14

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v25, v5

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    const/16 v26, 0x3c

    add-int/lit8 v25, v25, 0x3c

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    invoke-virtual/range {v21 .. v26}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 99
    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v23, v5

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    const/16 v24, 0x14

    add-int/lit8 v23, v23, -0x14

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    const/16 v25, 0x3c

    add-int/lit8 v24, v24, 0x3c

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v25, v5

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    invoke-virtual/range {v21 .. v26}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 100
    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v23, v5

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    const/16 v24, 0x14

    add-int/lit8 v23, v23, -0x14

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    const/16 v25, 0x14

    add-int/lit8 v24, v24, 0x14

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v25, v5

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    const/16 v26, 0x3c

    add-int/lit8 v25, v25, 0x3c

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    invoke-virtual/range {v21 .. v26}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 101
    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    const/16 v23, 0x3c

    add-int/lit8 v22, v22, -0x3c

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v23, v5

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    const/16 v24, 0x14

    add-int/lit8 v23, v23, -0x14

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v25, v5

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    invoke-virtual/range {v21 .. v26}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 102
    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    const/16 v23, 0x14

    add-int/lit8 v22, v22, -0x14

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v23, v5

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    const/16 v24, 0x3c

    add-int/lit8 v23, v23, -0x3c

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v25, v5

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    const/16 v26, 0x14

    add-int/lit8 v25, v25, 0x14

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    invoke-virtual/range {v21 .. v26}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 103
    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v23, v5

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    const/16 v25, 0x3c

    add-int/lit8 v24, v24, 0x3c

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v25, v5

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    const/16 v26, 0x14

    add-int/lit8 v25, v25, 0x14

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    invoke-virtual/range {v21 .. v26}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 104
    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v23, v5

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    const/16 v24, 0x3c

    add-int/lit8 v23, v23, -0x3c

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    const/16 v25, 0x14

    add-int/lit8 v24, v24, 0x14

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v25, v5

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    const/16 v26, 0x14

    add-int/lit8 v25, v25, 0x14

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    invoke-virtual/range {v21 .. v26}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 105
    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    const/16 v23, 0x3c

    add-int/lit8 v22, v22, -0x3c

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v23, v5

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v25, v5

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    const/16 v26, 0x14

    add-int/lit8 v25, v25, 0x14

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    invoke-virtual/range {v21 .. v26}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 107
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    const/16 v22, 0xa0

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 108
    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v23, v5

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v25, v5

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    invoke-virtual/range {v21 .. v26}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 109
    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v23, v5

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v25, v5

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    invoke-virtual/range {v21 .. v26}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 110
    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v23, v5

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v25, v5

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    invoke-virtual/range {v21 .. v26}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 111
    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v23, v5

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v25, v5

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    invoke-virtual/range {v21 .. v26}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 113
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/zxing/client/android/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v21, v0

    if-eqz v21, :cond_3

    .line 115
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    const/16 v22, 0xa0

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 116
    move-object/from16 v21, v4

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/zxing/client/android/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v24, v5

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    invoke-virtual/range {v21 .. v25}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 170
    :goto_2
    goto/16 :goto_0

    .line 90
    :cond_2
    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget v0, v0, Lcom/google/zxing/client/android/ViewfinderView;->maskColor:I

    move/from16 v22, v0

    goto/16 :goto_1

    .line 120
    :cond_3
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget v0, v0, Lcom/google/zxing/client/android/ViewfinderView;->laserColor:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    sget-object v22, Lcom/google/zxing/client/android/ViewfinderView;->SCANNER_ALPHA:[I

    move-object/from16 v23, v3

    move-object/from16 v0, v23

    iget v0, v0, Lcom/google/zxing/client/android/ViewfinderView;->scannerAlpha:I

    move/from16 v23, v0

    aget v22, v22, v23

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 122
    move-object/from16 v21, v3

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget v0, v0, Lcom/google/zxing/client/android/ViewfinderView;->scannerAlpha:I

    move/from16 v22, v0

    const/16 v23, 0x1

    add-int/lit8 v22, v22, 0x1

    sget-object v23, Lcom/google/zxing/client/android/ViewfinderView;->SCANNER_ALPHA:[I

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    rem-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/google/zxing/client/android/ViewfinderView;->scannerAlpha:I

    .line 123
    move-object/from16 v21, v5

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->height()I

    move-result v21

    const/16 v22, 0x2

    div-int/lit8 v21, v21, 0x2

    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move/from16 v8, v21

    .line 124
    .local v8, "middle":I
    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    const/16 v23, 0x2

    add-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v23, v8

    const/16 v24, 0x1

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    const/16 v25, 0x1

    add-int/lit8 v24, v24, -0x1

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v25, v8

    const/16 v26, 0x2

    add-int/lit8 v25, v25, 0x2

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v26, v3

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    invoke-virtual/range {v21 .. v26}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 126
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/zxing/client/android/ViewfinderView;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/google/zxing/client/android/camera/CameraManager;->getFramingRectInPreview()Landroid/graphics/Rect;

    move-result-object v21

    move-object/from16 v9, v21

    .line 127
    .local v9, "previewFrame":Landroid/graphics/Rect;
    move-object/from16 v21, v5

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->width()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v22, v9

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->width()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v10, v21

    .line 128
    .local v10, "scaleX":F
    move-object/from16 v21, v5

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->height()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v22, v9

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v11, v21

    .line 130
    .local v11, "scaleY":F
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/zxing/client/android/ViewfinderView;->possibleResultPoints:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v12, v21

    .line 131
    .local v12, "currentPossible":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/ResultPoint;>;"
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/zxing/client/android/ViewfinderView;->lastPossibleResultPoints:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v13, v21

    .line 132
    .local v13, "currentLast":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/ResultPoint;>;"
    move-object/from16 v21, v5

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move/from16 v14, v21

    .line 133
    .local v14, "frameLeft":I
    move-object/from16 v21, v5

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v15, v21

    .line 134
    .local v15, "frameTop":I
    move-object/from16 v21, v12

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 135
    move-object/from16 v21, v3

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/google/zxing/client/android/ViewfinderView;->lastPossibleResultPoints:Ljava/util/List;

    .line 149
    :goto_3
    move-object/from16 v21, v13

    if-eqz v21, :cond_7

    .line 150
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    const/16 v22, 0x50

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 151
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget v0, v0, Lcom/google/zxing/client/android/ViewfinderView;->resultPointColor:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    move-object/from16 v21, v13

    move-object/from16 v29, v21

    move-object/from16 v21, v29

    move-object/from16 v22, v29

    move-object/from16 v16, v22

    monitor-enter v21

    .line 153
    const/high16 v21, 0x40400000    # 3.0f

    move/from16 v17, v21

    .line 154
    .local v17, "radius":F
    move-object/from16 v21, v13

    :try_start_0
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    move-object/from16 v18, v21

    :goto_4
    move-object/from16 v21, v18

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_6

    move-object/from16 v21, v18

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/google/zxing/ResultPoint;

    move-object/from16 v19, v21

    .line 155
    .local v19, "point":Lcom/google/zxing/ResultPoint;
    move-object/from16 v21, v4

    move/from16 v22, v14

    move-object/from16 v23, v19

    invoke-virtual/range {v23 .. v23}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v23

    move/from16 v24, v10

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v23, v15

    move-object/from16 v24, v19

    .line 156
    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v24

    move/from16 v25, v11

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    add-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v24, v17

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    .line 155
    invoke-virtual/range {v21 .. v25}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 158
    goto :goto_4

    .line 137
    .end local v17    # "radius":F
    .end local v19    # "point":Lcom/google/zxing/ResultPoint;
    :cond_4
    move-object/from16 v21, v3

    new-instance v22, Ljava/util/ArrayList;

    move-object/from16 v29, v22

    move-object/from16 v22, v29

    move-object/from16 v23, v29

    const/16 v24, 0x5

    invoke-direct/range {v23 .. v24}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/google/zxing/client/android/ViewfinderView;->possibleResultPoints:Ljava/util/List;

    .line 138
    move-object/from16 v21, v3

    move-object/from16 v22, v12

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/google/zxing/client/android/ViewfinderView;->lastPossibleResultPoints:Ljava/util/List;

    .line 139
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    const/16 v22, 0xa0

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 140
    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget v0, v0, Lcom/google/zxing/client/android/ViewfinderView;->resultPointColor:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    move-object/from16 v21, v12

    move-object/from16 v29, v21

    move-object/from16 v21, v29

    move-object/from16 v22, v29

    move-object/from16 v16, v22

    monitor-enter v21

    .line 142
    move-object/from16 v21, v12

    :try_start_1
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    move-object/from16 v17, v21

    :goto_5
    move-object/from16 v21, v17

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_5

    move-object/from16 v21, v17

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/google/zxing/ResultPoint;

    move-object/from16 v18, v21

    .line 143
    .local v18, "point":Lcom/google/zxing/ResultPoint;
    move-object/from16 v21, v4

    move/from16 v22, v14

    move-object/from16 v23, v18

    invoke-virtual/range {v23 .. v23}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v23

    move/from16 v24, v10

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v23, v15

    move-object/from16 v24, v18

    .line 144
    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v24

    move/from16 v25, v11

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    add-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x40c00000    # 6.0f

    move-object/from16 v25, v3

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/google/zxing/client/android/ViewfinderView;->paint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    .line 143
    invoke-virtual/range {v21 .. v25}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 146
    goto :goto_5

    .line 147
    .end local v18    # "point":Lcom/google/zxing/ResultPoint;
    :cond_5
    move-object/from16 v21, v16

    monitor-exit v21

    goto/16 :goto_3

    :catchall_0
    move-exception v21

    move-object/from16 v19, v21

    move-object/from16 v21, v16

    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v21, v19

    throw v21

    .line 159
    .restart local v17    # "radius":F
    :cond_6
    move-object/from16 v21, v16

    :try_start_2
    monitor-exit v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 164
    .end local v17    # "radius":F
    :cond_7
    move-object/from16 v21, v3

    const-wide/16 v22, 0x50

    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    const/16 v25, 0x6

    add-int/lit8 v24, v24, -0x6

    move-object/from16 v25, v5

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    const/16 v26, 0x6

    add-int/lit8 v25, v25, -0x6

    move-object/from16 v26, v5

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v26, v0

    const/16 v27, 0x6

    add-int/lit8 v26, v26, 0x6

    move-object/from16 v27, v5

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    const/16 v28, 0x6

    add-int/lit8 v27, v27, 0x6

    invoke-virtual/range {v21 .. v27}, Lcom/google/zxing/client/android/ViewfinderView;->postInvalidateDelayed(JIIII)V

    goto/16 :goto_2

    .line 159
    .restart local v17    # "radius":F
    :catchall_1
    move-exception v21

    move-object/from16 v20, v21

    move-object/from16 v21, v16

    :try_start_3
    monitor-exit v21
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v21, v20

    throw v21
.end method

.method public setCameraManager(Lcom/google/zxing/client/android/camera/CameraManager;)V
    .locals 4

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/ViewfinderView;
    move-object v1, p1

    .local v1, "cameraManager":Lcom/google/zxing/client/android/camera/CameraManager;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/zxing/client/android/ViewfinderView;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    .line 75
    return-void
.end method
