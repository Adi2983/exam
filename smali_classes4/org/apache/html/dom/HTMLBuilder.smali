.class public Lorg/apache/html/dom/HTMLBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/xml/sax/DocumentHandler;


# instance fields
.field protected _current:Lorg/apache/xerces/dom/ElementImpl;

.field protected _document:Lorg/apache/html/dom/HTMLDocumentImpl;

.field private _done:Z

.field private _ignoreWhitespace:Z

.field protected _preRootNodes:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/apache/html/dom/HTMLBuilder;->_ignoreWhitespace:Z

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/apache/html/dom/HTMLBuilder;->_done:Z

    return-void
.end method


# virtual methods
.method public characters(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/html/dom/HTMLBuilder;->_current:Lorg/apache/xerces/dom/ElementImpl;

    if-nez v2, :cond_0

    new-instance v2, Lorg/xml/sax/SAXException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string/jumbo v4, "HTM009 State error: character data found outside of root element."

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/html/dom/HTMLBuilder;->_current:Lorg/apache/xerces/dom/ElementImpl;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/html/dom/HTMLBuilder;->_document:Lorg/apache/html/dom/HTMLDocumentImpl;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/html/dom/HTMLDocumentImpl;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/xerces/dom/ElementImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v2

    return-void
.end method

.method public characters([CII)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/html/dom/HTMLBuilder;->_current:Lorg/apache/xerces/dom/ElementImpl;

    if-nez v4, :cond_0

    new-instance v4, Lorg/xml/sax/SAXException;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    const-string/jumbo v6, "HTM010 State error: character data found outside of root element."

    invoke-direct {v5, v6}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/html/dom/HTMLBuilder;->_current:Lorg/apache/xerces/dom/ElementImpl;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/html/dom/HTMLBuilder;->_document:Lorg/apache/html/dom/HTMLDocumentImpl;

    new-instance v6, Ljava/lang/String;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v1

    move v9, v2

    move v10, v3

    invoke-direct {v7, v8, v9, v10}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5, v6}, Lorg/apache/html/dom/HTMLDocumentImpl;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/ElementImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v4

    return-void
.end method

.method public endDocument()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/html/dom/HTMLBuilder;->_document:Lorg/apache/html/dom/HTMLDocumentImpl;

    if-nez v1, :cond_0

    new-instance v1, Lorg/xml/sax/SAXException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "HTM002 State error: document never started or missing document element."

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/html/dom/HTMLBuilder;->_current:Lorg/apache/xerces/dom/ElementImpl;

    if-eqz v1, :cond_1

    new-instance v1, Lorg/xml/sax/SAXException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "HTM003 State error: document ended before end of document element."

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/html/dom/HTMLBuilder;->_current:Lorg/apache/xerces/dom/ElementImpl;

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/apache/html/dom/HTMLBuilder;->_done:Z

    return-void
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/html/dom/HTMLBuilder;->_current:Lorg/apache/xerces/dom/ElementImpl;

    if-nez v2, :cond_0

    new-instance v2, Lorg/xml/sax/SAXException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const-string/jumbo v4, "HTM007 State error: endElement called with no current node."

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/html/dom/HTMLBuilder;->_current:Lorg/apache/xerces/dom/ElementImpl;

    invoke-virtual {v2}, Lorg/apache/xerces/dom/ElementImpl;->getNodeName()Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lorg/xml/sax/SAXException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuffer;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v5, "HTM008 State error: mismatch in closing tag name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/html/dom/HTMLBuilder;->_current:Lorg/apache/xerces/dom/ElementImpl;

    invoke-virtual {v2}, Lorg/apache/xerces/dom/ElementImpl;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/html/dom/HTMLBuilder;->_current:Lorg/apache/xerces/dom/ElementImpl;

    invoke-virtual {v3}, Lorg/apache/xerces/dom/ElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v3

    if-ne v2, v3, :cond_2

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/html/dom/HTMLBuilder;->_current:Lorg/apache/xerces/dom/ElementImpl;

    :goto_0
    return-void

    :cond_2
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/html/dom/HTMLBuilder;->_current:Lorg/apache/xerces/dom/ElementImpl;

    invoke-virtual {v3}, Lorg/apache/xerces/dom/ElementImpl;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/dom/ElementImpl;

    iput-object v3, v2, Lorg/apache/html/dom/HTMLBuilder;->_current:Lorg/apache/xerces/dom/ElementImpl;

    goto :goto_0
.end method

.method public getHTMLDocument()Lorg/w3c/dom/html/HTMLDocument;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/html/dom/HTMLBuilder;->_document:Lorg/apache/html/dom/HTMLDocumentImpl;

    move-object v0, v1

    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/html/dom/HTMLBuilder;->_ignoreWhitespace:Z

    if-nez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/html/dom/HTMLBuilder;->_current:Lorg/apache/xerces/dom/ElementImpl;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/html/dom/HTMLBuilder;->_document:Lorg/apache/html/dom/HTMLDocumentImpl;

    new-instance v6, Ljava/lang/String;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v1

    move v9, v2

    move v10, v3

    invoke-direct {v7, v8, v9, v10}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5, v6}, Lorg/apache/html/dom/HTMLDocumentImpl;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/ElementImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v4

    :cond_0
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/html/dom/HTMLBuilder;->_current:Lorg/apache/xerces/dom/ElementImpl;

    if-nez v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/html/dom/HTMLBuilder;->_document:Lorg/apache/html/dom/HTMLDocumentImpl;

    if-nez v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/html/dom/HTMLBuilder;->_preRootNodes:Ljava/util/Vector;

    if-nez v3, :cond_0

    move-object v3, v0

    new-instance v4, Ljava/util/Vector;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    iput-object v4, v3, Lorg/apache/html/dom/HTMLBuilder;->_preRootNodes:Ljava/util/Vector;

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/html/dom/HTMLBuilder;->_preRootNodes:Ljava/util/Vector;

    new-instance v4, Lorg/apache/xerces/dom/ProcessingInstructionImpl;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x0

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/xerces/dom/ProcessingInstructionImpl;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/html/dom/HTMLBuilder;->_current:Lorg/apache/xerces/dom/ElementImpl;

    if-nez v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/html/dom/HTMLBuilder;->_document:Lorg/apache/html/dom/HTMLDocumentImpl;

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/html/dom/HTMLBuilder;->_document:Lorg/apache/html/dom/HTMLDocumentImpl;

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/html/dom/HTMLBuilder;->_document:Lorg/apache/html/dom/HTMLDocumentImpl;

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lorg/apache/html/dom/HTMLDocumentImpl;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/html/dom/HTMLDocumentImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/html/dom/HTMLBuilder;->_current:Lorg/apache/xerces/dom/ElementImpl;

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/html/dom/HTMLBuilder;->_document:Lorg/apache/html/dom/HTMLDocumentImpl;

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lorg/apache/html/dom/HTMLDocumentImpl;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/ElementImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    goto :goto_0
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    return-void
.end method

