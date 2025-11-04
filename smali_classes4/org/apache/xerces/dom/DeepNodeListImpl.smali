.class public Lorg/apache/xerces/dom/DeepNodeListImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/w3c/dom/NodeList;


# instance fields
.field protected changes:I

.field protected enableNS:Z

.field protected nodes:Ljava/util/ArrayList;

.field protected nsName:Ljava/lang/String;

.field protected rootNode:Lorg/apache/xerces/dom/NodeImpl;

.field protected tagName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/dom/NodeImpl;Ljava/lang/String;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lorg/apache/xerces/dom/DeepNodeListImpl;->changes:I

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lorg/apache/xerces/dom/DeepNodeListImpl;->enableNS:Z

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/apache/xerces/dom/DeepNodeListImpl;->rootNode:Lorg/apache/xerces/dom/NodeImpl;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lorg/apache/xerces/dom/DeepNodeListImpl;->tagName:Ljava/lang/String;

    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lorg/apache/xerces/dom/DeepNodeListImpl;->nodes:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Lorg/apache/xerces/dom/DeepNodeListImpl;-><init>(Lorg/apache/xerces/dom/NodeImpl;Ljava/lang/String;)V

    move-object v4, v0

    move-object v5, v2

    if-eqz v5, :cond_0

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v2

    :goto_0
    iput-object v5, v4, Lorg/apache/xerces/dom/DeepNodeListImpl;->nsName:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lorg/apache/xerces/dom/DeepNodeListImpl;->enableNS:Z

    return-void

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getLength()I
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Lorg/apache/xerces/dom/DeepNodeListImpl;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/DeepNodeListImpl;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 8

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DeepNodeListImpl;->rootNode:Lorg/apache/xerces/dom/NodeImpl;

    invoke-virtual {v4}, Lorg/apache/xerces/dom/NodeImpl;->changes()I

    move-result v4

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/dom/DeepNodeListImpl;->changes:I

    if-eq v4, v5, :cond_0

    move-object v4, v0

    new-instance v5, Ljava/util/ArrayList;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Lorg/apache/xerces/dom/DeepNodeListImpl;->nodes:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/DeepNodeListImpl;->rootNode:Lorg/apache/xerces/dom/NodeImpl;

    invoke-virtual {v5}, Lorg/apache/xerces/dom/NodeImpl;->changes()I

    move-result v5

    iput v5, v4, Lorg/apache/xerces/dom/DeepNodeListImpl;->changes:I

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DeepNodeListImpl;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v4

    move v4, v1

    move v5, v3

    if-ge v4, v5, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DeepNodeListImpl;->nodes:Ljava/util/ArrayList;

    move v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Node;

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_1
    move v4, v3

    if-nez v4, :cond_4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DeepNodeListImpl;->rootNode:Lorg/apache/xerces/dom/NodeImpl;

    move-object v2, v4

    :cond_2
    :goto_1
    move-object v4, v2

    if-eqz v4, :cond_3

    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/DeepNodeListImpl;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    :cond_3
    move-object v4, v2

    move-object v0, v4

    goto :goto_0

    :cond_4
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DeepNodeListImpl;->nodes:Ljava/util/ArrayList;

    move v5, v3

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/dom/NodeImpl;

    move-object v2, v4

    goto :goto_1

    :cond_5
    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/DeepNodeListImpl;->nextMatchingElementAfter(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v2, v4

    move-object v4, v2

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DeepNodeListImpl;->nodes:Ljava/util/ArrayList;

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_1
.end method

.method protected nextMatchingElementAfter(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 8

    move-object v0, p0

    move-object v1, p1

    :cond_0
    move-object v4, v1

    if-nez v4, :cond_1

    const/4 v4, 0x0

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_1
    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v1, v4

    :goto_1
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/DeepNodeListImpl;->rootNode:Lorg/apache/xerces/dom/NodeImpl;

    if-eq v4, v5, :cond_0

    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/dom/DeepNodeListImpl;->enableNS:Z

    if-nez v4, :cond_7

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DeepNodeListImpl;->tagName:Ljava/lang/String;

    const-string/jumbo v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object v4, v1

    check-cast v4, Lorg/apache/xerces/dom/ElementImpl;

    invoke-virtual {v4}, Lorg/apache/xerces/dom/ElementImpl;->getTagName()Ljava/lang/String;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/DeepNodeListImpl;->tagName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    move-object v4, v1

    move-object v0, v4

    goto :goto_0

    :cond_3
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/DeepNodeListImpl;->rootNode:Lorg/apache/xerces/dom/NodeImpl;

    if-eq v4, v5, :cond_4

    const/4 v4, 0x0

    move-object v5, v1

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    move-object v2, v6

    if-eq v4, v5, :cond_4

    move-object v4, v2

    move-object v1, v4

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    move-object v2, v4

    :goto_2
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/DeepNodeListImpl;->rootNode:Lorg/apache/xerces/dom/NodeImpl;

    if-ne v4, v5, :cond_5

    :goto_3
    move-object v4, v2

    move-object v1, v4

    goto :goto_1

    :cond_5
    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v2, v4

    move-object v4, v2

    if-eqz v4, :cond_6

    goto :goto_3

    :cond_6
    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v1, v4

    goto :goto_2

    :cond_7
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DeepNodeListImpl;->tagName:Ljava/lang/String;

    const-string/jumbo v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DeepNodeListImpl;->nsName:Ljava/lang/String;

    if-eqz v4, :cond_8

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DeepNodeListImpl;->nsName:Ljava/lang/String;

    const-string/jumbo v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object v4, v1

    move-object v0, v4

    goto/16 :goto_0

    :cond_8
    move-object v4, v1

    check-cast v4, Lorg/apache/xerces/dom/ElementImpl;

    move-object v3, v4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DeepNodeListImpl;->nsName:Ljava/lang/String;

    if-nez v4, :cond_9

    move-object v4, v3

    invoke-virtual {v4}, Lorg/apache/xerces/dom/ElementImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    :cond_9
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DeepNodeListImpl;->nsName:Ljava/lang/String;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DeepNodeListImpl;->nsName:Ljava/lang/String;

    move-object v5, v3

    invoke-virtual {v5}, Lorg/apache/xerces/dom/ElementImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_a
    move-object v4, v1

    move-object v0, v4

    goto/16 :goto_0

    :cond_b
    move-object v4, v1

    check-cast v4, Lorg/apache/xerces/dom/ElementImpl;

    move-object v3, v4

    move-object v4, v3

    invoke-virtual {v4}, Lorg/apache/xerces/dom/ElementImpl;->getLocalName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object v4, v3

    invoke-virtual {v4}, Lorg/apache/xerces/dom/ElementImpl;->getLocalName()Ljava/lang/String;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/DeepNodeListImpl;->tagName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DeepNodeListImpl;->nsName:Ljava/lang/String;

    if-eqz v4, :cond_c

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DeepNodeListImpl;->nsName:Ljava/lang/String;

    const-string/jumbo v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    move-object v4, v1

    move-object v0, v4

    goto/16 :goto_0

    :cond_c
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DeepNodeListImpl;->nsName:Ljava/lang/String;

    if-nez v4, :cond_d

    move-object v4, v3

    invoke-virtual {v4}, Lorg/apache/xerces/dom/ElementImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e

    :cond_d
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DeepNodeListImpl;->nsName:Ljava/lang/String;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DeepNodeListImpl;->nsName:Ljava/lang/String;

    move-object v5, v3

    invoke-virtual {v5}, Lorg/apache/xerces/dom/ElementImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_e
    move-object v4, v1

    move-object v0, v4

    goto/16 :goto_0
.end method
