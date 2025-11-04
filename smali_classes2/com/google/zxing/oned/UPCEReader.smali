.class public final Lcom/google/zxing/oned/UPCEReader;
.super Lcom/google/zxing/oned/UPCEANReader;
.source "UPCEReader.java"


# static fields
.field private static final MIDDLE_END_PATTERN:[I

.field private static final NUMSYS_AND_CHECK_DIGIT_PATTERNS:[[I


# instance fields
.field private final decodeMiddleCounters:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 39
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/UPCEReader;->MIDDLE_END_PATTERN:[I

    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [[I

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x0

    const/16 v3, 0xa

    new-array v3, v3, [I

    fill-array-data v3, :array_1

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x1

    const/16 v3, 0xa

    new-array v3, v3, [I

    fill-array-data v3, :array_2

    aput-object v3, v1, v2

    sput-object v0, Lcom/google/zxing/oned/UPCEReader;->NUMSYS_AND_CHECK_DIGIT_PATTERNS:[[I

    return-void

    .line 39
    :array_0
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    .line 46
    :array_1
    .array-data 4
        0x38
        0x34
        0x32
        0x31
        0x2c
        0x26
        0x23
        0x2a
        0x29
        0x25
    .end array-data

    :array_2
    .array-data 4
        0x7
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
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/UPCEReader;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/zxing/oned/UPCEANReader;-><init>()V

    .line 54
    move-object v1, v0

    const/4 v2, 0x4

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/google/zxing/oned/UPCEReader;->decodeMiddleCounters:[I

    .line 55
    return-void
.end method

.method public static convertUPCEtoUPCA(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .prologue
    .line 123
    move-object v0, p0

    .local v0, "upce":Ljava/lang/String;
    const/4 v4, 0x6

    new-array v4, v4, [C

    move-object v1, v4

    .line 124
    .local v1, "upceChars":[C
    move-object v4, v0

    const/4 v5, 0x1

    const/4 v6, 0x7

    move-object v7, v1

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Ljava/lang/String;->getChars(II[CI)V

    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/16 v6, 0xc

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v4

    .line 126
    .local v2, "result":Ljava/lang/StringBuilder;
    move-object v4, v2

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 127
    move-object v4, v1

    const/4 v5, 0x5

    aget-char v4, v4, v5

    move v3, v4

    .line 128
    .local v3, "lastChar":C
    move v4, v3

    packed-switch v4, :pswitch_data_0

    .line 148
    move-object v4, v2

    move-object v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x5

    invoke-virtual {v4, v5, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 149
    move-object v4, v2

    const-string/jumbo v5, "0000"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 150
    move-object v4, v2

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 153
    :goto_0
    move-object v4, v2

    move-object v5, v0

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 154
    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "upce":Ljava/lang/String;
    return-object v0

    .line 132
    .restart local v0    # "upce":Ljava/lang/String;
    :pswitch_0
    move-object v4, v2

    move-object v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-virtual {v4, v5, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 133
    move-object v4, v2

    move v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 134
    move-object v4, v2

    const-string/jumbo v5, "0000"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 135
    move-object v4, v2

    move-object v5, v1

    const/4 v6, 0x2

    const/4 v7, 0x3

    invoke-virtual {v4, v5, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 136
    goto :goto_0

    .line 138
    :pswitch_1
    move-object v4, v2

    move-object v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x3

    invoke-virtual {v4, v5, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 139
    move-object v4, v2

    const-string/jumbo v5, "00000"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 140
    move-object v4, v2

    move-object v5, v1

    const/4 v6, 0x3

    const/4 v7, 0x2

    invoke-virtual {v4, v5, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 141
    goto :goto_0

    .line 143
    :pswitch_2
    move-object v4, v2

    move-object v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-virtual {v4, v5, v6, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 144
    move-object v4, v2

    const-string/jumbo v5, "00000"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 145
    move-object v4, v2

    move-object v5, v1

    const/4 v6, 0x4

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 146
    goto :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static determineNumSysAndCheckDigit(Ljava/lang/StringBuilder;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 99
    move-object v0, p0

    .local v0, "resultString":Ljava/lang/StringBuilder;
    move v1, p1

    .local v1, "lgPatternFound":I
    const/4 v4, 0x0

    move v2, v4

    .local v2, "numSys":I
    :goto_0
    move v4, v2

    const/4 v5, 0x1

    if-gt v4, v5, :cond_2

    .line 100
    const/4 v4, 0x0

    move v3, v4

    .local v3, "d":I
    :goto_1
    move v4, v3

    const/16 v5, 0xa

    if-ge v4, v5, :cond_1

    .line 101
    move v4, v1

    sget-object v5, Lcom/google/zxing/oned/UPCEReader;->NUMSYS_AND_CHECK_DIGIT_PATTERNS:[[I

    move v6, v2

    aget-object v5, v5, v6

    move v6, v3

    aget v5, v5, v6

    if-ne v4, v5, :cond_0

    .line 102
    move-object v4, v0

    const/4 v5, 0x0

    const/16 v6, 0x30

    move v7, v2

    add-int/2addr v6, v7

    int-to-char v6, v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 103
    move-object v4, v0

    const/16 v5, 0x30

    move v6, v3

    add-int/2addr v5, v6

    int-to-char v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 104
    return-void

    .line 100
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 99
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    .end local v3    # "d":I
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v4

    throw v4
.end method


# virtual methods
.method protected checkChecksum(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/UPCEReader;
    move-object v1, p1

    .local v1, "s":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Lcom/google/zxing/oned/UPCEReader;->convertUPCEtoUPCA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-super {v2, v3}, Lcom/google/zxing/oned/UPCEANReader;->checkChecksum(Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/google/zxing/oned/UPCEReader;
    return v0
.end method

.method protected decodeEnd(Lcom/google/zxing/common/BitArray;I)[I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/UPCEReader;
    move-object v1, p1

    .local v1, "row":Lcom/google/zxing/common/BitArray;
    move v2, p2

    .local v2, "endStart":I
    move-object v3, v1

    move v4, v2

    const/4 v5, 0x1

    sget-object v6, Lcom/google/zxing/oned/UPCEReader;->MIDDLE_END_PATTERN:[I

    invoke-static {v3, v4, v5, v6}, Lcom/google/zxing/oned/UPCEReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/google/zxing/oned/UPCEReader;
    return-object v0
.end method

.method protected decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 60
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/oned/UPCEReader;
    move-object/from16 v1, p1

    .local v1, "row":Lcom/google/zxing/common/BitArray;
    move-object/from16 v2, p2

    .local v2, "startRange":[I
    move-object/from16 v3, p3

    .local v3, "result":Ljava/lang/StringBuilder;
    move-object v14, v0

    iget-object v14, v14, Lcom/google/zxing/oned/UPCEReader;->decodeMiddleCounters:[I

    move-object v4, v14

    .line 61
    .local v4, "counters":[I
    move-object v14, v4

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 62
    move-object v14, v4

    const/4 v15, 0x1

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 63
    move-object v14, v4

    const/4 v15, 0x2

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 64
    move-object v14, v4

    const/4 v15, 0x3

    const/16 v16, 0x0

    aput v16, v14, v15

    .line 65
    move-object v14, v1

    invoke-virtual {v14}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v14

    move v5, v14

    .line 66
    .local v5, "end":I
    move-object v14, v2

    const/4 v15, 0x1

    aget v14, v14, v15

    move v6, v14

    .line 68
    .local v6, "rowOffset":I
    const/4 v14, 0x0

    move v7, v14

    .line 70
    .local v7, "lgPatternFound":I
    const/4 v14, 0x0

    move v8, v14

    .local v8, "x":I
    :goto_0
    move v14, v8

    const/4 v15, 0x6

    if-ge v14, v15, :cond_2

    move v14, v6

    move v15, v5

    if-ge v14, v15, :cond_2

    .line 71
    move-object v14, v1

    move-object v15, v4

    move/from16 v16, v6

    sget-object v17, Lcom/google/zxing/oned/UPCEReader;->L_AND_G_PATTERNS:[[I

    invoke-static/range {v14 .. v17}, Lcom/google/zxing/oned/UPCEReader;->decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I

    move-result v14

    move v9, v14

    .line 72
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

    .line 73
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

    .line 74
    .local v13, "counter":I
    move v14, v6

    move v15, v13

    add-int/2addr v14, v15

    move v6, v14

    .line 73
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 76
    .end local v13    # "counter":I
    :cond_0
    move v14, v9

    const/16 v15, 0xa

    if-lt v14, v15, :cond_1

    .line 77
    move v14, v7

    const/4 v15, 0x1

    const/16 v16, 0x5

    move/from16 v17, v8

    rsub-int/lit8 v16, v17, 0x5

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move v7, v14

    .line 70
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 81
    .end local v9    # "bestMatch":I
    .end local v10    # "arr$":[I
    .end local v11    # "len$":I
    .end local v12    # "i$":I
    :cond_2
    move-object v14, v3

    move v15, v7

    invoke-static {v14, v15}, Lcom/google/zxing/oned/UPCEReader;->determineNumSysAndCheckDigit(Ljava/lang/StringBuilder;I)V

    .line 83
    move v14, v6

    move v0, v14

    .end local v0    # "this":Lcom/google/zxing/oned/UPCEReader;
    return v0
.end method

.method getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
    .locals 2

    .prologue
    .line 113
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/UPCEReader;
    sget-object v1, Lcom/google/zxing/BarcodeFormat;->UPC_E:Lcom/google/zxing/BarcodeFormat;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/oned/UPCEReader;
    return-object v0
.end method
