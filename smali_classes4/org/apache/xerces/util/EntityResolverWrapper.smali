.class public Lorg/apache/xerces/util/EntityResolverWrapper;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xerces/xni/parser/XMLEntityResolver;


# instance fields
.field protected fEntityResolver:Lorg/xml/sax/EntityResolver;


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/EntityResolver;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/EntityResolverWrapper;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    return-void
.end method


# virtual methods
.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/EntityResolverWrapper;->fEntityResolver:Lorg/xml/sax/EntityResolver;

    move-object v0, v1

    return-object v0
.end method

.method public resolveEntity(Lorg/apache/xerces/xni/XMLResourceIdentifier;)Lorg/apache/xerces/xni/parser/XMLInputSource;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v12, v1

    invoke-interface {v12}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v12

    move-object v2, v12

    move-object v12, v1

    invoke-interface {v12}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v12

    move-object v3, v12

    move-object v12, v2

    if-nez v12, :cond_0

    move-object v12, v3

    if-nez v12, :cond_0

    const/4 v12, 0x0

    move-object v0, v12

    :goto_0
    return-object v0

    :cond_0
    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xerces/util/EntityResolverWrapper;->fEntityResolver:Lorg/xml/sax/EntityResolver;

    if-eqz v12, :cond_1

    move-object v12, v1

    if-eqz v12, :cond_1

    move-object v12, v0

    :try_start_0
    iget-object v12, v12, Lorg/apache/xerces/util/EntityResolverWrapper;->fEntityResolver:Lorg/xml/sax/EntityResolver;

    move-object v13, v2

    move-object v14, v3

    invoke-interface {v12, v13, v14}, Lorg/xml/sax/EntityResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object v12

    move-object v4, v12

    move-object v12, v4

    if-eqz v12, :cond_1

    move-object v12, v4

    invoke-virtual {v12}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    move-result-object v12

    move-object v5, v12

    move-object v12, v4

    invoke-virtual {v12}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v12

    move-object v6, v12

    move-object v12, v1

    invoke-interface {v12}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v12

    move-object v7, v12

    move-object v12, v4

    invoke-virtual {v12}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v12

    move-object v8, v12

    move-object v12, v4

    invoke-virtual {v12}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v12

    move-object v9, v12

    move-object v12, v4

    invoke-virtual {v12}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    new-instance v12, Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    invoke-direct/range {v13 .. v16}, Lorg/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v11, v12

    move-object v12, v11

    move-object v13, v8

    invoke-virtual {v12, v13}, Lorg/apache/xerces/xni/parser/XMLInputSource;->setByteStream(Ljava/io/InputStream;)V

    move-object v12, v11

    move-object v13, v9

    invoke-virtual {v12, v13}, Lorg/apache/xerces/xni/parser/XMLInputSource;->setCharacterStream(Ljava/io/Reader;)V

    move-object v12, v11

    move-object v13, v10

    invoke-virtual {v12, v13}, Lorg/apache/xerces/xni/parser/XMLInputSource;->setEncoding(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v12, v11

    move-object v0, v12

    goto :goto_0

    :cond_1
    const/4 v12, 0x0

    move-object v0, v12

    goto :goto_0

    :catch_0
    move-exception v12

    move-object v4, v12

    move-object v12, v4

    invoke-virtual {v12}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v12

    move-object v5, v12

    move-object v12, v5

    if-nez v12, :cond_2

    move-object v12, v4

    move-object v5, v12

    :cond_2
    new-instance v12, Lorg/apache/xerces/xni/XNIException;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v5

    invoke-direct {v13, v14}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v12
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/util/EntityResolverWrapper;->fEntityResolver:Lorg/xml/sax/EntityResolver;

    return-void
.end method
