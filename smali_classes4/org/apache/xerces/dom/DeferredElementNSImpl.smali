.class public Lorg/apache/xerces/dom/DeferredElementNSImpl;
.super Lorg/apache/xerces/dom/ElementNSImpl;

# interfaces
.implements Lorg/apache/xerces/dom/DeferredNode;


# static fields
.field static final serialVersionUID:J = -0x456a4409e1232119L


# instance fields
.field protected transient fNodeIndex:I


# direct methods
.method constructor <init>(Lorg/apache/xerces/dom/DeferredDocumentImpl;I)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lorg/apache/xerces/dom/ElementNSImpl;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    move-object v3, v0

    move v4, v2

    iput v4, v3, Lorg/apache/xerces/dom/DeferredElementNSImpl;->fNodeIndex:I

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/DeferredElementNSImpl;->needsSyncChildren(Z)V

    return-void
.end method


# virtual methods
.method public final getNodeIndex()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/dom/DeferredElementNSImpl;->fNodeIndex:I

    move v0, v1

    return v0
.end method

.method protected final synchronizeChildren()V
    .locals 5

    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/DeferredElementNSImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v1, v2

    move-object v2, v1

    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/dom/DeferredElementNSImpl;->fNodeIndex:I

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->synchronizeChildren(Lorg/apache/xerces/dom/ParentNode;I)V

    return-void
.end method

.method protected final synchronizeData()V
    .locals 12

    move-object v0, p0

    move-object v8, v0

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/apache/xerces/dom/DeferredElementNSImpl;->needsSyncData(Z)V

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DeferredElementNSImpl;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    check-cast v8, Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v1, v8

    move-object v8, v1

    iget-boolean v8, v8, Lorg/apache/xerces/dom/DeferredDocumentImpl;->mutationEvents:Z

    move v2, v8

    move-object v8, v1

    const/4 v9, 0x0

    iput-boolean v9, v8, Lorg/apache/xerces/dom/DeferredDocumentImpl;->mutationEvents:Z

    move-object v8, v0

    move-object v9, v1

    move-object v10, v0

    iget v10, v10, Lorg/apache/xerces/dom/DeferredElementNSImpl;->fNodeIndex:I

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lorg/apache/xerces/dom/DeferredElementNSImpl;->name:Ljava/lang/String;

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DeferredElementNSImpl;->name:Ljava/lang/String;

    const/16 v9, 0x3a

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    move v3, v8

    move v8, v3

    if-gez v8, :cond_3

    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/DeferredElementNSImpl;->name:Ljava/lang/String;

    iput-object v9, v8, Lorg/apache/xerces/dom/DeferredElementNSImpl;->localName:Ljava/lang/String;

    :goto_0
    move-object v8, v0

    move-object v9, v1

    move-object v10, v0

    iget v10, v10, Lorg/apache/xerces/dom/DeferredElementNSImpl;->fNodeIndex:I

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeURI(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lorg/apache/xerces/dom/DeferredElementNSImpl;->namespaceURI:Ljava/lang/String;

    move-object v8, v0

    move-object v9, v1

    move-object v10, v0

    iget v10, v10, Lorg/apache/xerces/dom/DeferredElementNSImpl;->fNodeIndex:I

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getTypeInfo(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/xerces/xs/XSTypeDefinition;

    iput-object v9, v8, Lorg/apache/xerces/dom/DeferredElementNSImpl;->type:Lorg/apache/xerces/xs/XSTypeDefinition;

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/dom/DeferredElementNSImpl;->setupDefaultAttributes()V

    move-object v8, v1

    move-object v9, v0

    iget v9, v9, Lorg/apache/xerces/dom/DeferredElementNSImpl;->fNodeIndex:I

    invoke-virtual {v8, v9}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(I)I

    move-result v8

    move v4, v8

    move v8, v4

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/dom/DeferredElementNSImpl;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v8

    move-object v5, v8

    const/4 v8, 0x0

    move v6, v8

    :cond_0
    move-object v8, v1

    move v9, v4

    invoke-virtual {v8, v9}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeObject(I)Lorg/apache/xerces/dom/DeferredNode;

    move-result-object v8

    check-cast v8, Lorg/apache/xerces/dom/AttrImpl;

    move-object v7, v8

    move-object v8, v7

    invoke-virtual {v8}, Lorg/apache/xerces/dom/AttrImpl;->getSpecified()Z

    move-result v8

    if-nez v8, :cond_4

    move v8, v6

    if-nez v8, :cond_1

    move-object v8, v7

    invoke-virtual {v8}, Lorg/apache/xerces/dom/AttrImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    move-object v8, v7

    invoke-virtual {v8}, Lorg/apache/xerces/dom/AttrImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lorg/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-eq v8, v9, :cond_4

    move-object v8, v7

    invoke-virtual {v8}, Lorg/apache/xerces/dom/AttrImpl;->getName()Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x3a

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-gez v8, :cond_4

    :cond_1
    const/4 v8, 0x1

    move v6, v8

    move-object v8, v5

    move-object v9, v7

    invoke-interface {v8, v9}, Lorg/w3c/dom/NamedNodeMap;->setNamedItemNS(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v8

    :goto_1
    move-object v8, v1

    move v9, v4

    invoke-virtual {v8, v9}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getPrevSibling(I)I

    move-result v8

    move v4, v8

    move v8, v4

    const/4 v9, -0x1

    if-ne v8, v9, :cond_0

    :cond_2
    move-object v8, v1

    move v9, v2

    iput-boolean v9, v8, Lorg/apache/xerces/dom/DeferredDocumentImpl;->mutationEvents:Z

    return-void

    :cond_3
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/DeferredElementNSImpl;->name:Ljava/lang/String;

    move v10, v3

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lorg/apache/xerces/dom/DeferredElementNSImpl;->localName:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    move-object v8, v5

    move-object v9, v7

    invoke-interface {v8, v9}, Lorg/w3c/dom/NamedNodeMap;->setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v8

    goto :goto_1
.end method
