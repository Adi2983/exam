.class public Lorg/apache/xerces/dom/ElementImpl;
.super Lorg/apache/xerces/dom/ParentNode;

# interfaces
.implements Lorg/w3c/dom/Element;
.implements Lorg/w3c/dom/ElementTraversal;
.implements Lorg/w3c/dom/TypeInfo;


# static fields
.field static final serialVersionUID:J = 0x33965660e8283866L


# instance fields
.field protected attributes:Lorg/apache/xerces/dom/AttributeMap;

.field protected name:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lorg/apache/xerces/dom/ParentNode;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lorg/apache/xerces/dom/ParentNode;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;)V

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lorg/apache/xerces/dom/ElementImpl;->name:Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/ElementImpl;->needsSyncData(Z)V

    return-void
.end method

.method private getFirstElementChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    move-object v2, v4

    :goto_0
    move-object v4, v1

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    :goto_1
    return-object v0

    :cond_0
    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    move-object v4, v1

    check-cast v4, Lorg/w3c/dom/Element;

    move-object v0, v4

    goto :goto_1

    :cond_1
    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v3, v4

    :cond_2
    move-object v4, v3

    if-eqz v4, :cond_3

    :goto_2
    move-object v4, v3

    move-object v1, v4

    goto :goto_0

    :cond_3
    move-object v4, v2

    move-object v5, v1

    if-ne v4, v5, :cond_4

    goto :goto_2

    :cond_4
    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v3, v4

    move-object v4, v3

    if-nez v4, :cond_2

    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v1, v4

    move-object v4, v1

    if-eqz v4, :cond_5

    move-object v4, v2

    move-object v5, v1

    if-ne v4, v5, :cond_2

    :cond_5
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method private getLastElementChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    move-object v2, v4

    :goto_0
    move-object v4, v1

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    :goto_1
    return-object v0

    :cond_0
    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    move-object v4, v1

    check-cast v4, Lorg/w3c/dom/Element;

    move-object v0, v4

    goto :goto_1

    :cond_1
    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v3, v4

    :cond_2
    move-object v4, v3

    if-eqz v4, :cond_3

    :goto_2
    move-object v4, v3

    move-object v1, v4

    goto :goto_0

    :cond_3
    move-object v4, v2

    move-object v5, v1

    if-ne v4, v5, :cond_4

    goto :goto_2

    :cond_4
    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v3, v4

    move-object v4, v3

    if-nez v4, :cond_2

    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v1, v4

    move-object v4, v1

    if-eqz v4, :cond_5

    move-object v4, v2

    move-object v5, v1

    if-ne v4, v5, :cond_2

    :cond_5
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1
.end method

