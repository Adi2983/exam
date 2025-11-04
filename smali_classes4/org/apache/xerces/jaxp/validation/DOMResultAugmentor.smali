.class final Lorg/apache/xerces/jaxp/validation/DOMResultAugmentor;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xerces/jaxp/validation/DOMDocumentHandler;


# instance fields
.field private final fAttributeQName:Lorg/apache/xerces/xni/QName;

.field private final fDOMValidatorHelper:Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;

.field private fDocument:Lorg/w3c/dom/Document;

.field private fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

.field private fIgnoreChars:Z

.field private fStorePSVI:Z


# direct methods
.method public constructor <init>(Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/xni/QName;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/DOMResultAugmentor;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/DOMResultAugmentor;->fDOMValidatorHelper:Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;

    return-void
.end method

.method private processAttributePSVI(Lorg/apache/xerces/dom/AttrImpl;Lorg/apache/xerces/xs/AttributePSVI;)Z
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/jaxp/validation/DOMResultAugmentor;->fStorePSVI:Z

    if-eqz v4, :cond_0

    move-object v4, v1

    check-cast v4, Lorg/apache/xerces/dom/PSVIAttrNSImpl;

    move-object v5, v2

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/PSVIAttrNSImpl;->setPSVI(Lorg/apache/xerces/xs/AttributePSVI;)V

    :cond_0
    move-object v4, v2

    invoke-interface {v4}, Lorg/apache/xerces/xs/AttributePSVI;->getMemberTypeDefinition()Lorg/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v4

    move-object v3, v4

    move-object v4, v3

    if-nez v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Lorg/apache/xerces/xs/AttributePSVI;->getTypeDefinition()Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object v4

    move-object v3, v4

    move-object v4, v3

    if-eqz v4, :cond_2

    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/AttrImpl;->setType(Ljava/lang/Object;)V

    move-object v4, v3

    check-cast v4, Lorg/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v4}, Lorg/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v4

    move v0, v4

    :goto_0
    return v0

    :cond_1
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/AttrImpl;->setType(Ljava/lang/Object;)V

    move-object v4, v3

    check-cast v4, Lorg/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v4}, Lorg/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v4

    move v0, v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method


