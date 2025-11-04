.class public Lorg/apache/xerces/dom/NamedNodeMapImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/w3c/dom/NamedNodeMap;
.implements Ljava/io/Serializable;


# static fields
.field protected static final CHANGED:S = 0x2s

.field protected static final HASDEFAULTS:S = 0x4s

.field protected static final READONLY:S = 0x1s

.field static final serialVersionUID:J = -0x61b069b6b67df684L


# instance fields
.field protected flags:S

.field protected nodes:Ljava/util/List;

.field protected ownerNode:Lorg/apache/xerces/dom/NodeImpl;


# direct methods
.method protected constructor <init>(Lorg/apache/xerces/dom/NodeImpl;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/dom/NamedNodeMapImpl;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    if-eqz v2, :cond_0

    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    check-cast v5, Ljava/util/Vector;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v2, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    move-object v2, v5

    move-object v5, v2

    if-eqz v5, :cond_0

    move-object v5, v0

    :try_start_0
    new-instance v6, Ljava/util/Vector;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v2

    invoke-direct {v7, v8}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    iput-object v6, v5, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    :cond_0
    move-object v5, v1

    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    return-void

    :catchall_0
    move-exception v5

    move-object v3, v5

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    move-object v5, v3

    throw v5
.end method


# virtual methods
.method protected addItem(Lorg/w3c/dom/Node;)I
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->findNamePoint(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move v2, v3

    move v3, v2

    if-ltz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    move v4, v2

    move-object v5, v1

    invoke-interface {v3, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :goto_0
    move v3, v2

    move v0, v3

    return v0

    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->findNamePoint(Ljava/lang/String;I)I

    move-result v3

    move v2, v3

    move v3, v2

    if-ltz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    move v4, v2

    move-object v5, v1

    invoke-interface {v3, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    move v4, v2

    rsub-int/lit8 v3, v4, -0x1

    move v2, v3

    const/4 v3, 0x0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    if-ne v3, v4, :cond_2

    move-object v3, v0

    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const/4 v6, 0x5

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, v3, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    move v4, v2

    move-object v5, v1

    invoke-interface {v3, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method final changed(Z)V
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-short v3, v3, Lorg/apache/xerces/dom/NamedNodeMapImpl;->flags:S

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    int-to-short v3, v3

    :goto_0
    iput-short v3, v2, Lorg/apache/xerces/dom/NamedNodeMapImpl;->flags:S

    return-void

    :cond_0
    move-object v3, v0

    iget-short v3, v3, Lorg/apache/xerces/dom/NamedNodeMapImpl;->flags:S

    const/4 v4, -0x3

    and-int/lit8 v3, v3, -0x3

    int-to-short v3, v3

    goto :goto_0
.end method

.method final changed()Z
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-short v1, v1, Lorg/apache/xerces/dom/NamedNodeMapImpl;->flags:S

    const/4 v2, 0x2

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected cloneContent(Lorg/apache/xerces/dom/NamedNodeMapImpl;)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    iget-object v7, v7, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    move-object v2, v7

    move-object v7, v2

    if-eqz v7, :cond_0

    move-object v7, v2

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    move v3, v7

    move v7, v3

    if-eqz v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    if-nez v7, :cond_1

    move-object v7, v0

    new-instance v8, Ljava/util/ArrayList;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move v10, v3

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v8, v7, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    :goto_0
    const/4 v7, 0x0

    move v4, v7

    :goto_1
    move v7, v4

    move v8, v3

    if-lt v7, v8, :cond_2

    :cond_0
    return-void

    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_2
    move-object v7, v1

    iget-object v7, v7, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    move v8, v4

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/xerces/dom/NodeImpl;

    move-object v5, v7

    move-object v7, v5

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lorg/apache/xerces/dom/NodeImpl;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/apache/xerces/dom/NodeImpl;

    move-object v6, v7

    move-object v7, v6

    move-object v8, v5

    invoke-virtual {v8}, Lorg/apache/xerces/dom/NodeImpl;->isSpecified()Z

    move-result v8

    invoke-virtual {v7, v8}, Lorg/apache/xerces/dom/NodeImpl;->isSpecified(Z)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    move-object v8, v6

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method protected cloneMap(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const/4 v6, 0x5

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v4

    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v2, v4

    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move v5, v2

    if-lt v4, v5, :cond_2

    :cond_1
    move-object v4, v1

    move-object v0, v4

    return-object v0

    :cond_2
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    move v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public cloneMap(Lorg/apache/xerces/dom/NodeImpl;)Lorg/apache/xerces/dom/NamedNodeMapImpl;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    new-instance v3, Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lorg/apache/xerces/dom/NamedNodeMapImpl;-><init>(Lorg/apache/xerces/dom/NodeImpl;)V

    move-object v2, v3

    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->cloneContent(Lorg/apache/xerces/dom/NamedNodeMapImpl;)V

    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method protected findNamePoint(Ljava/lang/String;I)I
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const/4 v7, 0x0

    move v3, v7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    if-eqz v7, :cond_0

    move v7, v2

    move v4, v7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v5, v7

    :goto_0
    move v7, v4

    move v8, v5

    if-le v7, v8, :cond_1

    move v7, v4

    move v8, v3

    if-le v7, v8, :cond_0

    move v7, v4

    move v3, v7

    :cond_0
    const/4 v7, -0x1

    move v8, v3

    rsub-int/lit8 v7, v8, -0x1

    move v0, v7

    :goto_1
    return v0

    :cond_1
    move v7, v4

    move v8, v5

    add-int/2addr v7, v8

    const/4 v8, 0x2

    div-int/lit8 v7, v7, 0x2

    move v3, v7

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    move v9, v3

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Node;

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    move v6, v7

    move v7, v6

    if-nez v7, :cond_2

    move v7, v3

    move v0, v7

    goto :goto_1

    :cond_2
    move v7, v6

    if-gez v7, :cond_3

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v5, v7

    goto :goto_0

    :cond_3
    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v4, v7

    goto :goto_0
.end method

.method protected findNamePoint(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    if-nez v8, :cond_0

    const/4 v8, -0x1

    move v0, v8

    :goto_0
    return v0

    :cond_0
    move-object v8, v2

    if-nez v8, :cond_1

    const/4 v8, -0x1

    move v0, v8

    goto :goto_0

    :cond_1
    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move v3, v8

    const/4 v8, 0x0

    move v4, v8

    :goto_1
    move v8, v4

    move v9, v3

    if-lt v8, v9, :cond_2

    const/4 v8, -0x1

    move v0, v8

    goto :goto_0

    :cond_2
    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    move v9, v4

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/xerces/dom/NodeImpl;

    move-object v5, v8

    move-object v8, v5

    invoke-virtual {v8}, Lorg/apache/xerces/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    move-object v8, v5

    invoke-virtual {v8}, Lorg/apache/xerces/dom/NodeImpl;->getLocalName()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    move-object v8, v1

    if-nez v8, :cond_4

    move-object v8, v6

    if-nez v8, :cond_5

    move-object v8, v2

    move-object v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    move-object v8, v7

    if-nez v8, :cond_5

    move-object v8, v2

    move-object v9, v5

    invoke-virtual {v9}, Lorg/apache/xerces/dom/NodeImpl;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_3
    move v8, v4

    move v0, v8

    goto :goto_0

    :cond_4
    move-object v8, v1

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move-object v8, v2

    move-object v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v8, v4

    move v0, v8

    goto :goto_0

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method protected getItem(I)Ljava/lang/Object;
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    move v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public getLength()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->findNamePoint(Ljava/lang/String;I)I

    move-result v3

    move v2, v3

    move v3, v2

    if-gez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    move-object v0, v3

    return-object v0

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    move v4, v2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Node;

    goto :goto_0
.end method

.method protected getNamedItemIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->findNamePoint(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    move v0, v3

    return v0
.end method

.method public getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->findNamePoint(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v3, v4

    move v4, v3

    if-gez v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    move-object v0, v4

    return-object v0

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    move v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Node;

    goto :goto_0
.end method

.method getReadOnly()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->isReadOnly()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method final hasDefaults(Z)V
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-short v3, v3, Lorg/apache/xerces/dom/NamedNodeMapImpl;->flags:S

    const/4 v4, 0x4

    or-int/lit8 v3, v3, 0x4

    int-to-short v3, v3

    :goto_0
    iput-short v3, v2, Lorg/apache/xerces/dom/NamedNodeMapImpl;->flags:S

    return-void

    :cond_0
    move-object v3, v0

    iget-short v3, v3, Lorg/apache/xerces/dom/NamedNodeMapImpl;->flags:S

    const/4 v4, -0x5

    and-int/lit8 v3, v3, -0x5

    int-to-short v3, v3

    goto :goto_0
.end method

.method final hasDefaults()Z
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-short v1, v1, Lorg/apache/xerces/dom/NamedNodeMapImpl;->flags:S

    const/4 v2, 0x4

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method final isReadOnly(Z)V
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-short v3, v3, Lorg/apache/xerces/dom/NamedNodeMapImpl;->flags:S

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    int-to-short v3, v3

    :goto_0
    iput-short v3, v2, Lorg/apache/xerces/dom/NamedNodeMapImpl;->flags:S

    return-void

    :cond_0
    move-object v3, v0

    iget-short v3, v3, Lorg/apache/xerces/dom/NamedNodeMapImpl;->flags:S

    const/4 v4, -0x2

    and-int/lit8 v3, v3, -0x2

    int-to-short v3, v3

    goto :goto_0
.end method

.method final isReadOnly()Z
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-short v1, v1, Lorg/apache/xerces/dom/NamedNodeMapImpl;->flags:S

    const/4 v2, 0x1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    if-eqz v2, :cond_0

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    move v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;

    :goto_0
    move-object v0, v2

    return-object v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected precedes(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    if-eqz v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-lt v6, v7, :cond_1

    :cond_0
    const/4 v6, 0x0

    move v0, v6

    :goto_1
    return v0

    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    move v7, v4

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Node;

    move-object v5, v6

    move-object v6, v5

    move-object v7, v1

    if-ne v6, v7, :cond_2

    const/4 v6, 0x1

    move v0, v6

    goto :goto_1

    :cond_2
    move-object v6, v5

    move-object v7, v2

    if-ne v6, v7, :cond_3

    const/4 v6, 0x0

    move v0, v6

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public removeAll()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method protected removeItem(I)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    if-eqz v2, :cond_0

    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    move v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    :cond_0
    return-void
.end method

.method public removeNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->isReadOnly()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v5, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    new-instance v4, Lorg/w3c/dom/DOMException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x7

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    :cond_0
    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->findNamePoint(Ljava/lang/String;I)I

    move-result v4

    move v2, v4

    move v4, v2

    if-gez v4, :cond_1

    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v5, "NOT_FOUND_ERR"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    new-instance v4, Lorg/w3c/dom/DOMException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/16 v6, 0x8

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    move v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/dom/NodeImpl;

    move-object v3, v4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    move v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    move-object v4, v3

    move-object v0, v4

    return-object v0
.end method

.method public removeNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->isReadOnly()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v6, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    new-instance v5, Lorg/w3c/dom/DOMException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x7

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    :cond_0
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->findNamePoint(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move v3, v5

    move v5, v3

    if-gez v5, :cond_1

    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v6, "NOT_FOUND_ERR"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    new-instance v5, Lorg/w3c/dom/DOMException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/16 v7, 0x8

    move-object v8, v4

    invoke-direct {v6, v7, v8}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    move v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xerces/dom/NodeImpl;

    move-object v4, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    move v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    move-object v5, v4

    move-object v0, v5

    return-object v0
.end method

.method public setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/NamedNodeMapImpl;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    invoke-virtual {v5}, Lorg/apache/xerces/dom/NodeImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v5

    move-object v2, v5

    move-object v5, v2

    iget-boolean v5, v5, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v5, :cond_1

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->isReadOnly()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v6, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    new-instance v5, Lorg/w3c/dom/DOMException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x7

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    :cond_0
    move-object v5, v1

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v5

    move-object v6, v2

    if-eq v5, v6, :cond_1

    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v6, "WRONG_DOCUMENT_ERR"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    new-instance v5, Lorg/w3c/dom/DOMException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x4

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    :cond_1
    move-object v5, v0

    move-object v6, v1

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->findNamePoint(Ljava/lang/String;I)I

    move-result v5

    move v3, v5

    const/4 v5, 0x0

    move-object v4, v5

    move v5, v3

    if-ltz v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    move v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xerces/dom/NodeImpl;

    move-object v4, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    move v6, v3

    move-object v7, v1

    invoke-interface {v5, v6, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :goto_0
    move-object v5, v4

    move-object v0, v5

    return-object v0

    :cond_2
    const/4 v5, -0x1

    move v6, v3

    rsub-int/lit8 v5, v6, -0x1

    move v3, v5

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    if-ne v5, v6, :cond_3

    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const/4 v8, 0x5

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, v5, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    :cond_3
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    move v6, v3

    move-object v7, v1

    invoke-interface {v5, v6, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public setNamedItemNS(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/NamedNodeMapImpl;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    invoke-virtual {v5}, Lorg/apache/xerces/dom/NodeImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v5

    move-object v2, v5

    move-object v5, v2

    iget-boolean v5, v5, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v5, :cond_1

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->isReadOnly()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v6, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    new-instance v5, Lorg/w3c/dom/DOMException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x7

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    :cond_0
    move-object v5, v1

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v5

    move-object v6, v2

    if-eq v5, v6, :cond_1

    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v6, "WRONG_DOCUMENT_ERR"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    new-instance v5, Lorg/w3c/dom/DOMException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x4

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    :cond_1
    move-object v5, v0

    move-object v6, v1

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    move-object v7, v1

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->findNamePoint(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move v3, v5

    const/4 v5, 0x0

    move-object v4, v5

    move v5, v3

    if-ltz v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    move v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xerces/dom/NodeImpl;

    move-object v4, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    move v6, v3

    move-object v7, v1

    invoke-interface {v5, v6, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :goto_0
    move-object v5, v4

    move-object v0, v5

    return-object v0

    :cond_2
    move-object v5, v0

    move-object v6, v1

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->findNamePoint(Ljava/lang/String;I)I

    move-result v5

    move v3, v5

    move v5, v3

    if-ltz v5, :cond_3

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    move v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xerces/dom/NodeImpl;

    move-object v4, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    move v6, v3

    move-object v7, v1

    invoke-interface {v5, v6, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    const/4 v5, -0x1

    move v6, v3

    rsub-int/lit8 v5, v6, -0x1

    move v3, v5

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    if-ne v5, v6, :cond_4

    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const/4 v8, 0x5

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, v5, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    :cond_4
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    move v6, v3

    move-object v7, v1

    invoke-interface {v5, v6, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected setOwnerDocument(Lorg/apache/xerces/dom/CoreDocumentImpl;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v2, v4

    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move v5, v2

    if-lt v4, v5, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/dom/NodeImpl;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/NodeImpl;->setOwnerDocument(Lorg/apache/xerces/dom/CoreDocumentImpl;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method setReadOnly(ZZ)V
    .locals 7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, v0

    move v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->isReadOnly(Z)V

    move v4, v2

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move v3, v4

    :goto_0
    move v4, v3

    if-gez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    move v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/dom/NodeImpl;

    move v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/dom/NodeImpl;->setReadOnly(ZZ)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_0
.end method
