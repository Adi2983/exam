.class public final Lcom/google/zxing/multi/GenericMultipleBarcodeReader;
.super Ljava/lang/Object;
.source "GenericMultipleBarcodeReader.java"

# interfaces
.implements Lcom/google/zxing/multi/MultipleBarcodeReader;


# static fields
.field private static final MIN_DIMENSION_TO_RECUR:I = 0x64


# instance fields
.field private final delegate:Lcom/google/zxing/Reader;


# direct methods
.method public constructor <init>(Lcom/google/zxing/Reader;)V
    .locals 4

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/multi/GenericMultipleBarcodeReader;
    move-object v1, p1

    .local v1, "delegate":Lcom/google/zxing/Reader;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 52
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->delegate:Lcom/google/zxing/Reader;

    .line 53
    return-void
.end method

.method private doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;II)V
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/Result;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 78
    move-object/from16 v2, p0

    .local v2, "this":Lcom/google/zxing/multi/GenericMultipleBarcodeReader;
    move-object/from16 v3, p1

    .local v3, "image":Lcom/google/zxing/BinaryBitmap;
    move-object/from16 v4, p2

    .local v4, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object/from16 v5, p3

    .local v5, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/Result;>;"
    move/from16 v6, p4

    .local v6, "xOffset":I
    move/from16 v7, p5

    .local v7, "yOffset":I
    move-object/from16 v23, v2

    :try_start_0
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->delegate:Lcom/google/zxing/Reader;

    move-object/from16 v23, v0

    move-object/from16 v24, v3

    move-object/from16 v25, v4

    invoke-interface/range {v23 .. v25}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v23

    move-object/from16 v8, v23

    .line 81
    .line 82
    .local v8, "result":Lcom/google/zxing/Result;
    const/16 v23, 0x0

    move/from16 v9, v23

    .line 83
    .local v9, "alreadyFound":Z
    move-object/from16 v23, v5

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    move-object/from16 v10, v23

    .local v10, "i$":Ljava/util/Iterator;
    :goto_0
    move-object/from16 v23, v10

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_0

    move-object/from16 v23, v10

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/google/zxing/Result;

    move-object/from16 v11, v23

    .line 84
    .local v11, "existingResult":Lcom/google/zxing/Result;
    move-object/from16 v23, v11

    invoke-virtual/range {v23 .. v23}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v24, v8

    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 85
    const/16 v23, 0x1

    move/from16 v9, v23

    .line 89
    .end local v11    # "existingResult":Lcom/google/zxing/Result;
    :cond_0
    move/from16 v23, v9

    if-eqz v23, :cond_2

    .line 90
    .line 140
    .end local v8    # "result":Lcom/google/zxing/Result;
    .end local v9    # "alreadyFound":Z
    .end local v10    # "i$":Ljava/util/Iterator;
    :goto_1
    return-void

    .line 79
    :catch_0
    move-exception v23

    move-object/from16 v9, v23

    .line 80
    .local v9, "re":Lcom/google/zxing/ReaderException;
    goto :goto_1

    .line 86
    .restart local v8    # "result":Lcom/google/zxing/Result;
    .local v9, "alreadyFound":Z
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v11    # "existingResult":Lcom/google/zxing/Result;
    :cond_1
    goto :goto_0

    .line 92
    .end local v11    # "existingResult":Lcom/google/zxing/Result;
    :cond_2
    move-object/from16 v23, v5

    move-object/from16 v24, v8

    move/from16 v25, v6

    move/from16 v26, v7

    invoke-static/range {v24 .. v26}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->translateResultPoints(Lcom/google/zxing/Result;II)Lcom/google/zxing/Result;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v23

    .line 93
    move-object/from16 v23, v8

    invoke-virtual/range {v23 .. v23}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v23

    move-object/from16 v10, v23

    .line 94
    .local v10, "resultPoints":[Lcom/google/zxing/ResultPoint;
    move-object/from16 v23, v10

    if-eqz v23, :cond_3

    move-object/from16 v23, v10

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    if-nez v23, :cond_4

    .line 95
    :cond_3
    goto :goto_1

    .line 97
    :cond_4
    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Lcom/google/zxing/BinaryBitmap;->getWidth()I

    move-result v23

    move/from16 v11, v23

    .line 98
    .local v11, "width":I
    move-object/from16 v23, v3

    invoke-virtual/range {v23 .. v23}, Lcom/google/zxing/BinaryBitmap;->getHeight()I

    move-result v23

    move/from16 v12, v23

    .line 99
    .local v12, "height":I
    move/from16 v23, v11

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v13, v23

    .line 100
    .local v13, "minX":F
    move/from16 v23, v12

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v14, v23

    .line 101
    .local v14, "minY":F
    const/16 v23, 0x0

    move/from16 v15, v23

    .line 102
    .local v15, "maxX":F
    const/16 v23, 0x0

    move/from16 v16, v23

    .line 103
    .local v16, "maxY":F
    move-object/from16 v23, v10

    move-object/from16 v17, v23

    .local v17, "arr$":[Lcom/google/zxing/ResultPoint;
    move-object/from16 v23, v17

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v18, v23

    .local v18, "len$":I
    const/16 v23, 0x0

    move/from16 v19, v23

    .local v19, "i$":I
    :goto_2
    move/from16 v23, v19

    move/from16 v24, v18

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_9

    move-object/from16 v23, v17

    move/from16 v24, v19

    aget-object v23, v23, v24

    move-object/from16 v20, v23

    .line 104
    .local v20, "point":Lcom/google/zxing/ResultPoint;
    move-object/from16 v23, v20

    invoke-virtual/range {v23 .. v23}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v23

    move/from16 v21, v23

    .line 105
    .local v21, "x":F
    move-object/from16 v23, v20

    invoke-virtual/range {v23 .. v23}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v23

    move/from16 v22, v23

    .line 106
    .local v22, "y":F
    move/from16 v23, v21

    move/from16 v24, v13

    cmpg-float v23, v23, v24

    if-gez v23, :cond_5

    .line 107
    move/from16 v23, v21

    move/from16 v13, v23

    .line 109
    :cond_5
    move/from16 v23, v22

    move/from16 v24, v14

    cmpg-float v23, v23, v24

    if-gez v23, :cond_6

    .line 110
    move/from16 v23, v22

    move/from16 v14, v23

    .line 112
    :cond_6
    move/from16 v23, v21

    move/from16 v24, v15

    cmpl-float v23, v23, v24

    if-lez v23, :cond_7

    .line 113
    move/from16 v23, v21

    move/from16 v15, v23

    .line 115
    :cond_7
    move/from16 v23, v22

    move/from16 v24, v16

    cmpl-float v23, v23, v24

    if-lez v23, :cond_8

    .line 116
    move/from16 v23, v22

    move/from16 v16, v23

    .line 103
    :cond_8
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 121
    .end local v20    # "point":Lcom/google/zxing/ResultPoint;
    .end local v21    # "x":F
    .end local v22    # "y":F
    :cond_9
    move/from16 v23, v13

    const/high16 v24, 0x42c80000    # 100.0f

    cmpl-float v23, v23, v24

    if-lez v23, :cond_a

    .line 122
    move-object/from16 v23, v2

    move-object/from16 v24, v3

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v27, v13

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v28, v12

    invoke-virtual/range {v24 .. v28}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v24

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move/from16 v27, v6

    move/from16 v28, v7

    invoke-direct/range {v23 .. v28}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;II)V

    .line 126
    :cond_a
    move/from16 v23, v14

    const/high16 v24, 0x42c80000    # 100.0f

    cmpl-float v23, v23, v24

    if-lez v23, :cond_b

    .line 127
    move-object/from16 v23, v2

    move-object/from16 v24, v3

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v27, v11

    move/from16 v28, v14

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    invoke-virtual/range {v24 .. v28}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v24

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move/from16 v27, v6

    move/from16 v28, v7

    invoke-direct/range {v23 .. v28}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;II)V

    .line 131
    :cond_b
    move/from16 v23, v15

    move/from16 v24, v11

    const/16 v25, 0x64

    add-int/lit8 v24, v24, -0x64

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    cmpg-float v23, v23, v24

    if-gez v23, :cond_c

    .line 132
    move-object/from16 v23, v2

    move-object/from16 v24, v3

    move/from16 v25, v15

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    const/16 v26, 0x0

    move/from16 v27, v11

    move/from16 v28, v15

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    sub-int v27, v27, v28

    move/from16 v28, v12

    invoke-virtual/range {v24 .. v28}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v24

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move/from16 v27, v6

    move/from16 v28, v15

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    add-int v27, v27, v28

    move/from16 v28, v7

    invoke-direct/range {v23 .. v28}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;II)V

    .line 136
    :cond_c
    move/from16 v23, v16

    move/from16 v24, v12

    const/16 v25, 0x64

    add-int/lit8 v24, v24, -0x64

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    cmpg-float v23, v23, v24

    if-gez v23, :cond_d

    .line 137
    move-object/from16 v23, v2

    move-object/from16 v24, v3

    const/16 v25, 0x0

    move/from16 v26, v16

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v27, v11

    move/from16 v28, v12

    move/from16 v29, v16

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    sub-int v28, v28, v29

    invoke-virtual/range {v24 .. v28}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v24

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move/from16 v27, v6

    move/from16 v28, v7

    move/from16 v29, v16

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    add-int v28, v28, v29

    invoke-direct/range {v23 .. v28}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;II)V

    .line 140
    :cond_d
    goto/16 :goto_1
