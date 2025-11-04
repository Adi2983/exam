.class public Lorg/apache/xerces/dom/NodeIteratorImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/w3c/dom/traversal/NodeIterator;


# instance fields
.field private fCurrentNode:Lorg/w3c/dom/Node;

.field private fDetach:Z

.field private fDocument:Lorg/apache/xerces/dom/DocumentImpl;

.field private fEntityReferenceExpansion:Z

.field private fForward:Z

.field private fNodeFilter:Lorg/w3c/dom/traversal/NodeFilter;

.field private fRoot:Lorg/w3c/dom/Node;

.field private fWhatToShow:I


# direct methods
.method public constructor <init>(Lorg/apache/xerces/dom/DocumentImpl;Lorg/w3c/dom/Node;ILorg/w3c/dom/traversal/NodeFilter;Z)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    move-object v6, v0

    const/4 v7, -0x1

    iput v7, v6, Lorg/apache/xerces/dom/NodeIteratorImpl;->fWhatToShow:I

    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lorg/apache/xerces/dom/NodeIteratorImpl;->fDetach:Z

    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Lorg/apache/xerces/dom/NodeIteratorImpl;->fForward:Z

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lorg/apache/xerces/dom/NodeIteratorImpl;->fDocument:Lorg/apache/xerces/dom/DocumentImpl;

    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lorg/apache/xerces/dom/NodeIteratorImpl;->fRoot:Lorg/w3c/dom/Node;

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v6, v0

    move v7, v3

    iput v7, v6, Lorg/apache/xerces/dom/NodeIteratorImpl;->fWhatToShow:I

    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lorg/apache/xerces/dom/NodeIteratorImpl;->fNodeFilter:Lorg/w3c/dom/traversal/NodeFilter;

    move-object v6, v0

    move v7, v5

    iput-boolean v7, v6, Lorg/apache/xerces/dom/NodeIteratorImpl;->fEntityReferenceExpansion:Z

    return-void
.end method


# virtual methods
.method acceptNode(Lorg/w3c/dom/Node;)Z
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/NodeIteratorImpl;->fNodeFilter:Lorg/w3c/dom/traversal/NodeFilter;

    if-nez v2, :cond_1

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/dom/NodeIteratorImpl;->fWhatToShow:I

    const/4 v3, 0x1

    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    shl-int/2addr v3, v4

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    :goto_1
    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/dom/NodeIteratorImpl;->fWhatToShow:I

    const/4 v3, 0x1

    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    shl-int/2addr v3, v4

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/NodeIteratorImpl;->fNodeFilter:Lorg/w3c/dom/traversal/NodeFilter;

    move-object v3, v1

    invoke-interface {v2, v3}, Lorg/w3c/dom/traversal/NodeFilter;->acceptNode(Lorg/w3c/dom/Node;)S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    :goto_2
    move v0, v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public detach()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/apache/xerces/dom/NodeIteratorImpl;->fDetach:Z

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/NodeIteratorImpl;->fDocument:Lorg/apache/xerces/dom/DocumentImpl;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lorg/apache/xerces/dom/DocumentImpl;->removeNodeIterator(Lorg/w3c/dom/traversal/NodeIterator;)V

    return-void
.end method

.method public getExpandEntityReferences()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/dom/NodeIteratorImpl;->fEntityReferenceExpansion:Z

    move v0, v1

    return v0
.end method

.method public getFilter()Lorg/w3c/dom/traversal/NodeFilter;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/NodeIteratorImpl;->fNodeFilter:Lorg/w3c/dom/traversal/NodeFilter;

    move-object v0, v1

    return-object v0
.end method

.method public getRoot()Lorg/w3c/dom/Node;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/NodeIteratorImpl;->fRoot:Lorg/w3c/dom/Node;

    move-object v0, v1

    return-object v0
.end method

.method public getWhatToShow()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/dom/NodeIteratorImpl;->fWhatToShow:I

    move v0, v1

    return v0
.end method

