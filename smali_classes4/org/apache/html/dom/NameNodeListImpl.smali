.class public Lorg/apache/html/dom/NameNodeListImpl;
.super Lorg/apache/xerces/dom/DeepNodeListImpl;

# interfaces
.implements Lorg/w3c/dom/NodeList;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/dom/NodeImpl;Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lorg/apache/xerces/dom/DeepNodeListImpl;-><init>(Lorg/apache/xerces/dom/NodeImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
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

    iget-object v5, v5, Lorg/apache/html/dom/NameNodeListImpl;->rootNode:Lorg/apache/xerces/dom/NodeImpl;

    if-eq v4, v5, :cond_0

    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    move-object v4, v1

    check-cast v4, Lorg/apache/xerces/dom/ElementImpl;

    const-string/jumbo v5, "name"

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/ElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    move-object v4, v3

    const-string/jumbo v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/html/dom/NameNodeListImpl;->tagName:Ljava/lang/String;

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

    iget-object v5, v5, Lorg/apache/html/dom/NameNodeListImpl;->rootNode:Lorg/apache/xerces/dom/NodeImpl;

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

    iget-object v5, v5, Lorg/apache/html/dom/NameNodeListImpl;->rootNode:Lorg/apache/xerces/dom/NodeImpl;

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
.end method
