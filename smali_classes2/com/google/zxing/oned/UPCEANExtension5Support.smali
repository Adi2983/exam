.class final Lcom/google/zxing/oned/UPCEANExtension5Support;
.super Ljava/lang/Object;
.source "UPCEANExtension5Support.java"


# static fields
.field private static final CHECK_DIGIT_ENCODINGS:[I


# instance fields
.field private final decodeMiddleCounters:[I

.field private final decodeRowStringBuffer:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/UPCEANExtension5Support;->CHECK_DIGIT_ENCODINGS:[I

    return-void

    :array_0
    .array-data 4
        0x18
        0x14
        0x12
        0x11
        0xc
        0x6
        0x3
        0xa
        0x9
        0x5
    .end array-data
.end method

.method constructor <init>()V
    .locals 5

    .prologue
    .line 32
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/UPCEANExtension5Support;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    move-object v1, v0

    const/4 v2, 0x4

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/google/zxing/oned/UPCEANExtension5Support;->decodeMiddleCounters:[I

    .line 39
    move-object v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, v1, Lcom/google/zxing/oned/UPCEANExtension5Support;->decodeRowStringBuffer:Ljava/lang/StringBuilder;

    return-void
.end method

.method private static determineCheckDigit(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 119
    move v0, p0

    .local v0, "lgPatternFound":I
    const/4 v2, 0x0

    move v1, v2

    .local v1, "d":I
    :goto_0
    move v2, v1

    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    .line 120
    move v2, v0

    sget-object v3, Lcom/google/zxing/oned/UPCEANExtension5Support;->CHECK_DIGIT_ENCODINGS:[I

    move v4, v1

    aget v3, v3, v4

    if-ne v2, v3, :cond_0

    .line 121
    move v2, v1

    move v0, v2

    .end local v0    # "lgPatternFound":I
    return v0

    .line 119
    .restart local v0    # "lgPatternFound":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2
.end method

.method private static extensionChecksum(Ljava/lang/CharSequence;)I
    .locals 7

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "s":Ljava/lang/CharSequence;
    move-object v4, v0

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move v1, v4

    .line 105
    .local v1, "length":I
    const/4 v4, 0x0

    move v2, v4

    .line 106
    .local v2, "sum":I
    move v4, v1

    const/4 v5, 0x2

    add-int/lit8 v4, v4, -0x2

    move v3, v4

    .local v3, "i":I
    :goto_0
    move v4, v3

    if-ltz v4, :cond_0

    .line 107
    move v4, v2

    move-object v5, v0

    move v6, v3

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    add-int/lit8 v5, v5, -0x30

    add-int/2addr v4, v5

    move v2, v4

    .line 106
    add-int/lit8 v3, v3, -0x2

    goto :goto_0

    .line 109
    :cond_0
    move v4, v2

    const/4 v5, 0x3

    mul-int/lit8 v4, v4, 0x3

    move v2, v4

    .line 110
    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v3, v4

    :goto_1
    move v4, v3

    if-ltz v4, :cond_1

    .line 111
    move v4, v2

    move-object v5, v0

    move v6, v3

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    add-int/lit8 v5, v5, -0x30

    add-int/2addr v4, v5

    move v2, v4

    .line 110
    add-int/lit8 v3, v3, -0x2

    goto :goto_1

    .line 113
    :cond_1
    move v4, v2

    const/4 v5, 0x3

    mul-int/lit8 v4, v4, 0x3

    move v2, v4

    .line 114
    move v4, v2

    const/16 v5, 0xa

    rem-int/lit8 v4, v4, 0xa

    move v0, v4

    .end local v0    # "s":Ljava/lang/CharSequence;
    return v0
.end method

.method private static parseExtension5String(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 147
    move-object v0, p0

    .local v0, "raw":Ljava/lang/String;
    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 171
    const-string/jumbo v6, ""

    move-object v1, v6

    .line 174
    .local v1, "currency":Ljava/lang/String;
    :goto_0
    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v2, v6

    .line 175
    .local v2, "rawAmount":I
    move v6, v2

    const/16 v7, 0x64

    div-int/lit8 v6, v6, 0x64

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 176
    .local v3, "unitsString":Ljava/lang/String;
    move v6, v2

    const/16 v7, 0x64

    rem-int/lit8 v6, v6, 0x64

    move v4, v6

    .line 177
    .local v4, "hundredths":I
    move v6, v4

    const/16 v7, 0xa

    if-ge v6, v7, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    move-object v5, v6

    .line 178
    .local v5, "hundredthsString":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "raw":Ljava/lang/String;
    :goto_2
    return-object v0

    .line 149
    .end local v1    # "currency":Ljava/lang/String;
    .end local v2    # "rawAmount":I
    .end local v3    # "unitsString":Ljava/lang/String;
    .end local v4    # "hundredths":I
    .end local v5    # "hundredthsString":Ljava/lang/String;
    .restart local v0    # "raw":Ljava/lang/String;
    :sswitch_0
    const-string/jumbo v6, "\u00ac\u00a3"

    move-object v1, v6

    .line 150
    .restart local v1    # "currency":Ljava/lang/String;
    goto :goto_0

    .line 152
    .end local v1    # "currency":Ljava/lang/String;
    :sswitch_1
    const-string/jumbo v6, "$"

    move-object v1, v6

    .line 153
    .restart local v1    # "currency":Ljava/lang/String;
    goto :goto_0

    .line 156
    .end local v1    # "currency":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v6, "90000"

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 158
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_2

    .line 160
    :cond_0
    const-string/jumbo v6, "99991"

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 162
    const-string/jumbo v6, "0.00"

    move-object v0, v6

    goto :goto_2

    .line 164
    :cond_1
    const-string/jumbo v6, "99990"

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 165
    const-string/jumbo v6, "Used"

    move-object v0, v6

    goto :goto_2

    .line 168
    :cond_2
    const-string/jumbo v6, ""

    move-object v1, v6

    .line 169
    .restart local v1    # "currency":Ljava/lang/String;
    goto/16 :goto_0

    .line 177
    .restart local v2    # "rawAmount":I
    .restart local v3    # "unitsString":Ljava/lang/String;
    .restart local v4    # "hundredths":I
    :cond_3
    move v6, v4

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 147
    nop

    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x35 -> :sswitch_1
        0x39 -> :sswitch_2
    .end sparse-switch
.end method

.method private static parseExtensionString(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/ResultMetadataType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    move-object v0, p0

    .local v0, "raw":Ljava/lang/String;
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    .line 134
    const/4 v3, 0x0

    move-object v0, v3

    .line 142
    .end local v0    # "raw":Ljava/lang/String;
    .local v1, "value":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 136
    .end local v1    # "value":Ljava/lang/String;
    .restart local v0    # "raw":Ljava/lang/String;
    :cond_0
    move-object v3, v0

    invoke-static {v3}, Lcom/google/zxing/oned/UPCEANExtension5Support;->parseExtension5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 137
    .restart local v1    # "value":Ljava/lang/String;
    move-object v3, v1

    if-nez v3, :cond_1

    .line 138
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 140
    :cond_1
    new-instance v3, Ljava/util/EnumMap;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-class v5, Lcom/google/zxing/ResultMetadataType;

    invoke-direct {v4, v5}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    move-object v2, v3

    .line 141
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;>;"
    move-object v3, v2

    sget-object v4, Lcom/google/zxing/ResultMetadataType;->SUGGESTED_PRICE:Lcom/google/zxing/ResultMetadataType;

    move-object v5, v1

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 142
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method


# virtual methods
.method decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 65
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/oned/UPCEANExtension5Support;
    move-object/from16 v1, p1

    .local v1, "row":Lcom/google/zxing/common/BitArray;
    move-object/from16 v2, p2

    .local v2, "startRange":[I
    move-object/from16 v3, p3

    .local v3, "resultString":Ljava/lang/StringBuilder;
    move-object v14, v0

    iget-object v14, v14, Lcom/google/zxing/oned/UPCEANExtension5Support;->decodeMiddleCounters:[I

    move-object v4, v14

    .line 66
    .local v4, "counters":[I
    move-object v14, v4

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 67
    move-object v14, v4

    const/4 v15, 0x1

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 68
    move-object v14, v4

    const/4 v15, 0x2

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 69
    move-object v14, v4

    const/4 v15, 0x3

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 70
    move-object v14, v1

    invoke-virtual {v14}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v14

    move v5, v14

    .line 71
    .local v5, "end":I
    move-object v14, v2

    const/4 v15, 0x1

    aget v14, v14, v15

    move v6, v14

    .line 73
    .local v6, "rowOffset":I
    const/4 v14, 0x0

    move v7, v14

    .line 75
    .local v7, "lgPatternFound":I
    const/4 v14, 0x0

    move v8, v14

    .local v8, "x":I
    :goto_0
    move v14, v8

    const/4 v15, 0x5

    if-ge v14, v15, :cond_3

    move v14, v6

    move v15, v5

    if-ge v14, v15, :cond_3

    .line 76
    move-object v14, v1

    move-object v15, v4

    move/from16 v16, v6

    sget-object v17, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    invoke-static/range {v14 .. v17}, Lcom/google/zxing/oned/UPCEANReader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v14

    move v9, v14

    .line 77
    .local v9, "bestMatch":I
    move-object v14, v3

    const/16 v15, 0x30

    move/from16 v16, v9

    const/16 v17, 0xa

    rem-int/lit8 v16, v16, 0xa

    add-int v15, v15, v16

    int-to-char v15, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 78
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
    :goto_1
    move v14, v12

    move v15, v11

    if-ge v14, v15, :cond_0

    move-object v14, v10

    move v15, v12

    aget v14, v14, v15

    move v13, v14

    .line 79
    .local v13, "counter":I
    move v14, v6

    move v15, v13

    add-int/2addr v14, v15

    move v6, v14

    .line 78
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 81
    .end local v13    # "counter":I
    :cond_0
    move v14, v9

    const/16 v15, 0xa

    if-lt v14, v15, :cond_1

    .line 82
    move v14, v7

    const/4 v15, 0x1

    const/16 v16, 0x4

    move/from16 v17, v8

    rsub-int/lit8 v16, v17, 0x4

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move v7, v14

    .line 84
    :cond_1
    move v14, v8

    const/4 v15, 0x4

    if-eq v14, v15, :cond_2

    .line 86
    move-object v14, v1

    move v15, v6

    invoke-virtual {v14, v15}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v14

    move v6, v14

    .line 87
    move-object v14, v1

    move v15, v6

    invoke-virtual {v14, v15}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v14

    move v6, v14

    .line 75
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 91
    .end local v9    # "bestMatch":I
    .end local v10    # "arr$":[I
    .end local v11    # "len$":I
    .end local v12    # "i$":I
    :cond_3
    move-object v14, v3

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    const/4 v15, 0x5

    if-eq v14, v15, :cond_4

    .line 92
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v14

    throw v14

    .line 95
    :cond_4
    move v14, v7

    invoke-static {v14}, Lcom/google/zxing/oned/UPCEANExtension5Support;->determineCheckDigit(I)I

    move-result v14

    move v8, v14

    .line 96
    .local v8, "checkDigit":I
    move-object v14, v3

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/google/zxing/oned/UPCEANExtension5Support;->extensionChecksum(Ljava/lang/CharSequence;)I

    move-result v14

    move v15, v8

    if-eq v14, v15, :cond_5

    .line 97
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v14

    throw v14

    .line 100
    :cond_5
    move v14, v6

    move v0, v14

    .end local v0    # "this":Lcom/google/zxing/oned/UPCEANExtension5Support;
    return v0
.end method

.method decodeRow(ILcom/google/zxing/common/BitArray;[I)Lcom/google/zxing/Result;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 43
    move-object/from16 v1, p0

    .local v1, "this":Lcom/google/zxing/oned/UPCEANExtension5Support;
    move/from16 v2, p1

    .local v2, "rowNumber":I
    move-object/from16 v3, p2

    .local v3, "row":Lcom/google/zxing/common/BitArray;
    move-object/from16 v4, p3

    .local v4, "extensionStartRange":[I
    move-object v10, v1

    iget-object v10, v10, Lcom/google/zxing/oned/UPCEANExtension5Support;->decodeRowStringBuffer:Ljava/lang/StringBuilder;

    move-object v5, v10

    .line 44
    .local v5, "result":Ljava/lang/StringBuilder;
    move-object v10, v5

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 45
    move-object v10, v1

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    invoke-virtual {v10, v11, v12, v13}, Lcom/google/zxing/oned/UPCEANExtension5Support;->decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I

    move-result v10

    move v6, v10

    .line 47
    .local v6, "end":I
    move-object v10, v5

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    .line 48
    .local v7, "resultString":Ljava/lang/String;
    move-object v10, v7

    invoke-static {v10}, Lcom/google/zxing/oned/UPCEANExtension5Support;->parseExtensionString(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v10

    move-object v8, v10

    .line 50
    .local v8, "extensionData":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;>;"
    new-instance v10, Lcom/google/zxing/Result;

    move-object/from16 v22, v10

    move-object/from16 v10, v22

    move-object/from16 v11, v22

    move-object v12, v7

    const/4 v13, 0x0

    const/4 v14, 0x2

    new-array v14, v14, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    const/16 v16, 0x0

    new-instance v17, Lcom/google/zxing/ResultPoint;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v19, v4

    const/16 v20, 0x0

    aget v19, v19, v20

    move-object/from16 v20, v4

    const/16 v21, 0x1

    aget v20, v20, v21

    add-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    move/from16 v20, v2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-direct/range {v18 .. v20}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v17, v15, v16

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    const/16 v16, 0x1

    new-instance v17, Lcom/google/zxing/ResultPoint;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move/from16 v19, v6

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v20, v2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-direct/range {v18 .. v20}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v17, v15, v16

    sget-object v15, Lcom/google/zxing/BarcodeFormat;->UPC_EAN_EXTENSION:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v11, v12, v13, v14, v15}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    move-object v9, v10

    .line 58
    .local v9, "extensionResult":Lcom/google/zxing/Result;
    move-object v10, v8

    if-eqz v10, :cond_0

    .line 59
    move-object v10, v9

    move-object v11, v8

    invoke-virtual {v10, v11}, Lcom/google/zxing/Result;->putAllMetadata(Ljava/util/Map;)V

    .line 61
    :cond_0
    move-object v10, v9

    move-object v1, v10

    .end local v1    # "this":Lcom/google/zxing/oned/UPCEANExtension5Support;
    return-object v1
.end method
