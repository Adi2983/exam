.class public Lorg/apache/xerces/util/DOMEntityResolverWrapper;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xerces/xni/parser/XMLEntityResolver;


# static fields
.field private static final XML_TYPE:Ljava/lang/String; = "http://www.w3.org/TR/REC-xml"

.field private static final XSD_TYPE:Ljava/lang/String; = "http://www.w3.org/2001/XMLSchema"


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

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/DOMEntityResolverWrapper;->setEntityResolver(Lorg/w3c/dom/ls/LSResourceResolver;)V

    return-void
.end method

.method private getType(Lorg/apache/xerces/xni/XMLResourceIdentifier;)Ljava/lang/String;
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    instance-of v3, v3, Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;

    move-object v2, v3

    const-string/jumbo v3, "http://www.w3.org/2001/XMLSchema"

    move-object v4, v2

    invoke-interface {v4}, Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;->getGrammarType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "http://www.w3.org/2001/XMLSchema"

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v3, "http://www.w3.org/TR/REC-xml"

    move-object v0, v3

    goto :goto_0
.end method


# virtual methods
.method public getEntityResolver()Lorg/w3c/dom/ls/LSResourceResolver;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/DOMEntityResolverWrapper;->fEntityResolver:Lorg/w3c/dom/ls/LSResourceResolver;

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

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/util/DOMEntityResolverWrapper;->fEntityResolver:Lorg/w3c/dom/ls/LSResourceResolver;

    if-eqz v11, :cond_4

    move-object v11, v1

    if-nez v11, :cond_1

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/util/DOMEntityResolverWrapper;->fEntityResolver:Lorg/w3c/dom/ls/LSResourceResolver;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-interface/range {v11 .. v16}, Lorg/w3c/dom/ls/LSResourceResolver;->resolveResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ls/LSInput;

    move-result-object v11

    :goto_0
    move-object v2, v11

    move-object v11, v2

    if-eqz v11, :cond_4

    move-object v11, v2

    invoke-interface {v11}, Lorg/w3c/dom/ls/LSInput;->getPublicId()Ljava/lang/String;

    move-result-object v11

    move-object v3, v11

    move-object v11, v2

    invoke-interface {v11}, Lorg/w3c/dom/ls/LSInput;->getSystemId()Ljava/lang/String;

    move-result-object v11

    move-object v4, v11

    move-object v11, v2

    invoke-interface {v11}, Lorg/w3c/dom/ls/LSInput;->getBaseURI()Ljava/lang/String;

    move-result-object v11

    move-object v5, v11

    move-object v11, v2

    invoke-interface {v11}, Lorg/w3c/dom/ls/LSInput;->getByteStream()Ljava/io/InputStream;

    move-result-object v11

    move-object v6, v11

    move-object v11, v2

    invoke-interface {v11}, Lorg/w3c/dom/ls/LSInput;->getCharacterStream()Ljava/io/Reader;

    move-result-object v11

    move-object v7, v11

    move-object v11, v2

    invoke-interface {v11}, Lorg/w3c/dom/ls/LSInput;->getEncoding()Ljava/lang/String;

    move-result-object v11

    move-object v8, v11

    move-object v11, v2

    invoke-interface {v11}, Lorg/w3c/dom/ls/LSInput;->getStringData()Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    new-instance v11, Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v3

    move-object v14, v4

    move-object v15, v5

    invoke-direct {v12, v13, v14, v15}, Lorg/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v11

    move-object v11, v7

    if-eqz v11, :cond_2

    move-object v11, v10

    move-object v12, v7

    invoke-virtual {v11, v12}, Lorg/apache/xerces/xni/parser/XMLInputSource;->setCharacterStream(Ljava/io/Reader;)V

    :cond_0
    :goto_1
    move-object v11, v10

    move-object v12, v8

    invoke-virtual {v11, v12}, Lorg/apache/xerces/xni/parser/XMLInputSource;->setEncoding(Ljava/lang/String;)V

    move-object v11, v10

    move-object v0, v11

    :goto_2
    return-object v0

    :cond_1
    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/util/DOMEntityResolverWrapper;->fEntityResolver:Lorg/w3c/dom/ls/LSResourceResolver;

    move-object v12, v0

    move-object v13, v1

    invoke-direct {v12, v13}, Lorg/apache/xerces/util/DOMEntityResolverWrapper;->getType(Lorg/apache/xerces/xni/XMLResourceIdentifier;)Ljava/lang/String;

    move-result-object v12

    move-object v13, v1

    invoke-interface {v13}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getNamespace()Ljava/lang/String;

    move-result-object v13

    move-object v14, v1

    invoke-interface {v14}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v14

    move-object v15, v1

    invoke-interface {v15}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v1

    invoke-interface/range {v16 .. v16}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v11 .. v16}, Lorg/w3c/dom/ls/LSResourceResolver;->resolveResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ls/LSInput;

    move-result-object v11

    goto :goto_0

    :cond_2
    move-object v11, v6

    if-eqz v11, :cond_3

    move-object v11, v10

    move-object v12, v6

    invoke-virtual {v11, v12}, Lorg/apache/xerces/xni/parser/XMLInputSource;->setByteStream(Ljava/io/InputStream;)V

    goto :goto_1

    :cond_3
    move-object v11, v9

    if-eqz v11, :cond_0

    move-object v11, v9

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_0

    move-object v11, v10

    new-instance v12, Ljava/io/StringReader;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v9

    invoke-direct {v13, v14}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Lorg/apache/xerces/xni/parser/XMLInputSource;->setCharacterStream(Ljava/io/Reader;)V

    goto :goto_1

    :cond_4
    const/4 v11, 0x0

    move-object v0, v11

    goto :goto_2
.end method

.method public setEntityResolver(Lorg/w3c/dom/ls/LSResourceResolver;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/util/DOMEntityResolverWrapper;->fEntityResolver:Lorg/w3c/dom/ls/LSResourceResolver;

    return-void
.end method
