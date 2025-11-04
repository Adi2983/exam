.class public final Lorg/apache/xerces/util/SAXInputSource;
.super Lorg/apache/xerces/xni/parser/XMLInputSource;


# instance fields
.field private fInputSource:Lorg/xml/sax/InputSource;

.field private fXMLReader:Lorg/xml/sax/XMLReader;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/xerces/util/SAXInputSource;-><init>(Lorg/xml/sax/InputSource;)V

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/InputSource;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/SAXInputSource;-><init>(Lorg/xml/sax/XMLReader;Lorg/xml/sax/InputSource;)V

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;Lorg/xml/sax/InputSource;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v2

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-virtual {v4}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    move-result-object v4

    :goto_0
    move-object v5, v2

    if-eqz v5, :cond_2

    move-object v5, v2

    invoke-virtual {v5}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v5

    :goto_1
    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/SAXInputSource;->setByteStream(Ljava/io/InputStream;)V

    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/SAXInputSource;->setCharacterStream(Ljava/io/Reader;)V

    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/SAXInputSource;->setEncoding(Ljava/lang/String;)V

    :cond_0
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lorg/apache/xerces/util/SAXInputSource;->fInputSource:Lorg/xml/sax/InputSource;

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/apache/xerces/util/SAXInputSource;->fXMLReader:Lorg/xml/sax/XMLReader;

    return-void

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getInputSource()Lorg/xml/sax/InputSource;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/SAXInputSource;->fInputSource:Lorg/xml/sax/InputSource;

    move-object v0, v1

    return-object v0
.end method

.method public getXMLReader()Lorg/xml/sax/XMLReader;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/SAXInputSource;->fXMLReader:Lorg/xml/sax/XMLReader;

    move-object v0, v1

    return-object v0
.end method

.method public setByteStream(Ljava/io/InputStream;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lorg/apache/xerces/xni/parser/XMLInputSource;->setByteStream(Ljava/io/InputStream;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/SAXInputSource;->fInputSource:Lorg/xml/sax/InputSource;

    if-nez v2, :cond_0

    move-object v2, v0

    new-instance v3, Lorg/xml/sax/InputSource;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lorg/xml/sax/InputSource;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/util/SAXInputSource;->fInputSource:Lorg/xml/sax/InputSource;

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/SAXInputSource;->fInputSource:Lorg/xml/sax/InputSource;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/xml/sax/InputSource;->setByteStream(Ljava/io/InputStream;)V

    return-void
.end method

.method public setCharacterStream(Ljava/io/Reader;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lorg/apache/xerces/xni/parser/XMLInputSource;->setCharacterStream(Ljava/io/Reader;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/SAXInputSource;->fInputSource:Lorg/xml/sax/InputSource;

    if-nez v2, :cond_0

    move-object v2, v0

    new-instance v3, Lorg/xml/sax/InputSource;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lorg/xml/sax/InputSource;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/util/SAXInputSource;->fInputSource:Lorg/xml/sax/InputSource;

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/SAXInputSource;->fInputSource:Lorg/xml/sax/InputSource;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lorg/apache/xerces/xni/parser/XMLInputSource;->setEncoding(Ljava/lang/String;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/SAXInputSource;->fInputSource:Lorg/xml/sax/InputSource;

    if-nez v2, :cond_0

    move-object v2, v0

    new-instance v3, Lorg/xml/sax/InputSource;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lorg/xml/sax/InputSource;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/util/SAXInputSource;->fInputSource:Lorg/xml/sax/InputSource;

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/SAXInputSource;->fInputSource:Lorg/xml/sax/InputSource;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    return-void
.end method

.method public setInputSource(Lorg/xml/sax/InputSource;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/SAXInputSource;->setPublicId(Ljava/lang/String;)V

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/SAXInputSource;->setSystemId(Ljava/lang/String;)V

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/SAXInputSource;->setByteStream(Ljava/io/InputStream;)V

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/SAXInputSource;->setCharacterStream(Ljava/io/Reader;)V

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/SAXInputSource;->setEncoding(Ljava/lang/String;)V

    :goto_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/util/SAXInputSource;->fInputSource:Lorg/xml/sax/InputSource;

    return-void

    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/SAXInputSource;->setPublicId(Ljava/lang/String;)V

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/SAXInputSource;->setSystemId(Ljava/lang/String;)V

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/SAXInputSource;->setByteStream(Ljava/io/InputStream;)V

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/SAXInputSource;->setCharacterStream(Ljava/io/Reader;)V

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/SAXInputSource;->setEncoding(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPublicId(Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lorg/apache/xerces/xni/parser/XMLInputSource;->setPublicId(Ljava/lang/String;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/SAXInputSource;->fInputSource:Lorg/xml/sax/InputSource;

    if-nez v2, :cond_0

    move-object v2, v0

    new-instance v3, Lorg/xml/sax/InputSource;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lorg/xml/sax/InputSource;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/util/SAXInputSource;->fInputSource:Lorg/xml/sax/InputSource;

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/SAXInputSource;->fInputSource:Lorg/xml/sax/InputSource;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/xml/sax/InputSource;->setPublicId(Ljava/lang/String;)V

    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lorg/apache/xerces/xni/parser/XMLInputSource;->setSystemId(Ljava/lang/String;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/SAXInputSource;->fInputSource:Lorg/xml/sax/InputSource;

    if-nez v2, :cond_0

    move-object v2, v0

    new-instance v3, Lorg/xml/sax/InputSource;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lorg/xml/sax/InputSource;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/util/SAXInputSource;->fInputSource:Lorg/xml/sax/InputSource;

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/SAXInputSource;->fInputSource:Lorg/xml/sax/InputSource;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    return-void
.end method

.method public setXMLReader(Lorg/xml/sax/XMLReader;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/util/SAXInputSource;->fXMLReader:Lorg/xml/sax/XMLReader;

    return-void
.end method
