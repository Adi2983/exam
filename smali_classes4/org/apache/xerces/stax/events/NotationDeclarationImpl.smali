.class public final Lorg/apache/xerces/stax/events/NotationDeclarationImpl;
.super Lorg/apache/xerces/stax/events/XMLEventImpl;

# interfaces
.implements Ljavax/xml/stream/events/NotationDeclaration;


# instance fields
.field private final fName:Ljava/lang/String;

.field private final fPublicId:Ljava/lang/String;

.field private final fSystemId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljavax/xml/stream/Location;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    const/16 v6, 0xe

    move-object v7, v4

    invoke-direct {v5, v6, v7}, Lorg/apache/xerces/stax/events/XMLEventImpl;-><init>(ILjavax/xml/stream/Location;)V

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lorg/apache/xerces/stax/events/NotationDeclarationImpl;->fName:Ljava/lang/String;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lorg/apache/xerces/stax/events/NotationDeclarationImpl;->fPublicId:Ljava/lang/String;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lorg/apache/xerces/stax/events/NotationDeclarationImpl;->fSystemId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/stax/events/NotationDeclarationImpl;->fName:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/stax/events/NotationDeclarationImpl;->fPublicId:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/stax/events/NotationDeclarationImpl;->fSystemId:Ljava/lang/String;

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
    const-string/jumbo v4, "<!NOTATION "

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/stax/events/NotationDeclarationImpl;->fPublicId:Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object v3, v1

    const-string/jumbo v4, "PUBLIC \""

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/stax/events/NotationDeclarationImpl;->fPublicId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v3, v1

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/stax/events/NotationDeclarationImpl;->fSystemId:Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v3, v1

    const-string/jumbo v4, " \""

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/stax/events/NotationDeclarationImpl;->fSystemId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v3, v1

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    :cond_0
    :goto_0
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/stax/events/NotationDeclarationImpl;->fName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v3, v1

    const/16 v4, 0x3e

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(I)V

    return-void

    :cond_1
    move-object v3, v1

    const-string/jumbo v4, "SYSTEM \""

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/stax/events/NotationDeclarationImpl;->fSystemId:Ljava/lang/String;

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
