.class public Lorg/apache/html/dom/HTMLImageElementImpl;
.super Lorg/apache/html/dom/HTMLElementImpl;

# interfaces
.implements Lorg/w3c/dom/html/HTMLImageElement;


# static fields
.field private static final serialVersionUID:J = 0x13c4588521d240e3L


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
.method public getAlign()Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    const-string/jumbo v3, "align"

    invoke-virtual {v2, v3}, Lorg/apache/html/dom/HTMLImageElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLImageElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getAlt()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "alt"

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLImageElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getBorder()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "border"

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLImageElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getHeight()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "height"

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLImageElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getHspace()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "hspace"

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLImageElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getIsMap()Z
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "ismap"

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLImageElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public getLongDesc()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "longdesc"

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLImageElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getLowSrc()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "lowsrc"

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLImageElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLImageElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "src"

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLImageElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getUseMap()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "useMap"

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLImageElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getVspace()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "vspace"

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLImageElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getWidth()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "width"

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLImageElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public setAlign(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "align"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLImageElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAlt(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "alt"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLImageElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBorder(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "border"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLImageElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHeight(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "height"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLImageElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHspace(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "hspace"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLImageElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setIsMap(Z)V
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const-string/jumbo v3, "ismap"

    move v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLImageElementImpl;->setAttribute(Ljava/lang/String;Z)V

    return-void
.end method

.method public setLongDesc(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "longdesc"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLImageElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLowSrc(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "lowsrc"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLImageElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "name"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLImageElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "src"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLImageElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUseMap(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "useMap"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLImageElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setVspace(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "vspace"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLImageElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setWidth(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "width"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLImageElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
