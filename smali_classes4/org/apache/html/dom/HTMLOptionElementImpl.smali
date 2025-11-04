.class public Lorg/apache/html/dom/HTMLOptionElementImpl;
.super Lorg/apache/html/dom/HTMLElementImpl;

# interfaces
.implements Lorg/w3c/dom/html/HTMLOptionElement;


# static fields
.field private static final serialVersionUID:J = -0x3e4439af5ea1121bL


# direct methods
.method public constructor <init>(Lorg/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lorg/apache/html/dom/HTMLElementImpl;-><init>(Lorg/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getDefaultSelected()Z
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "default-selected"

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLOptionElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public getDisabled()Z
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "disabled"

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLOptionElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public getIndex()I
    .locals 6

    move-object v0, p0

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/html/dom/HTMLOptionElementImpl;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v1, v4

    :goto_0
    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    instance-of v4, v4, Lorg/w3c/dom/html/HTMLSelectElement;

    if-eqz v4, :cond_2

    :cond_0
    move-object v4, v1

    if-eqz v4, :cond_1

    move-object v4, v1

    check-cast v4, Lorg/w3c/dom/html/HTMLElement;

    const-string/jumbo v5, "OPTION"

    invoke-interface {v4, v5}, Lorg/w3c/dom/html/HTMLElement;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    move-object v2, v4

    const/4 v4, 0x0

    move v3, v4

    :goto_1
    move v4, v3

    move-object v5, v2

    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lt v4, v5, :cond_3

    :cond_1
    const/4 v4, -0x1

    move v0, v4

    :goto_2
    return v0

    :cond_2
    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v1, v4

    goto :goto_0

    :cond_3
    move-object v4, v2

    move v5, v3

    invoke-interface {v4, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v5, v0

    if-ne v4, v5, :cond_4

    move v4, v3

    move v0, v4

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public getLabel()Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    const-string/jumbo v3, "label"

    invoke-virtual {v2, v3}, Lorg/apache/html/dom/HTMLOptionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLOptionElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getSelected()Z
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "selected"

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLOptionElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 6

    move-object v0, p0

    new-instance v3, Ljava/lang/StringBuffer;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    move-object v2, v3

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/html/dom/HTMLOptionElementImpl;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    if-nez v3, :cond_0

    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0

    :cond_0
    move-object v3, v1

    instance-of v3, v3, Lorg/w3c/dom/Text;

    if-eqz v3, :cond_1

    move-object v3, v2

    move-object v4, v1

    check-cast v4, Lorg/w3c/dom/Text;

    invoke-interface {v4}, Lorg/w3c/dom/Text;->getData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    :cond_1
    move-object v3, v1

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v1, v3

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "value"

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLOptionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public setDefaultSelected(Z)V
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const-string/jumbo v3, "default-selected"

    move v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLOptionElementImpl;->setAttribute(Ljava/lang/String;Z)V

    return-void
.end method

.method public setDisabled(Z)V
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const-string/jumbo v3, "disabled"

    move v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLOptionElementImpl;->setAttribute(Ljava/lang/String;Z)V

    return-void
.end method

.method public setIndex(I)V
    .locals 8

    move-object v0, p0

    move v1, p1

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/html/dom/HTMLOptionElementImpl;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v2, v5

    :goto_0
    move-object v5, v2

    if-eqz v5, :cond_0

    move-object v5, v2

    instance-of v5, v5, Lorg/w3c/dom/html/HTMLSelectElement;

    if-eqz v5, :cond_2

    :cond_0
    move-object v5, v2

    if-eqz v5, :cond_1

    move-object v5, v2

    check-cast v5, Lorg/w3c/dom/html/HTMLElement;

    const-string/jumbo v6, "OPTION"

    invoke-interface {v5, v6}, Lorg/w3c/dom/html/HTMLElement;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    move-object v3, v5

    move-object v5, v3

    move v6, v1

    invoke-interface {v5, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v6, v0

    if-eq v5, v6, :cond_1

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/html/dom/HTMLOptionElementImpl;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v6, v0

    invoke-interface {v5, v6}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v5, v3

    move v6, v1

    invoke-interface {v5, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v4, v5

    move-object v5, v4

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v6, v0

    move-object v7, v4

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v5

    :cond_1
    return-void

    :cond_2
    move-object v5, v2

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v2, v5

    goto :goto_0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "label"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLOptionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const-string/jumbo v3, "selected"

    move v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLOptionElementImpl;->setAttribute(Ljava/lang/String;Z)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/html/dom/HTMLOptionElementImpl;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    if-nez v4, :cond_0

    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/html/dom/HTMLOptionElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v5

    move-object v6, v1

    invoke-interface {v5, v6}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/html/dom/HTMLOptionElementImpl;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/html/dom/HTMLOptionElementImpl;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v4

    return-void

    :cond_0
    move-object v4, v2

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v3, v4

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lorg/apache/html/dom/HTMLOptionElementImpl;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v4, v3

    move-object v2, v4

    goto :goto_0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "value"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLOptionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
