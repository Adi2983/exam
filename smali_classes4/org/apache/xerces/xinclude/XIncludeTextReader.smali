.class public Lorg/apache/xerces/xinclude/XIncludeTextReader;
.super Ljava/lang/Object;


# instance fields
.field private fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

.field private final fHandler:Lorg/apache/xerces/xinclude/XIncludeHandler;

.field private fReader:Ljava/io/Reader;

.field private fSource:Lorg/apache/xerces/xni/parser/XMLInputSource;

.field private fTempString:Lorg/apache/xerces/xni/XMLString;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/xni/parser/XMLInputSource;Lorg/apache/xerces/xinclude/XIncludeHandler;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    new-instance v5, Lorg/apache/xerces/xni/XMLString;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Lorg/apache/xerces/xni/XMLString;-><init>()V

    iput-object v5, v4, Lorg/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lorg/apache/xerces/xni/XMLString;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lorg/apache/xerces/xinclude/XIncludeTextReader;->fHandler:Lorg/apache/xerces/xinclude/XIncludeHandler;

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lorg/apache/xerces/xinclude/XIncludeTextReader;->fSource:Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-object v4, v0

    new-instance v5, Lorg/apache/xerces/xni/XMLString;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    new-array v7, v7, [C

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/xerces/xni/XMLString;-><init>([CII)V

    iput-object v5, v4, Lorg/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lorg/apache/xerces/xni/XMLString;

    return-void
.end method

.method private createASCIIReader(Ljava/io/InputStream;)Ljava/io/Reader;
    .locals 9

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lorg/apache/xerces/impl/io/ASCIIReader;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lorg/apache/xerces/xni/XMLString;

    iget-object v5, v5, Lorg/apache/xerces/xni/XMLString;->ch:[C

    array-length v5, v5

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeTextReader;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v7, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v6, v7}, Lorg/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lorg/apache/xerces/util/MessageFormatter;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/xinclude/XIncludeTextReader;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v7}, Lorg/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/apache/xerces/impl/io/ASCIIReader;-><init>(Ljava/io/InputStream;ILorg/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    move-object v0, v2

    return-object v0
.end method

.method private createLatin1Reader(Ljava/io/InputStream;)Ljava/io/Reader;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lorg/apache/xerces/impl/io/Latin1Reader;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lorg/apache/xerces/xni/XMLString;

    iget-object v5, v5, Lorg/apache/xerces/xni/XMLString;->ch:[C

    array-length v5, v5

    invoke-direct {v3, v4, v5}, Lorg/apache/xerces/impl/io/Latin1Reader;-><init>(Ljava/io/InputStream;I)V

    move-object v0, v2

    return-object v0
.end method

.method private createUTF16Reader(Ljava/io/InputStream;Z)Ljava/io/Reader;
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    new-instance v3, Lorg/apache/xerces/impl/io/UTF16Reader;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lorg/apache/xerces/xni/XMLString;

    iget-object v6, v6, Lorg/apache/xerces/xni/XMLString;->ch:[C

    array-length v6, v6

    const/4 v7, 0x1

    shl-int/lit8 v6, v6, 0x1

    move v7, v2

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/xinclude/XIncludeTextReader;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v9, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v8, v9}, Lorg/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lorg/apache/xerces/util/MessageFormatter;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/xinclude/XIncludeTextReader;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v9}, Lorg/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v9

    invoke-direct/range {v4 .. v9}, Lorg/apache/xerces/impl/io/UTF16Reader;-><init>(Ljava/io/InputStream;IZLorg/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    move-object v0, v3

    return-object v0
.end method

.method private createUTF8Reader(Ljava/io/InputStream;)Ljava/io/Reader;
    .locals 9

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lorg/apache/xerces/impl/io/UTF8Reader;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lorg/apache/xerces/xni/XMLString;

    iget-object v5, v5, Lorg/apache/xerces/xni/XMLString;->ch:[C

    array-length v5, v5

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeTextReader;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v7, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v6, v7}, Lorg/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lorg/apache/xerces/util/MessageFormatter;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/xinclude/XIncludeTextReader;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v7}, Lorg/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/apache/xerces/impl/io/UTF8Reader;-><init>(Ljava/io/InputStream;ILorg/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    move-object v0, v2

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xinclude/XIncludeTextReader;->fReader:Ljava/io/Reader;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xinclude/XIncludeTextReader;->fReader:Ljava/io/Reader;

    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/xinclude/XIncludeTextReader;->fReader:Ljava/io/Reader;

    :cond_0
    return-void
.end method

.method protected consumeBOM(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v8, 0x3

    new-array v8, v8, [B

    move-object v3, v8

    const/4 v8, 0x0

    move v4, v8

    move-object v8, v1

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Ljava/io/InputStream;->mark(I)V

    move-object v8, v2

    const-string/jumbo v9, "UTF-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v8, v1

    move-object v9, v3

    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-virtual {v8, v9, v10, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    move v4, v8

    move v8, v4

    const/4 v9, 0x3

    if-ne v8, v9, :cond_2

    move-object v8, v3

    const/4 v9, 0x0

    aget-byte v8, v8, v9

    const/16 v9, 0xff

    and-int/lit16 v8, v8, 0xff

    move v5, v8

    move-object v8, v3

    const/4 v9, 0x1

    aget-byte v8, v8, v9

    const/16 v9, 0xff

    and-int/lit16 v8, v8, 0xff

    move v6, v8

    move-object v8, v3

    const/4 v9, 0x2

    aget-byte v8, v8, v9

    const/16 v9, 0xff

    and-int/lit16 v8, v8, 0xff

    move v7, v8

    move v8, v5

    const/16 v9, 0xef

    if-ne v8, v9, :cond_0

    move v8, v6

    const/16 v9, 0xbb

    if-ne v8, v9, :cond_0

    move v8, v7

    const/16 v9, 0xbf

    if-eq v8, v9, :cond_1

    :cond_0
    move-object v8, v1

    invoke-virtual {v8}, Ljava/io/InputStream;->reset()V

    :cond_1
    :goto_0
    move-object v8, v2

    move-object v0, v8

    :goto_1
    return-object v0

    :cond_2
    move-object v8, v1

    invoke-virtual {v8}, Ljava/io/InputStream;->reset()V

    goto :goto_0

    :cond_3
    move-object v8, v2

    const-string/jumbo v9, "UTF-16"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v1

    move-object v9, v3

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-virtual {v8, v9, v10, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    move v4, v8

    move v8, v4

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    move-object v8, v3

    const/4 v9, 0x0

    aget-byte v8, v8, v9

    const/16 v9, 0xff

    and-int/lit16 v8, v8, 0xff

    move v5, v8

    move-object v8, v3

    const/4 v9, 0x1

    aget-byte v8, v8, v9

    const/16 v9, 0xff

    and-int/lit16 v8, v8, 0xff

    move v6, v8

    move v8, v5

    const/16 v9, 0xfe

    if-ne v8, v9, :cond_4

    move v8, v6

    const/16 v9, 0xff

    if-ne v8, v9, :cond_4

    const-string/jumbo v8, "UTF-16BE"

    move-object v0, v8

    goto :goto_1

    :cond_4
    move v8, v5

    const/16 v9, 0xff

    if-ne v8, v9, :cond_5

    move v8, v6

    const/16 v9, 0xfe

    if-ne v8, v9, :cond_5

    const-string/jumbo v8, "UTF-16LE"

    move-object v0, v8

    goto :goto_1

    :cond_5
    move-object v8, v1

    invoke-virtual {v8}, Ljava/io/InputStream;->reset()V

    goto :goto_0
.end method

.method protected getEncodingName(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    const/4 v5, 0x4

    new-array v5, v5, [B

    move-object v2, v5

    const/4 v5, 0x0

    move-object v3, v5

    move-object v5, v1

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Ljava/io/InputStream;->mark(I)V

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    move v4, v5

    move-object v5, v1

    invoke-virtual {v5}, Ljava/io/InputStream;->reset()V

    move v5, v4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Lorg/apache/xerces/xinclude/XIncludeTextReader;->getEncodingName([B)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    :cond_0
    move-object v5, v3

    move-object v0, v5

    return-object v0
.end method

.method protected getEncodingName([B)Ljava/lang/String;
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    const/4 v7, 0x0

    aget-byte v6, v6, v7

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    move v2, v6

    move-object v6, v1

    const/4 v7, 0x1

    aget-byte v6, v6, v7

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    move v3, v6

    move v6, v2

    const/16 v7, 0xfe

    if-ne v6, v7, :cond_0

    move v6, v3

    const/16 v7, 0xff

    if-ne v6, v7, :cond_0

    const-string/jumbo v6, "UTF-16BE"

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_0
    move v6, v2

    const/16 v7, 0xff

    if-ne v6, v7, :cond_1

    move v6, v3

    const/16 v7, 0xfe

    if-ne v6, v7, :cond_1

    const-string/jumbo v6, "UTF-16LE"

    move-object v0, v6

    goto :goto_0

    :cond_1
    move-object v6, v1

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    move v4, v6

    move v6, v2

    const/16 v7, 0xef

    if-ne v6, v7, :cond_2

    move v6, v3

    const/16 v7, 0xbb

    if-ne v6, v7, :cond_2

    move v6, v4

    const/16 v7, 0xbf

    if-ne v6, v7, :cond_2

    const-string/jumbo v6, "UTF-8"

    move-object v0, v6

    goto :goto_0

    :cond_2
    move-object v6, v1

    const/4 v7, 0x3

    aget-byte v6, v6, v7

    const/16 v7, 0xff

    and-int/lit16 v6, v6, 0xff

    move v5, v6

    move v6, v2

    if-nez v6, :cond_3

    move v6, v3

    if-nez v6, :cond_3

    move v6, v4

    if-nez v6, :cond_3

    move v6, v5

    const/16 v7, 0x3c

    if-ne v6, v7, :cond_3

    const-string/jumbo v6, "ISO-10646-UCS-4"

    move-object v0, v6

    goto :goto_0

    :cond_3
    move v6, v2

    const/16 v7, 0x3c

    if-ne v6, v7, :cond_4

    move v6, v3

    if-nez v6, :cond_4

    move v6, v4

    if-nez v6, :cond_4

    move v6, v5

    if-nez v6, :cond_4

    const-string/jumbo v6, "ISO-10646-UCS-4"

    move-object v0, v6

    goto :goto_0

    :cond_4
    move v6, v2

    if-nez v6, :cond_5

    move v6, v3

    if-nez v6, :cond_5

    move v6, v4

    const/16 v7, 0x3c

    if-ne v6, v7, :cond_5

    move v6, v5

    if-nez v6, :cond_5

    const-string/jumbo v6, "ISO-10646-UCS-4"

    move-object v0, v6

    goto :goto_0

    :cond_5
    move v6, v2

    if-nez v6, :cond_6

    move v6, v3

    const/16 v7, 0x3c

    if-ne v6, v7, :cond_6

    move v6, v4

    if-nez v6, :cond_6

    move v6, v5

    if-nez v6, :cond_6

    const-string/jumbo v6, "ISO-10646-UCS-4"

    move-object v0, v6

    goto/16 :goto_0

    :cond_6
    move v6, v2

    if-nez v6, :cond_7

    move v6, v3

    const/16 v7, 0x3c

    if-ne v6, v7, :cond_7

    move v6, v4

    if-nez v6, :cond_7

    move v6, v5

    const/16 v7, 0x3f

    if-ne v6, v7, :cond_7

    const-string/jumbo v6, "UTF-16BE"

    move-object v0, v6

    goto/16 :goto_0

    :cond_7
    move v6, v2

    const/16 v7, 0x3c

    if-ne v6, v7, :cond_8

    move v6, v3

    if-nez v6, :cond_8

    move v6, v4

    const/16 v7, 0x3f

    if-ne v6, v7, :cond_8

    move v6, v5

    if-nez v6, :cond_8

    const-string/jumbo v6, "UTF-16LE"

    move-object v0, v6

    goto/16 :goto_0

    :cond_8
    move v6, v2

    const/16 v7, 0x4c

    if-ne v6, v7, :cond_9

    move v6, v3

    const/16 v7, 0x6f

    if-ne v6, v7, :cond_9

    move v6, v4

    const/16 v7, 0xa7

    if-ne v6, v7, :cond_9

    move v6, v5

    const/16 v7, 0x94

    if-ne v6, v7, :cond_9

    const-string/jumbo v6, "CP037"

    move-object v0, v6

    goto/16 :goto_0

    :cond_9
    const/4 v6, 0x0

    move-object v0, v6

    goto/16 :goto_0
.end method

.method protected getReader(Lorg/apache/xerces/xni/parser/XMLInputSource;)Ljava/io/Reader;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v13, v2

    invoke-virtual {v13}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v13

    if-eqz v13, :cond_0

    move-object v13, v2

    invoke-virtual {v13}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v13

    move-object v1, v13

    :goto_0
    return-object v1

    :cond_0
    const/4 v13, 0x0

    move-object v3, v13

    move-object v13, v2

    invoke-virtual {v13}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getEncoding()Ljava/lang/String;

    move-result-object v13

    move-object v4, v13

    move-object v13, v4

    if-nez v13, :cond_1

    const-string/jumbo v13, "UTF-8"

    move-object v4, v13

    :cond_1
    move-object v13, v2

    invoke-virtual {v13}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v13

    if-eqz v13, :cond_3

    move-object v13, v2

    invoke-virtual {v13}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v13

    move-object v3, v13

    move-object v13, v3

    instance-of v13, v13, Ljava/io/BufferedInputStream;

    if-nez v13, :cond_2

    new-instance v13, Ljava/io/BufferedInputStream;

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    move-object v15, v3

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lorg/apache/xerces/xni/XMLString;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/apache/xerces/xni/XMLString;->ch:[C

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    invoke-direct/range {v14 .. v16}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v3, v13

    :cond_2
    :goto_1
    move-object v13, v4

    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v13, v14}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    move-object v4, v13

    move-object v13, v1

    move-object v14, v3

    move-object v15, v4

    invoke-virtual {v13, v14, v15}, Lorg/apache/xerces/xinclude/XIncludeTextReader;->consumeBOM(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v4, v13

    move-object v13, v4

    const-string/jumbo v14, "UTF-8"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    move-object v13, v1

    move-object v14, v3

    invoke-direct {v13, v14}, Lorg/apache/xerces/xinclude/XIncludeTextReader;->createUTF8Reader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v13

    move-object v1, v13

    goto :goto_0

    :cond_3
    move-object v13, v2

    invoke-virtual {v13}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v13

    move-object v14, v2

    invoke-virtual {v14}, Lorg/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lorg/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    move-object v5, v13

    new-instance v13, Ljava/net/URL;

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    move-object v15, v5

    invoke-direct {v14, v15}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object v6, v13

    move-object v13, v6

    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    move-object v7, v13

    move-object v13, v7

    instance-of v13, v13, Ljava/net/HttpURLConnection;

    if-eqz v13, :cond_4

    move-object v13, v2

    instance-of v13, v13, Lorg/apache/xerces/util/HTTPInputSource;

    if-eqz v13, :cond_4

    move-object v13, v7

    check-cast v13, Ljava/net/HttpURLConnection;

    move-object v8, v13

    move-object v13, v2

    check-cast v13, Lorg/apache/xerces/util/HTTPInputSource;

    move-object v9, v13

    move-object v13, v9

    invoke-virtual {v13}, Lorg/apache/xerces/util/HTTPInputSource;->getHTTPRequestProperties()Ljava/util/Iterator;

    move-result-object v13

    move-object v10, v13

    :goto_2
    move-object v13, v10

    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_9

    move-object v13, v9

    invoke-virtual {v13}, Lorg/apache/xerces/util/HTTPInputSource;->getFollowHTTPRedirects()Z

    move-result v13

    move v11, v13

    move v13, v11

    if-nez v13, :cond_4

    move-object v13, v8

    move v14, v11

    invoke-virtual {v13, v14}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    :cond_4
    new-instance v13, Ljava/io/BufferedInputStream;

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    move-object v15, v7

    invoke-virtual {v15}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v13

    move-object v13, v7

    invoke-virtual {v13}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v13

    move-object v8, v13

    move-object v13, v8

    if-eqz v13, :cond_a

    move-object v13, v8

    const/16 v14, 0x3b

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    :goto_3
    move v9, v13

    const/4 v13, 0x0

    move-object v11, v13

    move v13, v9

    const/4 v14, -0x1

    if-eq v13, v14, :cond_c

    move-object v13, v8

    const/4 v14, 0x0

    move v15, v9

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    move-object v10, v13

    move-object v13, v8

    move v14, v9

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    move-object v11, v13

    move-object v13, v11

    const-string/jumbo v14, "charset="

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b

    move-object v13, v11

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    move-object v11, v13

    move-object v13, v11

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x22

    if-ne v13, v14, :cond_5

    move-object v13, v11

    move-object v14, v11

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x22

    if-eq v13, v14, :cond_6

    :cond_5
    move-object v13, v11

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x27

    if-ne v13, v14, :cond_7

    move-object v13, v11

    move-object v14, v11

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x1

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x27

    if-ne v13, v14, :cond_7

    :cond_6
    move-object v13, v11

    const/4 v14, 0x1

    move-object v15, v11

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    const/16 v16, 0x1

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    move-object v11, v13

    :cond_7
    :goto_4
    const/4 v13, 0x0

    move-object v12, v13

    move-object v13, v10

    const-string/jumbo v14, "text/xml"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    move-object v13, v11

    if-eqz v13, :cond_e

    move-object v13, v11

    move-object v12, v13

    :cond_8
    :goto_5
    move-object v13, v12

    if-eqz v13, :cond_2

    move-object v13, v12

    move-object v4, v13

    goto/16 :goto_1

    :cond_9
    move-object v13, v10

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    move-object v11, v13

    move-object v13, v8

    move-object v14, v11

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    move-object v15, v11

    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_a
    const/4 v13, -0x1

    goto/16 :goto_3

    :cond_b
    const/4 v13, 0x0

    move-object v11, v13

    goto :goto_4

    :cond_c
    move-object v13, v8

    if-eqz v13, :cond_d

    move-object v13, v8

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    :goto_6
    move-object v10, v13

    goto :goto_4

    :cond_d
    const-string/jumbo v13, ""

    goto :goto_6

    :cond_e
    const-string/jumbo v13, "US-ASCII"

    move-object v12, v13

    goto :goto_5

    :cond_f
    move-object v13, v10

    const-string/jumbo v14, "application/xml"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    move-object v13, v11

    if-eqz v13, :cond_10

    move-object v13, v11

    move-object v12, v13

    goto :goto_5

    :cond_10
    move-object v13, v1

    move-object v14, v3

    invoke-virtual {v13, v14}, Lorg/apache/xerces/xinclude/XIncludeTextReader;->getEncodingName(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v13

    move-object v12, v13

    goto :goto_5

    :cond_11
    move-object v13, v10

    const-string/jumbo v14, "+xml"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    move-object v13, v1

    move-object v14, v3

    invoke-virtual {v13, v14}, Lorg/apache/xerces/xinclude/XIncludeTextReader;->getEncodingName(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v13

    move-object v12, v13

    goto :goto_5

    :cond_12
    move-object v13, v4

    const-string/jumbo v14, "UTF-16BE"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    move-object v13, v1

    move-object v14, v3

    const/4 v15, 0x1

    invoke-direct {v13, v14, v15}, Lorg/apache/xerces/xinclude/XIncludeTextReader;->createUTF16Reader(Ljava/io/InputStream;Z)Ljava/io/Reader;

    move-result-object v13

    move-object v1, v13

    goto/16 :goto_0

    :cond_13
    move-object v13, v4

    const-string/jumbo v14, "UTF-16LE"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    move-object v13, v1

    move-object v14, v3

    const/4 v15, 0x0

    invoke-direct {v13, v14, v15}, Lorg/apache/xerces/xinclude/XIncludeTextReader;->createUTF16Reader(Ljava/io/InputStream;Z)Ljava/io/Reader;

    move-result-object v13

    move-object v1, v13

    goto/16 :goto_0

    :cond_14
    move-object v13, v4

    invoke-static {v13}, Lorg/apache/xerces/util/EncodingMap;->getIANA2JavaMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v5, v13

    move-object v13, v5

    if-nez v13, :cond_15

    move-object v13, v1

    iget-object v13, v13, Lorg/apache/xerces/xinclude/XIncludeTextReader;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v14, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v13, v14}, Lorg/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lorg/apache/xerces/util/MessageFormatter;

    move-result-object v13

    move-object v6, v13

    move-object v13, v1

    iget-object v13, v13, Lorg/apache/xerces/xinclude/XIncludeTextReader;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v13}, Lorg/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v13

    move-object v7, v13

    new-instance v13, Ljava/io/IOException;

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    move-object v15, v6

    move-object/from16 v16, v7

    const-string/jumbo v17, "EncodingDeclInvalid"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    const/16 v20, 0x0

    move-object/from16 v21, v4

    aput-object v21, v19, v20

    invoke-interface/range {v15 .. v18}, Lorg/apache/xerces/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_15
    move-object v13, v5

    const-string/jumbo v14, "ASCII"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16

    move-object v13, v1

    move-object v14, v3

    invoke-direct {v13, v14}, Lorg/apache/xerces/xinclude/XIncludeTextReader;->createASCIIReader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v13

    move-object v1, v13

    goto/16 :goto_0

    :cond_16
    move-object v13, v5

    const-string/jumbo v14, "ISO8859_1"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    move-object v13, v1

    move-object v14, v3

    invoke-direct {v13, v14}, Lorg/apache/xerces/xinclude/XIncludeTextReader;->createLatin1Reader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v13

    move-object v1, v13

    goto/16 :goto_0

    :cond_17
    new-instance v13, Ljava/io/InputStreamReader;

    move-object/from16 v22, v13

    move-object/from16 v13, v22

    move-object/from16 v14, v22

    move-object v15, v3

    move-object/from16 v16, v5

    invoke-direct/range {v14 .. v16}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v1, v13

    goto/16 :goto_0
.end method

.method protected isValid(I)Z
    .locals 3

    move-object v0, p0

    move v1, p1

    move v2, v1

    invoke-static {v2}, Lorg/apache/xerces/util/XMLChar;->isValid(I)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public parse()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v6, v0

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/xinclude/XIncludeTextReader;->fSource:Lorg/apache/xerces/xni/parser/XMLInputSource;

    invoke-virtual {v7, v8}, Lorg/apache/xerces/xinclude/XIncludeTextReader;->getReader(Lorg/apache/xerces/xni/parser/XMLInputSource;)Ljava/io/Reader;

    move-result-object v7

    iput-object v7, v6, Lorg/apache/xerces/xinclude/XIncludeTextReader;->fReader:Ljava/io/Reader;

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/apache/xerces/xinclude/XIncludeTextReader;->fSource:Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeTextReader;->fReader:Ljava/io/Reader;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lorg/apache/xerces/xni/XMLString;

    iget-object v7, v7, Lorg/apache/xerces/xni/XMLString;->ch:[C

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lorg/apache/xerces/xni/XMLString;

    iget-object v9, v9, Lorg/apache/xerces/xni/XMLString;->ch:[C

    array-length v9, v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/Reader;->read([CII)I

    move-result v6

    move v1, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeTextReader;->fHandler:Lorg/apache/xerces/xinclude/XIncludeHandler;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lorg/apache/xerces/xinclude/XIncludeHandler;->fHasIncludeReportedContent:Z

    :goto_0
    move v6, v1

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    return-void

    :cond_0
    const/4 v6, 0x0

    move v2, v6

    :goto_1
    move v6, v2

    move v7, v1

    if-lt v6, v7, :cond_2

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeTextReader;->fHandler:Lorg/apache/xerces/xinclude/XIncludeHandler;

    if-eqz v6, :cond_1

    move v6, v1

    if-lez v6, :cond_1

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lorg/apache/xerces/xni/XMLString;

    const/4 v7, 0x0

    iput v7, v6, Lorg/apache/xerces/xni/XMLString;->offset:I

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lorg/apache/xerces/xni/XMLString;

    move v7, v1

    iput v7, v6, Lorg/apache/xerces/xni/XMLString;->length:I

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeTextReader;->fHandler:Lorg/apache/xerces/xinclude/XIncludeHandler;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lorg/apache/xerces/xni/XMLString;

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/xinclude/XIncludeTextReader;->fHandler:Lorg/apache/xerces/xinclude/XIncludeHandler;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lorg/apache/xerces/xinclude/XIncludeHandler;->modifyAugmentations(Lorg/apache/xerces/xni/Augmentations;Z)Lorg/apache/xerces/xni/Augmentations;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/xinclude/XIncludeHandler;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeTextReader;->fReader:Ljava/io/Reader;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lorg/apache/xerces/xni/XMLString;

    iget-object v7, v7, Lorg/apache/xerces/xni/XMLString;->ch:[C

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lorg/apache/xerces/xni/XMLString;

    iget-object v9, v9, Lorg/apache/xerces/xni/XMLString;->ch:[C

    array-length v9, v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/Reader;->read([CII)I

    move-result v6

    move v1, v6

    goto :goto_0

    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lorg/apache/xerces/xni/XMLString;

    iget-object v6, v6, Lorg/apache/xerces/xni/XMLString;->ch:[C

    move v7, v2

    aget-char v6, v6, v7

    move v3, v6

    move-object v6, v0

    move v7, v3

    invoke-virtual {v6, v7}, Lorg/apache/xerces/xinclude/XIncludeTextReader;->isValid(I)Z

    move-result v6

    if-nez v6, :cond_4

    move v6, v3

    invoke-static {v6}, Lorg/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v6

    if-eqz v6, :cond_7

    add-int/lit8 v2, v2, 0x1

    move v6, v2

    move v7, v1

    if-ge v6, v7, :cond_5

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lorg/apache/xerces/xni/XMLString;

    iget-object v6, v6, Lorg/apache/xerces/xni/XMLString;->ch:[C

    move v7, v2

    aget-char v6, v6, v7

    move v4, v6

    :cond_3
    :goto_2
    move v6, v4

    invoke-static {v6}, Lorg/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v6

    if-eqz v6, :cond_6

    move v6, v3

    move v7, v4

    int-to-char v7, v7

    invoke-static {v6, v7}, Lorg/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v6

    move v5, v6

    move-object v6, v0

    move v7, v5

    invoke-virtual {v6, v7}, Lorg/apache/xerces/xinclude/XIncludeTextReader;->isValid(I)Z

    move-result v6

    if-nez v6, :cond_4

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeTextReader;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v7, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v8, "InvalidCharInContent"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x0

    move v12, v5

    const/16 v13, 0x10

    invoke-static {v12, v13}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v10, 0x2

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    move-result-object v6

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_5
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeTextReader;->fReader:Ljava/io/Reader;

    invoke-virtual {v6}, Ljava/io/Reader;->read()I

    move-result v6

    move v4, v6

    move v6, v4

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lorg/apache/xerces/xni/XMLString;

    iget-object v6, v6, Lorg/apache/xerces/xni/XMLString;->ch:[C

    move v7, v1

    add-int/lit8 v1, v1, 0x1

    move v8, v4

    int-to-char v8, v8

    aput-char v8, v6, v7

    goto :goto_2

    :cond_6
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeTextReader;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v7, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v8, "InvalidCharInContent"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x0

    move v12, v4

    const/16 v13, 0x10

    invoke-static {v12, v13}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v10, 0x2

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_7
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeTextReader;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v7, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v8, "InvalidCharInContent"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x0

    move v12, v3

    const/16 v13, 0x10

    invoke-static {v12, v13}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v10, 0x2

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    move-result-object v6

    goto :goto_3
.end method

.method protected setBufferSize(I)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lorg/apache/xerces/xni/XMLString;

    iget-object v2, v2, Lorg/apache/xerces/xni/XMLString;->ch:[C

    array-length v2, v2

    add-int/lit8 v1, v1, 0x1

    move v3, v1

    if-eq v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lorg/apache/xerces/xni/XMLString;

    move v3, v1

    new-array v3, v3, [C

    iput-object v3, v2, Lorg/apache/xerces/xni/XMLString;->ch:[C

    :cond_0
    return-void
.end method

.method public setErrorReporter(Lorg/apache/xerces/impl/XMLErrorReporter;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/xinclude/XIncludeTextReader;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    return-void
.end method

.method public setInputSource(Lorg/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/xinclude/XIncludeTextReader;->fSource:Lorg/apache/xerces/xni/parser/XMLInputSource;

    return-void
.end method
