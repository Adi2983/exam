.class public abstract Lcom/google/zxing/oned/UPCEANReader;
.super Lcom/google/zxing/oned/OneDReader;
.source "UPCEANReader.java"


# static fields
.field static final L_AND_G_PATTERNS:[[I

.field static final L_PATTERNS:[[I

.field private static final MAX_AVG_VARIANCE:I = 0x7a

.field private static final MAX_INDIVIDUAL_VARIANCE:I = 0xb3

.field static final MIDDLE_PATTERN:[I

.field static final START_END_PATTERN:[I


# instance fields
.field private final decodeRowStringBuffer:Ljava/lang/StringBuilder;

.field private final eanManSupport:Lcom/google/zxing/oned/EANManufacturerOrgSupport;

.field private final extensionReader:Lcom/google/zxing/oned/UPCEANExtensionSupport;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    .line 53
    const/4 v4, 0x3

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    sput-object v4, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    .line 58
    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_1

    sput-object v4, Lcom/google/zxing/oned/UPCEANReader;->MIDDLE_PATTERN:[I

    .line 63
    const/16 v4, 0xa

    new-array v4, v4, [[I

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    const/4 v6, 0x0

    const/4 v7, 0x4

    new-array v7, v7, [I

    fill-array-data v7, :array_2

    aput-object v7, v5, v6

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    const/4 v6, 0x1

    const/4 v7, 0x4

    new-array v7, v7, [I

    fill-array-data v7, :array_3

    aput-object v7, v5, v6

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    const/4 v6, 0x2

    const/4 v7, 0x4

    new-array v7, v7, [I

    fill-array-data v7, :array_4

    aput-object v7, v5, v6

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    const/4 v6, 0x3

    const/4 v7, 0x4

    new-array v7, v7, [I

    fill-array-data v7, :array_5

    aput-object v7, v5, v6

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    const/4 v6, 0x4

    const/4 v7, 0x4

    new-array v7, v7, [I

    fill-array-data v7, :array_6

    aput-object v7, v5, v6

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    const/4 v6, 0x5

    const/4 v7, 0x4

    new-array v7, v7, [I

    fill-array-data v7, :array_7

    aput-object v7, v5, v6

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    const/4 v6, 0x6

    const/4 v7, 0x4

    new-array v7, v7, [I

    fill-array-data v7, :array_8

    aput-object v7, v5, v6

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    const/4 v6, 0x7

    const/4 v7, 0x4

    new-array v7, v7, [I

    fill-array-data v7, :array_9

    aput-object v7, v5, v6

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    const/16 v6, 0x8

    const/4 v7, 0x4

    new-array v7, v7, [I

    fill-array-data v7, :array_a

    aput-object v7, v5, v6

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    const/16 v6, 0x9

    const/4 v7, 0x4

    new-array v7, v7, [I

    fill-array-data v7, :array_b

    aput-object v7, v5, v6

    sput-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    .line 82
    const/16 v4, 0x14

    new-array v4, v4, [[I

    sput-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    .line 83
    sget-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    const/4 v5, 0x0

    sget-object v6, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    const/4 v7, 0x0

    const/16 v8, 0xa

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    const/16 v4, 0xa

    move v0, v4

    .local v0, "i":I
    :goto_0
    move v4, v0

    const/16 v5, 0x14

    if-ge v4, v5, :cond_1

    .line 85
    sget-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_PATTERNS:[[I

    move v5, v0

    const/16 v6, 0xa

    add-int/lit8 v5, v5, -0xa

    aget-object v4, v4, v5

    move-object v1, v4

    .line 86
    .local v1, "widths":[I
    move-object v4, v1

    array-length v4, v4

    new-array v4, v4, [I

    move-object v2, v4

    .line 87
    .local v2, "reversedWidths":[I
    const/4 v4, 0x0

    move v3, v4

    .local v3, "j":I
    :goto_1
    move v4, v3

    move-object v5, v1

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 88
    move-object v4, v2

    move v5, v3

    move-object v6, v1

    move-object v7, v1

    array-length v7, v7

    move v8, v3

    sub-int/2addr v7, v8

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    aget v6, v6, v7

    aput v6, v4, v5

    .line 87
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 90
    :cond_0
    sget-object v4, Lcom/google/zxing/oned/UPCEANReader;->L_AND_G_PATTERNS:[[I

    move v5, v0

    move-object v6, v2

    aput-object v6, v4, v5

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    .end local v1    # "widths":[I
    .end local v2    # "reversedWidths":[I
    .end local v3    # "j":I
    :cond_1
    return-void

    .line 53
    :array_0
    .array-data 4
        0x1
        0x1
        0x1
    .end array-data

    .line 58
    :array_1
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    .line 63
    :array_2
    .array-data 4
        0x3
        0x2
        0x1
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x2
        0x2
        0x2
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x4
        0x1
        0x1
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x1
        0x3
        0x2
    .end array-data

    :array_7
    .array-data 4
        0x1
        0x2
        0x3
        0x1
    .end array-data

    :array_8
    .array-data 4
        0x1
        0x1
        0x1
        0x4
    .end array-data

    :array_9
    .array-data 4
        0x1
        0x3
        0x1
        0x2
    .end array-data

    :array_a
    .array-data 4
        0x1
        0x2
        0x1
        0x3
    .end array-data

    :array_b
    .array-data 4
        0x3
        0x1
        0x1
        0x2
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 6

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/UPCEANReader;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    .line 99
    move-object v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v2, v1, Lcom/google/zxing/oned/UPCEANReader;->decodeRowStringBuffer:Ljava/lang/StringBuilder;

    .line 100
    move-object v1, v0

    new-instance v2, Lcom/google/zxing/oned/UPCEANExtensionSupport;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lcom/google/zxing/oned/UPCEANExtensionSupport;-><init>()V

    iput-object v2, v1, Lcom/google/zxing/oned/UPCEANReader;->extensionReader:Lcom/google/zxing/oned/UPCEANExtensionSupport;

    .line 101
    move-object v1, v0

    new-instance v2, Lcom/google/zxing/oned/EANManufacturerOrgSupport;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;-><init>()V

    iput-object v2, v1, Lcom/google/zxing/oned/UPCEANReader;->eanManSupport:Lcom/google/zxing/oned/EANManufacturerOrgSupport;

    .line 102
    return-void
.end method

.method static checkStandardUPCEANChecksum(Ljava/lang/CharSequence;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "s":Ljava/lang/CharSequence;
    move-object v5, v0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    move v1, v5

    .line 229
    .local v1, "length":I
    move v5, v1

    if-nez v5, :cond_0

    .line 230
    const/4 v5, 0x0

    move v0, v5

    .line 249
    .end local v0    # "s":Ljava/lang/CharSequence;
    :goto_0
    return v0

    .line 233
    .restart local v0    # "s":Ljava/lang/CharSequence;
    :cond_0
    const/4 v5, 0x0

    move v2, v5

    .line 234
    .local v2, "sum":I
    move v5, v1

    const/4 v6, 0x2

    add-int/lit8 v5, v5, -0x2

    move v3, v5

    .local v3, "i":I
    :goto_1
    move v5, v3

    if-ltz v5, :cond_3

    .line 235
    move-object v5, v0

    move v6, v3

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    add-int/lit8 v5, v5, -0x30

    move v4, v5

    .line 236
    .local v4, "digit":I
    move v5, v4

    if-ltz v5, :cond_1

    move v5, v4

    const/16 v6, 0x9

    if-le v5, v6, :cond_2

    .line 237
    :cond_1
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v5

    throw v5

    .line 239
    :cond_2
    move v5, v2

    move v6, v4

    add-int/2addr v5, v6

    move v2, v5

    .line 234
    add-int/lit8 v3, v3, -0x2

    goto :goto_1

    .line 241
    .end local v4    # "digit":I
    :cond_3
    move v5, v2

    const/4 v6, 0x3

    mul-int/lit8 v5, v5, 0x3

    move v2, v5

    .line 242
    move v5, v1

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    :goto_2
    move v5, v3

    if-ltz v5, :cond_6

    .line 243
    move-object v5, v0

    move v6, v3

    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    add-int/lit8 v5, v5, -0x30

    move v4, v5

    .line 244
    .restart local v4    # "digit":I
    move v5, v4

    if-ltz v5, :cond_4

    move v5, v4

    const/16 v6, 0x9

    if-le v5, v6, :cond_5

    .line 245
    :cond_4
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v5

    throw v5

    .line 247
    :cond_5
    move v5, v2

    move v6, v4

    add-int/2addr v5, v6

    move v2, v5

    .line 242
    add-int/lit8 v3, v3, -0x2

    goto :goto_2

    .line 249
    .end local v4    # "digit":I
    :cond_6
    move v5, v2

    const/16 v6, 0xa

    rem-int/lit8 v5, v5, 0xa

    if-nez v5, :cond_7

    const/4 v5, 0x1

    :goto_3
    move v0, v5

    goto :goto_0

    :cond_7
    const/4 v5, 0x0

    goto :goto_3
.end method

.method static decodeDigit(Lcom/google/zxing/common/BitArray;[II[[I)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 322
    move-object v0, p0

    .local v0, "row":Lcom/google/zxing/common/BitArray;
    move-object v1, p1

    .local v1, "counters":[I
    move v2, p2

    .local v2, "rowOffset":I
    move-object/from16 v3, p3

    .local v3, "patterns":[[I
    move-object v10, v0

    move v11, v2

    move-object v12, v1

    invoke-static {v10, v11, v12}, Lcom/google/zxing/oned/UPCEANReader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 323
    const/16 v10, 0x7a

    move v4, v10

    .line 324
    .local v4, "bestVariance":I
    const/4 v10, -0x1

    move v5, v10

    .line 325
    .local v5, "bestMatch":I
    move-object v10, v3

    array-length v10, v10

    move v6, v10

    .line 326
    .local v6, "max":I
    const/4 v10, 0x0

    move v7, v10

    .local v7, "i":I
    :goto_0
    move v10, v7

    move v11, v6

    if-ge v10, v11, :cond_1

    .line 327
    move-object v10, v3

    move v11, v7

    aget-object v10, v10, v11

    move-object v8, v10

    .line 328
    .local v8, "pattern":[I
    move-object v10, v1

    move-object v11, v8

    const/16 v12, 0xb3

    invoke-static {v10, v11, v12}, Lcom/google/zxing/oned/UPCEANReader;->patternMatchVariance([I[II)I

    move-result v10

    move v9, v10

    .line 329
    .local v9, "variance":I
    move v10, v9

    move v11, v4

    if-ge v10, v11, :cond_0

    .line 330
    move v10, v9

    move v4, v10

    .line 331
    move v10, v7

    move v5, v10

    .line 326
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 334
    .end local v8    # "pattern":[I
    .end local v9    # "variance":I
    :cond_1
    move v10, v5

    if-ltz v10, :cond_2

    .line 335
    move v10, v5

    move v0, v10

    .end local v0    # "row":Lcom/google/zxing/common/BitArray;
    return v0

    .line 337
    .restart local v0    # "row":Lcom/google/zxing/common/BitArray;
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v10

    throw v10
.end method

.method static findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "row":Lcom/google/zxing/common/BitArray;
    move v1, p1

    .local v1, "rowOffset":I
    move v2, p2

    .local v2, "whiteFirst":Z
    move-object v3, p3

    .local v3, "pattern":[I
    move-object v4, v0

    move v5, v1

    move v6, v2

    move-object v7, v3

    move-object v8, v3

    array-length v8, v8

    new-array v8, v8, [I

    invoke-static {v4, v5, v6, v7, v8}, Lcom/google/zxing/oned/UPCEANReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I[I)[I

    move-result-object v4

    move-object v0, v4

    .end local v0    # "row":Lcom/google/zxing/common/BitArray;
    return-object v0
.end method

.method private static findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I[I)[I
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 279
    move-object/from16 v0, p0

    .local v0, "row":Lcom/google/zxing/common/BitArray;
    move/from16 v1, p1

    .local v1, "rowOffset":I
    move/from16 v2, p2

    .local v2, "whiteFirst":Z
    move-object/from16 v3, p3

    .local v3, "pattern":[I
    move-object/from16 v4, p4

    .local v4, "counters":[I
    move-object v11, v3

    array-length v11, v11

    move v5, v11

    .line 280
    .local v5, "patternLength":I
    move-object v11, v0

    invoke-virtual {v11}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v11

    move v6, v11

    .line 281
    .local v6, "width":I
    move v11, v2

    move v7, v11

    .line 282
    .local v7, "isWhite":Z
    move v11, v2

    if-eqz v11, :cond_0

    move-object v11, v0

    move v12, v1

    invoke-virtual {v11, v12}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v11

    :goto_0
    move v1, v11

    .line 283
    const/4 v11, 0x0

    move v8, v11

    .line 284
    .local v8, "counterPosition":I
    move v11, v1

    move v9, v11

    .line 285
    .local v9, "patternStart":I
    move v11, v1

    move v10, v11

    .local v10, "x":I
    :goto_1
    move v11, v10

    move v12, v6

    if-ge v11, v12, :cond_5

    .line 286
    move-object v11, v0

    move v12, v10

    invoke-virtual {v11, v12}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v11

    move v12, v7

    xor-int/2addr v11, v12

    if-eqz v11, :cond_1

    .line 287
    move-object v11, v4

    move v12, v8

    move-object/from16 v17, v11

    move/from16 v18, v12

    move-object/from16 v11, v17

    move/from16 v12, v18

    move-object/from16 v13, v17

    move/from16 v14, v18

    aget v13, v13, v14

    const/4 v14, 0x1

    add-int/lit8 v13, v13, 0x1

    aput v13, v11, v12

    .line 285
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 282
    .end local v8    # "counterPosition":I
    .end local v9    # "patternStart":I
    .end local v10    # "x":I
    :cond_0
    move-object v11, v0

    move v12, v1

    invoke-virtual {v11, v12}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v11

    goto :goto_0

    .line 289
    .restart local v8    # "counterPosition":I
    .restart local v9    # "patternStart":I
    .restart local v10    # "x":I
    :cond_1
    move v11, v8

    move v12, v5

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    if-ne v11, v12, :cond_3

    .line 290
    move-object v11, v4

    move-object v12, v3

    const/16 v13, 0xb3

    invoke-static {v11, v12, v13}, Lcom/google/zxing/oned/UPCEANReader;->patternMatchVariance([I[II)I

    move-result v11

    const/16 v12, 0x7a

    if-ge v11, v12, :cond_2

    .line 291
    const/4 v11, 0x2

    new-array v11, v11, [I

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    const/4 v13, 0x0

    move v14, v9

    aput v14, v12, v13

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    const/4 v13, 0x1

    move v14, v10

    aput v14, v12, v13

    move-object v0, v11

    .end local v0    # "row":Lcom/google/zxing/common/BitArray;
    return-object v0

    .line 293
    .restart local v0    # "row":Lcom/google/zxing/common/BitArray;
    :cond_2
    move v11, v9

    move-object v12, v4

    const/4 v13, 0x0

    aget v12, v12, v13

    move-object v13, v4

    const/4 v14, 0x1

    aget v13, v13, v14

    add-int/2addr v12, v13

    add-int/2addr v11, v12

    move v9, v11

    .line 294
    move-object v11, v4

    const/4 v12, 0x2

    move-object v13, v4

    const/4 v14, 0x0

    move v15, v5

    const/16 v16, 0x2

    add-int/lit8 v15, v15, -0x2

    invoke-static {v11, v12, v13, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    move-object v11, v4

    move v12, v5

    const/4 v13, 0x2

    add-int/lit8 v12, v12, -0x2

    const/4 v13, 0x0

    aput v13, v11, v12

    .line 296
    move-object v11, v4

    move v12, v5

    const/4 v13, 0x1

    add-int/lit8 v12, v12, -0x1

    const/4 v13, 0x0

    aput v13, v11, v12

    .line 297
    add-int/lit8 v8, v8, -0x1

    .line 301
    :goto_3
    move-object v11, v4

    move v12, v8

    const/4 v13, 0x1

    aput v13, v11, v12

    .line 302
    move v11, v7

    if-nez v11, :cond_4

    const/4 v11, 0x1

    :goto_4
    move v7, v11

    goto :goto_2

    .line 299
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 302
    :cond_4
    const/4 v11, 0x0

    goto :goto_4

    .line 305
    :cond_5
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v11

    throw v11
.end method

.method static findStartGuardPattern(Lcom/google/zxing/common/BitArray;)[I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "row":Lcom/google/zxing/common/BitArray;
    const/4 v7, 0x0

    move v1, v7

    .line 106
    .local v1, "foundStart":Z
    const/4 v7, 0x0

    move-object v2, v7

    .line 107
    .local v2, "startRange":[I
    const/4 v7, 0x0

    move v3, v7

    .line 108
    .local v3, "nextStart":I
    sget-object v7, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    array-length v7, v7

    new-array v7, v7, [I

    move-object v4, v7

    .line 109
    .local v4, "counters":[I
    :goto_0
    move v7, v1

    if-nez v7, :cond_1

    .line 110
    move-object v7, v4

    const/4 v8, 0x0

    sget-object v9, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    array-length v9, v9

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Ljava/util/Arrays;->fill([IIII)V

    .line 111
    move-object v7, v0

    move v8, v3

    const/4 v9, 0x0

    sget-object v10, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    move-object v11, v4

    invoke-static {v7, v8, v9, v10, v11}, Lcom/google/zxing/oned/UPCEANReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I[I)[I

    move-result-object v7

    move-object v2, v7

    .line 112
    move-object v7, v2

    const/4 v8, 0x0

    aget v7, v7, v8

    move v5, v7

    .line 113
    .local v5, "start":I
    move-object v7, v2

    const/4 v8, 0x1

    aget v7, v7, v8

    move v3, v7

    .line 117
    move v7, v5

    move v8, v3

    move v9, v5

    sub-int/2addr v8, v9

    sub-int/2addr v7, v8

    move v6, v7

    .line 118
    .local v6, "quietStart":I
    move v7, v6

    if-ltz v7, :cond_0

    .line 119
    move-object v7, v0

    move v8, v6

    move v9, v5

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result v7

    move v1, v7

    .line 121
    :cond_0
    goto :goto_0

    .line 122
    .end local v5    # "start":I
    .end local v6    # "quietStart":I
    :cond_1
    move-object v7, v2

    move-object v0, v7

    .end local v0    # "row":Lcom/google/zxing/common/BitArray;
    return-object v0
.end method


# virtual methods
.method checkChecksum(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 216
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/UPCEANReader;
    move-object v1, p1

    .local v1, "s":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v2}, Lcom/google/zxing/oned/UPCEANReader;->checkStandardUPCEANChecksum(Ljava/lang/CharSequence;)Z

    move-result v2

    move v0, v2

    .end local v0    # "this":Lcom/google/zxing/oned/UPCEANReader;
    return v0
.end method

.method decodeEnd(Lcom/google/zxing/common/BitArray;I)[I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .prologue
    .line 253
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/UPCEANReader;
    move-object v1, p1

    .local v1, "row":Lcom/google/zxing/common/BitArray;
    move v2, p2

    .local v2, "endStart":I
    move-object v3, v1

    move v4, v2

    const/4 v5, 0x0

    sget-object v6, Lcom/google/zxing/oned/UPCEANReader;->START_END_PATTERN:[I

    invoke-static {v3, v4, v5, v6}, Lcom/google/zxing/oned/UPCEANReader;->findGuardPattern(Lcom/google/zxing/common/BitArray;IZ[I)[I

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/google/zxing/oned/UPCEANReader;
    return-object v0
.end method

.method protected abstract decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation
.end method

.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/UPCEANReader;
    move v1, p1

    .local v1, "rowNumber":I
    move-object v2, p2

    .local v2, "row":Lcom/google/zxing/common/BitArray;
    move-object v3, p3

    .local v3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    move-object v7, v2

    invoke-static {v7}, Lcom/google/zxing/oned/UPCEANReader;->findStartGuardPattern(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/google/zxing/oned/UPCEANReader;->decodeRow(ILcom/google/zxing/common/BitArray;[ILjava/util/Map;)Lcom/google/zxing/Result;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Lcom/google/zxing/oned/UPCEANReader;
    return-object v0
.end method

.method public decodeRow(ILcom/google/zxing/common/BitArray;[ILjava/util/Map;)Lcom/google/zxing/Result;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "[I",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/ChecksumException;,
            Lcom/google/zxing/FormatException;
        }
    .end annotation

    .prologue
    .line 142
    move-object/from16 v2, p0

    .local v2, "this":Lcom/google/zxing/oned/UPCEANReader;
    move/from16 v3, p1

    .local v3, "rowNumber":I
    move-object/from16 v4, p2

    .local v4, "row":Lcom/google/zxing/common/BitArray;
    move-object/from16 v5, p3

    .local v5, "startGuardRange":[I
    move-object/from16 v6, p4

    .local v6, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object/from16 v19, v6

    if-nez v19, :cond_4

    const/16 v19, 0x0

    :goto_0
    move-object/from16 v7, v19

    .line 145
    .local v7, "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    move-object/from16 v19, v7

    if-eqz v19, :cond_0

    .line 146
    move-object/from16 v19, v7

    new-instance v20, Lcom/google/zxing/ResultPoint;

    move-object/from16 v30, v20

    move-object/from16 v20, v30

    move-object/from16 v21, v30

    move-object/from16 v22, v5

    const/16 v23, 0x0

    aget v22, v22, v23

    move-object/from16 v23, v5

    const/16 v24, 0x1

    aget v23, v23, v24

    add-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    move/from16 v23, v3

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-direct/range {v21 .. v23}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    invoke-interface/range {v19 .. v20}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 151
    :cond_0
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/zxing/oned/UPCEANReader;->decodeRowStringBuffer:Ljava/lang/StringBuilder;

    move-object/from16 v19, v0

    move-object/from16 v8, v19

    .line 152
    .local v8, "result":Ljava/lang/StringBuilder;
    move-object/from16 v19, v8

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 153
    move-object/from16 v19, v2

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move-object/from16 v22, v8

    invoke-virtual/range {v19 .. v22}, Lcom/google/zxing/oned/UPCEANReader;->decodeMiddle(Lcom/google/zxing/common/BitArray;[ILjava/lang/StringBuilder;)I

    move-result v19

    move/from16 v9, v19

    .line 155
    .local v9, "endStart":I
    move-object/from16 v19, v7

    if-eqz v19, :cond_1

    .line 156
    move-object/from16 v19, v7

    new-instance v20, Lcom/google/zxing/ResultPoint;

    move-object/from16 v30, v20

    move-object/from16 v20, v30

    move-object/from16 v21, v30

    move/from16 v22, v9

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move/from16 v23, v3

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-direct/range {v21 .. v23}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    invoke-interface/range {v19 .. v20}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 161
    :cond_1
    move-object/from16 v19, v2

    move-object/from16 v20, v4

    move/from16 v21, v9

    invoke-virtual/range {v19 .. v21}, Lcom/google/zxing/oned/UPCEANReader;->decodeEnd(Lcom/google/zxing/common/BitArray;I)[I

    move-result-object v19

    move-object/from16 v10, v19

    .line 163
    .local v10, "endRange":[I
    move-object/from16 v19, v7

    if-eqz v19, :cond_2

    .line 164
    move-object/from16 v19, v7

    new-instance v20, Lcom/google/zxing/ResultPoint;

    move-object/from16 v30, v20

    move-object/from16 v20, v30

    move-object/from16 v21, v30

    move-object/from16 v22, v10

    const/16 v23, 0x0

    aget v22, v22, v23

    move-object/from16 v23, v10

    const/16 v24, 0x1

    aget v23, v23, v24

    add-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v22, v22, v23

    move/from16 v23, v3

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    invoke-direct/range {v21 .. v23}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    invoke-interface/range {v19 .. v20}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 172
    :cond_2
    move-object/from16 v19, v10

    const/16 v20, 0x1

    aget v19, v19, v20

    move/from16 v11, v19

    .line 173
    .local v11, "end":I
    move/from16 v19, v11

    move/from16 v20, v11

    move-object/from16 v21, v10

    const/16 v22, 0x0

    aget v21, v21, v22

    sub-int v20, v20, v21

    add-int v19, v19, v20

    move/from16 v12, v19

    .line 174
    .local v12, "quietEnd":I
    move/from16 v19, v12

    move-object/from16 v20, v4

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    move-object/from16 v19, v4

    move/from16 v20, v11

    move/from16 v21, v12

    const/16 v22, 0x0

    invoke-virtual/range {v19 .. v22}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result v19

    if-nez v19, :cond_5

    .line 175
    :cond_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v19

    throw v19

    .line 142
    .end local v7    # "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    .end local v8    # "result":Ljava/lang/StringBuilder;
    .end local v9    # "endStart":I
    .end local v10    # "endRange":[I
    .end local v11    # "end":I
    .end local v12    # "quietEnd":I
    :cond_4
    move-object/from16 v19, v6

    sget-object v20, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface/range {v19 .. v20}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/zxing/ResultPointCallback;

    goto/16 :goto_0

    .line 178
    .restart local v7    # "resultPointCallback":Lcom/google/zxing/ResultPointCallback;
    .restart local v8    # "result":Ljava/lang/StringBuilder;
    .restart local v9    # "endStart":I
    .restart local v10    # "endRange":[I
    .restart local v11    # "end":I
    .restart local v12    # "quietEnd":I
    :cond_5
    move-object/from16 v19, v8

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v13, v19

    .line 179
    .local v13, "resultString":Ljava/lang/String;
    move-object/from16 v19, v2

    move-object/from16 v20, v13

    invoke-virtual/range {v19 .. v20}, Lcom/google/zxing/oned/UPCEANReader;->checkChecksum(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 180
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v19

    throw v19

    .line 183
    :cond_6
    move-object/from16 v19, v5

    const/16 v20, 0x1

    aget v19, v19, v20

    move-object/from16 v20, v5

    const/16 v21, 0x0

    aget v20, v20, v21

    add-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    move/from16 v14, v19

    .line 184
    .local v14, "left":F
    move-object/from16 v19, v10

    const/16 v20, 0x1

    aget v19, v19, v20

    move-object/from16 v20, v10

    const/16 v21, 0x0

    aget v20, v20, v21

    add-int v19, v19, v20

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    div-float v19, v19, v20

    move/from16 v15, v19

    .line 185
    .local v15, "right":F
    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lcom/google/zxing/oned/UPCEANReader;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v19

    move-object/from16 v16, v19

    .line 186
    .local v16, "format":Lcom/google/zxing/BarcodeFormat;
    new-instance v19, Lcom/google/zxing/Result;

    move-object/from16 v30, v19

    move-object/from16 v19, v30

    move-object/from16 v20, v30

    move-object/from16 v21, v13

    const/16 v22, 0x0

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    move-object/from16 v23, v0

    move-object/from16 v30, v23

    move-object/from16 v23, v30

    move-object/from16 v24, v30

    const/16 v25, 0x0

    new-instance v26, Lcom/google/zxing/ResultPoint;

    move-object/from16 v30, v26

    move-object/from16 v26, v30

    move-object/from16 v27, v30

    move/from16 v28, v14

    move/from16 v29, v3

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-direct/range {v27 .. v29}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v26, v24, v25

    move-object/from16 v30, v23

    move-object/from16 v23, v30

    move-object/from16 v24, v30

    const/16 v25, 0x1

    new-instance v26, Lcom/google/zxing/ResultPoint;

    move-object/from16 v30, v26

    move-object/from16 v26, v30

    move-object/from16 v27, v30

    move/from16 v28, v15

    move/from16 v29, v3

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-direct/range {v27 .. v29}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v26, v24, v25

    move-object/from16 v24, v16

    invoke-direct/range {v20 .. v24}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    move-object/from16 v17, v19

    .line 194
    .local v17, "decodeResult":Lcom/google/zxing/Result;
    move-object/from16 v19, v2

    :try_start_0
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/zxing/oned/UPCEANReader;->extensionReader:Lcom/google/zxing/oned/UPCEANExtensionSupport;

    move-object/from16 v19, v0

    move/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v10

    const/16 v23, 0x1

    aget v22, v22, v23

    invoke-virtual/range {v19 .. v22}, Lcom/google/zxing/oned/UPCEANExtensionSupport;->decodeRow(ILcom/google/zxing/common/BitArray;I)Lcom/google/zxing/Result;

    move-result-object v19

    move-object/from16 v18, v19

    .line 195
    .local v18, "extensionResult":Lcom/google/zxing/Result;
    move-object/from16 v19, v17

    sget-object v20, Lcom/google/zxing/ResultMetadataType;->UPC_EAN_EXTENSION:Lcom/google/zxing/ResultMetadataType;

    move-object/from16 v21, v18

    invoke-virtual/range {v21 .. v21}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 196
    move-object/from16 v19, v17

    move-object/from16 v20, v18

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/google/zxing/Result;->putAllMetadata(Ljava/util/Map;)V

    .line 197
    move-object/from16 v19, v17

    move-object/from16 v20, v18

    invoke-virtual/range {v20 .. v20}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/google/zxing/Result;->addResultPoints([Lcom/google/zxing/ResultPoint;)V
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .line 202
    .end local v18    # "extensionResult":Lcom/google/zxing/Result;
    :goto_1
    move-object/from16 v19, v16

    sget-object v20, Lcom/google/zxing/BarcodeFormat;->EAN_13:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_7

    move-object/from16 v19, v16

    sget-object v20, Lcom/google/zxing/BarcodeFormat;->UPC_A:Lcom/google/zxing/BarcodeFormat;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 203
    :cond_7
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/google/zxing/oned/UPCEANReader;->eanManSupport:Lcom/google/zxing/oned/EANManufacturerOrgSupport;

    move-object/from16 v19, v0

    move-object/from16 v20, v13

    invoke-virtual/range {v19 .. v20}, Lcom/google/zxing/oned/EANManufacturerOrgSupport;->lookupCountryIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v18, v19

    .line 204
    .local v18, "countryID":Ljava/lang/String;
    move-object/from16 v19, v18

    if-eqz v19, :cond_8

    .line 205
    move-object/from16 v19, v17

    sget-object v20, Lcom/google/zxing/ResultMetadataType;->POSSIBLE_COUNTRY:Lcom/google/zxing/ResultMetadataType;

    move-object/from16 v21, v18

    invoke-virtual/range {v19 .. v21}, Lcom/google/zxing/Result;->putMetadata(Lcom/google/zxing/ResultMetadataType;Ljava/lang/Object;)V

    .line 209
    .end local v18    # "countryID":Ljava/lang/String;
    :cond_8
    move-object/from16 v19, v17

    move-object/from16 v2, v19

    .end local v2    # "this":Lcom/google/zxing/oned/UPCEANReader;
    return-object v2

    .line 198
    .restart local v2    # "this":Lcom/google/zxing/oned/UPCEANReader;
    :catch_0
    move-exception v19

    move-object/from16 v18, v19

    goto :goto_1
.end method

.method abstract getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;
.end method
