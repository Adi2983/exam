.class public final Lcom/google/zxing/oned/EAN8Reader;
.super Lcom/google/zxing/oned/UPCEANReader;
.source "EAN8Reader.java"


# instance fields
.field private final decodeMiddleCounters:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/EAN8Reader;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/zxing/oned/UPCEANReader;-><init>()V

    .line 33
    move-object v1, v0

    const/4 v2, 0x4

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/google/zxing/oned/EAN8Reader;->decodeMiddleCounters:[I

    .line 34
    return-void
.end method


# virtual methods
.method protected decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 40
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/oned/EAN8Reader;
    move-object/from16 v1, p1

    .local v1, "row":Lcom/google/zxing/common/BitArray;
    move-object/from16 v2, p2

    .local v2, "startRange":[I
    move-object/from16 v3, p3

    .local v3, "result":Ljava/lang/StringBuilder;
    move-object v14, v0

    iget-object v14, v14, Lcom/google/zxing/oned/EAN8Reader;->decodeMiddleCounters:[I

    move-object v4, v14

    .line 41
    .local v4, "counters":[I
    move-object v14, v4

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 42
    move-object v14, v4

    const/4 v15, 0x1

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 43
    move-object v14, v4

    const/4 v15, 0x2

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 44
    move-object v14, v4

    const/4 v15, 0x3

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 45
    move-object v14, v1

    invoke-virtual {v14}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v14

    move v5, v14

    .line 46
    .local v5, "end":I
    move-object v14, v2

    const/4 v15, 0x1

    aget v14, v14, v15

    move v6, v14

    .line 48
    .local v6, "rowOffset":I
    const/4 v14, 0x0

    move v7, v14

    .local v7, "x":I
    :goto_0
    move v14, v7

    const/4 v15, 0x4

    if-ge v14, v15, :cond_1

    move v14, v6

    move v15, v5

    if-ge v14, v15, :cond_1

    .line 49
    move-object v14, v1

    move-object v15, v4

    move/from16 v16, v6

    sget-object v17, Lcom/google/zxing/oned/EAN8Reader;->L_PATTERNS:[[I

    invoke-static/range {v14 .. v17}, Lcom/google/zxing/oned/EAN8Reader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v14

    move v8, v14

    .line 50
    .local v8, "bestMatch":I
    move-object v14, v3

    const/16 v15, 0x30

    move/from16 v16, v8

    add-int v15, v15, v16

    int-to-char v15, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 51
    move-object v14, v4

    move-object v9, v14

    .local v9, "arr$":[I
    move-object v14, v9

    array-length v14, v14

    move v10, v14

    .local v10, "len$":I
    const/4 v14, 0x0

    move v11, v14

    .local v11, "i$":I
    :goto_1
    move v14, v11

    move v15, v10

    if-ge v14, v15, :cond_0

    move-object v14, v9

    move v15, v11

    aget v14, v14, v15

    move v12, v14

    .line 52
    .local v12, "counter":I
    move v14, v6

    move v15, v12

    add-int/2addr v14, v15

    move v6, v14

    .line 51
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 48
    .end local v12    # "counter":I
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 56
    .end local v8    # "bestMatch":I
    .end local v9    # "arr$":[I
    .end local v10    # "len$":I
    .end local v11    # "i$":I
    :cond_1
    move-object v14, v1

    move v15, v6

    const/16 v16, 0x1

    sget-object v17, Lcom/google/zxing/oned/EAN8Reader;->MIDDLE_PATTERN:[I

    invoke-static/range {v14 .. v17}, Lcom/google/zxing/oned/EAN8Reader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I

    move-result-object v14

    move-object v7, v14

    .line 57
    .local v7, "middleRange":[I
    move-object v14, v7

    const/4 v15, 0x1

    aget v14, v14, v15

    move v6, v14

    .line 59
    const/4 v14, 0x0

    move v8, v14

    .local v8, "x":I
    :goto_2
    move v14, v8

    const/4 v15, 0x4

    if-ge v14, v15, :cond_3

    move v14, v6

    move v15, v5

    if-ge v14, v15, :cond_3

    .line 60
    move-object v14, v1

    move-object v15, v4

    move/from16 v16, v6

    sget-object v17, Lcom/google/zxing/oned/EAN8Reader;->L_PATTERNS:[[I

    invoke-static/range {v14 .. v17}, Lcom/google/zxing/oned/EAN8Reader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v14

    move v9, v14

    .line 61
    .local v9, "bestMatch":I
    move-object v14, v3

    const/16 v15, 0x30

    move/from16 v16, v9

    add-int v15, v15, v16

    int-to-char v15, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 62
    move-object v14, v4

    move-object v10, v14

    .local v10, "arr$":[I
    move-object v14, v10

    array-length v14, v14

    move v11, v14

    .local v11, "len$":I
    const/4 v14, 0x0

    move v12, v14

    .local v12, "i$":I
    :goto_3
    move v14, v12

    move v15, v11

    if-ge v14, v15, :cond_2

    move-object v14, v10

    move v15, v12

    aget v14, v14, v15

    move v13, v14

    .line 63
    .local v13, "counter":I
    move v14, v6

    move v15, v13

    add-int/2addr v14, v15

    move v6, v14

    .line 62
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 59
    .end local v13    # "counter":I
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 67
    .end local v9    # "bestMatch":I
    .end local v10    # "arr$":[I
    .end local v11    # "len$":I
    .end local v12    # "i$":I
    :cond_3
    move v14, v6

    move v0, v14

    .end local v0    # "this":Lcom/google/zxing/oned/EAN8Reader;
    return v0
.end method

.method getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/EAN8Reader;
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->EAN_8:Lcom/google/zxing/BarcodeFormat;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/oned/EAN8Reader;
    return-object v0
.end method
