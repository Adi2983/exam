.class public final Lorg/apache/xerces/stax/events/CharactersImpl;
.super Lorg/apache/xerces/stax/events/XMLEventImpl;

# interfaces
.implements Ljavax/xml/stream/events/Characters;


# instance fields
.field private final fData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjavax/xml/stream/Location;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    move v5, v2

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Lorg/apache/xerces/stax/events/XMLEventImpl;-><init>(ILjavax/xml/stream/Location;)V

    move-object v4, v0

    move-object v5, v1

    if-eqz v5, :cond_0

    move-object v5, v1

    :goto_0
    iput-object v5, v4, Lorg/apache/xerces/stax/events/CharactersImpl;->fData:Ljava/lang/String;

    return-void

    :cond_0
    const-string/jumbo v5, ""

    goto :goto_0
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/stax/events/CharactersImpl;->fData:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public isCData()Z
    .locals 3

    move-object v0, p0

    const/16 v1, 0xc

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/stax/events/CharactersImpl;->getEventType()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isIgnorableWhiteSpace()Z
    .locals 3

    move-object v0, p0

    const/4 v1, 0x6

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/stax/events/CharactersImpl;->getEventType()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isWhiteSpace()Z
    .locals 5

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/stax/events/CharactersImpl;->fData:Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/stax/events/CharactersImpl;->fData:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    :goto_0
    move v1, v3

    move v3, v1

    if-nez v3, :cond_1

    const/4 v3, 0x0

    move v0, v3

    :goto_1
    return v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    move v2, v3

    :goto_2
    move v3, v2

    move v4, v1

    if-lt v3, v4, :cond_2

    const/4 v3, 0x1

    move v0, v3

    goto :goto_1

    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/stax/events/CharactersImpl;->fData:Ljava/lang/String;

    move v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lorg/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    move v0, v3

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
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

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lorg/apache/xerces/stax/events/CharactersImpl;->fData:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

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
