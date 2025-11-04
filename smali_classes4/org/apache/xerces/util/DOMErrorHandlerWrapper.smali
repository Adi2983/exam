.class public Lorg/apache/xerces/util/DOMErrorHandlerWrapper;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xerces/xni/parser/XMLErrorHandler;
.implements Lorg/w3c/dom/DOMErrorHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;
    }
.end annotation


# instance fields
.field eStatus:Z

.field public fCurrentNode:Lorg/w3c/dom/Node;

.field protected final fDOMError:Lorg/apache/xerces/dom/DOMErrorImpl;

.field protected fDomErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

.field protected final fErrorCode:Lorg/apache/xerces/util/XMLErrorCode;

.field protected fOut:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>()V
    .locals 7

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->eStatus:Z

    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v1, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fErrorCode:Lorg/apache/xerces/util/XMLErrorCode;

    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Lorg/apache/xerces/dom/DOMErrorImpl;-><init>()V

    iput-object v2, v1, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v1, v0

    new-instance v2, Ljava/io/PrintWriter;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, v1, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/DOMErrorHandler;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->eStatus:Z

    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/util/XMLErrorCode;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lorg/apache/xerces/util/XMLErrorCode;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v2, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fErrorCode:Lorg/apache/xerces/util/XMLErrorCode;

    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Lorg/apache/xerces/dom/DOMErrorImpl;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fDomErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    return-void
.end method

.method private printError(Lorg/w3c/dom/DOMError;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    invoke-interface {v7}, Lorg/w3c/dom/DOMError;->getSeverity()S

    move-result v7

    move v2, v7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    const-string/jumbo v8, "["

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move v7, v2

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    const-string/jumbo v8, "Warning"

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_0
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    const-string/jumbo v8, "] "

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v7, v1

    invoke-interface {v7}, Lorg/w3c/dom/DOMError;->getLocation()Lorg/w3c/dom/DOMLocator;

    move-result-object v7

    move-object v3, v7

    move-object v7, v3

    if-eqz v7, :cond_2

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    move-object v8, v3

    invoke-interface {v8}, Lorg/w3c/dom/DOMLocator;->getLineNumber()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->print(I)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    move-object v8, v3

    invoke-interface {v8}, Lorg/w3c/dom/DOMLocator;->getColumnNumber()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->print(I)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    move-object v8, v3

    invoke-interface {v8}, Lorg/w3c/dom/DOMLocator;->getByteOffset()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->print(I)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    const-string/jumbo v8, ","

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    move-object v8, v3

    invoke-interface {v8}, Lorg/w3c/dom/DOMLocator;->getUtf16Offset()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->print(I)V

    move-object v7, v3

    invoke-interface {v7}, Lorg/w3c/dom/DOMLocator;->getRelatedNode()Lorg/w3c/dom/Node;

    move-result-object v7

    move-object v4, v7

    move-object v7, v4

    if-eqz v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    const-string/jumbo v8, "["

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    move-object v8, v4

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    move-object v7, v3

    invoke-interface {v7}, Lorg/w3c/dom/DOMLocator;->getUri()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    move-object v7, v5

    if-eqz v7, :cond_2

    move-object v7, v5

    const/16 v8, 0x2f

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    move v6, v7

    move v7, v6

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    move-object v7, v5

    move v8, v6

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    const-string/jumbo v8, ": "

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    const-string/jumbo v8, ":"

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    move-object v8, v1

    invoke-interface {v8}, Lorg/w3c/dom/DOMError;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v7}, Ljava/io/PrintWriter;->println()V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v7}, Ljava/io/PrintWriter;->flush()V

    return-void

    :cond_3
    move v7, v2

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    const-string/jumbo v8, "Error"

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fOut:Ljava/io/PrintWriter;

    const-string/jumbo v8, "FatalError"

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->eStatus:Z

    goto/16 :goto_0
.end method


