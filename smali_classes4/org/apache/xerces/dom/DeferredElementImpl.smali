.class public Lorg/apache/xerces/dom/DeferredElementImpl;
.super Lorg/apache/xerces/dom/ElementImpl;

# interfaces
.implements Lorg/apache/xerces/dom/DeferredNode;


# static fields
.field static final serialVersionUID:J = -0x6a74ccb2df45c8baL


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

    invoke-direct {v3, v4, v5}, Lorg/apache/xerces/dom/ElementImpl;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    move-object v3, v0

    move v4, v2

    iput v4, v3, Lorg/apache/xerces/dom/DeferredElementImpl;->fNodeIndex:I

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/DeferredElementImpl;->needsSyncChildren(Z)V

    return-void
.end method


# virtual methods
.method public final getNodeIndex()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/dom/DeferredElementImpl;->fNodeIndex:I

    move v0, v1

    return v0
.end method

.method protected final synchronizeChildren()V
    .locals 5

    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/DeferredElementImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v1, v2

    move-object v2, v1

    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/dom/DeferredElementImpl;->fNodeIndex:I

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->synchronizeChildren(Lorg/apache/xerces/dom/ParentNode;I)V

    return-void
.end method

.method protected final synchronizeData()V
    .locals 9

    move-object v0, p0

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/apache/xerces/dom/DeferredElementImpl;->needsSyncData(Z)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DeferredElementImpl;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    check-cast v6, Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v1, v6

    move-object v6, v1

    iget-boolean v6, v6, Lorg/apache/xerces/dom/DeferredDocumentImpl;->mutationEvents:Z

    move v2, v6

    move-object v6, v1

    const/4 v7, 0x0

    iput-boolean v7, v6, Lorg/apache/xerces/dom/DeferredDocumentImpl;->mutationEvents:Z

    move-object v6, v0

    move-object v7, v1

    move-object v8, v0

    iget v8, v8, Lorg/apache/xerces/dom/DeferredElementImpl;->fNodeIndex:I

    invoke-virtual {v7, v8}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lorg/apache/xerces/dom/DeferredElementImpl;->name:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/dom/DeferredElementImpl;->setupDefaultAttributes()V

    move-object v6, v1

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/dom/DeferredElementImpl;->fNodeIndex:I

    invoke-virtual {v6, v7}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(I)I

    move-result v6

    move v3, v6

    move v6, v3

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/dom/DeferredElementImpl;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v6

    move-object v4, v6

    :cond_0
    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeObject(I)Lorg/apache/xerces/dom/DeferredNode;

    move-result-object v6

    check-cast v6, Lorg/apache/xerces/dom/NodeImpl;

    move-object v5, v6

    move-object v6, v4

    move-object v7, v5

    invoke-interface {v6, v7}, Lorg/w3c/dom/NamedNodeMap;->setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v6, v1

    move v7, v3

    invoke-virtual {v6, v7}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getPrevSibling(I)I

    move-result v6

    move v3, v6

    move v6, v3

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    :cond_1
    move-object v6, v1

    move v7, v2

    iput-boolean v7, v6, Lorg/apache/xerces/dom/DeferredDocumentImpl;->mutationEvents:Z

    return-void
.end method
