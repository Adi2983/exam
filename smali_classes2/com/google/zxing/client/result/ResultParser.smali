.class public abstract Lcom/google/zxing/client/result/ResultParser;
.super Ljava/lang/Object;
.source "ResultParser.java"


# static fields
.field private static final ALPHANUM:Ljava/util/regex/Pattern;

.field private static final AMPERSAND:Ljava/util/regex/Pattern;

.field private static final BYTE_ORDER_MARK:Ljava/lang/String; = "\ufeff"

.field private static final DIGITS:Ljava/util/regex/Pattern;

.field private static final EQUALS:Ljava/util/regex/Pattern;

.field private static final PARSERS:[Lcom/google/zxing/client/result/ResultParser;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 42
    const/16 v0, 0x13

    new-array v0, v0, [Lcom/google/zxing/client/result/ResultParser;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x0

    new-instance v3, Lcom/google/zxing/client/result/BookmarkDoCoMoResultParser;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/google/zxing/client/result/BookmarkDoCoMoResultParser;-><init>()V

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x1

    new-instance v3, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/google/zxing/client/result/AddressBookDoCoMoResultParser;-><init>()V

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x2

    new-instance v3, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/google/zxing/client/result/EmailDoCoMoResultParser;-><init>()V

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x3

    new-instance v3, Lcom/google/zxing/client/result/AddressBookAUResultParser;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/google/zxing/client/result/AddressBookAUResultParser;-><init>()V

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x4

    new-instance v3, Lcom/google/zxing/client/result/VCardResultParser;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/google/zxing/client/result/VCardResultParser;-><init>()V

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x5

    new-instance v3, Lcom/google/zxing/client/result/BizcardResultParser;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/google/zxing/client/result/BizcardResultParser;-><init>()V

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x6

    new-instance v3, Lcom/google/zxing/client/result/VEventResultParser;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/google/zxing/client/result/VEventResultParser;-><init>()V

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x7

    new-instance v3, Lcom/google/zxing/client/result/EmailAddressResultParser;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/google/zxing/client/result/EmailAddressResultParser;-><init>()V

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/16 v2, 0x8

    new-instance v3, Lcom/google/zxing/client/result/SMTPResultParser;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/google/zxing/client/result/SMTPResultParser;-><init>()V

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/16 v2, 0x9

    new-instance v3, Lcom/google/zxing/client/result/TelResultParser;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/google/zxing/client/result/TelResultParser;-><init>()V

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/16 v2, 0xa

    new-instance v3, Lcom/google/zxing/client/result/SMSMMSResultParser;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/google/zxing/client/result/SMSMMSResultParser;-><init>()V

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/16 v2, 0xb

    new-instance v3, Lcom/google/zxing/client/result/SMSTOMMSTOResultParser;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/google/zxing/client/result/SMSTOMMSTOResultParser;-><init>()V

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/16 v2, 0xc

    new-instance v3, Lcom/google/zxing/client/result/GeoResultParser;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/google/zxing/client/result/GeoResultParser;-><init>()V

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/16 v2, 0xd

    new-instance v3, Lcom/google/zxing/client/result/WifiResultParser;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/google/zxing/client/result/WifiResultParser;-><init>()V

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/16 v2, 0xe

    new-instance v3, Lcom/google/zxing/client/result/URLTOResultParser;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/google/zxing/client/result/URLTOResultParser;-><init>()V

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/16 v2, 0xf

    new-instance v3, Lcom/google/zxing/client/result/URIResultParser;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/google/zxing/client/result/URIResultParser;-><init>()V

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/16 v2, 0x10

    new-instance v3, Lcom/google/zxing/client/result/ISBNResultParser;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/google/zxing/client/result/ISBNResultParser;-><init>()V

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/16 v2, 0x11

    new-instance v3, Lcom/google/zxing/client/result/ProductResultParser;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/google/zxing/client/result/ProductResultParser;-><init>()V

    aput-object v3, v1, v2

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/16 v2, 0x12

    new-instance v3, Lcom/google/zxing/client/result/ExpandedProductResultParser;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/google/zxing/client/result/ExpandedProductResultParser;-><init>()V

    aput-object v3, v1, v2

    sput-object v0, Lcom/google/zxing/client/result/ResultParser;->PARSERS:[Lcom/google/zxing/client/result/ResultParser;

    .line 64
    const-string/jumbo v0, "\\d*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/ResultParser;->DIGITS:Ljava/util/regex/Pattern;

    .line 65
    const-string/jumbo v0, "[a-zA-Z0-9]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/ResultParser;->ALPHANUM:Ljava/util/regex/Pattern;

    .line 66
    const-string/jumbo v0, "&"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/ResultParser;->AMPERSAND:Ljava/util/regex/Pattern;

    .line 67
    const-string/jumbo v0, "="

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/zxing/client/result/ResultParser;->EQUALS:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/google/zxing/client/result/ResultParser;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendKeyValue(Ljava/lang/CharSequence;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "keyValue":Ljava/lang/CharSequence;
    move-object v1, p1

    .local v1, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v6, Lcom/google/zxing/client/result/ResultParser;->EQUALS:Ljava/util/regex/Pattern;

    move-object v7, v0

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 183
    .local v2, "keyValueTokens":[Ljava/lang/String;
    move-object v6, v2

    array-length v6, v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 184
    move-object v6, v2

    const/4 v7, 0x0

    aget-object v6, v6, v7

    move-object v3, v6

    .line 185
    .local v3, "key":Ljava/lang/String;
    move-object v6, v2

    const/4 v7, 0x1

    aget-object v6, v6, v7

    move-object v4, v6

    .line 187
    .local v4, "value":Ljava/lang/String;
    move-object v6, v4

    :try_start_0
    const-string/jumbo v7, "UTF-8"

    invoke-static {v6, v7}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 188
    move-object v6, v1

    move-object v7, v3

    move-object v8, v4

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 193
    .line 195
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 189
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "value":Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 190
    .local v5, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v5

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 191
    .end local v5    # "uee":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v6

    move-object v5, v6

    goto :goto_0
.end method

.method protected static getMassagedText(Lcom/google/zxing/Result;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "result":Lcom/google/zxing/Result;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 79
    .local v1, "text":Ljava/lang/String;
    move-object v2, v1

    const-string/jumbo v3, "\ufeff"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 82
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "result":Lcom/google/zxing/Result;
    return-object v0
.end method

.method protected static isStringOfDigits(Ljava/lang/CharSequence;I)Z
    .locals 4

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "value":Ljava/lang/CharSequence;
    move v1, p1

    .local v1, "length":I
    move-object v2, v0

    if-eqz v2, :cond_0

    move v2, v1

    move-object v3, v0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/google/zxing/client/result/ResultParser;->DIGITS:Ljava/util/regex/Pattern;

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "value":Ljava/lang/CharSequence;
    return v0

    .restart local v0    # "value":Ljava/lang/CharSequence;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected static isSubstringOfAlphaNumeric(Ljava/lang/CharSequence;II)Z
    .locals 8

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "value":Ljava/lang/CharSequence;
    move v1, p1

    .local v1, "offset":I
    move v2, p2

    .local v2, "length":I
    move-object v4, v0

    if-nez v4, :cond_0

    .line 163
    const/4 v4, 0x0

    move v0, v4

    .line 166
    .end local v0    # "value":Ljava/lang/CharSequence;
    :goto_0
    return v0

    .line 165
    .restart local v0    # "value":Ljava/lang/CharSequence;
    :cond_0
    move v4, v1

    move v5, v2

    add-int/2addr v4, v5

    move v3, v4

    .line 166
    .local v3, "max":I
    move-object v4, v0

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move v5, v3

    if-lt v4, v5, :cond_1

    sget-object v4, Lcom/google/zxing/client/result/ResultParser;->ALPHANUM:Ljava/util/regex/Pattern;

    move-object v5, v0

    move v6, v1

    move v7, v3

    invoke-interface {v5, v6, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected static isSubstringOfDigits(Ljava/lang/CharSequence;II)Z
    .locals 8

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "value":Ljava/lang/CharSequence;
    move v1, p1

    .local v1, "offset":I
    move v2, p2

    .local v2, "length":I
    move-object v4, v0

    if-nez v4, :cond_0

    .line 155
    const/4 v4, 0x0

    move v0, v4

    .line 158
    .end local v0    # "value":Ljava/lang/CharSequence;
    :goto_0
    return v0

    .line 157
    .restart local v0    # "value":Ljava/lang/CharSequence;
    :cond_0
    move v4, v1

    move v5, v2

    add-int/2addr v4, v5

    move v3, v4

    .line 158
    .local v3, "max":I
    move-object v4, v0

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    move v5, v3

    if-lt v4, v5, :cond_1

    sget-object v4, Lcom/google/zxing/client/result/ResultParser;->DIGITS:Ljava/util/regex/Pattern;

    move-object v5, v0

    move v6, v1

    move v7, v3

    invoke-interface {v5, v6, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method static matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;
    .locals 14

    .prologue
    .line 198
    move-object v0, p0

    .local v0, "prefix":Ljava/lang/String;
    move-object v1, p1

    .local v1, "rawText":Ljava/lang/String;
    move/from16 v2, p2

    .local v2, "endChar":C
    move/from16 v3, p3

    .local v3, "trim":Z
    const/4 v10, 0x0

    move-object v4, v10

    .line 199
    .local v4, "matches":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    move v5, v10

    .line 200
    .local v5, "i":I
    move-object v10, v1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    move v6, v10

    .line 201
    .local v6, "max":I
    :goto_0
    move v10, v5

    move v11, v6

    if-ge v10, v11, :cond_0

    .line 202
    move-object v10, v1

    move-object v11, v0

    move v12, v5

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v10

    move v5, v10

    .line 203
    move v10, v5

    if-gez v10, :cond_2

    .line 204
    .line 233
    :cond_0
    move-object v10, v4

    if-eqz v10, :cond_1

    move-object v10, v4

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 234
    :cond_1
    const/4 v10, 0x0

    move-object v0, v10

    .line 236
    .end local v0    # "prefix":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 206
    .restart local v0    # "prefix":Ljava/lang/String;
    :cond_2
    move v10, v5

    move-object v11, v0

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    move v5, v10

    .line 207
    move v10, v5

    move v7, v10

    .line 208
    .local v7, "start":I
    const/4 v10, 0x1

    move v8, v10

    .line 209
    .local v8, "more":Z
    :goto_2
    move v10, v8

    if-eqz v10, :cond_7

    .line 210
    move-object v10, v1

    move v11, v2

    move v12, v5

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    move v5, v10

    .line 211
    move v10, v5

    if-gez v10, :cond_3

    .line 213
    move-object v10, v1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    move v5, v10

    .line 214
    const/4 v10, 0x0

    move v8, v10

    goto :goto_2

    .line 215
    :cond_3
    move-object v10, v1

    move v11, v5

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x5c

    if-ne v10, v11, :cond_4

    .line 217
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 220
    :cond_4
    move-object v10, v4

    if-nez v10, :cond_5

    .line 221
    new-instance v10, Ljava/util/ArrayList;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    const/4 v12, 0x3

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    move-object v4, v10

    .line 223
    :cond_5
    move-object v10, v1

    move v11, v7

    move v12, v5

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/google/zxing/client/result/ResultParser;->unescapeBackslash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 224
    .local v9, "element":Ljava/lang/String;
    move v10, v3

    if-eqz v10, :cond_6

    .line 225
    move-object v10, v9

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 227
    :cond_6
    move-object v10, v4

    move-object v11, v9

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v10

    .line 228
    add-int/lit8 v5, v5, 0x1

    .line 229
    const/4 v10, 0x0

    move v8, v10

    .line 230
    goto :goto_2

    .line 232
    .end local v9    # "element":Ljava/lang/String;
    :cond_7
    goto :goto_0

    .line 236
    .end local v7    # "start":I
    .end local v8    # "more":Z
    :cond_8
    move-object v10, v4

    move-object v11, v4

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    invoke-interface {v10, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    move-object v0, v10

    goto :goto_1
.end method

.method static matchSinglePrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;
    .locals 9

    .prologue
    .line 240
    move-object v0, p0

    .local v0, "prefix":Ljava/lang/String;
    move-object v1, p1

    .local v1, "rawText":Ljava/lang/String;
    move v2, p2

    .local v2, "endChar":C
    move v3, p3

    .local v3, "trim":Z
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move v8, v3

    invoke-static {v5, v6, v7, v8}, Lcom/google/zxing/client/result/ResultParser;->matchPrefixedField(Ljava/lang/String;Ljava/lang/String;CZ)[Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 241
    .local v4, "matches":[Ljava/lang/String;
    move-object v5, v4

    if-nez v5, :cond_0

    const/4 v5, 0x0

    :goto_0
    move-object v0, v5

    .end local v0    # "prefix":Ljava/lang/String;
    return-object v0

    .restart local v0    # "prefix":Ljava/lang/String;
    :cond_0
    move-object v5, v4

    const/4 v6, 0x0

    aget-object v5, v5, v6

    goto :goto_0
.end method

.method protected static maybeAppend(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 4

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "value":Ljava/lang/String;
    move-object v1, p1

    .local v1, "result":Ljava/lang/StringBuilder;
    move-object v2, v0

    if-eqz v2, :cond_0

    .line 97
    move-object v2, v1

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 98
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 100
    :cond_0
    return-void
.end method

.method protected static maybeAppend([Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 8

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "value":[Ljava/lang/String;
    move-object v1, p1

    .local v1, "result":Ljava/lang/StringBuilder;
    move-object v6, v0

    if-eqz v6, :cond_0

    .line 104
    move-object v6, v0

    move-object v2, v6

    .local v2, "arr$":[Ljava/lang/String;
    move-object v6, v2

    array-length v6, v6

    move v3, v6

    .local v3, "len$":I
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i$":I
    :goto_0
    move v6, v4

    move v7, v3

    if-ge v6, v7, :cond_0

    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    move-object v5, v6

    .line 105
    .local v5, "s":Ljava/lang/String;
    move-object v6, v1

    const/16 v7, 0xa

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 106
    move-object v6, v1

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 104
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 109
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    .end local v5    # "s":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected static maybeWrap(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "value":Ljava/lang/String;
    move-object v1, v0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "value":Ljava/lang/String;
    return-object v0

    .restart local v0    # "value":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x0

    move-object v4, v0

    aput-object v4, v2, v3

    goto :goto_0
.end method

.method protected static parseHexDigit(C)I
    .locals 4

    .prologue
    .line 137
    move v0, p0

    .local v0, "c":C
    move v1, v0

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    move v1, v0

    const/16 v2, 0x39

    if-gt v1, v2, :cond_0

    .line 138
    move v1, v0

    const/16 v2, 0x30

    add-int/lit8 v1, v1, -0x30

    move v0, v1

    .line 146
    .end local v0    # "c":C
    :goto_0
    return v0

    .line 140
    .restart local v0    # "c":C
    :cond_0
    move v1, v0

    const/16 v2, 0x61

    if-lt v1, v2, :cond_1

    move v1, v0

    const/16 v2, 0x66

    if-gt v1, v2, :cond_1

    .line 141
    const/16 v1, 0xa

    move v2, v0

    const/16 v3, 0x61

    add-int/lit8 v2, v2, -0x61

    add-int/2addr v1, v2

    move v0, v1

    goto :goto_0

    .line 143
    :cond_1
    move v1, v0

    const/16 v2, 0x41

    if-lt v1, v2, :cond_2

    move v1, v0

    const/16 v2, 0x46

    if-gt v1, v2, :cond_2

    .line 144
    const/16 v1, 0xa

    move v2, v0

    const/16 v3, 0x41

    add-int/lit8 v2, v2, -0x41

    add-int/2addr v1, v2

    move v0, v1

    goto :goto_0

    .line 146
    :cond_2
    const/4 v1, -0x1

    move v0, v1

    goto :goto_0
.end method

.method static parseNameValuePairs(Ljava/lang/String;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "uri":Ljava/lang/String;
    move-object v7, v0

    const/16 v8, 0x3f

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    move v1, v7

    .line 171
    .local v1, "paramStart":I
    move v7, v1

    if-gez v7, :cond_0

    .line 172
    const/4 v7, 0x0

    move-object v0, v7

    .line 178
    .end local v0    # "uri":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 174
    .restart local v0    # "uri":Ljava/lang/String;
    :cond_0
    new-instance v7, Ljava/util/HashMap;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x3

    invoke-direct {v8, v9}, Ljava/util/HashMap;-><init>(I)V

    move-object v2, v7

    .line 175
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v7, Lcom/google/zxing/client/result/ResultParser;->AMPERSAND:Ljava/util/regex/Pattern;

    move-object v8, v0

    move v9, v1

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .local v3, "arr$":[Ljava/lang/String;
    move-object v7, v3

    array-length v7, v7

    move v4, v7

    .local v4, "len$":I
    const/4 v7, 0x0

    move v5, v7

    .local v5, "i$":I
    :goto_1
    move v7, v5

    move v8, v4

    if-ge v7, v8, :cond_1

    move-object v7, v3

    move v8, v5

    aget-object v7, v7, v8

    move-object v6, v7

    .line 176
    .local v6, "keyValue":Ljava/lang/String;
    move-object v7, v6

    move-object v8, v2

    invoke-static {v7, v8}, Lcom/google/zxing/client/result/ResultParser;->appendKeyValue(Ljava/lang/CharSequence;Ljava/util/Map;)V

    .line 175
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 178
    .end local v6    # "keyValue":Ljava/lang/String;
    :cond_1
    move-object v7, v2

    move-object v0, v7

    goto :goto_0
.end method

.method public static parseResult(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
    .locals 11

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "theResult":Lcom/google/zxing/Result;
    sget-object v6, Lcom/google/zxing/client/result/ResultParser;->PARSERS:[Lcom/google/zxing/client/result/ResultParser;

    move-object v1, v6

    .local v1, "arr$":[Lcom/google/zxing/client/result/ResultParser;
    move-object v6, v1

    array-length v6, v6

    move v2, v6

    .local v2, "len$":I
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i$":I
    :goto_0
    move v6, v3

    move v7, v2

    if-ge v6, v7, :cond_1

    move-object v6, v1

    move v7, v3

    aget-object v6, v6, v7

    move-object v4, v6

    .line 87
    .local v4, "parser":Lcom/google/zxing/client/result/ResultParser;
    move-object v6, v4

    move-object v7, v0

    invoke-virtual {v6, v7}, Lcom/google/zxing/client/result/ResultParser;->parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;

    move-result-object v6

    move-object v5, v6

    .line 88
    .local v5, "result":Lcom/google/zxing/client/result/ParsedResult;
    move-object v6, v5

    if-eqz v6, :cond_0

    .line 89
    move-object v6, v5

    move-object v0, v6

    .line 92
    .end local v0    # "theResult":Lcom/google/zxing/Result;
    .end local v4    # "parser":Lcom/google/zxing/client/result/ResultParser;
    .end local v5    # "result":Lcom/google/zxing/client/result/ParsedResult;
    :goto_1
    return-object v0

    .line 86
    .restart local v0    # "theResult":Lcom/google/zxing/Result;
    .restart local v4    # "parser":Lcom/google/zxing/client/result/ResultParser;
    .restart local v5    # "result":Lcom/google/zxing/client/result/ParsedResult;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 92
    .end local v4    # "parser":Lcom/google/zxing/client/result/ResultParser;
    .end local v5    # "result":Lcom/google/zxing/client/result/ParsedResult;
    :cond_1
    new-instance v6, Lcom/google/zxing/client/result/TextParsedResult;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    invoke-virtual {v8}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/google/zxing/client/result/TextParsedResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    goto :goto_1
.end method

.method protected static unescapeBackslash(Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "escaped":Ljava/lang/String;
    move-object v7, v0

    const/16 v8, 0x5c

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    move v1, v7

    .line 117
    .local v1, "backslash":I
    move v7, v1

    if-gez v7, :cond_0

    .line 118
    move-object v7, v0

    move-object v0, v7

    .line 133
    .end local v0    # "escaped":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 120
    .restart local v0    # "escaped":Ljava/lang/String;
    :cond_0
    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move v2, v7

    .line 121
    .local v2, "max":I
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move v9, v2

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v3, v7

    .line 122
    .local v3, "unescaped":Ljava/lang/StringBuilder;
    move-object v7, v3

    move-object v8, v0

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v8

    const/4 v9, 0x0

    move v10, v1

    invoke-virtual {v7, v8, v9, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 123
    const/4 v7, 0x0

    move v4, v7

    .line 124
    .local v4, "nextIsEscaped":Z
    move v7, v1

    move v5, v7

    .local v5, "i":I
    :goto_1
    move v7, v5

    move v8, v2

    if-ge v7, v8, :cond_3

    .line 125
    move-object v7, v0

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v6, v7

    .line 126
    .local v6, "c":C
    move v7, v4

    if-nez v7, :cond_1

    move v7, v6

    const/16 v8, 0x5c

    if-eq v7, v8, :cond_2

    .line 127
    :cond_1
    move-object v7, v3

    move v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 128
    const/4 v7, 0x0

    move v4, v7

    .line 124
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 130
    :cond_2
    const/4 v7, 0x1

    move v4, v7

    goto :goto_2

    .line 133
    .end local v6    # "c":C
    :cond_3
    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    goto :goto_0
.end method


# virtual methods
.method public abstract parse(Lcom/google/zxing/Result;)Lcom/google/zxing/client/result/ParsedResult;
.end method
