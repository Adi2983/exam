.class public abstract Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;
.super Ljava/lang/Object;
.source "AbstractUnmarshallerImpl.java"

# interfaces
.implements Ljavax/xml/bind/Unmarshaller;


# instance fields
.field private eventHandler:Ljavax/xml/bind/ValidationEventHandler;

.field private reader:Lorg/xml/sax/XMLReader;

.field protected validating:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 56
    move-object v1, v0

    new-instance v2, Ljavax/xml/bind/helpers/DefaultValidationEventHandler;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavax/xml/bind/helpers/DefaultValidationEventHandler;-><init>()V

    iput-object v2, v1, Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;->eventHandler:Ljavax/xml/bind/ValidationEventHandler;

    .line 60
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;->validating:Z

    .line 65
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;->reader:Lorg/xml/sax/XMLReader;

    return-void
.end method

.method private static streamSourceToInputSource(Ljavax/xml/transform/stream/StreamSource;)Lorg/xml/sax/InputSource;
    .locals 5

    .prologue
    .line 199
    move-object v0, p0

    .local v0, "ss":Ljavax/xml/transform/stream/StreamSource;
    new-instance v2, Lorg/xml/sax/InputSource;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/xml/sax/InputSource;-><init>()V

    move-object v1, v2

    .line 200
    .local v1, "is":Lorg/xml/sax/InputSource;
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljavax/xml/transform/stream/StreamSource;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 201
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljavax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xml/sax/InputSource;->setByteStream(Ljava/io/InputStream;)V

    .line 202
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v3}, Ljavax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 204
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "ss":Ljavax/xml/transform/stream/StreamSource;
    return-object v0
.end method

