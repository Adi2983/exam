.class public final Lcom/google/zxing/oned/Code39Writer;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "Code39Writer.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/Code39Writer;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method

.method private static toIntArray(I[I)V
    .locals 7

    .prologue
    .line 80
    move v0, p0

    .local v0, "a":I
    move-object v1, p1

    .local v1, "toReturn":[I
    const/4 v4, 0x0

    move v2, v4

    .local v2, "i":I
    :goto_0
    move v4, v2

    const/16 v5, 0x9

    if-ge v4, v5, :cond_1

    .line 81
    move v4, v0

    const/4 v5, 0x1

    move v6, v2

    shl-int/2addr v5, v6

    and-int/2addr v4, v5

    move v3, v4

    .line 82
    .local v3, "temp":I
    move-object v4, v1

    move v5, v2

    move v6, v3

    if-nez v6, :cond_0

    const/4 v6, 0x1

    :goto_1
    aput v6, v4, v5

    .line 80
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 82
    :cond_0
    const/4 v6, 0x2

    goto :goto_1

    .line 84
    .end local v3    # "temp":I
    :cond_1
    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/zxing/BarcodeFormat;",
            "II",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/EncodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/BitMatrix;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/WriterException;
        }
    .end annotation

    .prologue
    .line 39
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/Code39Writer;
    move-object v1, p1

    .local v1, "contents":Ljava/lang/String;
    move-object v2, p2

    .local v2, "format":Lcom/google/zxing/BarcodeFormat;
    move/from16 v3, p3

    .local v3, "width":I
    move/from16 v4, p4

    .local v4, "height":I
    move-object/from16 v5, p5

    .local v5, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/EncodeHintType;*>;"
    move-object v6, v2

    sget-object v7, Lcom/google/zxing/BarcodeFormat;->CODE_39:Lcom/google/zxing/BarcodeFormat;

    if-eq v6, v7, :cond_0

    .line 40
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Can only encode CODE_39, but got "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 42
    :cond_0
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    move v10, v4

    move-object v11, v5

    invoke-super/range {v6 .. v11}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;IILjava/util/Map;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Lcom/google/zxing/oned/Code39Writer;
    return-object v0
.end method

.method public encode(Ljava/lang/String;)[Z
    .locals 17

    .prologue
    .line 47
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/oned/Code39Writer;
    move-object/from16 v1, p1

    .local v1, "contents":Ljava/lang/String;
    move-object v11, v1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    move v2, v11

    .line 48
    .local v2, "length":I
    move v11, v2

    const/16 v12, 0x50

    if-le v11, v12, :cond_0

    .line 49
    new-instance v11, Ljava/lang/IllegalArgumentException;

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v16, v13

    move-object/from16 v13, v16

    move-object/from16 v14, v16

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Requested contents should be less than 80 digits long, but got "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move v14, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 53
    :cond_0
    const/16 v11, 0x9

    new-array v11, v11, [I

    move-object v3, v11

    .line 54
    .local v3, "widths":[I
    const/16 v11, 0x19

    move v12, v2

    add-int/2addr v11, v12

    move v4, v11

    .line 55
    .local v4, "codeWidth":I
    const/4 v11, 0x0

    move v5, v11

    .local v5, "i":I
    :goto_0
    move v11, v5

    move v12, v2

    if-ge v11, v12, :cond_2

    .line 56
    const-string/jumbo v11, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"

    move-object v12, v1

    move v13, v5

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    move v6, v11

    .line 57
    .local v6, "indexInString":I
    sget-object v11, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    move v12, v6

    aget v11, v11, v12

    move-object v12, v3

    invoke-static {v11, v12}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    .line 58
    move-object v11, v3

    move-object v7, v11

    .local v7, "arr$":[I
    move-object v11, v7

    array-length v11, v11

    move v8, v11

    .local v8, "len$":I
    const/4 v11, 0x0

    move v9, v11

    .local v9, "i$":I
    :goto_1
    move v11, v9

    move v12, v8

    if-ge v11, v12, :cond_1

    move-object v11, v7

    move v12, v9

    aget v11, v11, v12

    move v10, v11

    .line 59
    .local v10, "width":I
    move v11, v4

    move v12, v10

    add-int/2addr v11, v12

    move v4, v11

    .line 58
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 55
    .end local v10    # "width":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 62
    .end local v6    # "indexInString":I
    .end local v7    # "arr$":[I
    .end local v8    # "len$":I
    .end local v9    # "i$":I
    :cond_2
    move v11, v4

    new-array v11, v11, [Z

    move-object v5, v11

    .line 63
    .local v5, "result":[Z
    sget-object v11, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    const/16 v12, 0x27

    aget v11, v11, v12

    move-object v12, v3

    invoke-static {v11, v12}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    .line 64
    move-object v11, v5

    const/4 v12, 0x0

    move-object v13, v3

    const/4 v14, 0x1

    invoke-static {v11, v12, v13, v14}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    move-result v11

    move v6, v11

    .line 65
    .local v6, "pos":I
    const/4 v11, 0x1

    new-array v11, v11, [I

    move-object/from16 v16, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v16

    const/4 v13, 0x0

    const/4 v14, 0x1

    aput v14, v12, v13

    move-object v7, v11

    .line 66
    .local v7, "narrowWhite":[I
    move v11, v6

    move-object v12, v5

    move v13, v6

    move-object v14, v7

    const/4 v15, 0x0

    invoke-static {v12, v13, v14, v15}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    move-result v12

    add-int/2addr v11, v12

    move v6, v11

    .line 68
    move v11, v2

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    move v8, v11

    .local v8, "i":I
    :goto_2
    move v11, v8

    if-ltz v11, :cond_3

    .line 69
    const-string/jumbo v11, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-. *$/+%"

    move-object v12, v1

    move v13, v8

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    move v9, v11

    .line 70
    .local v9, "indexInString":I
    sget-object v11, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    move v12, v9

    aget v11, v11, v12

    move-object v12, v3

    invoke-static {v11, v12}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    .line 71
    move v11, v6

    move-object v12, v5

    move v13, v6

    move-object v14, v3

    const/4 v15, 0x1

    invoke-static {v12, v13, v14, v15}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    move-result v12

    add-int/2addr v11, v12

    move v6, v11

    .line 72
    move v11, v6

    move-object v12, v5

    move v13, v6

    move-object v14, v7

    const/4 v15, 0x0

    invoke-static {v12, v13, v14, v15}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    move-result v12

    add-int/2addr v11, v12

    move v6, v11

    .line 68
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 74
    .end local v9    # "indexInString":I
    :cond_3
    sget-object v11, Lcom/google/zxing/oned/Code39Reader;->CHARACTER_ENCODINGS:[I

    const/16 v12, 0x27

    aget v11, v11, v12

    move-object v12, v3

    invoke-static {v11, v12}, Lcom/google/zxing/oned/Code39Writer;->toIntArray(I[I)V

    .line 75
    move v11, v6

    move-object v12, v5

    move v13, v6

    move-object v14, v3

    const/4 v15, 0x1

    invoke-static {v12, v13, v14, v15}, Lcom/google/zxing/oned/Code39Writer;->appendPattern([ZI[IZ)I

    move-result v12

    add-int/2addr v11, v12

    move v6, v11

    .line 76
    move-object v11, v5

    move-object v0, v11

    .end local v0    # "this":Lcom/google/zxing/oned/Code39Writer;
    return-object v0
.end method
