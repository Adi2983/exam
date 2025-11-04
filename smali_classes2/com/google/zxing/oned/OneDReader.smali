.class public abstract Lcom/google/zxing/oned/OneDReader;
.super Ljava/lang/Object;
.source "OneDReader.java"

# interfaces
.implements Lcom/google/zxing/Reader;


# static fields
.field protected static final INTEGER_MATH_SHIFT:I = 0x8

.field protected static final PATTERN_MATCH_RESULT_SCALE_FACTOR:I = 0x100


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/OneDReader;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doDecode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 108
    move-object/from16 v2, p0

    .local v2, "this":Lcom/google/zxing/oned/OneDReader;
    move-object/from16 v3, p1

    .local v3, "image":Lcom/google/zxing/BinaryBitmap;
    move-object/from16 v4, p2

    .local v4, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/BinaryBitmap;->getWidth()I

    move-result v19

    move/from16 v5, v19

    .line 109
    .local v5, "width":I
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/BinaryBitmap;->getHeight()I

    move-result v19

    move/from16 v6, v19

    .line 110
    .local v6, "height":I
    new-instance v19, Lcom/google/zxing/common/BitArray;

    move-object/from16 v26, v19

    move-object/from16 v19, v26

    move-object/from16 v20, v26

    move/from16 v21, v5

    invoke-direct/range {v20 .. v21}, Lcom/google/zxing/common/BitArray;-><init>(I)V

    move-object/from16 v7, v19

    .line 112
    .local v7, "row":Lcom/google/zxing/common/BitArray;
    move/from16 v19, v6

    const/16 v20, 0x1

    shr-int/lit8 v19, v19, 0x1

    move/from16 v8, v19

    .line 113
    .local v8, "middle":I
    move-object/from16 v19, v4

    if-eqz v19, :cond_1

    move-object/from16 v19, v4

    sget-object v20, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    const/16 v19, 0x1

    :goto_0
    move/from16 v9, v19

    .line 114
    .local v9, "tryHarder":Z
    const/16 v19, 0x1

    move/from16 v20, v6

    move/from16 v21, v9

    if-eqz v21, :cond_2

    const/16 v21, 0x8

    :goto_1
    shr-int v20, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v19

    move/from16 v10, v19

    .line 116
    .local v10, "rowStep":I
    move/from16 v19, v9

    if-eqz v19, :cond_3

    .line 117
    move/from16 v19, v6

    move/from16 v11, v19

    .line 122
    .local v11, "maxLines":I
    :goto_2
    const/16 v19, 0x0

    move/from16 v12, v19

    .local v12, "x":I
    :goto_3
    move/from16 v19, v12

    move/from16 v20, v11

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    .line 125
    move/from16 v19, v12

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    const/16 v20, 0x1

    shr-int/lit8 v19, v19, 0x1

    move/from16 v13, v19

    .line 126
    .local v13, "rowStepsAboveOrBelow":I
    move/from16 v19, v12

    const/16 v20, 0x1

    and-int/lit8 v19, v19, 0x1

    if-nez v19, :cond_4

    const/16 v19, 0x1

    :goto_4
    move/from16 v14, v19

    .line 127
    .local v14, "isAbove":Z
    move/from16 v19, v8

    move/from16 v20, v10

    move/from16 v21, v14

    if-eqz v21, :cond_5

    move/from16 v21, v13

    :goto_5
    mul-int v20, v20, v21

    add-int v19, v19, v20

    move/from16 v15, v19

    .line 128
    .local v15, "rowNumber":I
    move/from16 v19, v15

    if-ltz v19, :cond_0

    move/from16 v19, v15

    move/from16 v20, v6

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_6

    .line 130
    .line 177
    .end local v13    # "rowStepsAboveOrBelow":I
    .end local v14    # "isAbove":Z
    .end local v15    # "rowNumber":I
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v19

    throw v19

    .line 113
    .end local v9    # "tryHarder":Z
    .end local v10    # "rowStep":I
    .end local v11    # "maxLines":I
    .end local v12    # "x":I
    :cond_1
    const/16 v19, 0x0

    goto :goto_0

    .line 114
    .restart local v9    # "tryHarder":Z
    :cond_2
    const/16 v21, 0x5

    goto :goto_1

    .line 119
    .restart local v10    # "rowStep":I
    :cond_3
    const/16 v19, 0xf

    move/from16 v11, v19

    .restart local v11    # "maxLines":I
    goto :goto_2

    .line 126
    .restart local v12    # "x":I
    .restart local v13    # "rowStepsAboveOrBelow":I
    :cond_4
    const/16 v19, 0x0

    goto :goto_4

    .line 127
    .restart local v14    # "isAbove":Z
    :cond_5
    move/from16 v21, v13

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    goto :goto_5

    .line 135
    .restart local v15    # "rowNumber":I
    :cond_6
    move-object/from16 v19, v3

    move/from16 v20, v15

    move-object/from16 v21, v7

    :try_start_0
    invoke-virtual/range {v19 .. v21}, Lcom/google/zxing/BinaryBitmap;->getBlackRow(ILcom/google/zxing/common/BitArray;)Lcom/google/zxing/common/BitArray;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    move-object/from16 v7, v19

    .line 138
    .line 142
    const/16 v19, 0x0

    move/from16 v16, v19

    .local v16, "attempt":I
    :goto_6
    move/from16 v19, v16

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_9

    .line 143
    move/from16 v19, v16

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 144
    move-object/from16 v19, v7

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/common/BitArray;->reverse()V

    .line 149
    move-object/from16 v19, v4

    if-eqz v19, :cond_7

    move-object/from16 v19, v4

    sget-object v20, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 150
    new-instance v19, Ljava/util/EnumMap;

    move-object/from16 v26, v19

    move-object/from16 v19, v26

    move-object/from16 v20, v26

    const-class v21, Lcom/google/zxing/DecodeHintType;

    invoke-direct/range {v20 .. v21}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    move-object/from16 v17, v19

    .line 151
    .local v17, "newHints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    move-object/from16 v19, v17

    move-object/from16 v20, v4

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 152
    move-object/from16 v19, v17

    sget-object v20, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 153
    move-object/from16 v19, v17

    move-object/from16 v4, v19

    .line 158
    .end local v17    # "newHints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    :cond_7
    move-object/from16 v19, v2

    move/from16 v20, v15

    move-object/from16 v21, v7

    move-object/from16 v22, v4

    :try_start_1
    invoke-virtual/range {v19 .. v22}, Lcom/google/zxing/oned/OneDReader;->decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v19

    move-object/from16 v17, v19

    .line 160
    .local v17, "result":Lcom/google/zxing/Result;
    move/from16 v19, v16

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 162
    move-object/from16 v19, v17

    sget-object v20, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    const/16 v21, 0xb4

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 164
    move-object/from16 v19, v17

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v19

    move-object/from16 v18, v19

    .line 165
    .local v18, "points":[Lcom/google/zxing/ResultPoint;
    move-object/from16 v19, v18

    if-eqz v19, :cond_8

    .line 166
    move-object/from16 v19, v18

    const/16 v20, 0x0

    new-instance v21, Lcom/google/zxing/ResultPoint;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    move/from16 v23, v5

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v24, v18

    const/16 v25, 0x0

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v24

    sub-float v23, v23, v24

    const/high16 v24, 0x3f800000    # 1.0f

    sub-float v23, v23, v24

    move-object/from16 v24, v18

    const/16 v25, 0x0

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v24

    invoke-direct/range {v22 .. v24}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v21, v19, v20

    .line 167
    move-object/from16 v19, v18

    const/16 v20, 0x1

    new-instance v21, Lcom/google/zxing/ResultPoint;

    move-object/from16 v26, v21

    move-object/from16 v21, v26

    move-object/from16 v22, v26

    move/from16 v23, v5

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v24, v18

    const/16 v25, 0x1

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v24

    sub-float v23, v23, v24

    const/high16 v24, 0x3f800000    # 1.0f

    sub-float v23, v23, v24

    move-object/from16 v24, v18

    const/16 v25, 0x1

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v24

    invoke-direct/range {v22 .. v24}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v21, v19, v20
    :try_end_1
    .catch Lcom/google/zxing/ReaderException; {:try_start_1 .. :try_end_1} :catch_1

    .line 170
    .end local v18    # "points":[Lcom/google/zxing/ResultPoint;
    :cond_8
    move-object/from16 v19, v17

    move-object/from16 v2, v19

    .end local v2    # "this":Lcom/google/zxing/oned/OneDReader;
    return-object v2

    .line 136
    .end local v16    # "attempt":I
    .end local v17    # "result":Lcom/google/zxing/Result;
    .restart local v2    # "this":Lcom/google/zxing/oned/OneDReader;
    :catch_0
    move-exception v19

    move-object/from16 v16, v19

    .line 122
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 171
    .restart local v16    # "attempt":I
    :catch_1
    move-exception v19

    move-object/from16 v17, v19

    .line 142
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_6
.end method

.method protected static patternMatchVariance([I[II)I
    .locals 15

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "counters":[I
    move-object/from16 v1, p1

    .local v1, "pattern":[I
    move/from16 v2, p2

    .local v2, "maxIndividualVariance":I
    move-object v12, v0

    array-length v12, v12

    move v3, v12

    .line 260
    .local v3, "numCounters":I
    const/4 v12, 0x0

    move v4, v12

    .line 261
    .local v4, "total":I
    const/4 v12, 0x0

    move v5, v12

    .line 262
    .local v5, "patternLength":I
    const/4 v12, 0x0

    move v6, v12

    .local v6, "i":I
    :goto_0
    move v12, v6

    move v13, v3

    if-ge v12, v13, :cond_0

    .line 263
    move v12, v4

    move-object v13, v0

    move v14, v6

    aget v13, v13, v14

    add-int/2addr v12, v13

    move v4, v12

    .line 264
    move v12, v5

    move-object v13, v1

    move v14, v6

    aget v13, v13, v14

    add-int/2addr v12, v13

    move v5, v12

    .line 262
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 266
    :cond_0
    move v12, v4

    move v13, v5

    if-ge v12, v13, :cond_1

    .line 269
    const v12, 0x7fffffff

    move v0, v12

    .line 287
    .end local v0    # "counters":[I
    .end local v6    # "i":I
    :goto_1
    return v0

    .line 274
    .restart local v0    # "counters":[I
    .restart local v6    # "i":I
    :cond_1
    move v12, v4

    const/16 v13, 0x8

    shl-int/lit8 v12, v12, 0x8

    move v13, v5

    div-int/2addr v12, v13

    move v6, v12

    .line 275
    .local v6, "unitBarWidth":I
    move v12, v2

    move v13, v6

    mul-int/2addr v12, v13

    const/16 v13, 0x8

    shr-int/lit8 v12, v12, 0x8

    move v2, v12

    .line 277
    const/4 v12, 0x0

    move v7, v12

    .line 278
    .local v7, "totalVariance":I
    const/4 v12, 0x0

    move v8, v12

    .local v8, "x":I
    :goto_2
    move v12, v8

    move v13, v3

    if-ge v12, v13, :cond_4

    .line 279
    move-object v12, v0

    move v13, v8

    aget v12, v12, v13

    const/16 v13, 0x8

    shl-int/lit8 v12, v12, 0x8

    move v9, v12

    .line 280
    .local v9, "counter":I
    move-object v12, v1

    move v13, v8

    aget v12, v12, v13

    move v13, v6

    mul-int/2addr v12, v13

    move v10, v12

    .line 281
    .local v10, "scaledPattern":I
    move v12, v9

    move v13, v10

    if-le v12, v13, :cond_2

    move v12, v9

    move v13, v10

    sub-int/2addr v12, v13

    :goto_3
    move v11, v12

    .line 282
    .local v11, "variance":I
    move v12, v11

    move v13, v2

    if-le v12, v13, :cond_3

    .line 283
    const v12, 0x7fffffff

    move v0, v12

    goto :goto_1

    .line 281
    .end local v11    # "variance":I
    :cond_2
    move v12, v10

    move v13, v9

    sub-int/2addr v12, v13

    goto :goto_3

    .line 285
    .restart local v11    # "variance":I
    :cond_3
    move v12, v7

    move v13, v11

    add-int/2addr v12, v13

    move v7, v12

    .line 278
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 287
    .end local v9    # "counter":I
    .end local v10    # "scaledPattern":I
    .end local v11    # "variance":I
    :cond_4
    move v12, v7

    move v13, v4

    div-int/2addr v12, v13

    move v0, v12

    goto :goto_1
.end method

.method protected static recordPattern(Lcom/google/zxing/common/BitArray;I[I)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 196
    move-object v0, p0

    .local v0, "row":Lcom/google/zxing/common/BitArray;
    move v1, p1

    .local v1, "start":I
    move-object/from16 v2, p2

    .local v2, "counters":[I
    move-object v8, v2

    array-length v8, v8

    move v3, v8

    .line 197
    .local v3, "numCounters":I
    move-object v8, v2

    const/4 v9, 0x0

    move v10, v3

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11}, Ljava/util/Arrays;->fill([IIII)V

    .line 198
    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v8

    move v4, v8

    .line 199
    .local v4, "end":I
    move v8, v1

    move v9, v4

    if-lt v8, v9, :cond_0

    .line 200
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v8

    throw v8

    .line 202
    :cond_0
    move-object v8, v0

    move v9, v1

    invoke-virtual {v8, v9}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v8, 0x1

    :goto_0
    move v5, v8

    .line 203
    .local v5, "isWhite":Z
    const/4 v8, 0x0

    move v6, v8

    .line 204
    .local v6, "counterPosition":I
    move v8, v1

    move v7, v8

    .line 205
    .local v7, "i":I
    :goto_1
    move v8, v7

    move v9, v4

    if-ge v8, v9, :cond_3

    .line 206
    move-object v8, v0

    move v9, v7

    invoke-virtual {v8, v9}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v8

    move v9, v5

    xor-int/2addr v8, v9

    if-eqz v8, :cond_2

    .line 207
    move-object v8, v2

    move v9, v6

    move-object v12, v8

    move v13, v9

    move-object v8, v12

    move v9, v13

    move-object v10, v12

    move v11, v13

    aget v10, v10, v11

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    aput v10, v8, v9

    .line 217
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 202
    .end local v5    # "isWhite":Z
    .end local v6    # "counterPosition":I
    .end local v7    # "i":I
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 209
    .restart local v5    # "isWhite":Z
    .restart local v6    # "counterPosition":I
    .restart local v7    # "i":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 210
    move v8, v6

    move v9, v3

    if-ne v8, v9, :cond_5

    .line 211
    .line 221
    :cond_3
    move v8, v6

    move v9, v3

    if-eq v8, v9, :cond_7

    move v8, v6

    move v9, v3

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    if-ne v8, v9, :cond_4

    move v8, v7

    move v9, v4

    if-eq v8, v9, :cond_7

    .line 222
    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v8

    throw v8

    .line 213
    :cond_5
    move-object v8, v2

    move v9, v6

    const/4 v10, 0x1

    aput v10, v8, v9

    .line 214
    move v8, v5

    if-nez v8, :cond_6

    const/4 v8, 0x1

    :goto_3
    move v5, v8

    goto :goto_2

    :cond_6
    const/4 v8, 0x0

    goto :goto_3

    .line 224
    :cond_7
    return-void
.end method

.method protected static recordPatternInReverse(Lcom/google/zxing/common/BitArray;I[I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 229
    move-object v0, p0

    .local v0, "row":Lcom/google/zxing/common/BitArray;
    move v1, p1

    .local v1, "start":I
    move-object v2, p2

    .local v2, "counters":[I
    move-object v5, v2

    array-length v5, v5

    move v3, v5

    .line 230
    .local v3, "numTransitionsLeft":I
    move-object v5, v0

    move v6, v1

    invoke-virtual {v5, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    move v4, v5

    .line 231
    .local v4, "last":Z
    :cond_0
    :goto_0
    move v5, v1

    if-lez v5, :cond_2

    move v5, v3

    if-ltz v5, :cond_2

    .line 232
    move-object v5, v0

    add-int/lit8 v1, v1, -0x1

    move v6, v1

    invoke-virtual {v5, v6}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v5

    move v6, v4

    if-eq v5, v6, :cond_0

    .line 233
    add-int/lit8 v3, v3, -0x1

    .line 234
    move v5, v4

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    move v4, v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 237
    :cond_2
    move v5, v3

    if-ltz v5, :cond_3

    .line 238
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v5

    throw v5

    .line 240
    :cond_3
    move-object v5, v0

    move v6, v1

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    move-object v7, v2

    invoke-static {v5, v6, v7}, Lcom/google/zxing/oned/OneDReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 241
    return-void
.end method


# virtual methods
.method public decode(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/OneDReader;
    move-object v1, p1

    .local v1, "image":Lcom/google/zxing/BinaryBitmap;
    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/google/zxing/oned/OneDReader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/zxing/oned/OneDReader;
    return-object v0
.end method

.method public decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 57
    move-object/from16 v1, p0

    .local v1, "this":Lcom/google/zxing/oned/OneDReader;
    move-object/from16 v2, p1

    .local v2, "image":Lcom/google/zxing/BinaryBitmap;
    move-object/from16 v3, p2

    .local v3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object v13, v1

    move-object v14, v2

    move-object v15, v3

    :try_start_0
    invoke-direct {v13, v14, v15}, Lcom/google/zxing/oned/OneDReader;->doDecode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    move-object v1, v13

    .line 80
    .end local v1    # "this":Lcom/google/zxing/oned/OneDReader;
    :goto_0
    return-object v1

    .line 58
    .restart local v1    # "this":Lcom/google/zxing/oned/OneDReader;
    :catch_0
    move-exception v13

    move-object v4, v13

    .line 59
    .local v4, "nfe":Lcom/google/zxing/NotFoundException;
    move-object v13, v3

    if-eqz v13, :cond_1

    move-object v13, v3

    sget-object v14, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v13, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    const/4 v13, 0x1

    :goto_1
    move v5, v13

    .line 60
    .local v5, "tryHarder":Z
    move v13, v5

    if-eqz v13, :cond_3

    move-object v13, v2

    invoke-virtual {v13}, Lcom/google/zxing/BinaryBitmap;->isRotateSupported()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 61
    move-object v13, v2

    invoke-virtual {v13}, Lcom/google/zxing/BinaryBitmap;->rotateCounterClockwise()Lcom/google/zxing/BinaryBitmap;

    move-result-object v13

    move-object v6, v13

    .line 62
    .local v6, "rotatedImage":Lcom/google/zxing/BinaryBitmap;
    move-object v13, v1

    move-object v14, v6

    move-object v15, v3

    invoke-direct {v13, v14, v15}, Lcom/google/zxing/oned/OneDReader;->doDecode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v13

    move-object v7, v13

    .line 64
    .local v7, "result":Lcom/google/zxing/Result;
    move-object v13, v7

    invoke-virtual {v13}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v13

    move-object v8, v13

    .line 65
    .local v8, "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;*>;"
    const/16 v13, 0x10e

    move v9, v13

    .line 66
    .local v9, "orientation":I
    move-object v13, v8

    if-eqz v13, :cond_0

    move-object v13, v8

    sget-object v14, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v13, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 68
    move v13, v9

    move-object v14, v8

    sget-object v15, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    add-int/2addr v13, v14

    const/16 v14, 0x168

    rem-int/lit16 v13, v13, 0x168

    move v9, v13

    .line 71
    :cond_0
    move-object v13, v7

    sget-object v14, Lcom/google/zxing/ResultMetadataType;->ORIENTATION:Lcom/google/zxing/ResultMetadataType;

    move v15, v9

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 73
    move-object v13, v7

    invoke-virtual {v13}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v13

    move-object v10, v13

    .line 74
    .local v10, "points":[Lcom/google/zxing/ResultPoint;
    move-object v13, v10

    if-eqz v13, :cond_2

    .line 75
    move-object v13, v6

    invoke-virtual {v13}, Lcom/google/zxing/BinaryBitmap;->getHeight()I

    move-result v13

    move v11, v13

    .line 76
    .local v11, "height":I
    const/4 v13, 0x0

    move v12, v13

    .local v12, "i":I
    :goto_2
    move v13, v12

    move-object v14, v10

    array-length v14, v14

    if-ge v13, v14, :cond_2

    .line 77
    move-object v13, v10

    move v14, v12

    new-instance v15, Lcom/google/zxing/ResultPoint;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    move/from16 v17, v11

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v18, v10

    move/from16 v19, v12

    aget-object v18, v18, v19

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v18

    sub-float v17, v17, v18

    const/high16 v18, 0x3f800000    # 1.0f

    sub-float v17, v17, v18

    move-object/from16 v18, v10

    move/from16 v19, v12

    aget-object v18, v18, v19

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v18

    invoke-direct/range {v16 .. v18}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v15, v13, v14

    .line 76
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 59
    .end local v5    # "tryHarder":Z
    .end local v6    # "rotatedImage":Lcom/google/zxing/BinaryBitmap;
    .end local v7    # "result":Lcom/google/zxing/Result;
    .end local v8    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;*>;"
    .end local v9    # "orientation":I
    .end local v10    # "points":[Lcom/google/zxing/ResultPoint;
    .end local v11    # "height":I
    .end local v12    # "i":I
    :cond_1
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 80
    .restart local v5    # "tryHarder":Z
    .restart local v6    # "rotatedImage":Lcom/google/zxing/BinaryBitmap;
    .restart local v7    # "result":Lcom/google/zxing/Result;
    .restart local v8    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;*>;"
    .restart local v9    # "orientation":I
    .restart local v10    # "points":[Lcom/google/zxing/ResultPoint;
    :cond_2
    move-object v13, v7

    move-object v1, v13

    goto/16 :goto_0

    .line 82
    .end local v6    # "rotatedImage":Lcom/google/zxing/BinaryBitmap;
    .end local v7    # "result":Lcom/google/zxing/Result;
    .end local v8    # "metadata":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;*>;"
    .end local v9    # "orientation":I
    .end local v10    # "points":[Lcom/google/zxing/ResultPoint;
    :cond_3
    move-object v13, v4

    throw v13
.end method

.method public abstract decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method
