.class public Lorg/apache/wml/dom/WMLSelectElementImpl;
.super Lorg/apache/wml/dom/WMLElementImpl;

# interfaces
.implements Lorg/apache/wml/WMLSelectElement;


# static fields
.field private static final serialVersionUID:J = 0x5a0df562e7ea561dL


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

    invoke-virtual {v1, v2}, Lorg/apache/wml/dom/WMLSelectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getIName()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "iname"

    invoke-virtual {v1, v2}, Lorg/apache/wml/dom/WMLSelectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getIValue()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "ivalue"

    invoke-virtual {v1, v2}, Lorg/apache/wml/dom/WMLSelectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "id"

    invoke-virtual {v1, v2}, Lorg/apache/wml/dom/WMLSelectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getMultiple()Z
    .locals 4

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "multiple"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/apache/wml/dom/WMLSelectElementImpl;->getAttribute(Ljava/lang/String;Z)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2}, Lorg/apache/wml/dom/WMLSelectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getTabIndex()I
    .locals 4

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "tabindex"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/apache/wml/dom/WMLSelectElementImpl;->getAttribute(Ljava/lang/String;I)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2}, Lorg/apache/wml/dom/WMLSelectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "value"

    invoke-virtual {v1, v2}, Lorg/apache/wml/dom/WMLSelectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getXmlLang()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "xml:lang"

    invoke-virtual {v1, v2}, Lorg/apache/wml/dom/WMLSelectElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

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

    invoke-virtual {v2, v3, v4}, Lorg/apache/wml/dom/WMLSelectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setIName(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "iname"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/wml/dom/WMLSelectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setIValue(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "ivalue"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/wml/dom/WMLSelectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "id"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/wml/dom/WMLSelectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMultiple(Z)V
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const-string/jumbo v3, "multiple"

    move v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/wml/dom/WMLSelectElementImpl;->setAttribute(Ljava/lang/String;Z)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "name"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/wml/dom/WMLSelectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTabIndex(I)V
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const-string/jumbo v3, "tabindex"

    move v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/wml/dom/WMLSelectElementImpl;->setAttribute(Ljava/lang/String;I)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "title"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/wml/dom/WMLSelectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "value"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/wml/dom/WMLSelectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setXmlLang(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "xml:lang"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/wml/dom/WMLSelectElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
