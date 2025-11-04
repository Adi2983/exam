.class public Lorg/apache/xml/serialize/Encodings;
.super Ljava/lang/Object;


# static fields
.field static final DEFAULT_ENCODING:Ljava/lang/String; = "UTF8"

.field static final DEFAULT_LAST_PRINTABLE:I = 0x7f

.field static final JIS_DANGER_CHARS:Ljava/lang/String; = "\\~\u007f\u00a2\u00a3\u00a5\u00ac\u2014\u2015\u2016\u2026\u203e\u203e\u2225\u222f\u301c\uff3c\uff5e\uffe0\uffe1\uffe2\uffe3"

.field static final LAST_PRINTABLE_UNICODE:I = 0xffff

.field static final UNICODE_ENCODINGS:[Ljava/lang/String;

.field static _encodings:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string/jumbo v3, "Unicode"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "UnicodeBig"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, "UnicodeLittle"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string/jumbo v3, "GB2312"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const-string/jumbo v3, "UTF8"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    const-string/jumbo v3, "UTF-16"

    aput-object v3, v1, v2

    sput-object v0, Lorg/apache/xml/serialize/Encodings;->UNICODE_ENCODINGS:[Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/xml/serialize/Encodings;->_encodings:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getEncodingInfo(Ljava/lang/String;Z)Lorg/apache/xml/serialize/EncodingInfo;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    const/4 v5, 0x0

    move-object v2, v5

    move-object v5, v0

    if-nez v5, :cond_1

    sget-object v5, Lorg/apache/xml/serialize/Encodings;->_encodings:Ljava/util/Hashtable;

    const-string/jumbo v6, "UTF8"

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xml/serialize/EncodingInfo;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v2, v6

    if-eqz v5, :cond_0

    move-object v5, v2

    move-object v0, v5

    :goto_0
    return-object v0

    :cond_0
    new-instance v5, Lorg/apache/xml/serialize/EncodingInfo;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "UTF8"

    invoke-static {v7}, Lorg/apache/xerces/util/EncodingMap;->getJava2IANAMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "UTF8"

    const v9, 0xffff

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/xml/serialize/EncodingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v2, v5

    sget-object v5, Lorg/apache/xml/serialize/Encodings;->_encodings:Ljava/util/Hashtable;

    const-string/jumbo v6, "UTF8"

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v5, v2

    move-object v0, v5

    goto :goto_0

    :cond_1
    move-object v5, v0

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object v5, v0

    invoke-static {v5}, Lorg/apache/xerces/util/EncodingMap;->getIANA2JavaMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    move-object v5, v3

    if-nez v5, :cond_7

    move v5, v1

    if-eqz v5, :cond_6

    move-object v5, v0

    invoke-static {v5}, Lorg/apache/xml/serialize/EncodingInfo;->testJavaEncodingName(Ljava/lang/String;)V

    sget-object v5, Lorg/apache/xml/serialize/Encodings;->_encodings:Ljava/util/Hashtable;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xml/serialize/EncodingInfo;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v2, v6

    if-eqz v5, :cond_2

    move-object v5, v2

    move-object v0, v5

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    move v4, v5

    :goto_1
    move v5, v4

    sget-object v6, Lorg/apache/xml/serialize/Encodings;->UNICODE_ENCODINGS:[Ljava/lang/String;

    array-length v6, v6

    if-lt v5, v6, :cond_4

    :goto_2
    move v5, v4

    sget-object v6, Lorg/apache/xml/serialize/Encodings;->UNICODE_ENCODINGS:[Ljava/lang/String;

    array-length v6, v6

    if-ne v5, v6, :cond_3

    new-instance v5, Lorg/apache/xml/serialize/EncodingInfo;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    invoke-static {v7}, Lorg/apache/xerces/util/EncodingMap;->getJava2IANAMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v8, v0

    const/16 v9, 0x7f

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/xml/serialize/EncodingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v2, v5

    :cond_3
    sget-object v5, Lorg/apache/xml/serialize/Encodings;->_encodings:Ljava/util/Hashtable;

    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v5, v2

    move-object v0, v5

    goto :goto_0

    :cond_4
    sget-object v5, Lorg/apache/xml/serialize/Encodings;->UNICODE_ENCODINGS:[Ljava/lang/String;

    move v6, v4

    aget-object v5, v5, v6

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Lorg/apache/xml/serialize/EncodingInfo;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    invoke-static {v7}, Lorg/apache/xerces/util/EncodingMap;->getJava2IANAMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v8, v0

    const v9, 0xffff

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/xml/serialize/EncodingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v2, v5

    goto :goto_2

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    new-instance v5, Ljava/io/UnsupportedEncodingException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    invoke-direct {v6, v7}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_7
    sget-object v5, Lorg/apache/xml/serialize/Encodings;->_encodings:Ljava/util/Hashtable;

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xml/serialize/EncodingInfo;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v2, v6

    if-eqz v5, :cond_8

    move-object v5, v2

    move-object v0, v5

    goto/16 :goto_0

    :cond_8
    const/4 v5, 0x0

    move v4, v5

    :goto_3
    move v5, v4

    sget-object v6, Lorg/apache/xml/serialize/Encodings;->UNICODE_ENCODINGS:[Ljava/lang/String;

    array-length v6, v6

    if-lt v5, v6, :cond_a

    :goto_4
    move v5, v4

    sget-object v6, Lorg/apache/xml/serialize/Encodings;->UNICODE_ENCODINGS:[Ljava/lang/String;

    array-length v6, v6

    if-ne v5, v6, :cond_9

    new-instance v5, Lorg/apache/xml/serialize/EncodingInfo;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v3

    const/16 v9, 0x7f

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/xml/serialize/EncodingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v2, v5

    :cond_9
    sget-object v5, Lorg/apache/xml/serialize/Encodings;->_encodings:Ljava/util/Hashtable;

    move-object v6, v3

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v5, v2

    move-object v0, v5

    goto/16 :goto_0

    :cond_a
    sget-object v5, Lorg/apache/xml/serialize/Encodings;->UNICODE_ENCODINGS:[Ljava/lang/String;

    move v6, v4

    aget-object v5, v5, v6

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    new-instance v5, Lorg/apache/xml/serialize/EncodingInfo;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v3

    const v9, 0xffff

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/xml/serialize/EncodingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    move-object v2, v5

    goto :goto_4

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method
