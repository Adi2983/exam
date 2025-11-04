.class public Lorg/apache/xerces/dom/DeferredEntityReferenceImpl;
.super Lorg/apache/xerces/dom/EntityReferenceImpl;

# interfaces
.implements Lorg/apache/xerces/dom/DeferredNode;


# static fields
.field static final serialVersionUID:J = 0x56ab1254629fc5fL


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

    invoke-direct {v3, v4, v5}, Lorg/apache/xerces/dom/EntityReferenceImpl;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    move-object v3, v0

    move v4, v2

    iput v4, v3, Lorg/apache/xerces/dom/DeferredEntityReferenceImpl;->fNodeIndex:I

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/DeferredEntityReferenceImpl;->needsSyncData(Z)V

    return-void
.end method


# virtual methods
.method public getNodeIndex()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/dom/DeferredEntityReferenceImpl;->fNodeIndex:I

    move v0, v1

    return v0
.end method

.method protected synchronizeChildren()V
    .locals 5

    move-object v0, p0

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/xerces/dom/DeferredEntityReferenceImpl;->needsSyncChildren(Z)V

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/xerces/dom/DeferredEntityReferenceImpl;->isReadOnly(Z)V

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/DeferredEntityReferenceImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v1, v2

    move-object v2, v1

    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/dom/DeferredEntityReferenceImpl;->fNodeIndex:I

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->synchronizeChildren(Lorg/apache/xerces/dom/ParentNode;I)V

    move-object v2, v0

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/dom/DeferredEntityReferenceImpl;->setReadOnly(ZZ)V

    return-void
.end method

.method protected synchronizeData()V
    .locals 5

    move-object v0, p0

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/xerces/dom/DeferredEntityReferenceImpl;->needsSyncData(Z)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/DeferredEntityReferenceImpl;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    check-cast v2, Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v1, v2

    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/dom/DeferredEntityReferenceImpl;->fNodeIndex:I

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/xerces/dom/DeferredEntityReferenceImpl;->name:Ljava/lang/String;

    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/dom/DeferredEntityReferenceImpl;->fNodeIndex:I

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeValue(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/xerces/dom/DeferredEntityReferenceImpl;->baseURI:Ljava/lang/String;

    return-void
.end method
