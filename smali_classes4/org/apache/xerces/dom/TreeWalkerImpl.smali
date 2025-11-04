.class public Lorg/apache/xerces/dom/TreeWalkerImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/w3c/dom/traversal/TreeWalker;


# instance fields
.field fCurrentNode:Lorg/w3c/dom/Node;

.field private fEntityReferenceExpansion:Z

.field fNodeFilter:Lorg/w3c/dom/traversal/NodeFilter;

.field fRoot:Lorg/w3c/dom/Node;

.field private fUseIsSameNode:Z

.field fWhatToShow:I


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Node;ILorg/w3c/dom/traversal/NodeFilter;Z)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lorg/apache/xerces/dom/TreeWalkerImpl;->fEntityReferenceExpansion:Z

    move-object v5, v0

    const/4 v6, -0x1

    iput v6, v5, Lorg/apache/xerces/dom/TreeWalkerImpl;->fWhatToShow:I

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lorg/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lorg/apache/xerces/dom/TreeWalkerImpl;->fRoot:Lorg/w3c/dom/Node;

    move-object v5, v0

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Lorg/apache/xerces/dom/TreeWalkerImpl;->useIsSameNode(Lorg/w3c/dom/Node;)Z

    move-result v6

    iput-boolean v6, v5, Lorg/apache/xerces/dom/TreeWalkerImpl;->fUseIsSameNode:Z

    move-object v5, v0

    move v6, v2

    iput v6, v5, Lorg/apache/xerces/dom/TreeWalkerImpl;->fWhatToShow:I

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lorg/apache/xerces/dom/TreeWalkerImpl;->fNodeFilter:Lorg/w3c/dom/traversal/NodeFilter;

    move-object v5, v0

    move v6, v4

    iput-boolean v6, v5, Lorg/apache/xerces/dom/TreeWalkerImpl;->fEntityReferenceExpansion:Z

    return-void
.end method

