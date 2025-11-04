.class public Lorg/apache/wml/dom/WMLElementImpl;
.super Lorg/apache/xerces/dom/ElementImpl;

# interfaces
.implements Lorg/apache/wml/WMLElement;


# static fields
.field private static final serialVersionUID:J = 0x2fc0d55b31447e94L


# direct methods
.method public constructor <init>(Lorg/apache/wml/dom/WMLDocumentImpl;Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lorg/apache/xerces/dom/ElementImpl;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method getAttribute(Ljava/lang/String;I)I
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, v2

    move v3, v5

    move-object v5, v0

    const-string/jumbo v6, "emptyok"

    invoke-virtual {v5, v6}, Lorg/apache/wml/dom/WMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    move-object v4, v6

    if-eqz v5, :cond_0

    move-object v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v3, v5

    :cond_0
    move v5, v3

    move v0, v5

    return v0
.end method

.method getAttribute(Ljava/lang/String;Z)Z
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, v2

    move v3, v5

    move-object v5, v0

    const-string/jumbo v6, "emptyok"

    invoke-virtual {v5, v6}, Lorg/apache/wml/dom/WMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    move-object v4, v6

    if-eqz v5, :cond_0

    move-object v5, v4

    const-string/jumbo v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    move v3, v5

    :cond_0
    move v5, v3

    move v0, v5

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "class"

    invoke-virtual {v1, v2}, Lorg/apache/wml/dom/WMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "id"

    invoke-virtual {v1, v2}, Lorg/apache/wml/dom/WMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getXmlLang()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "xml:lang"

    invoke-virtual {v1, v2}, Lorg/apache/wml/dom/WMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method setAttribute(Ljava/lang/String;I)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    new-instance v5, Ljava/lang/StringBuffer;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/apache/wml/dom/WMLElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method setAttribute(Ljava/lang/String;Z)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    if-eqz v5, :cond_0

    const-string/jumbo v5, "true"

    :goto_0
    invoke-virtual {v3, v4, v5}, Lorg/apache/wml/dom/WMLElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v5, "false"

    goto :goto_0
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "class"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/wml/dom/WMLElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "id"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/wml/dom/WMLElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setXmlLang(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "xml:lang"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/wml/dom/WMLElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
