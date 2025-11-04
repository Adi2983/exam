.class public Lorg/apache/xerces/dom/AttrImpl;
.super Lorg/apache/xerces/dom/NodeImpl;

# interfaces
.implements Lorg/w3c/dom/Attr;
.implements Lorg/w3c/dom/TypeInfo;


# static fields
.field static final DTD_URI:Ljava/lang/String; = "http://www.w3.org/TR/REC-xml"

.field static final serialVersionUID:J = 0x64ff9c955f6bcfc6L


# instance fields
.field protected name:Ljava/lang/String;

.field transient type:Ljava/lang/Object;

.field protected value:Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lorg/apache/xerces/dom/NodeImpl;-><init>()V

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lorg/apache/xerces/dom/NodeImpl;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;)V

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lorg/apache/xerces/dom/AttrImpl;->name:Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/AttrImpl;->isSpecified(Z)V

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/AttrImpl;->hasStringValue(Z)V

    return-void
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

    invoke-virtual {v2, v3}, Lorg/apache/xerces/dom/AttrImpl;->needsSyncChildren(Z)V

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

    invoke-virtual {v2}, Lorg/apache/xerces/dom/AttrImpl;->needsSyncChildren()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/AttrImpl;->synchronizeChildren()V

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

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/AttrImpl;->isNormalized(Z)V

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

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/AttrImpl;->isNormalized(Z)V

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

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/AttrImpl;->isNormalized(Z)V

    :cond_0
    return-void
.end method

.method public cloneNode(Z)Lorg/w3c/dom/Node;
    .locals 7

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/AttrImpl;->needsSyncChildren()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/AttrImpl;->synchronizeChildren()V

    :cond_0
    move-object v4, v0

    move v5, v1

    invoke-super {v4, v5}, Lorg/apache/xerces/dom/NodeImpl;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/dom/AttrImpl;

    move-object v2, v4

    move-object v4, v2

    invoke-virtual {v4}, Lorg/apache/xerces/dom/AttrImpl;->hasStringValue()Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v2

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v4, Lorg/w3c/dom/Node;

    move-object v3, v4

    :goto_0
    move-object v4, v3

    if-nez v4, :cond_2

    :cond_1
    move-object v4, v2

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/AttrImpl;->isSpecified(Z)V

    move-object v4, v2

    move-object v0, v4

    return-object v0

    :cond_2
    move-object v4, v2

    move-object v5, v3

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Lorg/w3c/dom/Node;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/AttrImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v4, v3

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v3, v4

    goto :goto_0
.end method

.method public getChildNodes()Lorg/w3c/dom/NodeList;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/AttrImpl;->needsSyncChildren()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/AttrImpl;->synchronizeChildren()V

    :cond_0
    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public getElement()Lorg/w3c/dom/Element;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/AttrImpl;->isOwned()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/AttrImpl;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    :goto_0
    check-cast v1, Lorg/w3c/dom/Element;

    move-object v0, v1

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFirstChild()Lorg/w3c/dom/Node;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/AttrImpl;->needsSyncChildren()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/AttrImpl;->synchronizeChildren()V

    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/AttrImpl;->makeChildNode()V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v1, Lorg/w3c/dom/Node;

    move-object v0, v1

    return-object v0
.end method

.method public getLastChild()Lorg/w3c/dom/Node;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/AttrImpl;->needsSyncChildren()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/AttrImpl;->synchronizeChildren()V

    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/AttrImpl;->lastChild()Lorg/apache/xerces/dom/ChildNode;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getLength()I
    .locals 4

    move-object v0, p0

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/AttrImpl;->hasStringValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v3, Lorg/apache/xerces/dom/ChildNode;

    move-object v1, v3

    const/4 v3, 0x0

    move v2, v3

    :goto_1
    move-object v3, v1

    if-nez v3, :cond_1

    move v3, v2

    move v0, v3

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move-object v3, v1

    iget-object v3, v3, Lorg/apache/xerces/dom/ChildNode;->nextSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v1, v3

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/AttrImpl;->needsSyncData()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/AttrImpl;->synchronizeData()V

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/AttrImpl;->name:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/AttrImpl;->needsSyncData()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/AttrImpl;->synchronizeData()V

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/AttrImpl;->name:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getNodeType()S
    .locals 2

    move-object v0, p0

    const/4 v1, 0x2

    move v0, v1

    return v0
.end method

