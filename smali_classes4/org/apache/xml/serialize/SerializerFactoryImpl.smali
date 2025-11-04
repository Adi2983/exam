.class final Lorg/apache/xml/serialize/SerializerFactoryImpl;
.super Lorg/apache/xml/serialize/SerializerFactory;


# instance fields
.field private _method:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Lorg/apache/xml/serialize/SerializerFactory;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/apache/xml/serialize/SerializerFactoryImpl;->_method:Ljava/lang/String;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/SerializerFactoryImpl;->_method:Ljava/lang/String;

    const-string/jumbo v4, "xml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/SerializerFactoryImpl;->_method:Ljava/lang/String;

    const-string/jumbo v4, "html"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/SerializerFactoryImpl;->_method:Ljava/lang/String;

    const-string/jumbo v4, "xhtml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/SerializerFactoryImpl;->_method:Ljava/lang/String;

    const-string/jumbo v4, "text"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "http://apache.org/xml/serializer"

    const-string/jumbo v4, "MethodNotSupported"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v1

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    return-void
.end method

.method private getSerializer(Lorg/apache/xml/serialize/OutputFormat;)Lorg/apache/xml/serialize/Serializer;
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/SerializerFactoryImpl;->_method:Ljava/lang/String;

    const-string/jumbo v4, "xml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lorg/apache/xml/serialize/XMLSerializer;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v1

    invoke-direct {v4, v5}, Lorg/apache/xml/serialize/XMLSerializer;-><init>(Lorg/apache/xml/serialize/OutputFormat;)V

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/SerializerFactoryImpl;->_method:Ljava/lang/String;

    const-string/jumbo v4, "html"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lorg/apache/xml/serialize/HTMLSerializer;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v1

    invoke-direct {v4, v5}, Lorg/apache/xml/serialize/HTMLSerializer;-><init>(Lorg/apache/xml/serialize/OutputFormat;)V

    move-object v0, v3

    goto :goto_0

    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/SerializerFactoryImpl;->_method:Ljava/lang/String;

    const-string/jumbo v4, "xhtml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Lorg/apache/xml/serialize/XHTMLSerializer;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v1

    invoke-direct {v4, v5}, Lorg/apache/xml/serialize/XHTMLSerializer;-><init>(Lorg/apache/xml/serialize/OutputFormat;)V

    move-object v0, v3

    goto :goto_0

    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/SerializerFactoryImpl;->_method:Ljava/lang/String;

    const-string/jumbo v4, "text"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Lorg/apache/xml/serialize/TextSerializer;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Lorg/apache/xml/serialize/TextSerializer;-><init>()V

    move-object v0, v3

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "http://apache.org/xml/serializer"

    const-string/jumbo v4, "MethodNotSupported"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xml/serialize/SerializerFactoryImpl;->_method:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v2

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method protected getSupportedMethod()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xml/serialize/SerializerFactoryImpl;->_method:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public makeSerializer(Ljava/io/OutputStream;Lorg/apache/xml/serialize/OutputFormat;)Lorg/apache/xml/serialize/Serializer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Lorg/apache/xml/serialize/SerializerFactoryImpl;->getSerializer(Lorg/apache/xml/serialize/OutputFormat;)Lorg/apache/xml/serialize/Serializer;

    move-result-object v4

    move-object v3, v4

    move-object v4, v3

    move-object v5, v1

    invoke-interface {v4, v5}, Lorg/apache/xml/serialize/Serializer;->setOutputByteStream(Ljava/io/OutputStream;)V

    move-object v4, v3

    move-object v0, v4

    return-object v0
.end method

.method public makeSerializer(Ljava/io/Writer;Lorg/apache/xml/serialize/OutputFormat;)Lorg/apache/xml/serialize/Serializer;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Lorg/apache/xml/serialize/SerializerFactoryImpl;->getSerializer(Lorg/apache/xml/serialize/OutputFormat;)Lorg/apache/xml/serialize/Serializer;

    move-result-object v4

    move-object v3, v4

    move-object v4, v3

    move-object v5, v1

    invoke-interface {v4, v5}, Lorg/apache/xml/serialize/Serializer;->setOutputCharStream(Ljava/io/Writer;)V

    move-object v4, v3

    move-object v0, v4

    return-object v0
.end method

.method public makeSerializer(Lorg/apache/xml/serialize/OutputFormat;)Lorg/apache/xml/serialize/Serializer;
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lorg/apache/xml/serialize/SerializerFactoryImpl;->getSerializer(Lorg/apache/xml/serialize/OutputFormat;)Lorg/apache/xml/serialize/Serializer;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Lorg/apache/xml/serialize/Serializer;->setOutputFormat(Lorg/apache/xml/serialize/OutputFormat;)V

    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method
