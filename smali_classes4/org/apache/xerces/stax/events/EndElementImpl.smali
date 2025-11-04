.class public final Lorg/apache/xerces/stax/events/EndElementImpl;
.super Lorg/apache/xerces/stax/events/ElementImpl;

# interfaces
.implements Ljavax/xml/stream/events/EndElement;


# direct methods
.method public constructor <init>(Ljavax/xml/namespace/QName;Ljava/util/Iterator;Ljavax/xml/stream/Location;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x0

    move-object v7, v2

    move-object v8, v3

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/apache/xerces/stax/events/ElementImpl;-><init>(Ljavax/xml/namespace/QName;ZLjava/util/Iterator;Ljavax/xml/stream/Location;)V

    return-void
.end method


# virtual methods
.method public writeAsEncodedUnicode(Ljava/io/Writer;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    :try_start_0
    const-string/jumbo v5, "</"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/stax/events/EndElementImpl;->getName()Ljavax/xml/namespace/QName;

    move-result-object v4

    move-object v2, v4

    move-object v4, v2

    invoke-virtual {v4}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v4, v1

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(I)V

    :cond_0
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v5}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v4, v1

    const/16 v5, 0x3e

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v4

    move-object v2, v4

    new-instance v4, Ljavax/xml/stream/XMLStreamException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method
