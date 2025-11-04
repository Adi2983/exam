.class public Lorg/apache/xerces/dom/NotationImpl;
.super Lorg/apache/xerces/dom/NodeImpl;

# interfaces
.implements Lorg/w3c/dom/Notation;


# static fields
.field static final serialVersionUID:J = -0xa9c84ee53e3bc62L


# instance fields
.field protected baseURI:Ljava/lang/String;

.field protected name:Ljava/lang/String;

.field protected publicId:Ljava/lang/String;

.field protected systemId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lorg/apache/xerces/dom/NodeImpl;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;)V

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lorg/apache/xerces/dom/NotationImpl;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBaseURI()Ljava/lang/String;
    .locals 6

    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/NotationImpl;->needsSyncData()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/NotationImpl;->synchronizeData()V

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/NotationImpl;->baseURI:Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/NotationImpl;->baseURI:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    :try_start_0
    new-instance v2, Lorg/apache/xerces/util/URI;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/NotationImpl;->baseURI:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/apache/xerces/util/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/apache/xerces/util/URI;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    move-object v1, v2

    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/NotationImpl;->baseURI:Ljava/lang/String;

    move-object v0, v2

    goto :goto_0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/NotationImpl;->needsSyncData()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/NotationImpl;->synchronizeData()V

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/NotationImpl;->name:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getNodeType()S
    .locals 2

    move-object v0, p0

    const/16 v1, 0xc

    move v0, v1

    return v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/NotationImpl;->needsSyncData()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/NotationImpl;->synchronizeData()V

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/NotationImpl;->publicId:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/NotationImpl;->needsSyncData()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/NotationImpl;->synchronizeData()V

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/NotationImpl;->systemId:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public setBaseURI(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/NotationImpl;->needsSyncData()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/NotationImpl;->synchronizeData()V

    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/dom/NotationImpl;->baseURI:Ljava/lang/String;

    return-void
.end method

.method public setPublicId(Ljava/lang/String;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/NotationImpl;->isReadOnly()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lorg/w3c/dom/DOMException;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const/4 v4, 0x7

    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v6, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/NotationImpl;->needsSyncData()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/NotationImpl;->synchronizeData()V

    :cond_1
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/dom/NotationImpl;->publicId:Ljava/lang/String;

    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/NotationImpl;->isReadOnly()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lorg/w3c/dom/DOMException;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const/4 v4, 0x7

    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v6, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/NotationImpl;->needsSyncData()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/NotationImpl;->synchronizeData()V

    :cond_1
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/dom/NotationImpl;->systemId:Ljava/lang/String;

    return-void
.end method
