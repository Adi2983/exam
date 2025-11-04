.class public final Lcom/google/zxing/oned/EAN13Reader;
.super Lcom/google/zxing/oned/UPCEANReader;
.source "EAN13Reader.java"


# static fields
.field static final FIRST_DIGIT_ENCODINGS:[I


# instance fields
.field private final decodeMiddleCounters:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/EAN13Reader;->FIRST_DIGIT_ENCODINGS:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0xb
        0xd
        0xe
        0x13
        0x19
        0x1c
        0x15
        0x16
        0x1a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 67
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/EAN13Reader;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/zxing/oned/UPCEANReader;-><init>()V

    .line 68
    move-object v1, v0

    const/4 v2, 0x4

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/google/zxing/oned/EAN13Reader;->decodeMiddleCounters:[I

    .line 69
    return-void
.end method

.method private static determineFirstDigit(Ljava/lang/StringBuilder;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "resultString":Ljava/lang/StringBuilder;
    move v1, p1

    .local v1, "lgPatternFound":I
    const/4 v3, 0x0

    move v2, v3

    .local v2, "d":I
    :goto_0
    move v3, v2

    const/16 v4, 0xa

    if-ge v3, v4, :cond_1

    .line 130
    move v3, v1

    sget-object v4, Lcom/google/zxing/oned/EAN13Reader;->FIRST_DIGIT_ENCODINGS:[I

    move v5, v2

    aget v4, v4, v5

    if-ne v3, v4, :cond_0

    .line 131
    move-object v3, v0

    const/4 v4, 0x0

    const/16 v5, 0x30

    move v6, v2

    add-int/2addr v5, v6

    int-to-char v5, v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 132
    return-void

    .line 129
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v3

    throw v3
.end method


# virtual methods
.method protected decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 75
    move-object/from16 v2, p0

    .local v2, "this":Lcom/google/zxing/oned/EAN13Reader;
    move-object/from16 v3, p1

    .local v3, "row":Lcom/google/zxing/common/BitArray;
    move-object/from16 v4, p2

    .local v4, "startRange":[I
    move-object/from16 v5, p3

    .local v5, "resultString":Ljava/lang/StringBuilder;
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/google/zxing/oned/EAN13Reader;->decodeMiddleCounters:[I

    move-object/from16 v17, v0

    move-object/from16 v6, v17

    .line 76
    .local v6, "counters":[I
    move-object/from16 v17, v6

    const/16 v18, 0x0

    const/16 v19, 0x0

    aput v19, v17, v18

    .line 77
    move-object/from16 v17, v6

    const/16 v18, 0x1

    const/16 v19, 0x0

    aput v19, v17, v18

    .line 78
    move-object/from16 v17, v6

    const/16 v18, 0x2

    const/16 v19, 0x0

    aput v19, v17, v18

    .line 79
    move-object/from16 v17, v6

    const/16 v18, 0x3

    const/16 v19, 0x0

    aput v19, v17, v18

    .line 80
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v17

    move/from16 v7, v17

    .line 81
    .local v7, "end":I
    move-object/from16 v17, v4

    const/16 v18, 0x1

    aget v17, v17, v18

    move/from16 v8, v17

    .line 83
    .local v8, "rowOffset":I
    const/16 v17, 0x0

    move/from16 v9, v17

    .line 85
    .local v9, "lgPatternFound":I
    const/16 v17, 0x0

    move/from16 v10, v17

    .local v10, "x":I
    :goto_0
    move/from16 v17, v10

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    move/from16 v17, v8

    move/from16 v18, v7

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 86
    move-object/from16 v17, v3

    move-object/from16 v18, v6

    move/from16 v19, v8

    sget-object v20, Lcom/google/zxing/oned/EAN13Reader;->L_AND_G_PATTERNS:[[I

    invoke-static/range {v17 .. v20}, Lcom/google/zxing/oned/EAN13Reader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v17

    move/from16 v11, v17

    .line 87
    .local v11, "bestMatch":I
    move-object/from16 v17, v5

    const/16 v18, 0x30

    move/from16 v19, v11

    const/16 v20, 0xa

    rem-int/lit8 v19, v19, 0xa

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 88
    move-object/from16 v17, v6

    move-object/from16 v12, v17

    .local v12, "arr$":[I
    move-object/from16 v17, v12

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v13, v17

    .local v13, "len$":I
    const/16 v17, 0x0

    move/from16 v14, v17

    .local v14, "i$":I
    :goto_1
    move/from16 v17, v14

    move/from16 v18, v13

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    move-object/from16 v17, v12

    move/from16 v18, v14

    aget v17, v17, v18

    move/from16 v15, v17

    .line 89
    .local v15, "counter":I
    move/from16 v17, v8

    move/from16 v18, v15

    add-int v17, v17, v18

    move/from16 v8, v17

    .line 88
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 91
    .end local v15    # "counter":I
    :cond_0
    move/from16 v17, v11

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_1

    .line 92
    move/from16 v17, v9

    const/16 v18, 0x1

    const/16 v19, 0x5

    move/from16 v20, v10

    rsub-int/lit8 v19, v20, 0x5

    shl-int v18, v18, v19

    or-int v17, v17, v18

    move/from16 v9, v17

    .line 85
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 96
    .end local v11    # "bestMatch":I
    .end local v12    # "arr$":[I
    .end local v13    # "len$":I
    .end local v14    # "i$":I
    :cond_2
    move-object/from16 v17, v5

    move/from16 v18, v9

    invoke-static/range {v17 .. v18}, Lcom/google/zxing/oned/EAN13Reader;->determineFirstDigit(Ljava/lang/StringBuilder;I)V

    .line 98
    move-object/from16 v17, v3

    move/from16 v18, v8

    const/16 v19, 0x1

    sget-object v20, Lcom/google/zxing/oned/EAN13Reader;->MIDDLE_PATTERN:[I

    invoke-static/range {v17 .. v20}, Lcom/google/zxing/oned/EAN13Reader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I

    move-result-object v17

    move-object/from16 v10, v17

    .line 99
    .local v10, "middleRange":[I
    move-object/from16 v17, v10

    const/16 v18, 0x1

    aget v17, v17, v18

    move/from16 v8, v17

    .line 101
    const/16 v17, 0x0

    move/from16 v11, v17

    .local v11, "x":I
    :goto_2
    move/from16 v17, v11

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    move/from16 v17, v8

    move/from16 v18, v7

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    .line 102
    move-object/from16 v17, v3

    move-object/from16 v18, v6

    move/from16 v19, v8

    sget-object v20, Lcom/google/zxing/oned/EAN13Reader;->L_PATTERNS:[[I

    invoke-static/range {v17 .. v20}, Lcom/google/zxing/oned/EAN13Reader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v17

    move/from16 v12, v17

    .line 103
    .local v12, "bestMatch":I
    move-object/from16 v17, v5

    const/16 v18, 0x30

    move/from16 v19, v12

    add-int v18, v18, v19

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 104
    move-object/from16 v17, v6

    move-object/from16 v13, v17

    .local v13, "arr$":[I
    move-object/from16 v17, v13

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v14, v17

    .local v14, "len$":I
    const/16 v17, 0x0

    move/from16 v15, v17

    .local v15, "i$":I
    :goto_3
    move/from16 v17, v15

    move/from16 v18, v14

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_3

    move-object/from16 v17, v13

    move/from16 v18, v15

    aget v17, v17, v18

    move/from16 v16, v17

    .line 105
    .local v16, "counter":I
    move/from16 v17, v8

    move/from16 v18, v16

    add-int v17, v17, v18

    move/from16 v8, v17

    .line 104
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 101
    .end local v16    # "counter":I
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 109
    .end local v12    # "bestMatch":I
    .end local v13    # "arr$":[I
    .end local v14    # "len$":I
    .end local v15    # "i$":I
    :cond_4
    move/from16 v17, v8

    move/from16 v2, v17

    .end local v2    # "this":Lcom/google/zxing/oned/EAN13Reader;
    return v2
.end method

.method getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
    .locals 2

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/EAN13Reader;
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/oned/EAN13Reader;
    return-object v0
.end method