.method private getNextLogicalSibling(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v2, v4

    move-object v4, v2

    if-nez v4, :cond_0

    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v3, v4

    :goto_0
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_1

    :cond_0
    :goto_1
    move-object v4, v2

    move-object v0, v4

    return-object v0

    :cond_1
    move-object v4, v3

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v2, v4

    move-object v4, v2

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move-object v4, v3

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v3, v4

    goto :goto_0
.end method

.method private getPreviousLogicalSibling(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v2, v4

    move-object v4, v2

    if-nez v4, :cond_0

    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v3, v4

    :goto_0
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_1

    :cond_0
    :goto_1
    move-object v4, v2

    move-object v0, v4

    return-object v0

    :cond_1
    move-object v4, v3

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v2, v4

    move-object v4, v2

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move-object v4, v3

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v3, v4

    goto :goto_0
.end method


# virtual methods
.method public cloneNode(Z)Lorg/w3c/dom/Node;
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Lorg/apache/xerces/dom/ParentNode;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/dom/ElementImpl;

    move-object v2, v3

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    if-eqz v3, :cond_0

    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    move-object v5, v2

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/AttributeMap;->cloneMap(Lorg/apache/xerces/dom/NodeImpl;)Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/dom/AttributeMap;

    iput-object v4, v3, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    :cond_0
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/ElementImpl;->synchronizeData()V

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    if-nez v3, :cond_1

    const-string/jumbo v3, ""

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/AttributeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Attr;

    move-object v2, v3

    move-object v3, v2

    if-nez v3, :cond_2

    const-string/jumbo v3, ""

    :goto_1
    move-object v0, v3

    goto :goto_0

    :cond_2
    move-object v3, v2

    invoke-interface {v3}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/ElementImpl;->synchronizeData()V

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    if-nez v4, :cond_1

    const-string/jumbo v4, ""

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/dom/AttributeMap;->getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Attr;

    move-object v3, v4

    move-object v4, v3

    if-nez v4, :cond_2

    const-string/jumbo v4, ""

    :goto_1
    move-object v0, v4

    goto :goto_0

    :cond_2
    move-object v4, v3

    invoke-interface {v4}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/ElementImpl;->synchronizeData()V

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/dom/AttributeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Attr;

    move-object v0, v2

    goto :goto_0
.end method

.method public getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/ElementImpl;->synchronizeData()V

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/dom/AttributeMap;->getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Attr;

    move-object v0, v3

    goto :goto_0
.end method

.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .locals 7

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/ElementImpl;->synchronizeData()V

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    if-nez v1, :cond_1

    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/dom/AttributeMap;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lorg/apache/xerces/dom/AttributeMap;-><init>(Lorg/apache/xerces/dom/ElementImpl;Lorg/apache/xerces/dom/NamedNodeMapImpl;)V

    iput-object v2, v1, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    move-object v0, v1

    return-object v0
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 11

    move-object v0, p0

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/dom/ElementImpl;->synchronizeData()V

    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    if-eqz v6, :cond_4

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/dom/ElementImpl;->getXMLBaseAttribute()Lorg/w3c/dom/Attr;

    move-result-object v6

    move-object v1, v6

    move-object v6, v1

    if-eqz v6, :cond_4

    move-object v6, v1

    invoke-interface {v6}, Lorg/w3c/dom/Attr;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4

    :try_start_0
    new-instance v6, Lorg/apache/xerces/util/URI;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v2

    const/4 v9, 0x1

    invoke-direct {v7, v8, v9}, Lorg/apache/xerces/util/URI;-><init>(Ljava/lang/String;Z)V

    move-object v3, v6

    move-object v6, v3

    invoke-virtual {v6}, Lorg/apache/xerces/util/URI;->isAbsoluteURI()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v3

    invoke-virtual {v6}, Lorg/apache/xerces/util/URI;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/ElementImpl;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    if-eqz v6, :cond_2

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/ElementImpl;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    invoke-virtual {v6}, Lorg/apache/xerces/dom/NodeImpl;->getBaseURI()Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    :goto_1
    move-object v4, v6

    move-object v6, v4

    if-eqz v6, :cond_3

    :try_start_1
    new-instance v6, Lorg/apache/xerces/util/URI;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v4

    invoke-direct {v7, v8}, Lorg/apache/xerces/util/URI;-><init>(Ljava/lang/String;)V

    move-object v5, v6

    move-object v6, v3

    move-object v7, v5

    invoke-virtual {v6, v7}, Lorg/apache/xerces/util/URI;->absolutize(Lorg/apache/xerces/util/URI;)V

    move-object v6, v3

    invoke-virtual {v6}, Lorg/apache/xerces/util/URI;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/apache/xerces/util/URI$MalformedURIException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    :catch_0
    move-exception v6

    move-object v5, v6

    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    :catch_1
    move-exception v6

    move-object v3, v6

    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    :cond_4
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/ElementImpl;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    if-eqz v6, :cond_5

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/ElementImpl;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    invoke-virtual {v6}, Lorg/apache/xerces/dom/NodeImpl;->getBaseURI()Ljava/lang/String;

    move-result-object v6

    :goto_2
    move-object v0, v6

    goto :goto_0

    :cond_5
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public final getChildElementCount()I
    .locals 4

    move-object v0, p0

    const/4 v3, 0x0

    move v1, v3

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/ElementImpl;->getFirstElementChild()Lorg/w3c/dom/Element;

    move-result-object v3

    move-object v2, v3

    :goto_0
    move-object v3, v2

    if-nez v3, :cond_0

    move v3, v1

    move v0, v3

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    move-object v3, v2

    check-cast v3, Lorg/apache/xerces/dom/ElementImpl;

    invoke-virtual {v3}, Lorg/apache/xerces/dom/ElementImpl;->getNextElementSibling()Lorg/w3c/dom/Element;

    move-result-object v3

    move-object v2, v3

    goto :goto_0
.end method

.method protected getDefaultAttributes()Lorg/apache/xerces/dom/NamedNodeMapImpl;
    .locals 5

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/ElementImpl;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v3}, Lorg/apache/xerces/dom/CoreDocumentImpl;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/dom/DocumentTypeImpl;

    move-object v1, v3

    move-object v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Lorg/apache/xerces/dom/DocumentTypeImpl;->getElements()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/ElementImpl;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/dom/ElementDefinitionImpl;

    move-object v2, v3

    move-object v3, v2

    if-nez v3, :cond_1

    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    :cond_1
    move-object v3, v2

    invoke-virtual {v3}, Lorg/apache/xerces/dom/ElementDefinitionImpl;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move-object v0, v3

    goto :goto_0
.end method

.method public getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lorg/apache/xerces/dom/DeepNodeListImpl;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lorg/apache/xerces/dom/DeepNodeListImpl;-><init>(Lorg/apache/xerces/dom/NodeImpl;Ljava/lang/String;)V

    move-object v0, v2

    return-object v0
.end method

.method public getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Lorg/apache/xerces/dom/DeepNodeListImpl;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/xerces/dom/DeepNodeListImpl;-><init>(Lorg/apache/xerces/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    return-object v0
.end method

.method public final getFirstElementChild()Lorg/w3c/dom/Element;
    .locals 5

    move-object v0, p0

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/ElementImpl;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move-object v0, v3

    :goto_1
    return-object v0

    :cond_0
    move-object v3, v1

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    move-object v3, v1

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v1, v3

    goto :goto_0

    :sswitch_0
    move-object v3, v1

    check-cast v3, Lorg/w3c/dom/Element;

    move-object v0, v3

    goto :goto_1

    :sswitch_1
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lorg/apache/xerces/dom/ElementImpl;->getFirstElementChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v2

    move-object v0, v3

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method public final getLastElementChild()Lorg/w3c/dom/Element;
    .locals 5

    move-object v0, p0

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/ElementImpl;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move-object v0, v3

    :goto_1
    return-object v0

    :cond_0
    move-object v3, v1

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    move-object v3, v1

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v1, v3

    goto :goto_0

    :sswitch_0
    move-object v3, v1

    check-cast v3, Lorg/w3c/dom/Element;

    move-object v0, v3

    goto :goto_1

    :sswitch_1
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lorg/apache/xerces/dom/ElementImpl;->getLastElementChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v2

    move-object v0, v3

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method public final getNextElementSibling()Lorg/w3c/dom/Element;
    .locals 5

    move-object v0, p0

    move-object v3, v0

    move-object v4, v0

    invoke-direct {v3, v4}, Lorg/apache/xerces/dom/ElementImpl;->getNextLogicalSibling(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move-object v0, v3

    :goto_1
    return-object v0

    :cond_0
    move-object v3, v1

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lorg/apache/xerces/dom/ElementImpl;->getNextLogicalSibling(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v1, v3

    goto :goto_0

    :sswitch_0
    move-object v3, v1

    check-cast v3, Lorg/w3c/dom/Element;

    move-object v0, v3

    goto :goto_1

    :sswitch_1
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lorg/apache/xerces/dom/ElementImpl;->getFirstElementChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v2

    move-object v0, v3

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/ElementImpl;->synchronizeData()V

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/ElementImpl;->name:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getNodeType()S
    .locals 2

    move-object v0, p0

    const/4 v1, 0x1

    move v0, v1

    return v0
.end method

.method public final getPreviousElementSibling()Lorg/w3c/dom/Element;
    .locals 5

    move-object v0, p0

    move-object v3, v0

    move-object v4, v0

    invoke-direct {v3, v4}, Lorg/apache/xerces/dom/ElementImpl;->getPreviousLogicalSibling(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move-object v0, v3

    :goto_1
    return-object v0

    :cond_0
    move-object v3, v1

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_1
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lorg/apache/xerces/dom/ElementImpl;->getPreviousLogicalSibling(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v1, v3

    goto :goto_0

    :sswitch_0
    move-object v3, v1

    check-cast v3, Lorg/w3c/dom/Element;

    move-object v0, v3

    goto :goto_1

    :sswitch_1
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lorg/apache/xerces/dom/ElementImpl;->getLastElementChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v2

    move-object v0, v3

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method public getSchemaTypeInfo()Lorg/w3c/dom/TypeInfo;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/ElementImpl;->synchronizeData()V

    :cond_0
    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/ElementImpl;->synchronizeData()V

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/ElementImpl;->name:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public getTypeNamespace()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method protected getXMLBaseAttribute()Lorg/w3c/dom/Attr;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    const-string/jumbo v2, "xml:base"

    invoke-virtual {v1, v2}, Lorg/apache/xerces/dom/AttributeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Attr;

    move-object v0, v1

    return-object v0
.end method

.method protected getXercesAttribute(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/ElementImpl;->synchronizeData()V

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    if-nez v3, :cond_1

    const/4 v3, -0x1

    move v0, v3

    :goto_0
    return v0

    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/dom/AttributeMap;->getNamedItemIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public hasAttribute(Ljava/lang/String;)Z
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/dom/ElementImpl;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hasAttributeNS(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/dom/ElementImpl;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    return v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public hasAttributes()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/ElementImpl;->synchronizeData()V

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    invoke-virtual {v1}, Lorg/apache/xerces/dom/AttributeMap;->getLength()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

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
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v9, v0

    move-object v10, v1

    invoke-super {v9, v10}, Lorg/apache/xerces/dom/ParentNode;->isEqualNode(Lorg/w3c/dom/Node;)Z

    move-result v9

    if-nez v9, :cond_0

    const/4 v9, 0x0

    move v0, v9

    :goto_0
    return v0

    :cond_0
    move-object v9, v0

    invoke-virtual {v9}, Lorg/apache/xerces/dom/ElementImpl;->hasAttributes()Z

    move-result v9

    move v2, v9

    move v9, v2

    move-object v10, v1

    check-cast v10, Lorg/w3c/dom/Element;

    invoke-interface {v10}, Lorg/w3c/dom/Element;->hasAttributes()Z

    move-result v10

    if-eq v9, v10, :cond_1

    const/4 v9, 0x0

    move v0, v9

    goto :goto_0

    :cond_1
    move v9, v2

    if-eqz v9, :cond_3

    move-object v9, v0

    invoke-virtual {v9}, Lorg/apache/xerces/dom/ElementImpl;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    move-object v3, v9

    move-object v9, v1

    check-cast v9, Lorg/w3c/dom/Element;

    invoke-interface {v9}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    move-object v4, v9

    move-object v9, v3

    invoke-interface {v9}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v9

    move v5, v9

    move v9, v5

    move-object v10, v4

    invoke-interface {v10}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v10

    if-eq v9, v10, :cond_2

    const/4 v9, 0x0

    move v0, v9

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    move v6, v9

    :goto_1
    move v9, v6

    move v10, v5

    if-lt v9, v10, :cond_4

    :cond_3
    const/4 v9, 0x1

    move v0, v9

    goto :goto_0

    :cond_4
    move-object v9, v3

    move v10, v6

    invoke-interface {v9, v10}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v7, v9

    move-object v9, v7

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_6

    move-object v9, v4

    move-object v10, v7

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v8, v9

    move-object v9, v8

    if-eqz v9, :cond_5

    move-object v9, v7

    check-cast v9, Lorg/apache/xerces/dom/NodeImpl;

    move-object v10, v8

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/NodeImpl;->isEqualNode(Lorg/w3c/dom/Node;)Z

    move-result v9

    if-nez v9, :cond_8

    :cond_5
    const/4 v9, 0x0

    move v0, v9

    goto :goto_0

    :cond_6
    move-object v9, v4

    move-object v10, v7

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v10

    move-object v11, v7

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v8, v9

    move-object v9, v8

    if-eqz v9, :cond_7

    move-object v9, v7

    check-cast v9, Lorg/apache/xerces/dom/NodeImpl;

    move-object v10, v8

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/NodeImpl;->isEqualNode(Lorg/w3c/dom/Node;)Z

    move-result v9

    if-nez v9, :cond_8

    :cond_7
    const/4 v9, 0x0

    move v0, v9

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method moveSpecifiedAttributes(Lorg/apache/xerces/dom/ElementImpl;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/ElementImpl;->synchronizeData()V

    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Lorg/apache/xerces/dom/ElementImpl;->hasAttributes()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    if-nez v2, :cond_1

    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/dom/AttributeMap;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lorg/apache/xerces/dom/AttributeMap;-><init>(Lorg/apache/xerces/dom/ElementImpl;Lorg/apache/xerces/dom/NamedNodeMapImpl;)V

    iput-object v3, v2, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    move-object v3, v1

    iget-object v3, v3, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/dom/AttributeMap;->moveSpecifiedAttributes(Lorg/apache/xerces/dom/AttributeMap;)V

    :cond_2
    return-void
.end method

.method public normalize()V
    .locals 7

    move-object v0, p0

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xerces/dom/ElementImpl;->isNormalized()Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xerces/dom/ElementImpl;->needsSyncChildren()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xerces/dom/ElementImpl;->synchronizeChildren()V

    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/ElementImpl;->firstChild:Lorg/apache/xerces/dom/ChildNode;

    move-object v1, v5

    :goto_1
    move-object v5, v1

    if-nez v5, :cond_3

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    move v3, v5

    :goto_2
    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    invoke-virtual {v6}, Lorg/apache/xerces/dom/AttributeMap;->getLength()I

    move-result v6

    if-lt v5, v6, :cond_8

    :cond_2
    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/ElementImpl;->isNormalized(Z)V

    goto :goto_0

    :cond_3
    move-object v5, v1

    iget-object v5, v5, Lorg/apache/xerces/dom/ChildNode;->nextSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v2, v5

    move-object v5, v1

    invoke-virtual {v5}, Lorg/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_7

    move-object v5, v2

    if-eqz v5, :cond_5

    move-object v5, v2

    invoke-virtual {v5}, Lorg/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_5

    move-object v5, v1

    check-cast v5, Lorg/w3c/dom/Text;

    move-object v6, v2

    invoke-virtual {v6}, Lorg/apache/xerces/dom/ChildNode;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/w3c/dom/Text;->appendData(Ljava/lang/String;)V

    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/ElementImpl;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v5, v1

    move-object v2, v5

    :cond_4
    :goto_3
    move-object v5, v2

    move-object v1, v5

    goto :goto_1

    :cond_5
    move-object v5, v1

    invoke-virtual {v5}, Lorg/apache/xerces/dom/ChildNode;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    move-object v5, v1

    invoke-virtual {v5}, Lorg/apache/xerces/dom/ChildNode;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    :cond_6
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/ElementImpl;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v5

    goto :goto_3

    :cond_7
    move-object v5, v1

    invoke-virtual {v5}, Lorg/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    move-object v5, v1

    invoke-virtual {v5}, Lorg/apache/xerces/dom/ChildNode;->normalize()V

    goto :goto_3

    :cond_8
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    move v6, v3

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/AttributeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v4, v5

    move-object v5, v4

    invoke-interface {v5}, Lorg/w3c/dom/Node;->normalize()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method protected reconcileDefaultAttributes()V
    .locals 4

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/ElementImpl;->getDefaultAttributes()Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move-result-object v2

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/dom/AttributeMap;->reconcileDefaults(Lorg/apache/xerces/dom/NamedNodeMapImpl;)V

    :cond_0
    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/ElementImpl;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v3, v3, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/ElementImpl;->isReadOnly()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v4, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    new-instance v3, Lorg/w3c/dom/DOMException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x7

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/ElementImpl;->synchronizeData()V

    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    if-nez v3, :cond_2

    :goto_0
    return-void

    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/AttributeMap;->safeRemoveNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    goto :goto_0
.end method

.method public removeAttributeNS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/ElementImpl;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v4, v4, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/ElementImpl;->isReadOnly()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v5, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    new-instance v4, Lorg/w3c/dom/DOMException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x7

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/ElementImpl;->synchronizeData()V

    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    if-nez v4, :cond_2

    :goto_0
    return-void

    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/dom/AttributeMap;->safeRemoveNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    goto :goto_0
.end method

.method public removeAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/ElementImpl;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v3, v3, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/ElementImpl;->isReadOnly()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v4, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    new-instance v3, Lorg/w3c/dom/DOMException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x7

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/ElementImpl;->synchronizeData()V

    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    if-nez v3, :cond_2

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

    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    move-object v4, v1

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/dom/AttributeMap;->removeItem(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Attr;

    move-object v0, v3

    return-object v0
.end method

.method rename(Ljava/lang/String;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/ElementImpl;->synchronizeData()V

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/ElementImpl;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v4, v4, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v4, :cond_2

    move-object v4, v1

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    move v2, v4

    move v4, v2

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v5, "NAMESPACE_ERR"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    new-instance v4, Lorg/w3c/dom/DOMException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/16 v6, 0xe

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    :cond_1
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/ElementImpl;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v5}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v5

    invoke-static {v4, v5}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v5, "INVALID_CHARACTER_ERR"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    new-instance v4, Lorg/w3c/dom/DOMException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x5

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    :cond_2
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lorg/apache/xerces/dom/ElementImpl;->name:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/ElementImpl;->reconcileDefaultAttributes()V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/ElementImpl;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v4, v4, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/ElementImpl;->isReadOnly()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v5, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    new-instance v4, Lorg/w3c/dom/DOMException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x7

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/ElementImpl;->synchronizeData()V

    :cond_1
    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/ElementImpl;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v4

    move-object v3, v4

    move-object v4, v3

    if-nez v4, :cond_3

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/ElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v4

    move-object v5, v1

    invoke-interface {v4, v5}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v4

    move-object v3, v4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    if-nez v4, :cond_2

    move-object v4, v0

    new-instance v5, Lorg/apache/xerces/dom/AttributeMap;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lorg/apache/xerces/dom/AttributeMap;-><init>(Lorg/apache/xerces/dom/ElementImpl;Lorg/apache/xerces/dom/NamedNodeMapImpl;)V

    iput-object v5, v4, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    :cond_2
    move-object v4, v3

    move-object v5, v2

    invoke-interface {v4, v5}, Lorg/w3c/dom/Attr;->setNodeValue(Ljava/lang/String;)V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    move-object v5, v3

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/AttributeMap;->setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v4

    :goto_0
    return-void

    :cond_3
    move-object v4, v3

    move-object v5, v2

    invoke-interface {v4, v5}, Lorg/w3c/dom/Attr;->setNodeValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/ElementImpl;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v8, v8, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v8, :cond_0

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/dom/ElementImpl;->isReadOnly()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v8, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v9, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    new-instance v8, Lorg/w3c/dom/DOMException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x7

    move-object v11, v4

    invoke-direct {v9, v10, v11}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v8

    :cond_0
    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/dom/ElementImpl;->synchronizeData()V

    :cond_1
    move-object v8, v2

    const/16 v9, 0x3a

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    move v4, v8

    move v8, v4

    if-gez v8, :cond_3

    const/4 v8, 0x0

    move-object v5, v8

    move-object v8, v2

    move-object v6, v8

    :goto_0
    move-object v8, v0

    move-object v9, v1

    move-object v10, v6

    invoke-virtual {v8, v9, v10}, Lorg/apache/xerces/dom/ElementImpl;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v8

    move-object v7, v8

    move-object v8, v7

    if-nez v8, :cond_4

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/dom/ElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v8

    move-object v9, v1

    move-object v10, v2

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Document;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v8

    move-object v7, v8

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    if-nez v8, :cond_2

    move-object v8, v0

    new-instance v9, Lorg/apache/xerces/dom/AttributeMap;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v0

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Lorg/apache/xerces/dom/AttributeMap;-><init>(Lorg/apache/xerces/dom/ElementImpl;Lorg/apache/xerces/dom/NamedNodeMapImpl;)V

    iput-object v9, v8, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    :cond_2
    move-object v8, v7

    move-object v9, v3

    invoke-interface {v8, v9}, Lorg/w3c/dom/Attr;->setNodeValue(Ljava/lang/String;)V

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    move-object v9, v7

    invoke-virtual {v8, v9}, Lorg/apache/xerces/dom/AttributeMap;->setNamedItemNS(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v8

    :goto_1
    return-void

    :cond_3
    move-object v8, v2

    const/4 v9, 0x0

    move v10, v4

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    move-object v8, v2

    move v9, v4

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    goto :goto_0

    :cond_4
    move-object v8, v7

    instance-of v8, v8, Lorg/apache/xerces/dom/AttrNSImpl;

    if-eqz v8, :cond_6

    move-object v8, v7

    check-cast v8, Lorg/apache/xerces/dom/AttrNSImpl;

    move-object v9, v5

    if-eqz v9, :cond_5

    new-instance v9, Ljava/lang/StringBuffer;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string/jumbo v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    move-object v10, v6

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_2
    iput-object v9, v8, Lorg/apache/xerces/dom/AttrNSImpl;->name:Ljava/lang/String;

    :goto_3
    move-object v8, v7

    move-object v9, v3

    invoke-interface {v8, v9}, Lorg/w3c/dom/Attr;->setNodeValue(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v9, v6

    goto :goto_2

    :cond_6
    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/dom/ElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v8

    check-cast v8, Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v9, v1

    move-object v10, v2

    move-object v11, v6

    invoke-virtual {v8, v9, v10, v11}, Lorg/apache/xerces/dom/CoreDocumentImpl;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v8

    move-object v7, v8

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    move-object v9, v7

    invoke-virtual {v8, v9}, Lorg/apache/xerces/dom/AttributeMap;->setNamedItemNS(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v8

    goto :goto_3
.end method

.method public setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/ElementImpl;->synchronizeData()V

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/ElementImpl;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v3, v3, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v3, :cond_2

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/ElementImpl;->isReadOnly()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v4, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    new-instance v3, Lorg/w3c/dom/DOMException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x7

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    :cond_1
    move-object v3, v1

    invoke-interface {v3}, Lorg/w3c/dom/Attr;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/ElementImpl;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    if-eq v3, v4, :cond_2

    const-string/jumbo v3, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v4, "WRONG_DOCUMENT_ERR"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    new-instance v3, Lorg/w3c/dom/DOMException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x4

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    if-nez v3, :cond_3

    move-object v3, v0

    new-instance v4, Lorg/apache/xerces/dom/AttributeMap;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lorg/apache/xerces/dom/AttributeMap;-><init>(Lorg/apache/xerces/dom/ElementImpl;Lorg/apache/xerces/dom/NamedNodeMapImpl;)V

    iput-object v4, v3, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/AttributeMap;->setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Attr;

    move-object v0, v3

    return-object v0
.end method

.method public setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/ElementImpl;->synchronizeData()V

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/ElementImpl;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v3, v3, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v3, :cond_2

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/ElementImpl;->isReadOnly()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v4, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    new-instance v3, Lorg/w3c/dom/DOMException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x7

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    :cond_1
    move-object v3, v1

    invoke-interface {v3}, Lorg/w3c/dom/Attr;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/ElementImpl;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    if-eq v3, v4, :cond_2

    const-string/jumbo v3, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v4, "WRONG_DOCUMENT_ERR"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    new-instance v3, Lorg/w3c/dom/DOMException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x4

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    if-nez v3, :cond_3

    move-object v3, v0

    new-instance v4, Lorg/apache/xerces/dom/AttributeMap;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lorg/apache/xerces/dom/AttributeMap;-><init>(Lorg/apache/xerces/dom/ElementImpl;Lorg/apache/xerces/dom/NamedNodeMapImpl;)V

    iput-object v4, v3, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/AttributeMap;->setNamedItemNS(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Attr;

    move-object v0, v3

    return-object v0
.end method

.method public setIdAttribute(Ljava/lang/String;Z)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xerces/dom/ElementImpl;->synchronizeData()V

    :cond_0
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/ElementImpl;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v5

    move-object v3, v5

    move-object v5, v3

    if-nez v5, :cond_1

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
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/ElementImpl;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v5, v5, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v5, :cond_3

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xerces/dom/ElementImpl;->isReadOnly()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v6, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    new-instance v5, Lorg/w3c/dom/DOMException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x7

    move-object v8, v4

    invoke-direct {v6, v7, v8}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    :cond_2
    move-object v5, v3

    invoke-interface {v5}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v5

    move-object v6, v0

    if-eq v5, v6, :cond_3

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

    :cond_3
    move-object v5, v3

    check-cast v5, Lorg/apache/xerces/dom/AttrImpl;

    move v6, v2

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/AttrImpl;->isIdAttribute(Z)V

    move v5, v2

    if-nez v5, :cond_4

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/ElementImpl;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v6, v3

    invoke-interface {v6}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/CoreDocumentImpl;->removeIdentifier(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_4
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/ElementImpl;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v6, v3

    invoke-interface {v6}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v6

    move-object v7, v0

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/dom/CoreDocumentImpl;->putIdentifier(Ljava/lang/String;Lorg/w3c/dom/Element;)V

    goto :goto_0
.end method

.method public setIdAttributeNS(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/dom/ElementImpl;->synchronizeData()V

    :cond_0
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/dom/ElementImpl;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v6

    move-object v4, v6

    move-object v6, v4

    if-nez v6, :cond_1

    const-string/jumbo v6, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v7, "NOT_FOUND_ERR"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    new-instance v6, Lorg/w3c/dom/DOMException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/16 v8, 0x8

    move-object v9, v5

    invoke-direct {v7, v8, v9}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v6

    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/ElementImpl;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v6, v6, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v6, :cond_3

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/dom/ElementImpl;->isReadOnly()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v7, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    new-instance v6, Lorg/w3c/dom/DOMException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x7

    move-object v9, v5

    invoke-direct {v7, v8, v9}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v6

    :cond_2
    move-object v6, v4

    invoke-interface {v6}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v6

    move-object v7, v0

    if-eq v6, v7, :cond_3

    const-string/jumbo v6, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v7, "NOT_FOUND_ERR"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    new-instance v6, Lorg/w3c/dom/DOMException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/16 v8, 0x8

    move-object v9, v5

    invoke-direct {v7, v8, v9}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v6

    :cond_3
    move-object v6, v4

    check-cast v6, Lorg/apache/xerces/dom/AttrImpl;

    move v7, v3

    invoke-virtual {v6, v7}, Lorg/apache/xerces/dom/AttrImpl;->isIdAttribute(Z)V

    move v6, v3

    if-nez v6, :cond_4

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/ElementImpl;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v7, v4

    invoke-interface {v7}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/xerces/dom/CoreDocumentImpl;->removeIdentifier(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_4
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/ElementImpl;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v7, v4

    invoke-interface {v7}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/dom/CoreDocumentImpl;->putIdentifier(Ljava/lang/String;Lorg/w3c/dom/Element;)V

    goto :goto_0
.end method

.method public setIdAttributeNode(Lorg/w3c/dom/Attr;Z)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/ElementImpl;->synchronizeData()V

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/ElementImpl;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v4, v4, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v4, :cond_2

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/ElementImpl;->isReadOnly()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v5, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    new-instance v4, Lorg/w3c/dom/DOMException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x7

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    :cond_1
    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v4

    move-object v5, v0

    if-eq v4, v5, :cond_2

    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v5, "NOT_FOUND_ERR"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    new-instance v4, Lorg/w3c/dom/DOMException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/16 v6, 0x8

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    :cond_2
    move-object v4, v1

    check-cast v4, Lorg/apache/xerces/dom/AttrImpl;

    move v5, v2

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/AttrImpl;->isIdAttribute(Z)V

    move v4, v2

    if-nez v4, :cond_3

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/ElementImpl;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v5, v1

    invoke-interface {v5}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/CoreDocumentImpl;->removeIdentifier(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_3
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/ElementImpl;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v5, v1

    invoke-interface {v5}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/dom/CoreDocumentImpl;->putIdentifier(Ljava/lang/String;Lorg/w3c/dom/Element;)V

    goto :goto_0
.end method

.method protected setOwnerDocument(Lorg/apache/xerces/dom/CoreDocumentImpl;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lorg/apache/xerces/dom/ParentNode;->setOwnerDocument(Lorg/apache/xerces/dom/CoreDocumentImpl;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/dom/AttributeMap;->setOwnerDocument(Lorg/apache/xerces/dom/CoreDocumentImpl;)V

    :cond_0
    return-void
.end method

.method public setReadOnly(ZZ)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Lorg/apache/xerces/dom/ParentNode;->setReadOnly(ZZ)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    move v4, v1

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/dom/AttributeMap;->setReadOnly(ZZ)V

    :cond_0
    return-void
.end method

.method protected setXercesAttributeNode(Lorg/w3c/dom/Attr;)I
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/ElementImpl;->needsSyncData()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/ElementImpl;->synchronizeData()V

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    if-nez v2, :cond_1

    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/dom/AttributeMap;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lorg/apache/xerces/dom/AttributeMap;-><init>(Lorg/apache/xerces/dom/ElementImpl;Lorg/apache/xerces/dom/NamedNodeMapImpl;)V

    iput-object v3, v2, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/dom/AttributeMap;->addItem(Lorg/w3c/dom/Node;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method protected setupDefaultAttributes()V
    .locals 8

    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/ElementImpl;->getDefaultAttributes()Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move-result-object v2

    move-object v1, v2

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/dom/AttributeMap;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lorg/apache/xerces/dom/AttributeMap;-><init>(Lorg/apache/xerces/dom/ElementImpl;Lorg/apache/xerces/dom/NamedNodeMapImpl;)V

    iput-object v3, v2, Lorg/apache/xerces/dom/ElementImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    :cond_0
    return-void
.end method

.method protected synchronizeData()V
    .locals 4

    move-object v0, p0

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/xerces/dom/ElementImpl;->needsSyncData(Z)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/ElementImpl;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v2}, Lorg/apache/xerces/dom/CoreDocumentImpl;->getMutationEvents()Z

    move-result v2

    move v1, v2

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/ElementImpl;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/xerces/dom/CoreDocumentImpl;->setMutationEvents(Z)V

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/ElementImpl;->setupDefaultAttributes()V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/ElementImpl;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/dom/CoreDocumentImpl;->setMutationEvents(Z)V

    return-void
.end method
