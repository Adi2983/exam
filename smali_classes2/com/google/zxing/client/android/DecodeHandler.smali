.class final Lcom/google/zxing/client/android/DecodeHandler;
.super Landroid/os/Handler;
.source "DecodeHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Lcom/google/zxing/client/android/AppInvCaptureActivity;

.field private final multiFormatReader:Lcom/google/zxing/MultiFormatReader;

.field private running:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/google/zxing/client/android/DecodeHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/DecodeHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/zxing/client/android/AppInvCaptureActivity;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/client/android/AppInvCaptureActivity;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/DecodeHandler;
    move-object v1, p1

    .local v1, "activity":Lcom/google/zxing/client/android/AppInvCaptureActivity;
    move-object v2, p2

    .local v2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    move-object v3, v0

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 43
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/google/zxing/client/android/DecodeHandler;->running:Z

    .line 46
    move-object v3, v0

    new-instance v4, Lcom/google/zxing/MultiFormatReader;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iput-object v4, v3, Lcom/google/zxing/client/android/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    .line 47
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/client/android/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 48
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/google/zxing/client/android/DecodeHandler;->activity:Lcom/google/zxing/client/android/AppInvCaptureActivity;

    .line 49
    return-void
.end method

.method private decode([BII)V
    .locals 25

    .prologue
    .line 76
    move-object/from16 v2, p0

    .local v2, "this":Lcom/google/zxing/client/android/DecodeHandler;
    move-object/from16 v3, p1

    .local v3, "data":[B
    move/from16 v4, p2

    .local v4, "width":I
    move/from16 v5, p3

    .local v5, "height":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v6, v18

    .line 77
    .local v6, "start":J
    const/16 v18, 0x0

    move-object/from16 v8, v18

    .line 78
    .local v8, "rawResult":Lcom/google/zxing/Result;
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    move-object/from16 v9, v18

    .line 79
    .local v9, "rotatedData":[B
    const/16 v18, 0x0

    move/from16 v10, v18

    .local v10, "y":I
    :goto_0
    move/from16 v18, v10

    move/from16 v19, v5

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    .line 80
    const/16 v18, 0x0

    move/from16 v11, v18

    .local v11, "x":I
    :goto_1
    move/from16 v18, v11

    move/from16 v19, v4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 81
    move-object/from16 v18, v9

    move/from16 v19, v11

    move/from16 v20, v5

    mul-int v19, v19, v20

    move/from16 v20, v5

    add-int v19, v19, v20

    move/from16 v20, v10

    sub-int v19, v19, v20

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    move-object/from16 v20, v3

    move/from16 v21, v11

    move/from16 v22, v10

    move/from16 v23, v4

    mul-int v22, v22, v23

    add-int v21, v21, v22

    aget-byte v20, v20, v21

    aput-byte v20, v18, v19

    .line 80
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 79
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 84
    .end local v11    # "x":I
    :cond_1
    move/from16 v18, v4

    move/from16 v10, v18

    .line 85
    .local v10, "tmp":I
    move/from16 v18, v5

    move/from16 v4, v18

    .line 86
    move/from16 v18, v10

    move/from16 v5, v18

    .line 88
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/zxing/client/android/DecodeHandler;->activity:Lcom/google/zxing/client/android/AppInvCaptureActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->getCameraManager()Lcom/google/zxing/client/android/camera/CameraManager;

    move-result-object v18

    move-object/from16 v19, v9

    move/from16 v20, v4

    move/from16 v21, v5

    invoke-virtual/range {v18 .. v21}, Lcom/google/zxing/client/android/camera/CameraManager;->buildLuminanceSource([BII)Lcom/google/zxing/PlanarYUVLuminanceSource;

    move-result-object v18

    move-object/from16 v11, v18

    .line 89
    .local v11, "source":Lcom/google/zxing/PlanarYUVLuminanceSource;
    move-object/from16 v18, v11

    if-eqz v18, :cond_2

    .line 90
    new-instance v18, Lcom/google/zxing/BinaryBitmap;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    new-instance v20, Lcom/google/zxing/common/HybridBinarizer;

    move-object/from16 v24, v20

    move-object/from16 v20, v24

    move-object/from16 v21, v24

    move-object/from16 v22, v11

    invoke-direct/range {v21 .. v22}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct/range {v19 .. v20}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    move-object/from16 v12, v18

    .line 92
    .local v12, "bitmap":Lcom/google/zxing/BinaryBitmap;
    move-object/from16 v18, v2

    :try_start_0
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/zxing/client/android/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    move-object/from16 v18, v0

    move-object/from16 v19, v12

    invoke-virtual/range {v18 .. v19}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v18

    move-object/from16 v8, v18

    .line 96
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/zxing/client/android/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 97
    .line 100
    .end local v12    # "bitmap":Lcom/google/zxing/BinaryBitmap;
    :cond_2
    :goto_2
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/zxing/client/android/DecodeHandler;->activity:Lcom/google/zxing/client/android/AppInvCaptureActivity;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->getHandler()Landroid/os/Handler;

    move-result-object v18

    move-object/from16 v12, v18

    .line 101
    .local v12, "handler":Landroid/os/Handler;
    move-object/from16 v18, v8

    if-eqz v18, :cond_4

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v13, v18

    .line 104
    .local v13, "end":J
    sget-object v18, Lcom/google/zxing/client/android/DecodeHandler;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v24, v19

    move-object/from16 v19, v24

    move-object/from16 v20, v24

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Found barcode in "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-wide/from16 v20, v13

    move-wide/from16 v22, v6

    sub-long v20, v20, v22

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " ms"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    .line 105
    move-object/from16 v18, v12

    if-eqz v18, :cond_3

    .line 106
    move-object/from16 v18, v12

    const/16 v19, 0x3

    move-object/from16 v20, v8

    invoke-static/range {v18 .. v20}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    move-object/from16 v15, v18

    .line 107
    .local v15, "message":Landroid/os/Message;
    new-instance v18, Landroid/os/Bundle;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v16, v18

    .line 108
    .local v16, "bundle":Landroid/os/Bundle;
    move-object/from16 v18, v11

    move-object/from16 v19, v11

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/PlanarYUVLuminanceSource;->renderCroppedGreyscaleBitmap()[I

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/google/zxing/client/android/DecodeHandler;->toBitmap(Lcom/google/zxing/LuminanceSource;[I)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v17, v18

    .line 109
    .local v17, "grayscaleBitmap":Landroid/graphics/Bitmap;
    move-object/from16 v18, v16

    const-string/jumbo v19, "barcode_bitmap"

    move-object/from16 v20, v17

    invoke-virtual/range {v18 .. v20}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 110
    move-object/from16 v18, v15

    move-object/from16 v19, v16

    invoke-virtual/range {v18 .. v19}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 111
    move-object/from16 v18, v15

    invoke-virtual/range {v18 .. v18}, Landroid/os/Message;->sendToTarget()V

    .line 113
    .line 119
    .end local v13    # "end":J
    .end local v15    # "message":Landroid/os/Message;
    .end local v16    # "bundle":Landroid/os/Bundle;
    .end local v17    # "grayscaleBitmap":Landroid/graphics/Bitmap;
    :cond_3
    :goto_3
    return-void

    .line 93
    .local v12, "bitmap":Lcom/google/zxing/BinaryBitmap;
    :catch_0
    move-exception v18

    move-object/from16 v13, v18

    .line 96
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/zxing/client/android/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 97
    goto/16 :goto_2

    .line 96
    :catchall_0
    move-exception v18

    move-object/from16 v14, v18

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/zxing/client/android/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 97
    move-object/from16 v18, v14

    throw v18

    .line 114
    .local v12, "handler":Landroid/os/Handler;
    :cond_4
    move-object/from16 v18, v12

    if-eqz v18, :cond_3

    .line 115
    move-object/from16 v18, v12

    const/16 v19, 0x2

    invoke-static/range {v18 .. v19}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v18

    move-object/from16 v13, v18

    .line 116
    .local v13, "message":Landroid/os/Message;
    move-object/from16 v18, v13

    invoke-virtual/range {v18 .. v18}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3
.end method

.method private static toBitmap(Lcom/google/zxing/LuminanceSource;[I)Landroid/graphics/Bitmap;
    .locals 13

    .prologue
    .line 122
    move-object v0, p0

    .local v0, "source":Lcom/google/zxing/LuminanceSource;
    move-object v1, p1

    .local v1, "pixels":[I
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/zxing/LuminanceSource;->getWidth()I

    move-result v5

    move v2, v5

    .line 123
    .local v2, "width":I
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/zxing/LuminanceSource;->getHeight()I

    move-result v5

    move v3, v5

    .line 124
    .local v3, "height":I
    move v5, v2

    move v6, v3

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v4, v5

    .line 125
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    move-object v5, v4

    move-object v6, v1

    const/4 v7, 0x0

    move v8, v2

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v11, v2

    move v12, v3

    invoke-virtual/range {v5 .. v12}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 126
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "source":Lcom/google/zxing/LuminanceSource;
    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/DecodeHandler;
    move-object v1, p1

    .local v1, "message":Landroid/os/Message;
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/zxing/client/android/DecodeHandler;->running:Z

    if-nez v2, :cond_0

    .line 54
    .line 65
    :goto_0
    return-void

    .line 56
    :cond_0
    move-object v2, v1

    iget v2, v2, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 65
    :goto_1
    :pswitch_0
    goto :goto_0

    .line 58
    :pswitch_1
    move-object v2, v0

    move-object v3, v1

    iget-object v3, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    check-cast v3, [B

    move-object v4, v1

    iget v4, v4, Landroid/os/Message;->arg1:I

    move-object v5, v1

    iget v5, v5, Landroid/os/Message;->arg2:I

    invoke-direct {v2, v3, v4, v5}, Lcom/google/zxing/client/android/DecodeHandler;->decode([BII)V

    .line 59
    goto :goto_1

    .line 61
    :pswitch_2
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/zxing/client/android/DecodeHandler;->running:Z

    .line 62
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    goto :goto_1

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