# virtual methods
.method public error(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/parser/XMLParseException;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lorg/apache/xerces/dom/DOMErrorImpl;

    const/4 v6, 0x2

    iput-short v6, v5, Lorg/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v6, v3

    iput-object v6, v5, Lorg/apache/xerces/dom/DOMErrorImpl;->fException:Ljava/lang/Exception;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v6, v2

    iput-object v6, v5, Lorg/apache/xerces/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v7, v3

    invoke-virtual {v7}, Lorg/apache/xerces/xni/parser/XMLParseException;->getMessage()Ljava/lang/String;

    move-result-object v7

    move-object v9, v6

    move-object v10, v7

    move-object v6, v10

    move-object v7, v9

    move-object v8, v10

    iput-object v8, v7, Lorg/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    iput-object v6, v5, Lorg/apache/xerces/dom/DOMErrorImpl;->fRelatedData:Ljava/lang/Object;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lorg/apache/xerces/dom/DOMErrorImpl;

    iget-object v5, v5, Lorg/apache/xerces/dom/DOMErrorImpl;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    move-object v4, v5

    move-object v5, v4

    if-eqz v5, :cond_0

    move-object v5, v4

    move-object v6, v3

    invoke-virtual {v6}, Lorg/apache/xerces/xni/parser/XMLParseException;->getColumnNumber()I

    move-result v6

    iput v6, v5, Lorg/apache/xerces/dom/DOMLocatorImpl;->fColumnNumber:I

    move-object v5, v4

    move-object v6, v3

    invoke-virtual {v6}, Lorg/apache/xerces/xni/parser/XMLParseException;->getLineNumber()I

    move-result v6

    iput v6, v5, Lorg/apache/xerces/dom/DOMLocatorImpl;->fLineNumber:I

    move-object v5, v4

    move-object v6, v3

    invoke-virtual {v6}, Lorg/apache/xerces/xni/parser/XMLParseException;->getCharacterOffset()I

    move-result v6

    iput v6, v5, Lorg/apache/xerces/dom/DOMLocatorImpl;->fUtf16Offset:I

    move-object v5, v4

    move-object v6, v3

    invoke-virtual {v6}, Lorg/apache/xerces/xni/parser/XMLParseException;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/apache/xerces/dom/DOMLocatorImpl;->fUri:Ljava/lang/String;

    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fCurrentNode:Lorg/w3c/dom/Node;

    iput-object v6, v5, Lorg/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fDomErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fDomErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lorg/apache/xerces/dom/DOMErrorImpl;

    invoke-interface {v5, v6}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    move-result v5

    :cond_1
    return-void
.end method

.method public fatalError(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/parser/XMLParseException;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lorg/apache/xerces/dom/DOMErrorImpl;

    const/4 v7, 0x3

    iput-short v7, v6, Lorg/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v7, v3

    iput-object v7, v6, Lorg/apache/xerces/dom/DOMErrorImpl;->fException:Ljava/lang/Exception;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fErrorCode:Lorg/apache/xerces/util/XMLErrorCode;

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/util/XMLErrorCode;->setValues(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fErrorCode:Lorg/apache/xerces/util/XMLErrorCode;

    invoke-static {v6}, Lorg/apache/xerces/util/DOMErrorHandlerWrapper$DOMErrorTypeMap;->getDOMErrorType(Lorg/apache/xerces/util/XMLErrorCode;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v7, v4

    if-eqz v7, :cond_2

    move-object v7, v4

    :goto_0
    iput-object v7, v6, Lorg/apache/xerces/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v8, v3

    invoke-virtual {v8}, Lorg/apache/xerces/xni/parser/XMLParseException;->getMessage()Ljava/lang/String;

    move-result-object v8

    move-object v10, v7

    move-object v11, v8

    move-object v7, v11

    move-object v8, v10

    move-object v9, v11

    iput-object v9, v8, Lorg/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    iput-object v7, v6, Lorg/apache/xerces/dom/DOMErrorImpl;->fRelatedData:Ljava/lang/Object;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lorg/apache/xerces/dom/DOMErrorImpl;

    iget-object v6, v6, Lorg/apache/xerces/dom/DOMErrorImpl;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    move-object v5, v6

    move-object v6, v5

    if-eqz v6, :cond_0

    move-object v6, v5

    move-object v7, v3

    invoke-virtual {v7}, Lorg/apache/xerces/xni/parser/XMLParseException;->getColumnNumber()I

    move-result v7

    iput v7, v6, Lorg/apache/xerces/dom/DOMLocatorImpl;->fColumnNumber:I

    move-object v6, v5

    move-object v7, v3

    invoke-virtual {v7}, Lorg/apache/xerces/xni/parser/XMLParseException;->getLineNumber()I

    move-result v7

    iput v7, v6, Lorg/apache/xerces/dom/DOMLocatorImpl;->fLineNumber:I

    move-object v6, v5

    move-object v7, v3

    invoke-virtual {v7}, Lorg/apache/xerces/xni/parser/XMLParseException;->getCharacterOffset()I

    move-result v7

    iput v7, v6, Lorg/apache/xerces/dom/DOMLocatorImpl;->fUtf16Offset:I

    move-object v6, v5

    move-object v7, v3

    invoke-virtual {v7}, Lorg/apache/xerces/xni/parser/XMLParseException;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lorg/apache/xerces/dom/DOMLocatorImpl;->fUri:Ljava/lang/String;

    move-object v6, v5

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fCurrentNode:Lorg/w3c/dom/Node;

    iput-object v7, v6, Lorg/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fDomErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v6, :cond_1

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fDomErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lorg/apache/xerces/dom/DOMErrorImpl;

    invoke-interface {v6, v7}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    move-result v6

    :cond_1
    return-void

    :cond_2
    move-object v7, v2

    goto :goto_0
.end method

.method public getErrorHandler()Lorg/w3c/dom/DOMErrorHandler;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fDomErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object v0, v1

    return-object v0
.end method

.method public handleError(Lorg/w3c/dom/DOMError;)Z
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->printError(Lorg/w3c/dom/DOMError;)V

    move-object v2, v0

    iget-boolean v2, v2, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->eStatus:Z

    move v0, v2

    return v0
.end method

.method public setErrorHandler(Lorg/w3c/dom/DOMErrorHandler;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fDomErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    return-void
.end method

.method public warning(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/parser/XMLParseException;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lorg/apache/xerces/dom/DOMErrorImpl;

    const/4 v6, 0x1

    iput-short v6, v5, Lorg/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v6, v3

    iput-object v6, v5, Lorg/apache/xerces/dom/DOMErrorImpl;->fException:Ljava/lang/Exception;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v6, v2

    iput-object v6, v5, Lorg/apache/xerces/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v7, v3

    invoke-virtual {v7}, Lorg/apache/xerces/xni/parser/XMLParseException;->getMessage()Ljava/lang/String;

    move-result-object v7

    move-object v9, v6

    move-object v10, v7

    move-object v6, v10

    move-object v7, v9

    move-object v8, v10

    iput-object v8, v7, Lorg/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    iput-object v6, v5, Lorg/apache/xerces/dom/DOMErrorImpl;->fRelatedData:Ljava/lang/Object;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lorg/apache/xerces/dom/DOMErrorImpl;

    iget-object v5, v5, Lorg/apache/xerces/dom/DOMErrorImpl;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    move-object v4, v5

    move-object v5, v4

    if-eqz v5, :cond_0

    move-object v5, v4

    move-object v6, v3

    invoke-virtual {v6}, Lorg/apache/xerces/xni/parser/XMLParseException;->getColumnNumber()I

    move-result v6

    iput v6, v5, Lorg/apache/xerces/dom/DOMLocatorImpl;->fColumnNumber:I

    move-object v5, v4

    move-object v6, v3

    invoke-virtual {v6}, Lorg/apache/xerces/xni/parser/XMLParseException;->getLineNumber()I

    move-result v6

    iput v6, v5, Lorg/apache/xerces/dom/DOMLocatorImpl;->fLineNumber:I

    move-object v5, v4

    move-object v6, v3

    invoke-virtual {v6}, Lorg/apache/xerces/xni/parser/XMLParseException;->getCharacterOffset()I

    move-result v6

    iput v6, v5, Lorg/apache/xerces/dom/DOMLocatorImpl;->fUtf16Offset:I

    move-object v5, v4

    move-object v6, v3

    invoke-virtual {v6}, Lorg/apache/xerces/xni/parser/XMLParseException;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lorg/apache/xerces/dom/DOMLocatorImpl;->fUri:Ljava/lang/String;

    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fCurrentNode:Lorg/w3c/dom/Node;

    iput-object v6, v5, Lorg/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fDomErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fDomErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fDOMError:Lorg/apache/xerces/dom/DOMErrorImpl;

    invoke-interface {v5, v6}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    move-result v5

    :cond_1
    return-void
.end method
