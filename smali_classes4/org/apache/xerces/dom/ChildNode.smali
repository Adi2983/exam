.class public abstract Lorg/apache/xerces/dom/ChildNode;
.super Lorg/apache/xerces/dom/NodeImpl;


# static fields
.field static final serialVersionUID:J = -0x54d3ce1bf89da1b2L


# instance fields
.field protected nextSibling:Lorg/apache/xerces/dom/ChildNode;

.field protected previousSibling:Lorg/apache/xerces/dom/ChildNode;


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lorg/apache/xerces/dom/NodeImpl;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/xerces/dom/CoreDocumentImpl;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lorg/apache/xerces/dom/NodeImpl;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;)V

    return-void
.end method


# virtual methods
.method public cloneNode(Z)Lorg/w3c/dom/Node;
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Lorg/apache/xerces/dom/NodeImpl;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/dom/ChildNode;

    move-object v2, v3

    move-object v3, v2

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/dom/ChildNode;->previousSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v3, v2

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/dom/ChildNode;->nextSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/ChildNode;->nextSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v0, v1

    return-object v0
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/ChildNode;->isOwned()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/ChildNode;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPreviousSibling()Lorg/w3c/dom/Node;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/ChildNode;->isFirstChild()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/ChildNode;->previousSibling:Lorg/apache/xerces/dom/ChildNode;

    goto :goto_0
.end method

.method final parentNode()Lorg/apache/xerces/dom/NodeImpl;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/ChildNode;->isOwned()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/ChildNode;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method final previousSibling()Lorg/apache/xerces/dom/ChildNode;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/ChildNode;->isFirstChild()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/ChildNode;->previousSibling:Lorg/apache/xerces/dom/ChildNode;

    goto :goto_0
.end method
