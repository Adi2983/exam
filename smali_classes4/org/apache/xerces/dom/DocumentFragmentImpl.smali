.class public Lorg/apache/xerces/dom/DocumentFragmentImpl;
.super Lorg/apache/xerces/dom/ParentNode;

# interfaces
.implements Lorg/w3c/dom/DocumentFragment;


# static fields
.field static final serialVersionUID:J = -0x696c02ff5db4e68aL


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lorg/apache/xerces/dom/ParentNode;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/dom/CoreDocumentImpl;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lorg/apache/xerces/dom/ParentNode;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;)V

    return-void
.end method


# virtual methods
.method public getNodeName()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    const-string/jumbo v1, "#document-fragment"

    move-object v0, v1

    return-object v0
.end method

.method public getNodeType()S
    .locals 2

    move-object v0, p0

    const/16 v1, 0xb

    move v0, v1

    return v0
.end method

.method public normalize()V
    .locals 5

    move-object v0, p0

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/DocumentFragmentImpl;->isNormalized()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/DocumentFragmentImpl;->needsSyncChildren()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/DocumentFragmentImpl;->synchronizeChildren()V

    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/DocumentFragmentImpl;->firstChild:Lorg/apache/xerces/dom/ChildNode;

    move-object v1, v3

    :goto_1
    move-object v3, v1

    if-nez v3, :cond_2

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/DocumentFragmentImpl;->isNormalized(Z)V

    goto :goto_0

    :cond_2
    move-object v3, v1

    iget-object v3, v3, Lorg/apache/xerces/dom/ChildNode;->nextSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v2, v3

    move-object v3, v1

    invoke-virtual {v3}, Lorg/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    move-object v3, v2

    if-eqz v3, :cond_4

    move-object v3, v2

    invoke-virtual {v3}, Lorg/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    move-object v3, v1

    check-cast v3, Lorg/w3c/dom/Text;

    move-object v4, v2

    invoke-virtual {v4}, Lorg/apache/xerces/dom/ChildNode;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/Text;->appendData(Ljava/lang/String;)V

    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/DocumentFragmentImpl;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v3, v1

    move-object v2, v3

    :cond_3
    :goto_2
    move-object v3, v1

    invoke-virtual {v3}, Lorg/apache/xerces/dom/ChildNode;->normalize()V

    move-object v3, v2

    move-object v1, v3

    goto :goto_1

    :cond_4
    move-object v3, v1

    invoke-virtual {v3}, Lorg/apache/xerces/dom/ChildNode;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    move-object v3, v1

    invoke-virtual {v3}, Lorg/apache/xerces/dom/ChildNode;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    :cond_5
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/DocumentFragmentImpl;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    goto :goto_2
.end method
