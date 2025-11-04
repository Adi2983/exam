.class final Lorg/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;
.super Lorg/apache/xerces/impl/xs/opti/DefaultXMLDocumentHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/jaxp/JAXPValidatorComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "XNI2SAX"
.end annotation


# instance fields
.field private final fAttributesProxy:Lorg/apache/xerces/util/AttributesProxy;

.field private fContentHandler:Lorg/xml/sax/ContentHandler;

.field protected fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

.field private fVersion:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 6

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lorg/apache/xerces/impl/xs/opti/DefaultXMLDocumentHandler;-><init>()V

    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/util/AttributesProxy;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/apache/xerces/util/AttributesProxy;-><init>(Lorg/apache/xerces/xni/XMLAttributes;)V

    iput-object v2, v1, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fAttributesProxy:Lorg/apache/xerces/util/AttributesProxy;

    return-void
.end method

.method constructor <init>(Lorg/apache/xerces/jaxp/JAXPValidatorComponent$1;)V
    .locals 3

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;-><init>()V

    return-void
.end method


# virtual methods
.method public characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fContentHandler:Lorg/xml/sax/ContentHandler;

    move-object v5, v1

    iget-object v5, v5, Lorg/apache/xerces/xni/XMLString;->ch:[C

    move-object v6, v1

    iget v6, v6, Lorg/apache/xerces/xni/XMLString;->offset:I

    move-object v7, v1

    iget v7, v7, Lorg/apache/xerces/xni/XMLString;->length:I

    invoke-interface {v4, v5, v6, v7}, Lorg/xml/sax/ContentHandler;->characters([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v4

    move-object v3, v4

    new-instance v4, Lorg/apache/xerces/xni/XNIException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v3

    invoke-direct {v5, v6}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method public emptyElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V

    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public endDocument(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v3}, Lorg/xml/sax/ContentHandler;->endDocument()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v3

    move-object v2, v3

    new-instance v3, Lorg/apache/xerces/xni/XNIException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method public endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v1

    :try_start_0
    iget-object v7, v7, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v7, :cond_1

    move-object v7, v1

    iget-object v7, v7, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    :goto_0
    move-object v3, v7

    move-object v7, v1

    iget-object v7, v7, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object v4, v7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fContentHandler:Lorg/xml/sax/ContentHandler;

    move-object v8, v3

    move-object v9, v4

    move-object v10, v1

    iget-object v10, v10, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-interface {v7, v8, v9, v10}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-interface {v7}, Lorg/apache/xerces/xni/NamespaceContext;->getDeclaredPrefixCount()I

    move-result v7

    move v5, v7

    move v7, v5

    if-lez v7, :cond_0

    const/4 v7, 0x0

    move v6, v7

    :goto_1
    move v7, v6

    move v8, v5

    if-lt v7, v8, :cond_2

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v7, ""

    goto :goto_0

    :cond_2
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fContentHandler:Lorg/xml/sax/ContentHandler;

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    move v9, v6

    invoke-interface {v8, v9}, Lorg/apache/xerces/xni/NamespaceContext;->getDeclaredPrefixAt(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catch_0
    move-exception v7

    move-object v3, v7

    new-instance v7, Lorg/apache/xerces/xni/XNIException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v3

    invoke-direct {v8, v9}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v7
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fContentHandler:Lorg/xml/sax/ContentHandler;

    move-object v0, v1

    return-object v0
.end method

.method public ignorableWhitespace(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fContentHandler:Lorg/xml/sax/ContentHandler;

    move-object v5, v1

    iget-object v5, v5, Lorg/apache/xerces/xni/XMLString;->ch:[C

    move-object v6, v1

    iget v6, v6, Lorg/apache/xerces/xni/XMLString;->offset:I

    move-object v7, v1

    iget v7, v7, Lorg/apache/xerces/xni/XMLString;->length:I

    invoke-interface {v4, v5, v6, v7}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v4

    move-object v3, v4

    new-instance v4, Lorg/apache/xerces/xni/XNIException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v3

    invoke-direct {v5, v6}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method public processingInstruction(Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fContentHandler:Lorg/xml/sax/ContentHandler;

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v7}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v5

    move-object v4, v5

    new-instance v5, Lorg/apache/xerces/xni/XNIException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v4

    invoke-direct {v6, v7}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v5
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fContentHandler:Lorg/xml/sax/ContentHandler;

    return-void
.end method

.method public startDocument(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lorg/apache/xerces/xni/NamespaceContext;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fContentHandler:Lorg/xml/sax/ContentHandler;

    new-instance v7, Lorg/apache/xerces/util/LocatorProxy;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v1

    invoke-direct {v8, v9}, Lorg/apache/xerces/util/LocatorProxy;-><init>(Lorg/apache/xerces/xni/XMLLocator;)V

    invoke-interface {v6, v7}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v6}, Lorg/xml/sax/ContentHandler;->startDocument()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v6

    move-object v5, v6

    new-instance v6, Lorg/apache/xerces/xni/XNIException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v5

    invoke-direct {v7, v8}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v6
.end method

.method public startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v8, v0

    :try_start_0
    iget-object v8, v8, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-interface {v8}, Lorg/apache/xerces/xni/NamespaceContext;->getDeclaredPrefixCount()I

    move-result v8

    move v4, v8

    move v8, v4

    if-lez v8, :cond_0

    const/4 v8, 0x0

    move-object v5, v8

    const/4 v8, 0x0

    move-object v6, v8

    const/4 v8, 0x0

    move v7, v8

    :goto_0
    move v8, v7

    move v9, v4

    if-lt v8, v9, :cond_1

    :cond_0
    move-object v8, v1

    iget-object v8, v8, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v8, :cond_3

    move-object v8, v1

    iget-object v8, v8, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    :goto_1
    move-object v5, v8

    move-object v8, v1

    iget-object v8, v8, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object v6, v8

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fAttributesProxy:Lorg/apache/xerces/util/AttributesProxy;

    move-object v9, v2

    invoke-virtual {v8, v9}, Lorg/apache/xerces/util/AttributesProxy;->setAttributes(Lorg/apache/xerces/xni/XMLAttributes;)V

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fContentHandler:Lorg/xml/sax/ContentHandler;

    move-object v9, v5

    move-object v10, v6

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fAttributesProxy:Lorg/apache/xerces/util/AttributesProxy;

    invoke-interface {v8, v9, v10, v11, v12}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void

    :cond_1
    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    move v9, v7

    invoke-interface {v8, v9}, Lorg/apache/xerces/xni/NamespaceContext;->getDeclaredPrefixAt(I)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    move-object v9, v5

    invoke-interface {v8, v9}, Lorg/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fContentHandler:Lorg/xml/sax/ContentHandler;

    move-object v9, v5

    move-object v10, v6

    if-nez v10, :cond_2

    const-string/jumbo v10, ""

    :goto_2
    invoke-interface {v8, v9, v10}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    move-object v10, v6

    goto :goto_2

    :cond_3
    const-string/jumbo v8, ""
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v8

    move-object v4, v8

    new-instance v8, Lorg/apache/xerces/xni/XNIException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v4

    invoke-direct {v9, v10}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v8
.end method

.method public xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lorg/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fVersion:Ljava/lang/String;

    return-void
.end method
