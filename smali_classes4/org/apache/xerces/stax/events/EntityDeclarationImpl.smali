.class public final Lorg/apache/xerces/stax/events/EntityDeclarationImpl;
.super Lorg/apache/xerces/stax/events/XMLEventImpl;

# interfaces
.implements Ljavax/xml/stream/events/EntityDeclaration;


# instance fields
.field private final fName:Ljava/lang/String;

.field private final fNotationName:Ljava/lang/String;

.field private final fPublicId:Ljava/lang/String;

.field private final fSystemId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/xml/stream/Location;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, v0

    const/16 v7, 0xf

    move-object v8, v5

    invoke-direct {v6, v7, v8}, Lorg/apache/xerces/stax/events/XMLEventImpl;-><init>(ILjavax/xml/stream/Location;)V

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lorg/apache/xerces/stax/events/EntityDeclarationImpl;->fPublicId:Ljava/lang/String;

    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lorg/apache/xerces/stax/events/EntityDeclarationImpl;->fSystemId:Ljava/lang/String;

    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lorg/apache/xerces/stax/events/EntityDeclarationImpl;->fName:Ljava/lang/String;

    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lorg/apache/xerces/stax/events/EntityDeclarationImpl;->fNotationName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBaseURI()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/stax/events/EntityDeclarationImpl;->fName:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getNotationName()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/stax/events/EntityDeclarationImpl;->fNotationName:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/stax/events/EntityDeclarationImpl;->fPublicId:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getReplacementText()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/stax/events/EntityDeclarationImpl;->fSystemId:Ljava/lang/String;

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

    :try_start_0
    const-string/jumbo v4, "<!ENTITY "

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/stax/events/EntityDeclarationImpl;->fName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/stax/events/EntityDeclarationImpl;->fPublicId:Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object v3, v1

    const-string/jumbo v4, " PUBLIC \""

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/stax/events/EntityDeclarationImpl;->fPublicId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v3, v1

    const-string/jumbo v4, "\" \""

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/stax/events/EntityDeclarationImpl;->fSystemId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v3, v1

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    :goto_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/stax/events/EntityDeclarationImpl;->fNotationName:Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v3, v1

    const-string/jumbo v4, " NDATA "

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/stax/events/EntityDeclarationImpl;->fNotationName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    move-object v3, v1

    const/16 v4, 0x3e

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    return-void

    :cond_1
    move-object v3, v1

    const-string/jumbo v4, " SYSTEM \""

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/stax/events/EntityDeclarationImpl;->fSystemId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v3, v1

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

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
