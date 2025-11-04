.class public Lorg/apache/html/dom/HTMLSelectElementImpl;
.super Lorg/apache/html/dom/HTMLElementImpl;

# interfaces
.implements Lorg/w3c/dom/html/HTMLSelectElement;
.implements Lorg/apache/html/dom/HTMLFormControl;


# static fields
.field private static final serialVersionUID:J = -0x611ee50c1353f97bL


# instance fields
.field private _options:Lorg/w3c/dom/html/HTMLCollection;


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
.method public add(Lorg/w3c/dom/html/HTMLElement;Lorg/w3c/dom/html/HTMLElement;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lorg/apache/html/dom/HTMLSelectElementImpl;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    return-void
.end method

.method public blur()V
    .locals 0

    return-void
.end method

.method public cloneNode(Z)Lorg/w3c/dom/Node;
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Lorg/apache/html/dom/HTMLElementImpl;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/apache/html/dom/HTMLSelectElementImpl;

    move-object v2, v3

    move-object v3, v2

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/html/dom/HTMLSelectElementImpl;->_options:Lorg/w3c/dom/html/HTMLCollection;

    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public focus()V
    .locals 0

    return-void
.end method

.method public getChildNodes()Lorg/w3c/dom/NodeList;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/html/dom/HTMLSelectElementImpl;->getChildNodesUnoptimized()Lorg/w3c/dom/NodeList;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getDisabled()Z
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "disabled"

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLSelectElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public getLength()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/html/dom/HTMLSelectElementImpl;->getOptions()Lorg/w3c/dom/html/HTMLCollection;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/html/HTMLCollection;->getLength()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getMultiple()Z
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "multiple"

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLSelectElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLSelectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getOptions()Lorg/w3c/dom/html/HTMLCollection;
    .locals 7

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/html/dom/HTMLSelectElementImpl;->_options:Lorg/w3c/dom/html/HTMLCollection;

    if-nez v1, :cond_0

    move-object v1, v0

    new-instance v2, Lorg/apache/html/dom/HTMLCollectionImpl;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x6

    invoke-direct {v3, v4, v5}, Lorg/apache/html/dom/HTMLCollectionImpl;-><init>(Lorg/w3c/dom/html/HTMLElement;S)V

    iput-object v2, v1, Lorg/apache/html/dom/HTMLSelectElementImpl;->_options:Lorg/w3c/dom/html/HTMLCollection;

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/html/dom/HTMLSelectElementImpl;->_options:Lorg/w3c/dom/html/HTMLCollection;

    move-object v0, v1

    return-object v0
.end method

.method public getSelectedIndex()I
    .locals 5

    move-object v0, p0

    move-object v3, v0

    const-string/jumbo v4, "OPTION"

    invoke-virtual {v3, v4}, Lorg/apache/html/dom/HTMLSelectElementImpl;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    move-object v1, v3

    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lt v3, v4, :cond_0

    const/4 v3, -0x1

    move v0, v3

    :goto_1
    return v0

    :cond_0
    move-object v3, v1

    move v4, v2

    invoke-interface {v3, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/html/HTMLOptionElement;

    invoke-interface {v3}, Lorg/w3c/dom/html/HTMLOptionElement;->getSelected()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v2

    move v0, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getSize()I
    .locals 4

    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    const-string/jumbo v3, "size"

    invoke-virtual {v2, v3}, Lorg/apache/html/dom/HTMLSelectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLSelectElementImpl;->getInteger(Ljava/lang/String;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getTabIndex()I
    .locals 4

    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    const-string/jumbo v3, "tabindex"

    invoke-virtual {v2, v3}, Lorg/apache/html/dom/HTMLSelectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLSelectElementImpl;->getInteger(Ljava/lang/String;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLSelectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "value"

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLSelectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public remove(I)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    const-string/jumbo v5, "OPTION"

    invoke-virtual {v4, v5}, Lorg/apache/html/dom/HTMLSelectElementImpl;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    move-object v2, v4

    move-object v4, v2

    move v5, v1

    invoke-interface {v4, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v3, v4

    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v5, v3

    invoke-interface {v4, v5}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v4

    :cond_0
    return-void
.end method

.method public setDisabled(Z)V
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const-string/jumbo v3, "disabled"

    move v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLSelectElementImpl;->setAttribute(Ljava/lang/String;Z)V

    return-void
.end method

.method public setMultiple(Z)V
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const-string/jumbo v3, "multiple"

    move v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLSelectElementImpl;->setAttribute(Ljava/lang/String;Z)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "name"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLSelectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSelectedIndex(I)V
    .locals 7

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    const-string/jumbo v5, "OPTION"

    invoke-virtual {v4, v5}, Lorg/apache/html/dom/HTMLSelectElementImpl;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    move-object v2, v4

    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move-object v5, v2

    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-lt v4, v5, :cond_0

    return-void

    :cond_0
    move-object v4, v2

    move v5, v3

    invoke-interface {v4, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/apache/html/dom/HTMLOptionElementImpl;

    move v5, v3

    move v6, v1

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v4, v5}, Lorg/apache/html/dom/HTMLOptionElementImpl;->setSelected(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public setSize(I)V
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const-string/jumbo v3, "size"

    move v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLSelectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTabIndex(I)V
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const-string/jumbo v3, "tabindex"

    move v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLSelectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "value"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLSelectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
