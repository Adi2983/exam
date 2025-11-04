.class public final Lcom/google/zxing/client/result/VCardResultParser;
.super Lcom/google/zxing/client/result/ResultParser;
.source "VCardResultParser.java"


# static fields
.field private static final BEGIN_VCARD:Ljava/util/regex/Pattern;

.field private static final CR_LF_SPACE_TAB:Ljava/util/regex/Pattern;

.field private static final EQUALS:Ljava/util/regex/Pattern;

.field private static final NEWLINE_ESCAPE:Ljava/util/regex/Pattern;

.field private static final SEMICOLON:Ljava/util/regex/Pattern;

.field private static final UNESCAPED_SEMICOLONS:Ljava/util/regex/Pattern;

.field private static final VCARD_ESCAPES:Ljava/util/regex/Pattern;

.field private static final VCARD_LIKE_DATE:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    const-string/jumbo v0, "BEGIN:VCARD"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->BEGIN_VCARD:Ljava/util/regex/Pattern;

    .line 38
    const-string/jumbo v0, "\\d{4}-?\\d{2}-?\\d{2}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->VCARD_LIKE_DATE:Ljava/util/regex/Pattern;

    .line 39
    const-string/jumbo v0, "\r\n[ \t]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->CR_LF_SPACE_TAB:Ljava/util/regex/Pattern;

    .line 40
    const-string/jumbo v0, "\\\\[nN]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->NEWLINE_ESCAPE:Ljava/util/regex/Pattern;

    .line 41
    const-string/jumbo v0, "\\\\([,;\\\\])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->VCARD_ESCAPES:Ljava/util/regex/Pattern;

    .line 42
    const-string/jumbo v0, "="

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->EQUALS:Ljava/util/regex/Pattern;

    .line 43
    const-string/jumbo v0, ";"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->SEMICOLON:Ljava/util/regex/Pattern;

    .line 44
    const-string/jumbo v0, "(?<!\\\\);+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/VCardResultParser;->UNESCAPED_SEMICOLONS:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/VCardResultParser;
    move-object v1, v0

    invoke-direct {v1}, Lcom/google/zxing/client/result/ResultParser;-><init>()V

    return-void
.end method

