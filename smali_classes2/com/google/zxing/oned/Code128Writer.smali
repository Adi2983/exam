.class public final Lcom/google/zxing/oned/Code128Writer;
.super Lcom/google/zxing/oned/OneDimensionalCodeWriter;
.source "Code128Writer.java"


# static fields
.field private static final CODE_CODE_B:I = 0x64

.field private static final CODE_CODE_C:I = 0x63

.field private static final CODE_FNC_1:I = 0x66

.field private static final CODE_FNC_2:I = 0x61

.field private static final CODE_FNC_3:I = 0x60

.field private static final CODE_FNC_4_B:I = 0x64

.field private static final CODE_START_B:I = 0x68

.field private static final CODE_START_C:I = 0x69

.field private static final CODE_STOP:I = 0x6a

.field private static final ESCAPE_FNC_1:C = '\u00f1'

.field private static final ESCAPE_FNC_2:C = '\u00f2'

.field private static final ESCAPE_FNC_3:C = '\u00f3'

.field private static final ESCAPE_FNC_4:C = '\u00f4'


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/Code128Writer;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/zxing/oned/OneDimensionalCodeWriter;-><init>()V

    return-void
.end method

.method private static isDigits(Ljava/lang/CharSequence;II)Z
    .locals 9

    .prologue
    .line 189
    move-object v0, p0

    .local v0, "value":Ljava/lang/CharSequence;
    move v1, p1

    .local v1, "start":I
    move v2, p2

    .local v2, "length":I
    move v7, v1

    move v8, v2

    add-int/2addr v7, v8

    move v3, v7

    .line 190
    .local v3, "end":I
    move-object v7, v0

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move v4, v7

    .line 191
    .local v4, "last":I
    move v7, v1

    move v5, v7

    .local v5, "i":I
    :goto_0
    move v7, v5

    move v8, v3

    if-ge v7, v8, :cond_3

    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_3

    .line 192
    move-object v7, v0

    move v8, v5

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    move v6, v7

    .line 193
    .local v6, "c":C
    move v7, v6

    const/16 v8, 0x30

    if-lt v7, v8, :cond_0

    move v7, v6

    const/16 v8, 0x39

    if-le v7, v8, :cond_2

    .line 194
    :cond_0
    move v7, v6

    const/16 v8, 0xf1

    if-eq v7, v8, :cond_1

    .line 195
    const/4 v7, 0x0

    move v0, v7

    .line 200
    .end local v0    # "value":Ljava/lang/CharSequence;
    .end local v6    # "c":C
    :goto_1
    return v0

    .line 197
    .restart local v0    # "value":Ljava/lang/CharSequence;
    .restart local v6    # "c":C
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 191
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 200
    .end local v6    # "c":C
    :cond_3
    move v7, v3

    move v8, v4

    if-gt v7, v8, :cond_4

    const/4 v7, 0x1

    :goto_2
    move v0, v7

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    goto :goto_2
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
    .line 58
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/oned/Code128Writer;
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

    sget-object v7, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    if-eq v6, v7, :cond_0

    .line 59
    new-instance v6, Ljava/lang/IllegalArgumentException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Can only encode CODE_128, but got "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 61
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

    .end local v0    # "this":Lcom/google/zxing/oned/Code128Writer;
    return-object v0
.end method

