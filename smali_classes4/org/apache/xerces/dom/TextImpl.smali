.class public Lorg/apache/xerces/dom/TextImpl;
.super Lorg/apache/xerces/dom/CharacterDataImpl;

# interfaces
.implements Lorg/w3c/dom/CharacterData;
.implements Lorg/w3c/dom/Text;


# static fields
.field static final serialVersionUID:J = -0x497b8d082105594dL


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lorg/apache/xerces/dom/CharacterDataImpl;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lorg/apache/xerces/dom/CharacterDataImpl;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    return-void
.end method

.method private canModifyNext(Lorg/w3c/dom/Node;)Z
    .locals 9

    move-object v0, p0

    move-object v1, p1

    const/4 v7, 0x0

    move v2, v7

    move-object v7, v1

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v7

    move-object v3, v7

    :goto_0
    move-object v7, v3

    if-nez v7, :cond_0

    const/4 v7, 0x1

    move v0, v7

    :goto_1
    return v0

    :cond_0
    move-object v7, v3

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    move v4, v7

    move v7, v4

    const/4 v8, 0x5

    if-ne v7, v8, :cond_9

    move-object v7, v3

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v7

    move-object v5, v7

    move-object v7, v5

    if-nez v7, :cond_3

    const/4 v7, 0x0

    move v0, v7

    goto :goto_1

    :cond_1
    move-object v7, v5

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    move v6, v7

    move v7, v6

    const/4 v8, 0x3

    if-eq v7, v8, :cond_2

    move v7, v6

    const/4 v8, 0x4

    if-ne v7, v8, :cond_5

    :cond_2
    const/4 v7, 0x1

    move v2, v7

    :goto_2
    move-object v7, v5

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v7

    move-object v5, v7

    :cond_3
    move-object v7, v5

    if-nez v7, :cond_1

    :cond_4
    :goto_3
    move-object v7, v3

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v7

    move-object v3, v7

    goto :goto_0

    :cond_5
    move v7, v6

    const/4 v8, 0x5

    if-ne v7, v8, :cond_7

    move-object v7, v0

    move-object v8, v5

    invoke-direct {v7, v8}, Lorg/apache/xerces/dom/TextImpl;->canModifyNext(Lorg/w3c/dom/Node;)Z

    move-result v7

    if-nez v7, :cond_6

    const/4 v7, 0x0

    move v0, v7

    goto :goto_1

    :cond_6
    const/4 v7, 0x1

    move v2, v7

    goto :goto_2

    :cond_7
    move v7, v2

    if-eqz v7, :cond_8

    const/4 v7, 0x0

    move v0, v7

    goto :goto_1

    :cond_8
    const/4 v7, 0x1

    move v0, v7

    goto :goto_1

    :cond_9
    move v7, v4

    const/4 v8, 0x3

    if-eq v7, v8, :cond_4

    move v7, v4

    const/4 v8, 0x4

    if-ne v7, v8, :cond_a

    goto :goto_3

    :cond_a
    const/4 v7, 0x1

    move v0, v7

    goto :goto_1
.end method

.method private canModifyPrev(Lorg/w3c/dom/Node;)Z
    .locals 9

    move-object v0, p0

    move-object v1, p1

    const/4 v7, 0x0

    move v2, v7

    move-object v7, v1

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v7

    move-object v3, v7

    :goto_0
    move-object v7, v3

    if-nez v7, :cond_0

    const/4 v7, 0x1

    move v0, v7

    :goto_1
    return v0

    :cond_0
    move-object v7, v3

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    move v4, v7

    move v7, v4

    const/4 v8, 0x5

    if-ne v7, v8, :cond_9

    move-object v7, v3

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v7

    move-object v5, v7

    move-object v7, v5

    if-nez v7, :cond_3

    const/4 v7, 0x0

    move v0, v7

    goto :goto_1

    :cond_1
    move-object v7, v5

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    move v6, v7

    move v7, v6

    const/4 v8, 0x3

    if-eq v7, v8, :cond_2

    move v7, v6

    const/4 v8, 0x4

    if-ne v7, v8, :cond_5

    :cond_2
    const/4 v7, 0x1

    move v2, v7

    :goto_2
    move-object v7, v5

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v7

    move-object v5, v7

    :cond_3
    move-object v7, v5

    if-nez v7, :cond_1

    :cond_4
    :goto_3
    move-object v7, v3

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v7

    move-object v3, v7

    goto :goto_0

    :cond_5
    move v7, v6

    const/4 v8, 0x5

    if-ne v7, v8, :cond_7

    move-object v7, v0

    move-object v8, v5

    invoke-direct {v7, v8}, Lorg/apache/xerces/dom/TextImpl;->canModifyPrev(Lorg/w3c/dom/Node;)Z

    move-result v7

    if-nez v7, :cond_6

    const/4 v7, 0x0

    move v0, v7

    goto :goto_1

    :cond_6
    const/4 v7, 0x1

    move v2, v7

    goto :goto_2

    :cond_7
    move v7, v2

    if-eqz v7, :cond_8

    const/4 v7, 0x0

    move v0, v7

    goto :goto_1

    :cond_8
    const/4 v7, 0x1

    move v0, v7

    goto :goto_1

    :cond_9
    move v7, v4

    const/4 v8, 0x3

    if-eq v7, v8, :cond_4

    move v7, v4

    const/4 v8, 0x4

    if-ne v7, v8, :cond_a

    goto :goto_3

    :cond_a
    const/4 v7, 0x1

    move v0, v7

    goto :goto_1
