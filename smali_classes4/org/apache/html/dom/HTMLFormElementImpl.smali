.class public Lorg/apache/html/dom/HTMLFormElementImpl;
.super Lorg/apache/html/dom/HTMLElementImpl;

# interfaces
.implements Lorg/w3c/dom/html/HTMLFormElement;


# static fields
.field private static final serialVersionUID:J = -0x65a6bcfac23fbc5aL


# instance fields
.field private _elements:Lorg/apache/html/dom/HTMLCollectionImpl;


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

    check-cast v3, Lorg/apache/html/dom/HTMLFormElementImpl;

    move-object v2, v3

    move-object v3, v2

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/html/dom/HTMLFormElementImpl;->_elements:Lorg/apache/html/dom/HTMLCollectionImpl;

    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public getAcceptCharset()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "accept-charset"

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLFormElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getAction()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "action"

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLFormElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getChildNodes()Lorg/w3c/dom/NodeList;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/html/dom/HTMLFormElementImpl;->getChildNodesUnoptimized()Lorg/w3c/dom/NodeList;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getElements()Lorg/w3c/dom/html/HTMLCollection;
    .locals 7

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/html/dom/HTMLFormElementImpl;->_elements:Lorg/apache/html/dom/HTMLCollectionImpl;

    if-nez v1, :cond_0

    move-object v1, v0

    new-instance v2, Lorg/apache/html/dom/HTMLCollectionImpl;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/16 v5, 0x8

    invoke-direct {v3, v4, v5}, Lorg/apache/html/dom/HTMLCollectionImpl;-><init>(Lorg/w3c/dom/html/HTMLElement;S)V

    iput-object v2, v1, Lorg/apache/html/dom/HTMLFormElementImpl;->_elements:Lorg/apache/html/dom/HTMLCollectionImpl;

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/html/dom/HTMLFormElementImpl;->_elements:Lorg/apache/html/dom/HTMLCollectionImpl;

    move-object v0, v1

    return-object v0
.end method

.method public getEnctype()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "enctype"

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLFormElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getLength()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/html/dom/HTMLFormElementImpl;->getElements()Lorg/w3c/dom/html/HTMLCollection;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/html/HTMLCollection;->getLength()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    const-string/jumbo v3, "method"

    invoke-virtual {v2, v3}, Lorg/apache/html/dom/HTMLFormElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLFormElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLFormElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "target"

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLFormElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public setAcceptCharset(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "accept-charset"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLFormElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "action"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLFormElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEnctype(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "enctype"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLFormElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "method"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLFormElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "name"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLFormElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "target"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLFormElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public submit()V
    .locals 0

    return-void
.end method
