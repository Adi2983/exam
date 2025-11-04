.class interface abstract Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xerces/xni/XMLDocumentHandler;


# virtual methods
.method public abstract cdata(Ljavax/xml/stream/events/Characters;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract characters(Ljavax/xml/stream/events/Characters;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract comment(Ljavax/xml/stream/XMLStreamReader;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract comment(Ljavax/xml/stream/events/Comment;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract doctypeDecl(Ljavax/xml/stream/events/DTD;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract endDocument(Ljavax/xml/stream/XMLStreamReader;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract endDocument(Ljavax/xml/stream/events/EndDocument;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract entityReference(Ljavax/xml/stream/XMLStreamReader;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract entityReference(Ljavax/xml/stream/events/EntityReference;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract processingInstruction(Ljavax/xml/stream/XMLStreamReader;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract processingInstruction(Ljavax/xml/stream/events/ProcessingInstruction;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract setIgnoringCharacters(Z)V
.end method

.method public abstract setStAXResult(Ljavax/xml/transform/stax/StAXResult;)V
.end method

.method public abstract startDocument(Ljavax/xml/stream/XMLStreamReader;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method

.method public abstract startDocument(Ljavax/xml/stream/events/StartDocument;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation
.end method
