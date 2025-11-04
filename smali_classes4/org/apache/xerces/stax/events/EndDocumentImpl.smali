.class public final Lorg/apache/xerces/stax/events/EndDocumentImpl;
.super Lorg/apache/xerces/stax/events/XMLEventImpl;

# interfaces
.implements Ljavax/xml/stream/events/EndDocument;


# direct methods
.method public constructor <init>(Ljavax/xml/stream/Location;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/16 v3, 0x8

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/stax/events/XMLEventImpl;-><init>(ILjavax/xml/stream/Location;)V

    return-void
.end method


# virtual methods
.method public writeAsEncodedUnicode(Ljava/io/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    return-void
.end method
