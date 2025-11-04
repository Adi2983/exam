.class final Lcom/google/zxing/client/android/camera/CameraConfigurationManager;
.super Ljava/lang/Object;
.source "CameraConfigurationManager.java"


# static fields
.field private static final AREA_PER_1000:I = 0x190

.field private static final MAX_ASPECT_DISTORTION:D = 0.15

.field private static final MAX_EXPOSURE_COMPENSATION:F = 1.5f

.field private static final MAX_FPS:I = 0x14

.field private static final MIN_EXPOSURE_COMPENSATION:F = 0.0f

.field private static final MIN_FPS:I = 0xa

.field private static final MIN_PREVIEW_PIXELS:I = 0x25800

.field private static final TAG:Ljava/lang/String; = "CameraConfiguration"


# instance fields
.field private cameraResolution:Landroid/graphics/Point;

.field private final context:Landroid/content/Context;

.field private screenResolution:Landroid/graphics/Point;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/camera/CameraConfigurationManager;
    move-object v1, p1

    .local v1, "context":Landroid/content/Context;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 55
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->context:Landroid/content/Context;

    .line 56
    return-void
.end method

.method private doSetTorch(Landroid/hardware/Camera$Parameters;ZZ)V
    .locals 11

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/camera/CameraConfigurationManager;
    move-object v1, p1

    .local v1, "parameters":Landroid/hardware/Camera$Parameters;
    move v2, p2

    .local v2, "newSetting":Z
    move v3, p3

    .local v3, "safeMode":Z
    move v5, v2

    if-eqz v5, :cond_1

    .line 138
    move-object v5, v1

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    const-string/jumbo v9, "torch"

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    const-string/jumbo v9, "on"

    aput-object v9, v7, v8

    invoke-static {v5, v6}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->findSettableValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 145
    .local v4, "flashMode":Ljava/lang/String;
    :goto_0
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 146
    move-object v5, v1

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 158
    :cond_0
    return-void

    .line 142
    .end local v4    # "flashMode":Ljava/lang/String;
    :cond_1
    move-object v5, v1

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    const-string/jumbo v9, "off"

    aput-object v9, v7, v8

    invoke-static {v5, v6}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->findSettableValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .restart local v4    # "flashMode":Ljava/lang/String;
    goto :goto_0
.end method

