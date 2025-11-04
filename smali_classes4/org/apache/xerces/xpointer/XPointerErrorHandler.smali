.class final Lorg/apache/xerces/xpointer/XPointerErrorHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xerces/xni/parser/XMLErrorHandler;


# instance fields
.field protected fOut:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>()V
    .locals 6

    move-object v0, p0

    move-object v1, v0

    new-instance v2, Ljava/io/PrintWriter;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Lorg/apache/xerces/xpointer/XPointerErrorHandler;-><init>(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/PrintWriter;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/xpointer/XPointerErrorHandler;->fOut:Ljava/io/PrintWriter;

    return-void
.end method

.method private printError(Ljava/lang/String;Lorg/apache/xerces/xni/parser/XMLParseException;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xpointer/XPointerErrorHandler;->fOut:Ljava/io/PrintWriter;

    const-string/jumbo v6, "["

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xpointer/XPointerErrorHandler;->fOut:Ljava/io/PrintWriter;

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xpointer/XPointerErrorHandler;->fOut:Ljava/io/PrintWriter;

    const-string/jumbo v6, "] "

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v2

    invoke-virtual {v5}, Lorg/apache/xerces/xni/parser/XMLParseException;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    move-object v5, v3

    if-eqz v5, :cond_1

    move-object v5, v3

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    move v4, v5

    move v5, v4

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    move-object v5, v3

    move v6, v4

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xpointer/XPointerErrorHandler;->fOut:Ljava/io/PrintWriter;

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xpointer/XPointerErrorHandler;->fOut:Ljava/io/PrintWriter;

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(C)V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xpointer/XPointerErrorHandler;->fOut:Ljava/io/PrintWriter;

    move-object v6, v2

    invoke-virtual {v6}, Lorg/apache/xerces/xni/parser/XMLParseException;->getLineNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(I)V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xpointer/XPointerErrorHandler;->fOut:Ljava/io/PrintWriter;

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(C)V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xpointer/XPointerErrorHandler;->fOut:Ljava/io/PrintWriter;

    move-object v6, v2

    invoke-virtual {v6}, Lorg/apache/xerces/xni/parser/XMLParseException;->getColumnNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(I)V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xpointer/XPointerErrorHandler;->fOut:Ljava/io/PrintWriter;

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xpointer/XPointerErrorHandler;->fOut:Ljava/io/PrintWriter;

    move-object v6, v2

    invoke-virtual {v6}, Lorg/apache/xerces/xni/parser/XMLParseException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xpointer/XPointerErrorHandler;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v5}, Ljava/io/PrintWriter;->println()V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xpointer/XPointerErrorHandler;->fOut:Ljava/io/PrintWriter;

    invoke-virtual {v5}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/parser/XMLParseException;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    const-string/jumbo v5, "Error"

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Lorg/apache/xerces/xpointer/XPointerErrorHandler;->printError(Ljava/lang/String;Lorg/apache/xerces/xni/parser/XMLParseException;)V

    return-void
.end method

.method public fatalError(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/parser/XMLParseException;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    const-string/jumbo v5, "Fatal Error"

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Lorg/apache/xerces/xpointer/XPointerErrorHandler;->printError(Ljava/lang/String;Lorg/apache/xerces/xni/parser/XMLParseException;)V

    move-object v4, v3

    throw v4
.end method

.method public warning(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/parser/XMLParseException;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    const-string/jumbo v5, "Warning"

    move-object v6, v3

    invoke-direct {v4, v5, v6}, Lorg/apache/xerces/xpointer/XPointerErrorHandler;->printError(Ljava/lang/String;Lorg/apache/xerces/xni/parser/XMLParseException;)V

    return-void
.end method
