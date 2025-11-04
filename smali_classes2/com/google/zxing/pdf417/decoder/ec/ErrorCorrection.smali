.class public final Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;
.super Ljava/lang/Object;
.source "ErrorCorrection.java"


# instance fields
.field private final field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 35
    move-object v1, v0

    sget-object v2, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->PDF417_GF:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    iput-object v2, v1, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    .line 36
    return-void
.end method

.method private findErrorLocations(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)[I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 139
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;
    move-object v1, p1

    .local v1, "errorLocator":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object v6, v1

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v6

    move v2, v6

    .line 140
    .local v2, "numErrors":I
    move v6, v2

    new-array v6, v6, [I

    move-object v3, v6

    .line 141
    .local v3, "result":[I
    const/4 v6, 0x0

    move v4, v6

    .line 142
    .local v4, "e":I
    const/4 v6, 0x1

    move v5, v6

    .local v5, "i":I
    :goto_0
    move v6, v5

    move-object v7, v0

    iget-object v7, v7, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->getSize()I

    move-result v7

    if-ge v6, v7, :cond_1

    move v6, v4

    move v7, v2

    if-ge v6, v7, :cond_1

    .line 143
    move-object v6, v1

    move v7, v5

    invoke-virtual {v6, v7}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->evaluateAt(I)I

    move-result v6

    if-nez v6, :cond_0

    .line 144
    move-object v6, v3

    move v7, v4

    move-object v8, v0

    iget-object v8, v8, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move v9, v5

    invoke-virtual {v8, v9}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->inverse(I)I

    move-result v8

    aput v8, v6, v7

    .line 145
    add-int/lit8 v4, v4, 0x1

    .line 142
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 148
    :cond_1
    move v6, v4

    move v7, v2

    if-eq v6, v7, :cond_2

    .line 149
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v6

    throw v6

    .line 151
    :cond_2
    move-object v6, v3

    move-object v0, v6

    .end local v0    # "this":Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;
    return-object v0
.end method

.method private findErrorMagnitudes(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;[I)[I
    .locals 20

    .prologue
    .line 157
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;
    move-object/from16 v1, p1

    .local v1, "errorEvaluator":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object/from16 v2, p2

    .local v2, "errorLocator":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object/from16 v3, p3

    .local v3, "errorLocations":[I
    move-object v13, v2

    invoke-virtual {v13}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v13

    move v4, v13

    .line 158
    .local v4, "errorLocatorDegree":I
    move v13, v4

    new-array v13, v13, [I

    move-object v5, v13

    .line 159
    .local v5, "formalDerivativeCoefficients":[I
    const/4 v13, 0x1

    move v6, v13

    .local v6, "i":I
    :goto_0
    move v13, v6

    move v14, v4

    if-gt v13, v14, :cond_0

    .line 160
    move-object v13, v5

    move v14, v4

    move v15, v6

    sub-int/2addr v14, v15

    move-object v15, v0

    iget-object v15, v15, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move/from16 v16, v6

    move-object/from16 v17, v2

    move/from16 v18, v6

    invoke-virtual/range {v17 .. v18}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getCoefficient(I)I

    move-result v17

    invoke-virtual/range {v15 .. v17}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->multiply(II)I

    move-result v15

    aput v15, v13, v14

    .line 159
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 163
    :cond_0
    new-instance v13, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    move-object v15, v0

    iget-object v15, v15, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v16, v5

    invoke-direct/range {v14 .. v16}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    move-object v6, v13

    .line 166
    .local v6, "formalDerivative":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object v13, v3

    array-length v13, v13

    move v7, v13

    .line 167
    .local v7, "s":I
    move v13, v7

    new-array v13, v13, [I

    move-object v8, v13

    .line 168
    .local v8, "result":[I
    const/4 v13, 0x0

    move v9, v13

    .local v9, "i":I
    :goto_1
    move v13, v9

    move v14, v7

    if-ge v13, v14, :cond_1

    .line 169
    move-object v13, v0

    iget-object v13, v13, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object v14, v3

    move v15, v9

    aget v14, v14, v15

    invoke-virtual {v13, v14}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->inverse(I)I

    move-result v13

    move v10, v13

    .line 170
    .local v10, "xiInverse":I
    move-object v13, v0

    iget-object v13, v13, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    const/4 v14, 0x0

    move-object v15, v1

    move/from16 v16, v10

    invoke-virtual/range {v15 .. v16}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->evaluateAt(I)I

    move-result v15

    invoke-virtual {v13, v14, v15}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->subtract(II)I

    move-result v13

    move v11, v13

    .line 171
    .local v11, "numerator":I
    move-object v13, v0

    iget-object v13, v13, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object v14, v6

    move v15, v10

    invoke-virtual {v14, v15}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->evaluateAt(I)I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->inverse(I)I

    move-result v13

    move v12, v13

    .line 172
    .local v12, "denominator":I
    move-object v13, v8

    move v14, v9

    move-object v15, v0

    iget-object v15, v15, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move/from16 v16, v11

    move/from16 v17, v12

    invoke-virtual/range {v15 .. v17}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->multiply(II)I

    move-result v15

    aput v15, v13, v14

    .line 168
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 174
    .end local v10    # "xiInverse":I
    .end local v11    # "numerator":I
    .end local v12    # "denominator":I
    :cond_1
    move-object v13, v8

    move-object v0, v13

    .end local v0    # "this":Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;
    return-object v0
.end method

.method private runEuclideanAlgorithm(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;I)[Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 89
    move-object/from16 v2, p0

    .local v2, "this":Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;
    move-object/from16 v3, p1

    .local v3, "a":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object/from16 v4, p2

    .local v4, "b":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move/from16 v5, p3

    .local v5, "R":I
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v17

    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 90
    move-object/from16 v17, v3

    move-object/from16 v6, v17

    .line 91
    .local v6, "temp":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object/from16 v17, v4

    move-object/from16 v3, v17

    .line 92
    move-object/from16 v17, v6

    move-object/from16 v4, v17

    .line 95
    .end local v6    # "temp":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    :cond_0
    move-object/from16 v17, v3

    move-object/from16 v6, v17

    .line 96
    .local v6, "rLast":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object/from16 v17, v4

    move-object/from16 v7, v17

    .line 97
    .local v7, "r":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->getZero()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v17

    move-object/from16 v8, v17

    .line 98
    .local v8, "tLast":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->getOne()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v17

    move-object/from16 v9, v17

    .line 101
    .local v9, "t":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    :goto_0
    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v17

    move/from16 v18, v5

    const/16 v19, 0x2

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_3

    .line 102
    move-object/from16 v17, v6

    move-object/from16 v10, v17

    .line 103
    .local v10, "rLastLast":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object/from16 v17, v8

    move-object/from16 v11, v17

    .line 104
    .local v11, "tLastLast":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object/from16 v17, v7

    move-object/from16 v6, v17

    .line 105
    move-object/from16 v17, v9

    move-object/from16 v8, v17

    .line 108
    move-object/from16 v17, v6

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->isZero()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 110
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v17

    throw v17

    .line 112
    :cond_1
    move-object/from16 v17, v10

    move-object/from16 v7, v17

    .line 113
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->getZero()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v17

    move-object/from16 v12, v17

    .line 114
    .local v12, "q":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object/from16 v17, v6

    move-object/from16 v18, v6

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getCoefficient(I)I

    move-result v17

    move/from16 v13, v17

    .line 115
    .local v13, "denominatorLeadingTerm":I
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v17, v0

    move/from16 v18, v13

    invoke-virtual/range {v17 .. v18}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->inverse(I)I

    move-result v17

    move/from16 v14, v17

    .line 116
    .local v14, "dltInverse":I
    :goto_1
    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v17

    move-object/from16 v18, v6

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_2

    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->isZero()Z

    move-result v17

    if-nez v17, :cond_2

    .line 117
    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v17

    move-object/from16 v18, v6

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v15, v17

    .line 118
    .local v15, "degreeDiff":I
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v17, v0

    move-object/from16 v18, v7

    move-object/from16 v19, v7

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getCoefficient(I)I

    move-result v18

    move/from16 v19, v14

    invoke-virtual/range {v17 .. v19}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->multiply(II)I

    move-result v17

    move/from16 v16, v17

    .line 119
    .local v16, "scale":I
    move-object/from16 v17, v12

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v18, v0

    move/from16 v19, v15

    move/from16 v20, v16

    invoke-virtual/range {v18 .. v20}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->buildMonomial(II)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->add(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v17

    move-object/from16 v12, v17

    .line 120
    move-object/from16 v17, v7

    move-object/from16 v18, v6

    move/from16 v19, v15

    move/from16 v20, v16

    invoke-virtual/range {v18 .. v20}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->multiplyByMonomial(II)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->subtract(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v17

    move-object/from16 v7, v17

    .line 121
    goto :goto_1

    .line 123
    .end local v15    # "degreeDiff":I
    .end local v16    # "scale":I
    :cond_2
    move-object/from16 v17, v12

    move-object/from16 v18, v8

    invoke-virtual/range {v17 .. v18}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->multiply(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v17

    move-object/from16 v18, v11

    invoke-virtual/range {v17 .. v18}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->subtract(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->negative()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v17

    move-object/from16 v9, v17

    .line 124
    goto/16 :goto_0

    .line 126
    .end local v10    # "rLastLast":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .end local v11    # "tLastLast":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .end local v12    # "q":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .end local v13    # "denominatorLeadingTerm":I
    .end local v14    # "dltInverse":I
    :cond_3
    move-object/from16 v17, v9

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getCoefficient(I)I

    move-result v17

    move/from16 v10, v17

    .line 127
    .local v10, "sigmaTildeAtZero":I
    move/from16 v17, v10

    if-nez v17, :cond_4

    .line 128
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v17

    throw v17

    .line 131
    :cond_4
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v17, v0

    move/from16 v18, v10

    invoke-virtual/range {v17 .. v18}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->inverse(I)I

    move-result v17

    move/from16 v11, v17

    .line 132
    .local v11, "inverse":I
    move-object/from16 v17, v9

    move/from16 v18, v11

    invoke-virtual/range {v17 .. v18}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->multiply(I)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v17

    move-object/from16 v12, v17

    .line 133
    .local v12, "sigma":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object/from16 v17, v7

    move/from16 v18, v11

    invoke-virtual/range {v17 .. v18}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->multiply(I)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v17

    move-object/from16 v13, v17

    .line 134
    .local v13, "omega":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-object/from16 v17, v0

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    const/16 v19, 0x0

    move-object/from16 v20, v12

    aput-object v20, v18, v19

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    const/16 v19, 0x1

    move-object/from16 v20, v13

    aput-object v20, v18, v19

    move-object/from16 v2, v17

    .end local v2    # "this":Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;
    return-object v2
.end method


# virtual methods
.method public decode([II[I)V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 42
    move-object/from16 v2, p0

    .local v2, "this":Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;
    move-object/from16 v3, p1

    .local v3, "received":[I
    move/from16 v4, p2

    .local v4, "numECCodewords":I
    move-object/from16 v5, p3

    .local v5, "erasures":[I
    new-instance v18, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-object/from16 v27, v18

    move-object/from16 v18, v27

    move-object/from16 v19, v27

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v20, v0

    move-object/from16 v21, v3

    invoke-direct/range {v19 .. v21}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    move-object/from16 v6, v18

    .line 43
    .local v6, "poly":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move/from16 v18, v4

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    move-object/from16 v7, v18

    .line 44
    .local v7, "S":[I
    const/16 v18, 0x0

    move/from16 v8, v18

    .line 45
    .local v8, "error":Z
    move/from16 v18, v4

    move/from16 v9, v18

    .local v9, "i":I
    :goto_0
    move/from16 v18, v9

    if-lez v18, :cond_1

    .line 46
    move-object/from16 v18, v6

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v19, v0

    move/from16 v20, v9

    invoke-virtual/range {v19 .. v20}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->exp(I)I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->evaluateAt(I)I

    move-result v18

    move/from16 v10, v18

    .line 47
    .local v10, "eval":I
    move-object/from16 v18, v7

    move/from16 v19, v4

    move/from16 v20, v9

    sub-int v19, v19, v20

    move/from16 v20, v10

    aput v20, v18, v19

    .line 48
    move/from16 v18, v10

    if-eqz v18, :cond_0

    .line 49
    const/16 v18, 0x1

    move/from16 v8, v18

    .line 45
    :cond_0
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 53
    .end local v10    # "eval":I
    :cond_1
    move/from16 v18, v8

    if-eqz v18, :cond_4

    .line 55
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->getOne()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v18

    move-object/from16 v9, v18

    .line 56
    .local v9, "knownErrors":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object/from16 v18, v5

    move-object/from16 v10, v18

    .local v10, "arr$":[I
    move-object/from16 v18, v10

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v11, v18

    .local v11, "len$":I
    const/16 v18, 0x0

    move/from16 v12, v18

    .local v12, "i$":I
    :goto_1
    move/from16 v18, v12

    move/from16 v19, v11

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    move-object/from16 v18, v10

    move/from16 v19, v12

    aget v18, v18, v19

    move/from16 v13, v18

    .line 57
    .local v13, "erasure":I
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v18, v0

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    move/from16 v20, v13

    sub-int v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->exp(I)I

    move-result v18

    move/from16 v14, v18

    .line 59
    .local v14, "b":I
    new-instance v18, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-object/from16 v27, v18

    move-object/from16 v18, v27

    move-object/from16 v19, v27

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    const/16 v23, 0x0

    move-object/from16 v24, v2

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move/from16 v26, v14

    invoke-virtual/range {v24 .. v26}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->subtract(II)I

    move-result v24

    aput v24, v22, v23

    move-object/from16 v27, v21

    move-object/from16 v21, v27

    move-object/from16 v22, v27

    const/16 v23, 0x1

    const/16 v24, 0x1

    aput v24, v22, v23

    invoke-direct/range {v19 .. v21}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    move-object/from16 v15, v18

    .line 60
    .local v15, "term":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object/from16 v18, v9

    move-object/from16 v19, v15

    invoke-virtual/range {v18 .. v19}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->multiply(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v18

    move-object/from16 v9, v18

    .line 56
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 63
    .end local v13    # "erasure":I
    .end local v14    # "b":I
    .end local v15    # "term":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    :cond_2
    new-instance v18, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-object/from16 v27, v18

    move-object/from16 v18, v27

    move-object/from16 v19, v27

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v20, v0

    move-object/from16 v21, v7

    invoke-direct/range {v19 .. v21}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    move-object/from16 v10, v18

    .line 66
    .local v10, "syndrome":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object/from16 v18, v2

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v19, v0

    move/from16 v20, v4

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->buildMonomial(II)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v19

    move-object/from16 v20, v10

    move/from16 v21, v4

    invoke-direct/range {v18 .. v21}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->runEuclideanAlgorithm(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;I)[Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v18

    move-object/from16 v11, v18

    .line 68
    .local v11, "sigmaOmega":[Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object/from16 v18, v11

    const/16 v19, 0x0

    aget-object v18, v18, v19

    move-object/from16 v12, v18

    .line 69
    .local v12, "sigma":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object/from16 v18, v11

    const/16 v19, 0x1

    aget-object v18, v18, v19

    move-object/from16 v13, v18

    .line 73
    .local v13, "omega":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object/from16 v18, v2

    move-object/from16 v19, v12

    invoke-direct/range {v18 .. v19}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->findErrorLocations(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)[I

    move-result-object v18

    move-object/from16 v14, v18

    .line 74
    .local v14, "errorLocations":[I
    move-object/from16 v18, v2

    move-object/from16 v19, v13

    move-object/from16 v20, v12

    move-object/from16 v21, v14

    invoke-direct/range {v18 .. v21}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->findErrorMagnitudes(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;[I)[I

    move-result-object v18

    move-object/from16 v15, v18

    .line 76
    .local v15, "errorMagnitudes":[I
    const/16 v18, 0x0

    move/from16 v16, v18

    .local v16, "i":I
    :goto_2
    move/from16 v18, v16

    move-object/from16 v19, v14

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    .line 77
    move-object/from16 v18, v3

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v19, v0

    move-object/from16 v20, v14

    move/from16 v21, v16

    aget v20, v20, v21

    invoke-virtual/range {v19 .. v20}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->log(I)I

    move-result v19

    sub-int v18, v18, v19

    move/from16 v17, v18

    .line 78
    .local v17, "position":I
    move/from16 v18, v17

    if-gez v18, :cond_3

    .line 79
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v18

    throw v18

    .line 81
    :cond_3
    move-object/from16 v18, v3

    move/from16 v19, v17

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object/from16 v20, v0

    move-object/from16 v21, v3

    move/from16 v22, v17

    aget v21, v21, v22

    move-object/from16 v22, v15

    move/from16 v23, v16

    aget v22, v22, v23

    invoke-virtual/range {v20 .. v22}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->subtract(II)I

    move-result v20

    aput v20, v18, v19

    .line 76
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 84
    .end local v9    # "knownErrors":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .end local v10    # "syndrome":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .end local v11    # "sigmaOmega":[Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .end local v12    # "sigma":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .end local v13    # "omega":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .end local v14    # "errorLocations":[I
    .end local v15    # "errorMagnitudes":[I
    .end local v16    # "i":I
    .end local v17    # "position":I
    :cond_4
    return-void
.end method
