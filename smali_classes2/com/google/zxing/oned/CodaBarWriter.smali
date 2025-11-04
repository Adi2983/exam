.class public final Lcom/google/zxing/oned/CodaBarWriter;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "CodaBarWriter.java"


# static fields
.field private static final END_CHARS:[C

.field private static final START_CHARS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/oned/CodaBarWriter;->START_CHARS:[C

    .line 31
    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/oned/CodaBarWriter;->END_CHARS:[C

    return-void

    .line 30
    nop

    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
    .end array-data

    .line 31
    :array_1
    .array-data 2
        0x54s
        0x4es
        0x2as
        0x45s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/CodaBarWriter;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Ljava/lang/String;)[Z
    .locals 18

    .prologue
    .line 40
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/oned/CodaBarWriter;
    move-object/from16 v1, p1

    .local v1, "contents":Ljava/lang/String;
    sget-object v12, Lcom/google/zxing/oned/CodaBarWriter;->START_CHARS:[C

    move-object v13, v1

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v13

    invoke-static {v12, v13}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v12

    if-nez v12, :cond_0

    .line 41
    new-instance v12, Ljava/lang/IllegalArgumentException;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Codabar should start with one of the following: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/google/zxing/oned/CodaBarWriter;->START_CHARS:[C

    invoke-static {v15}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 44
    :cond_0
    sget-object v12, Lcom/google/zxing/oned/CodaBarWriter;->END_CHARS:[C

    move-object v13, v1

    move-object v14, v1

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v13

    invoke-static {v12, v13}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v12

    if-nez v12, :cond_1

    .line 45
    new-instance v12, Ljava/lang/IllegalArgumentException;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Codabar should end with one of the following: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/google/zxing/oned/CodaBarWriter;->END_CHARS:[C

    invoke-static {v15}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 49
    :cond_1
    const/16 v12, 0x14

    move v2, v12

    .line 50
    .local v2, "resultLength":I
    const/4 v12, 0x4

    new-array v12, v12, [C

    fill-array-data v12, :array_0

    move-object v3, v12

    .line 51
    .local v3, "charsWhichAreTenLengthEachAfterDecoded":[C
    const/4 v12, 0x1

    move v4, v12

    .local v4, "i":I
    :goto_0
    move v12, v4

    move-object v13, v1

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    if-ge v12, v13, :cond_5

    .line 52
    move-object v12, v1

    move v13, v4

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->isDigit(C)Z

    move-result v12

    if-nez v12, :cond_2

    move-object v12, v1

    move v13, v4

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x2d

    if-eq v12, v13, :cond_2

    move-object v12, v1

    move v13, v4

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x24

    if-ne v12, v13, :cond_3

    .line 54
    :cond_2
    add-int/lit8 v2, v2, 0x9

    .line 51
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 55
    :cond_3
    move-object v12, v3

    move-object v13, v1

    move v14, v4

    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v12, v13}, Lcom/google/zxing/oned/CodaBarReader;->arrayContains([CC)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 57
    add-int/lit8 v2, v2, 0xa

    goto :goto_1

    .line 59
    :cond_4
    new-instance v12, Ljava/lang/IllegalArgumentException;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v17, v14

    move-object/from16 v14, v17

    move-object/from16 v15, v17

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Cannot encode : \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v15, v1

    move/from16 v16, v4

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x27

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 63
    :cond_5
    move v12, v2

    move-object v13, v1

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    add-int/2addr v12, v13

    move v2, v12

    .line 65
    move v12, v2

    new-array v12, v12, [Z

    move-object v4, v12

    .line 66
    .local v4, "result":[Z
    const/4 v12, 0x0

    move v5, v12

    .line 67
    .local v5, "position":I
    const/4 v12, 0x0

    move v6, v12

    .local v6, "index":I
    :goto_2
    move v12, v6

    move-object v13, v1

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v12, v13, :cond_e

    .line 68
    move-object v12, v1

    move v13, v6

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v12

    move v7, v12

    .line 69
    .local v7, "c":C
    move v12, v6

    move-object v13, v1

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    if-ne v12, v13, :cond_6

    .line 71
    move v12, v7

    sparse-switch v12, :sswitch_data_0

    .line 86
    :cond_6
    :goto_3
    const/4 v12, 0x0

    move v8, v12

    .line 87
    .local v8, "code":I
    const/4 v12, 0x0

    move v9, v12

    .local v9, "i":I
    :goto_4
    move v12, v9

    sget-object v13, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    array-length v13, v13

    if-ge v12, v13, :cond_7

    .line 89
    move v12, v7

    sget-object v13, Lcom/google/zxing/oned/CodaBarReader;->ALPHABET:[C

    move v14, v9

    aget-char v13, v13, v14

    if-ne v12, v13, :cond_9

    .line 90
    sget-object v12, Lcom/google/zxing/oned/CodaBarReader;->CHARACTER_ENCODINGS:[I

    move v13, v9

    aget v12, v12, v13

    move v8, v12

    .line 94
    :cond_7
    const/4 v12, 0x1

    move v9, v12

    .line 95
    .local v9, "color":Z
    const/4 v12, 0x0

    move v10, v12

    .line 96
    .local v10, "counter":I
    const/4 v12, 0x0

    move v11, v12

    .line 97
    .local v11, "bit":I
    :goto_5
    move v12, v11

    const/4 v13, 0x7

    if-ge v12, v13, :cond_c

    .line 98
    move-object v12, v4

    move v13, v5

    move v14, v9

    aput-boolean v14, v12, v13

    .line 99
    add-int/lit8 v5, v5, 0x1

    .line 100
    move v12, v8

    const/4 v13, 0x6

    move v14, v11

    rsub-int/lit8 v13, v14, 0x6

    shr-int/2addr v12, v13

    const/4 v13, 0x1

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_8

    move v12, v10

    const/4 v13, 0x1

    if-ne v12, v13, :cond_b

    .line 101
    :cond_8
    move v12, v9

    if-nez v12, :cond_a

    const/4 v12, 0x1

    :goto_6
    move v9, v12

    .line 102
    add-int/lit8 v11, v11, 0x1

    .line 103
    const/4 v12, 0x0

    move v10, v12

    goto :goto_5

    .line 73
    .end local v8    # "code":I
    .end local v9    # "color":Z
    .end local v10    # "counter":I
    .end local v11    # "bit":I
    :sswitch_0
    const/16 v12, 0x41

    move v7, v12

    .line 74
    goto :goto_3

    .line 76
    :sswitch_1
    const/16 v12, 0x42

    move v7, v12

    .line 77
    goto :goto_3

    .line 79
    :sswitch_2
    const/16 v12, 0x43

    move v7, v12

    .line 80
    goto :goto_3

    .line 82
    :sswitch_3
    const/16 v12, 0x44

    move v7, v12

    goto :goto_3

    .line 87
    .restart local v8    # "code":I
    .local v9, "i":I
    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 101
    .local v9, "color":Z
    .restart local v10    # "counter":I
    .restart local v11    # "bit":I
    :cond_a
    const/4 v12, 0x0

    goto :goto_6

    .line 105
    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 108
    :cond_c
    move v12, v6

    move-object v13, v1

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    if-ge v12, v13, :cond_d

    .line 109
    move-object v12, v4

    move v13, v5

    const/4 v14, 0x0

    aput-boolean v14, v12, v13

    .line 110
    add-int/lit8 v5, v5, 0x1

    .line 67
    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 113
    .end local v7    # "c":C
    .end local v8    # "code":I
    .end local v9    # "color":Z
    .end local v10    # "counter":I
    .end local v11    # "bit":I
    :cond_e
    move-object v12, v4

    move-object v0, v12

    .end local v0    # "this":Lcom/google/zxing/oned/CodaBarWriter;
    return-object v0

    .line 50
    :array_0
    .array-data 2
        0x2fs
        0x3as
        0x2bs
        0x2es
    .end array-data

    .line 71
    :sswitch_data_0
    .sparse-switch
        0x2a -> :sswitch_2
        0x45 -> :sswitch_3
        0x4e -> :sswitch_1
        0x54 -> :sswitch_0
    .end sparse-switch
.end method
