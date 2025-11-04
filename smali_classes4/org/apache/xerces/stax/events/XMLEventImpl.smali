.class abstract Lorg/apache/xerces/stax/events/XMLEventImpl;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/xml/stream/events/XMLEvent;


# instance fields
.field private fEventType:I

.field private fLocation:Ljavax/xml/stream/Location;


# direct methods
.method constructor <init>(ILjavax/xml/stream/Location;)V
    .locals 8

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move v4, v1

    iput v4, v3, Lorg/apache/xerces/stax/events/XMLEventImpl;->fEventType:I

    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v0

    new-instance v4, Lorg/apache/xerces/stax/ImmutableLocation;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Lorg/apache/xerces/stax/ImmutableLocation;-><init>(Ljavax/xml/stream/Location;)V

    iput-object v4, v3, Lorg/apache/xerces/stax/events/XMLEventImpl;->fLocation:Ljavax/xml/stream/Location;

    :goto_0
    return-void

    :cond_0
    move-object v3, v0

    invoke-static {}, Lorg/apache/xerces/stax/EmptyLocation;->getInstance()Lorg/apache/xerces/stax/EmptyLocation;

    move-result-object v4

    iput-object v4, v3, Lorg/apache/xerces/stax/events/XMLEventImpl;->fLocation:Ljavax/xml/stream/Location;

    goto :goto_0
.end method


# virtual methods
.method public final asCharacters()Ljavax/xml/stream/events/Characters;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    check-cast v1, Ljavax/xml/stream/events/Characters;

    move-object v0, v1

    return-object v0
.end method

.method public final asEndElement()Ljavax/xml/stream/events/EndElement;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    check-cast v1, Ljavax/xml/stream/events/EndElement;

    move-object v0, v1

    return-object v0
.end method

.method public final asStartElement()Ljavax/xml/stream/events/StartElement;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    check-cast v1, Ljavax/xml/stream/events/StartElement;

    move-object v0, v1

    return-object v0
.end method

.method public final getEventType()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/stax/events/XMLEventImpl;->fEventType:I

    move v0, v1

    return v0
.end method

.method public final getLocation()Ljavax/xml/stream/Location;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/stax/events/XMLEventImpl;->fLocation:Ljavax/xml/stream/Location;

    move-object v0, v1

    return-object v0
.end method

.method public final getSchemaType()Ljavax/xml/namespace/QName;
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public final isAttribute()Z
    .locals 3

    move-object v0, p0

    const/16 v1, 0xa

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/stax/events/XMLEventImpl;->fEventType:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isCharacters()Z
    .locals 3

    move-object v0, p0

    const/4 v1, 0x4

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/stax/events/XMLEventImpl;->fEventType:I

    if-eq v1, v2, :cond_0

    const/16 v1, 0xc

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/stax/events/XMLEventImpl;->fEventType:I

    if-eq v1, v2, :cond_0

    const/4 v1, 0x6

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/stax/events/XMLEventImpl;->fEventType:I

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isEndDocument()Z
    .locals 3

    move-object v0, p0

    const/16 v1, 0x8

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/stax/events/XMLEventImpl;->fEventType:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isEndElement()Z
    .locals 3

    move-object v0, p0

    const/4 v1, 0x2

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/stax/events/XMLEventImpl;->fEventType:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isEntityReference()Z
    .locals 3

    move-object v0, p0

    const/16 v1, 0x9

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/stax/events/XMLEventImpl;->fEventType:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isNamespace()Z
    .locals 3

    move-object v0, p0

    const/16 v1, 0xd

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/stax/events/XMLEventImpl;->fEventType:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isProcessingInstruction()Z
    .locals 3

    move-object v0, p0

    const/4 v1, 0x3

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/stax/events/XMLEventImpl;->fEventType:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isStartDocument()Z
    .locals 3

    move-object v0, p0

    const/4 v1, 0x7

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/stax/events/XMLEventImpl;->fEventType:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isStartElement()Z
    .locals 3

    move-object v0, p0

    const/4 v1, 0x1

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/stax/events/XMLEventImpl;->fEventType:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    move-object v0, p0

    new-instance v3, Ljava/io/StringWriter;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    move-object v1, v3

    move-object v3, v0

    move-object v4, v1

    :try_start_0
    invoke-virtual {v3, v4}, Lorg/apache/xerces/stax/events/XMLEventImpl;->writeAsEncodedUnicode(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v3, v1

    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0

    :catch_0
    move-exception v3

    move-object v2, v3

    goto :goto_0
.end method

.method public abstract writeAsEncodedUnicode(Ljava/io/Writer;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method
