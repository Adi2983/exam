.class public Lorg/apache/wml/dom/WMLPElementImpl;
.super Lorg/apache/wml/dom/WMLElementImpl;

# interfaces
.implements Lorg/apache/wml/WMLPElement;


# static fields
.field private static final serialVersionUID:J = 0x3b2a2260cfd2cf78L


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
.method public getAlign()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "align"

    invoke-virtual {v1, v2}, Lorg/apache/wml/dom/WMLPElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "class"

    invoke-virtual {v1, v2}, Lorg/apache/wml/dom/WMLPElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "id"

    invoke-virtual {v1, v2}, Lorg/apache/wml/dom/WMLPElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "mode"

    invoke-virtual {v1, v2}, Lorg/apache/wml/dom/WMLPElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getXmlLang()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "xml:lang"

    invoke-virtual {v1, v2}, Lorg/apache/wml/dom/WMLPElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

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

    invoke-virtual {v2, v3, v4}, Lorg/apache/wml/dom/WMLPElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "class"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/wml/dom/WMLPElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "id"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/wml/dom/WMLPElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "mode"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/wml/dom/WMLPElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setXmlLang(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "xml:lang"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/wml/dom/WMLPElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
