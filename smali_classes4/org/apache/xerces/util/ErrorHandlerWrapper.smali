.class public Lorg/apache/xerces/util/ErrorHandlerWrapper;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xerces/xni/parser/XMLErrorHandler;


# instance fields
.field protected fErrorHandler:Lorg/xml/sax/ErrorHandler;


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/ErrorHandler;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/ErrorHandlerWrapper;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    return-void
.end method

.method protected static createSAXParseException(Lorg/apache/xerces/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;
    .locals 10

    move-object v0, p0

    new-instance v1, Lorg/xml/sax/SAXParseException;

    move-object v9, v1

    move-object v1, v9

    move-object v2, v9

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/xni/parser/XMLParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/xni/parser/XMLParseException;->getPublicId()Ljava/lang/String;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xerces/xni/parser/XMLParseException;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/xni/parser/XMLParseException;->getLineNumber()I

    move-result v6

    move-object v7, v0

    invoke-virtual {v7}, Lorg/apache/xerces/xni/parser/XMLParseException;->getColumnNumber()I

    move-result v7

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/xni/parser/XMLParseException;->getException()Ljava/lang/Exception;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Exception;)V

    move-object v0, v1

    return-object v0
.end method

.method protected static createXMLParseException(Lorg/xml/sax/SAXParseException;)Lorg/apache/xerces/xni/parser/XMLParseException;
    .locals 13

    move-object v0, p0

    move-object v6, v0

    invoke-virtual {v6}, Lorg/xml/sax/SAXParseException;->getPublicId()Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    move-object v6, v0

    invoke-virtual {v6}, Lorg/xml/sax/SAXParseException;->getSystemId()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    move-object v6, v0

    invoke-virtual {v6}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v6

    move v3, v6

    move-object v6, v0

    invoke-virtual {v6}, Lorg/xml/sax/SAXParseException;->getColumnNumber()I

    move-result v6

    move v4, v6

    new-instance v6, Lorg/apache/xerces/util/ErrorHandlerWrapper$1;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v1

    move-object v9, v2

    move v10, v4

    move v11, v3

    invoke-direct {v7, v8, v9, v10, v11}, Lorg/apache/xerces/util/ErrorHandlerWrapper$1;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    move-object v5, v6

    new-instance v6, Lorg/apache/xerces/xni/parser/XMLParseException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v5

    move-object v9, v0

    invoke-virtual {v9}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object v9

    move-object v10, v0

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/xerces/xni/parser/XMLParseException;-><init>(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v0, v6

    return-object v0
.end method

.method protected static createXNIException(Lorg/xml/sax/SAXException;)Lorg/apache/xerces/xni/XNIException;
    .locals 6

    move-object v0, p0

    new-instance v1, Lorg/apache/xerces/xni/XNIException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    move-object v3, v0

    invoke-virtual {v3}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v3

    move-object v4, v0

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method public error(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/parser/XMLParseException;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/ErrorHandlerWrapper;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v7, :cond_0

    move-object v7, v3

    invoke-static {v7}, Lorg/apache/xerces/util/ErrorHandlerWrapper;->createSAXParseException(Lorg/apache/xerces/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object v7

    move-object v4, v7

    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lorg/apache/xerces/util/ErrorHandlerWrapper;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    move-object v8, v4

    invoke-interface {v7, v8}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    return-void

    :catch_0
    move-exception v7

    move-object v5, v7

    move-object v7, v5

    invoke-static {v7}, Lorg/apache/xerces/util/ErrorHandlerWrapper;->createXMLParseException(Lorg/xml/sax/SAXParseException;)Lorg/apache/xerces/xni/parser/XMLParseException;

    move-result-object v7

    throw v7

    :catch_1
    move-exception v7

    move-object v6, v7

    move-object v7, v6

    invoke-static {v7}, Lorg/apache/xerces/util/ErrorHandlerWrapper;->createXNIException(Lorg/xml/sax/SAXException;)Lorg/apache/xerces/xni/XNIException;

    move-result-object v7

    throw v7
.end method

.method public fatalError(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/parser/XMLParseException;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/ErrorHandlerWrapper;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v7, :cond_0

    move-object v7, v3

    invoke-static {v7}, Lorg/apache/xerces/util/ErrorHandlerWrapper;->createSAXParseException(Lorg/apache/xerces/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object v7

    move-object v4, v7

    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lorg/apache/xerces/util/ErrorHandlerWrapper;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    move-object v8, v4

    invoke-interface {v7, v8}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    return-void

    :catch_0
    move-exception v7

    move-object v5, v7

    move-object v7, v5

    invoke-static {v7}, Lorg/apache/xerces/util/ErrorHandlerWrapper;->createXMLParseException(Lorg/xml/sax/SAXParseException;)Lorg/apache/xerces/xni/parser/XMLParseException;

    move-result-object v7

    throw v7

    :catch_1
    move-exception v7

    move-object v6, v7

    move-object v7, v6

    invoke-static {v7}, Lorg/apache/xerces/util/ErrorHandlerWrapper;->createXNIException(Lorg/xml/sax/SAXException;)Lorg/apache/xerces/xni/XNIException;

    move-result-object v7

    throw v7
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/ErrorHandlerWrapper;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    move-object v0, v1

    return-object v0
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/util/ErrorHandlerWrapper;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    return-void
.end method

.method public warning(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/parser/XMLParseException;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/ErrorHandlerWrapper;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v7, :cond_0

    move-object v7, v3

    invoke-static {v7}, Lorg/apache/xerces/util/ErrorHandlerWrapper;->createSAXParseException(Lorg/apache/xerces/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object v7

    move-object v4, v7

    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lorg/apache/xerces/util/ErrorHandlerWrapper;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    move-object v8, v4

    invoke-interface {v7, v8}, Lorg/xml/sax/ErrorHandler;->warning(Lorg/xml/sax/SAXParseException;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    return-void

    :catch_0
    move-exception v7

    move-object v5, v7

    move-object v7, v5

    invoke-static {v7}, Lorg/apache/xerces/util/ErrorHandlerWrapper;->createXMLParseException(Lorg/xml/sax/SAXParseException;)Lorg/apache/xerces/xni/parser/XMLParseException;

    move-result-object v7

    throw v7

    :catch_1
    move-exception v7

    move-object v6, v7

    move-object v7, v6

    invoke-static {v7}, Lorg/apache/xerces/util/ErrorHandlerWrapper;->createXNIException(Lorg/xml/sax/SAXException;)Lorg/apache/xerces/xni/XNIException;

    move-result-object v7

    throw v7
.end method
