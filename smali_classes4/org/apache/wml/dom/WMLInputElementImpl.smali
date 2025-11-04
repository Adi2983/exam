.class public Lorg/apache/wml/dom/WMLInputElementImpl;
.super Lorg/apache/wml/dom/WMLElementImpl;

# interfaces
.implements Lorg/apache/wml/WMLInputElement;


# static fields
.field private static final serialVersionUID:J = 0x283559006c7fc31bL


# direct methods
.method public constructor <init>(Lorg/apache/wml/dom/WMLDocumentImpl;Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lorg/apache/wml/dom/WMLElementImpl;-><init>(Lorg/apache/wml/dom/WMLDocumentImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "class"

    invoke-virtual {v1, v2}, Lorg/apache/wml/dom/WMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getEmptyOk()Z
    .locals 4

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "emptyok"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/apache/wml/dom/WMLInputElementImpl;->getAttribute(Ljava/lang/String;Z)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "format"

    invoke-virtual {v1, v2}, Lorg/apache/wml/dom/WMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "id"

    invoke-virtual {v1, v2}, Lorg/apache/wml/dom/WMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getMaxLength()I
    .locals 4

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "maxlength"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/apache/wml/dom/WMLInputElementImpl;->getAttribute(Ljava/lang/String;I)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2}, Lorg/apache/wml/dom/WMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getSize()I
    .locals 4

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "size"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/apache/wml/dom/WMLInputElementImpl;->getAttribute(Ljava/lang/String;I)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getTabIndex()I
    .locals 4

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "tabindex"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/apache/wml/dom/WMLInputElementImpl;->getAttribute(Ljava/lang/String;I)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2}, Lorg/apache/wml/dom/WMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "type"

    invoke-virtual {v1, v2}, Lorg/apache/wml/dom/WMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "value"

    invoke-virtual {v1, v2}, Lorg/apache/wml/dom/WMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getXmlLang()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "xml:lang"

    invoke-virtual {v1, v2}, Lorg/apache/wml/dom/WMLInputElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "class"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/wml/dom/WMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEmptyOk(Z)V
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const-string/jumbo v3, "emptyok"

    move v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/wml/dom/WMLInputElementImpl;->setAttribute(Ljava/lang/String;Z)V

    return-void
.end method

.method public setFormat(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "format"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/wml/dom/WMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "id"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/wml/dom/WMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMaxLength(I)V
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const-string/jumbo v3, "maxlength"

    move v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/wml/dom/WMLInputElementImpl;->setAttribute(Ljava/lang/String;I)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "name"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/wml/dom/WMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSize(I)V
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const-string/jumbo v3, "size"

    move v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/wml/dom/WMLInputElementImpl;->setAttribute(Ljava/lang/String;I)V

    return-void
.end method

.method public setTabIndex(I)V
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const-string/jumbo v3, "tabindex"

    move v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/wml/dom/WMLInputElementImpl;->setAttribute(Ljava/lang/String;I)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "title"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/wml/dom/WMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "type"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/wml/dom/WMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "value"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/wml/dom/WMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setXmlLang(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "xml:lang"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/wml/dom/WMLInputElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
