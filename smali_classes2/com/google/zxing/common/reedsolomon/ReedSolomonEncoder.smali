.class public final Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;
.super Ljava/lang/Object;
.source "ReedSolomonEncoder.java"


# instance fields
.field private final cachedGenerators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/common/reedsolomon/GenericGFPoly;",
            ">;"
        }
    .end annotation
.end field

.field private final field:Lcom/google/zxing/common/reedsolomon/GenericGF;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/reedsolomon/GenericGF;)V
    .locals 11

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;
    move-object v1, p1

    .local v1, "field":Lcom/google/zxing/common/reedsolomon/GenericGF;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v2, Lcom/google/zxing/common/reedsolomon/GenericGF;->QR_CODE_FIELD_256:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 35
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    const-string/jumbo v4, "Only QR Code is supported at this time"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 37
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    .line 38
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/List;

    .line 39
    move-object v2, v0

    iget-object v2, v2, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/List;

    new-instance v3, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v1

    const/4 v6, 0x1

    new-array v6, v6, [I

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    const/4 v9, 0x1

    aput v9, v7, v8

    invoke-direct {v4, v5, v6}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 40
    return-void
.end method

.method private buildGenerator(I)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .locals 16

    .prologue
    .line 43
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;
    move/from16 v1, p1

    .local v1, "degree":I
    move v5, v1

    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 44
    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/List;

    move-object v6, v0

    iget-object v6, v6, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-object v2, v5

    .line 45
    .local v2, "lastGenerator":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v3, v5

    .local v3, "d":I
    :goto_0
    move v5, v3

    move v6, v1

    if-gt v5, v6, :cond_0

    .line 46
    move-object v5, v2

    new-instance v6, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    move-object v8, v0

    iget-object v8, v8, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    const/4 v9, 0x2

    new-array v9, v9, [I

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x0

    const/4 v12, 0x1

    aput v12, v10, v11

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x1

    move-object v12, v0

    iget-object v12, v12, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move v13, v3

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Lcom/google/zxing/common/reedsolomon/GenericGF;->exp(I)I

    move-result v12

    aput v12, v10, v11

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    invoke-virtual {v5, v6}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->multiply(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v5

    move-object v4, v5

    .line 47
    .local v4, "nextGenerator":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/List;

    move-object v6, v4

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 48
    move-object v5, v4

    move-object v2, v5

    .line 45
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 51
    .end local v2    # "lastGenerator":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    .end local v3    # "d":I
    .end local v4    # "nextGenerator":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->cachedGenerators:Ljava/util/List;

    move v6, v1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-object v0, v5

    .end local v0    # "this":Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;
    return-object v0
.end method


# virtual methods
.method public encode([II)V
    .locals 17

    .prologue
    .line 55
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;
    move-object/from16 v1, p1

    .local v1, "toEncode":[I
    move/from16 v2, p2

    .local v2, "ecBytes":I
    move v11, v2

    if-nez v11, :cond_0

    .line 56
    new-instance v11, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const-string/jumbo v13, "No error correction bytes"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 58
    :cond_0
    move-object v11, v1

    array-length v11, v11

    move v12, v2

    sub-int/2addr v11, v12

    move v3, v11

    .line 59
    .local v3, "dataBytes":I
    move v11, v3

    if-gtz v11, :cond_1

    .line 60
    new-instance v11, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const-string/jumbo v13, "No data bytes provided"

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 62
    :cond_1
    move-object v11, v0

    move v12, v2

    invoke-direct {v11, v12}, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->buildGenerator(I)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v11

    move-object v4, v11

    .line 63
    .local v4, "generator":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move v11, v3

    new-array v11, v11, [I

    move-object v5, v11

    .line 64
    .local v5, "infoCoefficients":[I
    move-object v11, v1

    const/4 v12, 0x0

    move-object v13, v5

    const/4 v14, 0x0

    move v15, v3

    invoke-static {v11, v12, v13, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    new-instance v11, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    move-object v13, v0

    iget-object v13, v13, Lcom/google/zxing/common/reedsolomon/ReedSolomonEncoder;->field:Lcom/google/zxing/common/reedsolomon/GenericGF;

    move-object v14, v5

    invoke-direct {v12, v13, v14}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;-><init>(Lcom/google/zxing/common/reedsolomon/GenericGF;[I)V

    move-object v6, v11

    .line 66
    .local v6, "info":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object v11, v6

    move v12, v2

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->multiplyByMonomial(II)Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v11

    move-object v6, v11

    .line 67
    move-object v11, v6

    move-object v12, v4

    invoke-virtual {v11, v12}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->divide(Lcom/google/zxing/common/reedsolomon/GenericGFPoly;)[Lcom/google/zxing/common/reedsolomon/GenericGFPoly;

    move-result-object v11

    const/4 v12, 0x1

    aget-object v11, v11, v12

    move-object v7, v11

    .line 68
    .local v7, "remainder":Lcom/google/zxing/common/reedsolomon/GenericGFPoly;
    move-object v11, v7

    invoke-virtual {v11}, Lcom/google/zxing/common/reedsolomon/GenericGFPoly;->getCoefficients()[I

    move-result-object v11

    move-object v8, v11

    .line 69
    .local v8, "coefficients":[I
    move v11, v2

    move-object v12, v8

    array-length v12, v12

    sub-int/2addr v11, v12

    move v9, v11

    .line 70
    .local v9, "numZeroCoefficients":I
    const/4 v11, 0x0

    move v10, v11

    .local v10, "i":I
    :goto_0
    move v11, v10

    move v12, v9

    if-ge v11, v12, :cond_2

    .line 71
    move-object v11, v1

    move v12, v3

    move v13, v10

    add-int/2addr v12, v13

    const/4 v13, 0x0

    aput v13, v11, v12

    .line 70
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 73
    :cond_2
    move-object v11, v8

    const/4 v12, 0x0

    move-object v13, v1

    move v14, v3

    move v15, v9

    add-int/2addr v14, v15

    move-object v15, v8

    array-length v15, v15

    invoke-static {v11, v12, v13, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    return-void
.end method
