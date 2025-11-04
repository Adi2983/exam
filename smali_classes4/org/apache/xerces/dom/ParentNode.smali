.class public abstract Lorg/apache/xerces/dom/ParentNode;
.super Lorg/apache/xerces/dom/ChildNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/dom/ParentNode$UserDataRecord;
    }
.end annotation


# static fields
.field static final serialVersionUID:J = 0x2713d65863899c28L


# instance fields
.field protected transient fNodeListCache:Lorg/apache/xerces/dom/NodeListCache;

.field protected firstChild:Lorg/apache/xerces/dom/ChildNode;

.field protected ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lorg/apache/xerces/dom/ChildNode;-><init>()V

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/dom/ParentNode;->firstChild:Lorg/apache/xerces/dom/ChildNode;

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/dom/ParentNode;->fNodeListCache:Lorg/apache/xerces/dom/NodeListCache;

    return-void
.end method

.method protected constructor <init>(Lorg/apache/xerces/dom/CoreDocumentImpl;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lorg/apache/xerces/dom/ChildNode;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;)V

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/dom/ParentNode;->firstChild:Lorg/apache/xerces/dom/ChildNode;

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/dom/ParentNode;->fNodeListCache:Lorg/apache/xerces/dom/NodeListCache;

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/dom/ParentNode;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    return-void
.end method

.method static access$000(Lorg/apache/xerces/dom/ParentNode;)I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lorg/apache/xerces/dom/ParentNode;->nodeListGetLength()I

    move-result v1

    move v0, v1

    return v0
.end method

.method static access$100(Lorg/apache/xerces/dom/ParentNode;I)Lorg/w3c/dom/Node;
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lorg/apache/xerces/dom/ParentNode;->nodeListItem(I)Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method private nodeListGetLength()I
    .locals 6

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/ParentNode;->fNodeListCache:Lorg/apache/xerces/dom/NodeListCache;

    if-nez v3, :cond_3

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/ParentNode;->needsSyncChildren()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/ParentNode;->synchronizeChildren()V

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/ParentNode;->firstChild:Lorg/apache/xerces/dom/ChildNode;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    move v0, v3

    :goto_0
    return v0

    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/ParentNode;->firstChild:Lorg/apache/xerces/dom/ChildNode;

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/ParentNode;->lastChild()Lorg/apache/xerces/dom/ChildNode;

    move-result-object v4

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    :cond_2
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/ParentNode;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/CoreDocumentImpl;->getNodeListCache(Lorg/apache/xerces/dom/ParentNode;)Lorg/apache/xerces/dom/NodeListCache;

    move-result-object v4

    iput-object v4, v3, Lorg/apache/xerces/dom/ParentNode;->fNodeListCache:Lorg/apache/xerces/dom/NodeListCache;

    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/ParentNode;->fNodeListCache:Lorg/apache/xerces/dom/NodeListCache;

    iget v3, v3, Lorg/apache/xerces/dom/NodeListCache;->fLength:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/ParentNode;->fNodeListCache:Lorg/apache/xerces/dom/NodeListCache;

    iget v3, v3, Lorg/apache/xerces/dom/NodeListCache;->fChildIndex:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/ParentNode;->fNodeListCache:Lorg/apache/xerces/dom/NodeListCache;

    iget-object v3, v3, Lorg/apache/xerces/dom/NodeListCache;->fChild:Lorg/apache/xerces/dom/ChildNode;

    if-eqz v3, :cond_5

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/ParentNode;->fNodeListCache:Lorg/apache/xerces/dom/NodeListCache;

    iget v3, v3, Lorg/apache/xerces/dom/NodeListCache;->fChildIndex:I

    move v1, v3

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/ParentNode;->fNodeListCache:Lorg/apache/xerces/dom/NodeListCache;

    iget-object v3, v3, Lorg/apache/xerces/dom/NodeListCache;->fChild:Lorg/apache/xerces/dom/ChildNode;

    move-object v2, v3

    :goto_1
    move-object v3, v2

    if-nez v3, :cond_6

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/ParentNode;->fNodeListCache:Lorg/apache/xerces/dom/NodeListCache;

    move v4, v1

    iput v4, v3, Lorg/apache/xerces/dom/NodeListCache;->fLength:I

    :cond_4
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/ParentNode;->fNodeListCache:Lorg/apache/xerces/dom/NodeListCache;

    iget v3, v3, Lorg/apache/xerces/dom/NodeListCache;->fLength:I

    move v0, v3

    goto :goto_0

    :cond_5
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/ParentNode;->firstChild:Lorg/apache/xerces/dom/ChildNode;

    move-object v2, v3

    const/4 v3, 0x0

    move v1, v3

    goto :goto_1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    move-object v3, v2

    iget-object v3, v3, Lorg/apache/xerces/dom/ChildNode;->nextSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v2, v3

    goto :goto_1
.end method

