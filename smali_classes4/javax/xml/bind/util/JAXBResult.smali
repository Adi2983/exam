.class public Ljavax/xml/bind/util/JAXBResult;
.super Ljavax/xml/transform/sax/SAXResult;
.source "JAXBResult.java"


# instance fields
.field private final unmarshallerHandler:Ljavax/xml/bind/UnmarshallerHandler;


# direct methods
.method public constructor <init>(Ljavax/xml/bind/JAXBContext;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/util/JAXBResult;
    move-object v1, p1

    .local v1, "context":Ljavax/xml/bind/JAXBContext;
    move-object v2, v0

    move-object v3, v1

    if-nez v3, :cond_0

    invoke-static {}, Ljavax/xml/bind/util/JAXBResult;->assertionFailed()Ljavax/xml/bind/Unmarshaller;

    move-result-object v3

    :goto_0
    invoke-direct {v2, v3}, Ljavax/xml/bind/util/JAXBResult;-><init>(Ljavax/xml/bind/Unmarshaller;)V

    .line 67
    return-void

    .line 66
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljavax/xml/bind/JAXBContext;->createUnmarshaller()Ljavax/xml/bind/Unmarshaller;

    move-result-object v3

    goto :goto_0
.end method

.method public constructor <init>(Ljavax/xml/bind/Unmarshaller;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/util/JAXBResult;
    move-object v1, p1

    .local v1, "_unmarshaller":Ljavax/xml/bind/Unmarshaller;
    move-object v2, v0

    invoke-direct {v2}, Ljavax/xml/transform/sax/SAXResult;-><init>()V

    .line 89
    move-object v2, v1

    if-nez v2, :cond_0

    .line 90
    new-instance v2, Ljavax/xml/bind/JAXBException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "JAXBResult.NullUnmarshaller"

    invoke-static {v4}, Ljavax/xml/bind/util/Messages;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/xml/bind/JAXBException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 93
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljavax/xml/bind/Unmarshaller;->getUnmarshallerHandler()Ljavax/xml/bind/UnmarshallerHandler;

    move-result-object v3

    iput-object v3, v2, Ljavax/xml/bind/util/JAXBResult;->unmarshallerHandler:Ljavax/xml/bind/UnmarshallerHandler;

    .line 95
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavax/xml/bind/util/JAXBResult;->unmarshallerHandler:Ljavax/xml/bind/UnmarshallerHandler;

    invoke-super {v2, v3}, Ljavax/xml/transform/sax/SAXResult;->setHandler(Lorg/xml/sax/ContentHandler;)V

    .line 96
    return-void
.end method

.method private static assertionFailed()Ljavax/xml/bind/Unmarshaller;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 127
    new-instance v0, Ljavax/xml/bind/JAXBException;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const-string/jumbo v2, "JAXBResult.NullContext"

    invoke-static {v2}, Ljavax/xml/bind/util/Messages;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/xml/bind/JAXBException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getResult()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 119
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/util/JAXBResult;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/bind/util/JAXBResult;->unmarshallerHandler:Ljavax/xml/bind/UnmarshallerHandler;

    invoke-interface {v1}, Ljavax/xml/bind/UnmarshallerHandler;->getResult()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavax/xml/bind/util/JAXBResult;
    return-object v0
.end method
