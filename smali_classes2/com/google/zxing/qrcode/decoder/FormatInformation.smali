.class final Lcom/google/zxing/qrcode/decoder/FormatInformation;
.super Ljava/lang/Object;
.source "FormatInformation.java"


# static fields
.field private static final BITS_SET_IN_HALF_BYTE:[I

.field private static final FORMAT_INFO_DECODE_LOOKUP:[[I

.field private static final FORMAT_INFO_MASK_QR:I = 0x5412


# instance fields
.field private final dataMask:B

.field private final errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 34
    const/16 v0, 0x20

    new-array v0, v0, [[I

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x1

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_1

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x2

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_2

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x3

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_3

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x4

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_4

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x5

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_5

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x6

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_6

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/4 v2, 0x7

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_7

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x8

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_8

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x9

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_9

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0xa

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_a

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0xb

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_b

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0xc

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_c

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0xd

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_d

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0xe

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_e

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0xf

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_f

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x10

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_10

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x11

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_11

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x12

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_12

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x13

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_13

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x14

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_14

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x15

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_15

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x16

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_16

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x17

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_17

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x18

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_18

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x19

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_19

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x1a

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_1a

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x1b

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_1b

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x1c

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_1c

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x1d

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_1d

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x1e

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_1e

    aput-object v3, v1, v2

    move-object v7, v0

    move-object v0, v7

    move-object v1, v7

    const/16 v2, 0x1f

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_1f

    aput-object v3, v1, v2

    sput-object v0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->FORMAT_INFO_DECODE_LOOKUP:[[I

    .line 72
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_20

    sput-object v0, Lcom/google/zxing/qrcode/decoder/FormatInformation;->BITS_SET_IN_HALF_BYTE:[I

    return-void

    .line 34
    :array_0
    .array-data 4
        0x5412
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x5125
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x5e7c
        0x2
    .end array-data

    :array_3
    .array-data 4
        0x5b4b
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x45f9
        0x4
    .end array-data

    :array_5
    .array-data 4
        0x40ce
        0x5
    .end array-data

    :array_6
    .array-data 4
        0x4f97
        0x6
    .end array-data

    :array_7
    .array-data 4
        0x4aa0
        0x7
    .end array-data

    :array_8
    .array-data 4
        0x77c4
        0x8
    .end array-data

    :array_9
    .array-data 4
        0x72f3
        0x9
    .end array-data

    :array_a
    .array-data 4
        0x7daa
        0xa
    .end array-data

    :array_b
    .array-data 4
        0x789d
        0xb
    .end array-data

    :array_c
    .array-data 4
        0x662f
        0xc
    .end array-data

    :array_d
    .array-data 4
        0x6318
        0xd
    .end array-data

    :array_e
    .array-data 4
        0x6c41
        0xe
    .end array-data

    :array_f
    .array-data 4
        0x6976
        0xf
    .end array-data

    :array_10
    .array-data 4
        0x1689
        0x10
    .end array-data

    :array_11
    .array-data 4
        0x13be
        0x11
    .end array-data

    :array_12
    .array-data 4
        0x1ce7
        0x12
    .end array-data

    :array_13
    .array-data 4
        0x19d0
        0x13
    .end array-data

    :array_14
    .array-data 4
        0x762
        0x14
    .end array-data

    :array_15
    .array-data 4
        0x255
        0x15
    .end array-data

    :array_16
    .array-data 4
        0xd0c
        0x16
    .end array-data

    :array_17
    .array-data 4
        0x83b
        0x17
    .end array-data

    :array_18
    .array-data 4
        0x355f
        0x18
    .end array-data

    :array_19
    .array-data 4
        0x3068
        0x19
    .end array-data

    :array_1a
    .array-data 4
        0x3f31
        0x1a
    .end array-data

    :array_1b
    .array-data 4
        0x3a06
        0x1b
    .end array-data

    :array_1c
    .array-data 4
        0x24b4
        0x1c
    .end array-data

    :array_1d
    .array-data 4
        0x2183
        0x1d
    .end array-data

    :array_1e
    .array-data 4
        0x2eda
        0x1e
    .end array-data

    :array_1f
    .array-data 4
        0x2bed
        0x1f
    .end array-data

    .line 72
    :array_20
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x1
        0x2
        0x2
        0x3
        0x1
        0x2
        0x2
        0x3
        0x2
        0x3
        0x3
        0x4
    .end array-data
.end method

.method private constructor <init>(I)V
    .locals 5

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/decoder/FormatInformation;
    move v1, p1

    .local v1, "formatInfo":I
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 80
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x3

    shr-int/lit8 v3, v3, 0x3

    const/4 v4, 0x3

    and-int/lit8 v3, v3, 0x3

    invoke-static {v3}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->forBits(I)Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-result-object v3

    iput-object v3, v2, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    .line 82
    move-object v2, v0

    move v3, v1

    const/4 v4, 0x7

    and-int/lit8 v3, v3, 0x7

    int-to-byte v3, v3

    iput-byte v3, v2, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    .line 83
    return-void
.end method

.method static decodeFormatInformation(II)Lcom/google/zxing/qrcode/decoder/FormatInformation;
    .locals 6

    .prologue
    .line 106
    move v0, p0

    .local v0, "maskedFormatInfo1":I
    move v1, p1

    .local v1, "maskedFormatInfo2":I
    move v3, v0

    move v4, v1

    invoke-static {v3, v4}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->doDecodeFormatInformation(II)Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-result-object v3

    move-object v2, v3

    .line 107
    .local v2, "formatInfo":Lcom/google/zxing/qrcode/decoder/FormatInformation;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 108
    move-object v3, v2

    move-object v0, v3

    .line 113
    .end local v0    # "maskedFormatInfo1":I
    :goto_0
    return-object v0

    .restart local v0    # "maskedFormatInfo1":I
    :cond_0
    move v3, v0

    const/16 v4, 0x5412

    xor-int/lit16 v3, v3, 0x5412

    move v4, v1

    const/16 v5, 0x5412

    xor-int/lit16 v4, v4, 0x5412

    invoke-static {v3, v4}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->doDecodeFormatInformation(II)Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method private static doDecodeFormatInformation(II)Lcom/google/zxing/qrcode/decoder/FormatInformation;
    .locals 15

    .prologue
    .line 119
    move v0, p0

    .local v0, "maskedFormatInfo1":I
    move/from16 v1, p1

    .local v1, "maskedFormatInfo2":I
    const v10, 0x7fffffff

    move v2, v10

    .line 120
    .local v2, "bestDifference":I
    const/4 v10, 0x0

    move v3, v10

    .line 121
    .local v3, "bestFormatInfo":I
    sget-object v10, Lcom/google/zxing/qrcode/decoder/FormatInformation;->FORMAT_INFO_DECODE_LOOKUP:[[I

    move-object v4, v10

    .local v4, "arr$":[[I
    move-object v10, v4

    array-length v10, v10

    move v5, v10

    .local v5, "len$":I
    const/4 v10, 0x0

    move v6, v10

    .local v6, "i$":I
    :goto_0
    move v10, v6

    move v11, v5

    if-ge v10, v11, :cond_4

    move-object v10, v4

    move v11, v6

    aget-object v10, v10, v11

    move-object v7, v10

    .line 122
    .local v7, "decodeInfo":[I
    move-object v10, v7

    const/4 v11, 0x0

    aget v10, v10, v11

    move v8, v10

    .line 123
    .local v8, "targetInfo":I
    move v10, v8

    move v11, v0

    if-eq v10, v11, :cond_0

    move v10, v8

    move v11, v1

    if-ne v10, v11, :cond_1

    .line 125
    :cond_0
    new-instance v10, Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v7

    const/4 v13, 0x1

    aget v12, v12, v13

    invoke-direct {v11, v12}, Lcom/google/zxing/qrcode/decoder/FormatInformation;-><init>(I)V

    move-object v0, v10

    .line 146
    .end local v0    # "maskedFormatInfo1":I
    .end local v7    # "decodeInfo":[I
    .end local v8    # "targetInfo":I
    :goto_1
    return-object v0

    .line 127
    .restart local v0    # "maskedFormatInfo1":I
    .restart local v7    # "decodeInfo":[I
    .restart local v8    # "targetInfo":I
    :cond_1
    move v10, v0

    move v11, v8

    invoke-static {v10, v11}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->numBitsDiffering(II)I

    move-result v10

    move v9, v10

    .line 128
    .local v9, "bitsDifference":I
    move v10, v9

    move v11, v2

    if-ge v10, v11, :cond_2

    .line 129
    move-object v10, v7

    const/4 v11, 0x1

    aget v10, v10, v11

    move v3, v10

    .line 130
    move v10, v9

    move v2, v10

    .line 132
    :cond_2
    move v10, v0

    move v11, v1

    if-eq v10, v11, :cond_3

    .line 134
    move v10, v1

    move v11, v8

    invoke-static {v10, v11}, Lcom/google/zxing/qrcode/decoder/FormatInformation;->numBitsDiffering(II)I

    move-result v10

    move v9, v10

    .line 135
    move v10, v9

    move v11, v2

    if-ge v10, v11, :cond_3

    .line 136
    move-object v10, v7

    const/4 v11, 0x1

    aget v10, v10, v11

    move v3, v10

    .line 137
    move v10, v9

    move v2, v10

    .line 121
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 143
    .end local v7    # "decodeInfo":[I
    .end local v8    # "targetInfo":I
    .end local v9    # "bitsDifference":I
    :cond_4
    move v10, v2

    const/4 v11, 0x3

    if-gt v10, v11, :cond_5

    .line 144
    new-instance v10, Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move v12, v3

    invoke-direct {v11, v12}, Lcom/google/zxing/qrcode/decoder/FormatInformation;-><init>(I)V

    move-object v0, v10

    goto :goto_1

    .line 146
    :cond_5
    const/4 v10, 0x0

    move-object v0, v10

    goto :goto_1
.end method

.method static numBitsDiffering(II)I
    .locals 6

    .prologue
    .line 86
    move v0, p0

    .local v0, "a":I
    move v1, p1

    .local v1, "b":I
    move v2, v0

    move v3, v1

    xor-int/2addr v2, v3

    move v0, v2

    .line 88
    sget-object v2, Lcom/google/zxing/qrcode/decoder/FormatInformation;->BITS_SET_IN_HALF_BYTE:[I

    move v3, v0

    const/16 v4, 0xf

    and-int/lit8 v3, v3, 0xf

    aget v2, v2, v3

    sget-object v3, Lcom/google/zxing/qrcode/decoder/FormatInformation;->BITS_SET_IN_HALF_BYTE:[I

    move v4, v0

    const/4 v5, 0x4

    ushr-int/lit8 v4, v4, 0x4

    const/16 v5, 0xf

    and-int/lit8 v4, v4, 0xf

    aget v3, v3, v4

    add-int/2addr v2, v3

    sget-object v3, Lcom/google/zxing/qrcode/decoder/FormatInformation;->BITS_SET_IN_HALF_BYTE:[I

    move v4, v0

    const/16 v5, 0x8

    ushr-int/lit8 v4, v4, 0x8

    const/16 v5, 0xf

    and-int/lit8 v4, v4, 0xf

    aget v3, v3, v4

    add-int/2addr v2, v3

    sget-object v3, Lcom/google/zxing/qrcode/decoder/FormatInformation;->BITS_SET_IN_HALF_BYTE:[I

    move v4, v0

    const/16 v5, 0xc

    ushr-int/lit8 v4, v4, 0xc

    const/16 v5, 0xf

    and-int/lit8 v4, v4, 0xf

    aget v3, v3, v4

    add-int/2addr v2, v3

    sget-object v3, Lcom/google/zxing/qrcode/decoder/FormatInformation;->BITS_SET_IN_HALF_BYTE:[I

    move v4, v0

    const/16 v5, 0x10

    ushr-int/lit8 v4, v4, 0x10

    const/16 v5, 0xf

    and-int/lit8 v4, v4, 0xf

    aget v3, v3, v4

    add-int/2addr v2, v3

    sget-object v3, Lcom/google/zxing/qrcode/decoder/FormatInformation;->BITS_SET_IN_HALF_BYTE:[I

    move v4, v0

    const/16 v5, 0x14

    ushr-int/lit8 v4, v4, 0x14

    const/16 v5, 0xf

    and-int/lit8 v4, v4, 0xf

    aget v3, v3, v4

    add-int/2addr v2, v3

    sget-object v3, Lcom/google/zxing/qrcode/decoder/FormatInformation;->BITS_SET_IN_HALF_BYTE:[I

    move v4, v0

    const/16 v5, 0x18

    ushr-int/lit8 v4, v4, 0x18

    const/16 v5, 0xf

    and-int/lit8 v4, v4, 0xf

    aget v3, v3, v4

    add-int/2addr v2, v3

    sget-object v3, Lcom/google/zxing/qrcode/decoder/FormatInformation;->BITS_SET_IN_HALF_BYTE:[I

    move v4, v0

    const/16 v5, 0x1c

    ushr-int/lit8 v4, v4, 0x1c

    const/16 v5, 0xf

    and-int/lit8 v4, v4, 0xf

    aget v3, v3, v4

    add-int/2addr v2, v3

    move v0, v2

    .end local v0    # "a":I
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/decoder/FormatInformation;
    move-object v1, p1

    .local v1, "o":Ljava/lang/Object;
    move-object v3, v1

    instance-of v3, v3, Lcom/google/zxing/qrcode/decoder/FormatInformation;

    if-nez v3, :cond_0

    .line 165
    const/4 v3, 0x0

    move v0, v3

    .line 168
    .end local v0    # "this":Lcom/google/zxing/qrcode/decoder/FormatInformation;
    :goto_0
    return v0

    .line 167
    .restart local v0    # "this":Lcom/google/zxing/qrcode/decoder/FormatInformation;
    :cond_0
    move-object v3, v1

    check-cast v3, Lcom/google/zxing/qrcode/decoder/FormatInformation;

    move-object v2, v3

    .line 168
    .local v2, "other":Lcom/google/zxing/qrcode/decoder/FormatInformation;
    move-object v3, v0

    iget-object v3, v3, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-object v4, v2

    iget-object v4, v4, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    if-ne v3, v4, :cond_1

    move-object v3, v0

    iget-byte v3, v3, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    move-object v4, v2

    iget-byte v4, v4, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method getDataMask()B
    .locals 2

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/decoder/FormatInformation;
    move-object v1, v0

    iget-byte v1, v1, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/qrcode/decoder/FormatInformation;
    return v0
.end method

.method getErrorCorrectionLevel()Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;
    .locals 2

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/decoder/FormatInformation;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    move-object v0, v1

    .end local v0    # "this":Lcom/google/zxing/qrcode/decoder/FormatInformation;
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/qrcode/decoder/FormatInformation;
    move-object v1, v0

    iget-object v1, v1, Lcom/google/zxing/qrcode/decoder/FormatInformation;->errorCorrectionLevel:Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;

    invoke-virtual {v1}, Lcom/google/zxing/qrcode/decoder/ErrorCorrectionLevel;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    shl-int/lit8 v1, v1, 0x3

    move-object v2, v0

    iget-byte v2, v2, Lcom/google/zxing/qrcode/decoder/FormatInformation;->dataMask:B

    or-int/2addr v1, v2

    move v0, v1

    .end local v0    # "this":Lcom/google/zxing/qrcode/decoder/FormatInformation;
    return v0
.end method
