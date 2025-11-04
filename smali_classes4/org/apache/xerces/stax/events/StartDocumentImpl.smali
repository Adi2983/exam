.class public final Lorg/apache/xerces/stax/events/StartDocumentImpl;
.super Lorg/apache/xerces/stax/events/XMLEventImpl;

# interfaces
.implements Ljavax/xml/stream/events/StartDocument;


# instance fields
.field private final fCharEncoding:Ljava/lang/String;

.field private final fEncodingSet:Z

.field private final fIsStandalone:Z

.field private final fStandaloneSet:Z

.field private final fVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZZLjava/lang/String;Ljavax/xml/stream/Location;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object v7, v0

    const/4 v8, 0x7

    move-object v9, v6

    invoke-direct {v7, v8, v9}, Lorg/apache/xerces/stax/events/XMLEventImpl;-><init>(ILjavax/xml/stream/Location;)V

    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lorg/apache/xerces/stax/events/StartDocumentImpl;->fCharEncoding:Ljava/lang/String;

    move-object v7, v0

    move v8, v2

    iput-boolean v8, v7, Lorg/apache/xerces/stax/events/StartDocumentImpl;->fEncodingSet:Z

    move-object v7, v0

    move v8, v3

    iput-boolean v8, v7, Lorg/apache/xerces/stax/events/StartDocumentImpl;->fIsStandalone:Z

    move-object v7, v0

    move v8, v4

    iput-boolean v8, v7, Lorg/apache/xerces/stax/events/StartDocumentImpl;->fStandaloneSet:Z

    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Lorg/apache/xerces/stax/events/StartDocumentImpl;->fVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public encodingSet()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/stax/events/StartDocumentImpl;->fEncodingSet:Z

    move v0, v1

    return v0
.end method

.method public getCharacterEncodingScheme()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/stax/events/StartDocumentImpl;->fCharEncoding:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/stax/events/StartDocumentImpl;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v1

    invoke-interface {v1}, Ljavax/xml/stream/Location;->getSystemId()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/stax/events/StartDocumentImpl;->fVersion:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public isStandalone()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/stax/events/StartDocumentImpl;->fIsStandalone:Z

    move v0, v1

    return v0
.end method

.method public standaloneSet()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/stax/events/StartDocumentImpl;->fStandaloneSet:Z

    move v0, v1

    return v0
.end method

.method public writeAsEncodedUnicode(Ljava/io/Writer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    :try_start_0
    const-string/jumbo v4, "<?xml version=\""

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/stax/events/StartDocumentImpl;->fVersion:Ljava/lang/String;

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/stax/events/StartDocumentImpl;->fVersion:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/stax/events/StartDocumentImpl;->fVersion:Ljava/lang/String;

    :goto_0
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v3, v1

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/stax/events/StartDocumentImpl;->encodingSet()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    const-string/jumbo v4, " encoding=\""

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/stax/events/StartDocumentImpl;->fCharEncoding:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v3, v1

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/stax/events/StartDocumentImpl;->standaloneSet()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v1

    const-string/jumbo v4, " standalone=\""

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/stax/events/StartDocumentImpl;->fIsStandalone:Z

    if-eqz v4, :cond_3

    const-string/jumbo v4, "yes"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v3, v1

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    :cond_1
    move-object v3, v1

    const-string/jumbo v4, "?>"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string/jumbo v4, "1.0"

    goto :goto_0

    :cond_3
    const-string/jumbo v4, "no"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    move-object v2, v3

    new-instance v3, Ljavax/xml/stream/XMLStreamException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