.method public encode(Ljava/lang/String;)[Z
    .locals 23

    .prologue
    .line 66
    move-object/from16 v2, p0

    .local v2, "this":Lcom/google/zxing/oned/Code128Writer;
    move-object/from16 v3, p1

    .local v3, "contents":Ljava/lang/String;
    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v4, v17

    .line 68
    .local v4, "length":I
    move/from16 v17, v4

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_0

    move/from16 v17, v4

    const/16 v18, 0x50

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    .line 69
    :cond_0
    new-instance v17, Ljava/lang/IllegalArgumentException;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v22, v19

    move-object/from16 v19, v22

    move-object/from16 v20, v22

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Contents length should be between 1 and 80 characters, but got "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move/from16 v20, v4

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 73
    :cond_1
    const/16 v17, 0x0

    move/from16 v5, v17

    .local v5, "i":I
    :goto_0
    move/from16 v17, v5

    move/from16 v18, v4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    .line 74
    move-object/from16 v17, v3

    move/from16 v18, v5

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v17

    move/from16 v6, v17

    .line 75
    .local v6, "c":C
    move/from16 v17, v6

    const/16 v18, 0x20

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_2

    move/from16 v17, v6

    const/16 v18, 0x7e

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_3

    .line 76
    :cond_2
    move/from16 v17, v6

    packed-switch v17, :pswitch_data_0

    .line 83
    new-instance v17, Ljava/lang/IllegalArgumentException;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    new-instance v19, Ljava/lang/StringBuilder;

    move-object/from16 v22, v19

    move-object/from16 v19, v22

    move-object/from16 v20, v22

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "Bad character in input: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move/from16 v20, v6

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 81
    .line 73
    :cond_3
    :pswitch_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 88
    .end local v6    # "c":C
    :cond_4
    new-instance v17, Ljava/util/ArrayList;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v5, v17

    .line 89
    .local v5, "patterns":Ljava/util/Collection;, "Ljava/util/Collection<[I>;"
    const/16 v17, 0x0

    move/from16 v6, v17

    .line 90
    .local v6, "checkSum":I
    const/16 v17, 0x1

    move/from16 v7, v17

    .line 91
    .local v7, "checkWeight":I
    const/16 v17, 0x0

    move/from16 v8, v17

    .line 92
    .local v8, "codeSet":I
    const/16 v17, 0x0

    move/from16 v9, v17

    .line 94
    .local v9, "position":I
    :goto_1
    move/from16 v17, v9

    move/from16 v18, v4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_c

    .line 96
    move/from16 v17, v8

    const/16 v18, 0x63

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    const/16 v17, 0x2

    :goto_2
    move/from16 v10, v17

    .line 98
    .local v10, "requiredDigitCount":I
    move-object/from16 v17, v3

    move/from16 v18, v9

    move/from16 v19, v10

    invoke-static/range {v17 .. v19}, Lcom/google/zxing/oned/Code128Writer;->isDigits(Ljava/lang/CharSequence;II)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 99
    const/16 v17, 0x63

    move/from16 v11, v17

    .line 106
    .local v11, "newCodeSet":I
    :goto_3
    move/from16 v17, v11

    move/from16 v18, v8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 108
    move/from16 v17, v8

    const/16 v18, 0x64

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 109
    move-object/from16 v17, v3

    move/from16 v18, v9

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x20

    add-int/lit8 v17, v17, -0x20

    move/from16 v12, v17

    .line 110
    .local v12, "patternIndex":I
    add-int/lit8 v9, v9, 0x1

    .line 154
    :goto_4
    move-object/from16 v17, v5

    sget-object v18, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    move/from16 v19, v12

    aget-object v18, v18, v19

    invoke-interface/range {v17 .. v18}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v17

    .line 157
    move/from16 v17, v6

    move/from16 v18, v12

    move/from16 v19, v7

    mul-int v18, v18, v19

    add-int v17, v17, v18

    move/from16 v6, v17

    .line 158
    move/from16 v17, v9

    if-eqz v17, :cond_5

    .line 159
    add-int/lit8 v7, v7, 0x1

    .line 161
    :cond_5
    goto :goto_1

    .line 96
    .end local v10    # "requiredDigitCount":I
    .end local v11    # "newCodeSet":I
    .end local v12    # "patternIndex":I
    :cond_6
    const/16 v17, 0x4

    goto :goto_2

    .line 101
    .restart local v10    # "requiredDigitCount":I
    :cond_7
    const/16 v17, 0x64

    move/from16 v11, v17

    .restart local v11    # "newCodeSet":I
    goto :goto_3

    .line 112
    :cond_8
    move-object/from16 v17, v3

    move/from16 v18, v9

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->charAt(I)C

    move-result v17

    packed-switch v17, :pswitch_data_1

    .line 130
    move-object/from16 v17, v3

    move/from16 v18, v9

    move/from16 v19, v9

    const/16 v20, 0x2

    add-int/lit8 v19, v19, 0x2

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v12, v17

    .line 131
    .restart local v12    # "patternIndex":I
    add-int/lit8 v9, v9, 0x2

    .line 132
    goto :goto_4

    .line 114
    .end local v12    # "patternIndex":I
    :pswitch_1
    const/16 v17, 0x66

    move/from16 v12, v17

    .line 115
    .restart local v12    # "patternIndex":I
    add-int/lit8 v9, v9, 0x1

    .line 116
    goto :goto_4

    .line 118
    .end local v12    # "patternIndex":I
    :pswitch_2
    const/16 v17, 0x61

    move/from16 v12, v17

    .line 119
    .restart local v12    # "patternIndex":I
    add-int/lit8 v9, v9, 0x1

    .line 120
    goto :goto_4

    .line 122
    .end local v12    # "patternIndex":I
    :pswitch_3
    const/16 v17, 0x60

    move/from16 v12, v17

    .line 123
    .restart local v12    # "patternIndex":I
    add-int/lit8 v9, v9, 0x1

    .line 124
    goto :goto_4

    .line 126
    .end local v12    # "patternIndex":I
    :pswitch_4
    const/16 v17, 0x64

    move/from16 v12, v17

    .line 127
    .restart local v12    # "patternIndex":I
    add-int/lit8 v9, v9, 0x1

    .line 128
    goto :goto_4

    .line 138
    .end local v12    # "patternIndex":I
    :cond_9
    move/from16 v17, v8

    if-nez v17, :cond_b

    .line 140
    move/from16 v17, v11

    const/16 v18, 0x64

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 141
    const/16 v17, 0x68

    move/from16 v12, v17

    .line 150
    .restart local v12    # "patternIndex":I
    :goto_5
    move/from16 v17, v11

    move/from16 v8, v17

    goto :goto_4

    .line 144
    .end local v12    # "patternIndex":I
    :cond_a
    const/16 v17, 0x69

    move/from16 v12, v17

    .restart local v12    # "patternIndex":I
    goto :goto_5

    .line 148
    .end local v12    # "patternIndex":I
    :cond_b
    move/from16 v17, v11

    move/from16 v12, v17

    .restart local v12    # "patternIndex":I
    goto :goto_5

    .line 164
    .end local v10    # "requiredDigitCount":I
    .end local v11    # "newCodeSet":I
    .end local v12    # "patternIndex":I
    :cond_c
    move/from16 v17, v6

    const/16 v18, 0x67

    rem-int/lit8 v17, v17, 0x67

    move/from16 v6, v17

    .line 165
    move-object/from16 v17, v5

    sget-object v18, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    move/from16 v19, v6

    aget-object v18, v18, v19

    invoke-interface/range {v17 .. v18}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v17

    .line 168
    move-object/from16 v17, v5

    sget-object v18, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    const/16 v19, 0x6a

    aget-object v18, v18, v19

    invoke-interface/range {v17 .. v18}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v17

    .line 171
    const/16 v17, 0x0

    move/from16 v10, v17

    .line 172
    .local v10, "codeWidth":I
    move-object/from16 v17, v5

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move-object/from16 v11, v17

    :goto_6
    move-object/from16 v17, v11

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_e

    move-object/from16 v17, v11

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [I

    move-object/from16 v12, v17

    .line 173
    .local v12, "pattern":[I
    move-object/from16 v17, v12

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
    :goto_7
    move/from16 v17, v15

    move/from16 v18, v14

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_d

    move-object/from16 v17, v13

    move/from16 v18, v15

    aget v17, v17, v18

    move/from16 v16, v17

    .line 174
    .local v16, "width":I
    move/from16 v17, v10

    move/from16 v18, v16

    add-int v17, v17, v18

    move/from16 v10, v17

    .line 173
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .end local v16    # "width":I
    :cond_d
    goto :goto_6

    .line 179
    .end local v12    # "pattern":[I
    .end local v13    # "arr$":[I
    .end local v14    # "len$":I
    .end local v15    # "i$":I
    :cond_e
    move/from16 v17, v10

    move/from16 v0, v17

    new-array v0, v0, [Z

    move-object/from16 v17, v0

    move-object/from16 v11, v17

    .line 180
    .local v11, "result":[Z
    const/16 v17, 0x0

    move/from16 v12, v17

    .line 181
    .local v12, "pos":I
    move-object/from16 v17, v5

    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move-object/from16 v13, v17

    .local v13, "i$":Ljava/util/Iterator;
    :goto_8
    move-object/from16 v17, v13

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_f

    move-object/from16 v17, v13

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [I

    move-object/from16 v14, v17

    .line 182
    .local v14, "pattern":[I
    move/from16 v17, v12

    move-object/from16 v18, v11

    move/from16 v19, v12

    move-object/from16 v20, v14

    const/16 v21, 0x1

    invoke-static/range {v18 .. v21}, Lcom/google/zxing/oned/Code128Writer;->appendPattern([ZI[IZ)I

    move-result v18

    add-int v17, v17, v18

    move/from16 v12, v17

    goto :goto_8

    .line 185
    .end local v14    # "pattern":[I
    :cond_f
    move-object/from16 v17, v11

    move-object/from16 v2, v17

    .end local v2    # "this":Lcom/google/zxing/oned/Code128Writer;
    return-object v2

    .line 76
    :pswitch_data_0
    .packed-switch 0xf1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 112
    :pswitch_data_1
    .packed-switch 0xf1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
