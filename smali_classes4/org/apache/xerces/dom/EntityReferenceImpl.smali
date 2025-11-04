.class public Lorg/apache/xerces/dom/EntityReferenceImpl;
.super Lorg/apache/xerces/dom/ParentNode;

# interfaces
.implements Lorg/w3c/dom/EntityReference;


# static fields
.field static final serialVersionUID:J = -0x6670305ac5fca66eL


# instance fields
.field protected baseURI:Ljava/lang/String;

.field protected name:Ljava/lang/String;


# direct methods
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

    iput-object v4, v3, Lorg/apache/xerces/dom/EntityReferenceImpl;->name:Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/EntityReferenceImpl;->isReadOnly(Z)V

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/EntityReferenceImpl;->needsSyncChildren(Z)V

    return-void
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

    check-cast v3, Lorg/apache/xerces/dom/EntityReferenceImpl;

    move-object v2, v3

    move-object v3, v2

    const/4 v4, 0x1

    move v5, v1

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/dom/EntityReferenceImpl;->setReadOnly(ZZ)V

    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 8

    move-object v0, p0

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/EntityReferenceImpl;->needsSyncData()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/EntityReferenceImpl;->synchronizeData()V

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/EntityReferenceImpl;->baseURI:Ljava/lang/String;

    if-nez v4, :cond_1

    const/4 v4, 0x0

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xerces/dom/EntityReferenceImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v5

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    move-object v1, v6

    if-eq v4, v5, :cond_2

    const/4 v4, 0x0

    move-object v5, v1

    invoke-interface {v5}, Lorg/w3c/dom/DocumentType;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    move-object v2, v6

    if-eq v4, v5, :cond_2

    move-object v4, v2

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xerces/dom/EntityReferenceImpl;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/dom/EntityImpl;

    move-object v3, v4

    move-object v4, v3

    if-eqz v4, :cond_2

    move-object v4, v3

    invoke-virtual {v4}, Lorg/apache/xerces/dom/EntityImpl;->getBaseURI()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/EntityReferenceImpl;->baseURI:Ljava/lang/String;

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/EntityReferenceImpl;->baseURI:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    :try_start_0
    new-instance v4, Lorg/apache/xerces/util/URI;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/EntityReferenceImpl;->baseURI:Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/apache/xerces/util/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/apache/xerces/util/URI;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v1, v4

    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0

    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/EntityReferenceImpl;->baseURI:Ljava/lang/String;

    move-object v0, v4

    goto :goto_0
.end method

.method protected getEntityRefValue()Ljava/lang/String;
    .locals 8

    move-object v0, p0

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/EntityReferenceImpl;->needsSyncChildren()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/EntityReferenceImpl;->synchronizeChildren()V

    :cond_0
    const-string/jumbo v4, ""

    move-object v1, v4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/EntityReferenceImpl;->firstChild:Lorg/apache/xerces/dom/ChildNode;

    if-eqz v4, :cond_7

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/EntityReferenceImpl;->firstChild:Lorg/apache/xerces/dom/ChildNode;

    invoke-virtual {v4}, Lorg/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/EntityReferenceImpl;->firstChild:Lorg/apache/xerces/dom/ChildNode;

    check-cast v4, Lorg/apache/xerces/dom/EntityReferenceImpl;

    invoke-virtual {v4}, Lorg/apache/xerces/dom/EntityReferenceImpl;->getEntityRefValue()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    :goto_0
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/EntityReferenceImpl;->firstChild:Lorg/apache/xerces/dom/ChildNode;

    iget-object v4, v4, Lorg/apache/xerces/dom/ChildNode;->nextSibling:Lorg/apache/xerces/dom/ChildNode;

    if-nez v4, :cond_3

    move-object v4, v1

    move-object v0, v4

    :goto_1
    return-object v0

    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/EntityReferenceImpl;->firstChild:Lorg/apache/xerces/dom/ChildNode;

    invoke-virtual {v4}, Lorg/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/EntityReferenceImpl;->firstChild:Lorg/apache/xerces/dom/ChildNode;

    invoke-virtual {v4}, Lorg/apache/xerces/dom/ChildNode;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/lang/StringBuffer;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/EntityReferenceImpl;->firstChild:Lorg/apache/xerces/dom/ChildNode;

    iget-object v4, v4, Lorg/apache/xerces/dom/ChildNode;->nextSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v3, v4

    :goto_2
    move-object v4, v3

    if-nez v4, :cond_4

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_1

    :cond_4
    move-object v4, v3

    invoke-virtual {v4}, Lorg/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_5

    move-object v4, v3

    check-cast v4, Lorg/apache/xerces/dom/EntityReferenceImpl;

    invoke-virtual {v4}, Lorg/apache/xerces/dom/EntityReferenceImpl;->getEntityRefValue()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    :goto_3
    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object v4, v3

    iget-object v4, v4, Lorg/apache/xerces/dom/ChildNode;->nextSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v3, v4

    goto :goto_2

    :cond_5
    move-object v4, v3

    invoke-virtual {v4}, Lorg/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    move-object v4, v3

    invoke-virtual {v4}, Lorg/apache/xerces/dom/ChildNode;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_1

    :cond_7
    const-string/jumbo v4, ""

    move-object v0, v4

    goto :goto_1
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/EntityReferenceImpl;->needsSyncData()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/EntityReferenceImpl;->synchronizeData()V

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/EntityReferenceImpl;->name:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getNodeType()S
    .locals 2

    move-object v0, p0

    const/4 v1, 0x5

    move v0, v1

    return v0
