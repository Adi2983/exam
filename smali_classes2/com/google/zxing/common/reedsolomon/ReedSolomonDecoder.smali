.class public final Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
.super Ljava/lang/Object;
.source "ReedSolomonDecoder.java"


# instance fields
.field private final field:Lcom/google/zxing/common/reedsolomon/GenericGF;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V
    .locals 4

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
    move-object v1, p1

    .local v1, "field":Lcom/google/zxing/common/reedsolomon/GenericGF;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 46
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 47
    return-void
.end method

.method private findErrorLocations(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)[I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
        }
    .end annotation

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
    move-object v1, p1

    .local v1, "errorLocator":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object v6, v1

    invoke-virtual {v6}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v6

    move v2, v6

    .line 144
    .local v2, "numErrors":I
    move v6, v2

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 145
    const/4 v6, 0x1

    new-array v6, v6, [I

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x0

    move-object v9, v1

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficient(I)I

    move-result v9

    aput v9, v7, v8

    move-object v0, v6

    .line 158
    .end local v0    # "this":Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
    :goto_0
    return-object v0

    .line 147
    .restart local v0    # "this":Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
    :cond_0
    move v6, v2

    new-array v6, v6, [I

    move-object v3, v6

    .line 148
    .local v3, "result":[I
    const/4 v6, 0x0

    move v4, v6

    .line 149
    .local v4, "e":I
    const/4 v6, 0x1

    move v5, v6

    .local v5, "i":I
    :goto_1
    move v6, v5

    move-object v7, v0

    iget-object v7, v7, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v7}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getSize()I

    move-result v7

    if-ge v6, v7, :cond_2

    move v6, v4

    move v7, v2

    if-ge v6, v7, :cond_2

    .line 150
    move-object v6, v1

    move v7, v5

    invoke-virtual {v6, v7}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->evaluateAt(I)I

    move-result v6

    if-nez v6, :cond_1

    .line 151
    move-object v6, v3

    move v7, v4

    move-object v8, v0

    iget-object v8, v8, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move v9, v5

    invoke-virtual {v8, v9}, Lcom/google/zxing/common/reedsolomon/GenericGF;->inverse(I)I

    move-result v8

    aput v8, v6, v7

    .line 152
    add-int/lit8 v4, v4, 0x1

    .line 149
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 155
    :cond_2
    move v6, v4

    move v7, v2

    if-eq v6, v7, :cond_3

    .line 156
    new-instance v6, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const-string/jumbo v8, "Error locator degree does not match number of roots"

    invoke-direct {v7, v8}, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 158
    :cond_3
    move-object v6, v3

    move-object v0, v6

    goto :goto_0
.end method

.method private findErrorMagnitudes(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;[IZ)[I
    .locals 19

    .prologue
    .line 165
    move-object/from16 v1, p0

    .local v1, "this":Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
    move-object/from16 v2, p1

    .local v2, "errorEvaluator":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object/from16 v3, p2

    .local v3, "errorLocations":[I
    move/from16 v4, p3

    .local v4, "dataMatrix":Z
    move-object v13, v3

    array-length v13, v13

    move v5, v13

    .line 166
    .local v5, "s":I
    move v13, v5

    new-array v13, v13, [I

    move-object v6, v13

    .line 167
    .local v6, "result":[I
    const/4 v13, 0x0

    move v7, v13

    .local v7, "i":I
    :goto_0
    move v13, v7

    move v14, v5

    if-ge v13, v14, :cond_4

    .line 168
    move-object v13, v1

    iget-object v13, v13, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object v14, v3

    move v15, v7

    aget v14, v14, v15

    invoke-virtual {v13, v14}, Lcom/google/zxing/common/reedsolomon/GenericGF;->inverse(I)I

    move-result v13

    move v8, v13

    .line 169
    .local v8, "xiInverse":I
    const/4 v13, 0x1

    move v9, v13

    .line 170
    .local v9, "denominator":I
    const/4 v13, 0x0

    move v10, v13

    .local v10, "j":I
    :goto_1
    move v13, v10

    move v14, v5

    if-ge v13, v14, :cond_2

    .line 171
    move v13, v7

    move v14, v10

    if-eq v13, v14, :cond_0

    .line 176
    move-object v13, v1

    iget-object v13, v13, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object v14, v3

    move v15, v10

    aget v14, v14, v15

    move v15, v8

    invoke-virtual {v13, v14, v15}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v13

    move v11, v13

    .line 177
    .local v11, "term":I
    move v13, v11

    const/4 v14, 0x1

    and-int/lit8 v13, v13, 0x1

    if-nez v13, :cond_1

    move v13, v11

    const/4 v14, 0x1

    or-int/lit8 v13, v13, 0x1

    :goto_2
    move v12, v13

    .line 178
    .local v12, "termPlus1":I
    move-object v13, v1

    iget-object v13, v13, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move v14, v9

    move v15, v12

    invoke-virtual {v13, v14, v15}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v13

    move v9, v13

    .line 170
    .end local v11    # "term":I
    .end local v12    # "termPlus1":I
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 177
    .restart local v11    # "term":I
    :cond_1
    move v13, v11

    const/4 v14, -0x2

    and-int/lit8 v13, v13, -0x2

    goto :goto_2

    .line 181
    .end local v11    # "term":I
    :cond_2
    move-object v13, v6

    move v14, v7

    move-object v15, v1

    iget-object v15, v15, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object/from16 v16, v2

    move/from16 v17, v8

    invoke-virtual/range {v16 .. v17}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->evaluateAt(I)I

    move-result v16

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object/from16 v17, v0

    move/from16 v18, v9

    invoke-virtual/range {v17 .. v18}, Lcom/google/zxing/common/reedsolomon/GenericGF;->inverse(I)I

    move-result v17

    invoke-virtual/range {v15 .. v17}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v15

    aput v15, v13, v14

    .line 184
    move v13, v4

    if-eqz v13, :cond_3

    .line 185
    move-object v13, v6

    move v14, v7

    move-object v15, v1

    iget-object v15, v15, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object/from16 v16, v6

    move/from16 v17, v7

    aget v16, v16, v17

    move/from16 v17, v8

    invoke-virtual/range {v15 .. v17}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v15

    aput v15, v13, v14

    .line 167
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 188
    .end local v8    # "xiInverse":I
    .end local v9    # "denominator":I
    .end local v10    # "j":I
    :cond_4
    move-object v13, v6

    move-object v1, v13

    .end local v1    # "this":Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
    return-object v1
.end method

.method private runEuclideanAlgorithm(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;Lcom/google/zxing/common/reedsolomon/GenericGFPoly;I)[Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
        }
    .end annotation

    .prologue
    .line 93
    move-object/from16 v2, p0

    .local v2, "this":Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
    move-object/from16 v3, p1

    .local v3, "a":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object/from16 v4, p2

    .local v4, "b":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move/from16 v5, p3

    .local v5, "R":I
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v17

    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 94
    move-object/from16 v17, v3

    move-object/from16 v6, v17

    .line 95
    .local v6, "temp":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object/from16 v17, v4

    move-object/from16 v3, v17

    .line 96
    move-object/from16 v17, v6

    move-object/from16 v4, v17

    .line 99
    .end local v6    # "temp":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    :cond_0
    move-object/from16 v17, v3

    move-object/from16 v6, v17

    .line 100
    .local v6, "rLast":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object/from16 v17, v4

    move-object/from16 v7, v17

    .line 101
    .local v7, "r":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getZero()Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v17

    move-object/from16 v8, v17

    .line 102
    .local v8, "tLast":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getOne()Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v17

    move-object/from16 v9, v17

    .line 105
    .local v9, "t":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    :goto_0
    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v17

    move/from16 v18, v5

    const/16 v19, 0x2

    div-int/lit8 v18, v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_3

    .line 106
    move-object/from16 v17, v6

    move-object/from16 v10, v17

    .line 107
    .local v10, "rLastLast":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object/from16 v17, v8

    move-object/from16 v11, v17

    .line 108
    .local v11, "tLastLast":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object/from16 v17, v7

    move-object/from16 v6, v17

    .line 109
    move-object/from16 v17, v9

    move-object/from16 v8, v17

    .line 112
    move-object/from16 v17, v6

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 114
    new-instance v17, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    const-string/jumbo v19, "r_{i-1} was zero"

    invoke-direct/range {v18 .. v19}, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 116
    :cond_1
    move-object/from16 v17, v10

    move-object/from16 v7, v17

    .line 117
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getZero()Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v17

    move-object/from16 v12, v17

    .line 118
    .local v12, "q":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object/from16 v17, v6

    move-object/from16 v18, v6

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficient(I)I

    move-result v17

    move/from16 v13, v17

    .line 119
    .local v13, "denominatorLeadingTerm":I
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object/from16 v17, v0

    move/from16 v18, v13

    invoke-virtual/range {v17 .. v18}, Lcom/google/zxing/common/reedsolomon/GenericGF;->inverse(I)I

    move-result v17

    move/from16 v14, v17

    .line 120
    .local v14, "dltInverse":I
    :goto_1
    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v17

    move-object/from16 v18, v6

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_2

    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v17

    if-nez v17, :cond_2

    .line 121
    move-object/from16 v17, v7

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v17

    move-object/from16 v18, v6

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v15, v17

    .line 122
    .local v15, "degreeDiff":I
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object/from16 v17, v0

    move-object/from16 v18, v7

    move-object/from16 v19, v7

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficient(I)I

    move-result v18

    move/from16 v19, v14

    invoke-virtual/range {v17 .. v19}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v17

    move/from16 v16, v17

    .line 123
    .local v16, "scale":I
    move-object/from16 v17, v12

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object/from16 v18, v0

    move/from16 v19, v15

    move/from16 v20, v16

    invoke-virtual/range {v18 .. v20}, Lcom/google/zxing/common/reedsolomon/GenericGF;->buildMonomial(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v17

    move-object/from16 v12, v17

    .line 124
    move-object/from16 v17, v7

    move-object/from16 v18, v6

    move/from16 v19, v15

    move/from16 v20, v16

    invoke-virtual/range {v18 .. v20}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->multiplyByMonomial(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v17

    move-object/from16 v7, v17

    .line 125
    goto :goto_1

    .line 127
    .end local v15    # "degreeDiff":I
    .end local v16    # "scale":I
    :cond_2
    move-object/from16 v17, v12

    move-object/from16 v18, v8

    invoke-virtual/range {v17 .. v18}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->multiply(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v17

    move-object/from16 v18, v11

    invoke-virtual/range {v17 .. v18}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v17

    move-object/from16 v9, v17

    .line 128
    goto/16 :goto_0

    .line 130
    .end local v10    # "rLastLast":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .end local v11    # "tLastLast":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .end local v12    # "q":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .end local v13    # "denominatorLeadingTerm":I
    .end local v14    # "dltInverse":I
    :cond_3
    move-object/from16 v17, v9

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficient(I)I

    move-result v17

    move/from16 v10, v17

    .line 131
    .local v10, "sigmaTildeAtZero":I
    move/from16 v17, v10

    if-nez v17, :cond_4

    .line 132
    new-instance v17, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    const-string/jumbo v19, "sigmaTilde(0) was zero"

    invoke-direct/range {v18 .. v19}, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 135
    :cond_4
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object/from16 v17, v0

    move/from16 v18, v10

    invoke-virtual/range {v17 .. v18}, Lcom/google/zxing/common/reedsolomon/GenericGF;->inverse(I)I

    move-result v17

    move/from16 v11, v17

    .line 136
    .local v11, "inverse":I
    move-object/from16 v17, v9

    move/from16 v18, v11

    invoke-virtual/range {v17 .. v18}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->multiply(I)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v17

    move-object/from16 v12, v17

    .line 137
    .local v12, "sigma":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object/from16 v17, v7

    move/from16 v18, v11

    invoke-virtual/range {v17 .. v18}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->multiply(I)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v17

    move-object/from16 v13, v17

    .line 138
    .local v13, "omega":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

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

    .end local v2    # "this":Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
    return-object v2
.end method


# virtual methods
.method public decode([II)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/common/reedsolomon/ReedSolomonException;
        }
    .end annotation

    .prologue
    .line 59
    move-object/from16 v2, p0

    .local v2, "this":Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;
    move-object/from16 v3, p1

    .local v3, "received":[I
    move/from16 v4, p2

    .local v4, "twoS":I
    new-instance v17, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object/from16 v19, v0

    move-object/from16 v20, v3

    invoke-direct/range {v18 .. v20}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    move-object/from16 v5, v17

    .line 60
    .local v5, "poly":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move/from16 v17, v4

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    move-object/from16 v6, v17

    .line 61
    .local v6, "syndromeCoefficients":[I
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object/from16 v17, v0

    sget-object v18, Lcom/google/zxing/common/reedsolomon/GenericGF;->DATA_MATRIX_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    move/from16 v7, v17

    .line 62
    .local v7, "dataMatrix":Z
    const/16 v17, 0x1

    move/from16 v8, v17

    .line 63
    .local v8, "noError":Z
    const/16 v17, 0x0

    move/from16 v9, v17

    .local v9, "i":I
    :goto_0
    move/from16 v17, v9

    move/from16 v18, v4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 65
    move-object/from16 v17, v5

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object/from16 v18, v0

    move/from16 v19, v7

    if-eqz v19, :cond_1

    move/from16 v19, v9

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    :goto_1
    invoke-virtual/range {v18 .. v19}, Lcom/google/zxing/common/reedsolomon/GenericGF;->exp(I)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->evaluateAt(I)I

    move-result v17

    move/from16 v10, v17

    .line 66
    .local v10, "eval":I
    move-object/from16 v17, v6

    move-object/from16 v18, v6

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    move/from16 v19, v9

    sub-int v18, v18, v19

    move/from16 v19, v10

    aput v19, v17, v18

    .line 67
    move/from16 v17, v10

    if-eqz v17, :cond_0

    .line 68
    const/16 v17, 0x0

    move/from16 v8, v17

    .line 63
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 65
    .end local v10    # "eval":I
    :cond_1
    move/from16 v19, v9

    goto :goto_1

    .line 71
    :cond_2
    move/from16 v17, v8

    if-eqz v17, :cond_3

    .line 72
    .line 88
    .end local v9    # "i":I
    :goto_2
    return-void

    .line 74
    .restart local v9    # "i":I
    :cond_3
    new-instance v17, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object/from16 v19, v0

    move-object/from16 v20, v6

    invoke-direct/range {v18 .. v20}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    move-object/from16 v9, v17

    .line 75
    .local v9, "syndrome":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object/from16 v17, v2

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object/from16 v18, v0

    move/from16 v19, v4

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Lcom/google/zxing/common/reedsolomon/GenericGF;->buildMonomial(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v18

    move-object/from16 v19, v9

    move/from16 v20, v4

    invoke-direct/range {v17 .. v20}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->runEuclideanAlgorithm(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;Lcom/google/zxing/common/reedsolomon/GenericGFPoly;I)[Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v17

    move-object/from16 v10, v17

    .line 77
    .local v10, "sigmaOmega":[Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object/from16 v17, v10

    const/16 v18, 0x0

    aget-object v17, v17, v18

    move-object/from16 v11, v17

    .line 78
    .local v11, "sigma":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object/from16 v17, v10

    const/16 v18, 0x1

    aget-object v17, v17, v18

    move-object/from16 v12, v17

    .line 79
    .local v12, "omega":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object/from16 v17, v2

    move-object/from16 v18, v11

    invoke-direct/range {v17 .. v18}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->findErrorLocations(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)[I

    move-result-object v17

    move-object/from16 v13, v17

    .line 80
    .local v13, "errorLocations":[I
    move-object/from16 v17, v2

    move-object/from16 v18, v12

    move-object/from16 v19, v13

    move/from16 v20, v7

    invoke-direct/range {v17 .. v20}, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->findErrorMagnitudes(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;[IZ)[I

    move-result-object v17

    move-object/from16 v14, v17

    .line 81
    .local v14, "errorMagnitudes":[I
    const/16 v17, 0x0

    move/from16 v15, v17

    .local v15, "i":I
    :goto_3
    move/from16 v17, v15

    move-object/from16 v18, v13

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    .line 82
    move-object/from16 v17, v3

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x1

    add-int/lit8 v17, v17, -0x1

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/google/zxing/common/reedsolomon/ReedSolomonDecoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object/from16 v18, v0

    move-object/from16 v19, v13

    move/from16 v20, v15

    aget v19, v19, v20

    invoke-virtual/range {v18 .. v19}, Lcom/google/zxing/common/reedsolomon/GenericGF;->log(I)I

    move-result v18

    sub-int v17, v17, v18

    move/from16 v16, v17

    .line 83
    .local v16, "position":I
    move/from16 v17, v16

    if-gez v17, :cond_4

    .line 84
    new-instance v17, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    const-string/jumbo v19, "Bad error location"

    invoke-direct/range {v18 .. v19}, Lcom/google/zxing/common/reedsolomon/ReedSolomonException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 86
    :cond_4
    move-object/from16 v17, v3

    move/from16 v18, v16

    move-object/from16 v19, v3

    move/from16 v20, v16

    aget v19, v19, v20

    move-object/from16 v20, v14

    move/from16 v21, v15

    aget v20, v20, v21

    invoke-static/range {v19 .. v20}, Lcom/google/zxing/common/reedsolomon/GenericGF;->addOrSubtract(II)I

    move-result v19

    aput v19, v17, v18

    .line 81
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 88
    .end local v16    # "position":I
    :cond_5
    goto/16 :goto_2
.end method