.method private static decodeQuotedPrintable(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;
    .locals 15

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "value":Ljava/lang/CharSequence;
    move-object/from16 v1, p1

    .local v1, "charset":Ljava/lang/String;
    move-object v11, v0

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    move v2, v11

    .line 199
    .local v2, "length":I
    new-instance v11, Ljava/lang/StringBuilder;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    move v13, v2

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v3, v11

    .line 200
    .local v3, "result":Ljava/lang/StringBuilder;
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v4, v11

    .line 201
    .local v4, "fragmentBuffer":Ljava/io/ByteArrayOutputStream;
    const/4 v11, 0x0

    move v5, v11

    .local v5, "i":I
    :goto_0
    move v11, v5

    move v12, v2

    if-ge v11, v12, :cond_3

    .line 202
    move-object v11, v0

    move v12, v5

    invoke-interface {v11, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    move v6, v11

    .line 203
    .local v6, "c":C
    move v11, v6

    sparse-switch v11, :sswitch_data_0

    .line 222
    move-object v11, v4

    move-object v12, v1

    move-object v13, v3

    invoke-static {v11, v12, v13}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendFragment(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 223
    move-object v11, v3

    move v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 201
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 206
    :sswitch_0
    goto :goto_1

    .line 208
    :sswitch_1
    move v11, v5

    move v12, v2

    const/4 v13, 0x2

    add-int/lit8 v12, v12, -0x2

    if-ge v11, v12, :cond_0

    .line 209
    move-object v11, v0

    move v12, v5

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    invoke-interface {v11, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    move v7, v11

    .line 210
    .local v7, "nextChar":C
    move v11, v7

    const/16 v12, 0xd

    if-eq v11, v12, :cond_2

    move v11, v7

    const/16 v12, 0xa

    if-eq v11, v12, :cond_2

    .line 211
    move-object v11, v0

    move v12, v5

    const/4 v13, 0x2

    add-int/lit8 v12, v12, 0x2

    invoke-interface {v11, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    move v8, v11

    .line 212
    .local v8, "nextNextChar":C
    move v11, v7

    invoke-static {v11}, Lcom/google/zxing/client/result/VCardResultParser;->parseHexDigit(C)I

    move-result v11

    move v9, v11

    .line 213
    .local v9, "firstDigit":I
    move v11, v8

    invoke-static {v11}, Lcom/google/zxing/client/result/VCardResultParser;->parseHexDigit(C)I

    move-result v11

    move v10, v11

    .line 214
    .local v10, "secondDigit":I
    move v11, v9

    if-ltz v11, :cond_1

    move v11, v10

    if-ltz v11, :cond_1

    .line 215
    move-object v11, v4

    move v12, v9

    const/4 v13, 0x4

    shl-int/lit8 v12, v12, 0x4

    move v13, v10

    add-int/2addr v12, v13

    invoke-virtual {v11, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 217
    :cond_1
    add-int/lit8 v5, v5, 0x2

    .line 219
    .end local v8    # "nextNextChar":C
    .end local v9    # "firstDigit":I
    .end local v10    # "secondDigit":I
    :cond_2
    goto :goto_1

    .line 226
    .end local v6    # "c":C
    .end local v7    # "nextChar":C
    :cond_3
    move-object v11, v4

    move-object v12, v1

    move-object v13, v3

    invoke-static {v11, v12, v13}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendFragment(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 227
    move-object v11, v3

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v0, v11

    .end local v0    # "value":Ljava/lang/CharSequence;
    return-object v0

    .line 203
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x3d -> :sswitch_1
    .end sparse-switch
.end method

.method private static formatNames(Ljava/lang/Iterable;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 310
    move-object v0, p0

    .local v0, "names":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/util/List<Ljava/lang/String;>;>;"
    move-object v9, v0

    if-eqz v9, :cond_1

    .line 311
    move-object v9, v0

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v1, v9

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    move-object v9, v1

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v9, v1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    move-object v2, v9

    .line 312
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v9, v2

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object v3, v9

    .line 313
    .local v3, "name":Ljava/lang/String;
    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/String;

    move-object v4, v9

    .line 314
    .local v4, "components":[Ljava/lang/String;
    const/4 v9, 0x0

    move v5, v9

    .line 316
    .local v5, "start":I
    const/4 v9, 0x0

    move v7, v9

    .line 317
    .local v7, "componentIndex":I
    :goto_1
    move v9, v7

    move-object v10, v4

    array-length v10, v10

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    if-ge v9, v10, :cond_0

    move-object v9, v3

    const/16 v10, 0x3b

    move v11, v5

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    move v14, v9

    move v9, v14

    move v10, v14

    move v6, v10

    .local v6, "end":I
    if-lez v9, :cond_0

    .line 318
    move-object v9, v4

    move v10, v7

    move-object v11, v3

    move v12, v5

    move v13, v6

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 319
    add-int/lit8 v7, v7, 0x1

    .line 320
    move v9, v6

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    move v5, v9

    goto :goto_1

    .line 322
    .end local v6    # "end":I
    :cond_0
    move-object v9, v4

    move v10, v7

    move-object v11, v3

    move v12, v5

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 323
    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/16 v11, 0x64

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v8, v9

    .line 324
    .local v8, "newName":Ljava/lang/StringBuilder;
    move-object v9, v4

    const/4 v10, 0x3

    move-object v11, v8

    invoke-static {v9, v10, v11}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 325
    move-object v9, v4

    const/4 v10, 0x1

    move-object v11, v8

    invoke-static {v9, v10, v11}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 326
    move-object v9, v4

    const/4 v10, 0x2

    move-object v11, v8

    invoke-static {v9, v10, v11}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 327
    move-object v9, v4

    const/4 v10, 0x0

    move-object v11, v8

    invoke-static {v9, v10, v11}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 328
    move-object v9, v4

    const/4 v10, 0x4

    move-object v11, v8

    invoke-static {v9, v10, v11}, Lcom/google/zxing/client/result/VCardResultParser;->maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 329
    move-object v9, v2

    const/4 v10, 0x0

    move-object v11, v8

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 330
    goto/16 :goto_0

    .line 332
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "components":[Ljava/lang/String;
    .end local v5    # "start":I
    .end local v7    # "componentIndex":I
    .end local v8    # "newName":Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method private static isLikeVCardDate(Ljava/lang/CharSequence;)Z
    .locals 3

    .prologue
    .line 300
    move-object v0, p0

    .local v0, "value":Ljava/lang/CharSequence;
    move-object v1, v0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/zxing/client/result/VCardResultParser;->VCARD_LIKE_DATE:Ljava/util/regex/Pattern;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "value":Ljava/lang/CharSequence;
    return v0

    .restart local v0    # "value":Ljava/lang/CharSequence;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 255
    move-object v0, p0

    .local v0, "prefix":Ljava/lang/CharSequence;
    move-object v1, p1

    .local v1, "rawText":Ljava/lang/String;
    move v2, p2

    .local v2, "trim":Z
    move v3, p3

    .local v3, "parseFieldDivider":Z
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move v8, v3

    invoke-static {v5, v6, v7, v8}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v5

    move-object v4, v5

    .line 256
    .local v4, "values":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    move-object v5, v4

    if-eqz v5, :cond_0

    move-object v5, v4

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v5, 0x0

    :goto_0
    move-object v0, v5

    .end local v0    # "prefix":Ljava/lang/CharSequence;
    return-object v0

    .restart local v0    # "prefix":Ljava/lang/CharSequence;
    :cond_1
    move-object v5, v4

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    goto :goto_0
.end method

.method static matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/String;",
            "ZZ)",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 94
    move-object/from16 v2, p0

    .local v2, "prefix":Ljava/lang/CharSequence;
    move-object/from16 v3, p1

    .local v3, "rawText":Ljava/lang/String;
    move/from16 v4, p2

    .local v4, "trim":Z
    move/from16 v5, p3

    .local v5, "parseFieldDivider":Z
    const/16 v21, 0x0

    move-object/from16 v6, v21

    .line 95
    .local v6, "matches":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    const/16 v21, 0x0

    move/from16 v7, v21

    .line 96
    .local v7, "i":I
    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    move/from16 v8, v21

    .line 98
    .local v8, "max":I
    :goto_0
    move/from16 v21, v7

    move/from16 v22, v8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_1

    .line 102
    new-instance v21, Ljava/lang/StringBuilder;

    move-object/from16 v24, v21

    move-object/from16 v21, v24

    move-object/from16 v22, v24

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "(?:^|\n)"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v22, v2

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, "(?:;([^:]*))?:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x2

    invoke-static/range {v21 .. v22}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v21

    move-object/from16 v22, v3

    invoke-virtual/range {v21 .. v22}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v21

    move-object/from16 v9, v21

    .line 104
    .local v9, "matcher":Ljava/util/regex/Matcher;
    move/from16 v21, v7

    if-lez v21, :cond_0

    .line 105
    add-int/lit8 v7, v7, -0x1

    .line 107
    :cond_0
    move-object/from16 v21, v9

    move/from16 v22, v7

    invoke-virtual/range {v21 .. v22}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v21

    if-nez v21, :cond_2

    .line 108
    .line 194
    .end local v9    # "matcher":Ljava/util/regex/Matcher;
    :cond_1
    move-object/from16 v21, v6

    move-object/from16 v2, v21

    .end local v2    # "prefix":Ljava/lang/CharSequence;
    return-object v2

    .line 110
    .restart local v2    # "prefix":Ljava/lang/CharSequence;
    .restart local v9    # "matcher":Ljava/util/regex/Matcher;
    :cond_2
    move-object/from16 v21, v9

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Ljava/util/regex/Matcher;->end(I)I

    move-result v21

    move/from16 v7, v21

    .line 112
    move-object/from16 v21, v9

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v10, v21

    .line 113
    .local v10, "metadataString":Ljava/lang/String;
    const/16 v21, 0x0

    move-object/from16 v11, v21

    .line 114
    .local v11, "metadata":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v21, 0x0

    move/from16 v12, v21

    .line 115
    .local v12, "quotedPrintable":Z
    const/16 v21, 0x0

    move-object/from16 v13, v21

    .line 116
    .local v13, "quotedPrintableCharset":Ljava/lang/String;
    move-object/from16 v21, v10

    if-eqz v21, :cond_6

    .line 117
    sget-object v21, Lcom/google/zxing/client/result/VCardResultParser;->SEMICOLON:Ljava/util/regex/Pattern;

    move-object/from16 v22, v10

    invoke-virtual/range {v21 .. v22}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v21

    move-object/from16 v14, v21

    .local v14, "arr$":[Ljava/lang/String;
    move-object/from16 v21, v14

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v15, v21

    .local v15, "len$":I
    const/16 v21, 0x0

    move/from16 v16, v21

    .local v16, "i$":I
    :goto_1
    move/from16 v21, v16

    move/from16 v22, v15

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_6

    move-object/from16 v21, v14

    move/from16 v22, v16

    aget-object v21, v21, v22

    move-object/from16 v17, v21

    .line 118
    .local v17, "metadatum":Ljava/lang/String;
    move-object/from16 v21, v11

    if-nez v21, :cond_3

    .line 119
    new-instance v21, Ljava/util/ArrayList;

    move-object/from16 v24, v21

    move-object/from16 v21, v24

    move-object/from16 v22, v24

    const/16 v23, 0x1

    invoke-direct/range {v22 .. v23}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v11, v21

    .line 121
    :cond_3
    move-object/from16 v21, v11

    move-object/from16 v22, v17

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v21

    .line 122
    sget-object v21, Lcom/google/zxing/client/result/VCardResultParser;->EQUALS:Ljava/util/regex/Pattern;

    move-object/from16 v22, v17

    const/16 v23, 0x2

    invoke-virtual/range {v21 .. v23}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v21

    move-object/from16 v18, v21

    .line 123
    .local v18, "metadatumTokens":[Ljava/lang/String;
    move-object/from16 v21, v18

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_4

    .line 124
    move-object/from16 v21, v18

    const/16 v22, 0x0

    aget-object v21, v21, v22

    move-object/from16 v19, v21

    .line 125
    .local v19, "key":Ljava/lang/String;
    move-object/from16 v21, v18

    const/16 v22, 0x1

    aget-object v21, v21, v22

    move-object/from16 v20, v21

    .line 126
    .local v20, "value":Ljava/lang/String;
    const-string/jumbo v21, "ENCODING"

    move-object/from16 v22, v19

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_5

    const-string/jumbo v21, "QUOTED-PRINTABLE"

    move-object/from16 v22, v20

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 127
    const/16 v21, 0x1

    move/from16 v12, v21

    .line 117
    .end local v19    # "key":Ljava/lang/String;
    .end local v20    # "value":Ljava/lang/String;
    :cond_4
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 128
    .restart local v19    # "key":Ljava/lang/String;
    .restart local v20    # "value":Ljava/lang/String;
    :cond_5
    const-string/jumbo v21, "CHARSET"

    move-object/from16 v22, v19

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 129
    move-object/from16 v21, v20

    move-object/from16 v13, v21

    goto :goto_2

    .line 135
    .end local v14    # "arr$":[Ljava/lang/String;
    .end local v15    # "len$":I
    .end local v16    # "i$":I
    .end local v17    # "metadatum":Ljava/lang/String;
    .end local v18    # "metadatumTokens":[Ljava/lang/String;
    .end local v19    # "key":Ljava/lang/String;
    .end local v20    # "value":Ljava/lang/String;
    :cond_6
    move/from16 v21, v7

    move/from16 v14, v21

    .line 137
    .local v14, "matchStart":I
    :goto_3
    move-object/from16 v21, v3

    const/16 v22, 0xa

    move/from16 v23, v7

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->indexOf(II)I

    move-result v21

    move/from16 v24, v21

    move/from16 v21, v24

    move/from16 v22, v24

    move/from16 v7, v22

    if-ltz v21, :cond_b

    .line 138
    move/from16 v21, v7

    move-object/from16 v22, v3

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x1

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_8

    move-object/from16 v21, v3

    move/from16 v22, v7

    const/16 v23, 0x1

    add-int/lit8 v22, v22, 0x1

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->charAt(I)C

    move-result v21

    const/16 v22, 0x20

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_7

    move-object/from16 v21, v3

    move/from16 v22, v7

    const/16 v23, 0x1

    add-int/lit8 v22, v22, 0x1

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->charAt(I)C

    move-result v21

    const/16 v22, 0x9

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 141
    :cond_7
    add-int/lit8 v7, v7, 0x2

    goto :goto_3

    .line 142
    :cond_8
    move/from16 v21, v12

    if-eqz v21, :cond_b

    move/from16 v21, v7

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_9

    move-object/from16 v21, v3

    move/from16 v22, v7

    const/16 v23, 0x1

    add-int/lit8 v22, v22, -0x1

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->charAt(I)C

    move-result v21

    const/16 v22, 0x3d

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_a

    :cond_9
    move/from16 v21, v7

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_b

    move-object/from16 v21, v3

    move/from16 v22, v7

    const/16 v23, 0x2

    add-int/lit8 v22, v22, -0x2

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->charAt(I)C

    move-result v21

    const/16 v22, 0x3d

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    .line 145
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 151
    :cond_b
    move/from16 v21, v7

    if-gez v21, :cond_c

    .line 153
    move/from16 v21, v8

    move/from16 v7, v21

    .line 192
    :goto_4
    goto/16 :goto_0

    .line 154
    :cond_c
    move/from16 v21, v7

    move/from16 v22, v14

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_14

    .line 156
    move-object/from16 v21, v6

    if-nez v21, :cond_d

    .line 157
    new-instance v21, Ljava/util/ArrayList;

    move-object/from16 v24, v21

    move-object/from16 v21, v24

    move-object/from16 v22, v24

    const/16 v23, 0x1

    invoke-direct/range {v22 .. v23}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v6, v21

    .line 159
    :cond_d
    move/from16 v21, v7

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_e

    move-object/from16 v21, v3

    move/from16 v22, v7

    const/16 v23, 0x1

    add-int/lit8 v22, v22, -0x1

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->charAt(I)C

    move-result v21

    const/16 v22, 0xd

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_e

    .line 160
    add-int/lit8 v7, v7, -0x1

    .line 162
    :cond_e
    move-object/from16 v21, v3

    move/from16 v22, v14

    move/from16 v23, v7

    invoke-virtual/range {v21 .. v23}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v15, v21

    .line 163
    .local v15, "element":Ljava/lang/String;
    move/from16 v21, v4

    if-eqz v21, :cond_f

    .line 164
    move-object/from16 v21, v15

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v15, v21

    .line 166
    :cond_f
    move/from16 v21, v12

    if-eqz v21, :cond_11

    .line 167
    move-object/from16 v21, v15

    move-object/from16 v22, v13

    invoke-static/range {v21 .. v22}, Lcom/google/zxing/client/result/VCardResultParser;->decodeQuotedPrintable(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v15, v21

    .line 168
    move/from16 v21, v5

    if-eqz v21, :cond_10

    .line 169
    sget-object v21, Lcom/google/zxing/client/result/VCardResultParser;->UNESCAPED_SEMICOLONS:Ljava/util/regex/Pattern;

    move-object/from16 v22, v15

    invoke-virtual/range {v21 .. v22}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v21

    const-string/jumbo v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v15, v21

    .line 179
    :cond_10
    :goto_5
    move-object/from16 v21, v11

    if-nez v21, :cond_13

    .line 180
    new-instance v21, Ljava/util/ArrayList;

    move-object/from16 v24, v21

    move-object/from16 v21, v24

    move-object/from16 v22, v24

    const/16 v23, 0x1

    invoke-direct/range {v22 .. v23}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v16, v21

    .line 181
    .local v16, "match":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v21, v16

    move-object/from16 v22, v15

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v21

    .line 182
    move-object/from16 v21, v6

    move-object/from16 v22, v16

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v21

    .line 183
    .line 187
    .end local v16    # "match":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_6
    add-int/lit8 v7, v7, 0x1

    .line 188
    goto/16 :goto_4

    .line 172
    :cond_11
    move/from16 v21, v5

    if-eqz v21, :cond_12

    .line 173
    sget-object v21, Lcom/google/zxing/client/result/VCardResultParser;->UNESCAPED_SEMICOLONS:Ljava/util/regex/Pattern;

    move-object/from16 v22, v15

    invoke-virtual/range {v21 .. v22}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v21

    const-string/jumbo v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v15, v21

    .line 175
    :cond_12
    sget-object v21, Lcom/google/zxing/client/result/VCardResultParser;->CR_LF_SPACE_TAB:Ljava/util/regex/Pattern;

    move-object/from16 v22, v15

    invoke-virtual/range {v21 .. v22}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v21

    const-string/jumbo v22, ""

    invoke-virtual/range {v21 .. v22}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v15, v21

    .line 176
    sget-object v21, Lcom/google/zxing/client/result/VCardResultParser;->NEWLINE_ESCAPE:Ljava/util/regex/Pattern;

    move-object/from16 v22, v15

    invoke-virtual/range {v21 .. v22}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v21

    const-string/jumbo v22, "\n"

    invoke-virtual/range {v21 .. v22}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v15, v21

    .line 177
    sget-object v21, Lcom/google/zxing/client/result/VCardResultParser;->VCARD_ESCAPES:Ljava/util/regex/Pattern;

    move-object/from16 v22, v15

    invoke-virtual/range {v21 .. v22}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v21

    const-string/jumbo v22, "$1"

    invoke-virtual/range {v21 .. v22}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v15, v21

    goto :goto_5

    .line 184
    :cond_13
    move-object/from16 v21, v11

    const/16 v22, 0x0

    move-object/from16 v23, v15

    invoke-interface/range {v21 .. v23}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 185
    move-object/from16 v21, v6

    move-object/from16 v22, v11

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v21

    goto :goto_6

    .line 189
    .end local v15    # "element":Ljava/lang/String;
    :cond_14
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4
.end method

.method private static maybeAppendComponent([Ljava/lang/String;ILjava/lang/StringBuilder;)V
    .locals 6

    .prologue
    .line 335
    move-object v0, p0

    .local v0, "components":[Ljava/lang/String;
    move v1, p1

    .local v1, "i":I
    move-object v2, p2

    .local v2, "newName":Ljava/lang/StringBuilder;
    move-object v3, v0

    move v4, v1

    aget-object v3, v3, v4

    if-eqz v3, :cond_0

    .line 336
    move-object v3, v2

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 337
    move-object v3, v2

    move-object v4, v0

    move v5, v1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 339
    :cond_0
    return-void
.end method

.method private static maybeAppendFragment(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 11

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "fragmentBuffer":Ljava/io/ByteArrayOutputStream;
    move-object v1, p1

    .local v1, "charset":Ljava/lang/String;
    move-object v2, p2

    .local v2, "result":Ljava/lang/StringBuilder;
    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 234
    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    move-object v3, v6

    .line 236
    .local v3, "fragmentBytes":[B
    move-object v6, v1

    if-nez v6, :cond_1

    .line 237
    new-instance v6, Ljava/lang/String;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v3

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    move-object v4, v6

    .line 246
    .local v4, "fragment":Ljava/lang/String;
    :goto_0
    move-object v6, v0

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 247
    move-object v6, v2

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 249
    .end local v3    # "fragmentBytes":[B
    .end local v4    # "fragment":Ljava/lang/String;
    :cond_0
    return-void

    .line 240
    .restart local v3    # "fragmentBytes":[B
    :cond_1
    :try_start_0
    new-instance v6, Ljava/lang/String;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v3

    move-object v9, v1

    invoke-direct {v7, v8, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v6

    .line 244
    .restart local v4    # "fragment":Ljava/lang/String;
    goto :goto_0

    .line 241
    .end local v4    # "fragment":Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 243
    .local v5, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v6, Ljava/lang/String;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v3

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    move-object v4, v6

    .restart local v4    # "fragment":Ljava/lang/String;
    goto :goto_0
.end method

.method private static toPrimaryValue(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 260
    move-object v0, p0

    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-object v0

    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    move-object v1, v0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method private static toPrimaryValues(Ljava/util/Collection;)[Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "lists":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<Ljava/lang/String;>;>;"
    move-object v4, v0

    if-eqz v4, :cond_0

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 265
    :cond_0
    const/4 v4, 0x0

    move-object v0, v4

    .line 271
    .end local v0    # "lists":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<Ljava/lang/String;>;>;"
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    return-object v0

    .line 267
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .restart local v0    # "lists":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v4

    .line 268
    .restart local v1    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v4, v0

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    move-object v3, v4

    .line 269
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v4, v1

    move-object v5, v3

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_1

    .line 271
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    move-object v4, v1

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object v0, v4

    goto :goto_0
.end method

.method private static toTypes(Ljava/util/Collection;)[Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "lists":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<Ljava/lang/String;>;>;"
    move-object v8, v0

    if-eqz v8, :cond_0

    move-object v8, v0

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 276
    :cond_0
    const/4 v8, 0x0

    move-object v0, v8

    .line 296
    .end local v0    # "lists":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<Ljava/lang/String;>;>;"
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    return-object v0

    .line 278
    .end local v1    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .restart local v0    # "lists":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v8

    .line 279
    .restart local v1    # "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v8, v0

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v2, v8

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_1
    move-object v8, v2

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    move-object v8, v2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    move-object v3, v8

    .line 280
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x0

    move-object v4, v8

    .line 281
    .local v4, "type":Ljava/lang/String;
    const/4 v8, 0x1

    move v5, v8

    .local v5, "i":I
    :goto_2
    move v8, v5

    move-object v9, v3

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 282
    move-object v8, v3

    move v9, v5

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v6, v8

    .line 283
    .local v6, "metadatum":Ljava/lang/String;
    move-object v8, v6

    const/16 v9, 0x3d

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    move v7, v8

    .line 284
    .local v7, "equals":I
    move v8, v7

    if-gez v8, :cond_3

    .line 286
    move-object v8, v6

    move-object v4, v8

    .line 294
    .end local v6    # "metadatum":Ljava/lang/String;
    .end local v7    # "equals":I
    :cond_2
    :goto_3
    move-object v8, v1

    move-object v9, v4

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 295
    goto :goto_1

    .line 289
    .restart local v6    # "metadatum":Ljava/lang/String;
    .restart local v7    # "equals":I
    :cond_3
    const-string/jumbo v8, "TYPE"

    move-object v9, v6

    const/4 v10, 0x0

    move v11, v7

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 290
    move-object v8, v6

    move v9, v7

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 291
    goto :goto_3

    .line 281
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 296
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "type":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "metadatum":Ljava/lang/String;
    .end local v7    # "equals":I
    :cond_5
    move-object v8, v1

    move-object v9, v0

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    move-object v0, v8

    goto :goto_0
.end method


# virtual methods
.method public parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;
    .locals 31

    .prologue
    .line 51
    move-object/from16 v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/VCardResultParser;
    move-object/from16 v1, p1

    .local v1, "result":Lcom/google/zxing/Result;
    move-object v14, v1

    invoke-static {v14}, Lcom/google/zxing/client/result/VCardResultParser;->getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;

    move-result-object v14

    move-object v2, v14

    .line 52
    .local v2, "rawText":Ljava/lang/String;
    sget-object v14, Lcom/google/zxing/client/result/VCardResultParser;->BEGIN_VCARD:Ljava/util/regex/Pattern;

    move-object v15, v2

    invoke-virtual {v14, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    move-object v3, v14

    .line 53
    .local v3, "m":Ljava/util/regex/Matcher;
    move-object v14, v3

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    if-eqz v14, :cond_0

    move-object v14, v3

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->start()I

    move-result v14

    if-eqz v14, :cond_1

    .line 54
    :cond_0
    const/4 v14, 0x0

    move-object v0, v14

    .line 74
    .end local v0    # "this":Lcom/google/zxing/client/result/VCardResultParser;
    :goto_0
    return-object v0

    .line 56
    .restart local v0    # "this":Lcom/google/zxing/client/result/VCardResultParser;
    :cond_1
    const-string/jumbo v14, "FN"

    move-object v15, v2

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v14

    move-object v4, v14

    .line 57
    .local v4, "names":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    move-object v14, v4

    if-nez v14, :cond_2

    .line 59
    const-string/jumbo v14, "N"

    move-object v15, v2

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v14

    move-object v4, v14

    .line 60
    move-object v14, v4

    invoke-static {v14}, Lcom/google/zxing/client/result/VCardResultParser;->formatNames(Ljava/lang/Iterable;)V

    .line 62
    :cond_2
    const-string/jumbo v14, "TEL"

    move-object v15, v2

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v14

    move-object v5, v14

    .line 63
    .local v5, "phoneNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    const-string/jumbo v14, "EMAIL"

    move-object v15, v2

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v14

    move-object v6, v14

    .line 64
    .local v6, "emails":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    const-string/jumbo v14, "NOTE"

    move-object v15, v2

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v14

    move-object v7, v14

    .line 65
    .local v7, "note":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v14, "ADR"

    move-object v15, v2

    const/16 v16, 0x1

    const/16 v17, 0x1

    invoke-static/range {v14 .. v17}, Lcom/google/zxing/client/result/VCardResultParser;->matchVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v14

    move-object v8, v14

    .line 66
    .local v8, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    const-string/jumbo v14, "ORG"

    move-object v15, v2

    const/16 v16, 0x1

    const/16 v17, 0x1

    invoke-static/range {v14 .. v17}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v14

    move-object v9, v14

    .line 67
    .local v9, "org":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v14, "BDAY"

    move-object v15, v2

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v14

    move-object v10, v14

    .line 68
    .local v10, "birthday":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v14, v10

    if-eqz v14, :cond_3

    move-object v14, v10

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/CharSequence;

    invoke-static {v14}, Lcom/google/zxing/client/result/VCardResultParser;->isLikeVCardDate(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 69
    const/4 v14, 0x0

    move-object v10, v14

    .line 71
    :cond_3
    const-string/jumbo v14, "TITLE"

    move-object v15, v2

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v14

    move-object v11, v14

    .line 72
    .local v11, "title":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v14, "URL"

    move-object v15, v2

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v14

    move-object v12, v14

    .line 73
    .local v12, "url":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v14, "IMPP"

    move-object v15, v2

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-static/range {v14 .. v17}, Lcom/google/zxing/client/result/VCardResultParser;->matchSingleVCardPrefixedField(Ljava/lang/CharSequence;Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v14

    move-object v13, v14

    .line 74
    .local v13, "instantMessenger":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v14, Lcom/google/zxing/client/result/AddressBookParsedResult;

    move-object/from16 v30, v14

    move-object/from16 v14, v30

    move-object/from16 v15, v30

    move-object/from16 v16, v4

    invoke-static/range {v16 .. v16}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValues(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v18, v5

    invoke-static/range {v18 .. v18}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValues(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v19, v5

    invoke-static/range {v19 .. v19}, Lcom/google/zxing/client/result/VCardResultParser;->toTypes(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v20, v6

    invoke-static/range {v20 .. v20}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValues(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v20

    move-object/from16 v21, v6

    invoke-static/range {v21 .. v21}, Lcom/google/zxing/client/result/VCardResultParser;->toTypes(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v21

    move-object/from16 v22, v13

    invoke-static/range {v22 .. v22}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v23, v7

    invoke-static/range {v23 .. v23}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v24, v8

    invoke-static/range {v24 .. v24}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValues(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v24

    move-object/from16 v25, v8

    invoke-static/range {v25 .. v25}, Lcom/google/zxing/client/result/VCardResultParser;->toTypes(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v25

    move-object/from16 v26, v9

    invoke-static/range {v26 .. v26}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v27, v10

    invoke-static/range {v27 .. v27}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v28, v11

    invoke-static/range {v28 .. v28}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v29, v12

    invoke-static/range {v29 .. v29}, Lcom/google/zxing/client/result/VCardResultParser;->toPrimaryValue(Ljava/util/List;)Ljava/lang/String;

    move-result-object v29

    invoke-direct/range {v15 .. v29}, Lcom/google/zxing/client/result/AddressBookParsedResult;-><init>([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v14

    goto/16 :goto_0
.end method

.method public bridge synthetic parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 4

    .prologue
    .line 35
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/VCardResultParser;
    move-object v1, p1

    .local v1, "x0":Lcom/google/zxing/Result;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/google/zxing/client/result/VCardResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/AddressBookParsedResult;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lcom/google/zxing/client/result/VCardResultParser;
    return-object v0
.end method
