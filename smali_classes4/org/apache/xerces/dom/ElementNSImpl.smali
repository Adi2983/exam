.class public Lorg/apache/xerces/dom/ElementNSImpl;
.super Lorg/apache/xerces/dom/ElementImpl;


# static fields
.field static final serialVersionUID:J = -0x7ee003136adf5f42L

.field static final xmlURI:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"


# instance fields
.field protected localName:Ljava/lang/String;

.field protected namespaceURI:Ljava/lang/String;

.field transient type:Lorg/apache/xerces/xs/XSTypeDefinition;


# direct methods
.method protected constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lorg/apache/xerces/dom/ElementImpl;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lorg/apache/xerces/dom/ElementImpl;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Lorg/apache/xerces/dom/ElementImpl;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Lorg/apache/xerces/dom/ElementNSImpl;->setName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lorg/apache/xerces/dom/ElementImpl;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lorg/apache/xerces/dom/ElementNSImpl;->localName:Ljava/lang/String;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lorg/apache/xerces/dom/ElementNSImpl;->namespaceURI:Ljava/lang/String;

    return-void
.end method

.method private setName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lorg/apache/xerces/dom/ElementNSImpl;->namespaceURI:Ljava/lang/String;

    move-object v7, v1

    if-eqz v7, :cond_0

    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    const/4 v8, 0x0

    :goto_0
    iput-object v8, v7, Lorg/apache/xerces/dom/ElementNSImpl;->namespaceURI:Ljava/lang/String;

    :cond_0
    move-object v7, v2

    if-nez v7, :cond_2

    const-string/jumbo v7, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v8, "NAMESPACE_ERR"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    new-instance v7, Lorg/w3c/dom/DOMException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/16 v9, 0xe

    move-object v10, v6

    invoke-direct {v8, v9, v10}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v7

    :cond_1
    move-object v8, v1

    goto :goto_0

    :cond_2
    move-object v7, v2

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    move v4, v7

    move-object v7, v2

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    move v5, v7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/ElementNSImpl;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v8, v2

    move v9, v4

    move v10, v5

    invoke-virtual {v7, v8, v9, v10}, Lorg/apache/xerces/dom/CoreDocumentImpl;->checkNamespaceWF(Ljava/lang/String;II)V

    move v7, v4

    if-gez v7, :cond_5

    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Lorg/apache/xerces/dom/ElementNSImpl;->localName:Ljava/lang/String;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/ElementNSImpl;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v7, v7, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v7, :cond_8

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/ElementNSImpl;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/ElementNSImpl;->localName:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/dom/CoreDocumentImpl;->checkQName(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v2

    const-string/jumbo v8, "xmlns"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v1

    if-eqz v7, :cond_4

    move-object v7, v1

    sget-object v8, Lorg/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    move-object v7, v1

    if-eqz v7, :cond_8

    move-object v7, v1

    sget-object v8, Lorg/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    move-object v7, v2

    const-string/jumbo v8, "xmlns"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    :cond_4
    const-string/jumbo v7, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v8, "NAMESPACE_ERR"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    new-instance v7, Lorg/w3c/dom/DOMException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/16 v9, 0xe

    move-object v10, v6

    invoke-direct {v8, v9, v10}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v7

    :cond_5
    move-object v7, v2

    const/4 v8, 0x0

    move v9, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    move-object v7, v0

    move-object v8, v2

    move v9, v5

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lorg/apache/xerces/dom/ElementNSImpl;->localName:Ljava/lang/String;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/ElementNSImpl;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v7, v7, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v7, :cond_8

    move-object v7, v1

    if-eqz v7, :cond_6

    move-object v7, v3

    const-string/jumbo v8, "xml"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    move-object v7, v1

    sget-object v8, Lorg/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    :cond_6
    const-string/jumbo v7, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v8, "NAMESPACE_ERR"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    new-instance v7, Lorg/w3c/dom/DOMException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/16 v9, 0xe

    move-object v10, v6

    invoke-direct {v8, v9, v10}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v7

    :cond_7
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/ElementNSImpl;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v8, v3

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/ElementNSImpl;->localName:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/dom/CoreDocumentImpl;->checkQName(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/ElementNSImpl;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v8, v3

    move-object v9, v1

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/dom/CoreDocumentImpl;->checkDOMNSErr(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method


# virtual methods
.method public getLocalName()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/ElementNSImpl;->needsSyncData()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/ElementNSImpl;->synchronizeData()V

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/ElementNSImpl;->localName:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/ElementNSImpl;->needsSyncData()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/ElementNSImpl;->synchronizeData()V

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/ElementNSImpl;->namespaceURI:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 5

    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/ElementNSImpl;->needsSyncData()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/ElementNSImpl;->synchronizeData()V

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/ElementNSImpl;->name:Ljava/lang/String;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    move v1, v2

    move v2, v1

    if-gez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    move-object v0, v2

    return-object v0

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/ElementNSImpl;->name:Ljava/lang/String;

    const/4 v3, 0x0

    move v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/ElementNSImpl;->type:Lorg/apache/xerces/xs/XSTypeDefinition;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/ElementNSImpl;->type:Lorg/apache/xerces/xs/XSTypeDefinition;

    instance-of v1, v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/ElementNSImpl;->type:Lorg/apache/xerces/xs/XSTypeDefinition;

    check-cast v1, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getTypeName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/ElementNSImpl;->type:Lorg/apache/xerces/xs/XSTypeDefinition;

    instance-of v1, v1, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/ElementNSImpl;->type:Lorg/apache/xerces/xs/XSTypeDefinition;

    check-cast v1, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->getTypeName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public getTypeNamespace()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/ElementNSImpl;->type:Lorg/apache/xerces/xs/XSTypeDefinition;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/ElementNSImpl;->type:Lorg/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v1}, Lorg/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method protected getXMLBaseAttribute()Lorg/w3c/dom/Attr;
    .locals 4

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/ElementNSImpl;->attributes:Lorg/apache/xerces/dom/AttributeMap;

    const-string/jumbo v2, "http://www.w3.org/XML/1998/namespace"

    const-string/jumbo v3, "base"

    invoke-virtual {v1, v2, v3}, Lorg/apache/xerces/dom/AttributeMap;->getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Attr;

    move-object v0, v1

    return-object v0
.end method

.method public isDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/ElementNSImpl;->needsSyncData()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/ElementNSImpl;->synchronizeData()V

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/ElementNSImpl;->type:Lorg/apache/xerces/xs/XSTypeDefinition;

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/ElementNSImpl;->type:Lorg/apache/xerces/xs/XSTypeDefinition;

    instance-of v4, v4, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/ElementNSImpl;->type:Lorg/apache/xerces/xs/XSTypeDefinition;

    check-cast v4, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lorg/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    move v0, v4

    :goto_0
    return v0

    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/ElementNSImpl;->type:Lorg/apache/xerces/xs/XSTypeDefinition;

    instance-of v4, v4, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/ElementNSImpl;->type:Lorg/apache/xerces/xs/XSTypeDefinition;

    check-cast v4, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lorg/apache/xerces/impl/xs/XSComplexTypeDecl;->isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    move v0, v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method rename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/ElementNSImpl;->needsSyncData()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/ElementNSImpl;->synchronizeData()V

    :cond_0
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lorg/apache/xerces/dom/ElementNSImpl;->name:Ljava/lang/String;

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lorg/apache/xerces/dom/ElementNSImpl;->setName(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/ElementNSImpl;->reconcileDefaultAttributes()V

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/ElementNSImpl;->needsSyncData()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/ElementNSImpl;->synchronizeData()V

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/ElementNSImpl;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v3, v3, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v3, :cond_5

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/ElementNSImpl;->isReadOnly()Z

    move-result v3

    if-eqz v3, :cond_1

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

    :cond_1
    move-object v3, v1

    if-eqz v3, :cond_5

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/ElementNSImpl;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v4}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v4

    invoke-static {v3, v4}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v4, "INVALID_CHARACTER_ERR"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    new-instance v3, Lorg/w3c/dom/DOMException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x5

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/ElementNSImpl;->namespaceURI:Ljava/lang/String;

    if-eqz v3, :cond_3

    move-object v3, v1

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_4

    :cond_3
    const-string/jumbo v3, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v4, "NAMESPACE_ERR"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    new-instance v3, Lorg/w3c/dom/DOMException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/16 v5, 0xe

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    :cond_4
    move-object v3, v1

    const-string/jumbo v4, "xml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/ElementNSImpl;->namespaceURI:Ljava/lang/String;

    const-string/jumbo v4, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string/jumbo v3, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v4, "NAMESPACE_ERR"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    new-instance v3, Lorg/w3c/dom/DOMException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/16 v5, 0xe

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    :cond_5
    move-object v3, v1

    if-eqz v3, :cond_6

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_6

    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuffer;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/ElementNSImpl;->localName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lorg/apache/xerces/dom/ElementNSImpl;->name:Ljava/lang/String;

    :goto_0
    return-void

    :cond_6
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/ElementNSImpl;->localName:Ljava/lang/String;

    iput-object v4, v3, Lorg/apache/xerces/dom/ElementNSImpl;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public setType(Lorg/apache/xerces/xs/XSTypeDefinition;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/dom/ElementNSImpl;->type:Lorg/apache/xerces/xs/XSTypeDefinition;

    return-void
.end method
