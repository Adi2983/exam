.class final Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xerces/jaxp/validation/DOMDocumentHandler;


# static fields
.field private static final kidOK:[I


# instance fields
.field private final fAttributeQName:Lorg/apache/xerces/xni/QName;

.field private fCurrentNode:Lorg/w3c/dom/Node;

.field private fDocument:Lorg/w3c/dom/Document;

.field private fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

.field private fFragmentRoot:Lorg/w3c/dom/Node;

.field private fIgnoreChars:Z

.field private fNextSibling:Lorg/w3c/dom/Node;

.field private fStorePSVI:Z

.field private fTarget:Lorg/w3c/dom/Node;

.field private final fTargetChildren:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/16 v0, 0xd

    new-array v0, v0, [I

    sput-object v0, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->kidOK:[I

    sget-object v0, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->kidOK:[I

    const/16 v1, 0x9

    const/16 v2, 0x582

    aput v2, v0, v1

    sget-object v0, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->kidOK:[I

    const/16 v1, 0xb

    sget-object v2, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->kidOK:[I

    const/4 v3, 0x6

    sget-object v4, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->kidOK:[I

    const/4 v5, 0x5

    sget-object v6, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->kidOK:[I

    const/4 v7, 0x1

    const/16 v8, 0x1ba

    move-object v10, v6

    move v11, v7

    move v12, v8

    move v6, v12

    move-object v7, v10

    move v8, v11

    move v9, v12

    aput v9, v7, v8

    move-object v10, v4

    move v11, v5

    move v12, v6

    move v4, v12

    move-object v5, v10

    move v6, v11

    move v7, v12

    aput v7, v5, v6

    move-object v10, v2

    move v11, v3

    move v12, v4

    move v2, v12

    move-object v3, v10

    move v4, v11

    move v5, v12

    aput v5, v3, v4

    aput v2, v0, v1

    sget-object v0, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->kidOK:[I

    const/4 v1, 0x2

    const/16 v2, 0x28

    aput v2, v0, v1

    sget-object v0, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->kidOK:[I

    const/16 v1, 0xa

    const/4 v2, 0x0

    aput v2, v0, v1

    sget-object v0, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->kidOK:[I

    const/4 v1, 0x7

    const/4 v2, 0x0

    aput v2, v0, v1

    sget-object v0, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->kidOK:[I

    const/16 v1, 0x8

    const/4 v2, 0x0

    aput v2, v0, v1

    sget-object v0, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->kidOK:[I

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput v2, v0, v1

    sget-object v0, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->kidOK:[I

    const/4 v1, 0x4

    const/4 v2, 0x0

    aput v2, v0, v1

    sget-object v0, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->kidOK:[I

    const/16 v1, 0xc

    const/4 v2, 0x0

    aput v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fTargetChildren:Ljava/util/ArrayList;

    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/xni/QName;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v2, v1, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    return-void
.end method

.method private append(Lorg/w3c/dom/Node;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fCurrentNode:Lorg/w3c/dom/Node;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v4, v1

    invoke-interface {v3, v4}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    :goto_0
    return-void

    :cond_0
    sget-object v3, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->kidOK:[I

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fTarget:Lorg/w3c/dom/Node;

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    move-object v5, v1

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    shl-int/2addr v4, v5

    and-int/2addr v3, v4

    if-nez v3, :cond_1

    const-string/jumbo v3, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v4, "HIERARCHY_REQUEST_ERR"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    new-instance v3, Lorg/apache/xerces/xni/XNIException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fTargetChildren:Ljava/util/ArrayList;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method


# virtual methods
.method public cdata(Lorg/w3c/dom/CDATASection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocument:Lorg/w3c/dom/Document;

    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/CDATASection;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/Document;->createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->append(Lorg/w3c/dom/Node;)V

    return-void
.end method

.method public characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
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

    iget-boolean v3, v3, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fIgnoreChars:Z

    if-nez v3, :cond_0

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocument:Lorg/w3c/dom/Document;

    move-object v5, v1

    invoke-virtual {v5}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->append(Lorg/w3c/dom/Node;)V

    :cond_0
    return-void
.end method

.method public characters(Lorg/w3c/dom/Text;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocument:Lorg/w3c/dom/Document;

    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->append(Lorg/w3c/dom/Node;)V

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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocument:Lorg/w3c/dom/Document;

    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/Comment;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/Document;->createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->append(Lorg/w3c/dom/Node;)V

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
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v11, :cond_1

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v12, v1

    invoke-interface {v12}, Lorg/w3c/dom/DocumentType;->getName()Ljava/lang/String;

    move-result-object v12

    move-object v13, v1

    invoke-interface {v13}, Lorg/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object v13

    move-object v14, v1

    invoke-interface {v14}, Lorg/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v12, v13, v14}, Lorg/apache/xerces/dom/CoreDocumentImpl;->createDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/DocumentType;

    move-result-object v11

    move-object v2, v11

    move-object v11, v1

    invoke-interface {v11}, Lorg/w3c/dom/DocumentType;->getInternalSubset()Ljava/lang/String;

    move-result-object v11

    move-object v3, v11

    move-object v11, v3

    if-eqz v11, :cond_0

    move-object v11, v2

    check-cast v11, Lorg/apache/xerces/dom/DocumentTypeImpl;

    move-object v12, v3

    invoke-virtual {v11, v12}, Lorg/apache/xerces/dom/DocumentTypeImpl;->setInternalSubset(Ljava/lang/String;)V

    :cond_0
    move-object v11, v1

    invoke-interface {v11}, Lorg/w3c/dom/DocumentType;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v11

    move-object v4, v11

    move-object v11, v2

    invoke-interface {v11}, Lorg/w3c/dom/DocumentType;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v11

    move-object v5, v11

    move-object v11, v4

    invoke-interface {v11}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v11

    move v6, v11

    const/4 v11, 0x0

    move v7, v11

    :goto_0
    move v11, v7

    move v12, v6

    if-lt v11, v12, :cond_2

    move-object v11, v1

    invoke-interface {v11}, Lorg/w3c/dom/DocumentType;->getNotations()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v11

    move-object v4, v11

    move-object v11, v2

    invoke-interface {v11}, Lorg/w3c/dom/DocumentType;->getNotations()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v11

    move-object v5, v11

    move-object v11, v4

    invoke-interface {v11}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v11

    move v6, v11

    const/4 v11, 0x0

    move v8, v11

    :goto_1
    move v11, v8

    move v12, v6

    if-lt v11, v12, :cond_3

    move-object v11, v0

    move-object v12, v2

    invoke-direct {v11, v12}, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->append(Lorg/w3c/dom/Node;)V

    :cond_1
    return-void

    :cond_2
    move-object v11, v4

    move v12, v7

    invoke-interface {v11, v12}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Entity;

    move-object v8, v11

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v12, v8

    invoke-interface {v12}, Lorg/w3c/dom/Entity;->getNodeName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/apache/xerces/dom/CoreDocumentImpl;->createEntity(Ljava/lang/String;)Lorg/w3c/dom/Entity;

    move-result-object v11

    check-cast v11, Lorg/apache/xerces/dom/EntityImpl;

    move-object v9, v11

    move-object v11, v9

    move-object v12, v8

    invoke-interface {v12}, Lorg/w3c/dom/Entity;->getPublicId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/apache/xerces/dom/EntityImpl;->setPublicId(Ljava/lang/String;)V

    move-object v11, v9

    move-object v12, v8

    invoke-interface {v12}, Lorg/w3c/dom/Entity;->getSystemId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/apache/xerces/dom/EntityImpl;->setSystemId(Ljava/lang/String;)V

    move-object v11, v9

    move-object v12, v8

    invoke-interface {v12}, Lorg/w3c/dom/Entity;->getNotationName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/apache/xerces/dom/EntityImpl;->setNotationName(Ljava/lang/String;)V

    move-object v11, v5

    move-object v12, v9

    invoke-interface {v11, v12}, Lorg/w3c/dom/NamedNodeMap;->setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v11

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    move-object v11, v4

    move v12, v8

    invoke-interface {v11, v12}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Notation;

    move-object v9, v11

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v12, v9

    invoke-interface {v12}, Lorg/w3c/dom/Notation;->getNodeName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/apache/xerces/dom/CoreDocumentImpl;->createNotation(Ljava/lang/String;)Lorg/w3c/dom/Notation;

    move-result-object v11

    check-cast v11, Lorg/apache/xerces/dom/NotationImpl;

    move-object v10, v11

    move-object v11, v10

    move-object v12, v9

    invoke-interface {v12}, Lorg/w3c/dom/Notation;->getPublicId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/apache/xerces/dom/NotationImpl;->setPublicId(Ljava/lang/String;)V

    move-object v11, v10

    move-object v12, v9

    invoke-interface {v12}, Lorg/w3c/dom/Notation;->getSystemId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/apache/xerces/dom/NotationImpl;->setSystemId(Ljava/lang/String;)V

    move-object v11, v5

    move-object v12, v10

    invoke-interface {v11, v12}, Lorg/w3c/dom/NamedNodeMap;->setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_1
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

    invoke-virtual {v4, v5, v6, v7}, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V

    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V

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
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fTargetChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fNextSibling:Lorg/w3c/dom/Node;

    if-nez v4, :cond_2

    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move v5, v2

    if-lt v4, v5, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fTarget:Lorg/w3c/dom/Node;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fTargetChildren:Ljava/util/ArrayList;

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Node;

    invoke-interface {v4, v5}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    move v3, v4

    :goto_1
    move v4, v3

    move v5, v2

    if-ge v4, v5, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fTarget:Lorg/w3c/dom/Node;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fTargetChildren:Ljava/util/ArrayList;

    move v6, v3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/Node;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fNextSibling:Lorg/w3c/dom/Node;

    invoke-interface {v4, v5, v6}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v2

    if-eqz v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v5, :cond_2

    move-object v5, v2

    const-string/jumbo v6, "ELEMENT_PSVI"

    invoke-interface {v5, v6}, Lorg/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xerces/xs/ElementPSVI;

    move-object v3, v5

    move-object v5, v3

    if-eqz v5, :cond_2

    move-object v5, v0

    iget-boolean v5, v5, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fStorePSVI:Z

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fCurrentNode:Lorg/w3c/dom/Node;

    check-cast v5, Lorg/apache/xerces/dom/PSVIElementNSImpl;

    move-object v6, v3

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/PSVIElementNSImpl;->setPSVI(Lorg/apache/xerces/xs/ElementPSVI;)V

    :cond_0
    move-object v5, v3

    invoke-interface {v5}, Lorg/apache/xerces/xs/ElementPSVI;->getMemberTypeDefinition()Lorg/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v5

    move-object v4, v5

    move-object v5, v4

    if-nez v5, :cond_1

    move-object v5, v3

    invoke-interface {v5}, Lorg/apache/xerces/xs/ElementPSVI;->getTypeDefinition()Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object v5

    move-object v4, v5

    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fCurrentNode:Lorg/w3c/dom/Node;

    check-cast v5, Lorg/apache/xerces/dom/ElementNSImpl;

    move-object v6, v4

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/ElementNSImpl;->setType(Lorg/apache/xerces/xs/XSTypeDefinition;)V

    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fFragmentRoot:Lorg/w3c/dom/Node;

    if-ne v5, v6, :cond_3

    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fFragmentRoot:Lorg/w3c/dom/Node;

    :goto_0
    return-void

    :cond_3
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v6

    iput-object v6, v5, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fCurrentNode:Lorg/w3c/dom/Node;

    goto :goto_0
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

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

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
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocument:Lorg/w3c/dom/Document;

    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    invoke-interface {v5}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->append(Lorg/w3c/dom/Node;)V

    return-void
.end method

.method public setDOMResult(Ljavax/xml/transform/dom/DOMResult;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fFragmentRoot:Lorg/w3c/dom/Node;

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fIgnoreChars:Z

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fTargetChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move-object v2, v1

    if-eqz v2, :cond_2

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavax/xml/transform/dom/DOMResult;->getNode()Lorg/w3c/dom/Node;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fTarget:Lorg/w3c/dom/Node;

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Ljavax/xml/transform/dom/DOMResult;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fNextSibling:Lorg/w3c/dom/Node;

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fTarget:Lorg/w3c/dom/Node;

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fTarget:Lorg/w3c/dom/Node;

    check-cast v3, Lorg/w3c/dom/Document;

    :goto_0
    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocument:Lorg/w3c/dom/Document;

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocument:Lorg/w3c/dom/Document;

    instance-of v3, v3, Lorg/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocument:Lorg/w3c/dom/Document;

    check-cast v3, Lorg/apache/xerces/dom/CoreDocumentImpl;

    :goto_1
    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocument:Lorg/w3c/dom/Document;

    instance-of v3, v3, Lorg/apache/xerces/dom/PSVIDocumentImpl;

    iput-boolean v3, v2, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fStorePSVI:Z

    :goto_2
    return-void

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fTarget:Lorg/w3c/dom/Node;

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fTarget:Lorg/w3c/dom/Node;

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fNextSibling:Lorg/w3c/dom/Node;

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocument:Lorg/w3c/dom/Document;

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fStorePSVI:Z

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

    iput-boolean v3, v2, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fIgnoreChars:Z

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
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v10, v2

    invoke-interface {v10}, Lorg/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v10

    move v5, v10

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    if-nez v10, :cond_3

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocument:Lorg/w3c/dom/Document;

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-interface {v10, v11, v12}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v10

    move-object v4, v10

    const/4 v10, 0x0

    move v6, v10

    :goto_0
    move v10, v6

    move v11, v5

    if-lt v10, v11, :cond_2

    :cond_0
    move-object v10, v0

    move-object v11, v4

    invoke-direct {v10, v11}, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->append(Lorg/w3c/dom/Node;)V

    move-object v10, v0

    move-object v11, v4

    iput-object v11, v10, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fFragmentRoot:Lorg/w3c/dom/Node;

    if-nez v10, :cond_1

    move-object v10, v0

    move-object v11, v4

    iput-object v11, v10, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fFragmentRoot:Lorg/w3c/dom/Node;

    :cond_1
    return-void

    :cond_2
    move-object v10, v2

    move v11, v6

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    invoke-interface {v10, v11, v12}, Lorg/apache/xerces/xni/XMLAttributes;->getName(ILorg/apache/xerces/xni/QName;)V

    move-object v10, v4

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    iget-object v11, v11, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    iget-object v12, v12, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v13, v2

    move v14, v6

    invoke-interface {v13, v14}, Lorg/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v10, v11, v12, v13}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v13, v1

    iget-object v13, v13, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v10, v11, v12, v13}, Lorg/apache/xerces/dom/CoreDocumentImpl;->createElementNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v10

    move-object v4, v10

    const/4 v10, 0x0

    move v6, v10

    :goto_1
    move v10, v6

    move v11, v5

    if-ge v10, v11, :cond_0

    move-object v10, v2

    move v11, v6

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    invoke-interface {v10, v11, v12}, Lorg/apache/xerces/xni/XMLAttributes;->getName(ILorg/apache/xerces/xni/QName;)V

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    iget-object v11, v11, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    iget-object v12, v12, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v13, v0

    iget-object v13, v13, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    iget-object v13, v13, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v10, v11, v12, v13}, Lorg/apache/xerces/dom/CoreDocumentImpl;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v10

    check-cast v10, Lorg/apache/xerces/dom/AttrImpl;

    move-object v7, v10

    move-object v10, v7

    move-object v11, v2

    move v12, v6

    invoke-interface {v11, v12}, Lorg/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/apache/xerces/dom/AttrImpl;->setValue(Ljava/lang/String;)V

    move-object v10, v4

    move-object v11, v7

    invoke-interface {v10, v11}, Lorg/w3c/dom/Element;->setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    move-result-object v10

    move-object v10, v2

    move v11, v6

    invoke-interface {v10, v11}, Lorg/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lorg/apache/xerces/xni/Augmentations;

    move-result-object v10

    const-string/jumbo v11, "ATTRIBUTE_PSVI"

    invoke-interface {v10, v11}, Lorg/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/xerces/xs/AttributePSVI;

    move-object v8, v10

    move-object v10, v8

    if-eqz v10, :cond_5

    move-object v10, v0

    iget-boolean v10, v10, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->fStorePSVI:Z

    if-eqz v10, :cond_4

    move-object v10, v7

    check-cast v10, Lorg/apache/xerces/dom/PSVIAttrNSImpl;

    move-object v11, v8

    invoke-virtual {v10, v11}, Lorg/apache/xerces/dom/PSVIAttrNSImpl;->setPSVI(Lorg/apache/xerces/xs/AttributePSVI;)V

    :cond_4
    move-object v10, v8

    invoke-interface {v10}, Lorg/apache/xerces/xs/AttributePSVI;->getMemberTypeDefinition()Lorg/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v10

    move-object v9, v10

    move-object v10, v9

    if-nez v10, :cond_6

    move-object v10, v8

    invoke-interface {v10}, Lorg/apache/xerces/xs/AttributePSVI;->getTypeDefinition()Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object v10

    move-object v9, v10

    move-object v10, v9

    if-eqz v10, :cond_5

    move-object v10, v7

    move-object v11, v9

    invoke-virtual {v10, v11}, Lorg/apache/xerces/dom/AttrImpl;->setType(Ljava/lang/Object;)V

    move-object v10, v9

    check-cast v10, Lorg/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v10}, Lorg/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v10

    if-eqz v10, :cond_5

    move-object v10, v4

    check-cast v10, Lorg/apache/xerces/dom/ElementImpl;

    move-object v11, v7

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lorg/apache/xerces/dom/ElementImpl;->setIdAttributeNode(Lorg/w3c/dom/Attr;Z)V

    :cond_5
    :goto_2
    move-object v10, v7

    move-object v11, v2

    move v12, v6

    invoke-interface {v11, v12}, Lorg/apache/xerces/xni/XMLAttributes;->isSpecified(I)Z

    move-result v11

    invoke-virtual {v10, v11}, Lorg/apache/xerces/dom/AttrImpl;->setSpecified(Z)V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_6
    move-object v10, v7

    move-object v11, v9

    invoke-virtual {v10, v11}, Lorg/apache/xerces/dom/AttrImpl;->setType(Ljava/lang/Object;)V

    move-object v10, v9

    check-cast v10, Lorg/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v10}, Lorg/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v10

    if-eqz v10, :cond_5

    move-object v10, v4

    check-cast v10, Lorg/apache/xerces/dom/ElementImpl;

    move-object v11, v7

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lorg/apache/xerces/dom/ElementImpl;->setIdAttributeNode(Lorg/w3c/dom/Attr;Z)V

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