.method matchNodeOrParent(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v2, v3

    :goto_1
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/NodeIteratorImpl;->fRoot:Lorg/w3c/dom/Node;

    if-ne v3, v4, :cond_1

    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    :cond_1
    move-object v3, v1

    move-object v4, v2

    if-ne v3, v4, :cond_2

    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    :cond_2
    move-object v3, v2

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v2, v3

    goto :goto_1
.end method

.method public nextNode()Lorg/w3c/dom/Node;
    .locals 10

    move-object v0, p0

    move-object v3, v0

    iget-boolean v3, v3, Lorg/apache/xerces/dom/NodeIteratorImpl;->fDetach:Z

    if-eqz v3, :cond_0

    new-instance v3, Lorg/w3c/dom/DOMException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0xb

    const-string/jumbo v6, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v7, "INVALID_STATE_ERR"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/NodeIteratorImpl;->fRoot:Lorg/w3c/dom/Node;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v1, v3

    const/4 v3, 0x0

    move v2, v3

    :cond_2
    move v3, v2

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    :cond_3
    move-object v3, v0

    iget-boolean v3, v3, Lorg/apache/xerces/dom/NodeIteratorImpl;->fForward:Z

    if-nez v3, :cond_4

    move-object v3, v1

    if-eqz v3, :cond_4

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v1, v3

    :goto_1
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/apache/xerces/dom/NodeIteratorImpl;->fForward:Z

    move-object v3, v1

    if-nez v3, :cond_6

    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    :cond_4
    move-object v3, v0

    iget-boolean v3, v3, Lorg/apache/xerces/dom/NodeIteratorImpl;->fEntityReferenceExpansion:Z

    if-nez v3, :cond_5

    move-object v3, v1

    if-eqz v3, :cond_5

    move-object v3, v1

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_5

    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/dom/NodeIteratorImpl;->nextNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v1, v3

    goto :goto_1

    :cond_5
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/dom/NodeIteratorImpl;->nextNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v1, v3

    goto :goto_1

    :cond_6
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/NodeIteratorImpl;->acceptNode(Lorg/w3c/dom/Node;)Z

    move-result v3

    move v2, v3

    move v3, v2

    if-eqz v3, :cond_2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v0, v3

    goto :goto_0
.end method

.method nextNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v1

    if-nez v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/NodeIteratorImpl;->fRoot:Lorg/w3c/dom/Node;

    move-object v0, v5

    :goto_0
    return-object v0

    :cond_0
    move v5, v2

    if-eqz v5, :cond_1

    move-object v5, v1

    invoke-interface {v5}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v1

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v3, v5

    move-object v5, v3

    move-object v0, v5

    goto :goto_0

    :cond_1
    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/NodeIteratorImpl;->fRoot:Lorg/w3c/dom/Node;

    if-ne v5, v6, :cond_2

    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    :cond_2
    move-object v5, v1

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v3, v5

    move-object v5, v3

    if-eqz v5, :cond_3

    move-object v5, v3

    move-object v0, v5

    goto :goto_0

    :cond_3
    move-object v5, v1

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v4, v5

    :goto_1
    move-object v5, v4

    if-eqz v5, :cond_4

    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/NodeIteratorImpl;->fRoot:Lorg/w3c/dom/Node;

    if-ne v5, v6, :cond_5

    :cond_4
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    :cond_5
    move-object v5, v4

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v3, v5

    move-object v5, v3

    if-eqz v5, :cond_6

    move-object v5, v3

    move-object v0, v5

    goto :goto_0

    :cond_6
    move-object v5, v4

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v4, v5

    goto :goto_1
.end method

.method public previousNode()Lorg/w3c/dom/Node;
    .locals 10

    move-object v0, p0

    move-object v3, v0

    iget-boolean v3, v3, Lorg/apache/xerces/dom/NodeIteratorImpl;->fDetach:Z

    if-eqz v3, :cond_0

    new-instance v3, Lorg/w3c/dom/DOMException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0xb

    const-string/jumbo v6, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v7, "INVALID_STATE_ERR"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/NodeIteratorImpl;->fRoot:Lorg/w3c/dom/Node;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    if-nez v3, :cond_2

    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v1, v3

    const/4 v3, 0x0

    move v2, v3

    :cond_3
    move v3, v2

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    :cond_4
    move-object v3, v0

    iget-boolean v3, v3, Lorg/apache/xerces/dom/NodeIteratorImpl;->fForward:Z

    if-eqz v3, :cond_5

    move-object v3, v1

    if-eqz v3, :cond_5

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v1, v3

    :goto_1
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lorg/apache/xerces/dom/NodeIteratorImpl;->fForward:Z

    move-object v3, v1

    if-nez v3, :cond_6

    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    :cond_5
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/NodeIteratorImpl;->previousNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v1, v3

    goto :goto_1

    :cond_6
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/NodeIteratorImpl;->acceptNode(Lorg/w3c/dom/Node;)Z

    move-result v3

    move v2, v3

    move v3, v2

    if-eqz v3, :cond_3

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v0, v3

    goto :goto_0
.end method

.method previousNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/NodeIteratorImpl;->fRoot:Lorg/w3c/dom/Node;

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    move-object v3, v1

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    if-nez v3, :cond_1

    move-object v3, v1

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    :cond_1
    move-object v3, v2

    invoke-interface {v3}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, v0

    iget-boolean v3, v3, Lorg/apache/xerces/dom/NodeIteratorImpl;->fEntityReferenceExpansion:Z

    if-nez v3, :cond_2

    move-object v3, v2

    if-eqz v3, :cond_2

    move-object v3, v2

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_3

    :cond_2
    :goto_1
    move-object v3, v2

    invoke-interface {v3}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    :cond_4
    move-object v3, v2

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v2, v3

    goto :goto_1
.end method

.method public removeNode(Lorg/w3c/dom/Node;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/NodeIteratorImpl;->matchNodeOrParent(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v2, v4

    move-object v4, v2

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/dom/NodeIteratorImpl;->fForward:Z

    if-eqz v4, :cond_2

    move-object v4, v0

    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/NodeIteratorImpl;->previousNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v5

    iput-object v5, v4, Lorg/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    :goto_1
    goto :goto_0

    :cond_2
    move-object v4, v0

    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/dom/NodeIteratorImpl;->nextNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v3, v4

    move-object v4, v3

    if-eqz v4, :cond_3

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lorg/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    goto :goto_1

    :cond_3
    move-object v4, v0

    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/NodeIteratorImpl;->previousNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v5

    iput-object v5, v4, Lorg/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lorg/apache/xerces/dom/NodeIteratorImpl;->fForward:Z

    goto :goto_1
.end method
