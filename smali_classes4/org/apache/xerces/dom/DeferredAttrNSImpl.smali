.class public final Lorg/apache/xerces/dom/DeferredAttrNSImpl;
.super Lorg/apache/xerces/dom/AttrNSImpl;

# interfaces
.implements Lorg/apache/xerces/dom/DeferredNode;


# static fields
.field static final serialVersionUID:J = 0x544e780ac09de522L


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

    invoke-direct {v3, v4, v5}, Lorg/apache/xerces/dom/AttrNSImpl;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    move-object v3, v0

    move v4, v2

    iput v4, v3, Lorg/apache/xerces/dom/DeferredAttrNSImpl;->fNodeIndex:I

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/DeferredAttrNSImpl;->needsSyncData(Z)V

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/DeferredAttrNSImpl;->needsSyncChildren(Z)V

    return-void
.end method


# virtual methods
.method public getNodeIndex()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/dom/DeferredAttrNSImpl;->fNodeIndex:I

    move v0, v1

    return v0
.end method

.method protected synchronizeChildren()V
    .locals 5

    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/DeferredAttrNSImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v1, v2

    move-object v2, v1

    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/dom/DeferredAttrNSImpl;->fNodeIndex:I

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->synchronizeChildren(Lorg/apache/xerces/dom/AttrImpl;I)V

    return-void
.end method

.method protected synchronizeData()V
    .locals 9

    move-object v0, p0

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/DeferredAttrNSImpl;->needsSyncData(Z)V

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xerces/dom/DeferredAttrNSImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v5

    check-cast v5, Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v1, v5

    move-object v5, v0

    move-object v6, v1

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/dom/DeferredAttrNSImpl;->fNodeIndex:I

    invoke-virtual {v6, v7}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/apache/xerces/dom/DeferredAttrNSImpl;->name:Ljava/lang/String;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/DeferredAttrNSImpl;->name:Ljava/lang/String;

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    move v2, v5

    move v5, v2

    if-gez v5, :cond_0

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DeferredAttrNSImpl;->name:Ljava/lang/String;

    iput-object v6, v5, Lorg/apache/xerces/dom/DeferredAttrNSImpl;->localName:Ljava/lang/String;

    :goto_0
    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/dom/DeferredAttrNSImpl;->fNodeIndex:I

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(I)I

    move-result v5

    move v3, v5

    move-object v5, v0

    move v6, v3

    const/16 v7, 0x20

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/DeferredAttrNSImpl;->isSpecified(Z)V

    move-object v5, v0

    move v6, v3

    const/16 v7, 0x200

    and-int/lit16 v6, v6, 0x200

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    :goto_2
    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/DeferredAttrNSImpl;->isIdAttribute(Z)V

    move-object v5, v0

    move-object v6, v1

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/dom/DeferredAttrNSImpl;->fNodeIndex:I

    invoke-virtual {v6, v7}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeURI(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/apache/xerces/dom/DeferredAttrNSImpl;->namespaceURI:Ljava/lang/String;

    move-object v5, v1

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/dom/DeferredAttrNSImpl;->fNodeIndex:I

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(I)I

    move-result v5

    move v4, v5

    move-object v5, v0

    move-object v6, v1

    move v7, v4

    invoke-virtual {v6, v7}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getTypeInfo(I)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v5, Lorg/apache/xerces/dom/DeferredAttrNSImpl;->type:Ljava/lang/Object;

    return-void

    :cond_0
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DeferredAttrNSImpl;->name:Ljava/lang/String;

    move v7, v2

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/apache/xerces/dom/DeferredAttrNSImpl;->localName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method
