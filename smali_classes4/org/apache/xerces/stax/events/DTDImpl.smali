.class public final Lorg/apache/xerces/stax/events/DTDImpl;
.super Lorg/apache/xerces/stax/events/XMLEventImpl;

# interfaces
.implements Ljavax/xml/stream/events/DTD;


# instance fields
.field private final fDTD:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    const/16 v4, 0xb

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lorg/apache/xerces/stax/events/XMLEventImpl;-><init>(ILjavax/xml/stream/Location;)V

    move-object v3, v0

    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    :goto_0
    iput-object v4, v3, Lorg/apache/xerces/stax/events/DTDImpl;->fDTD:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getDocumentTypeDeclaration()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/stax/events/DTDImpl;->fDTD:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getEntities()Ljava/util/List;
    .locals 2

    move-object v0, p0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object v0, v1

    return-object v0
.end method

.method public getNotations()Ljava/util/List;
    .locals 2

    move-object v0, p0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object v0, v1

    return-object v0
.end method

.method public getProcessedDTD()Ljava/lang/Object;
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

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

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lorg/apache/xerces/stax/events/DTDImpl;->fDTD:Ljava/lang/String;

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
