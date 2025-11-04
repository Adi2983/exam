.class public Lorg/apache/xerces/dom/DocumentTypeImpl;
.super Lorg/apache/xerces/dom/ParentNode;

# interfaces
.implements Lorg/w3c/dom/DocumentType;


# static fields
.field static final serialVersionUID:J = 0x6b92258c19cc7f95L


# instance fields
.field private doctypeNumber:I

.field protected elements:Lorg/apache/xerces/dom/NamedNodeMapImpl;

.field protected entities:Lorg/apache/xerces/dom/NamedNodeMapImpl;

.field protected internalSubset:Ljava/lang/String;

.field protected name:Ljava/lang/String;

.field protected notations:Lorg/apache/xerces/dom/NamedNodeMapImpl;

.field protected publicID:Ljava/lang/String;

.field protected systemID:Ljava/lang/String;

.field private userData:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lorg/apache/xerces/dom/ParentNode;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;)V

    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lorg/apache/xerces/dom/DocumentTypeImpl;->doctypeNumber:I

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/dom/DocumentTypeImpl;->userData:Ljava/util/Hashtable;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lorg/apache/xerces/dom/DocumentTypeImpl;->name:Ljava/lang/String;

    move-object v3, v0

    new-instance v4, Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lorg/apache/xerces/dom/NamedNodeMapImpl;-><init>(Lorg/apache/xerces/dom/NodeImpl;)V

    iput-object v4, v3, Lorg/apache/xerces/dom/DocumentTypeImpl;->entities:Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move-object v3, v0

    new-instance v4, Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lorg/apache/xerces/dom/NamedNodeMapImpl;-><init>(Lorg/apache/xerces/dom/NodeImpl;)V

    iput-object v4, v3, Lorg/apache/xerces/dom/DocumentTypeImpl;->notations:Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move-object v3, v0

    new-instance v4, Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lorg/apache/xerces/dom/NamedNodeMapImpl;-><init>(Lorg/apache/xerces/dom/NodeImpl;)V

    iput-object v4, v3, Lorg/apache/xerces/dom/DocumentTypeImpl;->elements:Lorg/apache/xerces/dom/NamedNodeMapImpl;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lorg/apache/xerces/dom/DocumentTypeImpl;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lorg/apache/xerces/dom/DocumentTypeImpl;->publicID:Ljava/lang/String;

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lorg/apache/xerces/dom/DocumentTypeImpl;->systemID:Ljava/lang/String;

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

    check-cast v3, Lorg/apache/xerces/dom/DocumentTypeImpl;

    move-object v2, v3

    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DocumentTypeImpl;->entities:Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move-object v5, v2

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->cloneMap(Lorg/apache/xerces/dom/NodeImpl;)Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move-result-object v4

    iput-object v4, v3, Lorg/apache/xerces/dom/DocumentTypeImpl;->entities:Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DocumentTypeImpl;->notations:Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move-object v5, v2

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->cloneMap(Lorg/apache/xerces/dom/NodeImpl;)Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move-result-object v4

    iput-object v4, v3, Lorg/apache/xerces/dom/DocumentTypeImpl;->notations:Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DocumentTypeImpl;->elements:Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move-object v5, v2

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->cloneMap(Lorg/apache/xerces/dom/NodeImpl;)Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move-result-object v4

    iput-object v4, v3, Lorg/apache/xerces/dom/DocumentTypeImpl;->elements:Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public getElements()Lorg/w3c/dom/NamedNodeMap;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/DocumentTypeImpl;->needsSyncChildren()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/DocumentTypeImpl;->synchronizeChildren()V

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/DocumentTypeImpl;->elements:Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move-object v0, v1

    return-object v0
.end method

.method public getEntities()Lorg/w3c/dom/NamedNodeMap;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/DocumentTypeImpl;->needsSyncChildren()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/DocumentTypeImpl;->synchronizeChildren()V

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/DocumentTypeImpl;->entities:Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move-object v0, v1

    return-object v0
.end method