.end method

.method public setBaseURI(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/EntityReferenceImpl;->needsSyncData()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/EntityReferenceImpl;->synchronizeData()V

    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/dom/EntityReferenceImpl;->baseURI:Ljava/lang/String;

    return-void
.end method

.method public setReadOnly(ZZ)V
    .locals 7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/EntityReferenceImpl;->needsSyncData()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/EntityReferenceImpl;->synchronizeData()V

    :cond_0
    move v4, v2

    if-eqz v4, :cond_2

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/EntityReferenceImpl;->needsSyncChildren()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/EntityReferenceImpl;->synchronizeChildren()V

    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/EntityReferenceImpl;->firstChild:Lorg/apache/xerces/dom/ChildNode;

    move-object v3, v4

    :goto_0
    move-object v4, v3

    if-nez v4, :cond_3

    :cond_2
    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/EntityReferenceImpl;->isReadOnly(Z)V

    return-void

    :cond_3
    move-object v4, v3

    move v5, v1

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/dom/ChildNode;->setReadOnly(ZZ)V

    move-object v4, v3

    iget-object v4, v4, Lorg/apache/xerces/dom/ChildNode;->nextSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v3, v4

    goto :goto_0
.end method

.method protected synchronizeChildren()V
    .locals 10

    move-object v0, p0

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/apache/xerces/dom/EntityReferenceImpl;->needsSyncChildren(Z)V

    const/4 v6, 0x0

    move-object v7, v0

    invoke-virtual {v7}, Lorg/apache/xerces/dom/EntityReferenceImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v7

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    move-object v1, v8

    if-eq v6, v7, :cond_1

    const/4 v6, 0x0

    move-object v7, v1

    invoke-interface {v7}, Lorg/w3c/dom/DocumentType;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    move-object v2, v8

    if-eq v6, v7, :cond_1

    move-object v6, v2

    move-object v7, v0

    invoke-virtual {v7}, Lorg/apache/xerces/dom/EntityReferenceImpl;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/apache/xerces/dom/EntityImpl;

    move-object v3, v6

    move-object v6, v3

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/apache/xerces/dom/EntityReferenceImpl;->isReadOnly(Z)V

    move-object v6, v3

    invoke-virtual {v6}, Lorg/apache/xerces/dom/EntityImpl;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v4, v6

    :goto_1
    move-object v6, v4

    if-nez v6, :cond_2

    move-object v6, v0

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/dom/EntityReferenceImpl;->setReadOnly(ZZ)V

    :cond_1
    goto :goto_0

    :cond_2
    move-object v6, v4

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Lorg/w3c/dom/Node;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v5, v6

    move-object v6, v0

    move-object v7, v5

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/dom/EntityReferenceImpl;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v6, v4

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v4, v6

    goto :goto_1
.end method
