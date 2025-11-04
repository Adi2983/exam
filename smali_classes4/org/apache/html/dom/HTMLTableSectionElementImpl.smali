.class public Lorg/apache/html/dom/HTMLTableSectionElementImpl;
.super Lorg/apache/html/dom/HTMLElementImpl;

# interfaces
.implements Lorg/w3c/dom/html/HTMLTableSectionElement;


# static fields
.field private static final serialVersionUID:J = 0xe1b063c79fd2b2bL


# instance fields
.field private _rows:Lorg/apache/html/dom/HTMLCollectionImpl;


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
.method public cloneNode(Z)Lorg/w3c/dom/Node;
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    move v4, v1

    invoke-super {v3, v4}, Lorg/apache/html/dom/HTMLElementImpl;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/apache/html/dom/HTMLTableSectionElementImpl;

    move-object v2, v3

    move-object v3, v2

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/html/dom/HTMLTableSectionElementImpl;->_rows:Lorg/apache/html/dom/HTMLCollectionImpl;

    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public deleteRow(I)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/html/dom/HTMLTableSectionElementImpl;->deleteRowX(I)I

    move-result v2

    return-void
.end method

.method deleteRowX(I)I
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/html/dom/HTMLTableSectionElementImpl;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v2, v3

    :goto_0
    move-object v3, v2

    if-nez v3, :cond_0

    move v3, v1

    move v0, v3

    :goto_1
    return v0

    :cond_0
    move-object v3, v2

    instance-of v3, v3, Lorg/w3c/dom/html/HTMLTableRowElement;

    if-eqz v3, :cond_2

    move v3, v1

    if-nez v3, :cond_1

    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/apache/html/dom/HTMLTableSectionElementImpl;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    const/4 v3, -0x1

    move v0, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    :cond_2
    move-object v3, v2

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v2, v3

    goto :goto_0
.end method

.method public getAlign()Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    const-string/jumbo v3, "align"

    invoke-virtual {v2, v3}, Lorg/apache/html/dom/HTMLTableSectionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLTableSectionElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getCh()Ljava/lang/String;
    .locals 5

    move-object v0, p0

    move-object v2, v0

    const-string/jumbo v3, "char"

    invoke-virtual {v2, v3}, Lorg/apache/html/dom/HTMLTableSectionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

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

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLTableSectionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getRows()Lorg/w3c/dom/html/HTMLCollection;
    .locals 7

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/html/dom/HTMLTableSectionElementImpl;->_rows:Lorg/apache/html/dom/HTMLCollectionImpl;

    if-nez v1, :cond_0

    move-object v1, v0

    new-instance v2, Lorg/apache/html/dom/HTMLCollectionImpl;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x7

    invoke-direct {v3, v4, v5}, Lorg/apache/html/dom/HTMLCollectionImpl;-><init>(Lorg/w3c/dom/html/HTMLElement;S)V

    iput-object v2, v1, Lorg/apache/html/dom/HTMLTableSectionElementImpl;->_rows:Lorg/apache/html/dom/HTMLCollectionImpl;

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/html/dom/HTMLTableSectionElementImpl;->_rows:Lorg/apache/html/dom/HTMLCollectionImpl;

    move-object v0, v1

    return-object v0
.end method

.method public getVAlign()Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    const-string/jumbo v3, "valign"

    invoke-virtual {v2, v3}, Lorg/apache/html/dom/HTMLTableSectionElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLTableSectionElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public insertRow(I)Lorg/w3c/dom/html/HTMLElement;
    .locals 8

    move-object v0, p0

    move v1, p1

    new-instance v3, Lorg/apache/html/dom/HTMLTableRowElementImpl;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/html/dom/HTMLTableSectionElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v5

    check-cast v5, Lorg/apache/html/dom/HTMLDocumentImpl;

    const-string/jumbo v6, "TR"

    invoke-direct {v4, v5, v6}, Lorg/apache/html/dom/HTMLTableRowElementImpl;-><init>(Lorg/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    move-object v2, v3

    move-object v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/apache/html/dom/HTMLTableRowElementImpl;->insertCell(I)Lorg/w3c/dom/html/HTMLElement;

    move-result-object v3

    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lorg/apache/html/dom/HTMLTableSectionElementImpl;->insertRowX(ILorg/apache/html/dom/HTMLTableRowElementImpl;)I

    move-result v3

    if-ltz v3, :cond_0

    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/apache/html/dom/HTMLTableSectionElementImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    :cond_0
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method insertRowX(ILorg/apache/html/dom/HTMLTableRowElementImpl;)I
    .locals 7

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/html/dom/HTMLTableSectionElementImpl;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v3, v4

    :goto_0
    move-object v4, v3

    if-nez v4, :cond_0

    move v4, v1

    move v0, v4

    :goto_1
    return v0

    :cond_0
    move-object v4, v3

    instance-of v4, v4, Lorg/w3c/dom/html/HTMLTableRowElement;

    if-eqz v4, :cond_2

    move v4, v1

    if-nez v4, :cond_1

    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lorg/apache/html/dom/HTMLTableSectionElementImpl;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v4

    const/4 v4, -0x1

    move v0, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    :cond_2
    move-object v4, v3

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v3, v4

    goto :goto_0
.end method

.method public setAlign(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "align"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLTableSectionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
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

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLTableSectionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setChOff(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "charoff"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLTableSectionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVAlign(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "valign"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLTableSectionElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
