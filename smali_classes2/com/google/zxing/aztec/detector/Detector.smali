.class public final Lcom/google/zxing/aztec/detector/Detector;
.super Ljava/lang/Object;
.source "Detector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/zxing/aztec/detector/Detector$1;,
        Lcom/google/zxing/aztec/detector/Detector$Point;
    }
.end annotation


# instance fields
.field private compact:Z

.field private final image:Lcom/google/zxing/common/BitMatrix;

.field private nbCenterLayers:I

.field private nbDataBlocks:I

.field private nbLayers:I

.field private shift:I


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 4

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/aztec/detector/Detector;
    move-object v1, p1

    .local v1, "image":Lcom/google/zxing/common/BitMatrix;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 47
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    .line 48
    return-void
.end method

.method private static correctParameterData([ZZ)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 208
    move-object/from16 v0, p0

    .local v0, "parameterData":[Z
    move/from16 v1, p1

    .local v1, "compact":Z
    move v10, v1

    if-eqz v10, :cond_1

    .line 209
    const/4 v10, 0x7

    move v2, v10

    .line 210
    .local v2, "numCodewords":I
    const/4 v10, 0x2

    move v3, v10

    .line 216
    .local v3, "numDataCodewords":I
    :goto_0
    move v10, v2

    move v11, v3

    sub-int/2addr v10, v11

    move v4, v10

    .line 217
    .local v4, "numECCodewords":I
    move v10, v2

    new-array v10, v10, [I

    move-object v5, v10

    .line 219
    .local v5, "parameterWords":[I
    const/4 v10, 0x4

    move v6, v10

    .line 220
    .local v6, "codewordSize":I
    const/4 v10, 0x0

    move v7, v10

    .local v7, "i":I
    :goto_1
    move v10, v7

    move v11, v2

    if-ge v10, v11, :cond_3

    .line 221
    const/4 v10, 0x1

    move v8, v10

    .line 222
    .local v8, "flag":I
    const/4 v10, 0x1

    move v9, v10

    .local v9, "j":I
    :goto_2
    move v10, v9

    move v11, v6

    if-gt v10, v11, :cond_2

    .line 223
    move-object v10, v0

    move v11, v6

    move v12, v7

    mul-int/2addr v11, v12

    move v12, v6

    add-int/2addr v11, v12

    move v12, v9

    sub-int/2addr v11, v12

    aget-boolean v10, v10, v11

    if-eqz v10, :cond_0

    .line 224
    move-object v10, v5

    move v11, v7

    move-object v14, v10

    move v15, v11

    move-object v10, v14

    move v11, v15

    move-object v12, v14

    move v13, v15

    aget v12, v12, v13

    move v13, v8

    add-int/2addr v12, v13

    aput v12, v10, v11

    .line 226
    :cond_0
    move v10, v8

    const/4 v11, 0x1

    shl-int/lit8 v10, v10, 0x1

    move v8, v10

    .line 222
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 212
    .end local v2    # "numCodewords":I
    .end local v3    # "numDataCodewords":I
    .end local v4    # "numECCodewords":I
    .end local v5    # "parameterWords":[I
    .end local v6    # "codewordSize":I
    .end local v7    # "i":I
    .end local v8    # "flag":I
    .end local v9    # "j":I
    :cond_1
    const/16 v10, 0xa

    move v2, v10

    .line 213
    .restart local v2    # "numCodewords":I
    const/4 v10, 0x4

    move v3, v10

    .restart local v3    # "numDataCodewords":I
    goto :goto_0

    .line 220
    .restart local v4    # "numECCodewords":I
    .restart local v5    # "parameterWords":[I
    .restart local v6    # "codewordSize":I
    .restart local v7    # "i":I
    .restart local v8    # "flag":I
    .restart local v9    # "j":I
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 231
    .end local v8    # "flag":I
    .end local v9    # "j":I
    :cond_3
    :try_start_0
    new-instance v10, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    sget-object v12, Lcom/google/zxing/common/reedsolomon/GenericGF;->AZTEC_PARAM:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-direct {v11, v12}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V

    move-object v7, v10

    .line 232
    .local v7, "rsDecoder":Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
    move-object v10, v7

    move-object v11, v5

    move v12, v4

    invoke-virtual {v10, v11, v12}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->decode([II)V
    :try_end_0
    .catch Lcom/google/zxing/common/reedsolomon/ReedSolomonException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .line 237
    const/4 v10, 0x0

    move v7, v10

    .local v7, "i":I
    :goto_3
    move v10, v7

    move v11, v3

    if-ge v10, v11, :cond_6

    .line 238
    const/4 v10, 0x1

    move v8, v10

    .line 239
    .restart local v8    # "flag":I
    const/4 v10, 0x1

    move v9, v10

    .restart local v9    # "j":I
    :goto_4
    move v10, v9

    move v11, v6

    if-gt v10, v11, :cond_5

    .line 240
    move-object v10, v0

    move v11, v7

    move v12, v6

    mul-int/2addr v11, v12

    move v12, v6

    add-int/2addr v11, v12

    move v12, v9

    sub-int/2addr v11, v12

    move-object v12, v5

    move v13, v7

    aget v12, v12, v13

    move v13, v8

    and-int/2addr v12, v13

    move v13, v8

    if-ne v12, v13, :cond_4

    const/4 v12, 0x1

    :goto_5
    aput-boolean v12, v10, v11

    .line 241
    move v10, v8

    const/4 v11, 0x1

    shl-int/lit8 v10, v10, 0x1

    move v8, v10

    .line 239
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 233
    .end local v7    # "i":I
    .end local v8    # "flag":I
    .end local v9    # "j":I
    :catch_0
    move-exception v10

    move-object v7, v10

    .line 234
    .local v7, "rse":Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v10

    throw v10

    .line 240
    .local v7, "i":I
    .restart local v8    # "flag":I
    .restart local v9    # "j":I
    :cond_4
    const/4 v12, 0x0

    goto :goto_5

    .line 237
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 244
    .end local v8    # "flag":I
    .end local v9    # "j":I
    :cond_6
    return-void
.end method

.method private static distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F
    .locals 6

    .prologue
    .line 621
    move-object v0, p0

    .local v0, "a":Lcom/google/zxing/aztec/detector/Detector$Point;
    move-object v1, p1

    .local v1, "b":Lcom/google/zxing/aztec/detector/Detector$Point;
    move-object v2, v0

    iget v2, v2, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    move-object v3, v0

    iget v3, v3, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    move-object v4, v1

    iget v4, v4, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    move-object v5, v1

    iget v5, v5, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    invoke-static {v2, v3, v4, v5}, Lcom/google/zxing/common/detector/MathUtils;->distance(IIII)F

    move-result v2

    move v0, v2

    .end local v0    # "a":Lcom/google/zxing/aztec/detector/Detector$Point;
    return v0
.end method

.method private extractParameters([Lcom/google/zxing/aztec/detector/Detector$Point;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/aztec/detector/Detector;
    move-object/from16 v1, p1

    .local v1, "bullEyeCornerPoints":[Lcom/google/zxing/aztec/detector/Detector$Point;
    move-object v9, v0

    move-object v10, v1

    const/4 v11, 0x0

    aget-object v10, v10, v11

    move-object v11, v1

    const/4 v12, 0x1

    aget-object v11, v11, v12

    const/4 v12, 0x2

    move-object v13, v0

    iget v13, v13, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    mul-int/2addr v12, v13

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    invoke-direct {v9, v10, v11, v12}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;I)[Z

    move-result-object v9

    move-object v2, v9

    .line 87
    .local v2, "resab":[Z
    move-object v9, v0

    move-object v10, v1

    const/4 v11, 0x1

    aget-object v10, v10, v11

    move-object v11, v1

    const/4 v12, 0x2

    aget-object v11, v11, v12

    const/4 v12, 0x2

    move-object v13, v0

    iget v13, v13, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    mul-int/2addr v12, v13

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    invoke-direct {v9, v10, v11, v12}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;I)[Z

    move-result-object v9

    move-object v3, v9

    .line 88
    .local v3, "resbc":[Z
    move-object v9, v0

    move-object v10, v1

    const/4 v11, 0x2

    aget-object v10, v10, v11

    move-object v11, v1

    const/4 v12, 0x3

    aget-object v11, v11, v12

    const/4 v12, 0x2

    move-object v13, v0

    iget v13, v13, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    mul-int/2addr v12, v13

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    invoke-direct {v9, v10, v11, v12}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;I)[Z

    move-result-object v9

    move-object v4, v9

    .line 89
    .local v4, "rescd":[Z
    move-object v9, v0

    move-object v10, v1

    const/4 v11, 0x3

    aget-object v10, v10, v11

    move-object v11, v1

    const/4 v12, 0x0

    aget-object v11, v11, v12

    const/4 v12, 0x2

    move-object v13, v0

    iget v13, v13, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    mul-int/2addr v12, v13

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    invoke-direct {v9, v10, v11, v12}, Lcom/google/zxing/aztec/detector/Detector;->sampleLine(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;I)[Z

    move-result-object v9

    move-object v5, v9

    .line 92
    .local v5, "resda":[Z
    move-object v9, v2

    const/4 v10, 0x0

    aget-boolean v9, v9, v10

    if-eqz v9, :cond_0

    move-object v9, v2

    const/4 v10, 0x2

    move-object v11, v0

    iget v11, v11, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    mul-int/2addr v10, v11

    aget-boolean v9, v9, v10

    if-eqz v9, :cond_0

    .line 93
    move-object v9, v0

    const/4 v10, 0x0

    iput v10, v9, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    .line 111
    :goto_0
    move-object v9, v0

    iget-boolean v9, v9, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    if-eqz v9, :cond_6

    .line 112
    const/16 v9, 0x1c

    new-array v9, v9, [Z

    move-object v7, v9

    .line 113
    .local v7, "shiftedParameterData":[Z
    const/4 v9, 0x0

    move v8, v9

    .local v8, "i":I
    :goto_1
    move v9, v8

    const/4 v10, 0x7

    if-ge v9, v10, :cond_4

    .line 114
    move-object v9, v7

    move v10, v8

    move-object v11, v2

    const/4 v12, 0x2

    move v13, v8

    add-int/2addr v12, v13

    aget-boolean v11, v11, v12

    aput-boolean v11, v9, v10

    .line 115
    move-object v9, v7

    move v10, v8

    const/4 v11, 0x7

    add-int/lit8 v10, v10, 0x7

    move-object v11, v3

    const/4 v12, 0x2

    move v13, v8

    add-int/2addr v12, v13

    aget-boolean v11, v11, v12

    aput-boolean v11, v9, v10

    .line 116
    move-object v9, v7

    move v10, v8

    const/16 v11, 0xe

    add-int/lit8 v10, v10, 0xe

    move-object v11, v4

    const/4 v12, 0x2

    move v13, v8

    add-int/2addr v12, v13

    aget-boolean v11, v11, v12

    aput-boolean v11, v9, v10

    .line 117
    move-object v9, v7

    move v10, v8

    const/16 v11, 0x15

    add-int/lit8 v10, v10, 0x15

    move-object v11, v5

    const/4 v12, 0x2

    move v13, v8

    add-int/2addr v12, v13

    aget-boolean v11, v11, v12

    aput-boolean v11, v9, v10

    .line 113
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 94
    .end local v7    # "shiftedParameterData":[Z
    .end local v8    # "i":I
    :cond_0
    move-object v9, v3

    const/4 v10, 0x0

    aget-boolean v9, v9, v10

    if-eqz v9, :cond_1

    move-object v9, v3

    const/4 v10, 0x2

    move-object v11, v0

    iget v11, v11, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    mul-int/2addr v10, v11

    aget-boolean v9, v9, v10

    if-eqz v9, :cond_1

    .line 95
    move-object v9, v0

    const/4 v10, 0x1

    iput v10, v9, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    goto :goto_0

    .line 96
    :cond_1
    move-object v9, v4

    const/4 v10, 0x0

    aget-boolean v9, v9, v10

    if-eqz v9, :cond_2

    move-object v9, v4

    const/4 v10, 0x2

    move-object v11, v0

    iget v11, v11, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    mul-int/2addr v10, v11

    aget-boolean v9, v9, v10

    if-eqz v9, :cond_2

    .line 97
    move-object v9, v0

    const/4 v10, 0x2

    iput v10, v9, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    goto :goto_0

    .line 98
    :cond_2
    move-object v9, v5

    const/4 v10, 0x0

    aget-boolean v9, v9, v10

    if-eqz v9, :cond_3

    move-object v9, v5

    const/4 v10, 0x2

    move-object v11, v0

    iget v11, v11, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    mul-int/2addr v10, v11

    aget-boolean v9, v9, v10

    if-eqz v9, :cond_3

    .line 99
    move-object v9, v0

    const/4 v10, 0x3

    iput v10, v9, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    goto/16 :goto_0

    .line 101
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v9

    throw v9

    .line 120
    .restart local v7    # "shiftedParameterData":[Z
    .restart local v8    # "i":I
    :cond_4
    const/16 v9, 0x1c

    new-array v9, v9, [Z

    move-object v6, v9

    .line 121
    .local v6, "parameterData":[Z
    const/4 v9, 0x0

    move v8, v9

    :goto_2
    move v9, v8

    const/16 v10, 0x1c

    if-ge v9, v10, :cond_5

    .line 122
    move-object v9, v6

    move v10, v8

    move-object v11, v7

    move v12, v8

    move-object v13, v0

    iget v13, v13, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    const/4 v14, 0x7

    mul-int/lit8 v13, v13, 0x7

    add-int/2addr v12, v13

    const/16 v13, 0x1c

    rem-int/lit8 v12, v12, 0x1c

    aget-boolean v11, v11, v12

    aput-boolean v11, v9, v10

    .line 121
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 148
    :cond_5
    move-object v9, v6

    move-object v10, v0

    iget-boolean v10, v10, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    invoke-static {v9, v10}, Lcom/google/zxing/aztec/detector/Detector;->correctParameterData([ZZ)V

    .line 151
    move-object v9, v0

    move-object v10, v6

    invoke-direct {v9, v10}, Lcom/google/zxing/aztec/detector/Detector;->getParameters([Z)V

    .line 152
    return-void

    .line 125
    .end local v6    # "parameterData":[Z
    .end local v7    # "shiftedParameterData":[Z
    .end local v8    # "i":I
    :cond_6
    const/16 v9, 0x28

    new-array v9, v9, [Z

    move-object v7, v9

    .line 126
    .restart local v7    # "shiftedParameterData":[Z
    const/4 v9, 0x0

    move v8, v9

    .restart local v8    # "i":I
    :goto_3
    move v9, v8

    const/16 v10, 0xb

    if-ge v9, v10, :cond_9

    .line 127
    move v9, v8

    const/4 v10, 0x5

    if-ge v9, v10, :cond_7

    .line 128
    move-object v9, v7

    move v10, v8

    move-object v11, v2

    const/4 v12, 0x2

    move v13, v8

    add-int/2addr v12, v13

    aget-boolean v11, v11, v12

    aput-boolean v11, v9, v10

    .line 129
    move-object v9, v7

    move v10, v8

    const/16 v11, 0xa

    add-int/lit8 v10, v10, 0xa

    move-object v11, v3

    const/4 v12, 0x2

    move v13, v8

    add-int/2addr v12, v13

    aget-boolean v11, v11, v12

    aput-boolean v11, v9, v10

    .line 130
    move-object v9, v7

    move v10, v8

    const/16 v11, 0x14

    add-int/lit8 v10, v10, 0x14

    move-object v11, v4

    const/4 v12, 0x2

    move v13, v8

    add-int/2addr v12, v13

    aget-boolean v11, v11, v12

    aput-boolean v11, v9, v10

    .line 131
    move-object v9, v7

    move v10, v8

    const/16 v11, 0x1e

    add-int/lit8 v10, v10, 0x1e

    move-object v11, v5

    const/4 v12, 0x2

    move v13, v8

    add-int/2addr v12, v13

    aget-boolean v11, v11, v12

    aput-boolean v11, v9, v10

    .line 133
    :cond_7
    move v9, v8

    const/4 v10, 0x5

    if-le v9, v10, :cond_8

    .line 134
    move-object v9, v7

    move v10, v8

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move-object v11, v2

    const/4 v12, 0x2

    move v13, v8

    add-int/2addr v12, v13

    aget-boolean v11, v11, v12

    aput-boolean v11, v9, v10

    .line 135
    move-object v9, v7

    move v10, v8

    const/16 v11, 0xa

    add-int/lit8 v10, v10, 0xa

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move-object v11, v3

    const/4 v12, 0x2

    move v13, v8

    add-int/2addr v12, v13

    aget-boolean v11, v11, v12

    aput-boolean v11, v9, v10

    .line 136
    move-object v9, v7

    move v10, v8

    const/16 v11, 0x14

    add-int/lit8 v10, v10, 0x14

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move-object v11, v4

    const/4 v12, 0x2

    move v13, v8

    add-int/2addr v12, v13

    aget-boolean v11, v11, v12

    aput-boolean v11, v9, v10

    .line 137
    move-object v9, v7

    move v10, v8

    const/16 v11, 0x1e

    add-int/lit8 v10, v10, 0x1e

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move-object v11, v5

    const/4 v12, 0x2

    move v13, v8

    add-int/2addr v12, v13

    aget-boolean v11, v11, v12

    aput-boolean v11, v9, v10

    .line 126
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 141
    :cond_9
    const/16 v9, 0x28

    new-array v9, v9, [Z

    move-object v6, v9

    .line 142
    .restart local v6    # "parameterData":[Z
    const/4 v9, 0x0

    move v8, v9

    :goto_4
    move v9, v8

    const/16 v10, 0x28

    if-ge v9, v10, :cond_5

    .line 143
    move-object v9, v6

    move v10, v8

    move-object v11, v7

    move v12, v8

    move-object v13, v0

    iget v13, v13, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    const/16 v14, 0xa

    mul-int/lit8 v13, v13, 0xa

    add-int/2addr v12, v13

    const/16 v13, 0x28

    rem-int/lit8 v12, v12, 0x28

    aget-boolean v11, v11, v12

    aput-boolean v11, v9, v10

    .line 142
    add-int/lit8 v8, v8, 0x1

    goto :goto_4
.end method

.method private getBullEyeCornerPoints(Lcom/google/zxing/aztec/detector/Detector$Point;)[Lcom/google/zxing/aztec/detector/Detector$Point;
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 256
    move-object/from16 v2, p0

    .local v2, "this":Lcom/google/zxing/aztec/detector/Detector;
    move-object/from16 v3, p1

    .local v3, "pCenter":Lcom/google/zxing/aztec/detector/Detector$Point;
    move-object/from16 v24, v3

    move-object/from16 v4, v24

    .line 257
    .local v4, "pina":Lcom/google/zxing/aztec/detector/Detector$Point;
    move-object/from16 v24, v3

    move-object/from16 v5, v24

    .line 258
    .local v5, "pinb":Lcom/google/zxing/aztec/detector/Detector$Point;
    move-object/from16 v24, v3

    move-object/from16 v6, v24

    .line 259
    .local v6, "pinc":Lcom/google/zxing/aztec/detector/Detector$Point;
    move-object/from16 v24, v3

    move-object/from16 v7, v24

    .line 261
    .local v7, "pind":Lcom/google/zxing/aztec/detector/Detector$Point;
    const/16 v24, 0x1

    move/from16 v8, v24

    .line 263
    .local v8, "color":Z
    move-object/from16 v24, v2

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    :goto_0
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v24, v0

    const/16 v25, 0x9

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    .line 264
    move-object/from16 v24, v2

    move-object/from16 v25, v4

    move/from16 v26, v8

    const/16 v27, 0x1

    const/16 v28, -0x1

    invoke-direct/range {v24 .. v28}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v24

    move-object/from16 v9, v24

    .line 265
    .local v9, "pouta":Lcom/google/zxing/aztec/detector/Detector$Point;
    move-object/from16 v24, v2

    move-object/from16 v25, v5

    move/from16 v26, v8

    const/16 v27, 0x1

    const/16 v28, 0x1

    invoke-direct/range {v24 .. v28}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v24

    move-object/from16 v10, v24

    .line 266
    .local v10, "poutb":Lcom/google/zxing/aztec/detector/Detector$Point;
    move-object/from16 v24, v2

    move-object/from16 v25, v6

    move/from16 v26, v8

    const/16 v27, -0x1

    const/16 v28, 0x1

    invoke-direct/range {v24 .. v28}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v24

    move-object/from16 v11, v24

    .line 267
    .local v11, "poutc":Lcom/google/zxing/aztec/detector/Detector$Point;
    move-object/from16 v24, v2

    move-object/from16 v25, v7

    move/from16 v26, v8

    const/16 v27, -0x1

    const/16 v28, -0x1

    invoke-direct/range {v24 .. v28}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v24

    move-object/from16 v12, v24

    .line 273
    .local v12, "poutd":Lcom/google/zxing/aztec/detector/Detector$Point;
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_1

    .line 274
    move-object/from16 v24, v12

    move-object/from16 v25, v9

    invoke-static/range {v24 .. v25}, Lcom/google/zxing/aztec/detector/Detector;->distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F

    move-result v24

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float v24, v24, v25

    move-object/from16 v25, v7

    move-object/from16 v26, v4

    invoke-static/range {v25 .. v26}, Lcom/google/zxing/aztec/detector/Detector;->distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F

    move-result v25

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v26, v0

    const/16 v27, 0x2

    add-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v25, v25, v26

    div-float v24, v24, v25

    move/from16 v13, v24

    .line 275
    .local v13, "q":F
    move/from16 v24, v13

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x3fe8000000000000L    # 0.75

    cmpg-double v24, v24, v26

    if-ltz v24, :cond_0

    move/from16 v24, v13

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x3ff4000000000000L    # 1.25

    cmpl-double v24, v24, v26

    if-gtz v24, :cond_0

    move-object/from16 v24, v2

    move-object/from16 v25, v9

    move-object/from16 v26, v10

    move-object/from16 v27, v11

    move-object/from16 v28, v12

    invoke-direct/range {v24 .. v28}, Lcom/google/zxing/aztec/detector/Detector;->isWhiteOrBlackRectangle(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)Z

    move-result v24

    if-nez v24, :cond_1

    .line 276
    .line 288
    .end local v9    # "pouta":Lcom/google/zxing/aztec/detector/Detector$Point;
    .end local v10    # "poutb":Lcom/google/zxing/aztec/detector/Detector$Point;
    .end local v11    # "poutc":Lcom/google/zxing/aztec/detector/Detector$Point;
    .end local v12    # "poutd":Lcom/google/zxing/aztec/detector/Detector$Point;
    .end local v13    # "q":F
    :cond_0
    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v24, v0

    const/16 v25, 0x5

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_3

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v24, v0

    const/16 v25, 0x7

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_3

    .line 289
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v24

    throw v24

    .line 280
    .restart local v9    # "pouta":Lcom/google/zxing/aztec/detector/Detector$Point;
    .restart local v10    # "poutb":Lcom/google/zxing/aztec/detector/Detector$Point;
    .restart local v11    # "poutc":Lcom/google/zxing/aztec/detector/Detector$Point;
    .restart local v12    # "poutd":Lcom/google/zxing/aztec/detector/Detector$Point;
    :cond_1
    move-object/from16 v24, v9

    move-object/from16 v4, v24

    .line 281
    move-object/from16 v24, v10

    move-object/from16 v5, v24

    .line 282
    move-object/from16 v24, v11

    move-object/from16 v6, v24

    .line 283
    move-object/from16 v24, v12

    move-object/from16 v7, v24

    .line 285
    move/from16 v24, v8

    if-nez v24, :cond_2

    const/16 v24, 0x1

    :goto_1
    move/from16 v8, v24

    .line 263
    move-object/from16 v24, v2

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    move-object/from16 v0, v25

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v25, v0

    const/16 v26, 0x1

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    goto/16 :goto_0

    .line 285
    :cond_2
    const/16 v24, 0x0

    goto :goto_1

    .line 292
    .end local v9    # "pouta":Lcom/google/zxing/aztec/detector/Detector$Point;
    .end local v10    # "poutb":Lcom/google/zxing/aztec/detector/Detector$Point;
    .end local v11    # "poutc":Lcom/google/zxing/aztec/detector/Detector$Point;
    .end local v12    # "poutd":Lcom/google/zxing/aztec/detector/Detector$Point;
    :cond_3
    move-object/from16 v24, v2

    move-object/from16 v25, v2

    move-object/from16 v0, v25

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v25, v0

    const/16 v26, 0x5

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_5

    const/16 v25, 0x1

    :goto_2
    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    .line 294
    const/high16 v24, 0x3fc00000    # 1.5f

    const/16 v25, 0x2

    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v26, v0

    mul-int v25, v25, v26

    const/16 v26, 0x3

    add-int/lit8 v25, v25, -0x3

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v24, v24, v25

    move/from16 v9, v24

    .line 296
    .local v9, "ratio":F
    move-object/from16 v24, v4

    move-object/from16 v0, v24

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    move/from16 v24, v0

    move-object/from16 v25, v6

    move-object/from16 v0, v25

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v10, v24

    .line 297
    .local v10, "dx":I
    move-object/from16 v24, v4

    move-object/from16 v0, v24

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    move/from16 v24, v0

    move-object/from16 v25, v6

    move-object/from16 v0, v25

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v11, v24

    .line 298
    .local v11, "dy":I
    move-object/from16 v24, v6

    move-object/from16 v0, v24

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v25, v9

    move/from16 v26, v10

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v25, v25, v26

    sub-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v24

    move/from16 v12, v24

    .line 299
    .local v12, "targetcx":I
    move-object/from16 v24, v6

    move-object/from16 v0, v24

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v25, v9

    move/from16 v26, v11

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v25, v25, v26

    sub-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v24

    move/from16 v13, v24

    .line 300
    .local v13, "targetcy":I
    move-object/from16 v24, v4

    move-object/from16 v0, v24

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v25, v9

    move/from16 v26, v10

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v25, v25, v26

    add-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v24

    move/from16 v14, v24

    .line 301
    .local v14, "targetax":I
    move-object/from16 v24, v4

    move-object/from16 v0, v24

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v25, v9

    move/from16 v26, v11

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v25, v25, v26

    add-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v24

    move/from16 v15, v24

    .line 303
    .local v15, "targetay":I
    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    move/from16 v24, v0

    move-object/from16 v25, v7

    move-object/from16 v0, v25

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v10, v24

    .line 304
    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    move/from16 v24, v0

    move-object/from16 v25, v7

    move-object/from16 v0, v25

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move/from16 v11, v24

    .line 306
    move-object/from16 v24, v7

    move-object/from16 v0, v24

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v25, v9

    move/from16 v26, v10

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v25, v25, v26

    sub-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v24

    move/from16 v16, v24

    .line 307
    .local v16, "targetdx":I
    move-object/from16 v24, v7

    move-object/from16 v0, v24

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v25, v9

    move/from16 v26, v11

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v25, v25, v26

    sub-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v24

    move/from16 v17, v24

    .line 308
    .local v17, "targetdy":I
    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v25, v9

    move/from16 v26, v10

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v25, v25, v26

    add-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v24

    move/from16 v18, v24

    .line 309
    .local v18, "targetbx":I
    move-object/from16 v24, v5

    move-object/from16 v0, v24

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v25, v9

    move/from16 v26, v11

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v25, v25, v26

    add-float v24, v24, v25

    invoke-static/range {v24 .. v24}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v24

    move/from16 v19, v24

    .line 311
    .local v19, "targetby":I
    move-object/from16 v24, v2

    move/from16 v25, v14

    move/from16 v26, v15

    invoke-direct/range {v24 .. v26}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v24

    if-eqz v24, :cond_4

    move-object/from16 v24, v2

    move/from16 v25, v18

    move/from16 v26, v19

    invoke-direct/range {v24 .. v26}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v24

    if-eqz v24, :cond_4

    move-object/from16 v24, v2

    move/from16 v25, v12

    move/from16 v26, v13

    invoke-direct/range {v24 .. v26}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v24

    if-eqz v24, :cond_4

    move-object/from16 v24, v2

    move/from16 v25, v16

    move/from16 v26, v17

    invoke-direct/range {v24 .. v26}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v24

    if-nez v24, :cond_6

    .line 313
    :cond_4
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v24

    throw v24

    .line 292
    .end local v9    # "ratio":F
    .end local v10    # "dx":I
    .end local v11    # "dy":I
    .end local v12    # "targetcx":I
    .end local v13    # "targetcy":I
    .end local v14    # "targetax":I
    .end local v15    # "targetay":I
    .end local v16    # "targetdx":I
    .end local v17    # "targetdy":I
    .end local v18    # "targetbx":I
    .end local v19    # "targetby":I
    :cond_5
    const/16 v25, 0x0

    goto/16 :goto_2

    .line 316
    .restart local v9    # "ratio":F
    .restart local v10    # "dx":I
    .restart local v11    # "dy":I
    .restart local v12    # "targetcx":I
    .restart local v13    # "targetcy":I
    .restart local v14    # "targetax":I
    .restart local v15    # "targetay":I
    .restart local v16    # "targetdx":I
    .restart local v17    # "targetdy":I
    .restart local v18    # "targetbx":I
    .restart local v19    # "targetby":I
    :cond_6
    new-instance v24, Lcom/google/zxing/aztec/detector/Detector$Point;

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    move/from16 v26, v14

    move/from16 v27, v15

    const/16 v28, 0x0

    invoke-direct/range {v25 .. v28}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(IILcom/google/zxing/aztec/detector/Detector$1;)V

    move-object/from16 v20, v24

    .line 317
    .local v20, "pa":Lcom/google/zxing/aztec/detector/Detector$Point;
    new-instance v24, Lcom/google/zxing/aztec/detector/Detector$Point;

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    move/from16 v26, v18

    move/from16 v27, v19

    const/16 v28, 0x0

    invoke-direct/range {v25 .. v28}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(IILcom/google/zxing/aztec/detector/Detector$1;)V

    move-object/from16 v21, v24

    .line 318
    .local v21, "pb":Lcom/google/zxing/aztec/detector/Detector$Point;
    new-instance v24, Lcom/google/zxing/aztec/detector/Detector$Point;

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    move/from16 v26, v12

    move/from16 v27, v13

    const/16 v28, 0x0

    invoke-direct/range {v25 .. v28}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(IILcom/google/zxing/aztec/detector/Detector$1;)V

    move-object/from16 v22, v24

    .line 319
    .local v22, "pc":Lcom/google/zxing/aztec/detector/Detector$Point;
    new-instance v24, Lcom/google/zxing/aztec/detector/Detector$Point;

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    move/from16 v26, v16

    move/from16 v27, v17

    const/16 v28, 0x0

    invoke-direct/range {v25 .. v28}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(IILcom/google/zxing/aztec/detector/Detector$1;)V

    move-object/from16 v23, v24

    .line 321
    .local v23, "pd":Lcom/google/zxing/aztec/detector/Detector$Point;
    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v0, v0, [Lcom/google/zxing/aztec/detector/Detector$Point;

    move-object/from16 v24, v0

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    const/16 v26, 0x0

    move-object/from16 v27, v20

    aput-object v27, v25, v26

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    const/16 v26, 0x1

    move-object/from16 v27, v21

    aput-object v27, v25, v26

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    const/16 v26, 0x2

    move-object/from16 v27, v22

    aput-object v27, v25, v26

    move-object/from16 v29, v24

    move-object/from16 v24, v29

    move-object/from16 v25, v29

    const/16 v26, 0x3

    move-object/from16 v27, v23

    aput-object v27, v25, v26

    move-object/from16 v2, v24

    .end local v2    # "this":Lcom/google/zxing/aztec/detector/Detector;
    return-object v2
.end method

.method private getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I
    .locals 16

    .prologue
    .line 543
    move-object/from16 v1, p0

    .local v1, "this":Lcom/google/zxing/aztec/detector/Detector;
    move-object/from16 v2, p1

    .local v2, "p1":Lcom/google/zxing/aztec/detector/Detector$Point;
    move-object/from16 v3, p2

    .local v3, "p2":Lcom/google/zxing/aztec/detector/Detector$Point;
    move-object v12, v2

    move-object v13, v3

    invoke-static {v12, v13}, Lcom/google/zxing/aztec/detector/Detector;->distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F

    move-result v12

    move v4, v12

    .line 544
    .local v4, "d":F
    move-object v12, v3

    iget v12, v12, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    move-object v13, v2

    iget v13, v13, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    sub-int/2addr v12, v13

    int-to-float v12, v12

    move v13, v4

    div-float/2addr v12, v13

    move v5, v12

    .line 545
    .local v5, "dx":F
    move-object v12, v3

    iget v12, v12, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    move-object v13, v2

    iget v13, v13, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    sub-int/2addr v12, v13

    int-to-float v12, v12

    move v13, v4

    div-float/2addr v12, v13

    move v6, v12

    .line 546
    .local v6, "dy":F
    const/4 v12, 0x0

    move v7, v12

    .line 548
    .local v7, "error":I
    move-object v12, v2

    iget v12, v12, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    int-to-float v12, v12

    move v8, v12

    .line 549
    .local v8, "px":F
    move-object v12, v2

    iget v12, v12, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    int-to-float v12, v12

    move v9, v12

    .line 551
    .local v9, "py":F
    move-object v12, v1

    iget-object v12, v12, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    move-object v13, v2

    iget v13, v13, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    move-object v14, v2

    iget v14, v14, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    invoke-virtual {v12, v13, v14}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v12

    move v10, v12

    .line 553
    .local v10, "colorModel":Z
    const/4 v12, 0x0

    move v11, v12

    .local v11, "i":I
    :goto_0
    move v12, v11

    int-to-float v12, v12

    move v13, v4

    cmpg-float v12, v12, v13

    if-gez v12, :cond_1

    .line 554
    move v12, v8

    move v13, v5

    add-float/2addr v12, v13

    move v8, v12

    .line 555
    move v12, v9

    move v13, v6

    add-float/2addr v12, v13

    move v9, v12

    .line 556
    move-object v12, v1

    iget-object v12, v12, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    move v13, v8

    invoke-static {v13}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v13

    move v14, v9

    invoke-static {v14}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v14

    invoke-virtual {v12, v13, v14}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v12

    move v13, v10

    if-eq v12, v13, :cond_0

    .line 557
    add-int/lit8 v7, v7, 0x1

    .line 553
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 561
    :cond_1
    move v12, v7

    int-to-float v12, v12

    move v13, v4

    div-float/2addr v12, v13

    move v11, v12

    .line 563
    .local v11, "errRatio":F
    move v12, v11

    float-to-double v12, v12

    const-wide v14, 0x3fb999999999999aL    # 0.1

    cmpl-double v12, v12, v14

    if-lez v12, :cond_2

    move v12, v11

    float-to-double v12, v12

    const-wide v14, 0x3feccccccccccccdL    # 0.9

    cmpg-double v12, v12, v14

    if-gez v12, :cond_2

    .line 564
    const/4 v12, 0x0

    move v1, v12

    .line 570
    .end local v1    # "this":Lcom/google/zxing/aztec/detector/Detector;
    :goto_1
    return v1

    .line 567
    .restart local v1    # "this":Lcom/google/zxing/aztec/detector/Detector;
    :cond_2
    move v12, v11

    float-to-double v12, v12

    const-wide v14, 0x3fb999999999999aL    # 0.1

    cmpg-double v12, v12, v14

    if-gtz v12, :cond_4

    .line 568
    move v12, v10

    if-eqz v12, :cond_3

    const/4 v12, 0x1

    :goto_2
    move v1, v12

    goto :goto_1

    :cond_3
    const/4 v12, -0x1

    goto :goto_2

    .line 570
    :cond_4
    move v12, v10

    if-eqz v12, :cond_5

    const/4 v12, -0x1

    :goto_3
    move v1, v12

    goto :goto_1

    :cond_5
    const/4 v12, 0x1

    goto :goto_3
.end method

.method private getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;
    .locals 13

    .prologue
    .line 578
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/aztec/detector/Detector;
    move-object v1, p1

    .local v1, "init":Lcom/google/zxing/aztec/detector/Detector$Point;
    move v2, p2

    .local v2, "color":Z
    move/from16 v3, p3

    .local v3, "dx":I
    move/from16 v4, p4

    .local v4, "dy":I
    move-object v7, v1

    iget v7, v7, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    move v8, v3

    add-int/2addr v7, v8

    move v5, v7

    .line 579
    .local v5, "x":I
    move-object v7, v1

    iget v7, v7, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    move v8, v4

    add-int/2addr v7, v8

    move v6, v7

    .line 581
    .local v6, "y":I
    :goto_0
    move-object v7, v0

    move v8, v5

    move v9, v6

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    move v8, v5

    move v9, v6

    invoke-virtual {v7, v8, v9}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v7

    move v8, v2

    if-ne v7, v8, :cond_0

    .line 582
    move v7, v5

    move v8, v3

    add-int/2addr v7, v8

    move v5, v7

    .line 583
    move v7, v6

    move v8, v4

    add-int/2addr v7, v8

    move v6, v7

    goto :goto_0

    .line 586
    :cond_0
    move v7, v5

    move v8, v3

    sub-int/2addr v7, v8

    move v5, v7

    .line 587
    move v7, v6

    move v8, v4

    sub-int/2addr v7, v8

    move v6, v7

    .line 589
    :goto_1
    move-object v7, v0

    move v8, v5

    move v9, v6

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v0

    iget-object v7, v7, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    move v8, v5

    move v9, v6

    invoke-virtual {v7, v8, v9}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v7

    move v8, v2

    if-ne v7, v8, :cond_1

    .line 590
    move v7, v5

    move v8, v3

    add-int/2addr v7, v8

    move v5, v7

    goto :goto_1

    .line 592
    :cond_1
    move v7, v5

    move v8, v3

    sub-int/2addr v7, v8

    move v5, v7

    .line 594
    :goto_2
    move-object v7, v0

    move v8, v5

    move v9, v6

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v0

    iget-object v7, v7, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    move v8, v5

    move v9, v6

    invoke-virtual {v7, v8, v9}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v7

    move v8, v2

    if-ne v7, v8, :cond_2

    .line 595
    move v7, v6

    move v8, v4

    add-int/2addr v7, v8

    move v6, v7

    goto :goto_2

    .line 597
    :cond_2
    move v7, v6

    move v8, v4

    sub-int/2addr v7, v8

    move v6, v7

    .line 599
    new-instance v7, Lcom/google/zxing/aztec/detector/Detector$Point;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move v9, v5

    move v10, v6

    const/4 v11, 0x0

    invoke-direct {v8, v9, v10, v11}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(IILcom/google/zxing/aztec/detector/Detector$1;)V

    move-object v0, v7

    .end local v0    # "this":Lcom/google/zxing/aztec/detector/Detector;
    return-object v0
.end method

.method private getMatrixCenter()Lcom/google/zxing/aztec/detector/Detector$Point;
    .locals 15

    .prologue
    .line 340
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/aztec/detector/Detector;
    :try_start_0
    new-instance v8, Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    iget-object v10, v10, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-direct {v9, v10}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;)V

    invoke-virtual {v8}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->detect()[Lcom/google/zxing/ResultPoint;

    move-result-object v8

    move-object v5, v8

    .line 341
    .local v5, "cornerPoints":[Lcom/google/zxing/ResultPoint;
    move-object v8, v5

    const/4 v9, 0x0

    aget-object v8, v8, v9

    move-object v1, v8

    .line 342
    .local v1, "pointA":Lcom/google/zxing/ResultPoint;
    move-object v8, v5

    const/4 v9, 0x1

    aget-object v8, v8, v9

    move-object v2, v8

    .line 343
    .local v2, "pointB":Lcom/google/zxing/ResultPoint;
    move-object v8, v5

    const/4 v9, 0x2

    aget-object v8, v8, v9

    move-object v3, v8

    .line 344
    .local v3, "pointC":Lcom/google/zxing/ResultPoint;
    move-object v8, v5

    const/4 v9, 0x3

    aget-object v8, v8, v9
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v8

    .line 357
    .line 360
    .end local v5    # "cornerPoints":[Lcom/google/zxing/ResultPoint;
    .local v4, "pointD":Lcom/google/zxing/ResultPoint;
    :goto_0
    move-object v8, v1

    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v8

    move-object v9, v4

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    add-float/2addr v8, v9

    move-object v9, v2

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    add-float/2addr v8, v9

    move-object v9, v3

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    add-float/2addr v8, v9

    const/high16 v9, 0x40800000    # 4.0f

    div-float/2addr v8, v9

    invoke-static {v8}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v8

    move v5, v8

    .line 361
    .local v5, "cx":I
    move-object v8, v1

    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v8

    move-object v9, v4

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    add-float/2addr v8, v9

    move-object v9, v2

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    add-float/2addr v8, v9

    move-object v9, v3

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    add-float/2addr v8, v9

    const/high16 v9, 0x40800000    # 4.0f

    div-float/2addr v8, v9

    invoke-static {v8}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v8

    move v6, v8

    .line 367
    .local v6, "cy":I
    :try_start_1
    new-instance v8, Lcom/google/zxing/common/detector/WhiteRectangleDetector;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    iget-object v10, v10, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    const/16 v11, 0xf

    move v12, v5

    move v13, v6

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;III)V

    invoke-virtual {v8}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->detect()[Lcom/google/zxing/ResultPoint;

    move-result-object v8

    move-object v7, v8

    .line 368
    .local v7, "cornerPoints":[Lcom/google/zxing/ResultPoint;
    move-object v8, v7

    const/4 v9, 0x0

    aget-object v8, v8, v9

    move-object v1, v8

    .line 369
    move-object v8, v7

    const/4 v9, 0x1

    aget-object v8, v8, v9

    move-object v2, v8

    .line 370
    move-object v8, v7

    const/4 v9, 0x2

    aget-object v8, v8, v9

    move-object v3, v8

    .line 371
    move-object v8, v7

    const/4 v9, 0x3

    aget-object v8, v8, v9
    :try_end_1
    .catch Lcom/google/zxing/NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v8

    .line 381
    .line 384
    .end local v7    # "cornerPoints":[Lcom/google/zxing/ResultPoint;
    :goto_1
    move-object v8, v1

    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v8

    move-object v9, v4

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    add-float/2addr v8, v9

    move-object v9, v2

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    add-float/2addr v8, v9

    move-object v9, v3

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v9

    add-float/2addr v8, v9

    const/high16 v9, 0x40800000    # 4.0f

    div-float/2addr v8, v9

    invoke-static {v8}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v8

    move v5, v8

    .line 385
    move-object v8, v1

    invoke-virtual {v8}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v8

    move-object v9, v4

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    add-float/2addr v8, v9

    move-object v9, v2

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    add-float/2addr v8, v9

    move-object v9, v3

    invoke-virtual {v9}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v9

    add-float/2addr v8, v9

    const/high16 v9, 0x40800000    # 4.0f

    div-float/2addr v8, v9

    invoke-static {v8}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v8

    move v6, v8

    .line 387
    new-instance v8, Lcom/google/zxing/aztec/detector/Detector$Point;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move v10, v5

    move v11, v6

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(IILcom/google/zxing/aztec/detector/Detector$1;)V

    move-object v0, v8

    .end local v0    # "this":Lcom/google/zxing/aztec/detector/Detector;
    return-object v0

    .line 346
    .end local v1    # "pointA":Lcom/google/zxing/ResultPoint;
    .end local v2    # "pointB":Lcom/google/zxing/ResultPoint;
    .end local v3    # "pointC":Lcom/google/zxing/ResultPoint;
    .end local v4    # "pointD":Lcom/google/zxing/ResultPoint;
    .end local v5    # "cx":I
    .end local v6    # "cy":I
    .restart local v0    # "this":Lcom/google/zxing/aztec/detector/Detector;
    :catch_0
    move-exception v8

    move-object v5, v8

    .line 350
    .local v5, "e":Lcom/google/zxing/NotFoundException;
    move-object v8, v0

    iget-object v8, v8, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v8}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v8

    const/4 v9, 0x2

    div-int/lit8 v8, v8, 0x2

    move v6, v8

    .line 351
    .local v6, "cx":I
    move-object v8, v0

    iget-object v8, v8, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v8}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v8

    const/4 v9, 0x2

    div-int/lit8 v8, v8, 0x2

    move v7, v8

    .line 352
    .local v7, "cy":I
    move-object v8, v0

    new-instance v9, Lcom/google/zxing/aztec/detector/Detector$Point;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move v11, v6

    const/4 v12, 0x7

    add-int/lit8 v11, v11, 0x7

    move v12, v7

    const/4 v13, 0x7

    add-int/lit8 v12, v12, -0x7

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(IILcom/google/zxing/aztec/detector/Detector$1;)V

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, -0x1

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v8

    move-object v1, v8

    .line 353
    .restart local v1    # "pointA":Lcom/google/zxing/ResultPoint;
    move-object v8, v0

    new-instance v9, Lcom/google/zxing/aztec/detector/Detector$Point;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move v11, v6

    const/4 v12, 0x7

    add-int/lit8 v11, v11, 0x7

    move v12, v7

    const/4 v13, 0x7

    add-int/lit8 v12, v12, 0x7

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(IILcom/google/zxing/aztec/detector/Detector$1;)V

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v8

    move-object v2, v8

    .line 354
    .restart local v2    # "pointB":Lcom/google/zxing/ResultPoint;
    move-object v8, v0

    new-instance v9, Lcom/google/zxing/aztec/detector/Detector$Point;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move v11, v6

    const/4 v12, 0x7

    add-int/lit8 v11, v11, -0x7

    move v12, v7

    const/4 v13, 0x7

    add-int/lit8 v12, v12, 0x7

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(IILcom/google/zxing/aztec/detector/Detector$1;)V

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x1

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v8

    move-object v3, v8

    .line 355
    .restart local v3    # "pointC":Lcom/google/zxing/ResultPoint;
    move-object v8, v0

    new-instance v9, Lcom/google/zxing/aztec/detector/Detector$Point;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move v11, v6

    const/4 v12, 0x7

    add-int/lit8 v11, v11, -0x7

    move v12, v7

    const/4 v13, 0x7

    add-int/lit8 v12, v12, -0x7

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(IILcom/google/zxing/aztec/detector/Detector$1;)V

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v8

    move-object v4, v8

    .restart local v4    # "pointD":Lcom/google/zxing/ResultPoint;
    goto/16 :goto_0

    .line 372
    .end local v7    # "cy":I
    .local v5, "cx":I
    .local v6, "cy":I
    :catch_1
    move-exception v8

    move-object v7, v8

    .line 376
    .local v7, "e":Lcom/google/zxing/NotFoundException;
    move-object v8, v0

    new-instance v9, Lcom/google/zxing/aztec/detector/Detector$Point;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move v11, v5

    const/4 v12, 0x7

    add-int/lit8 v11, v11, 0x7

    move v12, v6

    const/4 v13, 0x7

    add-int/lit8 v12, v12, -0x7

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(IILcom/google/zxing/aztec/detector/Detector$1;)V

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, -0x1

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v8

    move-object v1, v8

    .line 377
    move-object v8, v0

    new-instance v9, Lcom/google/zxing/aztec/detector/Detector$Point;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move v11, v5

    const/4 v12, 0x7

    add-int/lit8 v11, v11, 0x7

    move v12, v6

    const/4 v13, 0x7

    add-int/lit8 v12, v12, 0x7

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(IILcom/google/zxing/aztec/detector/Detector$1;)V

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v8

    move-object v2, v8

    .line 378
    move-object v8, v0

    new-instance v9, Lcom/google/zxing/aztec/detector/Detector$Point;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move v11, v5

    const/4 v12, 0x7

    add-int/lit8 v11, v11, -0x7

    move v12, v6

    const/4 v13, 0x7

    add-int/lit8 v12, v12, 0x7

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(IILcom/google/zxing/aztec/detector/Detector$1;)V

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x1

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v8

    move-object v3, v8

    .line 379
    move-object v8, v0

    new-instance v9, Lcom/google/zxing/aztec/detector/Detector$Point;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move v11, v5

    const/4 v12, 0x7

    add-int/lit8 v11, v11, -0x7

    move v12, v6

    const/4 v13, 0x7

    add-int/lit8 v12, v12, -0x7

    const/4 v13, 0x0

    invoke-direct {v10, v11, v12, v13}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(IILcom/google/zxing/aztec/detector/Detector$1;)V

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, -0x1

    invoke-direct {v8, v9, v10, v11, v12}, Lcom/google/zxing/aztec/detector/Detector;->getFirstDifferent(Lcom/google/zxing/aztec/detector/Detector$Point;ZII)Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/zxing/aztec/detector/Detector$Point;->toResultPoint()Lcom/google/zxing/ResultPoint;

    move-result-object v8

    move-object v4, v8

    goto/16 :goto_1
.end method

.method private getMatrixCornerPoints([Lcom/google/zxing/aztec/detector/Detector$Point;)[Lcom/google/zxing/ResultPoint;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 164
    move-object/from16 v1, p0

    .local v1, "this":Lcom/google/zxing/aztec/detector/Detector;
    move-object/from16 v2, p1

    .local v2, "bullEyeCornerPoints":[Lcom/google/zxing/aztec/detector/Detector$Point;
    const/4 v14, 0x2

    move-object v15, v1

    iget v15, v15, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    mul-int/2addr v14, v15

    move-object v15, v1

    iget v15, v15, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    const/16 v16, 0x4

    move/from16 v0, v16

    if-le v15, v0, :cond_1

    const/4 v15, 0x1

    :goto_0
    add-int/2addr v14, v15

    move-object v15, v1

    iget v15, v15, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    const/16 v16, 0x4

    add-int/lit8 v15, v15, -0x4

    const/16 v16, 0x8

    div-int/lit8 v15, v15, 0x8

    add-int/2addr v14, v15

    int-to-float v14, v14

    const/high16 v15, 0x40000000    # 2.0f

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget v0, v0, Lcom/google/zxing/aztec/detector/Detector;->nbCenterLayers:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    div-float/2addr v14, v15

    move v3, v14

    .line 167
    .local v3, "ratio":F
    move-object v14, v2

    const/4 v15, 0x0

    aget-object v14, v14, v15

    iget v14, v14, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    move-object v15, v2

    const/16 v16, 0x2

    aget-object v15, v15, v16

    iget v15, v15, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    sub-int/2addr v14, v15

    move v4, v14

    .line 168
    .local v4, "dx":I
    move v14, v4

    move v15, v4

    if-lez v15, :cond_2

    const/4 v15, 0x1

    :goto_1
    add-int/2addr v14, v15

    move v4, v14

    .line 169
    move-object v14, v2

    const/4 v15, 0x0

    aget-object v14, v14, v15

    iget v14, v14, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    move-object v15, v2

    const/16 v16, 0x2

    aget-object v15, v15, v16

    iget v15, v15, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    sub-int/2addr v14, v15

    move v5, v14

    .line 170
    .local v5, "dy":I
    move v14, v5

    move v15, v5

    if-lez v15, :cond_3

    const/4 v15, 0x1

    :goto_2
    add-int/2addr v14, v15

    move v5, v14

    .line 172
    move-object v14, v2

    const/4 v15, 0x2

    aget-object v14, v14, v15

    iget v14, v14, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    int-to-float v14, v14

    move v15, v3

    move/from16 v16, v4

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    sub-float/2addr v14, v15

    invoke-static {v14}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v14

    move v6, v14

    .line 173
    .local v6, "targetcx":I
    move-object v14, v2

    const/4 v15, 0x2

    aget-object v14, v14, v15

    iget v14, v14, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    int-to-float v14, v14

    move v15, v3

    move/from16 v16, v5

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    sub-float/2addr v14, v15

    invoke-static {v14}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v14

    move v7, v14

    .line 175
    .local v7, "targetcy":I
    move-object v14, v2

    const/4 v15, 0x0

    aget-object v14, v14, v15

    iget v14, v14, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    int-to-float v14, v14

    move v15, v3

    move/from16 v16, v4

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    invoke-static {v14}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v14

    move v8, v14

    .line 176
    .local v8, "targetax":I
    move-object v14, v2

    const/4 v15, 0x0

    aget-object v14, v14, v15

    iget v14, v14, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    int-to-float v14, v14

    move v15, v3

    move/from16 v16, v5

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    invoke-static {v14}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v14

    move v9, v14

    .line 178
    .local v9, "targetay":I
    move-object v14, v2

    const/4 v15, 0x1

    aget-object v14, v14, v15

    iget v14, v14, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    move-object v15, v2

    const/16 v16, 0x3

    aget-object v15, v15, v16

    iget v15, v15, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    sub-int/2addr v14, v15

    move v4, v14

    .line 179
    move v14, v4

    move v15, v4

    if-lez v15, :cond_4

    const/4 v15, 0x1

    :goto_3
    add-int/2addr v14, v15

    move v4, v14

    .line 180
    move-object v14, v2

    const/4 v15, 0x1

    aget-object v14, v14, v15

    iget v14, v14, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    move-object v15, v2

    const/16 v16, 0x3

    aget-object v15, v15, v16

    iget v15, v15, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    sub-int/2addr v14, v15

    move v5, v14

    .line 181
    move v14, v5

    move v15, v5

    if-lez v15, :cond_5

    const/4 v15, 0x1

    :goto_4
    add-int/2addr v14, v15

    move v5, v14

    .line 183
    move-object v14, v2

    const/4 v15, 0x3

    aget-object v14, v14, v15

    iget v14, v14, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    int-to-float v14, v14

    move v15, v3

    move/from16 v16, v4

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    sub-float/2addr v14, v15

    invoke-static {v14}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v14

    move v10, v14

    .line 184
    .local v10, "targetdx":I
    move-object v14, v2

    const/4 v15, 0x3

    aget-object v14, v14, v15

    iget v14, v14, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    int-to-float v14, v14

    move v15, v3

    move/from16 v16, v5

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    sub-float/2addr v14, v15

    invoke-static {v14}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v14

    move v11, v14

    .line 185
    .local v11, "targetdy":I
    move-object v14, v2

    const/4 v15, 0x1

    aget-object v14, v14, v15

    iget v14, v14, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    int-to-float v14, v14

    move v15, v3

    move/from16 v16, v4

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    invoke-static {v14}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v14

    move v12, v14

    .line 186
    .local v12, "targetbx":I
    move-object v14, v2

    const/4 v15, 0x1

    aget-object v14, v14, v15

    iget v14, v14, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    int-to-float v14, v14

    move v15, v3

    move/from16 v16, v5

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    invoke-static {v14}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v14

    move v13, v14

    .line 188
    .local v13, "targetby":I
    move-object v14, v1

    move v15, v8

    move/from16 v16, v9

    invoke-direct/range {v14 .. v16}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v14

    if-eqz v14, :cond_0

    move-object v14, v1

    move v15, v12

    move/from16 v16, v13

    invoke-direct/range {v14 .. v16}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v14

    if-eqz v14, :cond_0

    move-object v14, v1

    move v15, v6

    move/from16 v16, v7

    invoke-direct/range {v14 .. v16}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v14

    if-eqz v14, :cond_0

    move-object v14, v1

    move v15, v10

    move/from16 v16, v11

    invoke-direct/range {v14 .. v16}, Lcom/google/zxing/aztec/detector/Detector;->isValid(II)Z

    move-result v14

    if-nez v14, :cond_6

    .line 189
    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v14

    throw v14

    .line 164
    .end local v3    # "ratio":F
    .end local v4    # "dx":I
    .end local v5    # "dy":I
    .end local v6    # "targetcx":I
    .end local v7    # "targetcy":I
    .end local v8    # "targetax":I
    .end local v9    # "targetay":I
    .end local v10    # "targetdx":I
    .end local v11    # "targetdy":I
    .end local v12    # "targetbx":I
    .end local v13    # "targetby":I
    :cond_1
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 168
    .restart local v3    # "ratio":F
    .restart local v4    # "dx":I
    :cond_2
    const/4 v15, -0x1

    goto/16 :goto_1

    .line 170
    .restart local v5    # "dy":I
    :cond_3
    const/4 v15, -0x1

    goto/16 :goto_2

    .line 179
    .restart local v6    # "targetcx":I
    .restart local v7    # "targetcy":I
    .restart local v8    # "targetax":I
    .restart local v9    # "targetay":I
    :cond_4
    const/4 v15, -0x1

    goto/16 :goto_3

    .line 181
    :cond_5
    const/4 v15, -0x1

    goto/16 :goto_4

    .line 192
    .restart local v10    # "targetdx":I
    .restart local v11    # "targetdy":I
    .restart local v12    # "targetbx":I
    .restart local v13    # "targetby":I
    :cond_6
    const/4 v14, 0x4

    new-array v14, v14, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    const/16 v16, 0x0

    new-instance v17, Lcom/google/zxing/ResultPoint;

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    move/from16 v19, v8

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v20, v9

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-direct/range {v18 .. v20}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v17, v15, v16

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    const/16 v16, 0x1

    new-instance v17, Lcom/google/zxing/ResultPoint;

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    move/from16 v19, v12

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v20, v13

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-direct/range {v18 .. v20}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v17, v15, v16

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    const/16 v16, 0x2

    new-instance v17, Lcom/google/zxing/ResultPoint;

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    move/from16 v19, v6

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v20, v7

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-direct/range {v18 .. v20}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v17, v15, v16

    move-object/from16 v21, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v21

    const/16 v16, 0x3

    new-instance v17, Lcom/google/zxing/ResultPoint;

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    move/from16 v19, v10

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v20, v11

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-direct/range {v18 .. v20}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v17, v15, v16

    move-object v1, v14

    .end local v1    # "this":Lcom/google/zxing/aztec/detector/Detector;
    return-object v1
.end method

.method private getParameters([Z)V
    .locals 9

    .prologue
    .line 441
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/aztec/detector/Detector;
    move-object v1, p1

    .local v1, "parameterData":[Z
    move-object v5, v0

    iget-boolean v5, v5, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    if-eqz v5, :cond_1

    .line 442
    const/4 v5, 0x2

    move v2, v5

    .line 443
    .local v2, "nbBitsForNbLayers":I
    const/4 v5, 0x6

    move v3, v5

    .line 449
    .local v3, "nbBitsForNbDatablocks":I
    :goto_0
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_1
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_2

    .line 450
    move-object v5, v0

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    iget v6, v6, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    const/4 v7, 0x1

    shl-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    .line 451
    move-object v5, v1

    move v6, v4

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_0

    .line 452
    move-object v5, v0

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    iget v6, v6, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    .line 449
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 445
    .end local v2    # "nbBitsForNbLayers":I
    .end local v3    # "nbBitsForNbDatablocks":I
    .end local v4    # "i":I
    :cond_1
    const/4 v5, 0x5

    move v2, v5

    .line 446
    .restart local v2    # "nbBitsForNbLayers":I
    const/16 v5, 0xb

    move v3, v5

    .restart local v3    # "nbBitsForNbDatablocks":I
    goto :goto_0

    .line 456
    .restart local v4    # "i":I
    :cond_2
    move v5, v2

    move v4, v5

    :goto_2
    move v5, v4

    move v6, v2

    move v7, v3

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_4

    .line 457
    move-object v5, v0

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    iget v6, v6, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I

    const/4 v7, 0x1

    shl-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I

    .line 458
    move-object v5, v1

    move v6, v4

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_3

    .line 459
    move-object v5, v0

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    iget v6, v6, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I

    .line 456
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 463
    :cond_4
    move-object v5, v0

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    iget v6, v6, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    .line 464
    move-object v5, v0

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    iget v6, v6, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I

    .line 466
    return-void
.end method

.method private isValid(II)Z
    .locals 5

    .prologue
    .line 617
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/aztec/detector/Detector;
    move v1, p1

    .local v1, "x":I
    move v2, p2

    .local v2, "y":I
    move v3, v1

    if-ltz v3, :cond_0

    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_0

    move v3, v2

    if-lez v3, :cond_0

    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v4}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    .end local v0    # "this":Lcom/google/zxing/aztec/detector/Detector;
    return v0

    .restart local v0    # "this":Lcom/google/zxing/aztec/detector/Detector;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private isWhiteOrBlackRectangle(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)Z
    .locals 14

    .prologue
    .line 506
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/aztec/detector/Detector;
    move-object v1, p1

    .local v1, "p1":Lcom/google/zxing/aztec/detector/Detector$Point;
    move-object/from16 v2, p2

    .local v2, "p2":Lcom/google/zxing/aztec/detector/Detector$Point;
    move-object/from16 v3, p3

    .local v3, "p3":Lcom/google/zxing/aztec/detector/Detector$Point;
    move-object/from16 v4, p4

    .local v4, "p4":Lcom/google/zxing/aztec/detector/Detector$Point;
    const/4 v8, 0x3

    move v5, v8

    .line 508
    .local v5, "corr":I
    new-instance v8, Lcom/google/zxing/aztec/detector/Detector$Point;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v1

    iget v10, v10, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    move v11, v5

    sub-int/2addr v10, v11

    move-object v11, v1

    iget v11, v11, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    move v12, v5

    add-int/2addr v11, v12

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(IILcom/google/zxing/aztec/detector/Detector$1;)V

    move-object v1, v8

    .line 509
    new-instance v8, Lcom/google/zxing/aztec/detector/Detector$Point;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v2

    iget v10, v10, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    move v11, v5

    sub-int/2addr v10, v11

    move-object v11, v2

    iget v11, v11, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    move v12, v5

    sub-int/2addr v11, v12

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(IILcom/google/zxing/aztec/detector/Detector$1;)V

    move-object v2, v8

    .line 510
    new-instance v8, Lcom/google/zxing/aztec/detector/Detector$Point;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v3

    iget v10, v10, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    move v11, v5

    add-int/2addr v10, v11

    move-object v11, v3

    iget v11, v11, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    move v12, v5

    sub-int/2addr v11, v12

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(IILcom/google/zxing/aztec/detector/Detector$1;)V

    move-object v3, v8

    .line 511
    new-instance v8, Lcom/google/zxing/aztec/detector/Detector$Point;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v4

    iget v10, v10, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    move v11, v5

    add-int/2addr v10, v11

    move-object v11, v4

    iget v11, v11, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    move v12, v5

    add-int/2addr v11, v12

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Lcom/google/zxing/aztec/detector/Detector$Point;-><init>(IILcom/google/zxing/aztec/detector/Detector$1;)V

    move-object v4, v8

    .line 513
    move-object v8, v0

    move-object v9, v4

    move-object v10, v1

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    move-result v8

    move v6, v8

    .line 515
    .local v6, "cInit":I
    move v8, v6

    if-nez v8, :cond_0

    .line 516
    const/4 v8, 0x0

    move v0, v8

    .line 533
    .end local v0    # "this":Lcom/google/zxing/aztec/detector/Detector;
    :goto_0
    return v0

    .line 519
    .restart local v0    # "this":Lcom/google/zxing/aztec/detector/Detector;
    :cond_0
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    move-result v8

    move v7, v8

    .line 521
    .local v7, "c":I
    move v8, v7

    move v9, v6

    if-eq v8, v9, :cond_1

    .line 522
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 525
    :cond_1
    move-object v8, v0

    move-object v9, v2

    move-object v10, v3

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    move-result v8

    move v7, v8

    .line 527
    move v8, v7

    move v9, v6

    if-eq v8, v9, :cond_2

    .line 528
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    .line 531
    :cond_2
    move-object v8, v0

    move-object v9, v3

    move-object v10, v4

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/aztec/detector/Detector;->getColor(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)I

    move-result v8

    move v7, v8

    .line 533
    move v8, v7

    move v9, v6

    if-ne v8, v9, :cond_3

    const/4 v8, 0x1

    :goto_1
    move v0, v8

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/common/BitMatrix;
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 400
    move-object/from16 v1, p0

    .local v1, "this":Lcom/google/zxing/aztec/detector/Detector;
    move-object/from16 v2, p1

    .local v2, "image":Lcom/google/zxing/common/BitMatrix;
    move-object/from16 v3, p2

    .local v3, "topLeft":Lcom/google/zxing/ResultPoint;
    move-object/from16 v4, p3

    .local v4, "bottomLeft":Lcom/google/zxing/ResultPoint;
    move-object/from16 v5, p4

    .local v5, "bottomRight":Lcom/google/zxing/ResultPoint;
    move-object/from16 v6, p5

    .local v6, "topRight":Lcom/google/zxing/ResultPoint;
    move-object v9, v1

    iget-boolean v9, v9, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    if-eqz v9, :cond_0

    .line 401
    const/4 v9, 0x4

    move-object v10, v1

    iget v10, v10, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    mul-int/2addr v9, v10

    const/16 v10, 0xb

    add-int/lit8 v9, v9, 0xb

    move v7, v9

    .line 410
    .local v7, "dimension":I
    :goto_0
    invoke-static {}, Lcom/google/zxing/common/GridSampler;->getInstance()Lcom/google/zxing/common/GridSampler;

    move-result-object v9

    move-object v8, v9

    .line 412
    .local v8, "sampler":Lcom/google/zxing/common/GridSampler;
    move-object v9, v8

    move-object v10, v2

    move v11, v7

    move v12, v7

    const/high16 v13, 0x3f000000    # 0.5f

    const/high16 v14, 0x3f000000    # 0.5f

    move v15, v7

    int-to-float v15, v15

    const/high16 v16, 0x3f000000    # 0.5f

    sub-float v15, v15, v16

    const/high16 v16, 0x3f000000    # 0.5f

    move/from16 v17, v7

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x3f000000    # 0.5f

    sub-float v17, v17, v18

    move/from16 v18, v7

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3f000000    # 0.5f

    sub-float v18, v18, v19

    const/high16 v19, 0x3f000000    # 0.5f

    move/from16 v20, v7

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x3f000000    # 0.5f

    sub-float v20, v20, v21

    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v21

    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v22

    move-object/from16 v23, v6

    invoke-virtual/range {v23 .. v23}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v23

    move-object/from16 v24, v6

    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v24

    move-object/from16 v25, v5

    invoke-virtual/range {v25 .. v25}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v25

    move-object/from16 v26, v5

    invoke-virtual/range {v26 .. v26}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v26

    move-object/from16 v27, v4

    invoke-virtual/range {v27 .. v27}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v27

    move-object/from16 v28, v4

    invoke-virtual/range {v28 .. v28}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v28

    invoke-virtual/range {v9 .. v28}, Lcom/google/zxing/common/GridSampler;->sampleGrid(Lcom/google/zxing/common/BitMatrix;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/common/BitMatrix;

    move-result-object v9

    move-object v1, v9

    .end local v1    # "this":Lcom/google/zxing/aztec/detector/Detector;
    return-object v1

    .line 403
    .end local v7    # "dimension":I
    .end local v8    # "sampler":Lcom/google/zxing/common/GridSampler;
    .restart local v1    # "this":Lcom/google/zxing/aztec/detector/Detector;
    :cond_0
    move-object v9, v1

    iget v9, v9, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    const/4 v10, 0x4

    if-gt v9, v10, :cond_1

    .line 404
    const/4 v9, 0x4

    move-object v10, v1

    iget v10, v10, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    mul-int/2addr v9, v10

    const/16 v10, 0xf

    add-int/lit8 v9, v9, 0xf

    move v7, v9

    .restart local v7    # "dimension":I
    goto :goto_0

    .line 406
    .end local v7    # "dimension":I
    :cond_1
    const/4 v9, 0x4

    move-object v10, v1

    iget v10, v10, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    mul-int/2addr v9, v10

    const/4 v10, 0x2

    move-object v11, v1

    iget v11, v11, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    const/4 v12, 0x4

    add-int/lit8 v11, v11, -0x4

    const/16 v12, 0x8

    div-int/lit8 v11, v11, 0x8

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    mul-int/2addr v10, v11

    add-int/2addr v9, v10

    const/16 v10, 0xf

    add-int/lit8 v9, v9, 0xf

    move v7, v9

    .restart local v7    # "dimension":I
    goto/16 :goto_0
.end method

.method private sampleLine(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;I)[Z
    .locals 17

    .prologue
    .line 479
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/aztec/detector/Detector;
    move-object/from16 v1, p1

    .local v1, "p1":Lcom/google/zxing/aztec/detector/Detector$Point;
    move-object/from16 v2, p2

    .local v2, "p2":Lcom/google/zxing/aztec/detector/Detector$Point;
    move/from16 v3, p3

    .local v3, "size":I
    move v12, v3

    new-array v12, v12, [Z

    move-object v4, v12

    .line 480
    .local v4, "res":[Z
    move-object v12, v1

    move-object v13, v2

    invoke-static {v12, v13}, Lcom/google/zxing/aztec/detector/Detector;->distance(Lcom/google/zxing/aztec/detector/Detector$Point;Lcom/google/zxing/aztec/detector/Detector$Point;)F

    move-result v12

    move v5, v12

    .line 481
    .local v5, "d":F
    move v12, v5

    move v13, v3

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    int-to-float v13, v13

    div-float/2addr v12, v13

    move v6, v12

    .line 482
    .local v6, "moduleSize":F
    move v12, v6

    move-object v13, v2

    iget v13, v13, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    move-object v14, v1

    iget v14, v14, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    sub-int/2addr v13, v14

    int-to-float v13, v13

    mul-float/2addr v12, v13

    move v13, v5

    div-float/2addr v12, v13

    move v7, v12

    .line 483
    .local v7, "dx":F
    move v12, v6

    move-object v13, v2

    iget v13, v13, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    move-object v14, v1

    iget v14, v14, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    sub-int/2addr v13, v14

    int-to-float v13, v13

    mul-float/2addr v12, v13

    move v13, v5

    div-float/2addr v12, v13

    move v8, v12

    .line 485
    .local v8, "dy":F
    move-object v12, v1

    iget v12, v12, Lcom/google/zxing/aztec/detector/Detector$Point;->x:I

    int-to-float v12, v12

    move v9, v12

    .line 486
    .local v9, "px":F
    move-object v12, v1

    iget v12, v12, Lcom/google/zxing/aztec/detector/Detector$Point;->y:I

    int-to-float v12, v12

    move v10, v12

    .line 488
    .local v10, "py":F
    const/4 v12, 0x0

    move v11, v12

    .local v11, "i":I
    :goto_0
    move v12, v11

    move v13, v3

    if-ge v12, v13, :cond_0

    .line 489
    move-object v12, v4

    move v13, v11

    move-object v14, v0

    iget-object v14, v14, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    move v15, v9

    invoke-static {v15}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v15

    move/from16 v16, v10

    invoke-static/range {v16 .. v16}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v14

    aput-boolean v14, v12, v13

    .line 490
    move v12, v9

    move v13, v7

    add-float/2addr v12, v13

    move v9, v12

    .line 491
    move v12, v10

    move v13, v8

    add-float/2addr v12, v13

    move v10, v12

    .line 488
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 494
    :cond_0
    move-object v12, v4

    move-object v0, v12

    .end local v0    # "this":Lcom/google/zxing/aztec/detector/Detector;
    return-object v0
.end method


# virtual methods
.method public detect()Lcom/google/zxing/aztec/AztecDetectorResult;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 59
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/aztec/detector/Detector;
    move-object v5, v0

    invoke-direct {v5}, Lcom/google/zxing/aztec/detector/Detector;->getMatrixCenter()Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v5

    move-object v1, v5

    .line 62
    .local v1, "pCenter":Lcom/google/zxing/aztec/detector/Detector$Point;
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lcom/google/zxing/aztec/detector/Detector;->getBullEyeCornerPoints(Lcom/google/zxing/aztec/detector/Detector$Point;)[Lcom/google/zxing/aztec/detector/Detector$Point;

    move-result-object v5

    move-object v2, v5

    .line 65
    .local v2, "bullEyeCornerPoints":[Lcom/google/zxing/aztec/detector/Detector$Point;
    move-object v5, v0

    move-object v6, v2

    invoke-direct {v5, v6}, Lcom/google/zxing/aztec/detector/Detector;->extractParameters([Lcom/google/zxing/aztec/detector/Detector$Point;)V

    .line 68
    move-object v5, v0

    move-object v6, v2

    invoke-direct {v5, v6}, Lcom/google/zxing/aztec/detector/Detector;->getMatrixCornerPoints([Lcom/google/zxing/aztec/detector/Detector$Point;)[Lcom/google/zxing/ResultPoint;

    move-result-object v5

    move-object v3, v5

    .line 71
    .local v3, "corners":[Lcom/google/zxing/ResultPoint;
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/aztec/detector/Detector;->image:Lcom/google/zxing/common/BitMatrix;

    move-object v7, v3

    move-object v8, v0

    iget v8, v8, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    const/4 v9, 0x4

    rem-int/lit8 v8, v8, 0x4

    aget-object v7, v7, v8

    move-object v8, v3

    move-object v9, v0

    iget v9, v9, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    const/4 v10, 0x3

    add-int/lit8 v9, v9, 0x3

    const/4 v10, 0x4

    rem-int/lit8 v9, v9, 0x4

    aget-object v8, v8, v9

    move-object v9, v3

    move-object v10, v0

    iget v10, v10, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    const/4 v11, 0x2

    add-int/lit8 v10, v10, 0x2

    const/4 v11, 0x4

    rem-int/lit8 v10, v10, 0x4

    aget-object v9, v9, v10

    move-object v10, v3

    move-object v11, v0

    iget v11, v11, Lcom/google/zxing/aztec/detector/Detector;->shift:I

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    const/4 v12, 0x4

    rem-int/lit8 v11, v11, 0x4

    aget-object v10, v10, v11

    invoke-direct/range {v5 .. v10}, Lcom/google/zxing/aztec/detector/Detector;->sampleGrid(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v5

    move-object v4, v5

    .line 73
    .local v4, "bits":Lcom/google/zxing/common/BitMatrix;
    new-instance v5, Lcom/google/zxing/aztec/AztecDetectorResult;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v4

    move-object v8, v3

    move-object v9, v0

    iget-boolean v9, v9, Lcom/google/zxing/aztec/detector/Detector;->compact:Z

    move-object v10, v0

    iget v10, v10, Lcom/google/zxing/aztec/detector/Detector;->nbDataBlocks:I

    move-object v11, v0

    iget v11, v11, Lcom/google/zxing/aztec/detector/Detector;->nbLayers:I

    invoke-direct/range {v6 .. v11}, Lcom/google/zxing/aztec/AztecDetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;ZII)V

    move-object v0, v5

    .end local v0    # "this":Lcom/google/zxing/aztec/detector/Detector;
    return-object v0
.end method
