.class public Lorg/apache/xerces/dom/DeferredEntityImpl;
.super Lorg/apache/xerces/dom/EntityImpl;

# interfaces
.implements Lorg/apache/xerces/dom/DeferredNode;


# static fields
.field static final serialVersionUID:J = 0x420f8ee1ad39e3c6L


# instance fields
.field protected transient fNodeIndex:I


# direct methods
.method constructor <init>(Lorg/apache/xerces/dom/DeferredDocumentImpl;I)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lorg/apache/xerces/dom/EntityImpl;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    move-object v3, v0

    move v4, v2

    iput v4, v3, Lorg/apache/xerces/dom/DeferredEntityImpl;->fNodeIndex:I

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/DeferredEntityImpl;->needsSyncData(Z)V

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/DeferredEntityImpl;->needsSyncChildren(Z)V

    return-void
.end method


# virtual methods
.method public getNodeIndex()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/dom/DeferredEntityImpl;->fNodeIndex:I

    move v0, v1

    return v0
.end method

.method protected synchronizeChildren()V
    .locals 5

    move-object v0, p0

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/xerces/dom/DeferredEntityImpl;->needsSyncChildren(Z)V

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/xerces/dom/DeferredEntityImpl;->isReadOnly(Z)V

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/DeferredEntityImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v1, v2

    move-object v2, v1

    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/dom/DeferredEntityImpl;->fNodeIndex:I

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->synchronizeChildren(Lorg/apache/xerces/dom/ParentNode;I)V

    move-object v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/dom/DeferredEntityImpl;->setReadOnly(ZZ)V

    return-void
.end method

.method protected synchronizeData()V
    .locals 7

    move-object v0, p0

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/DeferredEntityImpl;->needsSyncData(Z)V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DeferredEntityImpl;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    check-cast v4, Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v1, v4

    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/dom/DeferredEntityImpl;->fNodeIndex:I

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/apache/xerces/dom/DeferredEntityImpl;->name:Ljava/lang/String;

    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/dom/DeferredEntityImpl;->fNodeIndex:I

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeValue(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/apache/xerces/dom/DeferredEntityImpl;->publicId:Ljava/lang/String;

    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/dom/DeferredEntityImpl;->fNodeIndex:I

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeURI(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/apache/xerces/dom/DeferredEntityImpl;->systemId:Ljava/lang/String;

    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/dom/DeferredEntityImpl;->fNodeIndex:I

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(I)I

    move-result v4

    move v2, v4

    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(I)S

    move-result v4

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/apache/xerces/dom/DeferredEntityImpl;->notationName:Ljava/lang/String;

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeValue(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/apache/xerces/dom/DeferredEntityImpl;->version:Ljava/lang/String;

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeURI(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/apache/xerces/dom/DeferredEntityImpl;->encoding:Ljava/lang/String;

    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(I)I

    move-result v4

    move v3, v4

    move-object v4, v0

    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/apache/xerces/dom/DeferredEntityImpl;->baseURI:Ljava/lang/String;

    move-object v4, v0

    move-object v5, v1

    move v6, v3

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeValue(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lorg/apache/xerces/dom/DeferredEntityImpl;->inputEncoding:Ljava/lang/String;

    return-void
.end method