.end method

.method private static translateResultPoints(Lcom/google/zxing/Result;II)Lcom/google/zxing/Result;
    .locals 15

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "result":Lcom/google/zxing/Result;
    move/from16 v1, p1

    .local v1, "xOffset":I
    move/from16 v2, p2

    .local v2, "yOffset":I
    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v7

    move-object v3, v7

    .line 144
    .local v3, "oldResultPoints":[Lcom/google/zxing/ResultPoint;
    move-object v7, v3

    if-nez v7, :cond_0

    .line 145
    move-object v7, v0

    move-object v0, v7

    .line 152
    .end local v0    # "result":Lcom/google/zxing/Result;
    :goto_0
    return-object v0

    .line 147
    .restart local v0    # "result":Lcom/google/zxing/Result;
    :cond_0
    move-object v7, v3

    array-length v7, v7

    new-array v7, v7, [Lcom/google/zxing/ResultPoint;

    move-object v4, v7

    .line 148
    .local v4, "newResultPoints":[Lcom/google/zxing/ResultPoint;
    const/4 v7, 0x0

    move v5, v7

    .local v5, "i":I
    :goto_1
    move v7, v5

    move-object v8, v3

    array-length v8, v8

    if-ge v7, v8, :cond_1

    .line 149
    move-object v7, v3

    move v8, v5

    aget-object v7, v7, v8

    move-object v6, v7

    .line 150
    .local v6, "oldPoint":Lcom/google/zxing/ResultPoint;
    move-object v7, v4

    move v8, v5

    new-instance v9, Lcom/google/zxing/ResultPoint;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v6

    invoke-virtual {v11}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v11

    move v12, v1

    int-to-float v12, v12

    add-float/2addr v11, v12

    move-object v12, v6

    invoke-virtual {v12}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v12

    move v13, v2

    int-to-float v13, v13

    add-float/2addr v12, v13

    invoke-direct {v10, v11, v12}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v9, v7, v8

    .line 148
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 152
    .end local v6    # "oldPoint":Lcom/google/zxing/ResultPoint;
    :cond_1
    new-instance v7, Lcom/google/zxing/Result;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v0

    invoke-virtual {v9}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v9

    move-object v10, v0

    invoke-virtual {v10}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object v10

    move-object v11, v4

    move-object v12, v0

    invoke-virtual {v12}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v12

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    move-object v0, v7

    goto :goto_0
.end method


# virtual methods
.method public decodeMultiple(Lcom/google/zxing/BinaryBitmap;)[Lcom/google/zxing/Result;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/multi/GenericMultipleBarcodeReader;
    move-object v1, p1

    .local v1, "image":Lcom/google/zxing/BinaryBitmap;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->decodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)[Lcom/google/zxing/Result;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/zxing/multi/GenericMultipleBarcodeReader;
    return-object v0
.end method

.method public decodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)[Lcom/google/zxing/Result;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)[",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/multi/GenericMultipleBarcodeReader;
    move-object v1, p1

    .local v1, "image":Lcom/google/zxing/BinaryBitmap;
    move-object v2, p2

    .local v2, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    new-instance v4, Ljava/util/ArrayList;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v4

    .line 64
    .local v3, "results":Ljava/util/List;, "Ljava/util/List<Lcom/google/zxing/Result;>;"
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->doDecodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;II)V

    .line 65
    move-object v4, v3

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 66
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v4

    throw v4

    .line 68
    :cond_0
    move-object v4, v3

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lcom/google/zxing/Result;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/google/zxing/Result;

    move-object v0, v4

    .end local v0    # "this":Lcom/google/zxing/multi/GenericMultipleBarcodeReader;
    return-object v0
.end method