.method private isSameNode(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-boolean v3, v3, Lorg/apache/xerces/dom/TreeWalkerImpl;->fUseIsSameNode:Z

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v2

    invoke-interface {v3, v4}, Lorg/w3c/dom/Node;->isSameNode(Lorg/w3c/dom/Node;)Z

    move-result v3

    :goto_0
    move v0, v3

    return v0

    :cond_0
    move-object v3, v1

    move-object v4, v2

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private useIsSameNode(Lorg/w3c/dom/Node;)Z
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    instance-of v3, v3, Lorg/apache/xerces/dom/NodeImpl;

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move-object v3, v1

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1

    move-object v3, v1

    check-cast v3, Lorg/w3c/dom/Document;

    :goto_1
    move-object v2, v3

    move-object v3, v2

    if-eqz v3, :cond_2

    move-object v3, v2

    invoke-interface {v3}, Lorg/w3c/dom/Document;->getImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v3

    const-string/jumbo v4, "Core"

    const-string/jumbo v5, "3.0"

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    move v0, v3

    goto :goto_0

    :cond_1
    move-object v3, v1

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method


# virtual methods
.method acceptNode(Lorg/w3c/dom/Node;)S
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/TreeWalkerImpl;->fNodeFilter:Lorg/w3c/dom/traversal/NodeFilter;

    if-nez v2, :cond_1

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/dom/TreeWalkerImpl;->fWhatToShow:I

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

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x3

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/dom/TreeWalkerImpl;->fWhatToShow:I

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

    iget-object v2, v2, Lorg/apache/xerces/dom/TreeWalkerImpl;->fNodeFilter:Lorg/w3c/dom/traversal/NodeFilter;

    move-object v3, v1

    invoke-interface {v2, v3}, Lorg/w3c/dom/traversal/NodeFilter;->acceptNode(Lorg/w3c/dom/Node;)S

    move-result v2

    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    move v0, v2

    goto :goto_0
.end method

.method public firstChild()Lorg/w3c/dom/Node;
    .locals 4

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/dom/TreeWalkerImpl;->getFirstChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v1, v2

    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    :cond_1
    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method

.method public getCurrentNode()Lorg/w3c/dom/Node;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v0, v1

    return-object v0
.end method

.method public getExpandEntityReferences()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/dom/TreeWalkerImpl;->fEntityReferenceExpansion:Z

    move v0, v1

    return v0
.end method

.method public getFilter()Lorg/w3c/dom/traversal/NodeFilter;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/TreeWalkerImpl;->fNodeFilter:Lorg/w3c/dom/traversal/NodeFilter;

    move-object v0, v1

    return-object v0
.end method

.method getFirstChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    if-nez v5, :cond_0

    const/4 v5, 0x0

    move-object v0, v5

    :goto_0
    return-object v0

    :cond_0
    move-object v5, v0

    iget-boolean v5, v5, Lorg/apache/xerces/dom/TreeWalkerImpl;->fEntityReferenceExpansion:Z

    if-nez v5, :cond_1

    move-object v5, v1

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1

    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    :cond_1
    move-object v5, v1

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v2, v5

    move-object v5, v2

    if-nez v5, :cond_2

    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    :cond_2
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/TreeWalkerImpl;->acceptNode(Lorg/w3c/dom/Node;)S

    move-result v5

    move v3, v5

    move v5, v3

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    move-object v5, v2

    move-object v0, v5

    goto :goto_0

    :cond_3
    move v5, v3

    const/4 v6, 0x3

    if-ne v5, v6, :cond_5

    move-object v5, v2

    invoke-interface {v5}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/TreeWalkerImpl;->getFirstChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v4, v5

    move-object v5, v4

    if-nez v5, :cond_4

    move-object v5, v0

    move-object v6, v2

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/dom/TreeWalkerImpl;->getNextSibling(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    :cond_4
    move-object v5, v4

    move-object v0, v5

    goto :goto_0

    :cond_5
    move-object v5, v0

    move-object v6, v2

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/dom/TreeWalkerImpl;->getNextSibling(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v0, v5

    goto :goto_0
.end method

.method getLastChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    if-nez v5, :cond_0

    const/4 v5, 0x0

    move-object v0, v5

    :goto_0
    return-object v0

    :cond_0
    move-object v5, v0

    iget-boolean v5, v5, Lorg/apache/xerces/dom/TreeWalkerImpl;->fEntityReferenceExpansion:Z

    if-nez v5, :cond_1

    move-object v5, v1

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1

    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    :cond_1
    move-object v5, v1

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v2, v5

    move-object v5, v2

    if-nez v5, :cond_2

    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    :cond_2
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/TreeWalkerImpl;->acceptNode(Lorg/w3c/dom/Node;)S

    move-result v5

    move v3, v5

    move v5, v3

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    move-object v5, v2

    move-object v0, v5

    goto :goto_0

    :cond_3
    move v5, v3

    const/4 v6, 0x3

    if-ne v5, v6, :cond_5

    move-object v5, v2

    invoke-interface {v5}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/TreeWalkerImpl;->getLastChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v4, v5

    move-object v5, v4

    if-nez v5, :cond_4

    move-object v5, v0

    move-object v6, v2

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/dom/TreeWalkerImpl;->getPreviousSibling(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    :cond_4
    move-object v5, v4

    move-object v0, v5

    goto :goto_0

    :cond_5
    move-object v5, v0

    move-object v6, v2

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/dom/TreeWalkerImpl;->getPreviousSibling(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v0, v5

    goto :goto_0
.end method

.method getNextSibling(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/TreeWalkerImpl;->fRoot:Lorg/w3c/dom/Node;

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/dom/TreeWalkerImpl;->getNextSibling(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method getNextSibling(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v1

    if-eqz v6, :cond_0

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lorg/apache/xerces/dom/TreeWalkerImpl;->isSameNode(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const/4 v6, 0x0

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_1
    move-object v6, v1

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v3, v6

    move-object v6, v3

    if-nez v6, :cond_5

    move-object v6, v1

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v3, v6

    move-object v6, v3

    if-eqz v6, :cond_2

    move-object v6, v0

    move-object v7, v3

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lorg/apache/xerces/dom/TreeWalkerImpl;->isSameNode(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    :cond_3
    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v6, v7}, Lorg/apache/xerces/dom/TreeWalkerImpl;->acceptNode(Lorg/w3c/dom/Node;)S

    move-result v6

    move v4, v6

    move v6, v4

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4

    move-object v6, v0

    move-object v7, v3

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/dom/TreeWalkerImpl;->getNextSibling(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    :cond_5
    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v6, v7}, Lorg/apache/xerces/dom/TreeWalkerImpl;->acceptNode(Lorg/w3c/dom/Node;)S

    move-result v6

    move v4, v6

    move v6, v4

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    move-object v6, v3

    move-object v0, v6

    goto :goto_0

    :cond_6
    move v6, v4

    const/4 v7, 0x3

    if-ne v6, v7, :cond_8

    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v6, v7}, Lorg/apache/xerces/dom/TreeWalkerImpl;->getFirstChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v5, v6

    move-object v6, v5

    if-nez v6, :cond_7

    move-object v6, v0

    move-object v7, v3

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/dom/TreeWalkerImpl;->getNextSibling(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    :cond_7
    move-object v6, v5

    move-object v0, v6

    goto :goto_0

    :cond_8
    move-object v6, v0

    move-object v7, v3

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/dom/TreeWalkerImpl;->getNextSibling(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v0, v6

    goto :goto_0
.end method

.method getParentNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/TreeWalkerImpl;->fRoot:Lorg/w3c/dom/Node;

    invoke-direct {v4, v5, v6}, Lorg/apache/xerces/dom/TreeWalkerImpl;->isSameNode(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, 0x0

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_1
    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v2, v4

    move-object v4, v2

    if-nez v4, :cond_2

    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0

    :cond_2
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/TreeWalkerImpl;->acceptNode(Lorg/w3c/dom/Node;)S

    move-result v4

    move v3, v4

    move v4, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    move-object v4, v2

    move-object v0, v4

    goto :goto_0

    :cond_3
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/TreeWalkerImpl;->getParentNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method getPreviousSibling(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/TreeWalkerImpl;->fRoot:Lorg/w3c/dom/Node;

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/dom/TreeWalkerImpl;->getPreviousSibling(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method getPreviousSibling(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v1

    if-eqz v6, :cond_0

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lorg/apache/xerces/dom/TreeWalkerImpl;->isSameNode(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const/4 v6, 0x0

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_1
    move-object v6, v1

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v3, v6

    move-object v6, v3

    if-nez v6, :cond_5

    move-object v6, v1

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v3, v6

    move-object v6, v3

    if-eqz v6, :cond_2

    move-object v6, v0

    move-object v7, v3

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lorg/apache/xerces/dom/TreeWalkerImpl;->isSameNode(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    :cond_3
    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v6, v7}, Lorg/apache/xerces/dom/TreeWalkerImpl;->acceptNode(Lorg/w3c/dom/Node;)S

    move-result v6

    move v4, v6

    move v6, v4

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4

    move-object v6, v0

    move-object v7, v3

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/dom/TreeWalkerImpl;->getPreviousSibling(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    :cond_5
    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v6, v7}, Lorg/apache/xerces/dom/TreeWalkerImpl;->acceptNode(Lorg/w3c/dom/Node;)S

    move-result v6

    move v4, v6

    move v6, v4

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    move-object v6, v3

    move-object v0, v6

    goto :goto_0

    :cond_6
    move v6, v4

    const/4 v7, 0x3

    if-ne v6, v7, :cond_8

    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v6, v7}, Lorg/apache/xerces/dom/TreeWalkerImpl;->getLastChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v5, v6

    move-object v6, v5

    if-nez v6, :cond_7

    move-object v6, v0

    move-object v7, v3

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/dom/TreeWalkerImpl;->getPreviousSibling(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    :cond_7
    move-object v6, v5

    move-object v0, v6

    goto :goto_0

    :cond_8
    move-object v6, v0

    move-object v7, v3

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/dom/TreeWalkerImpl;->getPreviousSibling(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v0, v6

    goto :goto_0
.end method

.method public getRoot()Lorg/w3c/dom/Node;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/TreeWalkerImpl;->fRoot:Lorg/w3c/dom/Node;

    move-object v0, v1

    return-object v0
.end method

.method public getWhatToShow()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/dom/TreeWalkerImpl;->fWhatToShow:I

    move v0, v1

    return v0
.end method

.method public lastChild()Lorg/w3c/dom/Node;
    .locals 4

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/dom/TreeWalkerImpl;->getLastChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v1, v2

    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    :cond_1
    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method

.method public nextNode()Lorg/w3c/dom/Node;
    .locals 5

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/TreeWalkerImpl;->getFirstChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v1, v3

    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v3, v1

    move-object v0, v3

    goto :goto_0

    :cond_1
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/TreeWalkerImpl;->getNextSibling(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v1, v3

    move-object v3, v1

    if-eqz v3, :cond_2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v3, v1

    move-object v0, v3

    goto :goto_0

    :cond_2
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/TreeWalkerImpl;->getParentNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v2, v3

    :goto_1
    move-object v3, v2

    if-nez v3, :cond_3

    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    :cond_3
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/TreeWalkerImpl;->getNextSibling(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v1, v3

    move-object v3, v1

    if-eqz v3, :cond_4

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v3, v1

    move-object v0, v3

    goto :goto_0

    :cond_4
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/TreeWalkerImpl;->getParentNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v2, v3

    goto :goto_1
.end method

.method public nextSibling()Lorg/w3c/dom/Node;
    .locals 4

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/dom/TreeWalkerImpl;->getNextSibling(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v1, v2

    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    :cond_1
    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method

.method public parentNode()Lorg/w3c/dom/Node;
    .locals 4

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/dom/TreeWalkerImpl;->getParentNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v1, v2

    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    :cond_1
    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method

.method public previousNode()Lorg/w3c/dom/Node;
    .locals 6

    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_0
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/TreeWalkerImpl;->getPreviousSibling(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v1, v4

    move-object v4, v1

    if-nez v4, :cond_2

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/TreeWalkerImpl;->getParentNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v1, v4

    move-object v4, v1

    if-eqz v4, :cond_1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lorg/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v0, v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0

    :cond_2
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/TreeWalkerImpl;->getLastChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v2, v4

    move-object v4, v2

    move-object v3, v4

    :goto_1
    move-object v4, v2

    if-nez v4, :cond_3

    move-object v4, v3

    move-object v2, v4

    move-object v4, v2

    if-eqz v4, :cond_4

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lorg/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v0, v4

    goto :goto_0

    :cond_3
    move-object v4, v2

    move-object v3, v4

    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/TreeWalkerImpl;->getLastChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v2, v4

    goto :goto_1

    :cond_4
    move-object v4, v1

    if-eqz v4, :cond_5

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lorg/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v0, v4

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method public previousSibling()Lorg/w3c/dom/Node;
    .locals 4

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/dom/TreeWalkerImpl;->getPreviousSibling(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v1, v2

    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    :cond_1
    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method

.method public setCurrentNode(Lorg/w3c/dom/Node;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-nez v3, :cond_0

    const-string/jumbo v3, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v4, "NOT_SUPPORTED_ERR"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    new-instance v3, Lorg/w3c/dom/DOMException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/16 v5, 0x9

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    return-void
.end method

.method public setWhatShow(I)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lorg/apache/xerces/dom/TreeWalkerImpl;->fWhatToShow:I

    return-void
.end method
