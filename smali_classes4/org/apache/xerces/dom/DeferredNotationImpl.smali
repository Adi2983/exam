.class public Lorg/apache/xerces/dom/DeferredNotationImpl;
.super Lorg/apache/xerces/dom/NotationImpl;

# interfaces
.implements Lorg/apache/xerces/dom/DeferredNode;


# static fields
.field static final serialVersionUID:J = 0x4f2d6dee39d1f240L


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

    invoke-direct {v3, v4, v5}, Lorg/apache/xerces/dom/NotationImpl;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    move-object v3, v0

    move v4, v2

    iput v4, v3, Lorg/apache/xerces/dom/DeferredNotationImpl;->fNodeIndex:I

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/DeferredNotationImpl;->needsSyncData(Z)V

    return-void
.end method


# virtual methods
.method public getNodeIndex()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/dom/DeferredNotationImpl;->fNodeIndex:I

    move v0, v1

    return v0
.end method

.method protected synchronizeData()V
    .locals 6

    move-object v0, p0

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/DeferredNotationImpl;->needsSyncData(Z)V

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/DeferredNotationImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v1, v3

    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/dom/DeferredNotationImpl;->fNodeIndex:I

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lorg/apache/xerces/dom/DeferredNotationImpl;->name:Ljava/lang/String;

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/dom/DeferredNotationImpl;->fNodeIndex:I

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(I)S

    move-result v3

    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/dom/DeferredNotationImpl;->fNodeIndex:I

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeValue(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lorg/apache/xerces/dom/DeferredNotationImpl;->publicId:Ljava/lang/String;

    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/dom/DeferredNotationImpl;->fNodeIndex:I

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeURI(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lorg/apache/xerces/dom/DeferredNotationImpl;->systemId:Ljava/lang/String;

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/dom/DeferredNotationImpl;->fNodeIndex:I

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(I)I

    move-result v3

    move v2, v3

    move-object v3, v1

    move v4, v2

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(I)S

    move-result v3

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lorg/apache/xerces/dom/DeferredNotationImpl;->baseURI:Ljava/lang/String;

    return-void
.end method
