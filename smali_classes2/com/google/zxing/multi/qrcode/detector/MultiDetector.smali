.class public final Lcom/google/zxing/multi/qrcode/detector/MultiDetector;
.super Lcom/google/zxing/qrcode/detector/Detector;
.source "MultiDetector.java"


# static fields
.field private static final EMPTY_DETECTOR_RESULTS:[Lcom/google/zxing/common/DetectorResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/zxing/common/DetectorResult;

    sput-object v0, Lcom/google/zxing/multi/qrcode/detector/MultiDetector;->EMPTY_DETECTOR_RESULTS:[Lcom/google/zxing/common/DetectorResult;

    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/multi/qrcode/detector/MultiDetector;
    move-object v1, p1

    .local v1, "image":Lcom/google/zxing/common/BitMatrix;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/google/zxing/qrcode/detector/Detector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    .line 45
    return-void
.end method


# virtual methods
.method public detectMulti(Ljava/util/Map;)[Lcom/google/zxing/common/DetectorResult;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)[",
            "Lcom/google/zxing/common/DetectorResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 48
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/multi/qrcode/detector/MultiDetector;
    move-object/from16 v1, p1

    .local v1, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object v12, v0

    invoke-virtual {v12}, Lcom/google/zxing/multi/qrcode/detector/MultiDetector;->getImage()Lcom/google/zxing/common/BitMatrix;

    move-result-object v12

    move-object v2, v12

    .line 49
    .local v2, "image":Lcom/google/zxing/common/BitMatrix;
    move-object v12, v1

    if-nez v12, :cond_0

    const/4 v12, 0x0

    :goto_0
    move-object v3, v12

    .line 51
    .local v3, "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    new-instance v12, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v2

    move-object v15, v3

    invoke-direct {v13, v14, v15}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V

    move-object v4, v12

    .line 52
    .local v4, "finder":Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;
    move-object v12, v4

    move-object v13, v1

    invoke-virtual {v12, v13}, Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;->findMulti(Ljava/util/Map;)[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    move-result-object v12

    move-object v5, v12

    .line 54
    .local v5, "infos":[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    move-object v12, v5

    array-length v12, v12

    if-nez v12, :cond_1

    .line 55
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v12

    throw v12

    .line 49
    .end local v3    # "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    .end local v4    # "finder":Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;
    .end local v5    # "infos":[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    :cond_0
    move-object v12, v1

    sget-object v13, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v12, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/zxing/ResultPointCallback;

    goto :goto_0

    .line 58
    .restart local v3    # "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    .restart local v4    # "finder":Lcom/google/zxing/multi/qrcode/detector/MultiFinderPatternFinder;
    .restart local v5    # "infos":[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    :cond_1
    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v12

    .line 59
    .local v6, "result":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/common/DetectorResult;>;"
    move-object v12, v5

    move-object v7, v12

    .local v7, "arr$":[Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    move-object v12, v7

    array-length v12, v12

    move v8, v12

    .local v8, "len$":I
    const/4 v12, 0x0

    move v9, v12

    .local v9, "i$":I
    :goto_1
    move v12, v9

    move v13, v8

    if-ge v12, v13, :cond_2

    move-object v12, v7

    move v13, v9

    aget-object v12, v12, v13

    move-object v10, v12

    .line 61
    .local v10, "info":Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    move-object v12, v6

    move-object v13, v0

    move-object v14, v10

    :try_start_0
    invoke-virtual {v13, v14}, Lcom/google/zxing/multi/qrcode/detector/MultiDetector;->processFinderPatternInfo(Lcom/google/zxing/qrcode/detector/FinderPatternInfo;)Lcom/google/zxing/common/DetectorResult;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    .line 64
    .line 59
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 62
    :catch_0
    move-exception v12

    move-object v11, v12

    goto :goto_2

    .line 66
    .end local v10    # "info":Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    :cond_2
    move-object v12, v6

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 67
    sget-object v12, Lcom/google/zxing/multi/qrcode/detector/MultiDetector;->EMPTY_DETECTOR_RESULTS:[Lcom/google/zxing/common/DetectorResult;

    move-object v0, v12

    .line 69
    .end local v0    # "this":Lcom/google/zxing/multi/qrcode/detector/MultiDetector;
    :goto_3
    return-object v0

    .restart local v0    # "this":Lcom/google/zxing/multi/qrcode/detector/MultiDetector;
    :cond_3
    move-object v12, v6

    move-object v13, v6

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    new-array v13, v13, [Lcom/google/zxing/common/DetectorResult;

    invoke-interface {v12, v13}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Lcom/google/zxing/common/DetectorResult;

    move-object v0, v12

    goto :goto_3
.end method
