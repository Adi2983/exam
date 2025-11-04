.class final Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
.super Ljava/lang/Object;
.source "ModulusPoly.java"


# instance fields
.field private final coefficients:[I

.field private final field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;


# direct methods
.method constructor <init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V
    .locals 11

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object v1, p1

    .local v1, "field":Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;
    move-object v2, p2

    .local v2, "coefficients":[I
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 29
    move-object v5, v2

    array-length v5, v5

    if-nez v5, :cond_0

    .line 30
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v5

    .line 32
    :cond_0
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    .line 33
    move-object v5, v2

    array-length v5, v5

    move v3, v5

    .line 34
    .local v3, "coefficientsLength":I
    move v5, v3

    const/4 v6, 0x1

    if-le v5, v6, :cond_3

    move-object v5, v2

    const/4 v6, 0x0

    aget v5, v5, v6

    if-nez v5, :cond_3

    .line 36
    const/4 v5, 0x1

    move v4, v5

    .line 37
    .local v4, "firstNonZero":I
    :goto_0
    move v5, v4

    move v6, v3

    if-ge v5, v6, :cond_1

    move-object v5, v2

    move v6, v4

    aget v5, v5, v6

    if-nez v5, :cond_1

    .line 38
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 40
    :cond_1
    move v5, v4

    move v6, v3

    if-ne v5, v6, :cond_2

    .line 41
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->getZero()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v6

    iget-object v6, v6, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    iput-object v6, v5, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    .line 50
    .line 53
    .end local v4    # "firstNonZero":I
    :goto_1
    return-void

    .line 43
    .restart local v4    # "firstNonZero":I
    :cond_2
    move-object v5, v0

    move v6, v3

    move v7, v4

    sub-int/2addr v6, v7

    new-array v6, v6, [I

    iput-object v6, v5, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    .line 44
    move-object v5, v2

    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    array-length v9, v9

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 51
    .end local v4    # "firstNonZero":I
    :cond_3
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    goto :goto_1
.end method


# virtual methods
.method add(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .locals 14

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object v1, p1

    .local v1, "other":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object v7, v0

    iget-object v7, v7, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object v8, v1

    iget-object v8, v8, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 106
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const-string/jumbo v9, "ModulusPolys do not have same ModulusGF field"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 108
    :cond_0
    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->isZero()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 109
    move-object v7, v1

    move-object v0, v7

    .line 131
    .end local v0    # "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    :goto_0
    return-object v0

    .line 111
    .restart local v0    # "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    :cond_1
    move-object v7, v1

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->isZero()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 112
    move-object v7, v0

    move-object v0, v7

    goto :goto_0

    .line 115
    :cond_2
    move-object v7, v0

    iget-object v7, v7, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    move-object v2, v7

    .line 116
    .local v2, "smallerCoefficients":[I
    move-object v7, v1

    iget-object v7, v7, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    move-object v3, v7

    .line 117
    .local v3, "largerCoefficients":[I
    move-object v7, v2

    array-length v7, v7

    move-object v8, v3

    array-length v8, v8

    if-le v7, v8, :cond_3

    .line 118
    move-object v7, v2

    move-object v4, v7

    .line 119
    .local v4, "temp":[I
    move-object v7, v3

    move-object v2, v7

    .line 120
    move-object v7, v4

    move-object v3, v7

    .line 122
    .end local v4    # "temp":[I
    :cond_3
    move-object v7, v3

    array-length v7, v7

    new-array v7, v7, [I

    move-object v4, v7

    .line 123
    .local v4, "sumDiff":[I
    move-object v7, v3

    array-length v7, v7

    move-object v8, v2

    array-length v8, v8

    sub-int/2addr v7, v8

    move v5, v7

    .line 125
    .local v5, "lengthDiff":I
    move-object v7, v3

    const/4 v8, 0x0

    move-object v9, v4

    const/4 v10, 0x0

    move v11, v5

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    move v7, v5

    move v6, v7

    .local v6, "i":I
    :goto_1
    move v7, v6

    move-object v8, v3

    array-length v8, v8

    if-ge v7, v8, :cond_4

    .line 128
    move-object v7, v4

    move v8, v6

    move-object v9, v0

    iget-object v9, v9, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object v10, v2

    move v11, v6

    move v12, v5

    sub-int/2addr v11, v12

    aget v10, v10, v11

    move-object v11, v3

    move v12, v6

    aget v11, v11, v12

    invoke-virtual {v9, v10, v11}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->add(II)I

    move-result v9

    aput v9, v7, v8

    .line 127
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 131
    :cond_4
    new-instance v7, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    iget-object v9, v9, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object v10, v4

    invoke-direct {v8, v9, v10}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    move-object v0, v7

    goto :goto_0
.end method

.method divide(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)[Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .locals 15

    .prologue
    .line 205
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object/from16 v1, p1

    .local v1, "other":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object v10, v0

    iget-object v10, v10, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object v11, v1

    iget-object v11, v11, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 206
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const-string/jumbo v12, "ModulusPolys do not have same ModulusGF field"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 208
    :cond_0
    move-object v10, v1

    invoke-virtual {v10}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->isZero()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 209
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const-string/jumbo v12, "Divide by 0"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 212
    :cond_1
    move-object v10, v0

    iget-object v10, v10, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v10}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->getZero()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v10

    move-object v2, v10

    .line 213
    .local v2, "quotient":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object v10, v0

    move-object v3, v10

    .line 215
    .local v3, "remainder":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object v10, v1

    move-object v11, v1

    invoke-virtual {v11}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getCoefficient(I)I

    move-result v10

    move v4, v10

    .line 216
    .local v4, "denominatorLeadingTerm":I
    move-object v10, v0

    iget-object v10, v10, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move v11, v4

    invoke-virtual {v10, v11}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->inverse(I)I

    move-result v10

    move v5, v10

    .line 218
    .local v5, "inverseDenominatorLeadingTerm":I
    :goto_0
    move-object v10, v3

    invoke-virtual {v10}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v10

    move-object v11, v1

    invoke-virtual {v11}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v11

    if-lt v10, v11, :cond_2

    move-object v10, v3

    invoke-virtual {v10}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->isZero()Z

    move-result v10

    if-nez v10, :cond_2

    .line 219
    move-object v10, v3

    invoke-virtual {v10}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v10

    move-object v11, v1

    invoke-virtual {v11}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v11

    sub-int/2addr v10, v11

    move v6, v10

    .line 220
    .local v6, "degreeDifference":I
    move-object v10, v0

    iget-object v10, v10, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object v11, v3

    move-object v12, v3

    invoke-virtual {v12}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v12

    invoke-virtual {v11, v12}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getCoefficient(I)I

    move-result v11

    move v12, v5

    invoke-virtual {v10, v11, v12}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->multiply(II)I

    move-result v10

    move v7, v10

    .line 221
    .local v7, "scale":I
    move-object v10, v1

    move v11, v6

    move v12, v7

    invoke-virtual {v10, v11, v12}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->multiplyByMonomial(II)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v10

    move-object v8, v10

    .line 222
    .local v8, "term":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object v10, v0

    iget-object v10, v10, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move v11, v6

    move v12, v7

    invoke-virtual {v10, v11, v12}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->buildMonomial(II)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v10

    move-object v9, v10

    .line 223
    .local v9, "iterationQuotient":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object v10, v2

    move-object v11, v9

    invoke-virtual {v10, v11}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->add(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v10

    move-object v2, v10

    .line 224
    move-object v10, v3

    move-object v11, v8

    invoke-virtual {v10, v11}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->subtract(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v10

    move-object v3, v10

    .line 225
    goto :goto_0

    .line 227
    .end local v6    # "degreeDifference":I
    .end local v7    # "scale":I
    .end local v8    # "term":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .end local v9    # "iterationQuotient":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    :cond_2
    const/4 v10, 0x2

    new-array v10, v10, [Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

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

    .end local v0    # "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    return-object v0
.end method

.method evaluateAt(I)I
    .locals 12

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move v1, p1

    .local v1, "a":I
    move v8, v1

    if-nez v8, :cond_0

    .line 86
    move-object v8, v0

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getCoefficient(I)I

    move-result v8

    move v0, v8

    .line 101
    .end local v0    # "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    :goto_0
    return v0

    .line 88
    .restart local v0    # "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    array-length v8, v8

    move v2, v8

    .line 89
    .local v2, "size":I
    move v8, v1

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 91
    const/4 v8, 0x0

    move v3, v8

    .line 92
    .local v3, "result":I
    move-object v8, v0

    iget-object v8, v8, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

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

    .line 93
    .local v7, "coefficient":I
    move-object v8, v0

    iget-object v8, v8, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move v9, v3

    move v10, v7

    invoke-virtual {v8, v9, v10}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->add(II)I

    move-result v8

    move v3, v8

    .line 92
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 95
    .end local v7    # "coefficient":I
    :cond_1
    move v8, v3

    move v0, v8

    goto :goto_0

    .line 97
    .end local v3    # "result":I
    .end local v4    # "arr$":[I
    .end local v5    # "len$":I
    .end local v6    # "i$":I
    :cond_2
    move-object v8, v0

    iget-object v8, v8, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    move v3, v8

    .line 98
    .restart local v3    # "result":I
    const/4 v8, 0x1

    move v4, v8

    .local v4, "i":I
    :goto_2
    move v8, v4

    move v9, v2

    if-ge v8, v9, :cond_3

    .line 99
    move-object v8, v0

    iget-object v8, v8, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object v9, v0

    iget-object v9, v9, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move v10, v1

    move v11, v3

    invoke-virtual {v9, v10, v11}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->multiply(II)I

    move-result v9

    move-object v10, v0

    iget-object v10, v10, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    move v11, v4

    aget v10, v10, v11

    invoke-virtual {v8, v9, v10}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->add(II)I

    move-result v8

    move v3, v8

    .line 98
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 101
    :cond_3
    move v8, v3

    move v0, v8

    goto :goto_0
.end method

.method getCoefficient(I)I
    .locals 5

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move v1, p1

    .local v1, "degree":I
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    array-length v3, v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v4, v1

    sub-int/2addr v3, v4

    aget v2, v2, v3

    move v0, v2

    .end local v0    # "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    return v0
.end method

.method getCoefficients()[I
    .locals 2

    .prologue
    .line 56
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    return-object v0
.end method

.method getDegree()I
    .locals 3

    .prologue
    .line 63
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    array-length v1, v1

    const/4 v2, 0x1

    add-int/lit8 v1, v1, -0x1

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    return v0
.end method

.method isZero()Z
    .locals 3

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    return v0

    .restart local v0    # "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method multiply(I)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .locals 11

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move v1, p1

    .local v1, "scalar":I
    move v5, v1

    if-nez v5, :cond_0

    .line 176
    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->getZero()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v5

    move-object v0, v5

    .line 186
    .end local v0    # "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    :goto_0
    return-object v0

    .line 178
    .restart local v0    # "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    :cond_0
    move v5, v1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 179
    move-object v5, v0

    move-object v0, v5

    goto :goto_0

    .line 181
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    array-length v5, v5

    move v2, v5

    .line 182
    .local v2, "size":I
    move v5, v2

    new-array v5, v5, [I

    move-object v3, v5

    .line 183
    .local v3, "product":[I
    const/4 v5, 0x0

    move v4, v5

    .local v4, "i":I
    :goto_1
    move v5, v4

    move v6, v2

    if-ge v5, v6, :cond_2

    .line 184
    move-object v5, v3

    move v6, v4

    move-object v7, v0

    iget-object v7, v7, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object v8, v0

    iget-object v8, v8, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    move v9, v4

    aget v8, v8, v9

    move v9, v1

    invoke-virtual {v7, v8, v9}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->multiply(II)I

    move-result v7

    aput v7, v5, v6

    .line 183
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 186
    :cond_2
    new-instance v5, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    iget-object v7, v7, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    move-object v0, v5

    goto :goto_0
.end method

.method multiply(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .locals 19

    .prologue
    .line 145
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object/from16 v1, p1

    .local v1, "other":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object v10, v0

    iget-object v10, v10, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object v11, v1

    iget-object v11, v11, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 146
    new-instance v10, Ljava/lang/IllegalArgumentException;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    const-string/jumbo v12, "ModulusPolys do not have same ModulusGF field"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 148
    :cond_0
    move-object v10, v0

    invoke-virtual {v10}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->isZero()Z

    move-result v10

    if-nez v10, :cond_1

    move-object v10, v1

    invoke-virtual {v10}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->isZero()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 149
    :cond_1
    move-object v10, v0

    iget-object v10, v10, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v10}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->getZero()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v10

    move-object v0, v10

    .line 162
    .end local v0    # "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    :goto_0
    return-object v0

    .line 151
    .restart local v0    # "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    :cond_2
    move-object v10, v0

    iget-object v10, v10, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    move-object v2, v10

    .line 152
    .local v2, "aCoefficients":[I
    move-object v10, v2

    array-length v10, v10

    move v3, v10

    .line 153
    .local v3, "aLength":I
    move-object v10, v1

    iget-object v10, v10, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    move-object v4, v10

    .line 154
    .local v4, "bCoefficients":[I
    move-object v10, v4

    array-length v10, v10

    move v5, v10

    .line 155
    .local v5, "bLength":I
    move v10, v3

    move v11, v5

    add-int/2addr v10, v11

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    new-array v10, v10, [I

    move-object v6, v10

    .line 156
    .local v6, "product":[I
    const/4 v10, 0x0

    move v7, v10

    .local v7, "i":I
    :goto_1
    move v10, v7

    move v11, v3

    if-ge v10, v11, :cond_4

    .line 157
    move-object v10, v2

    move v11, v7

    aget v10, v10, v11

    move v8, v10

    .line 158
    .local v8, "aCoeff":I
    const/4 v10, 0x0

    move v9, v10

    .local v9, "j":I
    :goto_2
    move v10, v9

    move v11, v5

    if-ge v10, v11, :cond_3

    .line 159
    move-object v10, v6

    move v11, v7

    move v12, v9

    add-int/2addr v11, v12

    move-object v12, v0

    iget-object v12, v12, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object v13, v6

    move v14, v7

    move v15, v9

    add-int/2addr v14, v15

    aget v13, v13, v14

    move-object v14, v0

    iget-object v14, v14, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move v15, v8

    move-object/from16 v16, v4

    move/from16 v17, v9

    aget v16, v16, v17

    invoke-virtual/range {v14 .. v16}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->multiply(II)I

    move-result v14

    invoke-virtual {v12, v13, v14}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->add(II)I

    move-result v12

    aput v12, v10, v11

    .line 158
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 156
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 162
    .end local v8    # "aCoeff":I
    .end local v9    # "j":I
    :cond_4
    new-instance v10, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    move-object v12, v0

    iget-object v12, v12, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object v13, v6

    invoke-direct {v11, v12, v13}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    move-object v0, v10

    goto :goto_0
.end method

.method multiplyByMonomial(II)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .locals 12

    .prologue
    .line 190
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move v1, p1

    .local v1, "degree":I
    move v2, p2

    .local v2, "coefficient":I
    move v6, v1

    if-gez v6, :cond_0

    .line 191
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 193
    :cond_0
    move v6, v2

    if-nez v6, :cond_1

    .line 194
    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->getZero()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v6

    move-object v0, v6

    .line 201
    .end local v0    # "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    :goto_0
    return-object v0

    .line 196
    .restart local v0    # "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    array-length v6, v6

    move v3, v6

    .line 197
    .local v3, "size":I
    move v6, v3

    move v7, v1

    add-int/2addr v6, v7

    new-array v6, v6, [I

    move-object v4, v6

    .line 198
    .local v4, "product":[I
    const/4 v6, 0x0

    move v5, v6

    .local v5, "i":I
    :goto_1
    move v6, v5

    move v7, v3

    if-ge v6, v7, :cond_2

    .line 199
    move-object v6, v4

    move v7, v5

    move-object v8, v0

    iget-object v8, v8, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object v9, v0

    iget-object v9, v9, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    move v10, v5

    aget v9, v9, v10

    move v10, v2

    invoke-virtual {v8, v9, v10}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->multiply(II)I

    move-result v8

    aput v8, v6, v7

    .line 198
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 201
    :cond_2
    new-instance v6, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    iget-object v8, v8, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    move-object v0, v6

    goto :goto_0
.end method

.method negative()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .locals 11

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object v4, v0

    iget-object v4, v4, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    array-length v4, v4

    move v1, v4

    .line 167
    .local v1, "size":I
    move v4, v1

    new-array v4, v4, [I

    move-object v2, v4

    .line 168
    .local v2, "negativeCoefficients":[I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    move v5, v1

    if-ge v4, v5, :cond_0

    .line 169
    move-object v4, v2

    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->coefficients:[I

    move v9, v3

    aget v8, v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->subtract(II)I

    move-result v6

    aput v6, v4, v5

    .line 168
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 171
    :cond_0
    new-instance v4, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    move-object v0, v4

    .end local v0    # "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    return-object v0
.end method

.method subtract(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    .locals 6

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object v1, p1

    .local v1, "other":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    move-object v3, v1

    iget-object v3, v3, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->field:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 136
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "ModulusPolys do not have same ModulusGF field"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 138
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->isZero()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 139
    move-object v2, v0

    move-object v0, v2

    .line 141
    .end local v0    # "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    :goto_0
    return-object v0

    .restart local v0    # "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->negative()Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->add(Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;)Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 232
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/16 v6, 0x8

    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v7

    mul-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v4

    .line 233
    .local v1, "result":Ljava/lang/StringBuilder;
    move-object v4, v0

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getDegree()I

    move-result v4

    move v2, v4

    .local v2, "degree":I
    :goto_0
    move v4, v2

    if-ltz v4, :cond_6

    .line 234
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;->getCoefficient(I)I

    move-result v4

    move v3, v4

    .line 235
    .local v3, "coefficient":I
    move v4, v3

    if-eqz v4, :cond_3

    .line 236
    move v4, v3

    if-gez v4, :cond_4

    .line 237
    move-object v4, v1

    const-string/jumbo v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 238
    move v4, v3

    neg-int v4, v4

    move v3, v4

    .line 244
    :cond_0
    :goto_1
    move v4, v2

    if-eqz v4, :cond_1

    move v4, v3

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    .line 245
    :cond_1
    move-object v4, v1

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 247
    :cond_2
    move v4, v2

    if-eqz v4, :cond_3

    .line 248
    move v4, v2

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 249
    move-object v4, v1

    const/16 v5, 0x78

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 233
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 240
    :cond_4
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 241
    move-object v4, v1

    const-string/jumbo v5, " + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    goto :goto_1

    .line 251
    :cond_5
    move-object v4, v1

    const-string/jumbo v5, "x^"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 252
    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    goto :goto_2

    .line 257
    .end local v3    # "coefficient":I
    :cond_6
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/google/zxing/pdf417/decoder/ec/ModulusPoly;
    return-object v0
.end method
