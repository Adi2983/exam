.class public Lorg/apache/html/dom/HTMLTableCellElementImpl;
.super Lorg/apache/html/dom/HTMLElementImpl;

# interfaces
.implements Lorg/w3c/dom/html/HTMLTableCellElement;


# static fields
.field private static final serialVersionUID:J = -0x2165ab8391302042L


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
.method public getAbbr()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "abbr"

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLTableCellElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getAlign()Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    const-string/jumbo v3, "align"

    invoke-virtual {v2, v3}, Lorg/apache/html/dom/HTMLTableCellElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLTableCellElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getAxis()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "axis"

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLTableCellElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getBgColor()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "bgcolor"

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLTableCellElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getCellIndex()I
    .locals 6

    move-object v0, p0

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/html/dom/HTMLTableCellElementImpl;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v1, v4

    const/4 v4, 0x0

    move v3, v4

    move-object v4, v1

    instance-of v4, v4, Lorg/w3c/dom/html/HTMLTableRowElement;

    if-eqz v4, :cond_0

    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    if-nez v4, :cond_1

    :cond_0
    const/4 v4, -0x1

    move v0, v4

    :goto_1
    return v0

    :cond_1
    move-object v4, v2

    instance-of v4, v4, Lorg/w3c/dom/html/HTMLTableCellElement;

    if-eqz v4, :cond_3

    move-object v4, v2

    move-object v5, v0

    if-ne v4, v5, :cond_2

    move v4, v3

    move v0, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    :cond_3
    move-object v4, v2

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v2, v4

    goto :goto_0
.end method

.method public getCh()Ljava/lang/String;
    .locals 5

    move-object v0, p0

    move-object v2, v0

    const-string/jumbo v3, "char"

    invoke-virtual {v2, v3}, Lorg/apache/html/dom/HTMLTableCellElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    move-object v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    :cond_0
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public getChOff()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "charoff"

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLTableCellElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getColSpan()I
    .locals 4

    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    const-string/jumbo v3, "colspan"

    invoke-virtual {v2, v3}, Lorg/apache/html/dom/HTMLTableCellElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLTableCellElementImpl;->getInteger(Ljava/lang/String;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getHeaders()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "headers"

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLTableCellElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getHeight()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "height"

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLTableCellElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getNoWrap()Z
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "nowrap"

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLTableCellElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public getRowSpan()I
    .locals 4

    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    const-string/jumbo v3, "rowspan"

    invoke-virtual {v2, v3}, Lorg/apache/html/dom/HTMLTableCellElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLTableCellElementImpl;->getInteger(Ljava/lang/String;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getScope()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "scope"

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLTableCellElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getVAlign()Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    const-string/jumbo v3, "valign"

    invoke-virtual {v2, v3}, Lorg/apache/html/dom/HTMLTableCellElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLTableCellElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getWidth()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "width"

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLTableCellElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public setAbbr(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "abbr"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLTableCellElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAlign(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "align"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLTableCellElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAxis(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "axis"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLTableCellElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBgColor(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "bgcolor"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLTableCellElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCellIndex(I)V
    .locals 7

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/html/dom/HTMLTableCellElementImpl;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v2, v4

    move-object v4, v2

    instance-of v4, v4, Lorg/w3c/dom/html/HTMLTableRowElement;

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v3, v4

    :goto_0
    move-object v4, v3

    if-nez v4, :cond_1

    :cond_0
    move-object v4, v2

    move-object v5, v0

    invoke-interface {v4, v5}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v4

    :goto_1
    return-void

    :cond_1
    move-object v4, v3

    instance-of v4, v4, Lorg/w3c/dom/html/HTMLTableCellElement;

    if-eqz v4, :cond_4

    move v4, v1

    if-nez v4, :cond_3

    move-object v4, v0

    move-object v5, v3

    if-eq v4, v5, :cond_2

    move-object v4, v2

    move-object v5, v0

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v4

    :cond_2
    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, -0x1

    :cond_4
    move-object v4, v3

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v3, v4

    goto :goto_0
.end method

.method public setCh(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    move-object v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    :cond_0
    move-object v2, v0

    const-string/jumbo v3, "char"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLTableCellElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setChOff(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "charoff"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLTableCellElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setColSpan(I)V
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const-string/jumbo v3, "colspan"

    move v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLTableCellElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHeaders(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "headers"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLTableCellElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHeight(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "height"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLTableCellElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setNoWrap(Z)V
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const-string/jumbo v3, "nowrap"

    move v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLTableCellElementImpl;->setAttribute(Ljava/lang/String;Z)V

    return-void
.end method

.method public setRowSpan(I)V
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const-string/jumbo v3, "rowspan"

    move v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLTableCellElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setScope(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "scope"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLTableCellElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVAlign(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "valign"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLTableCellElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setWidth(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "width"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLTableCellElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
