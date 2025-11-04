.class public Lorg/apache/html/dom/HTMLTableElementImpl;
.super Lorg/apache/html/dom/HTMLElementImpl;

# interfaces
.implements Lorg/w3c/dom/html/HTMLTableElement;


# static fields
.field private static final serialVersionUID:J = -0x195056a14d41939cL


# instance fields
.field private _bodies:Lorg/apache/html/dom/HTMLCollectionImpl;

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

    check-cast v3, Lorg/apache/html/dom/HTMLTableElementImpl;

    move-object v2, v3

    move-object v3, v2

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/html/dom/HTMLTableElementImpl;->_rows:Lorg/apache/html/dom/HTMLCollectionImpl;

    move-object v3, v2

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/html/dom/HTMLTableElementImpl;->_bodies:Lorg/apache/html/dom/HTMLCollectionImpl;

    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public declared-synchronized createCaption()Lorg/w3c/dom/html/HTMLElement;
    .locals 8

    move-object v0, p0

    move-object v6, p0

    monitor-enter v6

    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lorg/apache/html/dom/HTMLTableElementImpl;->getCaption()Lorg/w3c/dom/html/HTMLTableCaptionElement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    move-object v1, v2

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    move-object v0, v2

    :goto_0
    monitor-exit v6

    return-object v0

    :cond_0
    :try_start_1
    new-instance v2, Lorg/apache/html/dom/HTMLTableCaptionElementImpl;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/html/dom/HTMLTableElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v4

    check-cast v4, Lorg/apache/html/dom/HTMLDocumentImpl;

    const-string/jumbo v5, "CAPTION"

    invoke-direct {v3, v4, v5}, Lorg/apache/html/dom/HTMLTableCaptionElementImpl;-><init>(Lorg/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    move-object v1, v2

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/html/dom/HTMLTableElementImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    move-object v2, v1

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public declared-synchronized createTFoot()Lorg/w3c/dom/html/HTMLElement;
    .locals 8

    move-object v0, p0

    move-object v6, p0

    monitor-enter v6

    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lorg/apache/html/dom/HTMLTableElementImpl;->getTFoot()Lorg/w3c/dom/html/HTMLTableSectionElement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    move-object v1, v2

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    move-object v0, v2

    :goto_0
    monitor-exit v6

    return-object v0

    :cond_0
    :try_start_1
    new-instance v2, Lorg/apache/html/dom/HTMLTableSectionElementImpl;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/html/dom/HTMLTableElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v4

    check-cast v4, Lorg/apache/html/dom/HTMLDocumentImpl;

    const-string/jumbo v5, "TFOOT"

    invoke-direct {v3, v4, v5}, Lorg/apache/html/dom/HTMLTableSectionElementImpl;-><init>(Lorg/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    move-object v1, v2

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/html/dom/HTMLTableElementImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    move-object v2, v1

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public declared-synchronized createTHead()Lorg/w3c/dom/html/HTMLElement;
    .locals 8

    move-object v0, p0

    move-object v6, p0

    monitor-enter v6

    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lorg/apache/html/dom/HTMLTableElementImpl;->getTHead()Lorg/w3c/dom/html/HTMLTableSectionElement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    move-object v1, v2

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    move-object v0, v2

    :goto_0
    monitor-exit v6

    return-object v0

    :cond_0
    :try_start_1
    new-instance v2, Lorg/apache/html/dom/HTMLTableSectionElementImpl;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/html/dom/HTMLTableElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v4

    check-cast v4, Lorg/apache/html/dom/HTMLDocumentImpl;

    const-string/jumbo v5, "THEAD"

    invoke-direct {v3, v4, v5}, Lorg/apache/html/dom/HTMLTableSectionElementImpl;-><init>(Lorg/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    move-object v1, v2

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/html/dom/HTMLTableElementImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    move-object v2, v1

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public declared-synchronized deleteCaption()V
    .locals 5

    move-object v0, p0

    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lorg/apache/html/dom/HTMLTableElementImpl;->getCaption()Lorg/w3c/dom/html/HTMLTableCaptionElement;

    move-result-object v2

    move-object v1, v2

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/html/dom/HTMLTableElementImpl;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :cond_0
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public declared-synchronized deleteRow(I)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v5, p0

    monitor-enter v5

    move-object v3, v0

    :try_start_0
    invoke-virtual {v3}, Lorg/apache/html/dom/HTMLTableElementImpl;->getFirstChild()Lorg/w3c/dom/Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    move-object v2, v3

    :goto_0
    move-object v3, v2

    if-nez v3, :cond_0

    :goto_1
    monitor-exit v5

    return-void

    :cond_0
    move-object v3, v2

    :try_start_1
    instance-of v3, v3, Lorg/w3c/dom/html/HTMLTableRowElement;

    if-eqz v3, :cond_3

    move v3, v1

    if-nez v3, :cond_1

    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/apache/html/dom/HTMLTableElementImpl;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    :cond_2
    move-object v3, v2

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    :cond_3
    move-object v3, v2

    instance-of v3, v3, Lorg/apache/html/dom/HTMLTableSectionElementImpl;

    if-eqz v3, :cond_2

    move-object v3, v2

    check-cast v3, Lorg/apache/html/dom/HTMLTableSectionElementImpl;

    move v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/html/dom/HTMLTableSectionElementImpl;->deleteRowX(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    move v1, v3

    move v3, v1

    if-gez v3, :cond_2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0
.end method

.method public declared-synchronized deleteTFoot()V
    .locals 5

    move-object v0, p0

    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lorg/apache/html/dom/HTMLTableElementImpl;->getTFoot()Lorg/w3c/dom/html/HTMLTableSectionElement;

    move-result-object v2

    move-object v1, v2

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/html/dom/HTMLTableElementImpl;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :cond_0
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public declared-synchronized deleteTHead()V
    .locals 5

    move-object v0, p0

    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lorg/apache/html/dom/HTMLTableElementImpl;->getTHead()Lorg/w3c/dom/html/HTMLTableSectionElement;

    move-result-object v2

    move-object v1, v2

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/html/dom/HTMLTableElementImpl;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :cond_0
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public getAlign()Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    const-string/jumbo v3, "align"

    invoke-virtual {v2, v3}, Lorg/apache/html/dom/HTMLTableElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLTableElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getBgColor()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "bgcolor"

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLTableElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getBorder()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "border"

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLTableElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public declared-synchronized getCaption()Lorg/w3c/dom/html/HTMLTableCaptionElement;
    .locals 5

    move-object v0, p0

    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lorg/apache/html/dom/HTMLTableElementImpl;->getFirstChild()Lorg/w3c/dom/Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    move-object v1, v2

    :goto_0
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move-object v0, v2

    :goto_1
    monitor-exit v4

    return-object v0

    :cond_0
    move-object v2, v1

    :try_start_1
    instance-of v2, v2, Lorg/w3c/dom/html/HTMLTableCaptionElement;

    if-eqz v2, :cond_1

    move-object v2, v1

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "CAPTION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lorg/w3c/dom/html/HTMLTableCaptionElement;

    move-object v0, v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public getCellPadding()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "cellpadding"

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLTableElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getCellSpacing()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "cellspacing"

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLTableElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getFrame()Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    const-string/jumbo v3, "frame"

    invoke-virtual {v2, v3}, Lorg/apache/html/dom/HTMLTableElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLTableElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getRows()Lorg/w3c/dom/html/HTMLCollection;
    .locals 7

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/html/dom/HTMLTableElementImpl;->_rows:Lorg/apache/html/dom/HTMLCollectionImpl;

    if-nez v1, :cond_0

    move-object v1, v0

    new-instance v2, Lorg/apache/html/dom/HTMLCollectionImpl;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x7

    invoke-direct {v3, v4, v5}, Lorg/apache/html/dom/HTMLCollectionImpl;-><init>(Lorg/w3c/dom/html/HTMLElement;S)V

    iput-object v2, v1, Lorg/apache/html/dom/HTMLTableElementImpl;->_rows:Lorg/apache/html/dom/HTMLCollectionImpl;

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/html/dom/HTMLTableElementImpl;->_rows:Lorg/apache/html/dom/HTMLCollectionImpl;

    move-object v0, v1

    return-object v0
.end method

.method public getRules()Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    const-string/jumbo v3, "rules"

    invoke-virtual {v2, v3}, Lorg/apache/html/dom/HTMLTableElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLTableElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "summary"

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLTableElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getTBodies()Lorg/w3c/dom/html/HTMLCollection;
    .locals 7

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/html/dom/HTMLTableElementImpl;->_bodies:Lorg/apache/html/dom/HTMLCollectionImpl;

    if-nez v1, :cond_0

    move-object v1, v0

    new-instance v2, Lorg/apache/html/dom/HTMLCollectionImpl;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Lorg/apache/html/dom/HTMLCollectionImpl;-><init>(Lorg/w3c/dom/html/HTMLElement;S)V

    iput-object v2, v1, Lorg/apache/html/dom/HTMLTableElementImpl;->_bodies:Lorg/apache/html/dom/HTMLCollectionImpl;

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/html/dom/HTMLTableElementImpl;->_bodies:Lorg/apache/html/dom/HTMLCollectionImpl;

    move-object v0, v1

    return-object v0
.end method

.method public declared-synchronized getTFoot()Lorg/w3c/dom/html/HTMLTableSectionElement;
    .locals 5

    move-object v0, p0

    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lorg/apache/html/dom/HTMLTableElementImpl;->getFirstChild()Lorg/w3c/dom/Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    move-object v1, v2

    :goto_0
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move-object v0, v2

    :goto_1
    monitor-exit v4

    return-object v0

    :cond_0
    move-object v2, v1

    :try_start_1
    instance-of v2, v2, Lorg/w3c/dom/html/HTMLTableSectionElement;

    if-eqz v2, :cond_1

    move-object v2, v1

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "TFOOT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lorg/w3c/dom/html/HTMLTableSectionElement;

    move-object v0, v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public declared-synchronized getTHead()Lorg/w3c/dom/html/HTMLTableSectionElement;
    .locals 5

    move-object v0, p0

    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    :try_start_0
    invoke-virtual {v2}, Lorg/apache/html/dom/HTMLTableElementImpl;->getFirstChild()Lorg/w3c/dom/Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    move-object v1, v2

    :goto_0
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move-object v0, v2

    :goto_1
    monitor-exit v4

    return-object v0

    :cond_0
    move-object v2, v1

    :try_start_1
    instance-of v2, v2, Lorg/w3c/dom/html/HTMLTableSectionElement;

    if-eqz v2, :cond_1

    move-object v2, v1

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "THEAD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lorg/w3c/dom/html/HTMLTableSectionElement;

    move-object v0, v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public getWidth()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "width"

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLTableElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

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

    invoke-virtual {v5}, Lorg/apache/html/dom/HTMLTableElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v5

    check-cast v5, Lorg/apache/html/dom/HTMLDocumentImpl;

    const-string/jumbo v6, "TR"

    invoke-direct {v4, v5, v6}, Lorg/apache/html/dom/HTMLTableRowElementImpl;-><init>(Lorg/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    move-object v2, v3

    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lorg/apache/html/dom/HTMLTableElementImpl;->insertRowX(ILorg/apache/html/dom/HTMLTableRowElementImpl;)V

    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method insertRowX(ILorg/apache/html/dom/HTMLTableRowElementImpl;)V
    .locals 8

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    const/4 v5, 0x0

    move-object v4, v5

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/html/dom/HTMLTableElementImpl;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    if-nez v5, :cond_0

    move-object v5, v4

    if-eqz v5, :cond_3

    move-object v5, v4

    move-object v6, v2

    invoke-interface {v5, v6}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v5

    :goto_1
    return-void

    :cond_0
    move-object v5, v3

    instance-of v5, v5, Lorg/w3c/dom/html/HTMLTableRowElement;

    if-eqz v5, :cond_1

    move v5, v1

    if-nez v5, :cond_2

    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Lorg/apache/html/dom/HTMLTableElementImpl;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v5

    goto :goto_1

    :cond_1
    move-object v5, v3

    instance-of v5, v5, Lorg/apache/html/dom/HTMLTableSectionElementImpl;

    if-eqz v5, :cond_2

    move-object v5, v3

    move-object v4, v5

    move-object v5, v3

    check-cast v5, Lorg/apache/html/dom/HTMLTableSectionElementImpl;

    move v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lorg/apache/html/dom/HTMLTableSectionElementImpl;->insertRowX(ILorg/apache/html/dom/HTMLTableRowElementImpl;)I

    move-result v5

    move v1, v5

    move v5, v1

    if-gez v5, :cond_2

    goto :goto_1

    :cond_2
    move-object v5, v3

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v3, v5

    goto :goto_0

    :cond_3
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Lorg/apache/html/dom/HTMLTableElementImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v5

    goto :goto_1
.end method

.method public setAlign(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "align"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLTableElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBgColor(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "bgcolor"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLTableElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBorder(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "border"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLTableElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized setCaption(Lorg/w3c/dom/html/HTMLTableCaptionElement;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v5, p0

    monitor-enter v5

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    :try_start_0
    invoke-interface {v2}, Lorg/w3c/dom/html/HTMLTableCaptionElement;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "CAPTION"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "HTM016 Argument \'caption\' is not an element of type <CAPTION>."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_0
    move-object v2, v0

    :try_start_1
    invoke-virtual {v2}, Lorg/apache/html/dom/HTMLTableElementImpl;->deleteCaption()V

    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/html/dom/HTMLTableElementImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    :cond_1
    monitor-exit v5

    return-void
.end method

.method public setCellPadding(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "cellpadding"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLTableElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCellSpacing(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "cellspacing"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLTableElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFrame(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "frame"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLTableElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRules(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "rules"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLTableElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "summary"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLTableElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized setTFoot(Lorg/w3c/dom/html/HTMLTableSectionElement;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v5, p0

    monitor-enter v5

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    :try_start_0
    invoke-interface {v2}, Lorg/w3c/dom/html/HTMLTableSectionElement;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "TFOOT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "HTM018 Argument \'tFoot\' is not an element of type <TFOOT>."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_0
    move-object v2, v0

    :try_start_1
    invoke-virtual {v2}, Lorg/apache/html/dom/HTMLTableElementImpl;->deleteTFoot()V

    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/html/dom/HTMLTableElementImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    :cond_1
    monitor-exit v5

    return-void
.end method

.method public declared-synchronized setTHead(Lorg/w3c/dom/html/HTMLTableSectionElement;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v5, p0

    monitor-enter v5

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    :try_start_0
    invoke-interface {v2}, Lorg/w3c/dom/html/HTMLTableSectionElement;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "THEAD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "HTM017 Argument \'tHead\' is not an element of type <THEAD>."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_0
    move-object v2, v0

    :try_start_1
    invoke-virtual {v2}, Lorg/apache/html/dom/HTMLTableElementImpl;->deleteTHead()V

    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/html/dom/HTMLTableElementImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    :cond_1
    monitor-exit v5

    return-void
.end method

.method public setWidth(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "width"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLTableElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
