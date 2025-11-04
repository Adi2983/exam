.class public final Lorg/apache/xerces/util/SAXLocatorWrapper;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xerces/xni/XMLLocator;


# instance fields
.field private fLocator:Lorg/xml/sax/Locator;

.field private fLocator2:Lorg/xml/sax/ext/Locator2;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/util/SAXLocatorWrapper;->fLocator:Lorg/xml/sax/Locator;

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/util/SAXLocatorWrapper;->fLocator2:Lorg/xml/sax/ext/Locator2;

    return-void
.end method


# virtual methods
.method public getBaseSystemId()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public getCharacterOffset()I
    .locals 2

    move-object v0, p0

    const/4 v1, -0x1

    move v0, v1

    return v0
.end method

.method public getColumnNumber()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/SAXLocatorWrapper;->fLocator:Lorg/xml/sax/Locator;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/SAXLocatorWrapper;->fLocator:Lorg/xml/sax/Locator;

    invoke-interface {v1}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v1, -0x1

    move v0, v1

    goto :goto_0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/SAXLocatorWrapper;->fLocator2:Lorg/xml/sax/ext/Locator2;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/SAXLocatorWrapper;->fLocator2:Lorg/xml/sax/ext/Locator2;

    invoke-interface {v1}, Lorg/xml/sax/ext/Locator2;->getEncoding()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public getExpandedSystemId()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/util/SAXLocatorWrapper;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getLineNumber()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/SAXLocatorWrapper;->fLocator:Lorg/xml/sax/Locator;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/SAXLocatorWrapper;->fLocator:Lorg/xml/sax/Locator;

    invoke-interface {v1}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v1, -0x1

    move v0, v1

    goto :goto_0
.end method

.method public getLiteralSystemId()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/SAXLocatorWrapper;->fLocator:Lorg/xml/sax/Locator;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/SAXLocatorWrapper;->fLocator:Lorg/xml/sax/Locator;

    invoke-interface {v1}, Lorg/xml/sax/Locator;->getSystemId()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public getLocator()Lorg/xml/sax/Locator;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/SAXLocatorWrapper;->fLocator:Lorg/xml/sax/Locator;

    move-object v0, v1

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/SAXLocatorWrapper;->fLocator:Lorg/xml/sax/Locator;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/SAXLocatorWrapper;->fLocator:Lorg/xml/sax/Locator;

    invoke-interface {v1}, Lorg/xml/sax/Locator;->getPublicId()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public getXMLVersion()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/SAXLocatorWrapper;->fLocator2:Lorg/xml/sax/ext/Locator2;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/SAXLocatorWrapper;->fLocator2:Lorg/xml/sax/ext/Locator2;

    invoke-interface {v1}, Lorg/xml/sax/ext/Locator2;->getXMLVersion()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public setLocator(Lorg/xml/sax/Locator;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/util/SAXLocatorWrapper;->fLocator:Lorg/xml/sax/Locator;

    move-object v2, v1

    instance-of v2, v2, Lorg/xml/sax/ext/Locator2;

    if-nez v2, :cond_0

    move-object v2, v1

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Lorg/xml/sax/ext/Locator2;

    iput-object v3, v2, Lorg/apache/xerces/util/SAXLocatorWrapper;->fLocator2:Lorg/xml/sax/ext/Locator2;

    :cond_1
    return-void
.end method