# virtual methods
.method public cdata(Lorg/w3c/dom/CDATASection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/jaxp/validation/DOMResultAugmentor;->fIgnoreChars:Z

    if-nez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/DOMResultAugmentor;->fDOMValidatorHelper:Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;

    invoke-virtual {v4}, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->getCurrentElement()Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    move-object v3, v4

    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/DOMResultAugmentor;->fDocument:Lorg/w3c/dom/Document;

    move-object v6, v1

    invoke-virtual {v6}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v4

    :cond_0
    return-void
.end method

.method public characters(Lorg/w3c/dom/Text;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public comment(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public comment(Lorg/w3c/dom/Comment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public doctypeDecl(Lorg/w3c/dom/DocumentType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
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

    invoke-virtual {v4, v5, v6, v7}, Lorg/apache/xerces/jaxp/validation/DOMResultAugmentor;->startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V

    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/jaxp/validation/DOMResultAugmentor;->endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public endCDATA(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public endDocument(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/DOMResultAugmentor;->fDOMValidatorHelper:Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;

    invoke-virtual {v6}, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->getCurrentElement()Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v3, v6

    move-object v6, v2

    if-eqz v6, :cond_2

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/DOMResultAugmentor;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v6, :cond_2

    move-object v6, v2

    const-string/jumbo v7, "ELEMENT_PSVI"

    invoke-interface {v6, v7}, Lorg/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/xerces/xs/ElementPSVI;

    move-object v4, v6

    move-object v6, v4

    if-eqz v6, :cond_2

    move-object v6, v0

    iget-boolean v6, v6, Lorg/apache/xerces/jaxp/validation/DOMResultAugmentor;->fStorePSVI:Z

    if-eqz v6, :cond_0

    move-object v6, v3

    check-cast v6, Lorg/apache/xerces/dom/PSVIElementNSImpl;

    move-object v7, v4

    invoke-virtual {v6, v7}, Lorg/apache/xerces/dom/PSVIElementNSImpl;->setPSVI(Lorg/apache/xerces/xs/ElementPSVI;)V

    :cond_0
    move-object v6, v4

    invoke-interface {v6}, Lorg/apache/xerces/xs/ElementPSVI;->getMemberTypeDefinition()Lorg/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v6

    move-object v5, v6

    move-object v6, v5

    if-nez v6, :cond_1

    move-object v6, v4

    invoke-interface {v6}, Lorg/apache/xerces/xs/ElementPSVI;->getTypeDefinition()Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object v6

    move-object v5, v6

    :cond_1
    move-object v6, v3

    check-cast v6, Lorg/apache/xerces/dom/ElementNSImpl;

    move-object v7, v5

    invoke-virtual {v6, v7}, Lorg/apache/xerces/dom/ElementNSImpl;->setType(Lorg/apache/xerces/xs/XSTypeDefinition;)V

    :cond_2
    return-void
.end method

.method public endGeneralEntity(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public getDocumentSource()Lorg/apache/xerces/xni/parser/XMLDocumentSource;
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public ignorableWhitespace(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/jaxp/validation/DOMResultAugmentor;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public processingInstruction(Lorg/w3c/dom/ProcessingInstruction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public setDOMResult(Ljavax/xml/transform/dom/DOMResult;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lorg/apache/xerces/jaxp/validation/DOMResultAugmentor;->fIgnoreChars:Z

    move-object v3, v1

    if-eqz v3, :cond_2

    move-object v3, v1

    invoke-virtual {v3}, Ljavax/xml/transform/dom/DOMResult;->getNode()Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v2, v3

    move-object v3, v0

    move-object v4, v2

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_0

    move-object v4, v2

    check-cast v4, Lorg/w3c/dom/Document;

    :goto_0
    iput-object v4, v3, Lorg/apache/xerces/jaxp/validation/DOMResultAugmentor;->fDocument:Lorg/w3c/dom/Document;

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/DOMResultAugmentor;->fDocument:Lorg/w3c/dom/Document;

    instance-of v4, v4, Lorg/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/DOMResultAugmentor;->fDocument:Lorg/w3c/dom/Document;

    check-cast v4, Lorg/apache/xerces/dom/CoreDocumentImpl;

    :goto_1
    iput-object v4, v3, Lorg/apache/xerces/jaxp/validation/DOMResultAugmentor;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/DOMResultAugmentor;->fDocument:Lorg/w3c/dom/Document;

    instance-of v4, v4, Lorg/apache/xerces/dom/PSVIDocumentImpl;

    iput-boolean v4, v3, Lorg/apache/xerces/jaxp/validation/DOMResultAugmentor;->fStorePSVI:Z

    :goto_2
    return-void

    :cond_0
    move-object v4, v2

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/jaxp/validation/DOMResultAugmentor;->fDocument:Lorg/w3c/dom/Document;

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/jaxp/validation/DOMResultAugmentor;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lorg/apache/xerces/jaxp/validation/DOMResultAugmentor;->fStorePSVI:Z

    goto :goto_2
.end method

.method public setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V
    .locals 0

    return-void
.end method

.method public setIgnoringCharacters(Z)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lorg/apache/xerces/jaxp/validation/DOMResultAugmentor;->fIgnoreChars:Z

    return-void
.end method

.method public startCDATA(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public startDocument(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lorg/apache/xerces/xni/NamespaceContext;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/jaxp/validation/DOMResultAugmentor;->fDOMValidatorHelper:Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;

    invoke-virtual {v11}, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->getCurrentElement()Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Element;

    move-object v4, v11

    move-object v11, v4

    invoke-interface {v11}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v11

    move-object v5, v11

    move-object v11, v5

    invoke-interface {v11}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v11

    move v6, v11

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/jaxp/validation/DOMResultAugmentor;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v11, :cond_0

    const/4 v11, 0x0

    move v8, v11

    :goto_0
    move v11, v8

    move v12, v6

    if-lt v11, v12, :cond_2

    :cond_0
    move-object v11, v2

    invoke-interface {v11}, Lorg/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v11

    move v7, v11

    move v11, v7

    move v12, v6

    if-le v11, v12, :cond_1

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/jaxp/validation/DOMResultAugmentor;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    if-nez v11, :cond_5

    move v11, v6

    move v8, v11

    :goto_1
    move v11, v8

    move v12, v7

    if-lt v11, v12, :cond_4

    :cond_1
    return-void

    :cond_2
    move-object v11, v5

    move v12, v8

    invoke-interface {v11, v12}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/apache/xerces/dom/AttrImpl;

    move-object v7, v11

    move-object v11, v2

    move v12, v8

    invoke-interface {v11, v12}, Lorg/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lorg/apache/xerces/xni/Augmentations;

    move-result-object v11

    const-string/jumbo v12, "ATTRIBUTE_PSVI"

    invoke-interface {v11, v12}, Lorg/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/xerces/xs/AttributePSVI;

    move-object v9, v11

    move-object v11, v9

    if-eqz v11, :cond_3

    move-object v11, v0

    move-object v12, v7

    move-object v13, v9

    invoke-direct {v11, v12, v13}, Lorg/apache/xerces/jaxp/validation/DOMResultAugmentor;->processAttributePSVI(Lorg/apache/xerces/dom/AttrImpl;Lorg/apache/xerces/xs/AttributePSVI;)Z

    move-result v11

    if-eqz v11, :cond_3

    move-object v11, v4

    check-cast v11, Lorg/apache/xerces/dom/ElementImpl;

    move-object v12, v7

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lorg/apache/xerces/dom/ElementImpl;->setIdAttributeNode(Lorg/w3c/dom/Attr;Z)V

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    move-object v11, v2

    move v12, v8

    move-object v13, v0

    iget-object v13, v13, Lorg/apache/xerces/jaxp/validation/DOMResultAugmentor;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    invoke-interface {v11, v12, v13}, Lorg/apache/xerces/xni/XMLAttributes;->getName(ILorg/apache/xerces/xni/QName;)V

    move-object v11, v4

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xerces/jaxp/validation/DOMResultAugmentor;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    iget-object v12, v12, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object v13, v0

    iget-object v13, v13, Lorg/apache/xerces/jaxp/validation/DOMResultAugmentor;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    iget-object v13, v13, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v14, v2

    move v15, v8

    invoke-interface {v14, v15}, Lorg/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v12, v13, v14}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    move v11, v6

    move v8, v11

    :goto_2
    move v11, v8

    move v12, v7

    if-ge v11, v12, :cond_1

    move-object v11, v2

    move v12, v8

    move-object v13, v0

    iget-object v13, v13, Lorg/apache/xerces/jaxp/validation/DOMResultAugmentor;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    invoke-interface {v11, v12, v13}, Lorg/apache/xerces/xni/XMLAttributes;->getName(ILorg/apache/xerces/xni/QName;)V

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/jaxp/validation/DOMResultAugmentor;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xerces/jaxp/validation/DOMResultAugmentor;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    iget-object v12, v12, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object v13, v0

    iget-object v13, v13, Lorg/apache/xerces/jaxp/validation/DOMResultAugmentor;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    iget-object v13, v13, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/jaxp/validation/DOMResultAugmentor;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    iget-object v14, v14, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v11, v12, v13, v14}, Lorg/apache/xerces/dom/CoreDocumentImpl;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v11

    check-cast v11, Lorg/apache/xerces/dom/AttrImpl;

    move-object v9, v11

    move-object v11, v9

    move-object v12, v2

    move v13, v8

    invoke-interface {v12, v13}, Lorg/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/apache/xerces/dom/AttrImpl;->setValue(Ljava/lang/String;)V

    move-object v11, v4

    move-object v12, v9

    invoke-interface {v11, v12}, Lorg/w3c/dom/Element;->setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    move-result-object v11

    move-object v11, v2

    move v12, v8

    invoke-interface {v11, v12}, Lorg/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lorg/apache/xerces/xni/Augmentations;

    move-result-object v11

    const-string/jumbo v12, "ATTRIBUTE_PSVI"

    invoke-interface {v11, v12}, Lorg/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/xerces/xs/AttributePSVI;

    move-object v10, v11

    move-object v11, v10

    if-eqz v11, :cond_6

    move-object v11, v0

    move-object v12, v9

    move-object v13, v10

    invoke-direct {v11, v12, v13}, Lorg/apache/xerces/jaxp/validation/DOMResultAugmentor;->processAttributePSVI(Lorg/apache/xerces/dom/AttrImpl;Lorg/apache/xerces/xs/AttributePSVI;)Z

    move-result v11

    if-eqz v11, :cond_6

    move-object v11, v4

    check-cast v11, Lorg/apache/xerces/dom/ElementImpl;

    move-object v12, v9

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lorg/apache/xerces/dom/ElementImpl;->setIdAttributeNode(Lorg/w3c/dom/Attr;Z)V

    :cond_6
    move-object v11, v9

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lorg/apache/xerces/dom/AttrImpl;->setSpecified(Z)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2
.end method

.method public startGeneralEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method
