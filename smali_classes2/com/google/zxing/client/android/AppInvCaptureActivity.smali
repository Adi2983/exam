.class public final Lcom/google/zxing/client/android/AppInvCaptureActivity;
.super Landroid/app/Activity;
.source "AppInvCaptureActivity.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final BULK_MODE_SCAN_DELAY_MS:J = 0x3e8L

.field private static final DEFAULT_INTENT_RESULT_DURATION_MS:J = 0x5dcL

.field private static final DISPLAYABLE_METADATA_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/zxing/ResultMetadataType;",
            ">;"
        }
    .end annotation
.end field

.field private static final RAW_PARAM:Ljava/lang/String; = "raw"

.field private static final RETURN_CODE_PLACEHOLDER:Ljava/lang/String; = "{CODE}"

.field private static final RETURN_URL_PARAM:Ljava/lang/String; = "ret"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private beepManager:Lcom/google/zxing/client/android/BeepManager;

.field private cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

.field private characterSet:Ljava/lang/String;

.field private copyToClipboard:Z

.field private decodeFormats:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;"
        }
    .end annotation
.end field

.field private frameLayout:Landroid/widget/FrameLayout;

.field private handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

.field private hasSurface:Z

.field private lastResult:Lcom/google/zxing/Result;

.field private returnRaw:Z

.field private returnUrlTemplate:Ljava/lang/String;

.field private savedResultToShow:Lcom/google/zxing/Result;

.field private source:Lcom/google/zxing/client/android/IntentSource;

.field private sourceUrl:Ljava/lang/String;

.field private surfaceView:Landroid/view/SurfaceView;

.field private viewLayout:Landroid/widget/LinearLayout;

.field private viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 66
    const-class v0, Lcom/google/zxing/client/android/AppInvCaptureActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->TAG:Ljava/lang/String;

    .line 75
    sget-object v0, Lcom/google/zxing/ResultMetadataType;->ISSUE_NUMBER:Lcom/google/zxing/ResultMetadataType;

    sget-object v1, Lcom/google/zxing/ResultMetadataType;->SUGGESTED_PRICE:Lcom/google/zxing/ResultMetadataType;

    sget-object v2, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    sget-object v3, Lcom/google/zxing/ResultMetadataType;->POSSIBLE_COUNTRY:Lcom/google/zxing/ResultMetadataType;

    .line 76
    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->DISPLAYABLE_METADATA_TYPES:Ljava/util/Set;

    .line 75
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 64
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/AppInvCaptureActivity;
    move-object v1, v0

    invoke-direct {v1}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private decodeOrStoreSavedBitmap(Landroid/graphics/Bitmap;Lcom/google/zxing/Result;)V
    .locals 5

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/AppInvCaptureActivity;
    move-object v1, p1

    .local v1, "bitmap":Landroid/graphics/Bitmap;
    move-object v2, p2

    .local v2, "result":Lcom/google/zxing/Result;
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/client/android/AppInvCaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    if-nez v3, :cond_0

    .line 249
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/zxing/client/android/AppInvCaptureActivity;->savedResultToShow:Lcom/google/zxing/Result;

    .line 260
    :goto_0
    return-void

    .line 251
    :cond_0
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 252
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/google/zxing/client/android/AppInvCaptureActivity;->savedResultToShow:Lcom/google/zxing/Result;

    .line 258
    :cond_1
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/google/zxing/client/android/AppInvCaptureActivity;->savedResultToShow:Lcom/google/zxing/Result;

    goto :goto_0
.end method

.method private displayFrameworkBugMessageAndExit()V
    .locals 6

    .prologue
    .line 523
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/AppInvCaptureActivity;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v1, v2

    .line 524
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    move-object v2, v1

    const-string/jumbo v3, "Scanner"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 525
    move-object v2, v1

    const-string/jumbo v3, "Camera Framework Bug"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 528
    move-object v2, v1

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    .line 529
    return-void
.end method

.method private static drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V
    .locals 10

    .prologue
    .line 346
    move-object v0, p0

    .local v0, "canvas":Landroid/graphics/Canvas;
    move-object v1, p1

    .local v1, "paint":Landroid/graphics/Paint;
    move-object v2, p2

    .local v2, "a":Lcom/google/zxing/ResultPoint;
    move-object v3, p3

    .local v3, "b":Lcom/google/zxing/ResultPoint;
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    move-object v6, v2

    invoke-virtual {v6}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v6

    move-object v7, v3

    invoke-virtual {v7}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v7

    move-object v8, v3

    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v8

    move-object v9, v1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 347
    return-void
.end method

