.class public abstract Lorg/apache/xerces/dom/CharacterDataImpl;
.super Lorg/apache/xerces/dom/ChildNode;


# static fields
.field static final serialVersionUID:J = 0x6e112d3b0d787b76L

.field private static final transient singletonNodeList:Lorg/w3c/dom/NodeList;


# instance fields
.field protected data:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xerces/dom/CharacterDataImpl$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lorg/apache/xerces/dom/CharacterDataImpl$1;-><init>()V

    sput-object v0, Lorg/apache/xerces/dom/CharacterDataImpl;->singletonNodeList:Lorg/w3c/dom/NodeList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lorg/apache/xerces/dom/ChildNode;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lorg/apache/xerces/dom/ChildNode;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;)V

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lorg/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public appendData(Ljava/lang/String;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/CharacterDataImpl;->isReadOnly()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v4, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    new-instance v3, Lorg/w3c/dom/DOMException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x7

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    :cond_0
    move-object v3, v1

    if-nez v3, :cond_1

    :goto_0
    return-void

    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/CharacterDataImpl;->needsSyncData()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/CharacterDataImpl;->synchronizeData()V

    :cond_2
    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuffer;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/CharacterDataImpl;->setNodeValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deleteData(II)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lorg/apache/xerces/dom/CharacterDataImpl;->internalDeleteData(IIZ)V

    return-void
.end method

.method public getChildNodes()Lorg/w3c/dom/NodeList;
    .locals 2

    move-object v0, p0

    sget-object v1, Lorg/apache/xerces/dom/CharacterDataImpl;->singletonNodeList:Lorg/w3c/dom/NodeList;

    move-object v0, v1

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/CharacterDataImpl;->needsSyncData()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/CharacterDataImpl;->synchronizeData()V

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getLength()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/CharacterDataImpl;->needsSyncData()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/CharacterDataImpl;->synchronizeData()V

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getNodeValue()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/CharacterDataImpl;->needsSyncData()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/CharacterDataImpl;->synchronizeData()V

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public insertData(ILjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lorg/apache/xerces/dom/CharacterDataImpl;->internalInsertData(ILjava/lang/String;Z)V

    return-void
.end method

.method internalDeleteData(IIZ)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/dom/CharacterDataImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v8

    move-object v4, v8

    move-object v8, v4

    iget-boolean v8, v8, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v8, :cond_1

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/dom/CharacterDataImpl;->isReadOnly()Z

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v8, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v9, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    new-instance v8, Lorg/w3c/dom/DOMException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x7

    move-object v11, v5

    invoke-direct {v9, v10, v11}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v8

    :cond_0
    move v8, v2

    if-gez v8, :cond_1

    const-string/jumbo v8, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v9, "INDEX_SIZE_ERR"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    new-instance v8, Lorg/w3c/dom/DOMException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x1

    move-object v11, v5

    invoke-direct {v9, v10, v11}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v8

    :cond_1
    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/dom/CharacterDataImpl;->needsSyncData()Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/dom/CharacterDataImpl;->synchronizeData()V

    :cond_2
    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    move v9, v2

    sub-int/2addr v8, v9

    move v9, v1

    sub-int/2addr v8, v9

    const/4 v9, 0x0

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    move v5, v8

    :try_start_0
    new-instance v8, Ljava/lang/StringBuffer;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    const/4 v10, 0x0

    move v11, v1

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    move v9, v5

    if-lez v9, :cond_3

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    move v10, v1

    move v11, v2

    add-int/2addr v10, v11

    move v11, v1

    move v12, v2

    add-int/2addr v11, v12

    move v12, v5

    add-int/2addr v11, v12

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    :goto_0
    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    move-object v8, v0

    move-object v9, v6

    move v10, v3

    invoke-virtual {v8, v9, v10}, Lorg/apache/xerces/dom/CharacterDataImpl;->setNodeValueInternal(Ljava/lang/String;Z)V

    move-object v8, v4

    move-object v9, v0

    move v10, v1

    move v11, v2

    invoke-virtual {v8, v9, v10, v11}, Lorg/apache/xerces/dom/CoreDocumentImpl;->deletedText(Lorg/apache/xerces/dom/CharacterDataImpl;II)V

    return-void

    :cond_3
    const-string/jumbo v9, ""
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    move-object v6, v8

    const-string/jumbo v8, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v9, "INDEX_SIZE_ERR"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    new-instance v8, Lorg/w3c/dom/DOMException;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x1

    move-object v11, v7

    invoke-direct {v9, v10, v11}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v8
.end method

.method internalInsertData(ILjava/lang/String;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v7, v0

    invoke-virtual {v7}, Lorg/apache/xerces/dom/CharacterDataImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v7

    move-object v4, v7

    move-object v7, v4

    iget-boolean v7, v7, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v7, :cond_0

    move-object v7, v0

    invoke-virtual {v7}, Lorg/apache/xerces/dom/CharacterDataImpl;->isReadOnly()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v8, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    new-instance v7, Lorg/w3c/dom/DOMException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x7

    move-object v10, v5

    invoke-direct {v8, v9, v10}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v7

    :cond_0
    move-object v7, v0

    invoke-virtual {v7}, Lorg/apache/xerces/dom/CharacterDataImpl;->needsSyncData()Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v0

    invoke-virtual {v7}, Lorg/apache/xerces/dom/CharacterDataImpl;->synchronizeData()V

    :cond_1
    :try_start_0
    new-instance v7, Ljava/lang/StringBuffer;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move v8, v1

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    move-object v7, v0

    move-object v8, v5

    move v9, v3

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/dom/CharacterDataImpl;->setNodeValueInternal(Ljava/lang/String;Z)V

    move-object v7, v4

    move-object v8, v0

    move v9, v1

    move-object v10, v2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v7, v8, v9, v10}, Lorg/apache/xerces/dom/CoreDocumentImpl;->insertedText(Lorg/apache/xerces/dom/CharacterDataImpl;II)V
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v7

    move-object v5, v7

    const-string/jumbo v7, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v8, "INDEX_SIZE_ERR"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    new-instance v7, Lorg/w3c/dom/DOMException;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    move-object v10, v6

    invoke-direct {v8, v9, v10}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v7
.end method

.method public replaceData(IILjava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/dom/CharacterDataImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v6

    move-object v4, v6

    move-object v6, v4

    iget-boolean v6, v6, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v6, :cond_0

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/dom/CharacterDataImpl;->isReadOnly()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v7, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    new-instance v6, Lorg/w3c/dom/DOMException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x7

    move-object v9, v5

    invoke-direct {v7, v8, v9}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v6

    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/dom/CharacterDataImpl;->needsSyncData()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/dom/CharacterDataImpl;->synchronizeData()V

    :cond_1
    move-object v6, v4

    move-object v7, v0

    invoke-virtual {v6, v7}, Lorg/apache/xerces/dom/CoreDocumentImpl;->replacingData(Lorg/apache/xerces/dom/NodeImpl;)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    move-object v5, v6

    move-object v6, v0

    move v7, v1

    move v8, v2

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Lorg/apache/xerces/dom/CharacterDataImpl;->internalDeleteData(IIZ)V

    move-object v6, v0

    move v7, v1

    move-object v8, v3

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Lorg/apache/xerces/dom/CharacterDataImpl;->internalInsertData(ILjava/lang/String;Z)V

    move-object v6, v4

    move-object v7, v0

    move-object v8, v5

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9}, Lorg/apache/xerces/dom/CoreDocumentImpl;->replacedCharacterData(Lorg/apache/xerces/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/dom/CharacterDataImpl;->setNodeValue(Ljava/lang/String;)V

    return-void
.end method

.method public setNodeValue(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/dom/CharacterDataImpl;->setNodeValueInternal(Ljava/lang/String;)V

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/CharacterDataImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v2, v3}, Lorg/apache/xerces/dom/CoreDocumentImpl;->replacedText(Lorg/apache/xerces/dom/CharacterDataImpl;)V

    return-void
.end method

.method protected setNodeValueInternal(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/dom/CharacterDataImpl;->setNodeValueInternal(Ljava/lang/String;Z)V

    return-void
.end method

.method protected setNodeValueInternal(Ljava/lang/String;Z)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xerces/dom/CharacterDataImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v5

    move-object v3, v5

    move-object v5, v3

    iget-boolean v5, v5, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v5, :cond_0

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xerces/dom/CharacterDataImpl;->isReadOnly()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v6, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    new-instance v5, Lorg/w3c/dom/DOMException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const/4 v7, 0x7

    move-object v8, v4

    invoke-direct {v6, v7, v8}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xerces/dom/CharacterDataImpl;->needsSyncData()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xerces/dom/CharacterDataImpl;->synchronizeData()V

    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    move-object v4, v5

    move-object v5, v3

    move-object v6, v0

    move v7, v2

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/dom/CoreDocumentImpl;->modifyingCharacterData(Lorg/apache/xerces/dom/NodeImpl;Z)V

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lorg/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    move-object v5, v3

    move-object v6, v0

    move-object v7, v4

    move-object v8, v1

    move v9, v2

    invoke-virtual {v5, v6, v7, v8, v9}, Lorg/apache/xerces/dom/CoreDocumentImpl;->modifiedCharacterData(Lorg/apache/xerces/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public substringData(II)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xerces/dom/CharacterDataImpl;->needsSyncData()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xerces/dom/CharacterDataImpl;->synchronizeData()V

    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v3, v5

    move v5, v2

    if-ltz v5, :cond_1

    move v5, v1

    if-ltz v5, :cond_1

    move v5, v1

    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    if-le v5, v6, :cond_2

    :cond_1
    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v6, "INDEX_SIZE_ERR"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    new-instance v5, Lorg/w3c/dom/DOMException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    move-object v8, v4

    invoke-direct {v6, v7, v8}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    :cond_2
    move v5, v1

    move v6, v2

    add-int/2addr v5, v6

    move v6, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move v4, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    move v6, v1

    move v7, v4

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method