.method public getNodeValue()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/AttrImpl;->getValue()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getOwnerElement()Lorg/w3c/dom/Element;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/AttrImpl;->isOwned()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/AttrImpl;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    :goto_0
    check-cast v1, Lorg/w3c/dom/Element;

    move-object v0, v1

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSchemaTypeInfo()Lorg/w3c/dom/TypeInfo;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public getSpecified()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/AttrImpl;->needsSyncData()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/AttrImpl;->synchronizeData()V

    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/AttrImpl;->isSpecified()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/AttrImpl;->type:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getTypeNamespace()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/AttrImpl;->type:Ljava/lang/Object;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "http://www.w3.org/TR/REC-xml"

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 9

    move-object v0, p0

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xerces/dom/AttrImpl;->needsSyncData()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xerces/dom/AttrImpl;->synchronizeData()V

    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xerces/dom/AttrImpl;->needsSyncChildren()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xerces/dom/AttrImpl;->synchronizeChildren()V

    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    if-nez v5, :cond_2

    const-string/jumbo v5, ""

    move-object v0, v5

    :goto_0
    return-object v0

    :cond_2
    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xerces/dom/AttrImpl;->hasStringValue()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    move-object v0, v5

    goto :goto_0

    :cond_3
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v5, Lorg/apache/xerces/dom/ChildNode;

    move-object v1, v5

    const/4 v5, 0x0

    move-object v2, v5

    move-object v5, v1

    invoke-virtual {v5}, Lorg/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_5

    move-object v5, v1

    check-cast v5, Lorg/apache/xerces/dom/EntityReferenceImpl;

    invoke-virtual {v5}, Lorg/apache/xerces/dom/EntityReferenceImpl;->getEntityRefValue()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    :goto_1
    move-object v5, v1

    iget-object v5, v5, Lorg/apache/xerces/dom/ChildNode;->nextSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v3, v5

    move-object v5, v3

    if-eqz v5, :cond_4

    move-object v5, v2

    if-nez v5, :cond_7

    :cond_4
    move-object v5, v2

    if-nez v5, :cond_6

    const-string/jumbo v5, ""

    :goto_2
    move-object v0, v5

    goto :goto_0

    :cond_5
    move-object v5, v1

    invoke-virtual {v5}, Lorg/apache/xerces/dom/ChildNode;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    goto :goto_1

    :cond_6
    move-object v5, v2

    goto :goto_2

    :cond_7
    new-instance v5, Ljava/lang/StringBuffer;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v2

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    :goto_3
    move-object v5, v3

    if-nez v5, :cond_8

    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    :cond_8
    move-object v5, v3

    invoke-virtual {v5}, Lorg/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_a

    move-object v5, v3

    check-cast v5, Lorg/apache/xerces/dom/EntityReferenceImpl;

    invoke-virtual {v5}, Lorg/apache/xerces/dom/EntityReferenceImpl;->getEntityRefValue()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    move-object v5, v2

    if-nez v5, :cond_9

    const-string/jumbo v5, ""

    move-object v0, v5

    goto :goto_0

    :cond_9
    move-object v5, v4

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    :goto_4
    move-object v5, v3

    iget-object v5, v5, Lorg/apache/xerces/dom/ChildNode;->nextSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v3, v5

    goto :goto_3

    :cond_a
    move-object v5, v4

    move-object v6, v3

    invoke-virtual {v6}, Lorg/apache/xerces/dom/ChildNode;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    goto :goto_4
.end method

