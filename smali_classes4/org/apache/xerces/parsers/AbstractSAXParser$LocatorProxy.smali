.class public final Lorg/apache/xerces/parsers/AbstractSAXParser$LocatorProxy;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/xml/sax/ext/Locator2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/parsers/AbstractSAXParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "LocatorProxy"
.end annotation


# instance fields
.field protected fLocator:Lorg/apache/xerces/xni/XMLLocator;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/xni/XMLLocator;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/parsers/AbstractSAXParser$LocatorProxy;->fLocator:Lorg/apache/xerces/xni/XMLLocator;

    return-void
.end method


# virtual methods
.method public getColumnNumber()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/AbstractSAXParser$LocatorProxy;->fLocator:Lorg/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lorg/apache/xerces/xni/XMLLocator;->getColumnNumber()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/AbstractSAXParser$LocatorProxy;->fLocator:Lorg/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lorg/apache/xerces/xni/XMLLocator;->getEncoding()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getLineNumber()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/AbstractSAXParser$LocatorProxy;->fLocator:Lorg/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lorg/apache/xerces/xni/XMLLocator;->getLineNumber()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/AbstractSAXParser$LocatorProxy;->fLocator:Lorg/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lorg/apache/xerces/xni/XMLLocator;->getPublicId()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/AbstractSAXParser$LocatorProxy;->fLocator:Lorg/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lorg/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getXMLVersion()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/AbstractSAXParser$LocatorProxy;->fLocator:Lorg/apache/xerces/xni/XMLLocator;

    invoke-interface {v1}, Lorg/apache/xerces/xni/XMLLocator;->getXMLVersion()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