.method private nodeListItem(I)Lorg/w3c/dom/Node;
    .locals 8

    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/ParentNode;->fNodeListCache:Lorg/apache/xerces/dom/NodeListCache;

    if-nez v5, :cond_3

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xerces/dom/ParentNode;->needsSyncChildren()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xerces/dom/ParentNode;->synchronizeChildren()V

    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/ParentNode;->firstChild:Lorg/apache/xerces/dom/ChildNode;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/dom/ParentNode;->lastChild()Lorg/apache/xerces/dom/ChildNode;

    move-result-object v6

    if-ne v5, v6, :cond_2

    move v5, v1

    if-nez v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/ParentNode;->firstChild:Lorg/apache/xerces/dom/ChildNode;

    :goto_0
    move-object v0, v5

    :goto_1
    return-object v0

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/ParentNode;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v7, v0

    invoke-virtual {v6, v7}, Lorg/apache/xerces/dom/CoreDocumentImpl;->getNodeListCache(Lorg/apache/xerces/dom/ParentNode;)Lorg/apache/xerces/dom/NodeListCache;

    move-result-object v6

    iput-object v6, v5, Lorg/apache/xerces/dom/ParentNode;->fNodeListCache:Lorg/apache/xerces/dom/NodeListCache;

    :cond_3
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/ParentNode;->fNodeListCache:Lorg/apache/xerces/dom/NodeListCache;

    iget v5, v5, Lorg/apache/xerces/dom/NodeListCache;->fChildIndex:I

    move v2, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/ParentNode;->fNodeListCache:Lorg/apache/xerces/dom/NodeListCache;

    iget-object v5, v5, Lorg/apache/xerces/dom/NodeListCache;->fChild:Lorg/apache/xerces/dom/ChildNode;

    move-object v3, v5

    const/4 v5, 0x1

    move v4, v5

    move v5, v2

    const/4 v6, -0x1

    if-eq v5, v6, :cond_9

    move-object v5, v3

    if-eqz v5, :cond_9

    const/4 v5, 0x0

    move v4, v5

    move v5, v2

    move v6, v1

    if-ge v5, v6, :cond_7

    :goto_2
    move v5, v2

    move v6, v1

    if-ge v5, v6, :cond_4

    move-object v5, v3

    if-nez v5, :cond_6

    :cond_4
    :goto_3
    move v5, v4

    if-nez v5, :cond_b

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/ParentNode;->firstChild:Lorg/apache/xerces/dom/ChildNode;

    if-eq v5, v6, :cond_5

    move-object v5, v3

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/dom/ParentNode;->lastChild()Lorg/apache/xerces/dom/ChildNode;

    move-result-object v6

    if-ne v5, v6, :cond_b

    :cond_5
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/ParentNode;->fNodeListCache:Lorg/apache/xerces/dom/NodeListCache;

    const/4 v6, -0x1

    iput v6, v5, Lorg/apache/xerces/dom/NodeListCache;->fChildIndex:I

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/ParentNode;->fNodeListCache:Lorg/apache/xerces/dom/NodeListCache;

    const/4 v6, 0x0

    iput-object v6, v5, Lorg/apache/xerces/dom/NodeListCache;->fChild:Lorg/apache/xerces/dom/ChildNode;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/ParentNode;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/ParentNode;->fNodeListCache:Lorg/apache/xerces/dom/NodeListCache;

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/CoreDocumentImpl;->freeNodeListCache(Lorg/apache/xerces/dom/NodeListCache;)V

    :goto_4
    move-object v5, v3

    move-object v0, v5

    goto :goto_1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    move-object v5, v3

    iget-object v5, v5, Lorg/apache/xerces/dom/ChildNode;->nextSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v3, v5

    goto :goto_2

    :cond_7
    move v5, v2

    move v6, v1

    if-le v5, v6, :cond_4

    :goto_5
    move v5, v2

    move v6, v1

    if-le v5, v6, :cond_4

    move-object v5, v3

    if-nez v5, :cond_8

    goto :goto_3

    :cond_8
    add-int/lit8 v2, v2, -0x1

    move-object v5, v3

    invoke-virtual {v5}, Lorg/apache/xerces/dom/ChildNode;->previousSibling()Lorg/apache/xerces/dom/ChildNode;

    move-result-object v5

    move-object v3, v5

    goto :goto_5

    :cond_9
    move v5, v1

    if-gez v5, :cond_a

    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_1

    :cond_a
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/ParentNode;->firstChild:Lorg/apache/xerces/dom/ChildNode;

    move-object v3, v5

    const/4 v5, 0x0

    move v2, v5

    :goto_6
    move v5, v2

    move v6, v1

    if-ge v5, v6, :cond_4

    move-object v5, v3

    if-eqz v5, :cond_4

    move-object v5, v3

    iget-object v5, v5, Lorg/apache/xerces/dom/ChildNode;->nextSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_b
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/ParentNode;->fNodeListCache:Lorg/apache/xerces/dom/NodeListCache;

    move v6, v2

    iput v6, v5, Lorg/apache/xerces/dom/NodeListCache;->fChildIndex:I

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/ParentNode;->fNodeListCache:Lorg/apache/xerces/dom/NodeListCache;

    move-object v6, v3

    iput-object v6, v5, Lorg/apache/xerces/dom/NodeListCache;->fChild:Lorg/apache/xerces/dom/ChildNode;

    goto :goto_4
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/xerces/dom/ParentNode;->needsSyncChildren(Z)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/ParentNode;->needsSyncChildren()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/ParentNode;->synchronizeChildren()V

    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method checkNormalizationAfterInsert(Lorg/apache/xerces/dom/ChildNode;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    invoke-virtual {v4}, Lorg/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    move-object v4, v1

    invoke-virtual {v4}, Lorg/apache/xerces/dom/ChildNode;->previousSibling()Lorg/apache/xerces/dom/ChildNode;

    move-result-object v4

    move-object v2, v4

    move-object v4, v1

    iget-object v4, v4, Lorg/apache/xerces/dom/ChildNode;->nextSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v3, v4

    move-object v4, v2

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-virtual {v4}, Lorg/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    :cond_0
    move-object v4, v3

    if-eqz v4, :cond_2

    move-object v4, v3

    invoke-virtual {v4}, Lorg/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    :cond_1
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/ParentNode;->isNormalized(Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    move-object v4, v1

    invoke-virtual {v4}, Lorg/apache/xerces/dom/ChildNode;->isNormalized()Z

    move-result v4

    if-nez v4, :cond_2

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/ParentNode;->isNormalized(Z)V

    goto :goto_0
.end method

.method checkNormalizationAfterRemove(Lorg/apache/xerces/dom/ChildNode;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Lorg/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    move-object v3, v1

    iget-object v3, v3, Lorg/apache/xerces/dom/ChildNode;->nextSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v2, v3

    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-virtual {v3}, Lorg/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/ParentNode;->isNormalized(Z)V

    :cond_0
    return-void
.end method

.method public cloneNode(Z)Lorg/w3c/dom/Node;
    .locals 7

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/ParentNode;->needsSyncChildren()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/ParentNode;->synchronizeChildren()V

    :cond_0
    move-object v4, v0

    move v5, v1

    invoke-super {v4, v5}, Lorg/apache/xerces/dom/ChildNode;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/dom/ParentNode;

    move-object v2, v4

    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/ParentNode;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    iput-object v5, v4, Lorg/apache/xerces/dom/ParentNode;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v4, v2

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/apache/xerces/dom/ParentNode;->firstChild:Lorg/apache/xerces/dom/ChildNode;

    move-object v4, v2

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/apache/xerces/dom/ParentNode;->fNodeListCache:Lorg/apache/xerces/dom/NodeListCache;

    move v4, v1

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/ParentNode;->firstChild:Lorg/apache/xerces/dom/ChildNode;

    move-object v3, v4

    :goto_0
    move-object v4, v3

    if-nez v4, :cond_2

    :cond_1
    move-object v4, v2

    move-object v0, v4

    return-object v0

    :cond_2
    move-object v4, v2

    move-object v5, v3

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/ChildNode;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/ParentNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v4, v3

    iget-object v4, v4, Lorg/apache/xerces/dom/ChildNode;->nextSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v3, v4

    goto :goto_0
.end method

.method public getChildNodes()Lorg/w3c/dom/NodeList;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/ParentNode;->needsSyncChildren()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/ParentNode;->synchronizeChildren()V

    :cond_0
    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method protected final getChildNodesUnoptimized()Lorg/w3c/dom/NodeList;
    .locals 5

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/ParentNode;->needsSyncChildren()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/ParentNode;->synchronizeChildren()V

    :cond_0
    new-instance v1, Lorg/apache/xerces/dom/ParentNode$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lorg/apache/xerces/dom/ParentNode$1;-><init>(Lorg/apache/xerces/dom/ParentNode;)V

    move-object v0, v1

    return-object v0
.end method

.method public getFirstChild()Lorg/w3c/dom/Node;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/ParentNode;->needsSyncChildren()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/ParentNode;->synchronizeChildren()V

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/ParentNode;->firstChild:Lorg/apache/xerces/dom/ChildNode;

    move-object v0, v1

    return-object v0
.end method

.method public getLastChild()Lorg/w3c/dom/Node;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/ParentNode;->needsSyncChildren()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/ParentNode;->synchronizeChildren()V

    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/ParentNode;->lastChild()Lorg/apache/xerces/dom/ChildNode;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getLength()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lorg/apache/xerces/dom/ParentNode;->nodeListGetLength()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getOwnerDocument()Lorg/w3c/dom/Document;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/ParentNode;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v0, v1

    return-object v0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/ParentNode;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v1, v4

    move-object v4, v1

    if-eqz v4, :cond_2

    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v2, v4

    move-object v4, v2

    if-nez v4, :cond_1

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/ParentNode;->hasTextContent(Lorg/w3c/dom/Node;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v1

    check-cast v4, Lorg/apache/xerces/dom/NodeImpl;

    invoke-virtual {v4}, Lorg/apache/xerces/dom/NodeImpl;->getTextContent()Ljava/lang/String;

    move-result-object v4

    :goto_0
    move-object v0, v4

    :goto_1
    return-object v0

    :cond_0
    const-string/jumbo v4, ""

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move-object v3, v4

    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/ParentNode;->getTextContent(Ljava/lang/StringBuffer;)V

    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_1

    :cond_2
    const-string/jumbo v4, ""

    move-object v0, v4

    goto :goto_1
.end method

.method getTextContent(Ljava/lang/StringBuffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/ParentNode;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v2, v3

    :goto_0
    move-object v3, v2

    if-nez v3, :cond_0

    return-void

    :cond_0
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/ParentNode;->hasTextContent(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lorg/apache/xerces/dom/NodeImpl;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/NodeImpl;->getTextContent(Ljava/lang/StringBuffer;)V

    :cond_1
    move-object v3, v2

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v2, v3

    goto :goto_0
.end method

.method public hasChildNodes()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/ParentNode;->needsSyncChildren()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/ParentNode;->synchronizeChildren()V

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/ParentNode;->firstChild:Lorg/apache/xerces/dom/ChildNode;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method final hasTextContent(Lorg/w3c/dom/Node;)Z
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    move-object v2, v1

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_1

    move-object v2, v1

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    move-object v2, v1

    check-cast v2, Lorg/apache/xerces/dom/TextImpl;

    invoke-virtual {v2}, Lorg/apache/xerces/dom/TextImpl;->isIgnorableWhitespace()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
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

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lorg/apache/xerces/dom/ParentNode;->internalInsertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method internalInsertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/ParentNode;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v9, v9, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    move v4, v9

    move-object v9, v1

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    const/16 v10, 0xb

    if-ne v9, v10, :cond_4

    move v9, v4

    if-eqz v9, :cond_0

    move-object v9, v1

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v5, v9

    :goto_0
    move-object v9, v5

    if-nez v9, :cond_1

    :cond_0
    :goto_1
    move-object v9, v1

    invoke-interface {v9}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v9

    if-nez v9, :cond_3

    move-object v9, v1

    move-object v0, v9

    :goto_2
    return-object v0

    :cond_1
    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/ParentNode;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v10, v0

    move-object v11, v5

    invoke-virtual {v9, v10, v11}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isKidOK(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v9

    if-nez v9, :cond_2

    new-instance v9, Lorg/w3c/dom/DOMException;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x3

    const-string/jumbo v12, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v13, "HIERARCHY_REQUEST_ERR"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v9

    :cond_2
    move-object v9, v5

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v5, v9

    goto :goto_0

    :cond_3
    move-object v9, v0

    move-object v10, v1

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v10

    move-object v11, v2

    invoke-virtual {v9, v10, v11}, Lorg/apache/xerces/dom/ParentNode;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v9

    goto :goto_1

    :cond_4
    move-object v9, v1

    move-object v10, v2

    if-ne v9, v10, :cond_5

    move-object v9, v2

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v2, v9

    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/ParentNode;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    invoke-virtual {v9, v10, v11}, Lorg/apache/xerces/dom/ParentNode;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v9, v1

    move-object v0, v9

    goto :goto_2

    :cond_5
    move-object v9, v0

    invoke-virtual {v9}, Lorg/apache/xerces/dom/ParentNode;->needsSyncChildren()Z

    move-result v9

    if-eqz v9, :cond_6

    move-object v9, v0

    invoke-virtual {v9}, Lorg/apache/xerces/dom/ParentNode;->synchronizeChildren()V

    :cond_6
    move v9, v4

    if-eqz v9, :cond_e

    move-object v9, v0

    invoke-virtual {v9}, Lorg/apache/xerces/dom/ParentNode;->isReadOnly()Z

    move-result v9

    if-eqz v9, :cond_7

    new-instance v9, Lorg/w3c/dom/DOMException;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x7

    const-string/jumbo v12, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v13, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v9

    :cond_7
    move-object v9, v1

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/dom/ParentNode;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    if-eq v9, v10, :cond_8

    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/dom/ParentNode;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    if-eq v9, v10, :cond_8

    new-instance v9, Lorg/w3c/dom/DOMException;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x4

    const-string/jumbo v12, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v13, "WRONG_DOCUMENT_ERR"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v9

    :cond_8
    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/ParentNode;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v10, v0

    move-object v11, v1

    invoke-virtual {v9, v10, v11}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isKidOK(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v9

    if-nez v9, :cond_9

    new-instance v9, Lorg/w3c/dom/DOMException;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x3

    const-string/jumbo v12, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v13, "HIERARCHY_REQUEST_ERR"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v9

    :cond_9
    move-object v9, v2

    if-eqz v9, :cond_a

    move-object v9, v2

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v10, v0

    if-eq v9, v10, :cond_a

    new-instance v9, Lorg/w3c/dom/DOMException;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/16 v11, 0x8

    const-string/jumbo v12, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v13, "NOT_FOUND_ERR"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v9

    :cond_a
    const/4 v9, 0x1

    move v5, v9

    move-object v9, v0

    move-object v6, v9

    :goto_3
    move v9, v5

    if-eqz v9, :cond_b

    move-object v9, v6

    if-nez v9, :cond_c

    :cond_b
    move v9, v5

    if-nez v9, :cond_e

    new-instance v9, Lorg/w3c/dom/DOMException;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    const/4 v11, 0x3

    const-string/jumbo v12, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v13, "HIERARCHY_REQUEST_ERR"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v9

    :cond_c
    move-object v9, v1

    move-object v10, v6

    if-eq v9, v10, :cond_d

    const/4 v9, 0x1

    :goto_4
    move v5, v9

    move-object v9, v6

    invoke-virtual {v9}, Lorg/apache/xerces/dom/NodeImpl;->parentNode()Lorg/apache/xerces/dom/NodeImpl;

    move-result-object v9

    move-object v6, v9

    goto :goto_3

    :cond_d
    const/4 v9, 0x0

    goto :goto_4

    :cond_e
    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/ParentNode;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v10, v0

    move v11, v3

    invoke-virtual {v9, v10, v11}, Lorg/apache/xerces/dom/CoreDocumentImpl;->insertingNode(Lorg/apache/xerces/dom/NodeImpl;Z)V

    move-object v9, v1

    check-cast v9, Lorg/apache/xerces/dom/ChildNode;

    move-object v5, v9

    move-object v9, v5

    invoke-virtual {v9}, Lorg/apache/xerces/dom/ChildNode;->parentNode()Lorg/apache/xerces/dom/NodeImpl;

    move-result-object v9

    move-object v6, v9

    move-object v9, v6

    if-eqz v9, :cond_f

    move-object v9, v6

    move-object v10, v5

    invoke-interface {v9, v10}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v9

    :cond_f
    move-object v9, v2

    check-cast v9, Lorg/apache/xerces/dom/ChildNode;

    move-object v7, v9

    move-object v9, v5

    move-object v10, v0

    iput-object v10, v9, Lorg/apache/xerces/dom/ChildNode;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    move-object v9, v5

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/ChildNode;->isOwned(Z)V

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/ParentNode;->firstChild:Lorg/apache/xerces/dom/ChildNode;

    if-nez v9, :cond_12

    move-object v9, v0

    move-object v10, v5

    iput-object v10, v9, Lorg/apache/xerces/dom/ParentNode;->firstChild:Lorg/apache/xerces/dom/ChildNode;

    move-object v9, v5

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    move-object v9, v5

    move-object v10, v5

    iput-object v10, v9, Lorg/apache/xerces/dom/ChildNode;->previousSibling:Lorg/apache/xerces/dom/ChildNode;

    :goto_5
    move-object v9, v0

    invoke-virtual {v9}, Lorg/apache/xerces/dom/ParentNode;->changed()V

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/ParentNode;->fNodeListCache:Lorg/apache/xerces/dom/NodeListCache;

    if-eqz v9, :cond_11

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/ParentNode;->fNodeListCache:Lorg/apache/xerces/dom/NodeListCache;

    iget v9, v9, Lorg/apache/xerces/dom/NodeListCache;->fLength:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_10

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/ParentNode;->fNodeListCache:Lorg/apache/xerces/dom/NodeListCache;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    iget v10, v10, Lorg/apache/xerces/dom/NodeListCache;->fLength:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lorg/apache/xerces/dom/NodeListCache;->fLength:I

    :cond_10
    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/ParentNode;->fNodeListCache:Lorg/apache/xerces/dom/NodeListCache;

    iget v9, v9, Lorg/apache/xerces/dom/NodeListCache;->fChildIndex:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_11

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/ParentNode;->fNodeListCache:Lorg/apache/xerces/dom/NodeListCache;

    iget-object v9, v9, Lorg/apache/xerces/dom/NodeListCache;->fChild:Lorg/apache/xerces/dom/ChildNode;

    move-object v10, v7

    if-ne v9, v10, :cond_15

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/ParentNode;->fNodeListCache:Lorg/apache/xerces/dom/NodeListCache;

    move-object v10, v5

    iput-object v10, v9, Lorg/apache/xerces/dom/NodeListCache;->fChild:Lorg/apache/xerces/dom/ChildNode;

    :cond_11
    :goto_6
    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/ParentNode;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v10, v0

    move-object v11, v5

    move v12, v3

    invoke-virtual {v9, v10, v11, v12}, Lorg/apache/xerces/dom/CoreDocumentImpl;->insertedNode(Lorg/apache/xerces/dom/NodeImpl;Lorg/apache/xerces/dom/NodeImpl;Z)V

    move-object v9, v0

    move-object v10, v5

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/ParentNode;->checkNormalizationAfterInsert(Lorg/apache/xerces/dom/ChildNode;)V

    move-object v9, v1

    move-object v0, v9

    goto/16 :goto_2

    :cond_12
    move-object v9, v7

    if-nez v9, :cond_13

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/ParentNode;->firstChild:Lorg/apache/xerces/dom/ChildNode;

    iget-object v9, v9, Lorg/apache/xerces/dom/ChildNode;->previousSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v8, v9

    move-object v9, v8

    move-object v10, v5

    iput-object v10, v9, Lorg/apache/xerces/dom/ChildNode;->nextSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v9, v5

    move-object v10, v8

    iput-object v10, v9, Lorg/apache/xerces/dom/ChildNode;->previousSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/ParentNode;->firstChild:Lorg/apache/xerces/dom/ChildNode;

    move-object v10, v5

    iput-object v10, v9, Lorg/apache/xerces/dom/ChildNode;->previousSibling:Lorg/apache/xerces/dom/ChildNode;

    goto :goto_5

    :cond_13
    move-object v9, v2

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/dom/ParentNode;->firstChild:Lorg/apache/xerces/dom/ChildNode;

    if-ne v9, v10, :cond_14

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/ParentNode;->firstChild:Lorg/apache/xerces/dom/ChildNode;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    move-object v9, v5

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/dom/ParentNode;->firstChild:Lorg/apache/xerces/dom/ChildNode;

    iput-object v10, v9, Lorg/apache/xerces/dom/ChildNode;->nextSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v9, v5

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/dom/ParentNode;->firstChild:Lorg/apache/xerces/dom/ChildNode;

    iget-object v10, v10, Lorg/apache/xerces/dom/ChildNode;->previousSibling:Lorg/apache/xerces/dom/ChildNode;

    iput-object v10, v9, Lorg/apache/xerces/dom/ChildNode;->previousSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/ParentNode;->firstChild:Lorg/apache/xerces/dom/ChildNode;

    move-object v10, v5

    iput-object v10, v9, Lorg/apache/xerces/dom/ChildNode;->previousSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v9, v0

    move-object v10, v5

    iput-object v10, v9, Lorg/apache/xerces/dom/ParentNode;->firstChild:Lorg/apache/xerces/dom/ChildNode;

    move-object v9, v5

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    goto/16 :goto_5

    :cond_14
    move-object v9, v7

    iget-object v9, v9, Lorg/apache/xerces/dom/ChildNode;->previousSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v8, v9

    move-object v9, v5

    move-object v10, v7

    iput-object v10, v9, Lorg/apache/xerces/dom/ChildNode;->nextSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v9, v8

    move-object v10, v5

    iput-object v10, v9, Lorg/apache/xerces/dom/ChildNode;->nextSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v9, v7

    move-object v10, v5

    iput-object v10, v9, Lorg/apache/xerces/dom/ChildNode;->previousSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v9, v5

    move-object v10, v8

    iput-object v10, v9, Lorg/apache/xerces/dom/ChildNode;->previousSibling:Lorg/apache/xerces/dom/ChildNode;

    goto/16 :goto_5

    :cond_15
    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/ParentNode;->fNodeListCache:Lorg/apache/xerces/dom/NodeListCache;

    const/4 v10, -0x1

    iput v10, v9, Lorg/apache/xerces/dom/NodeListCache;->fChildIndex:I

    goto :goto_6
.end method

.method internalRemoveChild(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/dom/ParentNode;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v8

    move-object v3, v8

    move-object v8, v3

    iget-boolean v8, v8, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v8, :cond_1

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/dom/ParentNode;->isReadOnly()Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v8, Lorg/w3c/dom/DOMException;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const/4 v10, 0x7

    const-string/jumbo v11, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v12, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v8

    :cond_0
    move-object v8, v1

    if-eqz v8, :cond_1

    move-object v8, v1

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v8

    move-object v9, v0

    if-eq v8, v9, :cond_1

    new-instance v8, Lorg/w3c/dom/DOMException;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const/16 v10, 0x8

    const-string/jumbo v11, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v12, "NOT_FOUND_ERR"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v8

    :cond_1
    move-object v8, v1

    check-cast v8, Lorg/apache/xerces/dom/ChildNode;

    move-object v4, v8

    move-object v8, v3

    move-object v9, v0

    move-object v10, v4

    move v11, v2

    invoke-virtual {v8, v9, v10, v11}, Lorg/apache/xerces/dom/CoreDocumentImpl;->removingNode(Lorg/apache/xerces/dom/NodeImpl;Lorg/apache/xerces/dom/NodeImpl;Z)V

    move-object v8, v4

    invoke-virtual {v8}, Lorg/apache/xerces/dom/ChildNode;->previousSibling()Lorg/apache/xerces/dom/ChildNode;

    move-result-object v8

    move-object v5, v8

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/ParentNode;->fNodeListCache:Lorg/apache/xerces/dom/NodeListCache;

    if-eqz v8, :cond_3

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/ParentNode;->fNodeListCache:Lorg/apache/xerces/dom/NodeListCache;

    iget v8, v8, Lorg/apache/xerces/dom/NodeListCache;->fLength:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_2

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/ParentNode;->fNodeListCache:Lorg/apache/xerces/dom/NodeListCache;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    iget v9, v9, Lorg/apache/xerces/dom/NodeListCache;->fLength:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    iput v9, v8, Lorg/apache/xerces/dom/NodeListCache;->fLength:I

    :cond_2
    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/ParentNode;->fNodeListCache:Lorg/apache/xerces/dom/NodeListCache;

    iget v8, v8, Lorg/apache/xerces/dom/NodeListCache;->fChildIndex:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/ParentNode;->fNodeListCache:Lorg/apache/xerces/dom/NodeListCache;

    iget-object v8, v8, Lorg/apache/xerces/dom/NodeListCache;->fChild:Lorg/apache/xerces/dom/ChildNode;

    move-object v9, v4

    if-ne v8, v9, :cond_5

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/ParentNode;->fNodeListCache:Lorg/apache/xerces/dom/NodeListCache;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    iget v9, v9, Lorg/apache/xerces/dom/NodeListCache;->fChildIndex:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    iput v9, v8, Lorg/apache/xerces/dom/NodeListCache;->fChildIndex:I

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/ParentNode;->fNodeListCache:Lorg/apache/xerces/dom/NodeListCache;

    move-object v9, v5

    iput-object v9, v8, Lorg/apache/xerces/dom/NodeListCache;->fChild:Lorg/apache/xerces/dom/ChildNode;

    :cond_3
    :goto_0
    move-object v8, v4

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/ParentNode;->firstChild:Lorg/apache/xerces/dom/ChildNode;

    if-ne v8, v9, :cond_6

    move-object v8, v4

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    move-object v8, v0

    move-object v9, v4

    iget-object v9, v9, Lorg/apache/xerces/dom/ChildNode;->nextSibling:Lorg/apache/xerces/dom/ChildNode;

    iput-object v9, v8, Lorg/apache/xerces/dom/ParentNode;->firstChild:Lorg/apache/xerces/dom/ChildNode;

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/ParentNode;->firstChild:Lorg/apache/xerces/dom/ChildNode;

    if-eqz v8, :cond_4

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/ParentNode;->firstChild:Lorg/apache/xerces/dom/ChildNode;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lorg/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/ParentNode;->firstChild:Lorg/apache/xerces/dom/ChildNode;

    move-object v9, v4

    iget-object v9, v9, Lorg/apache/xerces/dom/ChildNode;->previousSibling:Lorg/apache/xerces/dom/ChildNode;

    iput-object v9, v8, Lorg/apache/xerces/dom/ChildNode;->previousSibling:Lorg/apache/xerces/dom/ChildNode;

    :cond_4
    :goto_1
    move-object v8, v4

    move-object v9, v3

    iput-object v9, v8, Lorg/apache/xerces/dom/ChildNode;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    move-object v8, v4

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/apache/xerces/dom/ChildNode;->isOwned(Z)V

    move-object v8, v4

    const/4 v9, 0x0

    iput-object v9, v8, Lorg/apache/xerces/dom/ChildNode;->nextSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v8, v4

    const/4 v9, 0x0

    iput-object v9, v8, Lorg/apache/xerces/dom/ChildNode;->previousSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/dom/ParentNode;->changed()V

    move-object v8, v3

    move-object v9, v0

    move v10, v2

    invoke-virtual {v8, v9, v10}, Lorg/apache/xerces/dom/CoreDocumentImpl;->removedNode(Lorg/apache/xerces/dom/NodeImpl;Z)V

    move-object v8, v0

    move-object v9, v5

    invoke-virtual {v8, v9}, Lorg/apache/xerces/dom/ParentNode;->checkNormalizationAfterRemove(Lorg/apache/xerces/dom/ChildNode;)V

    move-object v8, v4

    move-object v0, v8

    return-object v0

    :cond_5
    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/ParentNode;->fNodeListCache:Lorg/apache/xerces/dom/NodeListCache;

    const/4 v9, -0x1

    iput v9, v8, Lorg/apache/xerces/dom/NodeListCache;->fChildIndex:I

    goto :goto_0

    :cond_6
    move-object v8, v4

    iget-object v8, v8, Lorg/apache/xerces/dom/ChildNode;->previousSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v6, v8

    move-object v8, v4

    iget-object v8, v8, Lorg/apache/xerces/dom/ChildNode;->nextSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v7, v8

    move-object v8, v6

    move-object v9, v7

    iput-object v9, v8, Lorg/apache/xerces/dom/ChildNode;->nextSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v8, v7

    if-nez v8, :cond_7

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/ParentNode;->firstChild:Lorg/apache/xerces/dom/ChildNode;

    move-object v9, v6

    iput-object v9, v8, Lorg/apache/xerces/dom/ChildNode;->previousSibling:Lorg/apache/xerces/dom/ChildNode;

    goto :goto_1

    :cond_7
    move-object v8, v7

    move-object v9, v6

    iput-object v9, v8, Lorg/apache/xerces/dom/ChildNode;->previousSibling:Lorg/apache/xerces/dom/ChildNode;

    goto :goto_1
.end method

.method public isEqualNode(Lorg/w3c/dom/Node;)Z
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Lorg/apache/xerces/dom/ChildNode;->isEqualNode(Lorg/w3c/dom/Node;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/ParentNode;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v2, v4

    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v3, v4

    :goto_1
    move-object v4, v2

    if-eqz v4, :cond_1

    move-object v4, v3

    if-nez v4, :cond_2

    :cond_1
    move-object v4, v2

    move-object v5, v3

    if-eq v4, v5, :cond_4

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    :cond_2
    move-object v4, v2

    move-object v5, v3

    invoke-interface {v4, v5}, Lorg/w3c/dom/Node;->isEqualNode(Lorg/w3c/dom/Node;)Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    :cond_3
    move-object v4, v2

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v2, v4

    move-object v4, v3

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v3, v4

    goto :goto_1

    :cond_4
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lorg/apache/xerces/dom/ParentNode;->nodeListItem(I)Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method final lastChild()Lorg/apache/xerces/dom/ChildNode;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/ParentNode;->firstChild:Lorg/apache/xerces/dom/ChildNode;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/ParentNode;->firstChild:Lorg/apache/xerces/dom/ChildNode;

    iget-object v1, v1, Lorg/apache/xerces/dom/ChildNode;->previousSibling:Lorg/apache/xerces/dom/ChildNode;

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method final lastChild(Lorg/apache/xerces/dom/ChildNode;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/ParentNode;->firstChild:Lorg/apache/xerces/dom/ChildNode;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/ParentNode;->firstChild:Lorg/apache/xerces/dom/ChildNode;

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/dom/ChildNode;->previousSibling:Lorg/apache/xerces/dom/ChildNode;

    :cond_0
    return-void
.end method

.method public normalize()V
    .locals 4

    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/ParentNode;->isNormalized()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/ParentNode;->needsSyncChildren()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/ParentNode;->synchronizeChildren()V

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/ParentNode;->firstChild:Lorg/apache/xerces/dom/ChildNode;

    move-object v1, v2

    :goto_1
    move-object v2, v1

    if-nez v2, :cond_2

    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/dom/ParentNode;->isNormalized(Z)V

    goto :goto_0

    :cond_2
    move-object v2, v1

    invoke-virtual {v2}, Lorg/apache/xerces/dom/ChildNode;->normalize()V

    move-object v2, v1

    iget-object v2, v2, Lorg/apache/xerces/dom/ChildNode;->nextSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v1, v2

    goto :goto_1
.end method

.method ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/ParentNode;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v0, v1

    return-object v0
.end method

.method public removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
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

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/dom/ParentNode;->internalRemoveChild(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
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

    iget-object v3, v3, Lorg/apache/xerces/dom/ParentNode;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/CoreDocumentImpl;->replacingNode(Lorg/apache/xerces/dom/NodeImpl;)V

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lorg/apache/xerces/dom/ParentNode;->internalInsertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v3, v1

    move-object v4, v2

    if-eq v3, v4, :cond_0

    move-object v3, v0

    move-object v4, v2

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/dom/ParentNode;->internalRemoveChild(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v3

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/ParentNode;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/CoreDocumentImpl;->replacedNode(Lorg/apache/xerces/dom/NodeImpl;)V

    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method protected setOwnerDocument(Lorg/apache/xerces/dom/CoreDocumentImpl;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/ParentNode;->needsSyncChildren()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/ParentNode;->synchronizeChildren()V

    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lorg/apache/xerces/dom/ChildNode;->setOwnerDocument(Lorg/apache/xerces/dom/CoreDocumentImpl;)V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/apache/xerces/dom/ParentNode;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/ParentNode;->firstChild:Lorg/apache/xerces/dom/ChildNode;

    move-object v2, v3

    :goto_0
    move-object v3, v2

    if-nez v3, :cond_1

    return-void

    :cond_1
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/ChildNode;->setOwnerDocument(Lorg/apache/xerces/dom/CoreDocumentImpl;)V

    move-object v3, v2

    iget-object v3, v3, Lorg/apache/xerces/dom/ChildNode;->nextSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v2, v3

    goto :goto_0
.end method

.method public setReadOnly(ZZ)V
    .locals 7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    move v5, v1

    move v6, v2

    invoke-super {v4, v5, v6}, Lorg/apache/xerces/dom/ChildNode;->setReadOnly(ZZ)V

    move v4, v2

    if-eqz v4, :cond_1

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/ParentNode;->needsSyncChildren()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/ParentNode;->synchronizeChildren()V

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/ParentNode;->firstChild:Lorg/apache/xerces/dom/ChildNode;

    move-object v3, v4

    :goto_0
    move-object v4, v3

    if-nez v4, :cond_2

    :cond_1
    return-void

    :cond_2
    move-object v4, v3

    invoke-virtual {v4}, Lorg/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_3

    move-object v4, v3

    move v5, v1

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/dom/ChildNode;->setReadOnly(ZZ)V

    :cond_3
    move-object v4, v3

    iget-object v4, v4, Lorg/apache/xerces/dom/ChildNode;->nextSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v3, v4

    goto :goto_0
.end method

.method public setTextContent(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    :goto_0
    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/ParentNode;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v2, v4

    if-nez v3, :cond_1

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/ParentNode;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/CoreDocumentImpl;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/ParentNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    :cond_0
    return-void

    :cond_1
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/ParentNode;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    goto :goto_0
.end method

.method protected synchronizeChildren()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/xerces/dom/ParentNode;->needsSyncChildren(Z)V

    return-void
.end method
