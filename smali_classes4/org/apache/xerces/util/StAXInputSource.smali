.class public final Lorg/apache/xerces/util/StAXInputSource;
.super Lorg/apache/xerces/xni/parser/XMLInputSource;


# instance fields
.field private final fConsumeRemainingContent:Z

.field private final fEventReader:Ljavax/xml/stream/XMLEventReader;

.field private final fStreamReader:Ljavax/xml/stream/XMLStreamReader;


# direct methods
.method public constructor <init>(Ljavax/xml/stream/XMLEventReader;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/StAXInputSource;-><init>(Ljavax/xml/stream/XMLEventReader;Z)V

    return-void
.end method

.method public constructor <init>(Ljavax/xml/stream/XMLEventReader;Z)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v1

    invoke-static {v5}, Lorg/apache/xerces/util/StAXInputSource;->getEventReaderSystemId(Ljavax/xml/stream/XMLEventReader;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v1

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "XMLEventReader parameter cannot be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/util/StAXInputSource;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/apache/xerces/util/StAXInputSource;->fEventReader:Ljavax/xml/stream/XMLEventReader;

    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lorg/apache/xerces/util/StAXInputSource;->fConsumeRemainingContent:Z

    return-void
.end method

.method public constructor <init>(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/StAXInputSource;-><init>(Ljavax/xml/stream/XMLStreamReader;Z)V

    return-void
.end method

.method public constructor <init>(Ljavax/xml/stream/XMLStreamReader;Z)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v1

    invoke-static {v5}, Lorg/apache/xerces/util/StAXInputSource;->getStreamReaderSystemId(Ljavax/xml/stream/XMLStreamReader;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v1

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "XMLStreamReader parameter cannot be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/apache/xerces/util/StAXInputSource;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/util/StAXInputSource;->fEventReader:Ljavax/xml/stream/XMLEventReader;

    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lorg/apache/xerces/util/StAXInputSource;->fConsumeRemainingContent:Z

    return-void
.end method

.method private static getEventReaderSystemId(Ljavax/xml/stream/XMLEventReader;)Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v2, v0

    if-eqz v2, :cond_0

    move-object v2, v0

    :try_start_0
    invoke-interface {v2}, Ljavax/xml/stream/XMLEventReader;->peek()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v2

    invoke-interface {v2}, Ljavax/xml/stream/events/XMLEvent;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-interface {v2}, Ljavax/xml/stream/Location;->getSystemId()Ljava/lang/String;
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    :goto_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v1, v2

    goto :goto_1
.end method

.method private static getStreamReaderSystemId(Ljavax/xml/stream/XMLStreamReader;)Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamReader;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v1

    invoke-interface {v1}, Ljavax/xml/stream/Location;->getSystemId()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getXMLEventReader()Ljavax/xml/stream/XMLEventReader;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/StAXInputSource;->fEventReader:Ljavax/xml/stream/XMLEventReader;

    move-object v0, v1

    return-object v0
.end method

.method public getXMLStreamReader()Ljavax/xml/stream/XMLStreamReader;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/StAXInputSource;->fStreamReader:Ljavax/xml/stream/XMLStreamReader;

    move-object v0, v1

    return-object v0
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Ljava/lang/UnsupportedOperationException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "Cannot set the system ID on a StAXInputSource"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public shouldConsumeRemainingContent()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/util/StAXInputSource;->fConsumeRemainingContent:Z

    move v0, v1

    return v0
.end method