.method private findBestPreviewSizeValue(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 27

    .prologue
    .line 162
    move-object/from16 v3, p0

    .local v3, "this":Lcom/google/zxing/client/android/camera/CameraConfigurationManager;
    move-object/from16 v4, p1

    .local v4, "parameters":Landroid/hardware/Camera$Parameters;
    move-object/from16 v5, p2

    .local v5, "screenResolution":Landroid/graphics/Point;
    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v22

    move-object/from16 v6, v22

    .line 163
    .local v6, "rawSupportedSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    move-object/from16 v22, v6

    if-nez v22, :cond_1

    .line 164
    const-string/jumbo v22, "CameraConfiguration"

    const-string/jumbo v23, "Device returned no supported preview sizes; using default"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    .line 165
    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v22

    move-object/from16 v7, v22

    .line 166
    .local v7, "defaultSize":Landroid/hardware/Camera$Size;
    move-object/from16 v22, v7

    if-nez v22, :cond_0

    .line 167
    new-instance v22, Ljava/lang/IllegalStateException;

    move-object/from16 v26, v22

    move-object/from16 v22, v26

    move-object/from16 v23, v26

    const-string/jumbo v24, "Parameters contained no preview size!"

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 169
    :cond_0
    new-instance v22, Landroid/graphics/Point;

    move-object/from16 v26, v22

    move-object/from16 v22, v26

    move-object/from16 v23, v26

    move-object/from16 v24, v7

    move-object/from16 v0, v24

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v24, v0

    move-object/from16 v25, v7

    move-object/from16 v0, v25

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v25, v0

    invoke-direct/range {v23 .. v25}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v3, v22

    .line 245
    .end local v3    # "this":Lcom/google/zxing/client/android/camera/CameraConfigurationManager;
    .end local v7    # "defaultSize":Landroid/hardware/Camera$Size;
    :goto_0
    return-object v3

    .line 173
    .restart local v3    # "this":Lcom/google/zxing/client/android/camera/CameraConfigurationManager;
    :cond_1
    new-instance v22, Ljava/util/ArrayList;

    move-object/from16 v26, v22

    move-object/from16 v22, v26

    move-object/from16 v23, v26

    move-object/from16 v24, v6

    invoke-direct/range {v23 .. v24}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v7, v22

    .line 174
    .local v7, "supportedPreviewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    move-object/from16 v22, v7

    new-instance v23, Lcom/google/zxing/client/android/camera/CameraConfigurationManager$1;

    move-object/from16 v26, v23

    move-object/from16 v23, v26

    move-object/from16 v24, v26

    move-object/from16 v25, v3

    invoke-direct/range {v24 .. v25}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager$1;-><init>(Lcom/google/zxing/client/android/camera/CameraConfigurationManager;)V

    invoke-static/range {v22 .. v23}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 189
    const-string/jumbo v22, "CameraConfiguration"

    const/16 v23, 0x4

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v22

    if-eqz v22, :cond_3

    .line 190
    new-instance v22, Ljava/lang/StringBuilder;

    move-object/from16 v26, v22

    move-object/from16 v22, v26

    move-object/from16 v23, v26

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v8, v22

    .line 191
    .local v8, "previewSizesString":Ljava/lang/StringBuilder;
    move-object/from16 v22, v7

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    move-object/from16 v9, v22

    :goto_1
    move-object/from16 v22, v9

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_2

    move-object/from16 v22, v9

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/hardware/Camera$Size;

    move-object/from16 v10, v22

    .line 192
    .local v10, "supportedPreviewSize":Landroid/hardware/Camera$Size;
    move-object/from16 v22, v8

    move-object/from16 v23, v10

    move-object/from16 v0, v23

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x78

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v23, v10

    move-object/from16 v0, v23

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v23, v0

    .line 193
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x20

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v22

    .line 194
    goto :goto_1

    .line 195
    .end local v10    # "supportedPreviewSize":Landroid/hardware/Camera$Size;
    :cond_2
    const-string/jumbo v22, "CameraConfiguration"

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v26, v23

    move-object/from16 v23, v26

    move-object/from16 v24, v26

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Supported preview sizes: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v24, v8

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    .line 198
    .end local v8    # "previewSizesString":Ljava/lang/StringBuilder;
    :cond_3
    move-object/from16 v22, v5

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    move-wide/from16 v8, v22

    .line 201
    .local v8, "screenAspectRatio":D
    move-object/from16 v22, v7

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    move-object/from16 v10, v22

    .line 202
    .local v10, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/hardware/Camera$Size;>;"
    :goto_2
    move-object/from16 v22, v10

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_a

    .line 203
    move-object/from16 v22, v10

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/hardware/Camera$Size;

    move-object/from16 v11, v22

    .line 204
    .local v11, "supportedPreviewSize":Landroid/hardware/Camera$Size;
    move-object/from16 v22, v11

    move-object/from16 v0, v22

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v22, v0

    move/from16 v12, v22

    .line 205
    .local v12, "realWidth":I
    move-object/from16 v22, v11

    move-object/from16 v0, v22

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v22, v0

    move/from16 v13, v22

    .line 206
    .local v13, "realHeight":I
    move/from16 v22, v12

    move/from16 v23, v13

    mul-int v22, v22, v23

    const v23, 0x25800

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    .line 207
    move-object/from16 v22, v10

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->remove()V

    .line 208
    goto :goto_2

    .line 211
    :cond_4
    move/from16 v22, v12

    move/from16 v23, v13

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    const/16 v22, 0x1

    :goto_3
    move/from16 v14, v22

    .line 212
    .local v14, "isCandidatePortrait":Z
    move/from16 v22, v14

    if-eqz v22, :cond_6

    move/from16 v22, v13

    :goto_4
    move/from16 v15, v22

    .line 213
    .local v15, "maybeFlippedWidth":I
    move/from16 v22, v14

    if-eqz v22, :cond_7

    move/from16 v22, v12

    :goto_5
    move/from16 v16, v22

    .line 214
    .local v16, "maybeFlippedHeight":I
    move/from16 v22, v15

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move/from16 v24, v16

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    move-wide/from16 v17, v22

    .line 215
    .local v17, "aspectRatio":D
    move-wide/from16 v22, v17

    move-wide/from16 v24, v8

    sub-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(D)D

    move-result-wide v22

    move-wide/from16 v19, v22

    .line 216
    .local v19, "distortion":D
    move-wide/from16 v22, v19

    const-wide v24, 0x3fc3333333333333L    # 0.15

    cmpl-double v22, v22, v24

    if-lez v22, :cond_8

    .line 217
    move-object/from16 v22, v10

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->remove()V

    .line 218
    goto/16 :goto_2

    .line 211
    .end local v14    # "isCandidatePortrait":Z
    .end local v15    # "maybeFlippedWidth":I
    .end local v16    # "maybeFlippedHeight":I
    .end local v17    # "aspectRatio":D
    .end local v19    # "distortion":D
    :cond_5
    const/16 v22, 0x0

    goto :goto_3

    .line 212
    .restart local v14    # "isCandidatePortrait":Z
    :cond_6
    move/from16 v22, v12

    goto :goto_4

    .line 213
    .restart local v15    # "maybeFlippedWidth":I
    :cond_7
    move/from16 v22, v13

    goto :goto_5

    .line 221
    .restart local v16    # "maybeFlippedHeight":I
    .restart local v17    # "aspectRatio":D
    .restart local v19    # "distortion":D
    :cond_8
    move/from16 v22, v15

    move-object/from16 v23, v5

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    move/from16 v22, v16

    move-object/from16 v23, v5

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    .line 222
    new-instance v22, Landroid/graphics/Point;

    move-object/from16 v26, v22

    move-object/from16 v22, v26

    move-object/from16 v23, v26

    move/from16 v24, v12

    move/from16 v25, v13

    invoke-direct/range {v23 .. v25}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v21, v22

    .line 223
    .local v21, "exactPoint":Landroid/graphics/Point;
    const-string/jumbo v22, "CameraConfiguration"

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v26, v23

    move-object/from16 v23, v26

    move-object/from16 v24, v26

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Found preview size exactly matching screen size: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v24, v21

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    .line 224
    move-object/from16 v22, v21

    move-object/from16 v3, v22

    goto/16 :goto_0

    .line 226
    .end local v21    # "exactPoint":Landroid/graphics/Point;
    :cond_9
    goto/16 :goto_2

    .line 231
    .end local v11    # "supportedPreviewSize":Landroid/hardware/Camera$Size;
    .end local v12    # "realWidth":I
    .end local v13    # "realHeight":I
    .end local v14    # "isCandidatePortrait":Z
    .end local v15    # "maybeFlippedWidth":I
    .end local v16    # "maybeFlippedHeight":I
    .end local v17    # "aspectRatio":D
    .end local v19    # "distortion":D
    :cond_a
    move-object/from16 v22, v7

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_b

    .line 232
    move-object/from16 v22, v7

    const/16 v23, 0x0

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/hardware/Camera$Size;

    move-object/from16 v11, v22

    .line 233
    .local v11, "largestPreview":Landroid/hardware/Camera$Size;
    new-instance v22, Landroid/graphics/Point;

    move-object/from16 v26, v22

    move-object/from16 v22, v26

    move-object/from16 v23, v26

    move-object/from16 v24, v11

    move-object/from16 v0, v24

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v24, v0

    move-object/from16 v25, v11

    move-object/from16 v0, v25

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v25, v0

    invoke-direct/range {v23 .. v25}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v12, v22

    .line 234
    .local v12, "largestSize":Landroid/graphics/Point;
    const-string/jumbo v22, "CameraConfiguration"

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v26, v23

    move-object/from16 v23, v26

    move-object/from16 v24, v26

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Using largest suitable preview size: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v24, v12

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    .line 235
    move-object/from16 v22, v12

    move-object/from16 v3, v22

    goto/16 :goto_0

    .line 239
    .end local v11    # "largestPreview":Landroid/hardware/Camera$Size;
    .end local v12    # "largestSize":Landroid/graphics/Point;
    :cond_b
    move-object/from16 v22, v4

    invoke-virtual/range {v22 .. v22}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v22

    move-object/from16 v11, v22

    .line 240
    .local v11, "defaultPreview":Landroid/hardware/Camera$Size;
    move-object/from16 v22, v11

    if-nez v22, :cond_c

    .line 241
    new-instance v22, Ljava/lang/IllegalStateException;

    move-object/from16 v26, v22

    move-object/from16 v22, v26

    move-object/from16 v23, v26

    const-string/jumbo v24, "Parameters contained no preview size!"

    invoke-direct/range {v23 .. v24}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 243
    :cond_c
    new-instance v22, Landroid/graphics/Point;

    move-object/from16 v26, v22

    move-object/from16 v22, v26

    move-object/from16 v23, v26

    move-object/from16 v24, v11

    move-object/from16 v0, v24

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v24, v0

    move-object/from16 v25, v11

    move-object/from16 v0, v25

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v25, v0

    invoke-direct/range {v23 .. v25}, Landroid/graphics/Point;-><init>(II)V

    move-object/from16 v12, v22

    .line 244
    .local v12, "defaultSize":Landroid/graphics/Point;
    const-string/jumbo v22, "CameraConfiguration"

    new-instance v23, Ljava/lang/StringBuilder;

    move-object/from16 v26, v23

    move-object/from16 v23, v26

    move-object/from16 v24, v26

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "No suitable preview sizes, using default: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v24, v12

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v22

    .line 245
    move-object/from16 v22, v12

    move-object/from16 v3, v22

    goto/16 :goto_0
.end method

.method private static varargs findSettableValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "supportedValues":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    move-object v1, p1

    .local v1, "desiredValues":[Ljava/lang/String;
    const-string/jumbo v7, "CameraConfiguration"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Supported values: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 251
    const/4 v7, 0x0

    move-object v2, v7

    .line 252
    .local v2, "result":Ljava/lang/String;
    move-object v7, v0

    if-eqz v7, :cond_0

    .line 253
    move-object v7, v1

    move-object v3, v7

    move-object v7, v3

    array-length v7, v7

    move v4, v7

    const/4 v7, 0x0

    move v5, v7

    :goto_0
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_0

    move-object v7, v3

    move v8, v5

    aget-object v7, v7, v8

    move-object v6, v7

    .line 254
    .local v6, "desiredValue":Ljava/lang/String;
    move-object v7, v0

    move-object v8, v6

    invoke-interface {v7, v8}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 255
    move-object v7, v6

    move-object v2, v7

    .line 260
    .end local v6    # "desiredValue":Ljava/lang/String;
    :cond_0
    const-string/jumbo v7, "CameraConfiguration"

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Settable value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 261
    move-object v7, v2

    move-object v0, v7

    .end local v0    # "supportedValues":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    return-object v0

    .line 253
    .restart local v0    # "supportedValues":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    .restart local v6    # "desiredValue":Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private initializeTorch(Landroid/hardware/Camera$Parameters;Z)V
    .locals 7

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/camera/CameraConfigurationManager;
    move-object v1, p1

    .local v1, "parameters":Landroid/hardware/Camera$Parameters;
    move v2, p2

    .local v2, "safeMode":Z
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    move v6, v2

    invoke-direct {v3, v4, v5, v6}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->doSetTorch(Landroid/hardware/Camera$Parameters;ZZ)V

    .line 133
    return-void
.end method


# virtual methods
.method getCameraResolution()Landroid/graphics/Point;
    .locals 2

    .prologue
    .line 117
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/camera/CameraConfigurationManager;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/android/camera/CameraConfigurationManager;
    return-object v0
.end method

.method getScreenResolution()Landroid/graphics/Point;
    .locals 2

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/camera/CameraConfigurationManager;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/android/camera/CameraConfigurationManager;
    return-object v0
.end method

.method initFromCameraParameters(Landroid/hardware/Camera;)V
    .locals 10

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/camera/CameraConfigurationManager;
    move-object v1, p1

    .local v1, "camera":Landroid/hardware/Camera;
    move-object v5, v1

    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    move-object v2, v5

    .line 63
    .local v2, "parameters":Landroid/hardware/Camera$Parameters;
    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->context:Landroid/content/Context;

    const-string/jumbo v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    move-object v3, v5

    .line 64
    .local v3, "manager":Landroid/view/WindowManager;
    move-object v5, v3

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    move-object v4, v5

    .line 65
    .local v4, "display":Landroid/view/Display;
    move-object v5, v0

    new-instance v6, Landroid/graphics/Point;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    iput-object v6, v5, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    .line 66
    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    invoke-static {v5, v6}, Lcom/google/zxing/client/android/camera/HoneycombMR2Util;->getSize(Landroid/view/Display;Landroid/graphics/Point;)V

    .line 67
    const-string/jumbo v5, "CameraConfiguration"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Screen resolution: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 68
    move-object v5, v0

    move-object v6, v0

    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->screenResolution:Landroid/graphics/Point;

    invoke-direct {v6, v7, v8}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->findBestPreviewSizeValue(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v6

    iput-object v6, v5, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    .line 69
    const-string/jumbo v5, "CameraConfiguration"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Camera resolution: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 70
    return-void
.end method

.method setDesiredCameraParameters(Landroid/hardware/Camera;Z)V
    .locals 11

    .prologue
    .line 73
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/camera/CameraConfigurationManager;
    move-object v1, p1

    .local v1, "camera":Landroid/hardware/Camera;
    move v2, p2

    .local v2, "safeMode":Z
    move-object v5, v1

    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    move-object v3, v5

    .line 75
    .local v3, "parameters":Landroid/hardware/Camera$Parameters;
    move-object v5, v3

    if-nez v5, :cond_0

    .line 76
    const-string/jumbo v5, "CameraConfiguration"

    const-string/jumbo v6, "Device error: no camera parameters are available. Proceeding without configuration."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 77
    .line 114
    :goto_0
    return-void

    .line 80
    :cond_0
    const-string/jumbo v5, "CameraConfiguration"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Initial camera parameters: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 82
    move v5, v2

    if-eqz v5, :cond_1

    .line 83
    const-string/jumbo v5, "CameraConfiguration"

    const-string/jumbo v6, "In camera config safe mode -- most settings will not be honored"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 86
    :cond_1
    move-object v5, v0

    move-object v6, v3

    move v7, v2

    invoke-direct {v5, v6, v7}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->initializeTorch(Landroid/hardware/Camera$Parameters;Z)V

    .line 88
    const/4 v5, 0x0

    move-object v4, v5

    .line 90
    .local v4, "focusMode":Ljava/lang/String;
    move v5, v2

    if-eqz v5, :cond_4

    .line 91
    move-object v5, v3

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    const-string/jumbo v9, "auto"

    aput-object v9, v7, v8

    invoke-static {v5, v6}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->findSettableValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 101
    :goto_1
    move v5, v2

    if-nez v5, :cond_2

    move-object v5, v4

    if-nez v5, :cond_2

    .line 102
    move-object v5, v3

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    const-string/jumbo v9, "macro"

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    const-string/jumbo v9, "edof"

    aput-object v9, v7, v8

    invoke-static {v5, v6}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->findSettableValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 106
    :cond_2
    move-object v5, v4

    if-eqz v5, :cond_3

    .line 107
    move-object v5, v3

    move-object v6, v4

    invoke-virtual {v5, v6}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 110
    :cond_3
    const-string/jumbo v5, "CameraConfiguration"

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Setting Camera Preview Size to: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 111
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    move-object v7, v0

    iget-object v7, v7, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->cameraResolution:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v6, v7}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 112
    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 113
    move-object v5, v1

    const/16 v6, 0x5a

    invoke-virtual {v5, v6}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 114
    goto/16 :goto_0

    .line 94
    :cond_4
    move-object v5, v3

    invoke-virtual {v5}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    const-string/jumbo v9, "continuous-picture"

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x1

    const-string/jumbo v9, "continuous-video"

    aput-object v9, v7, v8

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x2

    const-string/jumbo v9, "auto"

    aput-object v9, v7, v8

    invoke-static {v5, v6}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->findSettableValue(Ljava/util/Collection;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    goto/16 :goto_1
.end method

.method setTorch(Landroid/hardware/Camera;Z)V
    .locals 9

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/camera/CameraConfigurationManager;
    move-object v1, p1

    .local v1, "camera":Landroid/hardware/Camera;
    move v2, p2

    .local v2, "newSetting":Z
    move-object v5, v1

    invoke-virtual {v5}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    move-object v3, v5

    .line 126
    .local v3, "parameters":Landroid/hardware/Camera$Parameters;
    move-object v5, v0

    move-object v6, v3

    move v7, v2

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/google/zxing/client/android/camera/CameraConfigurationManager;->doSetTorch(Landroid/hardware/Camera$Parameters;ZZ)V

    .line 127
    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v5, v6}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 128
    const/4 v5, 0x0

    move v4, v5

    .line 129
    .local v4, "currentSetting":Z
    return-void
.end method
