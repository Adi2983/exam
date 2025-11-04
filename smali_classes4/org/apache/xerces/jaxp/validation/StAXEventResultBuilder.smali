.class final Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder$NamespaceIterator;,
        Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;
    }
.end annotation


# static fields
.field private static final EMPTY_COLLECTION_ITERATOR:Ljava/util/Iterator;


# instance fields
.field private final fAttrName:Lorg/apache/xerces/xni/QName;

.field private final fEventFactory:Ljavax/xml/stream/XMLEventFactory;

.field private fEventWriter:Ljavax/xml/stream/XMLEventWriter;

.field private fIgnoreChars:Z

.field private fInCDATA:Z

.field private final fNamespaceContext:Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

.field private final fStAXValidatorHelper:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder$1;-><init>()V

    sput-object v0, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->EMPTY_COLLECTION_ITERATOR:Ljava/util/Iterator;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    new-instance v4, Lorg/apache/xerces/xni/QName;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v4, v3, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fAttrName:Lorg/apache/xerces/xni/QName;

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fStAXValidatorHelper:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fNamespaceContext:Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

    move-object v3, v0

    invoke-static {}, Ljavax/xml/stream/XMLEventFactory;->newInstance()Ljavax/xml/stream/XMLEventFactory;

    move-result-object v4

    iput-object v4, v3, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventFactory:Ljavax/xml/stream/XMLEventFactory;

    return-void
.end method

.method static access$000(Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;)Lorg/apache/xerces/xni/QName;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fAttrName:Lorg/apache/xerces/xni/QName;

    move-object v0, v1

    return-object v0
.end method

.method static access$100(Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;)Ljavax/xml/stream/XMLEventFactory;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventFactory:Ljavax/xml/stream/XMLEventFactory;

    move-object v0, v1

    return-object v0
.end method

.method static access$200(Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;)Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fNamespaceContext:Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

    move-object v0, v1

    return-object v0
.end method

.method private getAttributeIterator(Lorg/apache/xerces/xni/XMLAttributes;I)Ljava/util/Iterator;
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, v2

    if-lez v3, :cond_0

    new-instance v3, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move v7, v2

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder$AttributeIterator;-><init>(Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;Lorg/apache/xerces/xni/XMLAttributes;I)V

    :goto_0
    move-object v0, v3

    return-object v0

    :cond_0
    sget-object v3, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->EMPTY_COLLECTION_ITERATOR:Ljava/util/Iterator;

    goto :goto_0
.end method

.method private getNamespaceIterator()Ljava/util/Iterator;
    .locals 7

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fNamespaceContext:Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {v2}, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->getDeclaredPrefixCount()I

    move-result v2

    move v1, v2

    move v2, v1

    if-lez v2, :cond_0

    new-instance v2, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder$NamespaceIterator;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move v5, v1

    invoke-direct {v3, v4, v5}, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder$NamespaceIterator;-><init>(Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;I)V

    :goto_0
    move-object v0, v2

    return-object v0

    :cond_0
    sget-object v2, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->EMPTY_COLLECTION_ITERATOR:Ljava/util/Iterator;

    goto :goto_0
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

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Ljavax/xml/stream/XMLEventWriter;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavax/xml/stream/XMLEventWriter;->add(Ljavax/xml/stream/events/XMLEvent;)V

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

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Ljavax/xml/stream/XMLEventWriter;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavax/xml/stream/XMLEventWriter;->add(Ljavax/xml/stream/events/XMLEvent;)V

    return-void
.end method

