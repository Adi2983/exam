.class public Ljavax/xml/bind/util/JAXBSource;
.super Ljavax/xml/transform/sax/SAXSource;
.source "JAXBSource.java"


# instance fields
.field private final contentObject:Ljava/lang/Object;

.field private final marshaller:Ljavax/xml/bind/Marshaller;

.field private final pseudoParser:Lorg/xml/sax/XMLReader;


# direct methods
.method public constructor <init>(Ljavax/xml/bind/JAXBContext;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/util/JAXBSource;
    move-object v1, p1

    .local v1, "context":Ljavax/xml/bind/JAXBContext;
    move-object v2, p2

    .local v2, "contentObject":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-nez v4, :cond_0

    const-string/jumbo v4, "JAXBSource.NullContext"

    invoke-static {v4}, Ljavax/xml/bind/util/Messages;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljavax/xml/bind/util/JAXBSource;->assertionFailed(Ljava/lang/String;)Ljavax/xml/bind/Marshaller;

    move-result-object v4

    :goto_0
    move-object v5, v2

    if-nez v5, :cond_1

    const-string/jumbo v5, "JAXBSource.NullContent"

    invoke-static {v5}, Ljavax/xml/bind/util/Messages;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljavax/xml/bind/util/JAXBSource;->assertionFailed(Ljava/lang/String;)Ljavax/xml/bind/Marshaller;

    move-result-object v5

    :goto_1
    invoke-direct {v3, v4, v5}, Ljavax/xml/bind/util/JAXBSource;-><init>(Ljavax/xml/bind/Marshaller;Ljava/lang/Object;)V

    .line 96
    return-void

    .line 88
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavax/xml/bind/JAXBContext;->createMarshaller()Ljavax/xml/bind/Marshaller;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v5, v2

    goto :goto_1
.end method

.method public constructor <init>(Ljavax/xml/bind/Marshaller;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Ljavax/xml/bind/util/JAXBSource;
    move-object v1, p1

    .local v1, "marshaller":Ljavax/xml/bind/Marshaller;
    move-object v2, p2

    .local v2, "contentObject":Ljava/lang/Object;
    move-object v3, v0

    invoke-direct {v3}, Ljavax/xml/transform/sax/SAXSource;-><init>()V

    .line 138
    move-object v3, v0

    new-instance v4, Ljavax/xml/bind/util/JAXBSource$1;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Ljavax/xml/bind/util/JAXBSource$1;-><init>(Ljavax/xml/bind/util/JAXBSource;)V

    iput-object v4, v3, Ljavax/xml/bind/util/JAXBSource;->pseudoParser:Lorg/xml/sax/XMLReader;

    .line 116
    move-object v3, v1

    if-nez v3, :cond_0

    .line 117
    new-instance v3, Ljavax/xml/bind/JAXBException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "JAXBSource.NullMarshaller"

    invoke-static {v5}, Ljavax/xml/bind/util/Messages;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/xml/bind/JAXBException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 120
    :cond_0
    move-object v3, v2

    if-nez v3, :cond_1

    .line 121
    new-instance v3, Ljavax/xml/bind/JAXBException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const-string/jumbo v5, "JAXBSource.NullContent"

    invoke-static {v5}, Ljavax/xml/bind/util/Messages;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/xml/bind/JAXBException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 124
    :cond_1
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavax/xml/bind/util/JAXBSource;->marshaller:Ljavax/xml/bind/Marshaller;

    .line 125
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavax/xml/bind/util/JAXBSource;->contentObject:Ljava/lang/Object;

    .line 127
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Ljavax/xml/bind/util/JAXBSource;->pseudoParser:Lorg/xml/sax/XMLReader;

    invoke-super {v3, v4}, Ljavax/xml/transform/sax/SAXSource;->setXMLReader(Lorg/xml/sax/XMLReader;)V

    .line 129
    move-object v3, v0

    new-instance v4, Lorg/xml/sax/InputSource;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Lorg/xml/sax/InputSource;-><init>()V

    invoke-super {v3, v4}, Ljavax/xml/transform/sax/SAXSource;->setInputSource(Lorg/xml/sax/InputSource;)V

    .line 130
    return-void
.end method

.method static synthetic access$000(Ljavax/xml/bind/util/JAXBSource;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "x0":Ljavax/xml/bind/util/JAXBSource;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/bind/util/JAXBSource;->contentObject:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "x0":Ljavax/xml/bind/util/JAXBSource;
    return-object v0
.end method

.method static synthetic access$100(Ljavax/xml/bind/util/JAXBSource;)Ljavax/xml/bind/Marshaller;
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "x0":Ljavax/xml/bind/util/JAXBSource;
    move-object v1, v0

    iget-object v1, v1, Ljavax/xml/bind/util/JAXBSource;->marshaller:Ljavax/xml/bind/Marshaller;

    move-object v0, v1

    .end local v0    # "x0":Ljavax/xml/bind/util/JAXBSource;
    return-object v0
.end method

.method private static assertionFailed(Ljava/lang/String;)Ljavax/xml/bind/Marshaller;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/bind/JAXBException;
        }
    .end annotation

    .prologue
    .line 248
    move-object v0, p0

    .local v0, "message":Ljava/lang/String;
    new-instance v1, Ljavax/xml/bind/JAXBException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Ljavax/xml/bind/JAXBException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
