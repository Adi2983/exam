.class final Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/xml/stream/Location;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "XMLStreamReaderLocation"
.end annotation


# instance fields
.field private reader:Ljavax/xml/stream/XMLStreamReader;


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getLocation()Ljavax/xml/stream/Location;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;->reader:Ljavax/xml/stream/XMLStreamReader;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v1

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCharacterOffset()I
    .locals 3

    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    move-object v1, v2

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-interface {v2}, Ljavax/xml/stream/Location;->getCharacterOffset()I

    move-result v2

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v2, -0x1

    move v0, v2

    goto :goto_0
.end method

.method public getColumnNumber()I
    .locals 3

    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    move-object v1, v2

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-interface {v2}, Ljavax/xml/stream/Location;->getColumnNumber()I

    move-result v2

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v2, -0x1

    move v0, v2

    goto :goto_0
.end method

.method public getLineNumber()I
    .locals 3

    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    move-object v1, v2

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-interface {v2}, Ljavax/xml/stream/Location;->getLineNumber()I

    move-result v2

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v2, -0x1

    move v0, v2

    goto :goto_0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    move-object v1, v2

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-interface {v2}, Ljavax/xml/stream/Location;->getPublicId()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    move-object v1, v2

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-interface {v2}, Ljavax/xml/stream/Location;->getSystemId()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public setXMLStreamReader(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;->reader:Ljavax/xml/stream/XMLStreamReader;

    return-void
.end method
