.class public Lorg/apache/xerces/dom/ElementDefinitionImpl;
.super Lorg/apache/xerces/dom/ParentNode;


# static fields
.field static final serialVersionUID:J = -0x7436093334741c3aL


# instance fields
.field protected attributes:Lorg/apache/xerces/dom/NamedNodeMapImpl;

.field protected name:Ljava/lang/String;


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

    move-object v4, v2

    iput-object v4, v3, Lorg/apache/xerces/dom/ElementDefinitionImpl;->name:Ljava/lang/String;

    move-object v3, v0

    new-instance v4, Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lorg/apache/xerces/dom/NamedNodeMapImpl;-><init>(Lorg/apache/xerces/dom/NodeImpl;)V

    iput-object v4, v3, Lorg/apache/xerces/dom/ElementDefinitionImpl;->attributes:Lorg/apache/xerces/dom/NamedNodeMapImpl;

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

    check-cast v3, Lorg/apache/xerces/dom/ElementDefinitionImpl;

    move-object v2, v3

    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/ElementDefinitionImpl;->attributes:Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move-object v5, v2

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->cloneMap(Lorg/apache/xerces/dom/NodeImpl;)Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move-result-object v4

    iput-object v4, v3, Lorg/apache/xerces/dom/ElementDefinitionImpl;->attributes:Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/ElementDefinitionImpl;->needsSyncChildren()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/ElementDefinitionImpl;->synchronizeChildren()V

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/ElementDefinitionImpl;->attributes:Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move-object v0, v1

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/ElementDefinitionImpl;->needsSyncData()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/ElementDefinitionImpl;->synchronizeData()V

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/ElementDefinitionImpl;->name:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getNodeType()S
    .locals 2

    move-object v0, p0

    const/16 v1, 0x15

    move v0, v1

    return v0
.end method
