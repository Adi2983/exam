.class public Lorg/apache/xerces/dom/DeferredElementDefinitionImpl;
.super Lorg/apache/xerces/dom/ElementDefinitionImpl;

# interfaces
.implements Lorg/apache/xerces/dom/DeferredNode;


# static fields
.field static final serialVersionUID:J = 0x5d06afa0904b42f7L


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

    invoke-direct {v3, v4, v5}, Lorg/apache/xerces/dom/ElementDefinitionImpl;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    move-object v3, v0

    move v4, v2

    iput v4, v3, Lorg/apache/xerces/dom/DeferredElementDefinitionImpl;->fNodeIndex:I

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/DeferredElementDefinitionImpl;->needsSyncData(Z)V

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/DeferredElementDefinitionImpl;->needsSyncChildren(Z)V

    return-void
.end method


# virtual methods
.method public getNodeIndex()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/dom/DeferredElementDefinitionImpl;->fNodeIndex:I

    move v0, v1

    return v0
.end method

.method protected synchronizeChildren()V
    .locals 10

    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/DeferredElementDefinitionImpl;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v5}, Lorg/apache/xerces/dom/CoreDocumentImpl;->getMutationEvents()Z

    move-result v5

    move v1, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/DeferredElementDefinitionImpl;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/CoreDocumentImpl;->setMutationEvents(Z)V

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/DeferredElementDefinitionImpl;->needsSyncChildren(Z)V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/DeferredElementDefinitionImpl;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    check-cast v5, Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v2, v5

    move-object v5, v0

    new-instance v6, Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v2

    invoke-direct {v7, v8}, Lorg/apache/xerces/dom/NamedNodeMapImpl;-><init>(Lorg/apache/xerces/dom/NodeImpl;)V

    iput-object v6, v5, Lorg/apache/xerces/dom/DeferredElementDefinitionImpl;->attributes:Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move-object v5, v2

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/dom/DeferredElementDefinitionImpl;->fNodeIndex:I

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(I)I

    move-result v5

    move v3, v5

    :goto_0
    move v5, v3

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    move-object v5, v2

    move v6, v1

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setMutationEvents(Z)V

    return-void

    :cond_0
    move-object v5, v2

    move v6, v3

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeObject(I)Lorg/apache/xerces/dom/DeferredNode;

    move-result-object v5

    move-object v4, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/DeferredElementDefinitionImpl;->attributes:Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move-object v6, v4

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v5, v2

    move v6, v3

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getPrevSibling(I)I

    move-result v5

    move v3, v5

    goto :goto_0
.end method

.method protected synchronizeData()V
    .locals 5

    move-object v0, p0

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/xerces/dom/DeferredElementDefinitionImpl;->needsSyncData(Z)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/DeferredElementDefinitionImpl;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    check-cast v2, Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v1, v2

    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/dom/DeferredElementDefinitionImpl;->fNodeIndex:I

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/xerces/dom/DeferredElementDefinitionImpl;->name:Ljava/lang/String;

    return-void
.end method
