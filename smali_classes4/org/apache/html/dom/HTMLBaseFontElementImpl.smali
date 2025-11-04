.class public Lorg/apache/html/dom/HTMLBaseFontElementImpl;
.super Lorg/apache/html/dom/HTMLElementImpl;

# interfaces
.implements Lorg/w3c/dom/html/HTMLBaseFontElement;


# static fields
.field private static final serialVersionUID:J = -0x32a84af6a008528dL


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
.method public getColor()Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    const-string/jumbo v3, "color"

    invoke-virtual {v2, v3}, Lorg/apache/html/dom/HTMLBaseFontElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLBaseFontElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getFace()Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    const-string/jumbo v3, "face"

    invoke-virtual {v2, v3}, Lorg/apache/html/dom/HTMLBaseFontElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLBaseFontElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "size"

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLBaseFontElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "color"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLBaseFontElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFace(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "face"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLBaseFontElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "size"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLBaseFontElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
