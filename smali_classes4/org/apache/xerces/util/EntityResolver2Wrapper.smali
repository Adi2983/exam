.class public Lorg/apache/xerces/util/EntityResolver2Wrapper;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xerces/impl/ExternalSubsetResolver;


# instance fields
.field protected fEntityResolver:Lorg/xml/sax/ext/EntityResolver2;


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ext/EntityResolver2;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/EntityResolver2Wrapper;->setEntityResolver(Lorg/xml/sax/ext/EntityResolver2;)V

    return-void
.end method

.method private createXMLInputSource(Lorg/xml/sax/InputSource;Ljava/lang/String;)Lorg/apache/xerces/xni/parser/XMLInputSource;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v10, v1

    invoke-virtual {v10}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    move-result-object v10

    move-object v3, v10

    move-object v10, v1

    invoke-virtual {v10}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v10

    move-object v4, v10

    move-object v10, v2

    move-object v5, v10

    move-object v10, v1

    invoke-virtual {v10}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v10

    move-object v6, v10

    move-object v10, v1

    invoke-virtual {v10}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v10

    move-object v7, v10

    move-object v10, v1

    invoke-virtual {v10}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    new-instance v10, Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    invoke-direct {v11, v12, v13, v14}, Lorg/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v10

    move-object v10, v9

    move-object v11, v6

    invoke-virtual {v10, v11}, Lorg/apache/xerces/xni/parser/XMLInputSource;->setByteStream(Ljava/io/InputStream;)V

    move-object v10, v9

    move-object v11, v7

    invoke-virtual {v10, v11}, Lorg/apache/xerces/xni/parser/XMLInputSource;->setCharacterStream(Ljava/io/Reader;)V

    move-object v10, v9

    move-object v11, v8

    invoke-virtual {v10, v11}, Lorg/apache/xerces/xni/parser/XMLInputSource;->setEncoding(Ljava/lang/String;)V

    move-object v10, v9

    move-object v0, v10

    return-object v0
.end method


# virtual methods
.method public getEntityResolver()Lorg/xml/sax/ext/EntityResolver2;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/EntityResolver2Wrapper;->fEntityResolver:Lorg/xml/sax/ext/EntityResolver2;

    move-object v0, v1

    return-object v0
.end method

.method public getExternalSubset(Lorg/apache/xerces/xni/grammars/XMLDTDDescription;)Lorg/apache/xerces/xni/parser/XMLInputSource;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/EntityResolver2Wrapper;->fEntityResolver:Lorg/xml/sax/ext/EntityResolver2;

    if-eqz v6, :cond_2

    move-object v6, v1

    invoke-interface {v6}, Lorg/apache/xerces/xni/grammars/XMLDTDDescription;->getRootName()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    move-object v6, v1

    invoke-interface {v6}, Lorg/apache/xerces/xni/grammars/XMLDTDDescription;->getBaseSystemId()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lorg/apache/xerces/util/EntityResolver2Wrapper;->fEntityResolver:Lorg/xml/sax/ext/EntityResolver2;

    move-object v7, v2

    move-object v8, v3

    invoke-interface {v6, v7, v8}, Lorg/xml/sax/ext/EntityResolver2;->getExternalSubset(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object v6

    move-object v4, v6

    move-object v6, v4

    if-eqz v6, :cond_0

    move-object v6, v0

    move-object v7, v4

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Lorg/apache/xerces/util/EntityResolver2Wrapper;->createXMLInputSource(Lorg/xml/sax/InputSource;Ljava/lang/String;)Lorg/apache/xerces/xni/parser/XMLInputSource;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :goto_0
    move-object v0, v6

    :goto_1
    return-object v0

    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    :catch_0
    move-exception v6

    move-object v4, v6

    move-object v6, v4

    invoke-virtual {v6}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v6

    move-object v5, v6

    move-object v6, v5

    if-nez v6, :cond_1

    move-object v6, v4

    move-object v5, v6

    :cond_1
    new-instance v6, Lorg/apache/xerces/xni/XNIException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v5

    invoke-direct {v7, v8}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v6

    :cond_2
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1
.end method

.method public resolveEntity(Lorg/apache/xerces/xni/XMLResourceIdentifier;)Lorg/apache/xerces/xni/parser/XMLInputSource;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/util/EntityResolver2Wrapper;->fEntityResolver:Lorg/xml/sax/ext/EntityResolver2;

    if-eqz v8, :cond_5

    move-object v8, v1

    invoke-interface {v8}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    move-object v8, v1

    invoke-interface {v8}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    move-object v8, v1

    invoke-interface {v8}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    const/4 v8, 0x0

    move-object v5, v8

    move-object v8, v1

    instance-of v8, v8, Lorg/apache/xerces/xni/grammars/XMLDTDDescription;

    if-eqz v8, :cond_1

    const-string/jumbo v8, "[dtd]"

    move-object v5, v8

    :cond_0
    :goto_0
    move-object v8, v2

    if-nez v8, :cond_2

    move-object v8, v3

    if-nez v8, :cond_2

    const/4 v8, 0x0

    move-object v0, v8

    :goto_1
    return-object v0

    :cond_1
    move-object v8, v1

    instance-of v8, v8, Lorg/apache/xerces/impl/XMLEntityDescription;

    if-eqz v8, :cond_0

    move-object v8, v1

    check-cast v8, Lorg/apache/xerces/impl/XMLEntityDescription;

    invoke-interface {v8}, Lorg/apache/xerces/impl/XMLEntityDescription;->getEntityName()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    goto :goto_0

    :cond_2
    move-object v8, v0

    :try_start_0
    iget-object v8, v8, Lorg/apache/xerces/util/EntityResolver2Wrapper;->fEntityResolver:Lorg/xml/sax/ext/EntityResolver2;

    move-object v9, v5

    move-object v10, v2

    move-object v11, v4

    move-object v12, v3

    invoke-interface {v8, v9, v10, v11, v12}, Lorg/xml/sax/ext/EntityResolver2;->resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object v8

    move-object v6, v8

    move-object v8, v6

    if-eqz v8, :cond_3

    move-object v8, v0

    move-object v9, v6

    move-object v10, v4

    invoke-direct {v8, v9, v10}, Lorg/apache/xerces/util/EntityResolver2Wrapper;->createXMLInputSource(Lorg/xml/sax/InputSource;Ljava/lang/String;)Lorg/apache/xerces/xni/parser/XMLInputSource;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    :goto_2
    move-object v0, v8

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    goto :goto_2

    :catch_0
    move-exception v8

    move-object v6, v8

    move-object v8, v6

    invoke-virtual {v8}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v8

    move-object v7, v8

    move-object v8, v7

    if-nez v8, :cond_4

    move-object v8, v6

    move-object v7, v8

    :cond_4
    new-instance v8, Lorg/apache/xerces/xni/XNIException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v7

    invoke-direct {v9, v10}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v8

    :cond_5
    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_1
.end method

.method public setEntityResolver(Lorg/xml/sax/ext/EntityResolver2;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/util/EntityResolver2Wrapper;->fEntityResolver:Lorg/xml/sax/ext/EntityResolver2;

    return-void
.end method
