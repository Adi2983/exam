.class public Lorg/apache/xerces/dom/DeferredDocumentTypeImpl;
.super Lorg/apache/xerces/dom/DocumentTypeImpl;

# interfaces
.implements Lorg/apache/xerces/dom/DeferredNode;


# static fields
.field static final serialVersionUID:J = -0x1e268db160e6dd65L


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

    invoke-direct {v3, v4, v5}, Lorg/apache/xerces/dom/DocumentTypeImpl;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    move-object v3, v0

    move v4, v2

    iput v4, v3, Lorg/apache/xerces/dom/DeferredDocumentTypeImpl;->fNodeIndex:I

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/DeferredDocumentTypeImpl;->needsSyncData(Z)V

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/DeferredDocumentTypeImpl;->needsSyncChildren(Z)V

    return-void
.end method


# virtual methods
.method public getNodeIndex()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/dom/DeferredDocumentTypeImpl;->fNodeIndex:I

    move v0, v1

    return v0
.end method

.method protected synchronizeChildren()V
    .locals 12

    move-object v0, p0

    move-object v7, v0

    invoke-virtual {v7}, Lorg/apache/xerces/dom/DeferredDocumentTypeImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/xerces/dom/CoreDocumentImpl;->getMutationEvents()Z

    move-result v7

    move v1, v7

    move-object v7, v0

    invoke-virtual {v7}, Lorg/apache/xerces/dom/DeferredDocumentTypeImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/apache/xerces/dom/CoreDocumentImpl;->setMutationEvents(Z)V

    move-object v7, v0

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/apache/xerces/dom/DeferredDocumentTypeImpl;->needsSyncChildren(Z)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/DeferredDocumentTypeImpl;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    check-cast v7, Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v2, v7

    move-object v7, v0

    new-instance v8, Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v0

    invoke-direct {v9, v10}, Lorg/apache/xerces/dom/NamedNodeMapImpl;-><init>(Lorg/apache/xerces/dom/NodeImpl;)V

    iput-object v8, v7, Lorg/apache/xerces/dom/DeferredDocumentTypeImpl;->entities:Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move-object v7, v0

    new-instance v8, Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v0

    invoke-direct {v9, v10}, Lorg/apache/xerces/dom/NamedNodeMapImpl;-><init>(Lorg/apache/xerces/dom/NodeImpl;)V

    iput-object v8, v7, Lorg/apache/xerces/dom/DeferredDocumentTypeImpl;->notations:Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move-object v7, v0

    new-instance v8, Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v0

    invoke-direct {v9, v10}, Lorg/apache/xerces/dom/NamedNodeMapImpl;-><init>(Lorg/apache/xerces/dom/NodeImpl;)V

    iput-object v8, v7, Lorg/apache/xerces/dom/DeferredDocumentTypeImpl;->elements:Lorg/apache/xerces/dom/NamedNodeMapImpl;

    const/4 v7, 0x0

    move-object v3, v7

    move-object v7, v2

    move-object v8, v0

    iget v8, v8, Lorg/apache/xerces/dom/DeferredDocumentTypeImpl;->fNodeIndex:I

    invoke-virtual {v7, v8}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(I)I

    move-result v7

    move v4, v7

    :goto_0
    move v7, v4

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    move-object v7, v0

    invoke-virtual {v7}, Lorg/apache/xerces/dom/DeferredDocumentTypeImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v7

    move v8, v1

    invoke-virtual {v7, v8}, Lorg/apache/xerces/dom/CoreDocumentImpl;->setMutationEvents(Z)V

    move-object v7, v0

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/dom/DeferredDocumentTypeImpl;->setReadOnly(ZZ)V

    return-void

    :cond_0
    move-object v7, v2

    move v8, v4

    invoke-virtual {v7, v8}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeObject(I)Lorg/apache/xerces/dom/DeferredNode;

    move-result-object v7

    move-object v5, v7

    move-object v7, v5

    invoke-interface {v7}, Lorg/apache/xerces/dom/DeferredNode;->getNodeType()S

    move-result v7

    move v6, v7

    move v7, v6

    sparse-switch v7, :sswitch_data_0

    :cond_1
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v9, "DeferredDocumentTypeImpl#synchronizeInfo: node.getNodeType() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    move-object v9, v5

    invoke-interface {v9}, Lorg/apache/xerces/dom/DeferredNode;->getNodeType()S

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string/jumbo v9, ", class = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    move-object v9, v5

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    move-object v7, v2

    move v8, v4

    invoke-virtual {v7, v8}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getPrevSibling(I)I

    move-result v7

    move v4, v7

    goto :goto_0

    :sswitch_0
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/DeferredDocumentTypeImpl;->entities:Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move-object v8, v5

    invoke-virtual {v7, v8}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v7

    goto :goto_1

    :sswitch_1
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/DeferredDocumentTypeImpl;->notations:Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move-object v8, v5

    invoke-virtual {v7, v8}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v7

    goto :goto_1

    :sswitch_2
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/DeferredDocumentTypeImpl;->elements:Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move-object v8, v5

    invoke-virtual {v7, v8}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v7

    goto :goto_1

    :sswitch_3
    move-object v7, v0

    invoke-virtual {v7}, Lorg/apache/xerces/dom/DeferredDocumentTypeImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v7

    check-cast v7, Lorg/apache/xerces/dom/DocumentImpl;

    iget-boolean v7, v7, Lorg/apache/xerces/dom/DocumentImpl;->allowGrammarAccess:Z

    if-eqz v7, :cond_1

    move-object v7, v0

    move-object v8, v5

    move-object v9, v3

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/dom/DeferredDocumentTypeImpl;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v7

    move-object v7, v5

    move-object v3, v7

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x6 -> :sswitch_0
        0xc -> :sswitch_1
        0x15 -> :sswitch_2
    .end sparse-switch
.end method

.method protected synchronizeData()V
    .locals 6

    move-object v0, p0

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/DeferredDocumentTypeImpl;->needsSyncData(Z)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/DeferredDocumentTypeImpl;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    check-cast v3, Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v1, v3

    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/dom/DeferredDocumentTypeImpl;->fNodeIndex:I

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lorg/apache/xerces/dom/DeferredDocumentTypeImpl;->name:Ljava/lang/String;

    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/dom/DeferredDocumentTypeImpl;->fNodeIndex:I

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeValue(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lorg/apache/xerces/dom/DeferredDocumentTypeImpl;->publicID:Ljava/lang/String;

    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/dom/DeferredDocumentTypeImpl;->fNodeIndex:I

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeURI(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lorg/apache/xerces/dom/DeferredDocumentTypeImpl;->systemID:Ljava/lang/String;

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/dom/DeferredDocumentTypeImpl;->fNodeIndex:I

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(I)I

    move-result v3

    move v2, v3

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeValue(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lorg/apache/xerces/dom/DeferredDocumentTypeImpl;->internalSubset:Ljava/lang/String;

    return-void
.end method