.method private drawResultPoints(Landroid/graphics/Bitmap;Lcom/google/zxing/Result;)V
    .locals 16

    .prologue
    .line 322
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/AppInvCaptureActivity;
    move-object/from16 v1, p1

    .local v1, "barcode":Landroid/graphics/Bitmap;
    move-object/from16 v2, p2

    .local v2, "rawResult":Lcom/google/zxing/Result;
    move-object v10, v2

    invoke-virtual {v10}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v10

    move-object v3, v10

    .line 323
    .local v3, "points":[Lcom/google/zxing/ResultPoint;
    move-object v10, v3

    if-eqz v10, :cond_0

    move-object v10, v3

    array-length v10, v10

    if-lez v10, :cond_0

    .line 324
    new-instance v10, Landroid/graphics/Canvas;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v1

    invoke-direct {v11, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v4, v10

    .line 325
    .local v4, "canvas":Landroid/graphics/Canvas;
    new-instance v10, Landroid/graphics/Paint;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    move-object v5, v10

    .line 326
    .local v5, "paint":Landroid/graphics/Paint;
    move-object v10, v5

    const v11, -0x3f663400

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 327
    move-object v10, v3

    array-length v10, v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    .line 328
    move-object v10, v5

    const/high16 v11, 0x40800000    # 4.0f

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 329
    move-object v10, v4

    move-object v11, v5

    move-object v12, v3

    const/4 v13, 0x0

    aget-object v12, v12, v13

    move-object v13, v3

    const/4 v14, 0x1

    aget-object v13, v13, v14

    invoke-static {v10, v11, v12, v13}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    .line 343
    .end local v4    # "canvas":Landroid/graphics/Canvas;
    .end local v5    # "paint":Landroid/graphics/Paint;
    :cond_0
    :goto_0
    return-void

    .line 330
    .restart local v4    # "canvas":Landroid/graphics/Canvas;
    .restart local v5    # "paint":Landroid/graphics/Paint;
    :cond_1
    move-object v10, v3

    array-length v10, v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_3

    move-object v10, v2

    .line 331
    invoke-virtual {v10}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v10

    sget-object v11, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    if-eq v10, v11, :cond_2

    move-object v10, v2

    .line 332
    invoke-virtual {v10}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v10

    sget-object v11, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    if-ne v10, v11, :cond_3

    .line 334
    :cond_2
    move-object v10, v4

    move-object v11, v5

    move-object v12, v3

    const/4 v13, 0x0

    aget-object v12, v12, v13

    move-object v13, v3

    const/4 v14, 0x1

    aget-object v13, v13, v14

    invoke-static {v10, v11, v12, v13}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    .line 335
    move-object v10, v4

    move-object v11, v5

    move-object v12, v3

    const/4 v13, 0x2

    aget-object v12, v12, v13

    move-object v13, v3

    const/4 v14, 0x3

    aget-object v13, v13, v14

    invoke-static {v10, v11, v12, v13}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    goto :goto_0

    .line 337
    :cond_3
    move-object v10, v5

    const/high16 v11, 0x41200000    # 10.0f

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 338
    move-object v10, v3

    move-object v6, v10

    move-object v10, v6

    array-length v10, v10

    move v7, v10

    const/4 v10, 0x0

    move v8, v10

    :goto_1
    move v10, v8

    move v11, v7

    if-ge v10, v11, :cond_0

    move-object v10, v6

    move v11, v8

    aget-object v10, v10, v11

    move-object v9, v10

    .line 339
    .local v9, "point":Lcom/google/zxing/ResultPoint;
    move-object v10, v4

    move-object v11, v9

    invoke-virtual {v11}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v11

    move-object v12, v9

    invoke-virtual {v12}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v12

    move-object v13, v5

    invoke-virtual {v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 338
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method private handleDecodeExternally(Lcom/google/zxing/Result;Lcom/google/zxing/client/android/result/ResultHandler;Landroid/graphics/Bitmap;)V
    .locals 24

    .prologue
    .line 427
    move-object/from16 v3, p0

    .local v3, "this":Lcom/google/zxing/client/android/AppInvCaptureActivity;
    move-object/from16 v4, p1

    .local v4, "rawResult":Lcom/google/zxing/Result;
    move-object/from16 v5, p2

    .local v5, "resultHandler":Lcom/google/zxing/client/android/result/ResultHandler;
    move-object/from16 v6, p3

    .local v6, "barcode":Landroid/graphics/Bitmap;
    move-object/from16 v18, v6

    if-eqz v18, :cond_0

    .line 428
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;

    move-object/from16 v18, v0

    move-object/from16 v19, v6

    invoke-virtual/range {v18 .. v19}, Lcom/google/zxing/client/android/ViewfinderView;->drawResultBitmap(Landroid/graphics/Bitmap;)V

    .line 432
    :cond_0
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    if-nez v18, :cond_6

    .line 433
    const-wide/16 v18, 0x5dc

    move-wide/from16 v7, v18

    .line 439
    .local v7, "resultDurationMS":J
    :goto_0
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->copyToClipboard:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/client/android/result/ResultHandler;->areContentsSecure()Z

    move-result v18

    if-nez v18, :cond_1

    .line 440
    move-object/from16 v18, v3

    const-string/jumbo v19, "clipboard"

    invoke-virtual/range {v18 .. v19}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/text/ClipboardManager;

    move-object/from16 v9, v18

    .line 441
    .local v9, "clipboard":Landroid/text/ClipboardManager;
    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/client/android/result/ResultHandler;->getDisplayContents()Ljava/lang/CharSequence;

    move-result-object v18

    move-object/from16 v10, v18

    .line 442
    .local v10, "text":Ljava/lang/CharSequence;
    move-object/from16 v18, v10

    if-eqz v18, :cond_1

    .line 443
    move-object/from16 v18, v9

    move-object/from16 v19, v10

    invoke-virtual/range {v18 .. v19}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 447
    .end local v9    # "clipboard":Landroid/text/ClipboardManager;
    .end local v10    # "text":Ljava/lang/CharSequence;
    :cond_1
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/zxing/client/android/AppInvCaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    move-object/from16 v18, v0

    sget-object v19, Lcom/google/zxing/client/android/IntentSource;->NATIVE_APP_INTENT:Lcom/google/zxing/client/android/IntentSource;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 451
    new-instance v18, Landroid/content/Intent;

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v9, v18

    .line 452
    .local v9, "intent":Landroid/content/Intent;
    move-object/from16 v18, v9

    const/high16 v19, 0x80000

    invoke-virtual/range {v18 .. v19}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v18

    .line 453
    move-object/from16 v18, v9

    const-string/jumbo v19, "SCAN_RESULT"

    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/Result;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v18

    .line 454
    move-object/from16 v18, v9

    const-string/jumbo v19, "SCAN_RESULT_FORMAT"

    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/BarcodeFormat;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v18

    .line 455
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object v18

    move-object/from16 v10, v18

    .line 456
    .local v10, "rawBytes":[B
    move-object/from16 v18, v10

    if-eqz v18, :cond_2

    move-object/from16 v18, v10

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    if-lez v18, :cond_2

    .line 457
    move-object/from16 v18, v9

    const-string/jumbo v19, "SCAN_RESULT_BYTES"

    move-object/from16 v20, v10

    invoke-virtual/range {v18 .. v20}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object v18

    .line 459
    :cond_2
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v18

    move-object/from16 v11, v18

    .line 460
    .local v11, "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;*>;"
    move-object/from16 v18, v11

    if-eqz v18, :cond_7

    .line 461
    move-object/from16 v18, v11

    sget-object v19, Lcom/google/zxing/ResultMetadataType;->UPC_EAN_EXTENSION:Lcom/google/zxing/ResultMetadataType;

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 462
    move-object/from16 v18, v9

    const-string/jumbo v19, "SCAN_RESULT_UPC_EAN_EXTENSION"

    move-object/from16 v20, v11

    sget-object v21, Lcom/google/zxing/ResultMetadataType;->UPC_EAN_EXTENSION:Lcom/google/zxing/ResultMetadataType;

    .line 463
    invoke-interface/range {v20 .. v21}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    .line 462
    invoke-virtual/range {v18 .. v20}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v18

    .line 465
    :cond_3
    move-object/from16 v18, v11

    sget-object v19, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    move-object/from16 v12, v18

    .line 466
    .local v12, "orientation":Ljava/lang/Integer;
    move-object/from16 v18, v12

    if-eqz v18, :cond_4

    .line 467
    move-object/from16 v18, v9

    const-string/jumbo v19, "SCAN_RESULT_ORIENTATION"

    move-object/from16 v20, v12

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    invoke-virtual/range {v18 .. v20}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v18

    .line 469
    :cond_4
    move-object/from16 v18, v11

    sget-object v19, Lcom/google/zxing/ResultMetadataType;->ERROR_CORRECTION_LEVEL:Lcom/google/zxing/ResultMetadataType;

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v13, v18

    .line 470
    .local v13, "ecLevel":Ljava/lang/String;
    move-object/from16 v18, v13

    if-eqz v18, :cond_5

    .line 471
    move-object/from16 v18, v9

    const-string/jumbo v19, "SCAN_RESULT_ERROR_CORRECTION_LEVEL"

    move-object/from16 v20, v13

    invoke-virtual/range {v18 .. v20}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v18

    .line 473
    :cond_5
    move-object/from16 v18, v11

    sget-object v19, Lcom/google/zxing/ResultMetadataType;->BYTE_SEGMENTS:Lcom/google/zxing/ResultMetadataType;

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Iterable;

    move-object/from16 v14, v18

    .line 474
    .local v14, "byteSegments":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[B>;"
    move-object/from16 v18, v14

    if-eqz v18, :cond_7

    .line 475
    const/16 v18, 0x0

    move/from16 v15, v18

    .line 476
    .local v15, "i":I
    move-object/from16 v18, v14

    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    move-object/from16 v16, v18

    :goto_1
    move-object/from16 v18, v16

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    move-object/from16 v18, v16

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [B

    move-object/from16 v17, v18

    .line 477
    .local v17, "byteSegment":[B
    move-object/from16 v18, v9

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "SCAN_RESULT_BYTE_SEGMENTS_"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move/from16 v20, v15

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v20, v17

    invoke-virtual/range {v18 .. v20}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    move-result-object v18

    .line 478
    add-int/lit8 v15, v15, 0x1

    .line 479
    goto :goto_1

    .line 435
    .end local v7    # "resultDurationMS":J
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "rawBytes":[B
    .end local v11    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;*>;"
    .end local v12    # "orientation":Ljava/lang/Integer;
    .end local v13    # "ecLevel":Ljava/lang/String;
    .end local v14    # "byteSegments":Ljava/lang/Iterable;, "Ljava/lang/Iterable<[B>;"
    .end local v15    # "i":I
    .end local v17    # "byteSegment":[B
    :cond_6
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    const-string/jumbo v19, "RESULT_DISPLAY_DURATION_MS"

    const-wide/16 v20, 0x5dc

    invoke-virtual/range {v18 .. v21}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v18

    move-wide/from16 v7, v18

    .restart local v7    # "resultDurationMS":J
    goto/16 :goto_0

    .line 482
    .restart local v9    # "intent":Landroid/content/Intent;
    .restart local v10    # "rawBytes":[B
    .restart local v11    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;*>;"
    :cond_7
    move-object/from16 v18, v3

    const/16 v19, 0x6

    move-object/from16 v20, v9

    move-wide/from16 v21, v7

    invoke-direct/range {v18 .. v22}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->sendReplyMessage(ILjava/lang/Object;J)V

    .line 484
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "rawBytes":[B
    .end local v11    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;*>;"
    :cond_8
    return-void
.end method

.method private initCamera(Landroid/view/SurfaceHolder;)V
    .locals 11

    .prologue
    .line 496
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/AppInvCaptureActivity;
    move-object v1, p1

    .local v1, "surfaceHolder":Landroid/view/SurfaceHolder;
    sget-object v3, Lcom/google/zxing/client/android/AppInvCaptureActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "initCamera() was called"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 497
    move-object v3, v1

    if-nez v3, :cond_0

    .line 498
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const-string/jumbo v5, "No SurfaceHolder provided"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 500
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/client/android/AppInvCaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v3}, Lcom/google/zxing/client/android/camera/CameraManager;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 501
    sget-object v3, Lcom/google/zxing/client/android/AppInvCaptureActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "initCamera() while already open -- late SurfaceView callback?"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 502
    .line 520
    :goto_0
    return-void

    .line 505
    :cond_1
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/google/zxing/client/android/AppInvCaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/google/zxing/client/android/camera/CameraManager;->openDriver(Landroid/view/SurfaceHolder;)V

    .line 507
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/client/android/AppInvCaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    if-nez v3, :cond_2

    .line 508
    move-object v3, v0

    new-instance v4, Lcom/google/zxing/client/android/CaptureActivityHandler;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lcom/google/zxing/client/android/AppInvCaptureActivity;->decodeFormats:Ljava/util/Collection;

    move-object v8, v0

    iget-object v8, v8, Lcom/google/zxing/client/android/AppInvCaptureActivity;->characterSet:Ljava/lang/String;

    move-object v9, v0

    iget-object v9, v9, Lcom/google/zxing/client/android/AppInvCaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/zxing/client/android/CaptureActivityHandler;-><init>(Lcom/google/zxing/client/android/AppInvCaptureActivity;Ljava/util/Collection;Ljava/lang/String;Lcom/google/zxing/client/android/camera/CameraManager;)V

    iput-object v4, v3, Lcom/google/zxing/client/android/AppInvCaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    .line 510
    :cond_2
    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->decodeOrStoreSavedBitmap(Landroid/graphics/Bitmap;Lcom/google/zxing/Result;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 519
    .line 520
    :goto_1
    goto :goto_0

    .line 511
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 512
    .local v2, "ioe":Ljava/io/IOException;
    sget-object v3, Lcom/google/zxing/client/android/AppInvCaptureActivity;->TAG:Ljava/lang/String;

    move-object v4, v2

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    .line 513
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->displayFrameworkBugMessageAndExit()V

    .line 519
    goto :goto_1

    .line 514
    .end local v2    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 517
    .local v2, "e":Ljava/lang/RuntimeException;
    sget-object v3, Lcom/google/zxing/client/android/AppInvCaptureActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Unexpected error initializing camera"

    move-object v5, v2

    invoke-static {v3, v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    .line 518
    move-object v3, v0

    invoke-direct {v3}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->displayFrameworkBugMessageAndExit()V

    goto :goto_1
.end method

.method private sendReplyMessage(ILjava/lang/Object;J)V
    .locals 11

    .prologue
    .line 487
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/AppInvCaptureActivity;
    move v1, p1

    .local v1, "id":I
    move-object v2, p2

    .local v2, "arg":Ljava/lang/Object;
    move-wide v3, p3

    .local v3, "delayMS":J
    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/client/android/AppInvCaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    move v7, v1

    move-object v8, v2

    invoke-static {v6, v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object v5, v6

    .line 488
    .local v5, "message":Landroid/os/Message;
    move-wide v6, v3

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    .line 489
    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/client/android/AppInvCaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    move-object v7, v5

    move-wide v8, v3

    invoke-virtual {v6, v7, v8, v9}, Lcom/google/zxing/client/android/CaptureActivityHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v6

    .line 493
    :goto_0
    return-void

    .line 491
    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/client/android/AppInvCaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    move-object v7, v5

    invoke-virtual {v6, v7}, Lcom/google/zxing/client/android/CaptureActivityHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v6

    goto :goto_0
.end method


# virtual methods
.method public drawViewfinder()V
    .locals 2

    .prologue
    .line 538
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/AppInvCaptureActivity;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/android/AppInvCaptureActivity;->viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;

    invoke-virtual {v1}, Lcom/google/zxing/client/android/ViewfinderView;->drawViewfinder()V

    .line 539
    return-void
.end method

.method getCameraManager()Lcom/google/zxing/client/android/camera/CameraManager;
    .locals 2

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/AppInvCaptureActivity;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/android/AppInvCaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/android/AppInvCaptureActivity;
    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/AppInvCaptureActivity;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/android/AppInvCaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/android/AppInvCaptureActivity;
    return-object v0
.end method

.method getViewfinderView()Lcom/google/zxing/client/android/ViewfinderView;
    .locals 2

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/AppInvCaptureActivity;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/client/android/AppInvCaptureActivity;->viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/client/android/AppInvCaptureActivity;
    return-object v0
.end method

.method public handleDecode(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V
    .locals 11

    .prologue
    .line 290
    move-object v1, p0

    .local v1, "this":Lcom/google/zxing/client/android/AppInvCaptureActivity;
    move-object v2, p1

    .local v2, "rawResult":Lcom/google/zxing/Result;
    move-object v3, p2

    .local v3, "barcode":Landroid/graphics/Bitmap;
    move-object v7, v1

    move-object v8, v2

    iput-object v8, v7, Lcom/google/zxing/client/android/AppInvCaptureActivity;->lastResult:Lcom/google/zxing/Result;

    .line 291
    move-object v7, v1

    move-object v8, v2

    invoke-static {v7, v8}, Lcom/google/zxing/client/android/result/ResultHandlerFactory;->makeResultHandler(Landroid/app/Activity;Lcom/google/zxing/Result;)Lcom/google/zxing/client/android/result/ResultHandler;

    move-result-object v7

    move-object v4, v7

    .line 293
    .local v4, "resultHandler":Lcom/google/zxing/client/android/result/ResultHandler;
    move-object v7, v3

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    :goto_0
    move v5, v7

    .line 294
    .local v5, "fromLiveScan":Z
    move v7, v5

    if-eqz v7, :cond_0

    .line 295
    move-object v7, v1

    move-object v8, v3

    move-object v9, v2

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->drawResultPoints(Landroid/graphics/Bitmap;Lcom/google/zxing/Result;)V

    .line 298
    :cond_0
    sget-object v7, Lcom/google/zxing/client/android/AppInvCaptureActivity$1;->$SwitchMap$com$google$zxing$client$android$IntentSource:[I

    move-object v8, v1

    iget-object v8, v8, Lcom/google/zxing/client/android/AppInvCaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    invoke-virtual {v8}, Lcom/google/zxing/client/android/IntentSource;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 313
    :cond_1
    :goto_1
    return-void

    .line 293
    .end local v5    # "fromLiveScan":Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 301
    .restart local v5    # "fromLiveScan":Z
    :pswitch_0
    move-object v7, v1

    move-object v8, v2

    move-object v9, v4

    move-object v10, v3

    invoke-direct {v7, v8, v9, v10}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->handleDecodeExternally(Lcom/google/zxing/Result;Lcom/google/zxing/client/android/result/ResultHandler;Landroid/graphics/Bitmap;)V

    .line 302
    goto :goto_1

    .line 304
    :pswitch_1
    move v7, v5

    if-eqz v7, :cond_1

    .line 305
    const-string/jumbo v7, " (bulk scan)"

    move-object v6, v7

    .line 306
    .local v6, "message":Ljava/lang/String;
    move-object v7, v1

    move-object v8, v6

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 308
    move-object v7, v1

    const-wide/16 v8, 0x3e8

    invoke-virtual {v7, v8, v9}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->restartPreviewAfterDelay(J)V

    goto :goto_1

    .line 298
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/AppInvCaptureActivity;
    move-object v1, p1

    .local v1, "icicle":Landroid/os/Bundle;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 115
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    move-object v2, v3

    .line 116
    .local v2, "window":Landroid/view/Window;
    move-object v3, v2

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 117
    move-object v3, v0

    new-instance v4, Landroid/widget/LinearLayout;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lcom/google/zxing/client/android/AppInvCaptureActivity;->viewLayout:Landroid/widget/LinearLayout;

    .line 118
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/client/android/AppInvCaptureActivity;->viewLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 119
    move-object v3, v0

    new-instance v4, Landroid/widget/FrameLayout;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v4, v3, Lcom/google/zxing/client/android/AppInvCaptureActivity;->frameLayout:Landroid/widget/FrameLayout;

    .line 120
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/client/android/AppInvCaptureActivity;->frameLayout:Landroid/widget/FrameLayout;

    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/client/android/AppInvCaptureActivity;->viewLayout:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/client/android/AppInvCaptureActivity;->frameLayout:Landroid/widget/FrameLayout;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 124
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/client/android/AppInvCaptureActivity;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->setContentView(Landroid/view/View;)V

    .line 125
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/client/android/AppInvCaptureActivity;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 127
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/google/zxing/client/android/AppInvCaptureActivity;->hasSurface:Z

    .line 128
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/AppInvCaptureActivity;
    move-object v1, v0

    invoke-super {v1}, Landroid/app/Activity;->onDestroy()V

    .line 215
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/AppInvCaptureActivity;
    move v1, p1

    .local v1, "keyCode":I
    move-object v2, p2

    .local v2, "event":Landroid/view/KeyEvent;
    move v3, v1

    sparse-switch v3, :sswitch_data_0

    .line 243
    :cond_0
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    move v0, v3

    .end local v0    # "this":Lcom/google/zxing/client/android/AppInvCaptureActivity;
    :goto_0
    return v0

    .line 221
    .restart local v0    # "this":Lcom/google/zxing/client/android/AppInvCaptureActivity;
    :sswitch_0
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/client/android/AppInvCaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    sget-object v4, Lcom/google/zxing/client/android/IntentSource;->NATIVE_APP_INTENT:Lcom/google/zxing/client/android/IntentSource;

    if-ne v3, v4, :cond_1

    .line 222
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->setResult(I)V

    .line 223
    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->finish()V

    .line 224
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 226
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/client/android/AppInvCaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    sget-object v4, Lcom/google/zxing/client/android/IntentSource;->NONE:Lcom/google/zxing/client/android/IntentSource;

    if-eq v3, v4, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/client/android/AppInvCaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    sget-object v4, Lcom/google/zxing/client/android/IntentSource;->ZXING_LINK:Lcom/google/zxing/client/android/IntentSource;

    if-ne v3, v4, :cond_0

    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/client/android/AppInvCaptureActivity;->lastResult:Lcom/google/zxing/Result;

    if-eqz v3, :cond_0

    .line 227
    move-object v3, v0

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->restartPreviewAfterDelay(J)V

    .line 228
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 234
    :sswitch_1
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 237
    :sswitch_2
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/client/android/AppInvCaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/zxing/client/android/camera/CameraManager;->setTorch(Z)V

    .line 238
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 240
    :sswitch_3
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/client/android/AppInvCaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/zxing/client/android/camera/CameraManager;->setTorch(Z)V

    .line 241
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 219
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x18 -> :sswitch_3
        0x19 -> :sswitch_2
        0x1b -> :sswitch_1
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 7

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/AppInvCaptureActivity;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/client/android/AppInvCaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    if-eqz v2, :cond_0

    .line 200
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/client/android/AppInvCaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    invoke-virtual {v2}, Lcom/google/zxing/client/android/CaptureActivityHandler;->quitSynchronously()V

    .line 201
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/zxing/client/android/AppInvCaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    .line 203
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/client/android/AppInvCaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v2}, Lcom/google/zxing/client/android/camera/CameraManager;->closeDriver()V

    .line 204
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/zxing/client/android/AppInvCaptureActivity;->hasSurface:Z

    if-nez v2, :cond_1

    .line 205
    move-object v2, v0

    new-instance v3, Landroid/view/SurfaceView;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/google/zxing/client/android/AppInvCaptureActivity;->surfaceView:Landroid/view/SurfaceView;

    .line 206
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/client/android/AppInvCaptureActivity;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    move-object v1, v2

    .line 207
    .local v1, "surfaceHolder":Landroid/view/SurfaceHolder;
    move-object v2, v1

    move-object v3, v0

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 209
    .end local v1    # "surfaceHolder":Landroid/view/SurfaceHolder;
    :cond_1
    move-object v2, v0

    invoke-super {v2}, Landroid/app/Activity;->onPause()V

    .line 210
    return-void
.end method

.method protected onResume()V
    .locals 13

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/AppInvCaptureActivity;
    move-object v7, v0

    invoke-super {v7}, Landroid/app/Activity;->onResume()V

    .line 138
    move-object v7, v0

    new-instance v8, Lcom/google/zxing/client/android/camera/CameraManager;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    invoke-virtual {v10}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->getApplication()Landroid/app/Application;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/google/zxing/client/android/camera/CameraManager;-><init>(Landroid/content/Context;)V

    iput-object v8, v7, Lcom/google/zxing/client/android/AppInvCaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    .line 140
    move-object v7, v0

    new-instance v8, Lcom/google/zxing/client/android/ViewfinderView;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lcom/google/zxing/client/android/ViewfinderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v8, v7, Lcom/google/zxing/client/android/AppInvCaptureActivity;->viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;

    .line 141
    move-object v7, v0

    iget-object v7, v7, Lcom/google/zxing/client/android/AppInvCaptureActivity;->viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;

    move-object v8, v0

    iget-object v8, v8, Lcom/google/zxing/client/android/AppInvCaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    invoke-virtual {v7, v8}, Lcom/google/zxing/client/android/ViewfinderView;->setCameraManager(Lcom/google/zxing/client/android/camera/CameraManager;)V

    .line 142
    move-object v7, v0

    iget-object v7, v7, Lcom/google/zxing/client/android/AppInvCaptureActivity;->frameLayout:Landroid/widget/FrameLayout;

    move-object v8, v0

    iget-object v8, v8, Lcom/google/zxing/client/android/AppInvCaptureActivity;->viewfinderView:Lcom/google/zxing/client/android/ViewfinderView;

    invoke-virtual {v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 144
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/google/zxing/client/android/AppInvCaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    .line 145
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/google/zxing/client/android/AppInvCaptureActivity;->lastResult:Lcom/google/zxing/Result;

    .line 147
    move-object v7, v0

    iget-object v7, v7, Lcom/google/zxing/client/android/AppInvCaptureActivity;->surfaceView:Landroid/view/SurfaceView;

    if-nez v7, :cond_0

    .line 148
    move-object v7, v0

    new-instance v8, Landroid/view/SurfaceView;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    invoke-direct {v9, v10}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v8, v7, Lcom/google/zxing/client/android/AppInvCaptureActivity;->surfaceView:Landroid/view/SurfaceView;

    .line 149
    move-object v7, v0

    iget-object v7, v7, Lcom/google/zxing/client/android/AppInvCaptureActivity;->viewLayout:Landroid/widget/LinearLayout;

    move-object v8, v0

    iget-object v8, v8, Lcom/google/zxing/client/android/AppInvCaptureActivity;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 151
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lcom/google/zxing/client/android/AppInvCaptureActivity;->surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v7}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v7

    move-object v1, v7

    .line 152
    .local v1, "surfaceHolder":Landroid/view/SurfaceHolder;
    move-object v7, v0

    iget-boolean v7, v7, Lcom/google/zxing/client/android/AppInvCaptureActivity;->hasSurface:Z

    if-eqz v7, :cond_3

    .line 155
    move-object v7, v0

    move-object v8, v1

    invoke-direct {v7, v8}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    .line 162
    :goto_0
    move-object v7, v0

    iget-object v7, v7, Lcom/google/zxing/client/android/AppInvCaptureActivity;->surfaceView:Landroid/view/SurfaceView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 164
    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    move-object v2, v7

    .line 166
    .local v2, "intent":Landroid/content/Intent;
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/google/zxing/client/android/AppInvCaptureActivity;->copyToClipboard:Z

    .line 168
    move-object v7, v0

    sget-object v8, Lcom/google/zxing/client/android/IntentSource;->NONE:Lcom/google/zxing/client/android/IntentSource;

    iput-object v8, v7, Lcom/google/zxing/client/android/AppInvCaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    .line 169
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/google/zxing/client/android/AppInvCaptureActivity;->decodeFormats:Ljava/util/Collection;

    .line 170
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lcom/google/zxing/client/android/AppInvCaptureActivity;->characterSet:Ljava/lang/String;

    .line 172
    move-object v7, v2

    if-eqz v7, :cond_2

    .line 174
    move-object v7, v2

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 175
    .local v3, "action":Ljava/lang/String;
    move-object v7, v2

    invoke-virtual {v7}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 177
    .local v4, "dataString":Ljava/lang/String;
    const-string/jumbo v7, "com.google.zxing.client.android.SCAN"

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 180
    move-object v7, v0

    sget-object v8, Lcom/google/zxing/client/android/IntentSource;->NATIVE_APP_INTENT:Lcom/google/zxing/client/android/IntentSource;

    iput-object v8, v7, Lcom/google/zxing/client/android/AppInvCaptureActivity;->source:Lcom/google/zxing/client/android/IntentSource;

    .line 181
    move-object v7, v0

    move-object v8, v2

    invoke-static {v8}, Lcom/google/zxing/client/android/DecodeFormatManager;->parseDecodeFormats(Landroid/content/Intent;)Ljava/util/Collection;

    move-result-object v8

    iput-object v8, v7, Lcom/google/zxing/client/android/AppInvCaptureActivity;->decodeFormats:Ljava/util/Collection;

    .line 183
    move-object v7, v2

    const-string/jumbo v8, "SCAN_WIDTH"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v2

    const-string/jumbo v8, "SCAN_HEIGHT"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 184
    move-object v7, v2

    const-string/jumbo v8, "SCAN_WIDTH"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    move v5, v7

    .line 185
    .local v5, "width":I
    move-object v7, v2

    const-string/jumbo v8, "SCAN_HEIGHT"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    move v6, v7

    .line 186
    .local v6, "height":I
    move v7, v5

    if-lez v7, :cond_1

    move v7, v6

    if-lez v7, :cond_1

    .line 187
    move-object v7, v0

    iget-object v7, v7, Lcom/google/zxing/client/android/AppInvCaptureActivity;->cameraManager:Lcom/google/zxing/client/android/camera/CameraManager;

    move v8, v5

    move v9, v6

    invoke-virtual {v7, v8, v9}, Lcom/google/zxing/client/android/camera/CameraManager;->setManualFramingRect(II)V

    .line 192
    .end local v5    # "width":I
    .end local v6    # "height":I
    :cond_1
    move-object v7, v0

    move-object v8, v2

    const-string/jumbo v9, "CHARACTER_SET"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/google/zxing/client/android/AppInvCaptureActivity;->characterSet:Ljava/lang/String;

    .line 195
    .end local v3    # "action":Ljava/lang/String;
    .end local v4    # "dataString":Ljava/lang/String;
    :cond_2
    return-void

    .line 158
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    move-object v7, v1

    move-object v8, v0

    invoke-interface {v7, v8}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 159
    move-object v7, v1

    const/4 v8, 0x3

    invoke-interface {v7, v8}, Landroid/view/SurfaceHolder;->setType(I)V

    goto/16 :goto_0
.end method

.method public restartPreviewAfterDelay(J)V
    .locals 9

    .prologue
    .line 532
    move-object v1, p0

    .local v1, "this":Lcom/google/zxing/client/android/AppInvCaptureActivity;
    move-wide v2, p1

    .local v2, "delayMS":J
    move-object v4, v1

    iget-object v4, v4, Lcom/google/zxing/client/android/AppInvCaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    if-eqz v4, :cond_0

    .line 533
    move-object v4, v1

    iget-object v4, v4, Lcom/google/zxing/client/android/AppInvCaptureActivity;->handler:Lcom/google/zxing/client/android/CaptureActivityHandler;

    const/4 v5, 0x5

    move-wide v6, v2

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/zxing/client/android/CaptureActivityHandler;->sendEmptyMessageDelayed(IJ)Z

    move-result v4

    .line 535
    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 281
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/AppInvCaptureActivity;
    move-object v1, p1

    .local v1, "holder":Landroid/view/SurfaceHolder;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 265
    sget-object v2, Lcom/google/zxing/client/android/AppInvCaptureActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "*** WARNING *** surfaceCreated() gave us a null surface!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 267
    :cond_0
    move-object v2, v0

    iget-boolean v2, v2, Lcom/google/zxing/client/android/AppInvCaptureActivity;->hasSurface:Z

    if-nez v2, :cond_1

    .line 268
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/google/zxing/client/android/AppInvCaptureActivity;->hasSurface:Z

    .line 269
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/zxing/client/android/AppInvCaptureActivity;->initCamera(Landroid/view/SurfaceHolder;)V

    .line 271
    :cond_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/android/AppInvCaptureActivity;
    move-object v1, p1

    .local v1, "holder":Landroid/view/SurfaceHolder;
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/zxing/client/android/AppInvCaptureActivity;->hasSurface:Z

    .line 276
    return-void
.end method
