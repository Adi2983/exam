.class public Lorg/apache/xerces/dom/DOMOutputImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/w3c/dom/ls/LSOutput;


# instance fields
.field protected fByteStream:Ljava/io/OutputStream;

.field protected fCharStream:Ljava/io/Writer;

.field protected fEncoding:Ljava/lang/String;

.field protected fSystemId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/dom/DOMOutputImpl;->fCharStream:Ljava/io/Writer;

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/dom/DOMOutputImpl;->fByteStream:Ljava/io/OutputStream;

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/dom/DOMOutputImpl;->fSystemId:Ljava/lang/String;

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/dom/DOMOutputImpl;->fEncoding:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getByteStream()Ljava/io/OutputStream;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/DOMOutputImpl;->fByteStream:Ljava/io/OutputStream;

    move-object v0, v1

    return-object v0
.end method

.method public getCharacterStream()Ljava/io/Writer;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/DOMOutputImpl;->fCharStream:Ljava/io/Writer;

    move-object v0, v1

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/DOMOutputImpl;->fEncoding:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/DOMOutputImpl;->fSystemId:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public setByteStream(Ljava/io/OutputStream;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/dom/DOMOutputImpl;->fByteStream:Ljava/io/OutputStream;

    return-void
.end method

.method public setCharacterStream(Ljava/io/Writer;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/dom/DOMOutputImpl;->fCharStream:Ljava/io/Writer;

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/dom/DOMOutputImpl;->fEncoding:Ljava/lang/String;

    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/dom/DOMOutputImpl;->fSystemId:Ljava/lang/String;

    return-void
.end method
