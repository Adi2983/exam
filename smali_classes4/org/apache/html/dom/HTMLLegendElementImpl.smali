.class public Lorg/apache/html/dom/HTMLLegendElementImpl;
.super Lorg/apache/html/dom/HTMLElementImpl;

# interfaces
.implements Lorg/w3c/dom/html/HTMLLegendElement;


# static fields
.field private static final serialVersionUID:J = -0x8a140851ddc192aL


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
.method public getAccessKey()Ljava/lang/String;
    .locals 5

    move-object v0, p0

    move-object v2, v0

    const-string/jumbo v3, "accesskey"

    invoke-virtual {v2, v3}, Lorg/apache/html/dom/HTMLLegendElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

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

.method public getAlign()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const-string/jumbo v2, "align"

    invoke-virtual {v1, v2}, Lorg/apache/html/dom/HTMLLegendElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public setAccessKey(Ljava/lang/String;)V
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

    const-string/jumbo v3, "accesskey"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLLegendElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAlign(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "align"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/html/dom/HTMLLegendElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
