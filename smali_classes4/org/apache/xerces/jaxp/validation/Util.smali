.class final Lorg/apache/xerces/jaxp/validation/Util;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toSAXException(Lorg/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;
    .locals 6

    move-object v0, p0

    move-object v1, v0

    instance-of v1, v1, Lorg/apache/xerces/xni/parser/XMLParseException;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/apache/xerces/xni/parser/XMLParseException;

    invoke-static {v1}, Lorg/apache/xerces/jaxp/validation/Util;->toSAXParseException(Lorg/apache/xerces/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object v1

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/xni/XNIException;->getException()Ljava/lang/Exception;

    move-result-object v1

    instance-of v1, v1, Lorg/xml/sax/SAXException;

    if-eqz v1, :cond_1

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/xni/XNIException;->getException()Ljava/lang/Exception;

    move-result-object v1

    check-cast v1, Lorg/xml/sax/SAXException;

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/xml/sax/SAXException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/xni/XNIException;->getMessage()Ljava/lang/String;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/xni/XNIException;->getException()Ljava/lang/Exception;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static toSAXParseException(Lorg/apache/xerces/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;
    .locals 10

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/xni/parser/XMLParseException;->getException()Ljava/lang/Exception;

    move-result-object v1

    instance-of v1, v1, Lorg/xml/sax/SAXParseException;

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/xni/parser/XMLParseException;->getException()Ljava/lang/Exception;

    move-result-object v1

    check-cast v1, Lorg/xml/sax/SAXParseException;

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lorg/xml/sax/SAXParseException;

    move-object v9, v1

    move-object v1, v9

    move-object v2, v9

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/xni/parser/XMLParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/xni/parser/XMLParseException;->getPublicId()Ljava/lang/String;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xerces/xni/parser/XMLParseException;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/xni/parser/XMLParseException;->getLineNumber()I

    move-result v6

    move-object v7, v0

    invoke-virtual {v7}, Lorg/apache/xerces/xni/parser/XMLParseException;->getColumnNumber()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/xni/parser/XMLParseException;->getException()Ljava/lang/Exception;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Exception;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public static final toXMLInputSource(Ljavax/xml/transform/stream/StreamSource;)Lorg/apache/xerces/xni/parser/XMLInputSource;
    .locals 9

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Ljavax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    move-object v3, v0

    invoke-virtual {v3}, Ljavax/xml/transform/stream/StreamSource;->getPublicId()Ljava/lang/String;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Ljavax/xml/transform/stream/StreamSource;->getSystemId()Ljava/lang/String;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Ljavax/xml/transform/stream/StreamSource;->getSystemId()Ljava/lang/String;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Ljavax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lorg/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Ljavax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    move-object v3, v0

    invoke-virtual {v3}, Ljavax/xml/transform/stream/StreamSource;->getPublicId()Ljava/lang/String;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Ljavax/xml/transform/stream/StreamSource;->getSystemId()Ljava/lang/String;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Ljavax/xml/transform/stream/StreamSource;->getSystemId()Ljava/lang/String;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Ljavax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lorg/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-object v8, v1

    move-object v1, v8

    move-object v2, v8

    move-object v3, v0

    invoke-virtual {v3}, Ljavax/xml/transform/stream/StreamSource;->getPublicId()Ljava/lang/String;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Ljavax/xml/transform/stream/StreamSource;->getSystemId()Ljava/lang/String;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Ljavax/xml/transform/stream/StreamSource;->getSystemId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0
.end method
