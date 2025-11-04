.class public abstract Lorg/apache/xerces/util/ErrorHandlerProxy;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/xml/sax/ErrorHandler;


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/util/ErrorHandlerProxy;->getErrorHandler()Lorg/apache/xerces/xni/parser/XMLErrorHandler;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    instance-of v3, v3, Lorg/apache/xerces/util/ErrorHandlerWrapper;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lorg/apache/xerces/util/ErrorHandlerWrapper;

    iget-object v3, v3, Lorg/apache/xerces/util/ErrorHandlerWrapper;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    move-object v4, v1

    invoke-interface {v3, v4}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V

    :goto_0
    return-void

    :cond_0
    move-object v3, v2

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    move-object v6, v1

    invoke-static {v6}, Lorg/apache/xerces/util/ErrorHandlerWrapper;->createXMLParseException(Lorg/xml/sax/SAXParseException;)Lorg/apache/xerces/xni/parser/XMLParseException;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lorg/apache/xerces/xni/parser/XMLErrorHandler;->error(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/parser/XMLParseException;)V

    goto :goto_0
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/util/ErrorHandlerProxy;->getErrorHandler()Lorg/apache/xerces/xni/parser/XMLErrorHandler;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    instance-of v3, v3, Lorg/apache/xerces/util/ErrorHandlerWrapper;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lorg/apache/xerces/util/ErrorHandlerWrapper;

    iget-object v3, v3, Lorg/apache/xerces/util/ErrorHandlerWrapper;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    move-object v4, v1

    invoke-interface {v3, v4}, Lorg/xml/sax/ErrorHandler;->fatalError(Lorg/xml/sax/SAXParseException;)V

    :goto_0
    return-void

    :cond_0
    move-object v3, v2

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    move-object v6, v1

    invoke-static {v6}, Lorg/apache/xerces/util/ErrorHandlerWrapper;->createXMLParseException(Lorg/xml/sax/SAXParseException;)Lorg/apache/xerces/xni/parser/XMLParseException;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lorg/apache/xerces/xni/parser/XMLErrorHandler;->fatalError(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/parser/XMLParseException;)V

    goto :goto_0
.end method

.method protected abstract getErrorHandler()Lorg/apache/xerces/xni/parser/XMLErrorHandler;
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/util/ErrorHandlerProxy;->getErrorHandler()Lorg/apache/xerces/xni/parser/XMLErrorHandler;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    instance-of v3, v3, Lorg/apache/xerces/util/ErrorHandlerWrapper;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lorg/apache/xerces/util/ErrorHandlerWrapper;

    iget-object v3, v3, Lorg/apache/xerces/util/ErrorHandlerWrapper;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    move-object v4, v1

    invoke-interface {v3, v4}, Lorg/xml/sax/ErrorHandler;->warning(Lorg/xml/sax/SAXParseException;)V

    :goto_0
    return-void

    :cond_0
    move-object v3, v2

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    move-object v6, v1

    invoke-static {v6}, Lorg/apache/xerces/util/ErrorHandlerWrapper;->createXMLParseException(Lorg/xml/sax/SAXParseException;)Lorg/apache/xerces/xni/parser/XMLParseException;

    move-result-object v6

    invoke-interface {v3, v4, v5, v6}, Lorg/apache/xerces/xni/parser/XMLErrorHandler;->warning(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/parser/XMLParseException;)V

    goto :goto_0
.end method
