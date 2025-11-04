.class final Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$ResolutionForwarder;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/xml/sax/ext/EntityResolver2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ResolutionForwarder"
.end annotation


# static fields
.field private static final XML_TYPE:Ljava/lang/String; = "http://www.w3.org/TR/REC-xml"


# instance fields
.field protected fEntityResolver:Lorg/w3c/dom/ls/LSResourceResolver;


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/ls/LSResourceResolver;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$ResolutionForwarder;->setEntityResolver(Lorg/w3c/dom/ls/LSResourceResolver;)V

    return-void
.end method

.method private resolveSystemId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    :try_start_0
    invoke-static {v4, v5, v6}, Lorg/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v0, v4

    :goto_0
    return-object v0

    :catch_0
    move-exception v4

    move-object v3, v4

    move-object v4, v1

    move-object v0, v4

    goto :goto_0
.end method


# virtual methods
.method public getEntityResolver()Lorg/w3c/dom/ls/LSResourceResolver;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$ResolutionForwarder;->fEntityResolver:Lorg/w3c/dom/ls/LSResourceResolver;

    move-object v0, v1

    return-object v0
.end method

.method public getExternalSubset(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v3, 0x0

    move-object v0, v3

    return-object v0
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v1

    const/4 v6, 0x0

    move-object v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$ResolutionForwarder;->resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$ResolutionForwarder;->fEntityResolver:Lorg/w3c/dom/ls/LSResourceResolver;

    if-eqz v14, :cond_4

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$ResolutionForwarder;->fEntityResolver:Lorg/w3c/dom/ls/LSResourceResolver;

    const-string/jumbo v15, "http://www.w3.org/TR/REC-xml"

    const/16 v16, 0x0

    move-object/from16 v17, v2

    move-object/from16 v18, v4

    move-object/from16 v19, v3

    invoke-interface/range {v14 .. v19}, Lorg/w3c/dom/ls/LSResourceResolver;->resolveResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ls/LSInput;

    move-result-object v14

    move-object v5, v14

    move-object v14, v5

    if-eqz v14, :cond_4

    move-object v14, v5

    invoke-interface {v14}, Lorg/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v14

    move-object v6, v14

    move-object v14, v5

    invoke-interface {v14}, Lorg/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v14

    move-object v7, v14

    move-object v14, v5

    invoke-interface {v14}, Lorg/w3c/dom/ls/LSInput;->getBaseURI()Ljava/lang/String;

    move-result-object v14

    move-object v8, v14

    move-object v14, v5

    invoke-interface {v14}, Lorg/w3c/dom/ls/LSInput;->getCharacterStream()Ljava/io/Reader;

    move-result-object v14

    move-object v9, v14

    move-object v14, v5

    invoke-interface {v14}, Lorg/w3c/dom/ls/LSInput;->getByteStream()Ljava/io/InputStream;

    move-result-object v14

    move-object v10, v14

    move-object v14, v5

    invoke-interface {v14}, Lorg/w3c/dom/ls/LSInput;->getStringData()Ljava/lang/String;

    move-result-object v14

    move-object v11, v14

    move-object v14, v5

    invoke-interface {v14}, Lorg/w3c/dom/ls/LSInput;->getEncoding()Ljava/lang/String;

    move-result-object v14

    move-object v12, v14

    new-instance v14, Lorg/xml/sax/InputSource;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    invoke-direct {v15}, Lorg/xml/sax/InputSource;-><init>()V

    move-object v13, v14

    move-object v14, v13

    move-object v15, v6

    invoke-virtual {v14, v15}, Lorg/xml/sax/InputSource;->setPublicId(Ljava/lang/String;)V

    move-object v14, v13

    move-object v15, v8

    if-eqz v15, :cond_1

    move-object v15, v0

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    invoke-direct/range {v15 .. v17}, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$ResolutionForwarder;->resolveSystemId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    :goto_0
    invoke-virtual {v14, v15}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    move-object v14, v9

    if-eqz v14, :cond_2

    move-object v14, v13

    move-object v15, v9

    invoke-virtual {v14, v15}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    :cond_0
    :goto_1
    move-object v14, v13

    move-object v15, v12

    invoke-virtual {v14, v15}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    move-object v14, v13

    move-object v0, v14

    :goto_2
    return-object v0

    :cond_1
    move-object v15, v7

    goto :goto_0

    :cond_2
    move-object v14, v10

    if-eqz v14, :cond_3

    move-object v14, v13

    move-object v15, v10

    invoke-virtual {v14, v15}, Lorg/xml/sax/InputSource;->setByteStream(Ljava/io/InputStream;)V

    goto :goto_1

    :cond_3
    move-object v14, v11

    if-eqz v14, :cond_0

    move-object v14, v11

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_0

    move-object v14, v13

    new-instance v15, Ljava/io/StringReader;

    move-object/from16 v20, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v20

    move-object/from16 v17, v11

    invoke-direct/range {v16 .. v17}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    goto :goto_1

    :cond_4
    const/4 v14, 0x0

    move-object v0, v14

    goto :goto_2
.end method

.method public setEntityResolver(Lorg/w3c/dom/ls/LSResourceResolver;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$ResolutionForwarder;->fEntityResolver:Lorg/w3c/dom/ls/LSResourceResolver;

    return-void
.end method
