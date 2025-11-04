.class public Lorg/apache/xerces/dom/AttributeMap;
.super Lorg/apache/xerces/dom/NamedNodeMapImpl;


# static fields
.field static final serialVersionUID:J = 0x7b21d4678ec641a7L


# direct methods
.method protected constructor <init>(Lorg/apache/xerces/dom/ElementImpl;Lorg/apache/xerces/dom/NamedNodeMapImpl;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lorg/apache/xerces/dom/NamedNodeMapImpl;-><init>(Lorg/apache/xerces/dom/NodeImpl;)V

    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/AttributeMap;->cloneContent(Lorg/apache/xerces/dom/NamedNodeMapImpl;)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    if-eqz v3, :cond_0

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/AttributeMap;->hasDefaults(Z)V

    :cond_0
    return-void
.end method

.method private final remove(Lorg/apache/xerces/dom/AttrImpl;IZ)Lorg/w3c/dom/Node;
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/AttributeMap;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    invoke-virtual {v9}, Lorg/apache/xerces/dom/NodeImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v9

    move-object v4, v9

    move-object v9, v1

    invoke-virtual {v9}, Lorg/apache/xerces/dom/AttrImpl;->getNodeName()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    move-object v9, v1

    invoke-virtual {v9}, Lorg/apache/xerces/dom/AttrImpl;->isIdAttribute()Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v9, v4

    move-object v10, v1

    invoke-virtual {v10}, Lorg/apache/xerces/dom/AttrImpl;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/CoreDocumentImpl;->removeIdentifier(Ljava/lang/String;)V

    :cond_0
    move-object v9, v0

    invoke-virtual {v9}, Lorg/apache/xerces/dom/AttributeMap;->hasDefaults()Z

    move-result v9

    if-eqz v9, :cond_4

    move v9, v3

    if-eqz v9, :cond_4

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/AttributeMap;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    check-cast v9, Lorg/apache/xerces/dom/ElementImpl;

    invoke-virtual {v9}, Lorg/apache/xerces/dom/ElementImpl;->getDefaultAttributes()Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move-result-object v9

    move-object v6, v9

    move-object v9, v6

    if-eqz v9, :cond_3

    move-object v9, v6

    move-object v10, v5

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v7, v10

    if-eqz v9, :cond_3

    move-object v9, v0

    move-object v10, v5

    move v11, v2

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v9, v10, v11}, Lorg/apache/xerces/dom/AttributeMap;->findNamePoint(Ljava/lang/String;I)I

    move-result v9

    if-gez v9, :cond_3

    move-object v9, v7

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Lorg/w3c/dom/Node;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/apache/xerces/dom/NodeImpl;

    move-object v8, v9

    move-object v9, v7

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    move-object v9, v8

    check-cast v9, Lorg/apache/xerces/dom/AttrNSImpl;

    move-object v10, v1

    invoke-virtual {v10}, Lorg/apache/xerces/dom/AttrImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lorg/apache/xerces/dom/AttrNSImpl;->namespaceURI:Ljava/lang/String;

    :cond_1
    move-object v9, v8

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/dom/AttributeMap;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    iput-object v10, v9, Lorg/apache/xerces/dom/NodeImpl;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    move-object v9, v8

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/NodeImpl;->isOwned(Z)V

    move-object v9, v8

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/NodeImpl;->isSpecified(Z)V

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    move v10, v2

    move-object v11, v8

    invoke-interface {v9, v10, v11}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v9, v1

    invoke-virtual {v9}, Lorg/apache/xerces/dom/AttrImpl;->isIdAttribute()Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, v4

    move-object v10, v8

    invoke-virtual {v10}, Lorg/apache/xerces/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/dom/AttributeMap;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    check-cast v11, Lorg/apache/xerces/dom/ElementImpl;

    invoke-virtual {v9, v10, v11}, Lorg/apache/xerces/dom/CoreDocumentImpl;->putIdentifier(Ljava/lang/String;Lorg/w3c/dom/Element;)V

    :cond_2
    :goto_0
    move-object v9, v1

    move-object v10, v4

    iput-object v10, v9, Lorg/apache/xerces/dom/AttrImpl;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    move-object v9, v1

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/AttrImpl;->isOwned(Z)V

    move-object v9, v1

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/AttrImpl;->isSpecified(Z)V

    move-object v9, v1

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/AttrImpl;->isIdAttribute(Z)V

    move-object v9, v4

    move-object v10, v1

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/dom/AttributeMap;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    move-object v12, v5

    invoke-virtual {v9, v10, v11, v12}, Lorg/apache/xerces/dom/CoreDocumentImpl;->removedAttrNode(Lorg/apache/xerces/dom/AttrImpl;Lorg/apache/xerces/dom/NodeImpl;Ljava/lang/String;)V

    move-object v9, v1

    move-object v0, v9

    return-object v0

    :cond_3
    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    move v10, v2

    invoke-interface {v9, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v9

    goto :goto_0

    :cond_4
    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    move v10, v2

    invoke-interface {v9, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v9

    goto :goto_0
.end method


# virtual methods
.method protected final addItem(Lorg/w3c/dom/Node;)I
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    check-cast v4, Lorg/apache/xerces/dom/AttrImpl;

    move-object v2, v4

    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/AttributeMap;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    iput-object v5, v4, Lorg/apache/xerces/dom/AttrImpl;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    move-object v4, v2

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/AttrImpl;->isOwned(Z)V

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Lorg/apache/xerces/dom/AttrImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v6}, Lorg/apache/xerces/dom/AttrImpl;->getLocalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/dom/AttributeMap;->findNamePoint(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v3, v4

    move v4, v3

    if-ltz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    move v5, v3

    move-object v6, v1

    invoke-interface {v4, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_0
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/AttributeMap;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    invoke-virtual {v4}, Lorg/apache/xerces/dom/NodeImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v4

    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/dom/CoreDocumentImpl;->setAttrNode(Lorg/apache/xerces/dom/AttrImpl;Lorg/apache/xerces/dom/AttrImpl;)V

    move v4, v3

    move v0, v4

    return v0

    :cond_0
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v5}, Lorg/apache/xerces/dom/AttrImpl;->getNodeName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/dom/AttributeMap;->findNamePoint(Ljava/lang/String;I)I

    move-result v4

    move v3, v4

    move v4, v3

    if-ltz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    move v5, v3

    move-object v6, v1

    invoke-interface {v4, v5, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    move v5, v3

    rsub-int/lit8 v4, v5, -0x1

    move v3, v4

    const/4 v4, 0x0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    if-ne v4, v5, :cond_2

    move-object v4, v0

    new-instance v5, Ljava/util/ArrayList;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const/4 v7, 0x5

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, v4, Lorg/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    move v5, v3

    move-object v6, v1

    invoke-interface {v4, v5, v6}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected cloneContent(Lorg/apache/xerces/dom/NamedNodeMapImpl;)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    iget-object v7, v7, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    move-object v2, v7

    move-object v7, v2

    if-eqz v7, :cond_0

    move-object v7, v2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    move v3, v7

    move v7, v3

    if-eqz v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    if-nez v7, :cond_1

    move-object v7, v0

    new-instance v8, Ljava/util/ArrayList;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move v10, v3

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v8, v7, Lorg/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    :goto_0
    const/4 v7, 0x0

    move v4, v7

    :goto_1
    move v7, v4

    move v8, v3

    if-lt v7, v8, :cond_2

    :cond_0
    return-void

    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_2
    move-object v7, v2

    move v8, v4

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/xerces/dom/NodeImpl;

    move-object v5, v7

    move-object v7, v5

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lorg/apache/xerces/dom/NodeImpl;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/apache/xerces/dom/NodeImpl;

    move-object v6, v7

    move-object v7, v6

    move-object v8, v5

    invoke-virtual {v8}, Lorg/apache/xerces/dom/NodeImpl;->isSpecified()Z

    move-result v8

    invoke-virtual {v7, v8}, Lorg/apache/xerces/dom/NodeImpl;->isSpecified(Z)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    move-object v8, v6

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    move-object v7, v6

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/AttributeMap;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    iput-object v8, v7, Lorg/apache/xerces/dom/NodeImpl;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    move-object v7, v6

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lorg/apache/xerces/dom/NodeImpl;->isOwned(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public cloneMap(Lorg/apache/xerces/dom/NodeImpl;)Lorg/apache/xerces/dom/NamedNodeMapImpl;
    .locals 8

    move-object v0, p0

    move-object v1, p1

    new-instance v3, Lorg/apache/xerces/dom/AttributeMap;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    check-cast v5, Lorg/apache/xerces/dom/ElementImpl;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lorg/apache/xerces/dom/AttributeMap;-><init>(Lorg/apache/xerces/dom/ElementImpl;Lorg/apache/xerces/dom/NamedNodeMapImpl;)V

    move-object v2, v3

    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/AttributeMap;->hasDefaults()Z

    move-result v4

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/AttributeMap;->hasDefaults(Z)V

    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/AttributeMap;->cloneContent(Lorg/apache/xerces/dom/NamedNodeMapImpl;)V

    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method protected final internalRemoveNamedItem(Ljava/lang/String;Z)Lorg/w3c/dom/Node;
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xerces/dom/AttributeMap;->isReadOnly()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v6, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    new-instance v5, Lorg/w3c/dom/DOMException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x7

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    :cond_0
    move-object v5, v0

    move-object v6, v1

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/dom/AttributeMap;->findNamePoint(Ljava/lang/String;I)I

    move-result v5

    move v3, v5

    move v5, v3

    if-gez v5, :cond_2

    move v5, v2

    if-eqz v5, :cond_1

    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v6, "NOT_FOUND_ERR"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    new-instance v5, Lorg/w3c/dom/DOMException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/16 v7, 0x8

    move-object v8, v4

    invoke-direct {v6, v7, v8}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    :cond_1
    const/4 v5, 0x0

    move-object v0, v5

    :goto_0
    return-object v0

    :cond_2
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    move v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/xerces/dom/AttrImpl;

    move v7, v3

    const/4 v8, 0x1

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/xerces/dom/AttributeMap;->remove(Lorg/apache/xerces/dom/AttrImpl;IZ)Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v0, v5

    goto :goto_0
.end method

.method protected final internalRemoveNamedItemNS(Ljava/lang/String;Ljava/lang/String;Z)Lorg/w3c/dom/Node;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xerces/dom/AttributeMap;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    invoke-virtual {v12}, Lorg/apache/xerces/dom/NodeImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v12

    move-object v4, v12

    move-object v12, v4

    iget-boolean v12, v12, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v12, :cond_0

    move-object v12, v0

    invoke-virtual {v12}, Lorg/apache/xerces/dom/AttributeMap;->isReadOnly()Z

    move-result v12

    if-eqz v12, :cond_0

    const-string/jumbo v12, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v13, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object v5, v12

    new-instance v12, Lorg/w3c/dom/DOMException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/4 v14, 0x7

    move-object v15, v5

    invoke-direct {v13, v14, v15}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v12

    :cond_0
    move-object v12, v0

    move-object v13, v1

    move-object v14, v2

    invoke-virtual {v12, v13, v14}, Lorg/apache/xerces/dom/AttributeMap;->findNamePoint(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    move v5, v12

    move v12, v5

    if-gez v12, :cond_2

    move v12, v3

    if-eqz v12, :cond_1

    const-string/jumbo v12, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v13, "NOT_FOUND_ERR"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object v6, v12

    new-instance v12, Lorg/w3c/dom/DOMException;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    const/16 v14, 0x8

    move-object v15, v6

    invoke-direct {v13, v14, v15}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v12

    :cond_1
    const/4 v12, 0x0

    move-object v0, v12

    :goto_0
    return-object v0

    :cond_2
    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    move v13, v5

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/xerces/dom/AttrImpl;

    move-object v6, v12

    move-object v12, v6

    invoke-virtual {v12}, Lorg/apache/xerces/dom/AttrImpl;->isIdAttribute()Z

    move-result v12

    if-eqz v12, :cond_3

    move-object v12, v4

    move-object v13, v6

    invoke-virtual {v13}, Lorg/apache/xerces/dom/AttrImpl;->getValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/apache/xerces/dom/CoreDocumentImpl;->removeIdentifier(Ljava/lang/String;)V

    :cond_3
    move-object v12, v6

    invoke-virtual {v12}, Lorg/apache/xerces/dom/AttrImpl;->getNodeName()Ljava/lang/String;

    move-result-object v12

    move-object v7, v12

    move-object v12, v0

    invoke-virtual {v12}, Lorg/apache/xerces/dom/AttributeMap;->hasDefaults()Z

    move-result v12

    if-eqz v12, :cond_8

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xerces/dom/AttributeMap;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    check-cast v12, Lorg/apache/xerces/dom/ElementImpl;

    invoke-virtual {v12}, Lorg/apache/xerces/dom/ElementImpl;->getDefaultAttributes()Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move-result-object v12

    move-object v8, v12

    move-object v12, v8

    if-eqz v12, :cond_7

    move-object v12, v8

    move-object v13, v7

    invoke-virtual {v12, v13}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v9, v13

    if-eqz v12, :cond_7

    move-object v12, v0

    move-object v13, v7

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lorg/apache/xerces/dom/AttributeMap;->findNamePoint(Ljava/lang/String;I)I

    move-result v12

    move v10, v12

    move v12, v10

    if-ltz v12, :cond_6

    move-object v12, v0

    move-object v13, v7

    move v14, v10

    const/4 v15, 0x1

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v12, v13, v14}, Lorg/apache/xerces/dom/AttributeMap;->findNamePoint(Ljava/lang/String;I)I

    move-result v12

    if-gez v12, :cond_6

    move-object v12, v9

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lorg/w3c/dom/Node;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object v12

    check-cast v12, Lorg/apache/xerces/dom/NodeImpl;

    move-object v11, v12

    move-object v12, v11

    move-object v13, v0

    iget-object v13, v13, Lorg/apache/xerces/dom/AttributeMap;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    iput-object v13, v12, Lorg/apache/xerces/dom/NodeImpl;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    move-object v12, v9

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4

    move-object v12, v11

    check-cast v12, Lorg/apache/xerces/dom/AttrNSImpl;

    move-object v13, v1

    iput-object v13, v12, Lorg/apache/xerces/dom/AttrNSImpl;->namespaceURI:Ljava/lang/String;

    :cond_4
    move-object v12, v11

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lorg/apache/xerces/dom/NodeImpl;->isOwned(Z)V

    move-object v12, v11

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lorg/apache/xerces/dom/NodeImpl;->isSpecified(Z)V

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    move v13, v5

    move-object v14, v11

    invoke-interface {v12, v13, v14}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v12, v11

    invoke-virtual {v12}, Lorg/apache/xerces/dom/NodeImpl;->isIdAttribute()Z

    move-result v12

    if-eqz v12, :cond_5

    move-object v12, v4

    move-object v13, v11

    invoke-virtual {v13}, Lorg/apache/xerces/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v13

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/dom/AttributeMap;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    check-cast v14, Lorg/apache/xerces/dom/ElementImpl;

    invoke-virtual {v12, v13, v14}, Lorg/apache/xerces/dom/CoreDocumentImpl;->putIdentifier(Ljava/lang/String;Lorg/w3c/dom/Element;)V

    :cond_5
    :goto_1
    move-object v12, v6

    move-object v13, v4

    iput-object v13, v12, Lorg/apache/xerces/dom/AttrImpl;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    move-object v12, v6

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lorg/apache/xerces/dom/AttrImpl;->isOwned(Z)V

    move-object v12, v6

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lorg/apache/xerces/dom/AttrImpl;->isSpecified(Z)V

    move-object v12, v6

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lorg/apache/xerces/dom/AttrImpl;->isIdAttribute(Z)V

    move-object v12, v4

    move-object v13, v6

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/dom/AttributeMap;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    move-object v15, v2

    invoke-virtual {v12, v13, v14, v15}, Lorg/apache/xerces/dom/CoreDocumentImpl;->removedAttrNode(Lorg/apache/xerces/dom/AttrImpl;Lorg/apache/xerces/dom/NodeImpl;Ljava/lang/String;)V

    move-object v12, v6

    move-object v0, v12

    goto/16 :goto_0

    :cond_6
    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    move v13, v5

    invoke-interface {v12, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v12

    goto :goto_1

    :cond_7
    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    move v13, v5

    invoke-interface {v12, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v12

    goto :goto_1

    :cond_8
    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    move v13, v5

    invoke-interface {v12, v13}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v12

    goto :goto_1
.end method

.method moveSpecifiedAttributes(Lorg/apache/xerces/dom/AttributeMap;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    iget-object v5, v5, Lorg/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    if-eqz v5, :cond_0

    move-object v5, v1

    iget-object v5, v5, Lorg/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    :goto_0
    move v2, v5

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v3, v5

    :goto_1
    move v5, v3

    if-gez v5, :cond_1

    return-void

    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    move-object v5, v1

    iget-object v5, v5, Lorg/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    move v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xerces/dom/AttrImpl;

    move-object v4, v5

    move-object v5, v4

    invoke-virtual {v5}, Lorg/apache/xerces/dom/AttrImpl;->isSpecified()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v1

    move-object v6, v4

    move v7, v3

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/xerces/dom/AttributeMap;->remove(Lorg/apache/xerces/dom/AttrImpl;IZ)Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v5, v4

    invoke-virtual {v5}, Lorg/apache/xerces/dom/AttrImpl;->getLocalName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/AttributeMap;->setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v5

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_3
    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/AttributeMap;->setNamedItemNS(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v5

    goto :goto_2
.end method

.method protected reconcileDefaults(Lorg/apache/xerces/dom/NamedNodeMapImpl;)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    if-eqz v9, :cond_0

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    :goto_0
    move v2, v9

    move v9, v2

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v3, v9

    :goto_1
    move v9, v3

    if-gez v9, :cond_1

    move-object v9, v1

    if-nez v9, :cond_3

    :goto_2
    return-void

    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    :cond_1
    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    move v10, v3

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/xerces/dom/AttrImpl;

    move-object v4, v9

    move-object v9, v4

    invoke-virtual {v9}, Lorg/apache/xerces/dom/AttrImpl;->isSpecified()Z

    move-result v9

    if-nez v9, :cond_2

    move-object v9, v0

    move-object v10, v4

    move v11, v3

    const/4 v12, 0x0

    invoke-direct {v9, v10, v11, v12}, Lorg/apache/xerces/dom/AttributeMap;->remove(Lorg/apache/xerces/dom/AttrImpl;IZ)Lorg/w3c/dom/Node;

    move-result-object v9

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_3
    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    if-eqz v9, :cond_4

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_6

    :cond_4
    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/AttributeMap;->cloneContent(Lorg/apache/xerces/dom/NamedNodeMapImpl;)V

    :cond_5
    goto :goto_2

    :cond_6
    move-object v9, v1

    iget-object v9, v9, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    move v4, v9

    const/4 v9, 0x0

    move v5, v9

    :goto_3
    move v9, v5

    move v10, v4

    if-ge v9, v10, :cond_5

    move-object v9, v1

    iget-object v9, v9, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    move v10, v5

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/xerces/dom/AttrImpl;

    move-object v6, v9

    move-object v9, v0

    move-object v10, v6

    invoke-virtual {v10}, Lorg/apache/xerces/dom/AttrImpl;->getNodeName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lorg/apache/xerces/dom/AttributeMap;->findNamePoint(Ljava/lang/String;I)I

    move-result v9

    move v7, v9

    move v9, v7

    if-gez v9, :cond_7

    const/4 v9, -0x1

    move v10, v7

    rsub-int/lit8 v9, v10, -0x1

    move v7, v9

    move-object v9, v6

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/AttrImpl;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/apache/xerces/dom/NodeImpl;

    move-object v8, v9

    move-object v9, v8

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/dom/AttributeMap;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    iput-object v10, v9, Lorg/apache/xerces/dom/NodeImpl;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    move-object v9, v8

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/NodeImpl;->isOwned(Z)V

    move-object v9, v8

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/NodeImpl;->isSpecified(Z)V

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    move v10, v7

    move-object v11, v8

    invoke-interface {v9, v10, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3
.end method

.method protected removeItem(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const/4 v6, -0x1

    move v3, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    if-eqz v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    move v4, v6

    const/4 v6, 0x0

    move v5, v6

    :goto_0
    move v6, v5

    move v7, v4

    if-lt v6, v7, :cond_1

    :cond_0
    :goto_1
    move v6, v3

    if-gez v6, :cond_3

    const-string/jumbo v6, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v7, "NOT_FOUND_ERR"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    new-instance v6, Lorg/w3c/dom/DOMException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/16 v8, 0x8

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v6

    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    move v7, v5

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v1

    if-ne v6, v7, :cond_2

    move v6, v5

    move v3, v6

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    move-object v6, v0

    move-object v7, v1

    check-cast v7, Lorg/apache/xerces/dom/AttrImpl;

    move v8, v3

    move v9, v2

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/xerces/dom/AttributeMap;->remove(Lorg/apache/xerces/dom/AttrImpl;IZ)Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v0, v6

    return-object v0
.end method

.method public removeNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/dom/AttributeMap;->internalRemoveNamedItem(Ljava/lang/String;Z)Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public removeNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lorg/apache/xerces/dom/AttributeMap;->internalRemoveNamedItemNS(Ljava/lang/String;Ljava/lang/String;Z)Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method safeRemoveNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/dom/AttributeMap;->internalRemoveNamedItem(Ljava/lang/String;Z)Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method safeRemoveNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lorg/apache/xerces/dom/AttributeMap;->internalRemoveNamedItemNS(Ljava/lang/String;Ljava/lang/String;Z)Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/AttributeMap;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    invoke-virtual {v6}, Lorg/apache/xerces/dom/NodeImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v6

    iget-boolean v6, v6, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    move v2, v6

    move v6, v2

    if-eqz v6, :cond_2

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/dom/AttributeMap;->isReadOnly()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v7, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    new-instance v6, Lorg/w3c/dom/DOMException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x7

    move-object v9, v3

    invoke-direct {v7, v8, v9}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v6

    :cond_0
    move-object v6, v1

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/AttributeMap;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    invoke-virtual {v7}, Lorg/apache/xerces/dom/NodeImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v7

    if-eq v6, v7, :cond_1

    const-string/jumbo v6, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v7, "WRONG_DOCUMENT_ERR"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    new-instance v6, Lorg/w3c/dom/DOMException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x4

    move-object v9, v3

    invoke-direct {v7, v8, v9}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v6

    :cond_1
    move-object v6, v1

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    const-string/jumbo v6, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v7, "HIERARCHY_REQUEST_ERR"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    new-instance v6, Lorg/w3c/dom/DOMException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x3

    move-object v9, v3

    invoke-direct {v7, v8, v9}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v6

    :cond_2
    move-object v6, v1

    check-cast v6, Lorg/apache/xerces/dom/AttrImpl;

    move-object v3, v6

    move-object v6, v3

    invoke-virtual {v6}, Lorg/apache/xerces/dom/AttrImpl;->isOwned()Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v2

    if-eqz v6, :cond_3

    move-object v6, v3

    invoke-virtual {v6}, Lorg/apache/xerces/dom/AttrImpl;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/AttributeMap;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    if-eq v6, v7, :cond_3

    const-string/jumbo v6, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v7, "INUSE_ATTRIBUTE_ERR"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    new-instance v6, Lorg/w3c/dom/DOMException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/16 v8, 0xa

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v6

    :cond_3
    move-object v6, v1

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_4
    move-object v6, v3

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/AttributeMap;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    iput-object v7, v6, Lorg/apache/xerces/dom/AttrImpl;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    move-object v6, v3

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lorg/apache/xerces/dom/AttrImpl;->isOwned(Z)V

    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v7}, Lorg/apache/xerces/dom/AttrImpl;->getNodeName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/dom/AttributeMap;->findNamePoint(Ljava/lang/String;I)I

    move-result v6

    move v4, v6

    const/4 v6, 0x0

    move-object v5, v6

    move v6, v4

    if-ltz v6, :cond_6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    move v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/xerces/dom/AttrImpl;

    move-object v5, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    move v7, v4

    move-object v8, v1

    invoke-interface {v6, v7, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v6, v5

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/AttributeMap;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    invoke-virtual {v7}, Lorg/apache/xerces/dom/NodeImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v7

    iput-object v7, v6, Lorg/apache/xerces/dom/AttrImpl;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    move-object v6, v5

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/apache/xerces/dom/AttrImpl;->isOwned(Z)V

    move-object v6, v5

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lorg/apache/xerces/dom/AttrImpl;->isSpecified(Z)V

    :goto_1
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/AttributeMap;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    invoke-virtual {v6}, Lorg/apache/xerces/dom/NodeImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v6

    move-object v7, v3

    move-object v8, v5

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/dom/CoreDocumentImpl;->setAttrNode(Lorg/apache/xerces/dom/AttrImpl;Lorg/apache/xerces/dom/AttrImpl;)V

    move-object v6, v3

    invoke-virtual {v6}, Lorg/apache/xerces/dom/AttrImpl;->isNormalized()Z

    move-result v6

    if-nez v6, :cond_5

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/AttributeMap;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/apache/xerces/dom/NodeImpl;->isNormalized(Z)V

    :cond_5
    move-object v6, v5

    move-object v0, v6

    goto :goto_0

    :cond_6
    const/4 v6, -0x1

    move v7, v4

    rsub-int/lit8 v6, v7, -0x1

    move v4, v6

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    if-ne v6, v7, :cond_7

    move-object v6, v0

    new-instance v7, Ljava/util/ArrayList;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const/4 v9, 0x5

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, v6, Lorg/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    :cond_7
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    move v7, v4

    move-object v8, v1

    invoke-interface {v6, v7, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method public setNamedItemNS(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/AttributeMap;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    invoke-virtual {v6}, Lorg/apache/xerces/dom/NodeImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v6

    iget-boolean v6, v6, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    move v2, v6

    move v6, v2

    if-eqz v6, :cond_2

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/dom/AttributeMap;->isReadOnly()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v7, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    new-instance v6, Lorg/w3c/dom/DOMException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x7

    move-object v9, v3

    invoke-direct {v7, v8, v9}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v6

    :cond_0
    move-object v6, v1

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/AttributeMap;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    invoke-virtual {v7}, Lorg/apache/xerces/dom/NodeImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v7

    if-eq v6, v7, :cond_1

    const-string/jumbo v6, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v7, "WRONG_DOCUMENT_ERR"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    new-instance v6, Lorg/w3c/dom/DOMException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x4

    move-object v9, v3

    invoke-direct {v7, v8, v9}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v6

    :cond_1
    move-object v6, v1

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    const-string/jumbo v6, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v7, "HIERARCHY_REQUEST_ERR"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    new-instance v6, Lorg/w3c/dom/DOMException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x3

    move-object v9, v3

    invoke-direct {v7, v8, v9}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v6

    :cond_2
    move-object v6, v1

    check-cast v6, Lorg/apache/xerces/dom/AttrImpl;

    move-object v3, v6

    move-object v6, v3

    invoke-virtual {v6}, Lorg/apache/xerces/dom/AttrImpl;->isOwned()Z

    move-result v6

    if-eqz v6, :cond_4

    move v6, v2

    if-eqz v6, :cond_3

    move-object v6, v3

    invoke-virtual {v6}, Lorg/apache/xerces/dom/AttrImpl;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/AttributeMap;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    if-eq v6, v7, :cond_3

    const-string/jumbo v6, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v7, "INUSE_ATTRIBUTE_ERR"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    new-instance v6, Lorg/w3c/dom/DOMException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/16 v8, 0xa

    move-object v9, v4

    invoke-direct {v7, v8, v9}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v6

    :cond_3
    move-object v6, v1

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_4
    move-object v6, v3

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/AttributeMap;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    iput-object v7, v6, Lorg/apache/xerces/dom/AttrImpl;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    move-object v6, v3

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lorg/apache/xerces/dom/AttrImpl;->isOwned(Z)V

    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v7}, Lorg/apache/xerces/dom/AttrImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v8}, Lorg/apache/xerces/dom/AttrImpl;->getLocalName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/dom/AttributeMap;->findNamePoint(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move v4, v6

    const/4 v6, 0x0

    move-object v5, v6

    move v6, v4

    if-ltz v6, :cond_6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    move v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/xerces/dom/AttrImpl;

    move-object v5, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    move v7, v4

    move-object v8, v1

    invoke-interface {v6, v7, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v6, v5

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/AttributeMap;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    invoke-virtual {v7}, Lorg/apache/xerces/dom/NodeImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v7

    iput-object v7, v6, Lorg/apache/xerces/dom/AttrImpl;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    move-object v6, v5

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/apache/xerces/dom/AttrImpl;->isOwned(Z)V

    move-object v6, v5

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lorg/apache/xerces/dom/AttrImpl;->isSpecified(Z)V

    :goto_1
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/AttributeMap;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    invoke-virtual {v6}, Lorg/apache/xerces/dom/NodeImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v6

    move-object v7, v3

    move-object v8, v5

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/dom/CoreDocumentImpl;->setAttrNode(Lorg/apache/xerces/dom/AttrImpl;Lorg/apache/xerces/dom/AttrImpl;)V

    move-object v6, v3

    invoke-virtual {v6}, Lorg/apache/xerces/dom/AttrImpl;->isNormalized()Z

    move-result v6

    if-nez v6, :cond_5

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/AttributeMap;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/apache/xerces/dom/NodeImpl;->isNormalized(Z)V

    :cond_5
    move-object v6, v5

    move-object v0, v6

    goto :goto_0

    :cond_6
    move-object v6, v0

    move-object v7, v1

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/dom/AttributeMap;->findNamePoint(Ljava/lang/String;I)I

    move-result v6

    move v4, v6

    move v6, v4

    if-ltz v6, :cond_7

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    move v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/xerces/dom/AttrImpl;

    move-object v5, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    move v7, v4

    move-object v8, v1

    invoke-interface {v6, v7, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_7
    const/4 v6, -0x1

    move v7, v4

    rsub-int/lit8 v6, v7, -0x1

    move v4, v6

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    if-ne v6, v7, :cond_8

    move-object v6, v0

    new-instance v7, Ljava/util/ArrayList;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const/4 v9, 0x5

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, v6, Lorg/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    :cond_8
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    move v7, v4

    move-object v8, v1

    invoke-interface {v6, v7, v8}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method
