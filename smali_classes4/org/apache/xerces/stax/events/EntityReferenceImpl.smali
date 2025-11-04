.class public final Lorg/apache/xerces/stax/events/EntityReferenceImpl;
.super Lorg/apache/xerces/stax/events/XMLEventImpl;

# interfaces
.implements Ljavax/xml/stream/events/EntityReference;


# instance fields
.field private final fDecl:Ljavax/xml/stream/events/EntityDeclaration;

.field private final fName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljavax/xml/stream/events/EntityDeclaration;Ljavax/xml/stream/Location;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    const/16 v5, 0x9

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Lorg/apache/xerces/stax/events/XMLEventImpl;-><init>(ILjavax/xml/stream/Location;)V

    move-object v4, v0

    move-object v5, v1

    if-eqz v5, :cond_0

    move-object v5, v1

    :goto_0
    iput-object v5, v4, Lorg/apache/xerces/stax/events/EntityReferenceImpl;->fName:Ljava/lang/String;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lorg/apache/xerces/stax/events/EntityReferenceImpl;->fDecl:Ljavax/xml/stream/events/EntityDeclaration;

    return-void

    :cond_0
    const-string/jumbo v5, ""

    goto :goto_0
.end method

.method public constructor <init>(Ljavax/xml/stream/events/EntityDeclaration;Ljavax/xml/stream/Location;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    invoke-interface {v4}, Ljavax/xml/stream/events/EntityDeclaration;->getName()Ljava/lang/String;

    move-result-object v4

    :goto_0
    move-object v5, v1

    move-object v6, v2

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/xerces/stax/events/EntityReferenceImpl;-><init>(Ljava/lang/String;Ljavax/xml/stream/events/EntityDeclaration;Ljavax/xml/stream/Location;)V

    return-void

    :cond_0
    const-string/jumbo v4, ""

    goto :goto_0
.end method


# virtual methods
.method public getDeclaration()Ljavax/xml/stream/events/EntityDeclaration;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/stax/events/EntityReferenceImpl;->fDecl:Ljavax/xml/stream/events/EntityDeclaration;

    move-object v0, v1

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/stax/events/EntityReferenceImpl;->fName:Ljava/lang/String;

    move-object v0, v1

    return-object v0
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

    const/16 v4, 0x26

    :try_start_0
    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/stax/events/EntityReferenceImpl;->fName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v3, v1

    const/16 v4, 0x3b

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V
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