.method public hasChildNodes()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/AttrImpl;->needsSyncChildren()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/AttrImpl;->synchronizeChildren()V

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

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

    invoke-virtual {v3, v4, v5, v6}, Lorg/apache/xerces/dom/AttrImpl;->internalInsertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

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

    move-object v11, v0

    invoke-virtual {v11}, Lorg/apache/xerces/dom/AttrImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v11

    move-object v4, v11

    move-object v11, v4

    iget-boolean v11, v11, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    move v5, v11

    move-object v11, v1

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v11

    const/16 v12, 0xb

    if-ne v11, v12, :cond_4

    move v11, v5

    if-eqz v11, :cond_0

    move-object v11, v1

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v11

    move-object v6, v11

    :goto_0
    move-object v11, v6

    if-nez v11, :cond_1

    :cond_0
    :goto_1
    move-object v11, v1

    invoke-interface {v11}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v11

    if-nez v11, :cond_3

    move-object v11, v1

    move-object v0, v11

    :goto_2
    return-object v0

    :cond_1
    move-object v11, v4

    move-object v12, v0

    move-object v13, v6

    invoke-virtual {v11, v12, v13}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isKidOK(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string/jumbo v11, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v12, "HIERARCHY_REQUEST_ERR"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    new-instance v11, Lorg/w3c/dom/DOMException;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x3

    move-object v14, v7

    invoke-direct {v12, v13, v14}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v11

    :cond_2
    move-object v11, v6

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v11

    move-object v6, v11

    goto :goto_0

    :cond_3
    move-object v11, v0

    move-object v12, v1

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v12

    move-object v13, v2

    invoke-virtual {v11, v12, v13}, Lorg/apache/xerces/dom/AttrImpl;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v11

    goto :goto_1

    :cond_4
    move-object v11, v1

    move-object v12, v2

    if-ne v11, v12, :cond_5

    move-object v11, v2

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v11

    move-object v2, v11

    move-object v11, v0

    move-object v12, v1

    invoke-virtual {v11, v12}, Lorg/apache/xerces/dom/AttrImpl;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v11

    move-object v11, v0

    move-object v12, v1

    move-object v13, v2

    invoke-virtual {v11, v12, v13}, Lorg/apache/xerces/dom/AttrImpl;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v11

    move-object v11, v1

    move-object v0, v11

    goto :goto_2

    :cond_5
    move-object v11, v0

    invoke-virtual {v11}, Lorg/apache/xerces/dom/AttrImpl;->needsSyncChildren()Z

    move-result v11

    if-eqz v11, :cond_6

    move-object v11, v0

    invoke-virtual {v11}, Lorg/apache/xerces/dom/AttrImpl;->synchronizeChildren()V

    :cond_6
    move v11, v5

    if-eqz v11, :cond_e

    move-object v11, v0

    invoke-virtual {v11}, Lorg/apache/xerces/dom/AttrImpl;->isReadOnly()Z

    move-result v11

    if-eqz v11, :cond_7

    const-string/jumbo v11, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v12, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    new-instance v11, Lorg/w3c/dom/DOMException;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x7

    move-object v14, v6

    invoke-direct {v12, v13, v14}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v11

    :cond_7
    move-object v11, v1

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v11

    move-object v12, v4

    if-eq v11, v12, :cond_8

    const-string/jumbo v11, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v12, "WRONG_DOCUMENT_ERR"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    new-instance v11, Lorg/w3c/dom/DOMException;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x4

    move-object v14, v6

    invoke-direct {v12, v13, v14}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v11

    :cond_8
    move-object v11, v4

    move-object v12, v0

    move-object v13, v1

    invoke-virtual {v11, v12, v13}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isKidOK(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v11

    if-nez v11, :cond_9

    const-string/jumbo v11, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v12, "HIERARCHY_REQUEST_ERR"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    new-instance v11, Lorg/w3c/dom/DOMException;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x3

    move-object v14, v6

    invoke-direct {v12, v13, v14}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v11

    :cond_9
    move-object v11, v2

    if-eqz v11, :cond_a

    move-object v11, v2

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v11

    move-object v12, v0

    if-eq v11, v12, :cond_a

    const-string/jumbo v11, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v12, "NOT_FOUND_ERR"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    new-instance v11, Lorg/w3c/dom/DOMException;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/16 v13, 0x8

    move-object v14, v6

    invoke-direct {v12, v13, v14}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v11

    :cond_a
    const/4 v11, 0x1

    move v6, v11

    move-object v11, v0

    move-object v7, v11

    :goto_3
    move v11, v6

    if-eqz v11, :cond_b

    move-object v11, v7

    if-nez v11, :cond_c

    :cond_b
    move v11, v6

    if-nez v11, :cond_e

    const-string/jumbo v11, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v12, "HIERARCHY_REQUEST_ERR"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object v8, v11

    new-instance v11, Lorg/w3c/dom/DOMException;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x3

    move-object v14, v8

    invoke-direct {v12, v13, v14}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v11

    :cond_c
    move-object v11, v1

    move-object v12, v7

    if-eq v11, v12, :cond_d

    const/4 v11, 0x1

    :goto_4
    move v6, v11

    move-object v11, v7

    invoke-virtual {v11}, Lorg/apache/xerces/dom/NodeImpl;->parentNode()Lorg/apache/xerces/dom/NodeImpl;

    move-result-object v11

    move-object v7, v11

    goto :goto_3

    :cond_d
    const/4 v11, 0x0

    goto :goto_4

    :cond_e
    move-object v11, v0

    invoke-virtual {v11}, Lorg/apache/xerces/dom/AttrImpl;->makeChildNode()V

    move-object v11, v4

    move-object v12, v0

    move v13, v3

    invoke-virtual {v11, v12, v13}, Lorg/apache/xerces/dom/CoreDocumentImpl;->insertingNode(Lorg/apache/xerces/dom/NodeImpl;Z)V

    move-object v11, v1

    check-cast v11, Lorg/apache/xerces/dom/ChildNode;

    move-object v6, v11

    move-object v11, v6

    invoke-virtual {v11}, Lorg/apache/xerces/dom/ChildNode;->parentNode()Lorg/apache/xerces/dom/NodeImpl;

    move-result-object v11

    move-object v7, v11

    move-object v11, v7

    if-eqz v11, :cond_f

    move-object v11, v7

    move-object v12, v6

    invoke-interface {v11, v12}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v11

    :cond_f
    move-object v11, v2

    check-cast v11, Lorg/apache/xerces/dom/ChildNode;

    move-object v8, v11

    move-object v11, v6

    move-object v12, v0

    iput-object v12, v11, Lorg/apache/xerces/dom/ChildNode;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    move-object v11, v6

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lorg/apache/xerces/dom/ChildNode;->isOwned(Z)V

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v11, Lorg/apache/xerces/dom/ChildNode;

    move-object v9, v11

    move-object v11, v9

    if-nez v11, :cond_10

    move-object v11, v0

    move-object v12, v6

    iput-object v12, v11, Lorg/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    move-object v11, v6

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lorg/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    move-object v11, v6

    move-object v12, v6

    iput-object v12, v11, Lorg/apache/xerces/dom/ChildNode;->previousSibling:Lorg/apache/xerces/dom/ChildNode;

    :goto_5
    move-object v11, v0

    invoke-virtual {v11}, Lorg/apache/xerces/dom/AttrImpl;->changed()V

    move-object v11, v4

    move-object v12, v0

    move-object v13, v6

    move v14, v3

    invoke-virtual {v11, v12, v13, v14}, Lorg/apache/xerces/dom/CoreDocumentImpl;->insertedNode(Lorg/apache/xerces/dom/NodeImpl;Lorg/apache/xerces/dom/NodeImpl;Z)V

    move-object v11, v0

    move-object v12, v6

    invoke-virtual {v11, v12}, Lorg/apache/xerces/dom/AttrImpl;->checkNormalizationAfterInsert(Lorg/apache/xerces/dom/ChildNode;)V

    move-object v11, v1

    move-object v0, v11

    goto/16 :goto_2

    :cond_10
    move-object v11, v8

    if-nez v11, :cond_11

    move-object v11, v9

    iget-object v11, v11, Lorg/apache/xerces/dom/ChildNode;->previousSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v10, v11

    move-object v11, v10

    move-object v12, v6

    iput-object v12, v11, Lorg/apache/xerces/dom/ChildNode;->nextSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v11, v6

    move-object v12, v10

    iput-object v12, v11, Lorg/apache/xerces/dom/ChildNode;->previousSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v11, v9

    move-object v12, v6

    iput-object v12, v11, Lorg/apache/xerces/dom/ChildNode;->previousSibling:Lorg/apache/xerces/dom/ChildNode;

    goto :goto_5

    :cond_11
    move-object v11, v2

    move-object v12, v9

    if-ne v11, v12, :cond_12

    move-object v11, v9

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lorg/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    move-object v11, v6

    move-object v12, v9

    iput-object v12, v11, Lorg/apache/xerces/dom/ChildNode;->nextSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v11, v6

    move-object v12, v9

    iget-object v12, v12, Lorg/apache/xerces/dom/ChildNode;->previousSibling:Lorg/apache/xerces/dom/ChildNode;

    iput-object v12, v11, Lorg/apache/xerces/dom/ChildNode;->previousSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v11, v9

    move-object v12, v6

    iput-object v12, v11, Lorg/apache/xerces/dom/ChildNode;->previousSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v11, v0

    move-object v12, v6

    iput-object v12, v11, Lorg/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    move-object v11, v6

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lorg/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    goto :goto_5

    :cond_12
    move-object v11, v8

    iget-object v11, v11, Lorg/apache/xerces/dom/ChildNode;->previousSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v10, v11

    move-object v11, v6

    move-object v12, v8

    iput-object v12, v11, Lorg/apache/xerces/dom/ChildNode;->nextSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v11, v10

    move-object v12, v6

    iput-object v12, v11, Lorg/apache/xerces/dom/ChildNode;->nextSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v11, v8

    move-object v12, v6

    iput-object v12, v11, Lorg/apache/xerces/dom/ChildNode;->previousSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v11, v6

    move-object v12, v10

    iput-object v12, v11, Lorg/apache/xerces/dom/ChildNode;->previousSibling:Lorg/apache/xerces/dom/ChildNode;

    goto :goto_5
.end method

.method internalRemoveChild(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/dom/AttrImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v8

    move-object v3, v8

    move-object v8, v3

    iget-boolean v8, v8, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v8, :cond_1

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/dom/AttrImpl;->isReadOnly()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v8, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v9, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    new-instance v8, Lorg/w3c/dom/DOMException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x7

    move-object v11, v4

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

    const-string/jumbo v8, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v9, "NOT_FOUND_ERR"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    new-instance v8, Lorg/w3c/dom/DOMException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/16 v10, 0x8

    move-object v11, v4

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

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    if-ne v8, v9, :cond_3

    move-object v8, v4

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    move-object v8, v0

    move-object v9, v4

    iget-object v9, v9, Lorg/apache/xerces/dom/ChildNode;->nextSibling:Lorg/apache/xerces/dom/ChildNode;

    iput-object v9, v8, Lorg/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v8, Lorg/apache/xerces/dom/ChildNode;

    move-object v5, v8

    move-object v8, v5

    if-eqz v8, :cond_2

    move-object v8, v5

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lorg/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    move-object v8, v5

    move-object v9, v4

    iget-object v9, v9, Lorg/apache/xerces/dom/ChildNode;->previousSibling:Lorg/apache/xerces/dom/ChildNode;

    iput-object v9, v8, Lorg/apache/xerces/dom/ChildNode;->previousSibling:Lorg/apache/xerces/dom/ChildNode;

    :cond_2
    :goto_0
    move-object v8, v4

    invoke-virtual {v8}, Lorg/apache/xerces/dom/ChildNode;->previousSibling()Lorg/apache/xerces/dom/ChildNode;

    move-result-object v8

    move-object v5, v8

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

    invoke-virtual {v8}, Lorg/apache/xerces/dom/AttrImpl;->changed()V

    move-object v8, v3

    move-object v9, v0

    move v10, v2

    invoke-virtual {v8, v9, v10}, Lorg/apache/xerces/dom/CoreDocumentImpl;->removedNode(Lorg/apache/xerces/dom/NodeImpl;Z)V

    move-object v8, v0

    move-object v9, v5

    invoke-virtual {v8, v9}, Lorg/apache/xerces/dom/AttrImpl;->checkNormalizationAfterRemove(Lorg/apache/xerces/dom/ChildNode;)V

    move-object v8, v4

    move-object v0, v8

    return-object v0

    :cond_3
    move-object v8, v4

    iget-object v8, v8, Lorg/apache/xerces/dom/ChildNode;->previousSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v5, v8

    move-object v8, v4

    iget-object v8, v8, Lorg/apache/xerces/dom/ChildNode;->nextSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v6, v8

    move-object v8, v5

    move-object v9, v6

    iput-object v9, v8, Lorg/apache/xerces/dom/ChildNode;->nextSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v8, v6

    if-nez v8, :cond_4

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v8, Lorg/apache/xerces/dom/ChildNode;

    move-object v7, v8

    move-object v8, v7

    move-object v9, v5

    iput-object v9, v8, Lorg/apache/xerces/dom/ChildNode;->previousSibling:Lorg/apache/xerces/dom/ChildNode;

    goto :goto_0

    :cond_4
    move-object v8, v6

    move-object v9, v5

    iput-object v9, v8, Lorg/apache/xerces/dom/ChildNode;->previousSibling:Lorg/apache/xerces/dom/ChildNode;

    goto :goto_0
.end method

.method public isDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    const/4 v4, 0x0

    move v0, v4

    return v0
.end method

.method public isEqualNode(Lorg/w3c/dom/Node;)Z
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lorg/apache/xerces/dom/NodeImpl;->isEqualNode(Lorg/w3c/dom/Node;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public isId()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/AttrImpl;->isIdAttribute()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/AttrImpl;->hasStringValue()Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v1

    if-nez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    if-nez v4, :cond_1

    :cond_0
    const/4 v4, 0x0

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/AttrImpl;->makeChildNode()V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v4, Lorg/w3c/dom/Node;

    move-object v0, v4

    goto :goto_0

    :cond_2
    move v4, v1

    if-gez v4, :cond_3

    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0

    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v4, Lorg/apache/xerces/dom/ChildNode;

    move-object v2, v4

    const/4 v4, 0x0

    move v3, v4

    :goto_1
    move v4, v3

    move v5, v1

    if-ge v4, v5, :cond_4

    move-object v4, v2

    if-nez v4, :cond_5

    :cond_4
    move-object v4, v2

    move-object v0, v4

    goto :goto_0

    :cond_5
    move-object v4, v2

    iget-object v4, v4, Lorg/apache/xerces/dom/ChildNode;->nextSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method final lastChild()Lorg/apache/xerces/dom/ChildNode;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/AttrImpl;->makeChildNode()V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v1, Lorg/apache/xerces/dom/ChildNode;

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

    iget-object v2, v2, Lorg/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v2, Lorg/apache/xerces/dom/ChildNode;

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/dom/ChildNode;->previousSibling:Lorg/apache/xerces/dom/ChildNode;

    :cond_0
    return-void
.end method

.method protected makeChildNode()V
    .locals 4

    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/AttrImpl;->hasStringValue()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/AttrImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/dom/CoreDocumentImpl;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/dom/TextImpl;

    move-object v1, v2

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/dom/TextImpl;->isFirstChild(Z)V

    move-object v2, v1

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/dom/TextImpl;->previousSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v2, v1

    move-object v3, v0

    iput-object v3, v2, Lorg/apache/xerces/dom/TextImpl;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/dom/TextImpl;->isOwned(Z)V

    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/xerces/dom/AttrImpl;->hasStringValue(Z)V

    :cond_1
    return-void
.end method

.method public normalize()V
    .locals 6

    move-object v0, p0

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/AttrImpl;->isNormalized()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/AttrImpl;->hasStringValue()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v4, Lorg/apache/xerces/dom/ChildNode;

    move-object v3, v4

    move-object v4, v3

    move-object v1, v4

    :goto_1
    move-object v4, v1

    if-nez v4, :cond_2

    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/AttrImpl;->isNormalized(Z)V

    goto :goto_0

    :cond_2
    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v2, v4

    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    move-object v4, v2

    if-eqz v4, :cond_4

    move-object v4, v2

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    move-object v4, v1

    check-cast v4, Lorg/w3c/dom/Text;

    move-object v5, v2

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/w3c/dom/Text;->appendData(Ljava/lang/String;)V

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/AttrImpl;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v4, v1

    move-object v2, v4

    :cond_3
    :goto_2
    move-object v4, v2

    move-object v1, v4

    goto :goto_1

    :cond_4
    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    :cond_5
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/AttrImpl;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v4

    goto :goto_2
.end method

.method public removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/AttrImpl;->hasStringValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v4, "NOT_FOUND_ERR"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    new-instance v3, Lorg/w3c/dom/DOMException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/16 v5, 0x8

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    :cond_0
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/dom/AttrImpl;->internalRemoveChild(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method rename(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/AttrImpl;->needsSyncData()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/AttrImpl;->synchronizeData()V

    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/dom/AttrImpl;->name:Ljava/lang/String;

    return-void
.end method

.method public replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/AttrImpl;->makeChildNode()V

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/AttrImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v4

    move-object v3, v4

    move-object v4, v3

    move-object v5, v0

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/CoreDocumentImpl;->replacingNode(Lorg/apache/xerces/dom/NodeImpl;)V

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lorg/apache/xerces/dom/AttrImpl;->internalInsertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v4, v1

    move-object v5, v2

    if-eq v4, v5, :cond_0

    move-object v4, v0

    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/dom/AttrImpl;->internalRemoveChild(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v4

    :cond_0
    move-object v4, v3

    move-object v5, v0

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/CoreDocumentImpl;->replacedNode(Lorg/apache/xerces/dom/NodeImpl;)V

    move-object v4, v2

    move-object v0, v4

    return-object v0
.end method

.method public setIdAttribute(Z)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/AttrImpl;->needsSyncData()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/AttrImpl;->synchronizeData()V

    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/dom/AttrImpl;->isIdAttribute(Z)V

    return-void
.end method

.method public setNodeValue(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/dom/AttrImpl;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method protected setOwnerDocument(Lorg/apache/xerces/dom/CoreDocumentImpl;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/AttrImpl;->needsSyncChildren()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/AttrImpl;->synchronizeChildren()V

    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lorg/apache/xerces/dom/NodeImpl;->setOwnerDocument(Lorg/apache/xerces/dom/CoreDocumentImpl;)V

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/AttrImpl;->hasStringValue()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v3, Lorg/apache/xerces/dom/ChildNode;

    move-object v2, v3

    :goto_0
    move-object v3, v2

    if-nez v3, :cond_2

    :cond_1
    return-void

    :cond_2
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

    invoke-super {v4, v5, v6}, Lorg/apache/xerces/dom/NodeImpl;->setReadOnly(ZZ)V

    move v4, v2

    if-eqz v4, :cond_2

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/AttrImpl;->needsSyncChildren()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/AttrImpl;->synchronizeChildren()V

    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/AttrImpl;->hasStringValue()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    return-void

    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v4, Lorg/apache/xerces/dom/ChildNode;

    move-object v3, v4

    :goto_1
    move-object v4, v3

    if-nez v4, :cond_3

    :cond_2
    goto :goto_0

    :cond_3
    move-object v4, v3

    invoke-virtual {v4}, Lorg/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_4

    move-object v4, v3

    move v5, v1

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/dom/ChildNode;->setReadOnly(ZZ)V

    :cond_4
    move-object v4, v3

    iget-object v4, v4, Lorg/apache/xerces/dom/ChildNode;->nextSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v3, v4

    goto :goto_1
.end method

.method public setSpecified(Z)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/AttrImpl;->needsSyncData()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/AttrImpl;->synchronizeData()V

    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/dom/AttrImpl;->isSpecified(Z)V

    return-void
.end method

.method public setType(Ljava/lang/Object;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/dom/AttrImpl;->type:Ljava/lang/Object;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    invoke-virtual {v7}, Lorg/apache/xerces/dom/AttrImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v7

    move-object v2, v7

    move-object v7, v2

    iget-boolean v7, v7, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v7, :cond_0

    move-object v7, v0

    invoke-virtual {v7}, Lorg/apache/xerces/dom/AttrImpl;->isReadOnly()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v8, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    new-instance v7, Lorg/w3c/dom/DOMException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x7

    move-object v10, v3

    invoke-direct {v8, v9, v10}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v7

    :cond_0
    move-object v7, v0

    invoke-virtual {v7}, Lorg/apache/xerces/dom/AttrImpl;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v7

    move-object v3, v7

    const-string/jumbo v7, ""

    move-object v4, v7

    const/4 v7, 0x0

    move-object v5, v7

    move-object v7, v0

    invoke-virtual {v7}, Lorg/apache/xerces/dom/AttrImpl;->needsSyncData()Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v0

    invoke-virtual {v7}, Lorg/apache/xerces/dom/AttrImpl;->synchronizeData()V

    :cond_1
    move-object v7, v0

    invoke-virtual {v7}, Lorg/apache/xerces/dom/AttrImpl;->needsSyncChildren()Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v0

    invoke-virtual {v7}, Lorg/apache/xerces/dom/AttrImpl;->synchronizeChildren()V

    :cond_2
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    if-eqz v7, :cond_3

    move-object v7, v2

    invoke-virtual {v7}, Lorg/apache/xerces/dom/CoreDocumentImpl;->getMutationEvents()Z

    move-result v7

    if-eqz v7, :cond_7

    move-object v7, v0

    invoke-virtual {v7}, Lorg/apache/xerces/dom/AttrImpl;->hasStringValue()Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    move-object v4, v7

    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Lorg/apache/xerces/dom/CoreDocumentImpl;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v7

    check-cast v7, Lorg/apache/xerces/dom/TextImpl;

    move-object v5, v7

    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Lorg/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    move-object v7, v5

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lorg/apache/xerces/dom/TextImpl;->isFirstChild(Z)V

    move-object v7, v5

    move-object v8, v5

    iput-object v8, v7, Lorg/apache/xerces/dom/TextImpl;->previousSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v7, v5

    move-object v8, v0

    iput-object v8, v7, Lorg/apache/xerces/dom/TextImpl;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    move-object v7, v5

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lorg/apache/xerces/dom/TextImpl;->isOwned(Z)V

    move-object v7, v0

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/apache/xerces/dom/AttrImpl;->hasStringValue(Z)V

    move-object v7, v0

    move-object v8, v5

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/dom/AttrImpl;->internalRemoveChild(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v7

    :goto_0
    move-object v7, v0

    invoke-virtual {v7}, Lorg/apache/xerces/dom/AttrImpl;->isIdAttribute()Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v3

    if-eqz v7, :cond_3

    move-object v7, v2

    move-object v8, v4

    invoke-virtual {v7, v8}, Lorg/apache/xerces/dom/CoreDocumentImpl;->removeIdentifier(Ljava/lang/String;)V

    :cond_3
    move-object v7, v0

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lorg/apache/xerces/dom/AttrImpl;->isSpecified(Z)V

    move-object v7, v2

    invoke-virtual {v7}, Lorg/apache/xerces/dom/CoreDocumentImpl;->getMutationEvents()Z

    move-result v7

    if-eqz v7, :cond_a

    move-object v7, v5

    if-nez v7, :cond_9

    move-object v7, v2

    move-object v8, v1

    invoke-virtual {v7, v8}, Lorg/apache/xerces/dom/CoreDocumentImpl;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v7

    check-cast v7, Lorg/apache/xerces/dom/TextImpl;

    move-object v5, v7

    :goto_1
    move-object v7, v0

    move-object v8, v5

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v7, v8, v9, v10}, Lorg/apache/xerces/dom/AttrImpl;->internalInsertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v7

    move-object v7, v0

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/apache/xerces/dom/AttrImpl;->hasStringValue(Z)V

    move-object v7, v2

    move-object v8, v0

    move-object v9, v4

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/dom/CoreDocumentImpl;->modifiedAttrValue(Lorg/apache/xerces/dom/AttrImpl;Ljava/lang/String;)V

    :goto_2
    move-object v7, v0

    invoke-virtual {v7}, Lorg/apache/xerces/dom/AttrImpl;->isIdAttribute()Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v7, v3

    if-eqz v7, :cond_4

    move-object v7, v2

    move-object v8, v1

    move-object v9, v3

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/dom/CoreDocumentImpl;->putIdentifier(Ljava/lang/String;Lorg/w3c/dom/Element;)V

    :cond_4
    return-void

    :cond_5
    move-object v7, v0

    invoke-virtual {v7}, Lorg/apache/xerces/dom/AttrImpl;->getValue()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    :goto_3
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    if-nez v7, :cond_6

    goto :goto_0

    :cond_6
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v8, Lorg/w3c/dom/Node;

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/dom/AttrImpl;->internalRemoveChild(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v7

    goto :goto_3

    :cond_7
    move-object v7, v0

    invoke-virtual {v7}, Lorg/apache/xerces/dom/AttrImpl;->hasStringValue()Z

    move-result v7

    if-eqz v7, :cond_8

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    move-object v4, v7

    :goto_4
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lorg/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    move-object v7, v0

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/apache/xerces/dom/AttrImpl;->needsSyncChildren(Z)V

    goto :goto_0

    :cond_8
    move-object v7, v0

    invoke-virtual {v7}, Lorg/apache/xerces/dom/AttrImpl;->getValue()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v7, Lorg/apache/xerces/dom/ChildNode;

    move-object v6, v7

    move-object v7, v6

    const/4 v8, 0x0

    iput-object v8, v7, Lorg/apache/xerces/dom/ChildNode;->previousSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v7, v6

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    move-object v7, v6

    move-object v8, v2

    iput-object v8, v7, Lorg/apache/xerces/dom/ChildNode;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    goto :goto_4

    :cond_9
    move-object v7, v5

    move-object v8, v1

    iput-object v8, v7, Lorg/apache/xerces/dom/TextImpl;->data:Ljava/lang/String;

    goto :goto_1

    :cond_a
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lorg/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    move-object v7, v0

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lorg/apache/xerces/dom/AttrImpl;->hasStringValue(Z)V

    move-object v7, v0

    invoke-virtual {v7}, Lorg/apache/xerces/dom/AttrImpl;->changed()V

    goto :goto_2
.end method

.method protected synchronizeChildren()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/xerces/dom/AttrImpl;->needsSyncChildren(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuffer;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/AttrImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/AttrImpl;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