.method public characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
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

    iget-boolean v4, v4, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fIgnoreChars:Z

    if-nez v4, :cond_0

    move-object v4, v0

    :try_start_0
    iget-boolean v4, v4, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fInCDATA:Z

    if-nez v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Ljavax/xml/stream/XMLEventWriter;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventFactory:Ljavax/xml/stream/XMLEventFactory;

    move-object v6, v1

    invoke-virtual {v6}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavax/xml/stream/XMLEventFactory;->createCharacters(Ljava/lang/String;)Ljavax/xml/stream/events/Characters;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavax/xml/stream/XMLEventWriter;->add(Ljavax/xml/stream/events/XMLEvent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Ljavax/xml/stream/XMLEventWriter;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventFactory:Ljavax/xml/stream/XMLEventFactory;

    move-object v6, v1

    invoke-virtual {v6}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavax/xml/stream/XMLEventFactory;->createCData(Ljava/lang/String;)Ljavax/xml/stream/events/Characters;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavax/xml/stream/XMLEventWriter;->add(Ljavax/xml/stream/events/XMLEvent;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

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

.method public comment(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Ljavax/xml/stream/XMLEventWriter;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventFactory:Ljavax/xml/stream/XMLEventFactory;

    move-object v4, v1

    invoke-interface {v4}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/xml/stream/XMLEventFactory;->createComment(Ljava/lang/String;)Ljavax/xml/stream/events/Comment;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavax/xml/stream/XMLEventWriter;->add(Ljavax/xml/stream/events/XMLEvent;)V

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

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Ljavax/xml/stream/XMLEventWriter;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavax/xml/stream/XMLEventWriter;->add(Ljavax/xml/stream/events/XMLEvent;)V

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

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Ljavax/xml/stream/XMLEventWriter;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavax/xml/stream/XMLEventWriter;->add(Ljavax/xml/stream/events/XMLEvent;)V

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

    invoke-virtual {v4, v5, v6, v7}, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V

    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V

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

    iput-boolean v3, v2, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fInCDATA:Z

    return-void
.end method

.method public endDocument(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Ljavax/xml/stream/XMLEventWriter;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventFactory:Ljavax/xml/stream/XMLEventFactory;

    invoke-virtual {v3}, Ljavax/xml/stream/XMLEventFactory;->createEndDocument()Ljavax/xml/stream/events/EndDocument;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavax/xml/stream/XMLEventWriter;->add(Ljavax/xml/stream/events/XMLEvent;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Ljavax/xml/stream/XMLEventWriter;

    invoke-interface {v2}, Ljavax/xml/stream/XMLEventWriter;->flush()V

    return-void
.end method

.method public endDocument(Ljavax/xml/stream/events/EndDocument;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Ljavax/xml/stream/XMLEventWriter;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavax/xml/stream/XMLEventWriter;->add(Ljavax/xml/stream/events/XMLEvent;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Ljavax/xml/stream/XMLEventWriter;

    invoke-interface {v2}, Ljavax/xml/stream/XMLEventWriter;->flush()V

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
    .locals 11
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
    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fStAXValidatorHelper:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-virtual {v4}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->getCurrentEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v4

    move-object v3, v4

    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Ljavax/xml/stream/XMLEventWriter;

    move-object v5, v3

    invoke-interface {v4, v5}, Ljavax/xml/stream/XMLEventWriter;->add(Ljavax/xml/stream/events/XMLEvent;)V

    :goto_0
    return-void

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Ljavax/xml/stream/XMLEventWriter;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventFactory:Ljavax/xml/stream/XMLEventFactory;

    move-object v6, v1

    iget-object v6, v6, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    move-object v7, v1

    iget-object v7, v7, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object v8, v1

    iget-object v8, v8, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object v9, v0

    invoke-direct {v9}, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->getNamespaceIterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-virtual {v5, v6, v7, v8, v9}, Ljavax/xml/stream/XMLEventFactory;->createEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;)Ljavax/xml/stream/events/EndElement;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavax/xml/stream/XMLEventWriter;->add(Ljavax/xml/stream/events/XMLEvent;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v3, v4

    new-instance v4, Lorg/apache/xerces/xni/XNIException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

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
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    invoke-interface {v3}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Ljavax/xml/stream/XMLEventWriter;

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventFactory:Ljavax/xml/stream/XMLEventFactory;

    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fStAXValidatorHelper:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    move-object v7, v2

    invoke-virtual {v6, v7}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->getEntityDeclaration(Ljava/lang/String;)Ljavax/xml/stream/events/EntityDeclaration;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljavax/xml/stream/XMLEventFactory;->createEntityReference(Ljava/lang/String;Ljavax/xml/stream/events/EntityDeclaration;)Ljavax/xml/stream/events/EntityReference;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavax/xml/stream/XMLEventWriter;->add(Ljavax/xml/stream/events/XMLEvent;)V

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

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Ljavax/xml/stream/XMLEventWriter;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavax/xml/stream/XMLEventWriter;->add(Ljavax/xml/stream/events/XMLEvent;)V

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

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

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
    .locals 7
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

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Ljavax/xml/stream/XMLEventWriter;

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventFactory:Ljavax/xml/stream/XMLEventFactory;

    move-object v5, v1

    invoke-interface {v5}, Ljavax/xml/stream/XMLStreamReader;->getPITarget()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    if-eqz v6, :cond_0

    move-object v6, v2

    :goto_0
    invoke-virtual {v4, v5, v6}, Ljavax/xml/stream/XMLEventFactory;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/ProcessingInstruction;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavax/xml/stream/XMLEventWriter;->add(Ljavax/xml/stream/events/XMLEvent;)V

    return-void

    :cond_0
    const-string/jumbo v6, ""

    goto :goto_0
.end method

.method public processingInstruction(Ljavax/xml/stream/events/ProcessingInstruction;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Ljavax/xml/stream/XMLEventWriter;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavax/xml/stream/XMLEventWriter;->add(Ljavax/xml/stream/events/XMLEvent;)V

    return-void
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

    iput-boolean v3, v2, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fIgnoreChars:Z

    return-void
.end method

.method public setStAXResult(Ljavax/xml/transform/stax/StAXResult;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fIgnoreChars:Z

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fInCDATA:Z

    move-object v2, v0

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Ljavax/xml/transform/stax/StAXResult;->getXMLEventWriter()Ljavax/xml/stream/XMLEventWriter;

    move-result-object v3

    :goto_0
    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Ljavax/xml/stream/XMLEventWriter;

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

    iput-boolean v3, v2, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fInCDATA:Z

    return-void
.end method

.method public startDocument(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    invoke-interface {v5}, Ljavax/xml/stream/XMLStreamReader;->getVersion()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    move-object v5, v1

    invoke-interface {v5}, Ljavax/xml/stream/XMLStreamReader;->getCharacterEncodingScheme()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    move-object v5, v1

    invoke-interface {v5}, Ljavax/xml/stream/XMLStreamReader;->standaloneSet()Z

    move-result v5

    move v4, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Ljavax/xml/stream/XMLEventWriter;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventFactory:Ljavax/xml/stream/XMLEventFactory;

    move-object v7, v3

    if-eqz v7, :cond_0

    move-object v7, v3

    :goto_0
    move-object v8, v2

    if-eqz v8, :cond_1

    move-object v8, v2

    :goto_1
    move v9, v4

    invoke-virtual {v6, v7, v8, v9}, Ljavax/xml/stream/XMLEventFactory;->createStartDocument(Ljava/lang/String;Ljava/lang/String;Z)Ljavax/xml/stream/events/StartDocument;

    move-result-object v6

    invoke-interface {v5, v6}, Ljavax/xml/stream/XMLEventWriter;->add(Ljavax/xml/stream/events/XMLEvent;)V

    return-void

    :cond_0
    const-string/jumbo v7, "UTF-8"

    goto :goto_0

    :cond_1
    const-string/jumbo v8, "1.0"

    goto :goto_1
.end method

.method public startDocument(Ljavax/xml/stream/events/StartDocument;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Ljavax/xml/stream/XMLEventWriter;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljavax/xml/stream/XMLEventWriter;->add(Ljavax/xml/stream/events/XMLEvent;)V

    return-void
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
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v6, v2

    :try_start_0
    invoke-interface {v6}, Lorg/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v6

    move v4, v6

    move v6, v4

    if-nez v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fStAXValidatorHelper:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-virtual {v6}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->getCurrentEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v6

    move-object v5, v6

    move-object v6, v5

    if-eqz v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Ljavax/xml/stream/XMLEventWriter;

    move-object v7, v5

    invoke-interface {v6, v7}, Ljavax/xml/stream/XMLEventWriter;->add(Ljavax/xml/stream/events/XMLEvent;)V

    :goto_0
    return-void

    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventWriter:Ljavax/xml/stream/XMLEventWriter;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fEventFactory:Ljavax/xml/stream/XMLEventFactory;

    move-object v8, v1

    iget-object v8, v8, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    move-object v9, v1

    iget-object v9, v9, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v9, :cond_1

    move-object v9, v1

    iget-object v9, v9, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    :goto_1
    move-object v10, v1

    iget-object v10, v10, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object v11, v0

    move-object v12, v2

    move v13, v4

    invoke-direct {v11, v12, v13}, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->getAttributeIterator(Lorg/apache/xerces/xni/XMLAttributes;I)Ljava/util/Iterator;

    move-result-object v11

    move-object v12, v0

    invoke-direct {v12}, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->getNamespaceIterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v13, v0

    iget-object v13, v13, Lorg/apache/xerces/jaxp/validation/StAXEventResultBuilder;->fNamespaceContext:Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

    invoke-virtual {v13}, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;

    move-result-object v13

    invoke-virtual/range {v7 .. v13}, Ljavax/xml/stream/XMLEventFactory;->createStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;Ljava/util/Iterator;Ljavax/xml/namespace/NamespaceContext;)Ljavax/xml/stream/events/StartElement;

    move-result-object v7

    invoke-interface {v6, v7}, Ljavax/xml/stream/XMLEventWriter;->add(Ljavax/xml/stream/events/XMLEvent;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v9, ""
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    move-object v4, v6

    new-instance v6, Lorg/apache/xerces/xni/XNIException;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    move-object v8, v4

    invoke-direct {v7, v8}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v6
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
