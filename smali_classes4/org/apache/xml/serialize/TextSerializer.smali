.class public Lorg/apache/xml/serialize/TextSerializer;
.super Lorg/apache/xml/serialize/BaseMarkupSerializer;


# direct methods
.method public constructor <init>()V
    .locals 8

    move-object v0, p0

    move-object v1, v0

    new-instance v2, Lorg/apache/xml/serialize/OutputFormat;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const-string/jumbo v4, "text"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {v1, v2}, Lorg/apache/xml/serialize/BaseMarkupSerializer;-><init>(Lorg/apache/xml/serialize/OutputFormat;)V

    return-void
.end method


# virtual methods
.method protected characters(Ljava/lang/String;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xml/serialize/TextSerializer;->content()Lorg/apache/xml/serialize/ElementState;

    move-result-object v4

    move-object v3, v4

    move-object v4, v3

    move-object v5, v3

    const/4 v6, 0x0

    move-object v8, v5

    move v9, v6

    move v5, v9

    move-object v6, v8

    move v7, v9

    iput-boolean v7, v6, Lorg/apache/xml/serialize/ElementState;->inCData:Z

    iput-boolean v5, v4, Lorg/apache/xml/serialize/ElementState;->doCData:Z

    move-object v4, v0

    move-object v5, v1

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lorg/apache/xml/serialize/TextSerializer;->printText(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public characters([CII)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v6, v0

    :try_start_0
    invoke-virtual {v6}, Lorg/apache/xml/serialize/TextSerializer;->content()Lorg/apache/xml/serialize/ElementState;

    move-result-object v6

    move-object v4, v6

    move-object v6, v4

    move-object v7, v4

    const/4 v8, 0x0

    move-object v12, v7

    move v13, v8

    move v7, v13

    move-object v8, v12

    move v9, v13

    iput-boolean v9, v8, Lorg/apache/xml/serialize/ElementState;->inCData:Z

    iput-boolean v7, v6, Lorg/apache/xml/serialize/ElementState;->doCData:Z

    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move v9, v3

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual/range {v6 .. v11}, Lorg/apache/xml/serialize/TextSerializer;->printText([CIIZZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v6

    move-object v5, v6

    new-instance v6, Lorg/xml/sax/SAXException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v5

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v6
.end method

.method public comment(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public comment([CII)V
    .locals 0

    return-void
.end method

.method protected content()Lorg/apache/xml/serialize/ElementState;
    .locals 4

    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xml/serialize/TextSerializer;->getElementState()Lorg/apache/xml/serialize/ElementState;

    move-result-object v2

    move-object v1, v2

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xml/serialize/TextSerializer;->isDocumentState()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v1

    iget-boolean v2, v2, Lorg/apache/xml/serialize/ElementState;->empty:Z

    if-eqz v2, :cond_0

    move-object v2, v1

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xml/serialize/ElementState;->empty:Z

    :cond_0
    move-object v2, v1

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xml/serialize/ElementState;->afterElement:Z

    :cond_1
    move-object v2, v1

    move-object v0, v2

    return-object v0
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

    move-object v3, v0

    move-object v4, v1

    :try_start_0
    invoke-virtual {v3, v4}, Lorg/apache/xml/serialize/TextSerializer;->endElementIO(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v3

    move-object v2, v3

    new-instance v3, Lorg/xml/sax/SAXException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v3

    if-nez v5, :cond_0

    move-object v5, v2

    :goto_0
    invoke-virtual {v4, v5}, Lorg/apache/xml/serialize/TextSerializer;->endElement(Ljava/lang/String;)V

    return-void

    :cond_0
    move-object v5, v3

    goto :goto_0
.end method

.method public endElementIO(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xml/serialize/TextSerializer;->getElementState()Lorg/apache/xml/serialize/ElementState;

    move-result-object v3

    move-object v2, v3

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xml/serialize/TextSerializer;->leaveElementState()Lorg/apache/xml/serialize/ElementState;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/apache/xml/serialize/ElementState;->afterElement:Z

    move-object v3, v2

    const/4 v4, 0x0

    iput-boolean v4, v3, Lorg/apache/xml/serialize/ElementState;->empty:Z

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xml/serialize/TextSerializer;->isDocumentState()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xml/serialize/TextSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v3}, Lorg/apache/xml/serialize/Printer;->flush()V

    :cond_0
    return-void
.end method

.method protected getEntityRef(I)Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public processingInstructionIO(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected serializeElement(Lorg/w3c/dom/Element;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    invoke-interface {v6}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xml/serialize/TextSerializer;->getElementState()Lorg/apache/xml/serialize/ElementState;

    move-result-object v6

    move-object v3, v6

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xml/serialize/TextSerializer;->isDocumentState()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v0

    iget-boolean v6, v6, Lorg/apache/xml/serialize/TextSerializer;->_started:Z

    if-nez v6, :cond_0

    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/TextSerializer;->startDocument(Ljava/lang/String;)V

    :cond_0
    move-object v6, v3

    iget-boolean v6, v6, Lorg/apache/xml/serialize/ElementState;->preserveSpace:Z

    move v4, v6

    move-object v6, v1

    invoke-interface {v6}, Lorg/w3c/dom/Element;->hasChildNodes()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, v5

    move v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/apache/xml/serialize/TextSerializer;->enterElementState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/xml/serialize/ElementState;

    move-result-object v6

    move-object v3, v6

    move-object v6, v1

    invoke-interface {v6}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v2, v6

    :goto_0
    move-object v6, v2

    if-nez v6, :cond_2

    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/TextSerializer;->endElementIO(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    move-object v6, v0

    move-object v7, v2

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/TextSerializer;->serializeNode(Lorg/w3c/dom/Node;)V

    move-object v6, v2

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v2, v6

    goto :goto_0

    :cond_3
    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xml/serialize/TextSerializer;->isDocumentState()Z

    move-result v6

    if-nez v6, :cond_1

    move-object v6, v3

    const/4 v7, 0x1

    iput-boolean v7, v6, Lorg/apache/xml/serialize/ElementState;->afterElement:Z

    move-object v6, v3

    const/4 v7, 0x0

    iput-boolean v7, v6, Lorg/apache/xml/serialize/ElementState;->empty:Z

    goto :goto_1
.end method

.method protected serializeNode(Lorg/w3c/dom/Node;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    move-object v3, v1

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/apache/xml/serialize/TextSerializer;->characters(Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_2
    move-object v3, v1

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lorg/apache/xml/serialize/TextSerializer;->characters(Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_3
    goto :goto_0

    :pswitch_4
    goto :goto_0

    :pswitch_5
    goto :goto_0

    :pswitch_6
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lorg/w3c/dom/Element;

    invoke-virtual {v3, v4}, Lorg/apache/xml/serialize/TextSerializer;->serializeElement(Lorg/w3c/dom/Element;)V

    goto :goto_0

    :pswitch_7
    move-object v3, v1

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v2, v3

    :goto_1
    move-object v3, v2

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/apache/xml/serialize/TextSerializer;->serializeNode(Lorg/w3c/dom/Node;)V

    move-object v3, v2

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v2, v3

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_7
        :pswitch_0
        :pswitch_7
    .end packed-switch
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

    const-string/jumbo v5, "text"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
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

    iget-object v2, v2, Lorg/apache/xml/serialize/TextSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {v2}, Lorg/apache/xml/serialize/Printer;->leaveDTD()Ljava/lang/String;

    move-result-object v2

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/apache/xml/serialize/TextSerializer;->_started:Z

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xml/serialize/TextSerializer;->serializePreRoot()V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v3

    if-nez v6, :cond_0

    move-object v6, v2

    :goto_0
    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/apache/xml/serialize/TextSerializer;->startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V

    return-void

    :cond_0
    move-object v6, v3

    goto :goto_0
.end method

.method public startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    :try_start_0
    invoke-virtual {v6}, Lorg/apache/xml/serialize/TextSerializer;->getElementState()Lorg/apache/xml/serialize/ElementState;

    move-result-object v6

    move-object v4, v6

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xml/serialize/TextSerializer;->isDocumentState()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v0

    iget-boolean v6, v6, Lorg/apache/xml/serialize/TextSerializer;->_started:Z

    if-nez v6, :cond_0

    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Lorg/apache/xml/serialize/TextSerializer;->startDocument(Ljava/lang/String;)V

    :cond_0
    move-object v6, v4

    iget-boolean v6, v6, Lorg/apache/xml/serialize/ElementState;->preserveSpace:Z

    move v3, v6

    move-object v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, v1

    move v10, v3

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/apache/xml/serialize/TextSerializer;->enterElementState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/xml/serialize/ElementState;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v4, v6

    return-void

    :catch_0
    move-exception v6

    move-object v5, v6

    new-instance v6, Lorg/xml/sax/SAXException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v5

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v6
.end method
