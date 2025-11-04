.class public Lorg/apache/xerces/dom/DOMInputImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/w3c/dom/ls/LSInput;


# instance fields
.field protected fBaseSystemId:Ljava/lang/String;

.field protected fByteStream:Ljava/io/InputStream;

.field protected fCertifiedText:Z

.field protected fCharStream:Ljava/io/Reader;

.field protected fData:Ljava/lang/String;

.field protected fEncoding:Ljava/lang/String;

.field protected fPublicId:Ljava/lang/String;

.field protected fSystemId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/dom/DOMInputImpl;->fPublicId:Ljava/lang/String;

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/dom/DOMInputImpl;->fSystemId:Ljava/lang/String;

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/dom/DOMInputImpl;->fBaseSystemId:Ljava/lang/String;

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/dom/DOMInputImpl;->fByteStream:Ljava/io/InputStream;

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/dom/DOMInputImpl;->fCharStream:Ljava/io/Reader;

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/dom/DOMInputImpl;->fData:Ljava/lang/String;

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/dom/DOMInputImpl;->fEncoding:Ljava/lang/String;

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xerces/dom/DOMInputImpl;->fCertifiedText:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/apache/xerces/dom/DOMInputImpl;->fPublicId:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/apache/xerces/dom/DOMInputImpl;->fSystemId:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/apache/xerces/dom/DOMInputImpl;->fBaseSystemId:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/apache/xerces/dom/DOMInputImpl;->fByteStream:Ljava/io/InputStream;

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/apache/xerces/dom/DOMInputImpl;->fCharStream:Ljava/io/Reader;

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/apache/xerces/dom/DOMInputImpl;->fData:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/apache/xerces/dom/DOMInputImpl;->fEncoding:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lorg/apache/xerces/dom/DOMInputImpl;->fCertifiedText:Z

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lorg/apache/xerces/dom/DOMInputImpl;->fPublicId:Ljava/lang/String;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lorg/apache/xerces/dom/DOMInputImpl;->fSystemId:Ljava/lang/String;

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lorg/apache/xerces/dom/DOMInputImpl;->fBaseSystemId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/apache/xerces/dom/DOMInputImpl;->fPublicId:Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/apache/xerces/dom/DOMInputImpl;->fSystemId:Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/apache/xerces/dom/DOMInputImpl;->fBaseSystemId:Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/apache/xerces/dom/DOMInputImpl;->fByteStream:Ljava/io/InputStream;

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/apache/xerces/dom/DOMInputImpl;->fCharStream:Ljava/io/Reader;

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/apache/xerces/dom/DOMInputImpl;->fData:Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/apache/xerces/dom/DOMInputImpl;->fEncoding:Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lorg/apache/xerces/dom/DOMInputImpl;->fCertifiedText:Z

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lorg/apache/xerces/dom/DOMInputImpl;->fPublicId:Ljava/lang/String;

    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lorg/apache/xerces/dom/DOMInputImpl;->fSystemId:Ljava/lang/String;

    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lorg/apache/xerces/dom/DOMInputImpl;->fBaseSystemId:Ljava/lang/String;

    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lorg/apache/xerces/dom/DOMInputImpl;->fByteStream:Ljava/io/InputStream;

    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lorg/apache/xerces/dom/DOMInputImpl;->fEncoding:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/apache/xerces/dom/DOMInputImpl;->fPublicId:Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/apache/xerces/dom/DOMInputImpl;->fSystemId:Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/apache/xerces/dom/DOMInputImpl;->fBaseSystemId:Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/apache/xerces/dom/DOMInputImpl;->fByteStream:Ljava/io/InputStream;

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/apache/xerces/dom/DOMInputImpl;->fCharStream:Ljava/io/Reader;

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/apache/xerces/dom/DOMInputImpl;->fData:Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/apache/xerces/dom/DOMInputImpl;->fEncoding:Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lorg/apache/xerces/dom/DOMInputImpl;->fCertifiedText:Z

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lorg/apache/xerces/dom/DOMInputImpl;->fPublicId:Ljava/lang/String;

    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lorg/apache/xerces/dom/DOMInputImpl;->fSystemId:Ljava/lang/String;

    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lorg/apache/xerces/dom/DOMInputImpl;->fBaseSystemId:Ljava/lang/String;

    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lorg/apache/xerces/dom/DOMInputImpl;->fCharStream:Ljava/io/Reader;

    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lorg/apache/xerces/dom/DOMInputImpl;->fEncoding:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/apache/xerces/dom/DOMInputImpl;->fPublicId:Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/apache/xerces/dom/DOMInputImpl;->fSystemId:Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/apache/xerces/dom/DOMInputImpl;->fBaseSystemId:Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/apache/xerces/dom/DOMInputImpl;->fByteStream:Ljava/io/InputStream;

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/apache/xerces/dom/DOMInputImpl;->fCharStream:Ljava/io/Reader;

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/apache/xerces/dom/DOMInputImpl;->fData:Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/apache/xerces/dom/DOMInputImpl;->fEncoding:Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lorg/apache/xerces/dom/DOMInputImpl;->fCertifiedText:Z

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lorg/apache/xerces/dom/DOMInputImpl;->fPublicId:Ljava/lang/String;

    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lorg/apache/xerces/dom/DOMInputImpl;->fSystemId:Ljava/lang/String;

    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lorg/apache/xerces/dom/DOMInputImpl;->fBaseSystemId:Ljava/lang/String;

    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lorg/apache/xerces/dom/DOMInputImpl;->fData:Ljava/lang/String;

    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lorg/apache/xerces/dom/DOMInputImpl;->fEncoding:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBaseURI()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/DOMInputImpl;->fBaseSystemId:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getByteStream()Ljava/io/InputStream;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/DOMInputImpl;->fByteStream:Ljava/io/InputStream;

    move-object v0, v1

    return-object v0
.end method

.method public getCertifiedText()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/dom/DOMInputImpl;->fCertifiedText:Z

    move v0, v1

    return v0
.end method

.method public getCharacterStream()Ljava/io/Reader;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/DOMInputImpl;->fCharStream:Ljava/io/Reader;

    move-object v0, v1

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/DOMInputImpl;->fEncoding:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/DOMInputImpl;->fPublicId:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getStringData()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/DOMInputImpl;->fData:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/DOMInputImpl;->fSystemId:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public setBaseURI(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/dom/DOMInputImpl;->fBaseSystemId:Ljava/lang/String;

    return-void
.end method

.method public setByteStream(Ljava/io/InputStream;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/dom/DOMInputImpl;->fByteStream:Ljava/io/InputStream;

    return-void
.end method

.method public setCertifiedText(Z)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lorg/apache/xerces/dom/DOMInputImpl;->fCertifiedText:Z

    return-void
.end method

.method public setCharacterStream(Ljava/io/Reader;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/dom/DOMInputImpl;->fCharStream:Ljava/io/Reader;

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/dom/DOMInputImpl;->fEncoding:Ljava/lang/String;

    return-void
.end method

.method public setPublicId(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/dom/DOMInputImpl;->fPublicId:Ljava/lang/String;

    return-void
.end method

.method public setStringData(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/dom/DOMInputImpl;->fData:Ljava/lang/String;

    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/dom/DOMInputImpl;->fSystemId:Ljava/lang/String;

    return-void
.end method
