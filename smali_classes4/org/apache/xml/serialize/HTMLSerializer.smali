.class public Lorg/apache/xml/serialize/HTMLSerializer;
.super Lorg/apache/xml/serialize/BaseMarkupSerializer;


# static fields
.field public static final XHTMLNamespace:Ljava/lang/String; = "http://www.w3.org/1999/xhtml"


# instance fields
.field private _xhtml:Z

.field private fUserXHTMLNamespace:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 9

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    new-instance v3, Lorg/apache/xml/serialize/OutputFormat;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string/jumbo v5, "html"

    const-string/jumbo v6, "ISO-8859-1"

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {v1, v2, v3}, Lorg/apache/xml/serialize/HTMLSerializer;-><init>(ZLorg/apache/xml/serialize/OutputFormat;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lorg/apache/xml/serialize/OutputFormat;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v2

    if-eqz v5, :cond_0

    move-object v5, v2

    :goto_0
    invoke-direct {v3, v4, v5}, Lorg/apache/xml/serialize/HTMLSerializer;-><init>(ZLorg/apache/xml/serialize/OutputFormat;)V

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xml/serialize/HTMLSerializer;->setOutputByteStream(Ljava/io/OutputStream;)V

    return-void

    :cond_0
    new-instance v5, Lorg/apache/xml/serialize/OutputFormat;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "html"

    const-string/jumbo v8, "ISO-8859-1"

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/Writer;Lorg/apache/xml/serialize/OutputFormat;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v2

    if-eqz v5, :cond_0

    move-object v5, v2

    :goto_0
    invoke-direct {v3, v4, v5}, Lorg/apache/xml/serialize/HTMLSerializer;-><init>(ZLorg/apache/xml/serialize/OutputFormat;)V

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xml/serialize/HTMLSerializer;->setOutputCharStream(Ljava/io/Writer;)V

    return-void

    :cond_0
    new-instance v5, Lorg/apache/xml/serialize/OutputFormat;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    const-string/jumbo v7, "html"

    const-string/jumbo v8, "ISO-8859-1"

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public constructor <init>(Lorg/apache/xml/serialize/OutputFormat;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    :goto_0
    invoke-direct {v2, v3, v4}, Lorg/apache/xml/serialize/HTMLSerializer;-><init>(ZLorg/apache/xml/serialize/OutputFormat;)V

    return-void

    :cond_0
    new-instance v4, Lorg/apache/xml/serialize/OutputFormat;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string/jumbo v6, "html"

    const-string/jumbo v7, "ISO-8859-1"

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected constructor <init>(ZLorg/apache/xml/serialize/OutputFormat;)V
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lorg/apache/xml/serialize/BaseMarkupSerializer;-><init>(Lorg/apache/xml/serialize/OutputFormat;)V

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xml/serialize/HTMLSerializer;->fUserXHTMLNamespace:Ljava/lang/String;

    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Lorg/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    return-void
.end method


# virtual methods
.method protected characters(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xml/serialize/HTMLSerializer;->content()Lorg/apache/xml/serialize/ElementState;

    move-result-object v2

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->characters(Ljava/lang/String;)V

    return-void
.end method

.method public characters([CII)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, v0

    :try_start_0
    invoke-virtual {v6}, Lorg/apache/xml/serialize/HTMLSerializer;->content()Lorg/apache/xml/serialize/ElementState;

    move-result-object v6

    move-object v4, v6

    move-object v6, v4

    const/4 v7, 0x0

    iput-boolean v7, v6, Lorg/apache/xml/serialize/ElementState;->doCData:Z

    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move v9, v3

    invoke-super {v6, v7, v8, v9}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->characters([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v6

    move-object v5, v6

    new-instance v6, Lorg/xml/sax/SAXException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v5

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v6
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v1

    invoke-virtual {v2, v3, v4, v5}, Lorg/apache/xml/serialize/HTMLSerializer;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    :try_start_0
    invoke-virtual {v5, v6, v7, v8}, Lorg/apache/xml/serialize/HTMLSerializer;->endElementIO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v5

    move-object v4, v5

    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v4

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v5
.end method

.method public endElementIO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v6}, Lorg/apache/xml/serialize/Printer;->unindent()V

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xml/serialize/HTMLSerializer;->getElementState()Lorg/apache/xml/serialize/ElementState;

    move-result-object v6

    move-object v4, v6

    move-object v6, v4

    iget-object v6, v6, Lorg/apache/xml/serialize/ElementState;->namespaceURI:Ljava/lang/String;

    if-eqz v6, :cond_0

    move-object v6, v4

    iget-object v6, v6, Lorg/apache/xml/serialize/ElementState;->namespaceURI:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_5

    :cond_0
    move-object v6, v4

    iget-object v6, v6, Lorg/apache/xml/serialize/ElementState;->rawName:Ljava/lang/String;

    move-object v5, v6

    :goto_0
    move-object v6, v0

    iget-boolean v6, v6, Lorg/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    if-eqz v6, :cond_a

    move-object v6, v4

    iget-boolean v6, v6, Lorg/apache/xml/serialize/ElementState;->empty:Z

    if-eqz v6, :cond_8

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v7, " />"

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :cond_1
    :goto_1
    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xml/serialize/HTMLSerializer;->leaveElementState()Lorg/apache/xml/serialize/ElementState;

    move-result-object v6

    move-object v4, v6

    move-object v6, v5

    if-eqz v6, :cond_2

    move-object v6, v5

    const-string/jumbo v7, "A"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    move-object v6, v5

    const-string/jumbo v7, "TD"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    move-object v6, v4

    const/4 v7, 0x1

    iput-boolean v7, v6, Lorg/apache/xml/serialize/ElementState;->afterElement:Z

    :cond_3
    move-object v6, v4

    const/4 v7, 0x0

    iput-boolean v7, v6, Lorg/apache/xml/serialize/ElementState;->empty:Z

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xml/serialize/HTMLSerializer;->isDocumentState()Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v6}, Lorg/apache/xml/serialize/Printer;->flush()V

    :cond_4
    return-void

    :cond_5
    move-object v6, v4

    iget-object v6, v6, Lorg/apache/xml/serialize/ElementState;->namespaceURI:Ljava/lang/String;

    const-string/jumbo v7, "http://www.w3.org/1999/xhtml"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/HTMLSerializer;->fUserXHTMLNamespace:Ljava/lang/String;

    if-eqz v6, :cond_7

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/HTMLSerializer;->fUserXHTMLNamespace:Ljava/lang/String;

    move-object v7, v4

    iget-object v7, v7, Lorg/apache/xml/serialize/ElementState;->namespaceURI:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    move-object v6, v4

    iget-object v6, v6, Lorg/apache/xml/serialize/ElementState;->localName:Ljava/lang/String;

    move-object v5, v6

    goto :goto_0

    :cond_7
    const/4 v6, 0x0

    move-object v5, v6

    goto :goto_0

    :cond_8
    move-object v6, v4

    iget-boolean v6, v6, Lorg/apache/xml/serialize/ElementState;->inCData:Z

    if-eqz v6, :cond_9

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v7, "]]>"

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :cond_9
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v7, "</"

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object v7, v4

    iget-object v7, v7, Lorg/apache/xml/serialize/ElementState;->rawName:Ljava/lang/String;

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v7, 0x3e

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    goto/16 :goto_1

    :cond_a
    move-object v6, v4

    iget-boolean v6, v6, Lorg/apache/xml/serialize/ElementState;->empty:Z

    if-eqz v6, :cond_b

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v7, 0x3e

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    :cond_b
    move-object v6, v5

    if-eqz v6, :cond_c

    move-object v6, v5

    invoke-static {v6}, Lorg/apache/xml/serialize/HTMLdtd;->isOnlyOpening(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_c
    move-object v6, v0

    iget-boolean v6, v6, Lorg/apache/xml/serialize/HTMLSerializer;->_indenting:Z

    if-eqz v6, :cond_d

    move-object v6, v4

    iget-boolean v6, v6, Lorg/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-nez v6, :cond_d

    move-object v6, v4

    iget-boolean v6, v6, Lorg/apache/xml/serialize/ElementState;->afterElement:Z

    if-eqz v6, :cond_d

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v6}, Lorg/apache/xml/serialize/Printer;->breakLine()V

    :cond_d
    move-object v6, v4

    iget-boolean v6, v6, Lorg/apache/xml/serialize/ElementState;->inCData:Z

    if-eqz v6, :cond_e

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v7, "]]>"

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :cond_e
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v7, "</"

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object v7, v4

    iget-object v7, v7, Lorg/apache/xml/serialize/ElementState;->rawName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v7, 0x3e

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    goto/16 :goto_1
.end method

.method protected escapeURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    move v2, v3

    move v3, v2

    if-ltz v3, :cond_0

    move-object v3, v1

    const/4 v4, 0x0

    move v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    move-object v3, v1

    move-object v0, v3

    goto :goto_0
.end method

.method protected getEntityRef(I)Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move v1, p1

    move v2, v1

    invoke-static {v2}, Lorg/apache/xml/serialize/HTMLdtd;->fromChar(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method protected serializeElement(Lorg/w3c/dom/Element;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v11, v1

    invoke-interface {v11}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    move-object v11, v0

    invoke-virtual {v11}, Lorg/apache/xml/serialize/HTMLSerializer;->getElementState()Lorg/apache/xml/serialize/ElementState;

    move-result-object v11

    move-object v6, v11

    move-object v11, v0

    invoke-virtual {v11}, Lorg/apache/xml/serialize/HTMLSerializer;->isDocumentState()Z

    move-result v11

    if-eqz v11, :cond_9

    move-object v11, v0

    iget-boolean v11, v11, Lorg/apache/xml/serialize/HTMLSerializer;->_started:Z

    if-nez v11, :cond_0

    move-object v11, v0

    move-object v12, v10

    invoke-virtual {v11, v12}, Lorg/apache/xml/serialize/HTMLSerializer;->startDocument(Ljava/lang/String;)V

    :cond_0
    :goto_0
    move-object v11, v6

    iget-boolean v11, v11, Lorg/apache/xml/serialize/ElementState;->preserveSpace:Z

    move v7, v11

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v12, 0x3c

    invoke-virtual {v11, v12}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    move-object v11, v0

    iget-boolean v11, v11, Lorg/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    if-eqz v11, :cond_c

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object v12, v10

    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v12, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :goto_1
    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v11}, Lorg/apache/xml/serialize/Printer;->indent()V

    move-object v11, v1

    invoke-interface {v11}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v11

    move-object v3, v11

    move-object v11, v3

    if-eqz v11, :cond_1

    const/4 v11, 0x0

    move v4, v11

    :goto_2
    move v11, v4

    move-object v12, v3

    invoke-interface {v12}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v12

    if-lt v11, v12, :cond_d

    :cond_1
    move-object v11, v10

    invoke-static {v11}, Lorg/apache/xml/serialize/HTMLdtd;->isPreserveSpace(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v11, 0x1

    move v7, v11

    :cond_2
    move-object v11, v1

    invoke-interface {v11}, Lorg/w3c/dom/Element;->hasChildNodes()Z

    move-result v11

    if-nez v11, :cond_3

    move-object v11, v10

    invoke-static {v11}, Lorg/apache/xml/serialize/HTMLdtd;->isEmptyTag(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_17

    :cond_3
    move-object v11, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v14, v10

    move v15, v7

    invoke-virtual {v11, v12, v13, v14, v15}, Lorg/apache/xml/serialize/HTMLSerializer;->enterElementState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/xml/serialize/ElementState;

    move-result-object v11

    move-object v6, v11

    move-object v11, v10

    const-string/jumbo v12, "A"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    move-object v11, v10

    const-string/jumbo v12, "TD"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_4
    move-object v11, v6

    const/4 v12, 0x0

    iput-boolean v12, v11, Lorg/apache/xml/serialize/ElementState;->empty:Z

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v12, 0x3e

    invoke-virtual {v11, v12}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    :cond_5
    move-object v11, v10

    const-string/jumbo v12, "SCRIPT"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    move-object v11, v10

    const-string/jumbo v12, "STYLE"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    :cond_6
    move-object v11, v0

    iget-boolean v11, v11, Lorg/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    if-eqz v11, :cond_15

    move-object v11, v6

    const/4 v12, 0x1

    iput-boolean v12, v11, Lorg/apache/xml/serialize/ElementState;->doCData:Z

    :cond_7
    :goto_3
    move-object v11, v1

    invoke-interface {v11}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v11

    move-object v5, v11

    :goto_4
    move-object v11, v5

    if-nez v11, :cond_16

    move-object v11, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v14, v10

    invoke-virtual {v11, v12, v13, v14}, Lorg/apache/xml/serialize/HTMLSerializer;->endElementIO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_5
    return-void

    :cond_9
    move-object v11, v6

    iget-boolean v11, v11, Lorg/apache/xml/serialize/ElementState;->empty:Z

    if-eqz v11, :cond_a

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v12, 0x3e

    invoke-virtual {v11, v12}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    :cond_a
    move-object v11, v0

    iget-boolean v11, v11, Lorg/apache/xml/serialize/HTMLSerializer;->_indenting:Z

    if-eqz v11, :cond_0

    move-object v11, v6

    iget-boolean v11, v11, Lorg/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-nez v11, :cond_0

    move-object v11, v6

    iget-boolean v11, v11, Lorg/apache/xml/serialize/ElementState;->empty:Z

    if-nez v11, :cond_b

    move-object v11, v6

    iget-boolean v11, v11, Lorg/apache/xml/serialize/ElementState;->afterElement:Z

    if-eqz v11, :cond_0

    :cond_b
    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v11}, Lorg/apache/xml/serialize/Printer;->breakLine()V

    goto/16 :goto_0

    :cond_c
    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object v12, v10

    invoke-virtual {v11, v12}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    move-object v11, v3

    move v12, v4

    invoke-interface {v11, v12}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Attr;

    move-object v2, v11

    move-object v11, v2

    invoke-interface {v11}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v11, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    move-object v8, v11

    move-object v11, v2

    invoke-interface {v11}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    move-object v11, v2

    invoke-interface {v11}, Lorg/w3c/dom/Attr;->getSpecified()Z

    move-result v11

    if-eqz v11, :cond_e

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v11}, Lorg/apache/xml/serialize/Printer;->printSpace()V

    move-object v11, v0

    iget-boolean v11, v11, Lorg/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    if-eqz v11, :cond_10

    move-object v11, v9

    if-nez v11, :cond_f

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object v12, v8

    invoke-virtual {v11, v12}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v12, "=\"\""

    invoke-virtual {v11, v12}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :cond_e
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_f
    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object v12, v8

    invoke-virtual {v11, v12}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v12, "=\""

    invoke-virtual {v11, v12}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v11, v0

    move-object v12, v9

    invoke-virtual {v11, v12}, Lorg/apache/xml/serialize/HTMLSerializer;->printEscaped(Ljava/lang/String;)V

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v12, 0x22

    invoke-virtual {v11, v12}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_6

    :cond_10
    move-object v11, v9

    if-nez v11, :cond_11

    const-string/jumbo v11, ""

    move-object v9, v11

    :cond_11
    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xml/serialize/HTMLSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {v11}, Lorg/apache/xml/serialize/OutputFormat;->getPreserveEmptyAttributes()Z

    move-result v11

    if-nez v11, :cond_12

    move-object v11, v9

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_12

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object v12, v8

    invoke-virtual {v11, v12}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_6

    :cond_12
    move-object v11, v10

    move-object v12, v8

    invoke-static {v11, v12}, Lorg/apache/xml/serialize/HTMLdtd;->isURI(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_13

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object v12, v8

    invoke-virtual {v11, v12}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v12, "=\""

    invoke-virtual {v11, v12}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object v12, v0

    move-object v13, v9

    invoke-virtual {v12, v13}, Lorg/apache/xml/serialize/HTMLSerializer;->escapeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v12, 0x22

    invoke-virtual {v11, v12}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_6

    :cond_13
    move-object v11, v10

    move-object v12, v8

    invoke-static {v11, v12}, Lorg/apache/xml/serialize/HTMLdtd;->isBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_14

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object v12, v8

    invoke-virtual {v11, v12}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_6

    :cond_14
    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object v12, v8

    invoke-virtual {v11, v12}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v12, "=\""

    invoke-virtual {v11, v12}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v11, v0

    move-object v12, v9

    invoke-virtual {v11, v12}, Lorg/apache/xml/serialize/HTMLSerializer;->printEscaped(Ljava/lang/String;)V

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v12, 0x22

    invoke-virtual {v11, v12}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    goto/16 :goto_6

    :cond_15
    move-object v11, v6

    const/4 v12, 0x1

    iput-boolean v12, v11, Lorg/apache/xml/serialize/ElementState;->unescaped:Z

    goto/16 :goto_3

    :cond_16
    move-object v11, v0

    move-object v12, v5

    invoke-virtual {v11, v12}, Lorg/apache/xml/serialize/HTMLSerializer;->serializeNode(Lorg/w3c/dom/Node;)V

    move-object v11, v5

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v11

    move-object v5, v11

    goto/16 :goto_4

    :cond_17
    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v11}, Lorg/apache/xml/serialize/Printer;->unindent()V

    move-object v11, v0

    iget-boolean v11, v11, Lorg/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    if-eqz v11, :cond_18

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v12, " />"

    invoke-virtual {v11, v12}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :goto_7
    move-object v11, v6

    const/4 v12, 0x1

    iput-boolean v12, v11, Lorg/apache/xml/serialize/ElementState;->afterElement:Z

    move-object v11, v6

    const/4 v12, 0x0

    iput-boolean v12, v11, Lorg/apache/xml/serialize/ElementState;->empty:Z

    move-object v11, v0

    invoke-virtual {v11}, Lorg/apache/xml/serialize/HTMLSerializer;->isDocumentState()Z

    move-result v11

    if-eqz v11, :cond_8

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v11}, Lorg/apache/xml/serialize/Printer;->flush()V

    goto/16 :goto_5

    :cond_18
    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v12, 0x3e

    invoke-virtual {v11, v12}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_7
.end method

.method public setOutputFormat(Lorg/apache/xml/serialize/OutputFormat;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    :goto_0
    invoke-super {v2, v3}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->setOutputFormat(Lorg/apache/xml/serialize/OutputFormat;)V

    return-void

    :cond_0
    new-instance v3, Lorg/apache/xml/serialize/OutputFormat;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string/jumbo v5, "html"

    const-string/jumbo v6, "ISO-8859-1"

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public setXHTMLNamespace(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xml/serialize/HTMLSerializer;->fUserXHTMLNamespace:Ljava/lang/String;

    return-void
.end method

.method protected startDocument(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v2}, Lorg/apache/xml/serialize/Printer;->leaveDTD()Ljava/lang/String;

    move-result-object v2

    move-object v2, v0

    iget-boolean v2, v2, Lorg/apache/xml/serialize/HTMLSerializer;->_started:Z

    if-nez v2, :cond_3

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/HTMLSerializer;->_docTypePublicId:Ljava/lang/String;

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/HTMLSerializer;->_docTypeSystemId:Ljava/lang/String;

    if-nez v2, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Lorg/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    if-eqz v2, :cond_4

    move-object v2, v0

    const-string/jumbo v3, "-//W3C//DTD XHTML 1.0 Strict//EN"

    iput-object v3, v2, Lorg/apache/xml/serialize/HTMLSerializer;->_docTypePublicId:Ljava/lang/String;

    move-object v2, v0

    const-string/jumbo v3, "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd"

    iput-object v3, v2, Lorg/apache/xml/serialize/HTMLSerializer;->_docTypeSystemId:Ljava/lang/String;

    :cond_0
    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/HTMLSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {v2}, Lorg/apache/xml/serialize/OutputFormat;->getOmitDocumentType()Z

    move-result v2

    if-nez v2, :cond_3

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/HTMLSerializer;->_docTypePublicId:Ljava/lang/String;

    if-eqz v2, :cond_7

    move-object v2, v0

    iget-boolean v2, v2, Lorg/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/HTMLSerializer;->_docTypeSystemId:Ljava/lang/String;

    if-eqz v2, :cond_7

    :cond_1
    move-object v2, v0

    iget-boolean v2, v2, Lorg/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    if-eqz v2, :cond_5

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v3, "<!DOCTYPE html PUBLIC "

    invoke-virtual {v2, v3}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :goto_1
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/HTMLSerializer;->_docTypePublicId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/apache/xml/serialize/HTMLSerializer;->printDoctypeURL(Ljava/lang/String;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/HTMLSerializer;->_docTypeSystemId:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-boolean v2, v2, Lorg/apache/xml/serialize/HTMLSerializer;->_indenting:Z

    if-eqz v2, :cond_6

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v2}, Lorg/apache/xml/serialize/Printer;->breakLine()V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v3, "                      "

    invoke-virtual {v2, v3}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :goto_2
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/HTMLSerializer;->_docTypeSystemId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/apache/xml/serialize/HTMLSerializer;->printDoctypeURL(Ljava/lang/String;)V

    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v2}, Lorg/apache/xml/serialize/Printer;->breakLine()V

    :cond_3
    :goto_3
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/apache/xml/serialize/HTMLSerializer;->_started:Z

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xml/serialize/HTMLSerializer;->serializePreRoot()V

    return-void

    :cond_4
    move-object v2, v0

    const-string/jumbo v3, "-//W3C//DTD HTML 4.01//EN"

    iput-object v3, v2, Lorg/apache/xml/serialize/HTMLSerializer;->_docTypePublicId:Ljava/lang/String;

    move-object v2, v0

    const-string/jumbo v3, "http://www.w3.org/TR/html4/strict.dtd"

    iput-object v3, v2, Lorg/apache/xml/serialize/HTMLSerializer;->_docTypeSystemId:Ljava/lang/String;

    goto :goto_0

    :cond_5
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v3, "<!DOCTYPE HTML PUBLIC "

    invoke-virtual {v2, v3}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_2

    :cond_7
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/HTMLSerializer;->_docTypeSystemId:Ljava/lang/String;

    if-eqz v2, :cond_3

    move-object v2, v0

    iget-boolean v2, v2, Lorg/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    if-eqz v2, :cond_8

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v3, "<!DOCTYPE html SYSTEM "

    invoke-virtual {v2, v3}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :goto_4
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/HTMLSerializer;->_docTypeSystemId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/apache/xml/serialize/HTMLSerializer;->printDoctypeURL(Ljava/lang/String;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v3, 0x3e

    invoke-virtual {v2, v3}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v2}, Lorg/apache/xml/serialize/Printer;->breakLine()V

    goto :goto_3

    :cond_8
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v3, "<!DOCTYPE HTML SYSTEM "

    invoke-virtual {v2, v3}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    const/16 v17, 0x0

    move/from16 v13, v17

    move-object/from16 v17, v2

    :try_start_0
    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    new-instance v17, Ljava/lang/IllegalStateException;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    const-string/jumbo v19, "http://apache.org/xml/serializer"

    const-string/jumbo v20, "NoWriterSupplied"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v17

    move-object/from16 v14, v17

    new-instance v17, Lorg/xml/sax/SAXException;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v19, v14

    invoke-direct/range {v18 .. v19}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v17

    :cond_0
    move-object/from16 v17, v2

    :try_start_1
    invoke-virtual/range {v17 .. v17}, Lorg/apache/xml/serialize/HTMLSerializer;->getElementState()Lorg/apache/xml/serialize/ElementState;

    move-result-object v17

    move-object/from16 v9, v17

    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lorg/apache/xml/serialize/HTMLSerializer;->isDocumentState()Z

    move-result v17

    if-eqz v17, :cond_e

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lorg/apache/xml/serialize/HTMLSerializer;->_started:Z

    move/from16 v17, v0

    if-nez v17, :cond_2

    move-object/from16 v17, v2

    move-object/from16 v18, v4

    if-eqz v18, :cond_1

    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_d

    :cond_1
    move-object/from16 v18, v5

    :goto_0
    invoke-virtual/range {v17 .. v18}, Lorg/apache/xml/serialize/HTMLSerializer;->startDocument(Ljava/lang/String;)V

    :cond_2
    :goto_1
    move-object/from16 v17, v9

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lorg/apache/xml/serialize/ElementState;->preserveSpace:Z

    move/from16 v17, v0

    move/from16 v8, v17

    move-object/from16 v17, v3

    if-eqz v17, :cond_11

    move-object/from16 v17, v3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_11

    const/16 v17, 0x1

    :goto_2
    move/from16 v14, v17

    move-object/from16 v17, v5

    if-eqz v17, :cond_3

    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_5

    :cond_3
    move-object/from16 v17, v4

    move-object/from16 v5, v17

    move/from16 v17, v14

    if-eqz v17, :cond_4

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-virtual/range {v17 .. v18}, Lorg/apache/xml/serialize/HTMLSerializer;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v15, v17

    move-object/from16 v17, v15

    if-eqz v17, :cond_4

    move-object/from16 v17, v15

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-eqz v17, :cond_4

    new-instance v17, Ljava/lang/StringBuffer;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v18, v15

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    const-string/jumbo v18, ":"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    move-object/from16 v18, v4

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v5, v17

    :cond_4
    const/16 v17, 0x1

    move/from16 v13, v17

    :cond_5
    move/from16 v17, v14

    if-nez v17, :cond_12

    move-object/from16 v17, v5

    move-object/from16 v12, v17

    :goto_3
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object/from16 v17, v0

    const/16 v18, 0x3c

    invoke-virtual/range {v17 .. v18}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lorg/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    move/from16 v17, v0

    if-eqz v17, :cond_15

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object/from16 v17, v0

    move-object/from16 v18, v5

    sget-object v19, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :goto_4
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/xml/serialize/Printer;->indent()V

    move-object/from16 v17, v6

    if-eqz v17, :cond_6

    const/16 v17, 0x0

    move/from16 v7, v17

    :goto_5
    move/from16 v17, v7

    move-object/from16 v18, v6

    invoke-interface/range {v18 .. v18}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_16

    :cond_6
    move-object/from16 v17, v12

    if-eqz v17, :cond_7

    move-object/from16 v17, v12

    invoke-static/range {v17 .. v17}, Lorg/apache/xml/serialize/HTMLdtd;->isPreserveSpace(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    const/16 v17, 0x1

    move/from16 v8, v17

    :cond_7
    move/from16 v17, v13

    if-eqz v17, :cond_8

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/xml/serialize/HTMLSerializer;->_prefixes:Ljava/util/Hashtable;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    move-object/from16 v15, v17

    :goto_6
    move-object/from16 v17, v15

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-nez v17, :cond_1e

    :cond_8
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move/from16 v21, v8

    invoke-virtual/range {v17 .. v21}, Lorg/apache/xml/serialize/HTMLSerializer;->enterElementState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/xml/serialize/ElementState;

    move-result-object v17

    move-object/from16 v9, v17

    move-object/from16 v17, v12

    if-eqz v17, :cond_a

    move-object/from16 v17, v12

    const-string/jumbo v18, "A"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_9

    move-object/from16 v17, v12

    const-string/jumbo v18, "TD"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a

    :cond_9
    move-object/from16 v17, v9

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lorg/apache/xml/serialize/ElementState;->empty:Z

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object/from16 v17, v0

    const/16 v18, 0x3e

    invoke-virtual/range {v17 .. v18}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    :cond_a
    move-object/from16 v17, v12

    if-eqz v17, :cond_c

    move-object/from16 v17, v5

    const-string/jumbo v18, "SCRIPT"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_b

    move-object/from16 v17, v5

    const-string/jumbo v18, "STYLE"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_c

    :cond_b
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lorg/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    move/from16 v17, v0

    if-eqz v17, :cond_20

    move-object/from16 v17, v9

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lorg/apache/xml/serialize/ElementState;->doCData:Z

    :cond_c
    :goto_7
    return-void

    :cond_d
    move-object/from16 v18, v4

    goto/16 :goto_0

    :cond_e
    move-object/from16 v17, v9

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lorg/apache/xml/serialize/ElementState;->empty:Z

    move/from16 v17, v0

    if-eqz v17, :cond_f

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object/from16 v17, v0

    const/16 v18, 0x3e

    invoke-virtual/range {v17 .. v18}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    :cond_f
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lorg/apache/xml/serialize/HTMLSerializer;->_indenting:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v17, v9

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lorg/apache/xml/serialize/ElementState;->preserveSpace:Z

    move/from16 v17, v0

    if-nez v17, :cond_2

    move-object/from16 v17, v9

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lorg/apache/xml/serialize/ElementState;->empty:Z

    move/from16 v17, v0

    if-nez v17, :cond_10

    move-object/from16 v17, v9

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lorg/apache/xml/serialize/ElementState;->afterElement:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    :cond_10
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/xml/serialize/Printer;->breakLine()V

    goto/16 :goto_1

    :cond_11
    const/16 v17, 0x0

    goto/16 :goto_2

    :cond_12
    move-object/from16 v17, v3

    const-string/jumbo v18, "http://www.w3.org/1999/xhtml"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_13

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/xml/serialize/HTMLSerializer;->fUserXHTMLNamespace:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_14

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/xml/serialize/HTMLSerializer;->fUserXHTMLNamespace:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v18, v3

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14

    :cond_13
    move-object/from16 v17, v4

    move-object/from16 v12, v17

    goto/16 :goto_3

    :cond_14
    const/16 v17, 0x0

    move-object/from16 v12, v17

    goto/16 :goto_3

    :cond_15
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object/from16 v17, v0

    move-object/from16 v18, v5

    invoke-virtual/range {v17 .. v18}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_16
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/xml/serialize/Printer;->printSpace()V

    move-object/from16 v17, v6

    move/from16 v18, v7

    invoke-interface/range {v17 .. v18}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v17

    sget-object v18, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v10, v17

    move-object/from16 v17, v6

    move/from16 v18, v7

    invoke-interface/range {v17 .. v18}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v11, v17

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lorg/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    move/from16 v17, v0

    if-nez v17, :cond_17

    move/from16 v17, v14

    if-eqz v17, :cond_19

    :cond_17
    move-object/from16 v17, v11

    if-nez v17, :cond_18

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object/from16 v17, v0

    move-object/from16 v18, v10

    invoke-virtual/range {v17 .. v18}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object/from16 v17, v0

    const-string/jumbo v18, "=\"\""

    invoke-virtual/range {v17 .. v18}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :goto_8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_5

    :cond_18
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object/from16 v17, v0

    move-object/from16 v18, v10

    invoke-virtual/range {v17 .. v18}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object/from16 v17, v0

    const-string/jumbo v18, "=\""

    invoke-virtual/range {v17 .. v18}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object/from16 v17, v2

    move-object/from16 v18, v11

    invoke-virtual/range {v17 .. v18}, Lorg/apache/xml/serialize/HTMLSerializer;->printEscaped(Ljava/lang/String;)V

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object/from16 v17, v0

    const/16 v18, 0x22

    invoke-virtual/range {v17 .. v18}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_8

    :cond_19
    move-object/from16 v17, v11

    if-nez v17, :cond_1a

    const-string/jumbo v17, ""

    move-object/from16 v11, v17

    :cond_1a
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/xml/serialize/HTMLSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/xml/serialize/OutputFormat;->getPreserveEmptyAttributes()Z

    move-result v17

    if-nez v17, :cond_1b

    move-object/from16 v17, v11

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_1b

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object/from16 v17, v0

    move-object/from16 v18, v10

    invoke-virtual/range {v17 .. v18}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_8

    :cond_1b
    move-object/from16 v17, v5

    move-object/from16 v18, v10

    invoke-static/range {v17 .. v18}, Lorg/apache/xml/serialize/HTMLdtd;->isURI(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1c

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object/from16 v17, v0

    move-object/from16 v18, v10

    invoke-virtual/range {v17 .. v18}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object/from16 v17, v0

    const-string/jumbo v18, "=\""

    invoke-virtual/range {v17 .. v18}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v19, v11

    invoke-virtual/range {v18 .. v19}, Lorg/apache/xml/serialize/HTMLSerializer;->escapeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object/from16 v17, v0

    const/16 v18, 0x22

    invoke-virtual/range {v17 .. v18}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    goto/16 :goto_8

    :cond_1c
    move-object/from16 v17, v5

    move-object/from16 v18, v10

    invoke-static/range {v17 .. v18}, Lorg/apache/xml/serialize/HTMLdtd;->isBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1d

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object/from16 v17, v0

    move-object/from16 v18, v10

    invoke-virtual/range {v17 .. v18}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_1d
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object/from16 v17, v0

    move-object/from16 v18, v10

    invoke-virtual/range {v17 .. v18}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object/from16 v17, v0

    const-string/jumbo v18, "=\""

    invoke-virtual/range {v17 .. v18}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object/from16 v17, v2

    move-object/from16 v18, v11

    invoke-virtual/range {v17 .. v18}, Lorg/apache/xml/serialize/HTMLSerializer;->printEscaped(Ljava/lang/String;)V

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object/from16 v17, v0

    const/16 v18, 0x22

    invoke-virtual/range {v17 .. v18}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    goto/16 :goto_8

    :cond_1e
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/xml/serialize/Printer;->printSpace()V

    move-object/from16 v17, v15

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    move-object/from16 v16, v17

    move-object/from16 v17, v16

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v11, v17

    move-object/from16 v17, v16

    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v10, v17

    move-object/from16 v17, v10

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_1f

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object/from16 v17, v0

    const-string/jumbo v18, "xmlns=\""

    invoke-virtual/range {v17 .. v18}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object/from16 v17, v2

    move-object/from16 v18, v11

    invoke-virtual/range {v17 .. v18}, Lorg/apache/xml/serialize/HTMLSerializer;->printEscaped(Ljava/lang/String;)V

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object/from16 v17, v0

    const/16 v18, 0x22

    invoke-virtual/range {v17 .. v18}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    goto/16 :goto_6

    :cond_1f
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object/from16 v17, v0

    const-string/jumbo v18, "xmlns:"

    invoke-virtual/range {v17 .. v18}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object/from16 v17, v0

    move-object/from16 v18, v10

    invoke-virtual/range {v17 .. v18}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object/from16 v17, v0

    const-string/jumbo v18, "=\""

    invoke-virtual/range {v17 .. v18}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object/from16 v17, v2

    move-object/from16 v18, v11

    invoke-virtual/range {v17 .. v18}, Lorg/apache/xml/serialize/HTMLSerializer;->printEscaped(Ljava/lang/String;)V

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object/from16 v17, v0

    const/16 v18, 0x22

    invoke-virtual/range {v17 .. v18}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    goto/16 :goto_6

    :cond_20
    move-object/from16 v17, v9

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lorg/apache/xml/serialize/ElementState;->unescaped:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7
.end method

.method public startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v9, v0

    :try_start_0
    iget-object v9, v9, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    if-nez v9, :cond_0

    new-instance v9, Ljava/lang/IllegalStateException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const-string/jumbo v11, "http://apache.org/xml/serializer"

    const-string/jumbo v12, "NoWriterSupplied"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v9

    move-object v8, v9

    new-instance v9, Lorg/xml/sax/SAXException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v8

    invoke-direct {v10, v11}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v9

    :cond_0
    move-object v9, v0

    :try_start_1
    invoke-virtual {v9}, Lorg/apache/xml/serialize/HTMLSerializer;->getElementState()Lorg/apache/xml/serialize/ElementState;

    move-result-object v9

    move-object v5, v9

    move-object v9, v0

    invoke-virtual {v9}, Lorg/apache/xml/serialize/HTMLSerializer;->isDocumentState()Z

    move-result v9

    if-eqz v9, :cond_8

    move-object v9, v0

    iget-boolean v9, v9, Lorg/apache/xml/serialize/HTMLSerializer;->_started:Z

    if-nez v9, :cond_1

    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/HTMLSerializer;->startDocument(Ljava/lang/String;)V

    :cond_1
    :goto_0
    move-object v9, v5

    iget-boolean v9, v9, Lorg/apache/xml/serialize/ElementState;->preserveSpace:Z

    move v4, v9

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v10, 0x3c

    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    move-object v9, v0

    iget-boolean v9, v9, Lorg/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    if-eqz v9, :cond_b

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object v10, v1

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :goto_1
    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v9}, Lorg/apache/xml/serialize/Printer;->indent()V

    move-object v9, v2

    if-eqz v9, :cond_2

    const/4 v9, 0x0

    move v3, v9

    :goto_2
    move v9, v3

    move-object v10, v2

    invoke-interface {v10}, Lorg/xml/sax/AttributeList;->getLength()I

    move-result v10

    if-lt v9, v10, :cond_c

    :cond_2
    move-object v9, v1

    invoke-static {v9}, Lorg/apache/xml/serialize/HTMLdtd;->isPreserveSpace(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    move v4, v9

    :cond_3
    move-object v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v12, v1

    move v13, v4

    invoke-virtual {v9, v10, v11, v12, v13}, Lorg/apache/xml/serialize/HTMLSerializer;->enterElementState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/xml/serialize/ElementState;

    move-result-object v9

    move-object v5, v9

    move-object v9, v1

    const-string/jumbo v10, "A"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    move-object v9, v1

    const-string/jumbo v10, "TD"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_4
    move-object v9, v5

    const/4 v10, 0x0

    iput-boolean v10, v9, Lorg/apache/xml/serialize/ElementState;->empty:Z

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v10, 0x3e

    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    :cond_5
    move-object v9, v1

    const-string/jumbo v10, "SCRIPT"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    move-object v9, v1

    const-string/jumbo v10, "STYLE"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    :cond_6
    move-object v9, v0

    iget-boolean v9, v9, Lorg/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    if-eqz v9, :cond_13

    move-object v9, v5

    const/4 v10, 0x1

    iput-boolean v10, v9, Lorg/apache/xml/serialize/ElementState;->doCData:Z

    :cond_7
    :goto_3
    return-void

    :cond_8
    move-object v9, v5

    iget-boolean v9, v9, Lorg/apache/xml/serialize/ElementState;->empty:Z

    if-eqz v9, :cond_9

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v10, 0x3e

    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    :cond_9
    move-object v9, v0

    iget-boolean v9, v9, Lorg/apache/xml/serialize/HTMLSerializer;->_indenting:Z

    if-eqz v9, :cond_1

    move-object v9, v5

    iget-boolean v9, v9, Lorg/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-nez v9, :cond_1

    move-object v9, v5

    iget-boolean v9, v9, Lorg/apache/xml/serialize/ElementState;->empty:Z

    if-nez v9, :cond_a

    move-object v9, v5

    iget-boolean v9, v9, Lorg/apache/xml/serialize/ElementState;->afterElement:Z

    if-eqz v9, :cond_1

    :cond_a
    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v9}, Lorg/apache/xml/serialize/Printer;->breakLine()V

    goto/16 :goto_0

    :cond_b
    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object v10, v1

    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v9}, Lorg/apache/xml/serialize/Printer;->printSpace()V

    move-object v9, v2

    move v10, v3

    invoke-interface {v9, v10}, Lorg/xml/sax/AttributeList;->getName(I)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v9, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    move-object v9, v2

    move v10, v3

    invoke-interface {v9, v10}, Lorg/xml/sax/AttributeList;->getValue(I)Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    move-object v9, v0

    iget-boolean v9, v9, Lorg/apache/xml/serialize/HTMLSerializer;->_xhtml:Z

    if-eqz v9, :cond_e

    move-object v9, v7

    if-nez v9, :cond_d

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object v10, v6

    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v10, "=\"\""

    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_d
    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object v10, v6

    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v10, "=\""

    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v9, v0

    move-object v10, v7

    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/HTMLSerializer;->printEscaped(Ljava/lang/String;)V

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v10, 0x22

    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_4

    :cond_e
    move-object v9, v7

    if-nez v9, :cond_f

    const-string/jumbo v9, ""

    move-object v7, v9

    :cond_f
    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/HTMLSerializer;->_format:Lorg/apache/xml/serialize/OutputFormat;

    invoke-virtual {v9}, Lorg/apache/xml/serialize/OutputFormat;->getPreserveEmptyAttributes()Z

    move-result v9

    if-nez v9, :cond_10

    move-object v9, v7

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_10

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object v10, v6

    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_4

    :cond_10
    move-object v9, v1

    move-object v10, v6

    invoke-static {v9, v10}, Lorg/apache/xml/serialize/HTMLdtd;->isURI(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object v10, v6

    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v10, "=\""

    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object v10, v0

    move-object v11, v7

    invoke-virtual {v10, v11}, Lorg/apache/xml/serialize/HTMLSerializer;->escapeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v10, 0x22

    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_4

    :cond_11
    move-object v9, v1

    move-object v10, v6

    invoke-static {v9, v10}, Lorg/apache/xml/serialize/HTMLdtd;->isBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_12

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object v10, v6

    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_4

    :cond_12
    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    move-object v10, v6

    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const-string/jumbo v10, "=\""

    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object v9, v0

    move-object v10, v7

    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/HTMLSerializer;->printEscaped(Ljava/lang/String;)V

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xml/serialize/HTMLSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    const/16 v10, 0x22

    invoke-virtual {v9, v10}, Lorg/apache/xml/serialize/Printer;->printText(C)V

    goto/16 :goto_4

    :cond_13
    move-object v9, v5

    const/4 v10, 0x1

    iput-boolean v10, v9, Lorg/apache/xml/serialize/ElementState;->unescaped:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method