.method public getInternalSubset()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/DocumentTypeImpl;->needsSyncData()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/DocumentTypeImpl;->synchronizeData()V

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/DocumentTypeImpl;->internalSubset:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/DocumentTypeImpl;->needsSyncData()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/DocumentTypeImpl;->synchronizeData()V

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/DocumentTypeImpl;->name:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/DocumentTypeImpl;->needsSyncData()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/DocumentTypeImpl;->synchronizeData()V

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/DocumentTypeImpl;->name:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method protected getNodeNumber()I
    .locals 4

    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/DocumentTypeImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-super {v2}, Lorg/apache/xerces/dom/ParentNode;->getNodeNumber()I

    move-result v2

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/dom/DocumentTypeImpl;->doctypeNumber:I

    if-nez v2, :cond_1

    invoke-static {}, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->getDOMImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;

    move-object v1, v2

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->assignDocTypeNumber()I

    move-result v3

    iput v3, v2, Lorg/apache/xerces/dom/DocumentTypeImpl;->doctypeNumber:I

    :cond_1
    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/dom/DocumentTypeImpl;->doctypeNumber:I

    move v0, v2

    goto :goto_0
.end method

.method public getNodeType()S
    .locals 2

    move-object v0, p0

    const/16 v1, 0xa

    move v0, v1

    return v0
.end method

.method public getNotations()Lorg/w3c/dom/NamedNodeMap;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/DocumentTypeImpl;->needsSyncChildren()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/DocumentTypeImpl;->synchronizeChildren()V

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/DocumentTypeImpl;->notations:Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move-object v0, v1

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/DocumentTypeImpl;->needsSyncData()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/DocumentTypeImpl;->synchronizeData()V

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/DocumentTypeImpl;->publicID:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/DocumentTypeImpl;->needsSyncData()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/DocumentTypeImpl;->synchronizeData()V

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/DocumentTypeImpl;->systemID:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DocumentTypeImpl;->userData:Ljava/util/Hashtable;

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DocumentTypeImpl;->userData:Ljava/util/Hashtable;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    move-object v4, v2

    if-eqz v4, :cond_1

    move-object v4, v2

    check-cast v4, Lorg/apache/xerces/dom/ParentNode$UserDataRecord;

    move-object v3, v4

    move-object v4, v3

    iget-object v4, v4, Lorg/apache/xerces/dom/ParentNode$UserDataRecord;->fData:Ljava/lang/Object;

    move-object v0, v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method protected getUserDataRecord()Ljava/util/Hashtable;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/DocumentTypeImpl;->userData:Ljava/util/Hashtable;

    move-object v0, v1

    return-object v0
.end method