.end method

.method private getWholeTextBackward(Lorg/w3c/dom/Node;Ljava/lang/StringBuffer;Lorg/w3c/dom/Node;)Z
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    const/4 v6, 0x0

    move v4, v6

    move-object v6, v3

    if-eqz v6, :cond_0

    move-object v6, v3

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    :goto_0
    move v4, v6

    :cond_0
    :goto_1
    move-object v6, v1

    if-nez v6, :cond_2

    move v6, v4

    if-eqz v6, :cond_7

    move-object v6, v0

    move-object v7, v3

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v7

    move-object v8, v2

    move-object v9, v3

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/xerces/dom/TextImpl;->getWholeTextBackward(Lorg/w3c/dom/Node;Ljava/lang/StringBuffer;Lorg/w3c/dom/Node;)Z

    move-result v6

    const/4 v6, 0x1

    move v0, v6

    :goto_2
    return v0

    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    move-object v6, v1

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    move v5, v6

    move v6, v5

    const/4 v7, 0x5

    if-ne v6, v7, :cond_3

    move-object v6, v0

    move-object v7, v1

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v7

    move-object v8, v2

    move-object v9, v1

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/xerces/dom/TextImpl;->getWholeTextBackward(Lorg/w3c/dom/Node;Ljava/lang/StringBuffer;Lorg/w3c/dom/Node;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    move v0, v6

    goto :goto_2

    :cond_3
    move v6, v5

    const/4 v7, 0x3

    if-eq v6, v7, :cond_4

    move v6, v5

    const/4 v7, 0x4

    if-ne v6, v7, :cond_6

    :cond_4
    move-object v6, v1

    check-cast v6, Lorg/apache/xerces/dom/TextImpl;

    move-object v7, v2

    invoke-virtual {v6, v7}, Lorg/apache/xerces/dom/TextImpl;->insertTextContent(Ljava/lang/StringBuffer;)V

    :cond_5
    move-object v6, v1

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v1, v6

    goto :goto_1

    :cond_6
    const/4 v6, 0x1

    move v0, v6

    goto :goto_2

    :cond_7
    const/4 v6, 0x0

    move v0, v6

    goto :goto_2
.end method

.method private getWholeTextForward(Lorg/w3c/dom/Node;Ljava/lang/StringBuffer;Lorg/w3c/dom/Node;)Z
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    const/4 v6, 0x0

    move v4, v6

    move-object v6, v3

    if-eqz v6, :cond_0

    move-object v6, v3

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    :goto_0
    move v4, v6

    :cond_0
    :goto_1
    move-object v6, v1

    if-nez v6, :cond_2

    move v6, v4

    if-eqz v6, :cond_7

    move-object v6, v0

    move-object v7, v3

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v7

    move-object v8, v2

    move-object v9, v3

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/xerces/dom/TextImpl;->getWholeTextForward(Lorg/w3c/dom/Node;Ljava/lang/StringBuffer;Lorg/w3c/dom/Node;)Z

    move-result v6

    const/4 v6, 0x1

    move v0, v6

    :goto_2
    return v0

    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    move-object v6, v1

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    move v5, v6

    move v6, v5

    const/4 v7, 0x5

    if-ne v6, v7, :cond_3

    move-object v6, v0

    move-object v7, v1

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v7

    move-object v8, v2

    move-object v9, v1

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/xerces/dom/TextImpl;->getWholeTextForward(Lorg/w3c/dom/Node;Ljava/lang/StringBuffer;Lorg/w3c/dom/Node;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    move v0, v6

    goto :goto_2

    :cond_3
    move v6, v5

    const/4 v7, 0x3

    if-eq v6, v7, :cond_4

    move v6, v5

    const/4 v7, 0x4

    if-ne v6, v7, :cond_6

    :cond_4
    move-object v6, v1

    check-cast v6, Lorg/apache/xerces/dom/NodeImpl;

    move-object v7, v2

    invoke-virtual {v6, v7}, Lorg/apache/xerces/dom/NodeImpl;->getTextContent(Ljava/lang/StringBuffer;)V

    :cond_5
    move-object v6, v1

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v1, v6

    goto :goto_1

    :cond_6
    const/4 v6, 0x1

    move v0, v6

    goto :goto_2

    :cond_7
    const/4 v6, 0x0

    move v0, v6

    goto :goto_2
.end method

.method private hasTextOnlyChildren(Lorg/w3c/dom/Node;)Z
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    move-object v2, v4

    move-object v4, v2

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    move-object v4, v2

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v2, v4

    :goto_1
    move-object v4, v2

    if-nez v4, :cond_1

    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    :cond_1
    move-object v4, v2

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    move v3, v4

    move v4, v3

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Lorg/apache/xerces/dom/TextImpl;->hasTextOnlyChildren(Lorg/w3c/dom/Node;)Z

    move-result v4

    move v0, v4

    goto :goto_0

    :cond_2
    move v4, v3

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    move v4, v3

    const/4 v5, 0x4

    if-eq v4, v5, :cond_3

    move v4, v3

    const/4 v5, 0x5

    if-eq v4, v5, :cond_3

    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    :cond_3
    move-object v4, v2

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v2, v4

    goto :goto_1
.end method


# virtual methods
.method public getNodeName()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    const-string/jumbo v1, "#text"

    move-object v0, v1

    return-object v0
.end method

.method public getNodeType()S
    .locals 2

    move-object v0, p0

    const/4 v1, 0x3

    move v0, v1

    return v0
.end method

.method public getWholeText()Ljava/lang/String;
    .locals 8

    move-object v0, p0

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/TextImpl;->needsSyncData()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/TextImpl;->synchronizeData()V

    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v3

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/TextImpl;->data:Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/TextImpl;->data:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/TextImpl;->data:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    :cond_1
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/TextImpl;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v5, v1

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/dom/TextImpl;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/xerces/dom/TextImpl;->getWholeTextBackward(Lorg/w3c/dom/Node;Ljava/lang/StringBuffer;Lorg/w3c/dom/Node;)Z

    move-result v3

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/TextImpl;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v5, v1

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/dom/TextImpl;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/xerces/dom/TextImpl;->getWholeTextForward(Lorg/w3c/dom/Node;Ljava/lang/StringBuffer;Lorg/w3c/dom/Node;)Z

    move-result v3

    new-instance v3, Ljava/lang/StringBuffer;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method protected insertTextContent(Ljava/lang/StringBuffer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/TextImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    :cond_0
    return-void
.end method

.method public isElementContentWhitespace()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/TextImpl;->needsSyncData()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/TextImpl;->synchronizeData()V

    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/TextImpl;->internalIsIgnorableWhitespace()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public isIgnorableWhitespace()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/TextImpl;->needsSyncData()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/TextImpl;->synchronizeData()V

    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/TextImpl;->internalIsIgnorableWhitespace()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public removeData()Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/TextImpl;->data:Ljava/lang/String;

    move-object v1, v2

    move-object v2, v0

    const-string/jumbo v3, ""

    iput-object v3, v2, Lorg/apache/xerces/dom/TextImpl;->data:Ljava/lang/String;

    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public replaceData(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/dom/TextImpl;->data:Ljava/lang/String;

    return-void
.end method

.method public replaceWholeText(Ljava/lang/String;)Lorg/w3c/dom/Text;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/dom/TextImpl;->needsSyncData()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/dom/TextImpl;->synchronizeData()V

    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/dom/TextImpl;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v2, v6

    move-object v6, v1

    if-eqz v6, :cond_1

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    :cond_1
    move-object v6, v2

    if-eqz v6, :cond_2

    move-object v6, v2

    move-object v7, v0

    invoke-interface {v6, v7}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v6

    :cond_2
    const/4 v6, 0x0

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_3
    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/dom/TextImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v6

    iget-boolean v6, v6, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v6, :cond_5

    move-object v6, v0

    move-object v7, v0

    invoke-direct {v6, v7}, Lorg/apache/xerces/dom/TextImpl;->canModifyPrev(Lorg/w3c/dom/Node;)Z

    move-result v6

    if-nez v6, :cond_4

    new-instance v6, Lorg/w3c/dom/DOMException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x7

    const-string/jumbo v9, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v10, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v6

    :cond_4
    move-object v6, v0

    move-object v7, v0

    invoke-direct {v6, v7}, Lorg/apache/xerces/dom/TextImpl;->canModifyNext(Lorg/w3c/dom/Node;)Z

    move-result v6

    if-nez v6, :cond_5

    new-instance v6, Lorg/w3c/dom/DOMException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x7

    const-string/jumbo v9, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v10, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v6

    :cond_5
    const/4 v6, 0x0

    move-object v3, v6

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/dom/TextImpl;->isReadOnly()Z

    move-result v6

    if-eqz v6, :cond_9

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/dom/TextImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Lorg/apache/xerces/dom/CoreDocumentImpl;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v6

    move-object v4, v6

    move-object v6, v2

    if-eqz v6, :cond_8

    move-object v6, v2

    move-object v7, v4

    move-object v8, v0

    invoke-interface {v6, v7, v8}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v6, v2

    move-object v7, v0

    invoke-interface {v6, v7}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v6, v4

    move-object v3, v6

    :goto_1
    move-object v6, v3

    invoke-interface {v6}, Lorg/w3c/dom/Text;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v4, v6

    :goto_2
    move-object v6, v4

    if-nez v6, :cond_a

    :cond_6
    move-object v6, v3

    invoke-interface {v6}, Lorg/w3c/dom/Text;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v5, v6

    :goto_3
    move-object v6, v5

    if-nez v6, :cond_c

    :cond_7
    move-object v6, v3

    move-object v0, v6

    goto :goto_0

    :cond_8
    move-object v6, v4

    move-object v0, v6

    goto/16 :goto_0

    :cond_9
    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Lorg/apache/xerces/dom/TextImpl;->setData(Ljava/lang/String;)V

    move-object v6, v0

    move-object v3, v6

    goto :goto_1

    :cond_a
    move-object v6, v4

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_b

    move-object v6, v4

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_b

    move-object v6, v4

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_6

    move-object v6, v0

    move-object v7, v4

    invoke-direct {v6, v7}, Lorg/apache/xerces/dom/TextImpl;->hasTextOnlyChildren(Lorg/w3c/dom/Node;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_b
    move-object v6, v2

    move-object v7, v4

    invoke-interface {v6, v7}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v6, v3

    move-object v4, v6

    move-object v6, v4

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v4, v6

    goto :goto_2

    :cond_c
    move-object v6, v5

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_d

    move-object v6, v5

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_d

    move-object v6, v5

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_7

    move-object v6, v0

    move-object v7, v5

    invoke-direct {v6, v7}, Lorg/apache/xerces/dom/TextImpl;->hasTextOnlyChildren(Lorg/w3c/dom/Node;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_d
    move-object v6, v2

    move-object v7, v5

    invoke-interface {v6, v7}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v6, v3

    move-object v5, v6

    move-object v6, v5

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v5, v6

    goto :goto_3
.end method

.method public setIgnorableWhitespace(Z)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/TextImpl;->needsSyncData()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/TextImpl;->synchronizeData()V

    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/dom/TextImpl;->isIgnorableWhitespace(Z)V

    return-void
.end method

.method public setValues(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    const/4 v4, 0x0

    iput-short v4, v3, Lorg/apache/xerces/dom/TextImpl;->flags:S

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/dom/TextImpl;->nextSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/dom/TextImpl;->previousSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/TextImpl;->setOwnerDocument(Lorg/apache/xerces/dom/CoreDocumentImpl;)V

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lorg/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    return-void
.end method

.method public splitText(I)Lorg/w3c/dom/Text;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/TextImpl;->isReadOnly()Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lorg/w3c/dom/DOMException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x7

    const-string/jumbo v7, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v8, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/TextImpl;->needsSyncData()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/TextImpl;->synchronizeData()V

    :cond_1
    move v4, v1

    if-ltz v4, :cond_2

    move v4, v1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/TextImpl;->data:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_3

    :cond_2
    new-instance v4, Lorg/w3c/dom/DOMException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x1

    const-string/jumbo v7, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v8, "INDEX_SIZE_ERR"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    :cond_3
    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/TextImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/TextImpl;->data:Ljava/lang/String;

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v4

    move-object v2, v4

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/TextImpl;->data:Ljava/lang/String;

    const/4 v6, 0x0

    move v7, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/TextImpl;->setNodeValue(Ljava/lang/String;)V

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/TextImpl;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v3, v4

    move-object v4, v3

    if-eqz v4, :cond_4

    move-object v4, v3

    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/TextImpl;->nextSibling:Lorg/apache/xerces/dom/ChildNode;

    invoke-interface {v4, v5, v6}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v4

    :cond_4
    move-object v4, v2

    move-object v0, v4

    return-object v0
.end method
