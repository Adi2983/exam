.class final Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;


# instance fields
.field private final fAttrName:Lorg/apache/xerces/xni/QName;

.field private fIgnoreChars:Z

.field private fInCDATA:Z

.field private final fNamespaceContext:Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

.field private fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/xni/QName;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fAttrName:Lorg/apache/xerces/xni/QName;

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fNamespaceContext:Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

    return-void
.end method


# virtual methods
.method public cdata(Ljavax/xml/stream/events/Characters;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    move-object v3, v1

    invoke-interface {v3}, Ljavax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavax/xml/stream/XMLStreamWriter;->writeCData(Ljava/lang/String;)V

    return-void
.end method

.method public characters(Ljavax/xml/stream/events/Characters;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    move-object v3, v1

    invoke-interface {v3}, Ljavax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    return-void
.end method

.method public characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fIgnoreChars:Z

    if-nez v4, :cond_0

    move-object v4, v0

    :try_start_0
    iget-boolean v4, v4, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fInCDATA:Z

    if-nez v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    move-object v5, v1

    iget-object v5, v5, Lorg/apache/xerces/xni/XMLString;->ch:[C

    move-object v6, v1

    iget v6, v6, Lorg/apache/xerces/xni/XMLString;->offset:I

    move-object v7, v1

    iget v7, v7, Lorg/apache/xerces/xni/XMLString;->length:I

    invoke-interface {v4, v5, v6, v7}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters([CII)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    move-object v5, v1

    invoke-virtual {v5}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavax/xml/stream/XMLStreamWriter;->writeCData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v3, v4

    new-instance v4, Lorg/apache/xerces/xni/XNIException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v3

    invoke-direct {v5, v6}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method public comment(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    move-object v3, v1

    invoke-interface {v3}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavax/xml/stream/XMLStreamWriter;->writeComment(Ljava/lang/String;)V

    return-void
.end method

.method public comment(Ljavax/xml/stream/events/Comment;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    move-object v3, v1

    invoke-interface {v3}, Ljavax/xml/stream/events/Comment;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavax/xml/stream/XMLStreamWriter;->writeComment(Ljava/lang/String;)V

    return-void
.end method

.method public comment(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public doctypeDecl(Ljavax/xml/stream/events/DTD;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    move-object v3, v1

    invoke-interface {v3}, Ljavax/xml/stream/events/DTD;->getDocumentTypeDeclaration()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavax/xml/stream/XMLStreamWriter;->writeDTD(Ljava/lang/String;)V

    return-void
.end method

.method public emptyElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 8
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

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V

    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public endCDATA(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fInCDATA:Z

    return-void
.end method

.method public endDocument(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v2}, Ljavax/xml/stream/XMLStreamWriter;->writeEndDocument()V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v2}, Ljavax/xml/stream/XMLStreamWriter;->flush()V

    return-void
.end method

.method public endDocument(Ljavax/xml/stream/events/EndDocument;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v2}, Ljavax/xml/stream/XMLStreamWriter;->writeEndDocument()V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v2}, Ljavax/xml/stream/XMLStreamWriter;->flush()V

    return-void
.end method

.method public endDocument(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v4}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v4

    move-object v3, v4

    new-instance v4, Lorg/apache/xerces/xni/XNIException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v3

    invoke-direct {v5, v6}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method public endGeneralEntity(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public entityReference(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    move-object v3, v1

    invoke-interface {v3}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavax/xml/stream/XMLStreamWriter;->writeEntityRef(Ljava/lang/String;)V

    return-void
.end method

.method public entityReference(Ljavax/xml/stream/events/EntityReference;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    move-object v3, v1

    invoke-interface {v3}, Ljavax/xml/stream/events/EntityReference;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavax/xml/stream/XMLStreamWriter;->writeEntityRef(Ljava/lang/String;)V

    return-void
.end method

.method public getDocumentSource()Lorg/apache/xerces/xni/parser/XMLDocumentSource;
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public ignorableWhitespace(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public processingInstruction(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-interface {v3}, Ljavax/xml/stream/XMLStreamReader;->getPIData()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    move-object v4, v1

    invoke-interface {v4}, Ljavax/xml/stream/XMLStreamReader;->getPITarget()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljavax/xml/stream/XMLStreamWriter;->writeProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    move-object v4, v1

    invoke-interface {v4}, Ljavax/xml/stream/XMLStreamReader;->getPITarget()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavax/xml/stream/XMLStreamWriter;->writeProcessingInstruction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public processingInstruction(Ljavax/xml/stream/events/ProcessingInstruction;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-interface {v3}, Ljavax/xml/stream/events/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    move-object v4, v1

    invoke-interface {v4}, Ljavax/xml/stream/events/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljavax/xml/stream/XMLStreamWriter;->writeProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    move-object v4, v1

    invoke-interface {v4}, Ljavax/xml/stream/events/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavax/xml/stream/XMLStreamWriter;->writeProcessingInstruction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V
    .locals 0

    return-void
.end method

.method public setIgnoringCharacters(Z)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fIgnoreChars:Z

    return-void
.end method

.method public setStAXResult(Ljavax/xml/transform/stax/StAXResult;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fIgnoreChars:Z

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fInCDATA:Z

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fAttrName:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v2}, Lorg/apache/xerces/xni/QName;->clear()V

    move-object v2, v0

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Ljavax/xml/transform/stax/StAXResult;->getXMLStreamWriter()Ljavax/xml/stream/XMLStreamWriter;

    move-result-object v3

    :goto_0
    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    return-void

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public startCDATA(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fInCDATA:Z

    return-void
.end method

.method public startDocument(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    invoke-interface {v4}, Ljavax/xml/stream/XMLStreamReader;->getVersion()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    move-object v4, v1

    invoke-interface {v4}, Ljavax/xml/stream/XMLStreamReader;->getCharacterEncodingScheme()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    move-object v5, v3

    if-eqz v5, :cond_0

    move-object v5, v3

    :goto_0
    move-object v6, v2

    if-eqz v6, :cond_1

    move-object v6, v2

    :goto_1
    invoke-interface {v4, v5, v6}, Ljavax/xml/stream/XMLStreamWriter;->writeStartDocument(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v5, "UTF-8"

    goto :goto_0

    :cond_1
    const-string/jumbo v6, "1.0"

    goto :goto_1
.end method

.method public startDocument(Ljavax/xml/stream/events/StartDocument;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    invoke-interface {v4}, Ljavax/xml/stream/events/StartDocument;->getVersion()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    move-object v4, v1

    invoke-interface {v4}, Ljavax/xml/stream/events/StartDocument;->getCharacterEncodingScheme()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    move-object v5, v3

    if-eqz v5, :cond_0

    move-object v5, v3

    :goto_0
    move-object v6, v2

    if-eqz v6, :cond_1

    move-object v6, v2

    :goto_1
    invoke-interface {v4, v5, v6}, Ljavax/xml/stream/XMLStreamWriter;->writeStartDocument(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v5, "UTF-8"

    goto :goto_0

    :cond_1
    const-string/jumbo v6, "1.0"

    goto :goto_1
.end method

.method public startDocument(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lorg/apache/xerces/xni/NamespaceContext;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v9, v1

    :try_start_0
    iget-object v9, v9, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    move-object v10, v1

    iget-object v10, v10, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v12, :cond_0

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    :goto_0
    invoke-interface {v9, v10, v11, v12}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fNamespaceContext:Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {v9}, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->getDeclaredPrefixCount()I

    move-result v9

    move v4, v9

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fNamespaceContext:Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {v9}, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;

    move-result-object v9

    move-object v5, v9

    const/4 v9, 0x0

    move v6, v9

    :goto_2
    move v9, v6

    move v10, v4

    if-lt v9, v10, :cond_3

    move-object v9, v2

    invoke-interface {v9}, Lorg/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v9

    move v4, v9

    const/4 v9, 0x0

    move v7, v9

    :goto_3
    move v9, v7

    move v10, v4

    if-lt v9, v10, :cond_7

    return-void

    :cond_0
    const-string/jumbo v12, ""

    goto :goto_0

    :cond_1
    move-object v9, v1

    iget-object v9, v9, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v9, :cond_2

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    move-object v10, v1

    iget-object v10, v10, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-interface {v9, v10, v11}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    move-object v10, v1

    iget-object v10, v10, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v9

    move-object v4, v9

    new-instance v9, Lorg/apache/xerces/xni/XNIException;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v4

    invoke-direct {v10, v11}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v9

    :cond_3
    move-object v9, v0

    :try_start_1
    iget-object v9, v9, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fNamespaceContext:Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

    move v10, v6

    invoke-virtual {v9, v10}, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->getDeclaredPrefixAt(I)Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    move-object v9, v5

    move-object v10, v7

    invoke-interface {v9, v10}, Ljavax/xml/namespace/NamespaceContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    move-object v9, v7

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_5

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    move-object v10, v8

    if-eqz v10, :cond_4

    move-object v10, v8

    :goto_4
    invoke-interface {v9, v10}, Ljavax/xml/stream/XMLStreamWriter;->writeDefaultNamespace(Ljava/lang/String;)V

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    const-string/jumbo v10, ""

    goto :goto_4

    :cond_5
    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    move-object v10, v7

    move-object v11, v8

    if-eqz v11, :cond_6

    move-object v11, v8

    :goto_6
    invoke-interface {v9, v10, v11}, Ljavax/xml/stream/XMLStreamWriter;->writeNamespace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    const-string/jumbo v11, ""

    goto :goto_6

    :cond_7
    move-object v9, v2

    move v10, v7

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fAttrName:Lorg/apache/xerces/xni/QName;

    invoke-interface {v9, v10, v11}, Lorg/apache/xerces/xni/XMLAttributes;->getName(ILorg/apache/xerces/xni/QName;)V

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fAttrName:Lorg/apache/xerces/xni/QName;

    iget-object v9, v9, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_9

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fAttrName:Lorg/apache/xerces/xni/QName;

    iget-object v10, v10, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fAttrName:Lorg/apache/xerces/xni/QName;

    iget-object v11, v11, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v11, :cond_8

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fAttrName:Lorg/apache/xerces/xni/QName;

    iget-object v11, v11, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    :goto_7
    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fAttrName:Lorg/apache/xerces/xni/QName;

    iget-object v12, v12, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object v13, v2

    move v14, v7

    invoke-interface {v13, v14}, Lorg/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v9, v10, v11, v12, v13}, Ljavax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    :cond_8
    const-string/jumbo v11, ""

    goto :goto_7

    :cond_9
    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fAttrName:Lorg/apache/xerces/xni/QName;

    iget-object v9, v9, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v9, :cond_a

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fAttrName:Lorg/apache/xerces/xni/QName;

    iget-object v10, v10, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fAttrName:Lorg/apache/xerces/xni/QName;

    iget-object v11, v11, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object v12, v2

    move v13, v7

    invoke-interface {v12, v13}, Lorg/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9, v10, v11, v12}, Ljavax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_a
    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/jaxp/validation/StAXStreamResultBuilder;->fAttrName:Lorg/apache/xerces/xni/QName;

    iget-object v10, v10, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object v11, v2

    move v12, v7

    invoke-interface {v11, v12}, Lorg/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljavax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8
.end method

.method public startGeneralEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method