.method public isEqualNode(Lorg/w3c/dom/Node;)Z
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v8, v0

    move-object v9, v1

    invoke-super {v8, v9}, Lorg/apache/xerces/dom/ParentNode;->isEqualNode(Lorg/w3c/dom/Node;)Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v8, 0x0

    move v0, v8

    :goto_0
    return v0

    :cond_0
    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/dom/DocumentTypeImpl;->needsSyncData()Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/dom/DocumentTypeImpl;->synchronizeData()V

    :cond_1
    move-object v8, v1

    check-cast v8, Lorg/apache/xerces/dom/DocumentTypeImpl;

    move-object v2, v8

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/dom/DocumentTypeImpl;->getPublicId()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_2

    move-object v8, v2

    invoke-virtual {v8}, Lorg/apache/xerces/dom/DocumentTypeImpl;->getPublicId()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_7

    :cond_2
    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/dom/DocumentTypeImpl;->getPublicId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    move-object v8, v2

    invoke-virtual {v8}, Lorg/apache/xerces/dom/DocumentTypeImpl;->getPublicId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    :cond_3
    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/dom/DocumentTypeImpl;->getSystemId()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_4

    move-object v8, v2

    invoke-virtual {v8}, Lorg/apache/xerces/dom/DocumentTypeImpl;->getSystemId()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_7

    :cond_4
    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/dom/DocumentTypeImpl;->getSystemId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    move-object v8, v2

    invoke-virtual {v8}, Lorg/apache/xerces/dom/DocumentTypeImpl;->getSystemId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7

    :cond_5
    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/dom/DocumentTypeImpl;->getInternalSubset()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_6

    move-object v8, v2

    invoke-virtual {v8}, Lorg/apache/xerces/dom/DocumentTypeImpl;->getInternalSubset()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_7

    :cond_6
    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/dom/DocumentTypeImpl;->getInternalSubset()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8

    move-object v8, v2

    invoke-virtual {v8}, Lorg/apache/xerces/dom/DocumentTypeImpl;->getInternalSubset()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_8

    :cond_7
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    :cond_8
    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/dom/DocumentTypeImpl;->getPublicId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/dom/DocumentTypeImpl;->getPublicId()Ljava/lang/String;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v9}, Lorg/apache/xerces/dom/DocumentTypeImpl;->getPublicId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    :cond_9
    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/dom/DocumentTypeImpl;->getSystemId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_a

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/dom/DocumentTypeImpl;->getSystemId()Ljava/lang/String;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v9}, Lorg/apache/xerces/dom/DocumentTypeImpl;->getSystemId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    const/4 v8, 0x0

    move v0, v8

    goto/16 :goto_0

    :cond_a
    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/dom/DocumentTypeImpl;->getInternalSubset()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/dom/DocumentTypeImpl;->getInternalSubset()Ljava/lang/String;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v9}, Lorg/apache/xerces/dom/DocumentTypeImpl;->getInternalSubset()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    const/4 v8, 0x0

    move v0, v8

    goto/16 :goto_0

    :cond_b
    move-object v8, v2

    iget-object v8, v8, Lorg/apache/xerces/dom/DocumentTypeImpl;->entities:Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move-object v3, v8

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DocumentTypeImpl;->entities:Lorg/apache/xerces/dom/NamedNodeMapImpl;

    if-nez v8, :cond_c

    move-object v8, v3

    if-nez v8, :cond_d

    :cond_c
    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DocumentTypeImpl;->entities:Lorg/apache/xerces/dom/NamedNodeMapImpl;

    if-eqz v8, :cond_e

    move-object v8, v3

    if-nez v8, :cond_e

    :cond_d
    const/4 v8, 0x0

    move v0, v8

    goto/16 :goto_0

    :cond_e
    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DocumentTypeImpl;->entities:Lorg/apache/xerces/dom/NamedNodeMapImpl;

    if-eqz v8, :cond_10

    move-object v8, v3

    if-eqz v8, :cond_10

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DocumentTypeImpl;->entities:Lorg/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v8}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->getLength()I

    move-result v8

    move-object v9, v3

    invoke-virtual {v9}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->getLength()I

    move-result v9

    if-eq v8, v9, :cond_f

    const/4 v8, 0x0

    move v0, v8

    goto/16 :goto_0

    :cond_f
    const/4 v8, 0x0

    move v4, v8

    :goto_1
    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DocumentTypeImpl;->entities:Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move v9, v4

    invoke-virtual {v8, v9}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    if-nez v8, :cond_13

    :cond_10
    move-object v8, v2

    iget-object v8, v8, Lorg/apache/xerces/dom/DocumentTypeImpl;->notations:Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move-object v4, v8

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DocumentTypeImpl;->notations:Lorg/apache/xerces/dom/NamedNodeMapImpl;

    if-nez v8, :cond_11

    move-object v8, v4

    if-nez v8, :cond_12

    :cond_11
    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DocumentTypeImpl;->notations:Lorg/apache/xerces/dom/NamedNodeMapImpl;

    if-eqz v8, :cond_15

    move-object v8, v4

    if-nez v8, :cond_15

    :cond_12
    const/4 v8, 0x0

    move v0, v8

    goto/16 :goto_0

    :cond_13
    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DocumentTypeImpl;->entities:Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move v9, v4

    invoke-virtual {v8, v9}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    move-object v5, v8

    move-object v8, v3

    move-object v9, v5

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    move-object v6, v8

    move-object v8, v5

    check-cast v8, Lorg/apache/xerces/dom/NodeImpl;

    move-object v9, v6

    invoke-virtual {v8, v9}, Lorg/apache/xerces/dom/NodeImpl;->isEqualNode(Lorg/w3c/dom/Node;)Z

    move-result v8

    if-nez v8, :cond_14

    const/4 v8, 0x0

    move v0, v8

    goto/16 :goto_0

    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_15
    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DocumentTypeImpl;->notations:Lorg/apache/xerces/dom/NamedNodeMapImpl;

    if-eqz v8, :cond_17

    move-object v8, v4

    if-eqz v8, :cond_17

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DocumentTypeImpl;->notations:Lorg/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v8}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->getLength()I

    move-result v8

    move-object v9, v4

    invoke-virtual {v9}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->getLength()I

    move-result v9

    if-eq v8, v9, :cond_16

    const/4 v8, 0x0

    move v0, v8

    goto/16 :goto_0

    :cond_16
    const/4 v8, 0x0

    move v5, v8

    :goto_2
    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DocumentTypeImpl;->notations:Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move v9, v5

    invoke-virtual {v8, v9}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    if-nez v8, :cond_18

    :cond_17
    const/4 v8, 0x1

    move v0, v8

    goto/16 :goto_0

    :cond_18
    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DocumentTypeImpl;->notations:Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move v9, v5

    invoke-virtual {v8, v9}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    move-object v6, v8

    move-object v8, v4

    move-object v9, v6

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    move-object v7, v8

    move-object v8, v6

    check-cast v8, Lorg/apache/xerces/dom/NodeImpl;

    move-object v9, v7

    invoke-virtual {v8, v9}, Lorg/apache/xerces/dom/NodeImpl;->isEqualNode(Lorg/w3c/dom/Node;)Z

    move-result v8

    if-nez v8, :cond_19

    const/4 v8, 0x0

    move v0, v8

    goto/16 :goto_0

    :cond_19
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method public setInternalSubset(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/DocumentTypeImpl;->needsSyncData()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/DocumentTypeImpl;->synchronizeData()V

    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/dom/DocumentTypeImpl;->internalSubset:Ljava/lang/String;

    return-void
.end method

.method protected setOwnerDocument(Lorg/apache/xerces/dom/CoreDocumentImpl;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lorg/apache/xerces/dom/ParentNode;->setOwnerDocument(Lorg/apache/xerces/dom/CoreDocumentImpl;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/DocumentTypeImpl;->entities:Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->setOwnerDocument(Lorg/apache/xerces/dom/CoreDocumentImpl;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/DocumentTypeImpl;->notations:Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->setOwnerDocument(Lorg/apache/xerces/dom/CoreDocumentImpl;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/DocumentTypeImpl;->elements:Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->setOwnerDocument(Lorg/apache/xerces/dom/CoreDocumentImpl;)V

    return-void
.end method

.method public setReadOnly(ZZ)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/DocumentTypeImpl;->needsSyncChildren()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/DocumentTypeImpl;->synchronizeChildren()V

    :cond_0
    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Lorg/apache/xerces/dom/ParentNode;->setReadOnly(ZZ)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/DocumentTypeImpl;->elements:Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move v4, v1

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->setReadOnly(ZZ)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/DocumentTypeImpl;->entities:Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move v4, v1

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->setReadOnly(ZZ)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/DocumentTypeImpl;->notations:Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move v4, v1

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->setReadOnly(ZZ)V

    return-void
.end method

.method public setTextContent(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    return-void
.end method

.method public setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DocumentTypeImpl;->userData:Ljava/util/Hashtable;

    if-nez v6, :cond_0

    move-object v6, v0

    new-instance v7, Ljava/util/Hashtable;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Ljava/util/Hashtable;-><init>()V

    iput-object v7, v6, Lorg/apache/xerces/dom/DocumentTypeImpl;->userData:Ljava/util/Hashtable;

    :cond_0
    move-object v6, v2

    if-nez v6, :cond_2

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DocumentTypeImpl;->userData:Ljava/util/Hashtable;

    if-eqz v6, :cond_1

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DocumentTypeImpl;->userData:Ljava/util/Hashtable;

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    move-object v6, v4

    if-eqz v6, :cond_1

    move-object v6, v4

    check-cast v6, Lorg/apache/xerces/dom/ParentNode$UserDataRecord;

    move-object v5, v6

    move-object v6, v5

    iget-object v6, v6, Lorg/apache/xerces/dom/ParentNode$UserDataRecord;->fData:Ljava/lang/Object;

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_1
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DocumentTypeImpl;->userData:Ljava/util/Hashtable;

    move-object v7, v1

    new-instance v8, Lorg/apache/xerces/dom/ParentNode$UserDataRecord;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    move-object v11, v2

    move-object v12, v3

    invoke-direct {v9, v10, v11, v12}, Lorg/apache/xerces/dom/ParentNode$UserDataRecord;-><init>(Lorg/apache/xerces/dom/ParentNode;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)V

    invoke-virtual {v6, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    move-object v6, v4

    if-eqz v6, :cond_3

    move-object v6, v4

    check-cast v6, Lorg/apache/xerces/dom/ParentNode$UserDataRecord;

    move-object v5, v6

    move-object v6, v5

    iget-object v6, v6, Lorg/apache/xerces/dom/ParentNode$UserDataRecord;->fData:Ljava/lang/Object;

    move-object v0, v6

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0
.end method