.method private unmarshal(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;
    move-object v1, p1

    .local v1, "url":Ljava/lang/String;
    move-object v2, v0

    new-instance v3, Lorg/xml/sax/InputSource;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;->unmarshal(Lorg/xml/sax/InputSource;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;
    return-object v0
.end method

.method private unmarshal(Ljavax/xml/transform/sax/SAXSource;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;
    move-object v1, p1

    .local v1, "source":Ljavax/xml/transform/sax/SAXSource;
    move-object v3, v1

    invoke-virtual {v3}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v3

    move-object v2, v3

    .line 117
    .local v2, "reader":Lorg/xml/sax/XMLReader;
    move-object v3, v2

    if-nez v3, :cond_0

    .line 118
    move-object v3, v0

    invoke-virtual {v3}, Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v3

    move-object v2, v3

    .line 120
    :cond_0
    move-object v3, v0

    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v5}, Ljavax/xml/transform/sax/SAXSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;->unmarshal(Lorg/xml/sax/XMLReader;Lorg/xml/sax/InputSource;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;
    return-object v0
.end method


# virtual methods
.method protected createUnmarshalException(Lorg/xml/sax/SAXException;)Ljavax/xml/bind/UnmarshalException;
    .locals 7

    .prologue
    .line 300
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;
    move-object v1, p1

    .local v1, "e":Lorg/xml/sax/SAXException;
    move-object v3, v1

    invoke-virtual {v3}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v3

    move-object v2, v3

    .line 301
    .local v2, "nested":Ljava/lang/Exception;
    move-object v3, v2

    instance-of v3, v3, Ljavax/xml/bind/UnmarshalException;

    if-eqz v3, :cond_0

    .line 302
    move-object v3, v2

    check-cast v3, Ljavax/xml/bind/UnmarshalException;

    move-object v0, v3

    .line 315
    .end local v0    # "this":Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;
    :goto_0
    return-object v0

    .line 304
    .restart local v0    # "this":Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;
    :cond_0
    move-object v3, v2

    instance-of v3, v3, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_1

    .line 308
    move-object v3, v2

    check-cast v3, Ljava/lang/RuntimeException;

    throw v3

    .line 312
    :cond_1
    move-object v3, v2

    if-eqz v3, :cond_2

    .line 313
    new-instance v3, Ljavax/xml/bind/UnmarshalException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Ljavax/xml/bind/UnmarshalException;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v3

    goto :goto_0

    .line 315
    :cond_2
    new-instance v3, Ljavax/xml/bind/UnmarshalException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljavax/xml/bind/UnmarshalException;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v3

    goto :goto_0
.end method

.method public getAdapter(Ljava/lang/Class;)Ljavax/xml/bind/annotation/adapters/XmlAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljavax/xml/bind/annotation/adapters/XmlAdapter;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .prologue
    .line 397
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;
    move-object v1, p1

    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public getAttachmentUnmarshaller()Ljavax/xml/bind/attachment/AttachmentUnmarshaller;
    .locals 4

    .prologue
    .line 405
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public getEventHandler()Ljavax/xml/bind/ValidationEventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 275
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;->eventHandler:Ljavax/xml/bind/ValidationEventHandler;

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;
    return-object v0
.end method

.method public getListener()Ljavax/xml/bind/Unmarshaller$Listener;
    .locals 4

    .prologue
    .line 413
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/PropertyException;
        }
    .end annotation

    .prologue
    .line 344
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 345
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "Shared.MustNotBeNull"

    const-string/jumbo v5, "name"

    invoke-static {v4, v5}, Ljavax/xml/bind/helpers/Messages;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 349
    :cond_0
    new-instance v2, Ljavax/xml/bind/PropertyException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavax/xml/bind/PropertyException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getSchema()Ljavax/xml/validation/Schema;
    .locals 4

    .prologue
    .line 383
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method protected getXMLReader()Lorg/xml/sax/XMLReader;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;
    move-object v2, v0

    iget-object v2, v2, Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;->reader:Lorg/xml/sax/XMLReader;

    if-nez v2, :cond_0

    .line 80
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v2

    move-object v1, v2

    .line 81
    .local v1, "parserFactory":Ljavax/xml/parsers/SAXParserFactory;
    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 85
    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    .line 86
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v3

    iput-object v3, v2, Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;->reader:Lorg/xml/sax/XMLReader;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    .line 91
    .line 93
    .end local v1    # "parserFactory":Ljavax/xml/parsers/SAXParserFactory;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;->reader:Lorg/xml/sax/XMLReader;

    move-object v0, v2

    .end local v0    # "this":Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;
    return-object v0

    .line 87
    .restart local v0    # "this":Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 88
    .local v1, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v2, Ljavax/xml/bind/JAXBException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavax/xml/bind/JAXBException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 89
    .end local v1    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 90
    .local v1, "e":Lorg/xml/sax/SAXException;
    new-instance v2, Ljavax/xml/bind/JAXBException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavax/xml/bind/JAXBException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public isValidating()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 221
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;
    move-object v1, v0

    iget-boolean v1, v1, Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;->validating:Z

    move v0, v1

    .end local v0    # "this":Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;
    return v0
.end method

.method public setAdapter(Ljava/lang/Class;Ljavax/xml/bind/annotation/adapters/XmlAdapter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljavax/xml/bind/annotation/adapters/XmlAdapter;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;TA;)V"
        }
    .end annotation

    .prologue
    .line 393
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;
    move-object v1, p1

    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    move-object v2, p2

    .local v2, "adapter":Ljavax/xml/bind/annotation/adapters/XmlAdapter;, "TA;"
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3
.end method

.method public setAdapter(Ljavax/xml/bind/annotation/adapters/XmlAdapter;)V
    .locals 6

    .prologue
    .line 387
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;
    move-object v1, p1

    .local v1, "adapter":Ljavax/xml/bind/annotation/adapters/XmlAdapter;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 388
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 389
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;->setAdapter(Ljava/lang/Class;Ljavax/xml/bind/annotation/adapters/XmlAdapter;)V

    .line 390
    return-void
.end method

.method public setAttachmentUnmarshaller(Ljavax/xml/bind/attachment/AttachmentUnmarshaller;)V
    .locals 5

    .prologue
    .line 401
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;
    move-object v1, p1

    .local v1, "au":Ljavax/xml/bind/attachment/AttachmentUnmarshaller;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public setEventHandler(Ljavax/xml/bind/ValidationEventHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;
    move-object v1, p1

    .local v1, "handler":Ljavax/xml/bind/ValidationEventHandler;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 242
    move-object v2, v0

    new-instance v3, Ljavax/xml/bind/helpers/DefaultValidationEventHandler;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljavax/xml/bind/helpers/DefaultValidationEventHandler;-><init>()V

    iput-object v3, v2, Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;->eventHandler:Ljavax/xml/bind/ValidationEventHandler;

    .line 243
    .line 246
    :goto_0
    return-void

    .line 244
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;->eventHandler:Ljavax/xml/bind/ValidationEventHandler;

    goto :goto_0
.end method

.method public setListener(Ljavax/xml/bind/Unmarshaller$Listener;)V
    .locals 5

    .prologue
    .line 409
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;
    move-object v1, p1

    .local v1, "listener":Ljavax/xml/bind/Unmarshaller$Listener;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/PropertyException;
        }
    .end annotation

    .prologue
    .line 327
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "value":Ljava/lang/Object;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 328
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "Shared.MustNotBeNull"

    const-string/jumbo v6, "name"

    invoke-static {v5, v6}, Ljavax/xml/bind/helpers/Messages;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 332
    :cond_0
    new-instance v3, Ljavax/xml/bind/PropertyException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljavax/xml/bind/PropertyException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw v3
.end method

.method public setSchema(Ljavax/xml/validation/Schema;)V
    .locals 5

    .prologue
    .line 379
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;
    move-object v1, p1

    .local v1, "schema":Ljavax/xml/validation/Schema;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public setValidating(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 262
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;
    move v1, p1

    .local v1, "validating":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;->validating:Z

    .line 263
    return-void
.end method

.method public final unmarshal(Ljava/io/File;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;
    move-object v1, p1

    .local v1, "f":Ljava/io/File;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 156
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const-string/jumbo v5, "Shared.MustNotBeNull"

    const-string/jumbo v6, "file"

    invoke-static {v5, v6}, Ljavax/xml/bind/helpers/Messages;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 162
    :cond_0
    move-object v3, v1

    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 163
    .local v2, "path":Ljava/lang/String;
    sget-char v3, Ljava/io/File;->separatorChar:C

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_1

    .line 164
    move-object v3, v2

    sget-char v4, Ljava/io/File;->separatorChar:C

    const/16 v5, 0x2f

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 165
    :cond_1
    move-object v3, v2

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 166
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 167
    :cond_2
    move-object v3, v2

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object v3, v1

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 168
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 169
    :cond_3
    move-object v3, v0

    new-instance v4, Ljava/net/URL;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "file"

    const-string/jumbo v7, ""

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;->unmarshal(Ljava/net/URL;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;
    return-object v0

    .line 170
    .end local v2    # "path":Ljava/lang/String;
    .restart local v0    # "this":Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 171
    .local v2, "e":Ljava/net/MalformedURLException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v2

    invoke-virtual {v5}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final unmarshal(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 178
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;
    move-object v1, p1

    .local v1, "is":Ljava/io/InputStream;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 179
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "Shared.MustNotBeNull"

    const-string/jumbo v6, "is"

    invoke-static {v5, v6}, Ljavax/xml/bind/helpers/Messages;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 183
    :cond_0
    new-instance v3, Lorg/xml/sax/InputSource;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-direct {v4, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    move-object v2, v3

    .line 184
    .local v2, "isrc":Lorg/xml/sax/InputSource;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;->unmarshal(Lorg/xml/sax/InputSource;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;
    return-object v0
.end method

.method public final unmarshal(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 188
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;
    move-object v1, p1

    .local v1, "reader":Ljava/io/Reader;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 189
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "Shared.MustNotBeNull"

    const-string/jumbo v6, "reader"

    invoke-static {v5, v6}, Ljavax/xml/bind/helpers/Messages;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 193
    :cond_0
    new-instance v3, Lorg/xml/sax/InputSource;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-direct {v4, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    move-object v2, v3

    .line 194
    .local v2, "isrc":Lorg/xml/sax/InputSource;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;->unmarshal(Lorg/xml/sax/InputSource;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;
    return-object v0
.end method

.method public final unmarshal(Ljava/net/URL;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;
    move-object v1, p1

    .local v1, "url":Ljava/net/URL;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 147
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "Shared.MustNotBeNull"

    const-string/jumbo v5, "url"

    invoke-static {v4, v5}, Ljavax/xml/bind/helpers/Messages;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 151
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;->unmarshal(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;
    return-object v0
.end method

.method public unmarshal(Ljavax/xml/stream/XMLEventReader;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 354
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;
    move-object v1, p1

    .local v1, "reader":Ljavax/xml/stream/XMLEventReader;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public unmarshal(Ljavax/xml/stream/XMLStreamReader;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 359
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;
    move-object v1, p1

    .local v1, "reader":Ljavax/xml/stream/XMLStreamReader;
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method public unmarshal(Ljavax/xml/transform/Source;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 97
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;
    move-object v1, p1

    .local v1, "source":Ljavax/xml/transform/Source;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 98
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "Shared.MustNotBeNull"

    const-string/jumbo v5, "source"

    invoke-static {v4, v5}, Ljavax/xml/bind/helpers/Messages;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 102
    :cond_0
    move-object v2, v1

    instance-of v2, v2, Ljavax/xml/transform/sax/SAXSource;

    if-eqz v2, :cond_1

    .line 103
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavax/xml/transform/sax/SAXSource;

    invoke-direct {v2, v3}, Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;->unmarshal(Ljavax/xml/transform/sax/SAXSource;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .line 107
    .end local v0    # "this":Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;
    :goto_0
    return-object v0

    .line 104
    .restart local v0    # "this":Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;
    :cond_1
    move-object v2, v1

    instance-of v2, v2, Ljavax/xml/transform/stream/StreamSource;

    if-eqz v2, :cond_2

    .line 105
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavax/xml/transform/stream/StreamSource;

    invoke-static {v3}, Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;->streamSourceToInputSource(Ljavax/xml/transform/stream/StreamSource;)Lorg/xml/sax/InputSource;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;->unmarshal(Lorg/xml/sax/InputSource;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 106
    :cond_2
    move-object v2, v1

    instance-of v2, v2, Ljavax/xml/transform/dom/DOMSource;

    if-eqz v2, :cond_3

    .line 107
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljavax/xml/transform/dom/DOMSource;

    invoke-virtual {v3}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;->unmarshal(Lorg/w3c/dom/Node;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 110
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method public final unmarshal(Lorg/xml/sax/InputSource;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;
    move-object v1, p1

    .local v1, "source":Lorg/xml/sax/InputSource;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 133
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "Shared.MustNotBeNull"

    const-string/jumbo v5, "source"

    invoke-static {v4, v5}, Ljavax/xml/bind/helpers/Messages;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 137
    :cond_0
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;->unmarshal(Lorg/xml/sax/XMLReader;Lorg/xml/sax/InputSource;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;
    return-object v0
.end method

.method protected abstract unmarshal(Lorg/xml/sax/XMLReader;Lorg/xml/sax/InputSource;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation
.end method

.method public unmarshal(Ljavax/xml/stream/XMLEventReader;Ljava/lang/Class;)Ljavax/xml/bind/JAXBElement;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/xml/stream/XMLEventReader;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljavax/xml/bind/JAXBElement",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 375
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;
    move-object v1, p1

    .local v1, "reader":Ljavax/xml/stream/XMLEventReader;
    move-object v2, p2

    .local v2, "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3
.end method

.method public unmarshal(Ljavax/xml/stream/XMLStreamReader;Ljava/lang/Class;)Ljavax/xml/bind/JAXBElement;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/xml/stream/XMLStreamReader;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljavax/xml/bind/JAXBElement",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 371
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;
    move-object v1, p1

    .local v1, "reader":Ljavax/xml/stream/XMLStreamReader;
    move-object v2, p2

    .local v2, "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3
.end method

.method public unmarshal(Ljavax/xml/transform/Source;Ljava/lang/Class;)Ljavax/xml/bind/JAXBElement;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/xml/transform/Source;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljavax/xml/bind/JAXBElement",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 367
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;
    move-object v1, p1

    .local v1, "source":Ljavax/xml/transform/Source;
    move-object v2, p2

    .local v2, "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3
.end method

.method public unmarshal(Lorg/w3c/dom/Node;Ljava/lang/Class;)Ljavax/xml/bind/JAXBElement;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/w3c/dom/Node;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljavax/xml/bind/JAXBElement",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 363
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/helpers/AbstractUnmarshallerImpl;
    move-object v1, p1

    .local v1, "node":Lorg/w3c/dom/Node;
    move-object v2, p2

    .local v2, "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v3
.end method
