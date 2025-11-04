.class public Lorg/apache/html/dom/HTMLScriptElementImpl;
.super Lorg/apache/html/dom/HTMLElementImpl;

# interfaces
.implements Lorg/w3c/dom/html/HTMLScriptElement;


# static fields
.field private static final serialVersionUID:J = 0x46a47c35bd3a44deL


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
.method public getCharset()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "charset"

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLScriptElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getDefer()Z
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "defer"

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLScriptElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public getEvent()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "event"

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLScriptElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getHtmlFor()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "for"

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLScriptElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "src"

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLScriptElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
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

    invoke-virtual {v3}, Lorg/apache/html/dom/HTMLScriptElementImpl;->getFirstChild()Lorg/w3c/dom/Node;

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

.method public getType()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLScriptElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "charset"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLScriptElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDefer(Z)V
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const-string/jumbo v3, "defer"

    move v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLScriptElementImpl;->setAttribute(Ljava/lang/String;Z)V

    return-void
.end method

.method public setEvent(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "event"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLScriptElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHtmlFor(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "for"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLScriptElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "src"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLScriptElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/html/dom/HTMLScriptElementImpl;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    if-nez v4, :cond_0

    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/html/dom/HTMLScriptElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v5

    move-object v6, v1

    invoke-interface {v5, v6}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/html/dom/HTMLScriptElementImpl;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/html/dom/HTMLScriptElementImpl;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v4

    return-void

    :cond_0
    move-object v4, v2

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v3, v4

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lorg/apache/html/dom/HTMLScriptElementImpl;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v4, v3

    move-object v2, v4

    goto :goto_0
.end method

.method public setType(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "type"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLScriptElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
