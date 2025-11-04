.class public final Lcom/google/zxing/common/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field private static final ASSUME_SHIFT_JIS:Z

.field private static final EUC_JP:Ljava/lang/String; = "EUC_JP"

.field public static final GB2312:Ljava/lang/String; = "GB2312"

.field private static final ISO88591:Ljava/lang/String; = "ISO8859_1"

.field private static final PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

.field public static final SHIFT_JIS:Ljava/lang/String; = "SJIS"

.field private static final UTF8:Ljava/lang/String; = "UTF8"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const-string/jumbo v0, "file.encoding"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, "SJIS"

    sget-object v1, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "EUC_JP"

    sget-object v1, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/zxing/common/StringUtils;->ASSUME_SHIFT_JIS:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/common/StringUtils;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static guessEncoding([BLjava/util/Map;)Ljava/lang/String;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 52
    move-object/from16 v2, p0

    .local v2, "bytes":[B
    move-object/from16 v3, p1

    .local v3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move-object/from16 v22, v3

    if-eqz v22, :cond_0

    .line 53
    move-object/from16 v22, v3

    sget-object v23, Lcom/google/zxing/DecodeHintType;->CHARACTER_SET:Lcom/google/zxing/DecodeHintType;

    invoke-interface/range {v22 .. v23}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v4, v22

    .line 54
    .local v4, "characterSet":Ljava/lang/String;
    move-object/from16 v22, v4

    if-eqz v22, :cond_0

    .line 55
    move-object/from16 v22, v4

    move-object/from16 v2, v22

    .line 210
    .end local v2    # "bytes":[B
    .end local v4    # "characterSet":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 60
    .restart local v2    # "bytes":[B
    :cond_0
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v4, v22

    .line 61
    .local v4, "length":I
    const/16 v22, 0x1

    move/from16 v5, v22

    .line 62
    .local v5, "canBeISO88591":Z
    const/16 v22, 0x1

    move/from16 v6, v22

    .line 63
    .local v6, "canBeShiftJIS":Z
    const/16 v22, 0x1

    move/from16 v7, v22

    .line 64
    .local v7, "canBeUTF8":Z
    const/16 v22, 0x0

    move/from16 v8, v22

    .line 66
    .local v8, "utf8BytesLeft":I
    const/16 v22, 0x0

    move/from16 v9, v22

    .line 67
    .local v9, "utf2BytesChars":I
    const/16 v22, 0x0

    move/from16 v10, v22

    .line 68
    .local v10, "utf3BytesChars":I
    const/16 v22, 0x0

    move/from16 v11, v22

    .line 69
    .local v11, "utf4BytesChars":I
    const/16 v22, 0x0

    move/from16 v12, v22

    .line 71
    .local v12, "sjisBytesLeft":I
    const/16 v22, 0x0

    move/from16 v13, v22

    .line 73
    .local v13, "sjisKatakanaChars":I
    const/16 v22, 0x0

    move/from16 v14, v22

    .line 74
    .local v14, "sjisCurKatakanaWordLength":I
    const/16 v22, 0x0

    move/from16 v15, v22

    .line 75
    .local v15, "sjisCurDoubleBytesWordLength":I
    const/16 v22, 0x0

    move/from16 v16, v22

    .line 76
    .local v16, "sjisMaxKatakanaWordLength":I
    const/16 v22, 0x0

    move/from16 v17, v22

    .line 79
    .local v17, "sjisMaxDoubleBytesWordLength":I
    const/16 v22, 0x0

    move/from16 v18, v22

    .line 81
    .local v18, "isoHighOther":I
    move-object/from16 v22, v2

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_6

    move-object/from16 v22, v2

    const/16 v23, 0x0

    aget-byte v22, v22, v23

    const/16 v23, -0x11

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    move-object/from16 v22, v2

    const/16 v23, 0x1

    aget-byte v22, v22, v23

    const/16 v23, -0x45

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    move-object/from16 v22, v2

    const/16 v23, 0x2

    aget-byte v22, v22, v23

    const/16 v23, -0x41

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    const/16 v22, 0x1

    :goto_1
    move/from16 v19, v22

    .line 86
    .local v19, "utf8bom":Z
    const/16 v22, 0x0

    move/from16 v20, v22

    .line 87
    .local v20, "i":I
    :goto_2
    move/from16 v22, v20

    move/from16 v23, v4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_15

    move/from16 v22, v5

    if-nez v22, :cond_1

    move/from16 v22, v6

    if-nez v22, :cond_1

    move/from16 v22, v7

    if-eqz v22, :cond_15

    .line 90
    :cond_1
    move-object/from16 v22, v2

    move/from16 v23, v20

    aget-byte v22, v22, v23

    const/16 v23, 0xff

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    move/from16 v21, v22

    .line 93
    .local v21, "value":I
    move/from16 v22, v7

    if-eqz v22, :cond_2

    .line 94
    move/from16 v22, v8

    if-lez v22, :cond_8

    .line 95
    move/from16 v22, v21

    const/16 v23, 0x80

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0x80

    move/from16 v22, v0

    if-nez v22, :cond_7

    .line 96
    const/16 v22, 0x0

    move/from16 v7, v22

    .line 127
    :cond_2
    :goto_3
    move/from16 v22, v5

    if-eqz v22, :cond_3

    .line 128
    move/from16 v22, v21

    const/16 v23, 0x7f

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_d

    move/from16 v22, v21

    const/16 v23, 0xa0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_d

    .line 129
    const/16 v22, 0x0

    move/from16 v5, v22

    .line 142
    :cond_3
    :goto_4
    move/from16 v22, v6

    if-eqz v22, :cond_5

    .line 143
    move/from16 v22, v12

    if-lez v22, :cond_10

    .line 144
    move/from16 v22, v21

    const/16 v23, 0x40

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_4

    move/from16 v22, v21

    const/16 v23, 0x7f

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_4

    move/from16 v22, v21

    const/16 v23, 0xfc

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_f

    .line 145
    :cond_4
    const/16 v22, 0x0

    move/from16 v6, v22

    .line 88
    :cond_5
    :goto_5
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_2

    .line 81
    .end local v19    # "utf8bom":Z
    .end local v20    # "i":I
    .end local v21    # "value":I
    :cond_6
    const/16 v22, 0x0

    goto/16 :goto_1

    .line 98
    .restart local v19    # "utf8bom":Z
    .restart local v20    # "i":I
    .restart local v21    # "value":I
    :cond_7
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 100
    :cond_8
    move/from16 v22, v21

    const/16 v23, 0x80

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0x80

    move/from16 v22, v0

    if-eqz v22, :cond_2

    .line 101
    move/from16 v22, v21

    const/16 v23, 0x40

    and-int/lit8 v22, v22, 0x40

    if-nez v22, :cond_9

    .line 102
    const/16 v22, 0x0

    move/from16 v7, v22

    goto :goto_3

    .line 104
    :cond_9
    add-int/lit8 v8, v8, 0x1

    .line 105
    move/from16 v22, v21

    const/16 v23, 0x20

    and-int/lit8 v22, v22, 0x20

    if-nez v22, :cond_a

    .line 106
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 108
    :cond_a
    add-int/lit8 v8, v8, 0x1

    .line 109
    move/from16 v22, v21

    const/16 v23, 0x10

    and-int/lit8 v22, v22, 0x10

    if-nez v22, :cond_b

    .line 110
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 112
    :cond_b
    add-int/lit8 v8, v8, 0x1

    .line 113
    move/from16 v22, v21

    const/16 v23, 0x8

    and-int/lit8 v22, v22, 0x8

    if-nez v22, :cond_c

    .line 114
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 116
    :cond_c
    const/16 v22, 0x0

    move/from16 v7, v22

    goto/16 :goto_3

    .line 130
    :cond_d
    move/from16 v22, v21

    const/16 v23, 0x9f

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_3

    .line 131
    move/from16 v22, v21

    const/16 v23, 0xc0

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_e

    move/from16 v22, v21

    const/16 v23, 0xd7

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_e

    move/from16 v22, v21

    const/16 v23, 0xf7

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    .line 132
    :cond_e
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_4

    .line 147
    :cond_f
    add-int/lit8 v12, v12, -0x1

    goto/16 :goto_5

    .line 149
    :cond_10
    move/from16 v22, v21

    const/16 v23, 0x80

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_11

    move/from16 v22, v21

    const/16 v23, 0xa0

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_11

    move/from16 v22, v21

    const/16 v23, 0xef

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_12

    .line 150
    :cond_11
    const/16 v22, 0x0

    move/from16 v6, v22

    goto/16 :goto_5

    .line 151
    :cond_12
    move/from16 v22, v21

    const/16 v23, 0xa0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_13

    move/from16 v22, v21

    const/16 v23, 0xe0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_13

    .line 152
    add-int/lit8 v13, v13, 0x1

    .line 153
    const/16 v22, 0x0

    move/from16 v15, v22

    .line 154
    add-int/lit8 v14, v14, 0x1

    .line 155
    move/from16 v22, v14

    move/from16 v23, v16

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_5

    .line 156
    move/from16 v22, v14

    move/from16 v16, v22

    goto/16 :goto_5

    .line 158
    :cond_13
    move/from16 v22, v21

    const/16 v23, 0x7f

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_14

    .line 159
    add-int/lit8 v12, v12, 0x1

    .line 161
    const/16 v22, 0x0

    move/from16 v14, v22

    .line 162
    add-int/lit8 v15, v15, 0x1

    .line 163
    move/from16 v22, v15

    move/from16 v23, v17

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_5

    .line 164
    move/from16 v22, v15

    move/from16 v17, v22

    goto/16 :goto_5

    .line 168
    :cond_14
    const/16 v22, 0x0

    move/from16 v14, v22

    .line 169
    const/16 v22, 0x0

    move/from16 v15, v22

    goto/16 :goto_5

    .line 174
    .end local v21    # "value":I
    :cond_15
    move/from16 v22, v7

    if-eqz v22, :cond_16

    move/from16 v22, v8

    if-lez v22, :cond_16

    .line 175
    const/16 v22, 0x0

    move/from16 v7, v22

    .line 177
    :cond_16
    move/from16 v22, v6

    if-eqz v22, :cond_17

    move/from16 v22, v12

    if-lez v22, :cond_17

    .line 178
    const/16 v22, 0x0

    move/from16 v6, v22

    .line 182
    :cond_17
    move/from16 v22, v7

    if-eqz v22, :cond_19

    move/from16 v22, v19

    if-nez v22, :cond_18

    move/from16 v22, v9

    move/from16 v23, v10

    add-int v22, v22, v23

    move/from16 v23, v11

    add-int v22, v22, v23

    if-lez v22, :cond_19

    .line 183
    :cond_18
    const-string/jumbo v22, "UTF8"

    move-object/from16 v2, v22

    goto/16 :goto_0

    .line 186
    :cond_19
    move/from16 v22, v6

    if-eqz v22, :cond_1b

    sget-boolean v22, Lcom/google/zxing/common/StringUtils;->ASSUME_SHIFT_JIS:Z

    if-nez v22, :cond_1a

    move/from16 v22, v16

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_1a

    move/from16 v22, v17

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_1b

    .line 187
    :cond_1a
    const-string/jumbo v22, "SJIS"

    move-object/from16 v2, v22

    goto/16 :goto_0

    .line 194
    :cond_1b
    move/from16 v22, v5

    if-eqz v22, :cond_1f

    move/from16 v22, v6

    if-eqz v22, :cond_1f

    .line 195
    move/from16 v22, v16

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1c

    move/from16 v22, v13

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_1d

    :cond_1c
    move/from16 v22, v18

    const/16 v23, 0xa

    mul-int/lit8 v22, v22, 0xa

    move/from16 v23, v4

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_1e

    :cond_1d
    const-string/jumbo v22, "SJIS"

    :goto_6
    move-object/from16 v2, v22

    goto/16 :goto_0

    :cond_1e
    const-string/jumbo v22, "ISO8859_1"

    goto :goto_6

    .line 200
    :cond_1f
    move/from16 v22, v5

    if-eqz v22, :cond_20

    .line 201
    const-string/jumbo v22, "ISO8859_1"

    move-object/from16 v2, v22

    goto/16 :goto_0

    .line 203
    :cond_20
    move/from16 v22, v6

    if-eqz v22, :cond_21

    .line 204
    const-string/jumbo v22, "SJIS"

    move-object/from16 v2, v22

    goto/16 :goto_0

    .line 206
    :cond_21
    move/from16 v22, v7

    if-eqz v22, :cond_22

    .line 207
    const-string/jumbo v22, "UTF8"

    move-object/from16 v2, v22

    goto/16 :goto_0

    .line 210
    :cond_22
    sget-object v22, Lcom/google/zxing/common/StringUtils;->PLATFORM_DEFAULT_ENCODING:Ljava/lang/String;

    move-object/from16 v2, v22

    goto/16 :goto_0
.end method