.method public startDocument()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/html/dom/HTMLBuilder;->_done:Z

    if-nez v1, :cond_0

    new-instance v1, Lorg/xml/sax/SAXException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string/jumbo v3, "HTM001 State error: startDocument fired twice on one builder."

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/html/dom/HTMLBuilder;->_document:Lorg/apache/html/dom/HTMLDocumentImpl;

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/html/dom/HTMLBuilder;->_done:Z

    return-void
.end method

.method public declared-synchronized startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v9, p0

    monitor-enter v9

    move-object v5, v1

    if-nez v5, :cond_0

    :try_start_0
    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "HTM004 Argument \'tagName\' is null."

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0

    :cond_0
    move-object v5, v0

    :try_start_1
    iget-object v5, v5, Lorg/apache/html/dom/HTMLBuilder;->_document:Lorg/apache/html/dom/HTMLDocumentImpl;

    if-nez v5, :cond_5

    move-object v5, v0

    new-instance v6, Lorg/apache/html/dom/HTMLDocumentImpl;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Lorg/apache/html/dom/HTMLDocumentImpl;-><init>()V

    iput-object v6, v5, Lorg/apache/html/dom/HTMLBuilder;->_document:Lorg/apache/html/dom/HTMLDocumentImpl;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/html/dom/HTMLBuilder;->_document:Lorg/apache/html/dom/HTMLDocumentImpl;

    invoke-virtual {v5}, Lorg/apache/html/dom/HTMLDocumentImpl;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5

    check-cast v5, Lorg/apache/xerces/dom/ElementImpl;

    move-object v3, v5

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lorg/apache/html/dom/HTMLBuilder;->_current:Lorg/apache/xerces/dom/ElementImpl;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/html/dom/HTMLBuilder;->_current:Lorg/apache/xerces/dom/ElementImpl;

    if-nez v5, :cond_1

    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "HTM005 State error: Document.getDocumentElement returns null."

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/html/dom/HTMLBuilder;->_preRootNodes:Ljava/util/Vector;

    if-eqz v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/html/dom/HTMLBuilder;->_preRootNodes:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    move v4, v5

    :goto_0
    move v5, v4

    move v10, v5

    move v5, v10

    move v6, v10

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v4, v6

    if-gtz v5, :cond_4

    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lorg/apache/html/dom/HTMLBuilder;->_preRootNodes:Ljava/util/Vector;

    :cond_2
    :goto_1
    move-object v5, v2

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    move v4, v5

    :goto_2
    move v5, v4

    move-object v6, v2

    invoke-interface {v6}, Lorg/xml/sax/AttributeList;->getLength()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-lt v5, v6, :cond_7

    :cond_3
    monitor-exit v9

    return-void

    :cond_4
    move-object v5, v0

    :try_start_2
    iget-object v5, v5, Lorg/apache/html/dom/HTMLBuilder;->_document:Lorg/apache/html/dom/HTMLDocumentImpl;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/html/dom/HTMLBuilder;->_preRootNodes:Ljava/util/Vector;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Node;

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Lorg/apache/html/dom/HTMLDocumentImpl;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v5

    goto :goto_0

    :cond_5
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/html/dom/HTMLBuilder;->_current:Lorg/apache/xerces/dom/ElementImpl;

    if-nez v5, :cond_6

    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "HTM006 State error: startElement called after end of document element."

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_6
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/html/dom/HTMLBuilder;->_document:Lorg/apache/html/dom/HTMLDocumentImpl;

    move-object v6, v1

    invoke-virtual {v5, v6}, Lorg/apache/html/dom/HTMLDocumentImpl;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    check-cast v5, Lorg/apache/xerces/dom/ElementImpl;

    move-object v3, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/html/dom/HTMLBuilder;->_current:Lorg/apache/xerces/dom/ElementImpl;

    move-object v6, v3

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/ElementImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lorg/apache/html/dom/HTMLBuilder;->_current:Lorg/apache/xerces/dom/ElementImpl;

    goto :goto_1

    :cond_7
    move-object v5, v3

    move-object v6, v2

    move v7, v4

    invoke-interface {v6, v7}, Lorg/xml/sax/AttributeList;->getName(I)Ljava/lang/String;

    move-result-object v6

    move-object v7, v2

    move v8, v4

    invoke-interface {v7, v8}, Lorg/xml/sax/AttributeList;->getValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method
