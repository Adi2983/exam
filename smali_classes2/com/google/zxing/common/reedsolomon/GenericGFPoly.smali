.class final Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
.super Ljava/lang/Object;
.source "GenericGFPoly.java"


# instance fields
.field private final coefficients:[I

.field private final field:Lcom/google/zxing/common/reedsolomon/GenericGF;


# direct methods
.method constructor <init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V
    .locals 11

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object v1, p1

    .local v1, "field":Lcom/google/zxing/common/reedsolomon/GenericGF;
    move-object v2, p2

    .local v2, "coefficients":[I
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 43
    move-object v5, v2

    array-length v5, v5

    if-nez v5, :cond_0

    .line 44
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 46
    :cond_0
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 47
    move-object v5, v2

    array-length v5, v5

    move v3, v5

    .line 48
    .local v3, "coefficientsLength":I
    move v5, v3

    const/4 v6, 0x1

    if-le v5, v6, :cond_3

    move-object v5, v2

    const/4 v6, 0x0

    aget v5, v5, v6

    if-nez v5, :cond_3

    .line 50
    const/4 v5, 0x1

    move v4, v5

    .line 51
    .local v4, "firstNonZero":I
    :goto_0
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_1

    move-object v5, v2

    move v6, v4

    aget v5, v5, v6

    if-nez v5, :cond_1

    .line 52
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 54
    :cond_1
    move v5, v4

    move v6, v3

    if-ne v5, v6, :cond_2

    .line 55
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getZero()Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v6

    iget-object v6, v6, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    iput-object v6, v5, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    .line 64
    .line 67
    .end local v4    # "firstNonZero":I
    :goto_1
    return-void

    .line 57
    .restart local v4    # "firstNonZero":I
    :cond_2
    move-object v5, v0

    move v6, v3

    move v7, v4

    sub-int/2addr v6, v7

    new-array v6, v6, [I

    iput-object v6, v5, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    .line 58
    move-object v5, v2

    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v9, v9

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 65
    .end local v4    # "firstNonZero":I
    :cond_3
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    goto :goto_1
.end method


# virtual methods
.method addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .locals 13

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object v1, p1

    .local v1, "other":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object v7, v0

    iget-object v7, v7, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object v8, v1

    iget-object v8, v8, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 120
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    const-string/jumbo v9, "GenericGFPolys do not have same GenericGF field"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 122
    :cond_0
    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 123
    move-object v7, v1

    move-object v0, v7

    .line 145
    .end local v0    # "this":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    :goto_0
    return-object v0

    .line 125
    .restart local v0    # "this":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    :cond_1
    move-object v7, v1

    invoke-virtual {v7}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 126
    move-object v7, v0

    move-object v0, v7

    goto :goto_0

    .line 129
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    move-object v2, v7

    .line 130
    .local v2, "smallerCoefficients":[I
    move-object v7, v1

    iget-object v7, v7, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    move-object v3, v7

    .line 131
    .local v3, "largerCoefficients":[I
    move-object v7, v2

    array-length v7, v7

    move-object v8, v3

    array-length v8, v8

    if-le v7, v8, :cond_3

    .line 132
    move-object v7, v2

    move-object v4, v7

    .line 133
    .local v4, "temp":[I
    move-object v7, v3

    move-object v2, v7

    .line 134
    move-object v7, v4

    move-object v3, v7

    .line 136
    .end local v4    # "temp":[I
    :cond_3
    move-object v7, v3

    array-length v7, v7

    new-array v7, v7, [I

    move-object v4, v7

    .line 137
    .local v4, "sumDiff":[I
    move-object v7, v3

    array-length v7, v7

    move-object v8, v2

    array-length v8, v8

    sub-int/2addr v7, v8

    move v5, v7

    .line 139
    .local v5, "lengthDiff":I
    move-object v7, v3

    const/4 v8, 0x0

    move-object v9, v4

    const/4 v10, 0x0

    move v11, v5

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    move v7, v5

    move v6, v7

    .local v6, "i":I
    :goto_1
    move v7, v6

    move-object v8, v3

    array-length v8, v8

    if-ge v7, v8, :cond_4

    .line 142
    move-object v7, v4

    move v8, v6

    move-object v9, v2

    move v10, v6

    move v11, v5

    sub-int/2addr v10, v11

    aget v9, v9, v10

    move-object v10, v3

    move v11, v6

    aget v10, v10, v11

    invoke-static {v9, v10}, Lcom/google/zxing/common/reedsolomon/GenericGF;->addOrSubtract(II)I

    move-result v9

    aput v9, v7, v8

    .line 141
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 145
    :cond_4
    new-instance v7, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    iget-object v9, v9, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object v10, v4

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    move-object v0, v7

    goto :goto_0
.end method

.method divide(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)[Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .locals 15

    .prologue
    .line 201
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object/from16 v1, p1

    .local v1, "other":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object v10, v0

    iget-object v10, v10, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object v11, v1

    iget-object v11, v11, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 202
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const-string/jumbo v12, "GenericGFPolys do not have same GenericGF field"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 204
    :cond_0
    move-object v10, v1

    invoke-virtual {v10}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 205
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const-string/jumbo v12, "Divide by 0"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 208
    :cond_1
    move-object v10, v0

    iget-object v10, v10, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v10}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getZero()Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v10

    move-object v2, v10

    .line 209
    .local v2, "quotient":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object v10, v0

    move-object v3, v10

    .line 211
    .local v3, "remainder":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object v10, v1

    move-object v11, v1

    invoke-virtual {v11}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficient(I)I

    move-result v10

    move v4, v10

    .line 212
    .local v4, "denominatorLeadingTerm":I
    move-object v10, v0

    iget-object v10, v10, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move v11, v4

    invoke-virtual {v10, v11}, Lcom/google/zxing/common/reedsolomon/GenericGF;->inverse(I)I

    move-result v10

    move v5, v10

    .line 214
    .local v5, "inverseDenominatorLeadingTerm":I
    :goto_0
    move-object v10, v3

    invoke-virtual {v10}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v10

    move-object v11, v1

    invoke-virtual {v11}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v11

    if-lt v10, v11, :cond_2

    move-object v10, v3

    invoke-virtual {v10}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v10

    if-nez v10, :cond_2

    .line 215
    move-object v10, v3

    invoke-virtual {v10}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v10

    move-object v11, v1

    invoke-virtual {v11}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v11

    sub-int/2addr v10, v11

    move v6, v10

    .line 216
    .local v6, "degreeDifference":I
    move-object v10, v0

    iget-object v10, v10, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object v11, v3

    move-object v12, v3

    invoke-virtual {v12}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficient(I)I

    move-result v11

    move v12, v5

    invoke-virtual {v10, v11, v12}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v10

    move v7, v10

    .line 217
    .local v7, "scale":I
    move-object v10, v1

    move v11, v6

    move v12, v7

    invoke-virtual {v10, v11, v12}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->multiplyByMonomial(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v10

    move-object v8, v10

    .line 218
    .local v8, "term":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object v10, v0

    iget-object v10, v10, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move v11, v6

    move v12, v7

    invoke-virtual {v10, v11, v12}, Lcom/google/zxing/common/reedsolomon/GenericGF;->buildMonomial(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v10

    move-object v9, v10

    .line 219
    .local v9, "iterationQuotient":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object v10, v2

    move-object v11, v9

    invoke-virtual {v10, v11}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v10

    move-object v2, v10

    .line 220
    move-object v10, v3

    move-object v11, v8

    invoke-virtual {v10, v11}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->addOrSubtract(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v10

    move-object v3, v10

    .line 221
    goto :goto_0

    .line 223
    .end local v6    # "degreeDifference":I
    .end local v7    # "scale":I
    .end local v8    # "term":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .end local v9    # "iterationQuotient":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    :cond_2
    const/4 v10, 0x2

    new-array v10, v10, [Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v2

    aput-object v13, v11, v12

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x1

    move-object v13, v3

    aput-object v13, v11, v12

    move-object v0, v10

    .end local v0    # "this":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    return-object v0
.end method

.method evaluateAt(I)I
    .locals 11

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move v1, p1

    .local v1, "a":I
    move v8, v1

    if-nez v8, :cond_0

    .line 100
    move-object v8, v0

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficient(I)I

    move-result v8

    move v0, v8

    .line 115
    .end local v0    # "this":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    :goto_0
    return v0

    .line 102
    .restart local v0    # "this":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v8, v8

    move v2, v8

    .line 103
    .local v2, "size":I
    move v8, v1

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 105
    const/4 v8, 0x0

    move v3, v8

    .line 106
    .local v3, "result":I
    move-object v8, v0

    iget-object v8, v8, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    move-object v4, v8

    .local v4, "arr$":[I
    move-object v8, v4

    array-length v8, v8

    move v5, v8

    .local v5, "len$":I
    const/4 v8, 0x0

    move v6, v8

    .local v6, "i$":I
    :goto_1
    move v8, v6

    move v9, v5

    if-ge v8, v9, :cond_1

    move-object v8, v4

    move v9, v6

    aget v8, v8, v9

    move v7, v8

    .line 107
    .local v7, "coefficient":I
    move v8, v3

    move v9, v7

    invoke-static {v8, v9}, Lcom/google/zxing/common/reedsolomon/GenericGF;->addOrSubtract(II)I

    move-result v8

    move v3, v8

    .line 106
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 109
    .end local v7    # "coefficient":I
    :cond_1
    move v8, v3

    move v0, v8

    goto :goto_0

    .line 111
    .end local v3    # "result":I
    .end local v4    # "arr$":[I
    .end local v5    # "len$":I
    .end local v6    # "i$":I
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    move v3, v8

    .line 112
    .restart local v3    # "result":I
    const/4 v8, 0x1

    move v4, v8

    .local v4, "i":I
    :goto_2
    move v8, v4

    move v9, v2

    if-ge v8, v9, :cond_3

    .line 113
    move-object v8, v0

    iget-object v8, v8, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move v9, v1

    move v10, v3

    invoke-virtual {v8, v9, v10}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v8

    move-object v9, v0

    iget-object v9, v9, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    move v10, v4

    aget v9, v9, v10

    invoke-static {v8, v9}, Lcom/google/zxing/common/reedsolomon/GenericGF;->addOrSubtract(II)I

    move-result v8

    move v3, v8

    .line 112
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 115
    :cond_3
    move v8, v3

    move v0, v8

    goto :goto_0
.end method

.method getCoefficient(I)I
    .locals 5

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move v1, p1

    .local v1, "degree":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v3, v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v4, v1

    sub-int/2addr v3, v4

    aget v2, v2, v3

    move v0, v2

    .end local v0    # "this":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    return v0
.end method

.method getCoefficients()[I
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    return-object v0
.end method

.method getDegree()I
    .locals 3

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v1, v1

    const/4 v2, 0x1

    add-int/lit8 v1, v1, -0x1

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    return v0
.end method

.method isZero()Z
    .locals 3

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    return v0

    .restart local v0    # "this":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method multiply(I)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .locals 11

    .prologue
    .line 171
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move v1, p1

    .local v1, "scalar":I
    move v5, v1

    if-nez v5, :cond_0

    .line 172
    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v5}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getZero()Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v5

    move-object v0, v5

    .line 182
    .end local v0    # "this":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    :goto_0
    return-object v0

    .line 174
    .restart local v0    # "this":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    :cond_0
    move v5, v1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 175
    move-object v5, v0

    move-object v0, v5

    goto :goto_0

    .line 177
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v5, v5

    move v2, v5

    .line 178
    .local v2, "size":I
    move v5, v2

    new-array v5, v5, [I

    move-object v3, v5

    .line 179
    .local v3, "product":[I
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_1
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_2

    .line 180
    move-object v5, v3

    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object v8, v0

    iget-object v8, v8, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    move v9, v4

    aget v8, v8, v9

    move v9, v1

    invoke-virtual {v7, v8, v9}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v7

    aput v7, v5, v6

    .line 179
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 182
    :cond_2
    new-instance v5, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    iget-object v7, v7, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    move-object v0, v5

    goto :goto_0
.end method

.method multiply(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .locals 18

    .prologue
    .line 149
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object/from16 v1, p1

    .local v1, "other":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object v10, v0

    iget-object v10, v10, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object v11, v1

    iget-object v11, v11, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 150
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    const-string/jumbo v12, "GenericGFPolys do not have same GenericGF field"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 152
    :cond_0
    move-object v10, v0

    invoke-virtual {v10}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v10

    if-nez v10, :cond_1

    move-object v10, v1

    invoke-virtual {v10}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->isZero()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 153
    :cond_1
    move-object v10, v0

    iget-object v10, v10, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v10}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getZero()Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v10

    move-object v0, v10

    .line 167
    .end local v0    # "this":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    :goto_0
    return-object v0

    .line 155
    .restart local v0    # "this":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    :cond_2
    move-object v10, v0

    iget-object v10, v10, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    move-object v2, v10

    .line 156
    .local v2, "aCoefficients":[I
    move-object v10, v2

    array-length v10, v10

    move v3, v10

    .line 157
    .local v3, "aLength":I
    move-object v10, v1

    iget-object v10, v10, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    move-object v4, v10

    .line 158
    .local v4, "bCoefficients":[I
    move-object v10, v4

    array-length v10, v10

    move v5, v10

    .line 159
    .local v5, "bLength":I
    move v10, v3

    move v11, v5

    add-int/2addr v10, v11

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    new-array v10, v10, [I

    move-object v6, v10

    .line 160
    .local v6, "product":[I
    const/4 v10, 0x0

    move v7, v10

    .local v7, "i":I
    :goto_1
    move v10, v7

    move v11, v3

    if-ge v10, v11, :cond_4

    .line 161
    move-object v10, v2

    move v11, v7

    aget v10, v10, v11

    move v8, v10

    .line 162
    .local v8, "aCoeff":I
    const/4 v10, 0x0

    move v9, v10

    .local v9, "j":I
    :goto_2
    move v10, v9

    move v11, v5

    if-ge v10, v11, :cond_3

    .line 163
    move-object v10, v6

    move v11, v7

    move v12, v9

    add-int/2addr v11, v12

    move-object v12, v6

    move v13, v7

    move v14, v9

    add-int/2addr v13, v14

    aget v12, v12, v13

    move-object v13, v0

    iget-object v13, v13, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move v14, v8

    move-object v15, v4

    move/from16 v16, v9

    aget v15, v15, v16

    invoke-virtual {v13, v14, v15}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v13

    invoke-static {v12, v13}, Lcom/google/zxing/common/reedsolomon/GenericGF;->addOrSubtract(II)I

    move-result v12

    aput v12, v10, v11

    .line 162
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 160
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 167
    .end local v8    # "aCoeff":I
    .end local v9    # "j":I
    :cond_4
    new-instance v10, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    move-object v12, v0

    iget-object v12, v12, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object v13, v6

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    move-object v0, v10

    goto :goto_0
.end method

.method multiplyByMonomial(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .locals 12

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move v1, p1

    .local v1, "degree":I
    move v2, p2

    .local v2, "coefficient":I
    move v6, v1

    if-gez v6, :cond_0

    .line 187
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 189
    :cond_0
    move v6, v2

    if-nez v6, :cond_1

    .line 190
    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    invoke-virtual {v6}, Lcom/google/zxing/common/reedsolomon/GenericGF;->getZero()Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v6

    move-object v0, v6

    .line 197
    .end local v0    # "this":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    :goto_0
    return-object v0

    .line 192
    .restart local v0    # "this":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    array-length v6, v6

    move v3, v6

    .line 193
    .local v3, "size":I
    move v6, v3

    move v7, v1

    add-int/2addr v6, v7

    new-array v6, v6, [I

    move-object v4, v6

    .line 194
    .local v4, "product":[I
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_1
    move v6, v5

    move v7, v3

    if-ge v6, v7, :cond_2

    .line 195
    move-object v6, v4

    move v7, v5

    move-object v8, v0

    iget-object v8, v8, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object v9, v0

    iget-object v9, v9, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->coefficients:[I

    move v10, v5

    aget v9, v9, v10

    move v10, v2

    invoke-virtual {v8, v9, v10}, Lcom/google/zxing/common/reedsolomon/GenericGF;->multiply(II)I

    move-result v8

    aput v8, v6, v7

    .line 194
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 197
    :cond_2
    new-instance v6, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    iget-object v8, v8, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    move-object v0, v6

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/16 v7, 0x8

    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v8

    mul-int/2addr v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v5

    .line 229
    .local v1, "result":Ljava/lang/StringBuilder;
    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getDegree()I

    move-result v5

    move v2, v5

    .local v2, "degree":I
    :goto_0
    move v5, v2

    if-ltz v5, :cond_8

    .line 230
    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficient(I)I

    move-result v5

    move v3, v5

    .line 231
    .local v3, "coefficient":I
    move v5, v3

    if-eqz v5, :cond_3

    .line 232
    move v5, v3

    if-gez v5, :cond_4

    .line 233
    move-object v5, v1

    const-string/jumbo v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 234
    move v5, v3

    neg-int v5, v5

    move v3, v5

    .line 240
    :cond_0
    :goto_1
    move v5, v2

    if-eqz v5, :cond_1

    move v5, v3

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    .line 241
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move v6, v3

    invoke-virtual {v5, v6}, Lcom/google/zxing/common/reedsolomon/GenericGF;->log(I)I

    move-result v5

    move v4, v5

    .line 242
    .local v4, "alphaPower":I
    move v5, v4

    if-nez v5, :cond_5

    .line 243
    move-object v5, v1

    const/16 v6, 0x31

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 251
    .end local v4    # "alphaPower":I
    :cond_2
    :goto_2
    move v5, v2

    if-eqz v5, :cond_3

    .line 252
    move v5, v2

    const/4 v6, 0x1

    if-ne v5, v6, :cond_7

    .line 253
    move-object v5, v1

    const/16 v6, 0x78

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 229
    :cond_3
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 236
    :cond_4
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 237
    move-object v5, v1

    const-string/jumbo v6, " + "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    goto :goto_1

    .line 244
    .restart local v4    # "alphaPower":I
    :cond_5
    move v5, v4

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    .line 245
    move-object v5, v1

    const/16 v6, 0x61

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    goto :goto_2

    .line 247
    :cond_6
    move-object v5, v1

    const-string/jumbo v6, "a^"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 248
    move-object v5, v1

    move v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    goto :goto_2

    .line 255
    .end local v4    # "alphaPower":I
    :cond_7
    move-object v5, v1

    const-string/jumbo v6, "x^"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 256
    move-object v5, v1

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    goto :goto_3

    .line 261
    .end local v3    # "coefficient":I
    :cond_8
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    return-object v0
.end method
