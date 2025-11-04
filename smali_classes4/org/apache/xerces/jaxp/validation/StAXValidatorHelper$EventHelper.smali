.class final Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EventHelper"
.end annotation


# static fields
.field private static final CHUNK_MASK:I = 0x3ff

.field private static final CHUNK_SIZE:I = 0x400


# instance fields
.field private final fCharBuffer:[C

.field private final this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;


# direct methods
.method constructor <init>(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    move-object v2, v0

    const/16 v3, 0x400

    new-array v3, v3, [C

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->fCharBuffer:[C

    return-void
.end method

.method private fillDeclaredPrefixes(Ljava/util/Iterator;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fDeclaredPrefixes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    :goto_0
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/xml/stream/events/Namespace;

    move-object v2, v4

    move-object v4, v2

    invoke-interface {v4}, Ljavax/xml/stream/events/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fDeclaredPrefixes:Ljava/util/ArrayList;

    move-object v5, v3

    if-eqz v5, :cond_1

    move-object v5, v3

    :goto_1
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_0

    :cond_1
    const-string/jumbo v5, ""

    goto :goto_1
.end method

.method private fillDeclaredPrefixes(Ljavax/xml/stream/events/EndElement;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljavax/xml/stream/events/EndElement;->getNamespaces()Ljava/util/Iterator;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->fillDeclaredPrefixes(Ljava/util/Iterator;)V

    return-void
.end method

.method private fillDeclaredPrefixes(Ljavax/xml/stream/events/StartElement;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Ljavax/xml/stream/events/StartElement;->getNamespaces()Ljava/util/Iterator;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->fillDeclaredPrefixes(Ljava/util/Iterator;)V

    return-void
.end method

.method private fillQName(Lorg/apache/xerces/xni/QName;Ljavax/xml/namespace/QName;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v5}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v6}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v7}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fillQName(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private fillXMLAttributes(Ljavax/xml/stream/events/StartElement;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v6}, Lorg/apache/xerces/util/XMLAttributesImpl;->removeAllAttributes()V

    move-object v6, v1

    invoke-interface {v6}, Ljavax/xml/stream/events/StartElement;->getAttributes()Ljava/util/Iterator;

    move-result-object v6

    move-object v2, v6

    :goto_0
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    return-void

    :cond_0
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/xml/stream/events/Attribute;

    move-object v3, v6

    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    move-object v8, v3

    invoke-interface {v8}, Ljavax/xml/stream/events/Attribute;->getName()Ljavax/xml/namespace/QName;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->fillQName(Lorg/apache/xerces/xni/QName;Ljavax/xml/namespace/QName;)V

    move-object v6, v3

    invoke-interface {v6}, Ljavax/xml/stream/events/Attribute;->getDTDType()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v6}, Lorg/apache/xerces/util/XMLAttributesImpl;->getLength()I

    move-result v6

    move v5, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    move-object v8, v4

    if-eqz v8, :cond_1

    move-object v8, v4

    :goto_1
    move-object v9, v3

    invoke-interface {v9}, Ljavax/xml/stream/events/Attribute;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lorg/apache/xerces/util/XMLAttributesImpl;->addAttributeNS(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

    move v7, v5

    move-object v8, v3

    invoke-interface {v8}, Ljavax/xml/stream/events/Attribute;->isSpecified()Z

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/util/XMLAttributesImpl;->setSpecified(IZ)V

    goto :goto_0

    :cond_1
    sget-object v8, Lorg/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    goto :goto_1
.end method

.method private sendCharactersToValidator(Ljava/lang/String;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    if-eqz v5, :cond_1

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    move v2, v5

    move v5, v2

    const/16 v6, 0x3ff

    and-int/lit16 v5, v5, 0x3ff

    move v3, v5

    move v5, v3

    if-lez v5, :cond_0

    move-object v5, v1

    const/4 v6, 0x0

    move v7, v3

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->fCharBuffer:[C

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Ljava/lang/String;->getChars(II[CI)V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fTempString:Lorg/apache/xerces/xni/XMLString;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->fCharBuffer:[C

    const/4 v7, 0x0

    move v8, v3

    invoke-virtual {v5, v6, v7, v8}, Lorg/apache/xerces/xni/XMLString;->setValues([CII)V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v5}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$400(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fTempString:Lorg/apache/xerces/xni/XMLString;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_0
    move v5, v3

    move v4, v5

    :goto_0
    move v5, v4

    move v6, v2

    if-lt v5, v6, :cond_2

    :cond_1
    return-void

    :cond_2
    move-object v5, v1

    move v6, v4

    move v7, v4

    const/16 v8, 0x400

    add-int/lit16 v7, v7, 0x400

    move v10, v7

    move v7, v10

    move v8, v10

    move v4, v8

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->fCharBuffer:[C

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Ljava/lang/String;->getChars(II[CI)V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fTempString:Lorg/apache/xerces/xni/XMLString;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->fCharBuffer:[C

    const/4 v7, 0x0

    const/16 v8, 0x400

    invoke-virtual {v5, v6, v7, v8}, Lorg/apache/xerces/xni/XMLString;->setValues([CII)V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v5}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$400(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fTempString:Lorg/apache/xerces/xni/XMLString;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method


# virtual methods
.method final validate(Ljavax/xml/stream/XMLEventReader;Ljavax/xml/transform/stax/StAXResult;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    move-object v8, v1

    invoke-interface {v8}, Ljavax/xml/stream/XMLEventReader;->peek()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$702(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;Ljavax/xml/stream/events/XMLEvent;)Ljavax/xml/stream/events/XMLEvent;

    move-result-object v7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v7}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$700(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Ljavax/xml/stream/events/XMLEvent;

    move-result-object v7

    if-eqz v7, :cond_2

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v7}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$700(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Ljavax/xml/stream/events/XMLEvent;

    move-result-object v7

    invoke-interface {v7}, Ljavax/xml/stream/events/XMLEvent;->getEventType()I

    move-result v7

    move v3, v7

    move v7, v3

    const/4 v8, 0x7

    if-eq v7, v8, :cond_0

    move v7, v3

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    new-instance v7, Lorg/xml/sax/SAXException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v9}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$000(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v9

    const-string/jumbo v10, "StAXIllegalInitialState"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lorg/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    const/4 v8, 0x0

    move-object v9, v2

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->setup(Ljavax/xml/stream/Location;Ljavax/xml/transform/stax/StAXResult;Z)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v7}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$400(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v8}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$200(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/util/StAXLocationWrapper;

    move-result-object v8

    const/4 v9, 0x0

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v10}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$300(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->startDocument(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lorg/apache/xerces/xni/NamespaceContext;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_1
    :goto_0
    move-object v7, v1

    invoke-interface {v7}, Ljavax/xml/stream/XMLEventReader;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    :goto_1
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v7}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$400(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->endDocument(Lorg/apache/xerces/xni/Augmentations;)V

    :cond_2
    return-void

    :cond_3
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    move-object v8, v1

    invoke-interface {v8}, Ljavax/xml/stream/XMLEventReader;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$702(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;Ljavax/xml/stream/events/XMLEvent;)Ljavax/xml/stream/events/XMLEvent;

    move-result-object v7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v7}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$700(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Ljavax/xml/stream/events/XMLEvent;

    move-result-object v7

    invoke-interface {v7}, Ljavax/xml/stream/events/XMLEvent;->getEventType()I

    move-result v7

    move v3, v7

    move v7, v3

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v7}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$504(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)I

    move-result v7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v7}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$700(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Ljavax/xml/stream/events/XMLEvent;

    move-result-object v7

    invoke-interface {v7}, Ljavax/xml/stream/events/XMLEvent;->asStartElement()Ljavax/xml/stream/events/StartElement;

    move-result-object v7

    move-object v4, v7

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v8, v8, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fElementQName:Lorg/apache/xerces/xni/QName;

    move-object v9, v4

    invoke-interface {v9}, Ljavax/xml/stream/events/StartElement;->getName()Ljavax/xml/namespace/QName;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->fillQName(Lorg/apache/xerces/xni/QName;Ljavax/xml/namespace/QName;)V

    move-object v7, v0

    move-object v8, v4

    invoke-direct {v7, v8}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->fillXMLAttributes(Ljavax/xml/stream/events/StartElement;)V

    move-object v7, v0

    move-object v8, v4

    invoke-direct {v7, v8}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->fillDeclaredPrefixes(Ljavax/xml/stream/events/StartElement;)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v7}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$300(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

    move-result-object v7

    move-object v8, v4

    invoke-interface {v8}, Ljavax/xml/stream/events/StartElement;->getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v7}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$200(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/util/StAXLocationWrapper;

    move-result-object v7

    move-object v8, v4

    invoke-interface {v8}, Ljavax/xml/stream/events/StartElement;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/xerces/util/StAXLocationWrapper;->setLocation(Ljavax/xml/stream/Location;)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v7}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$400(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v8, v8, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fElementQName:Lorg/apache/xerces/xni/QName;

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v9, v9, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_0

    :pswitch_2
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v7}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$700(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Ljavax/xml/stream/events/XMLEvent;

    move-result-object v7

    invoke-interface {v7}, Ljavax/xml/stream/events/XMLEvent;->asEndElement()Ljavax/xml/stream/events/EndElement;

    move-result-object v7

    move-object v5, v7

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v8, v8, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fElementQName:Lorg/apache/xerces/xni/QName;

    move-object v9, v5

    invoke-interface {v9}, Ljavax/xml/stream/events/EndElement;->getName()Ljavax/xml/namespace/QName;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->fillQName(Lorg/apache/xerces/xni/QName;Ljavax/xml/namespace/QName;)V

    move-object v7, v0

    move-object v8, v5

    invoke-direct {v7, v8}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->fillDeclaredPrefixes(Ljavax/xml/stream/events/EndElement;)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v7}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$200(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/util/StAXLocationWrapper;

    move-result-object v7

    move-object v8, v5

    invoke-interface {v8}, Ljavax/xml/stream/events/EndElement;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/xerces/util/StAXLocationWrapper;->setLocation(Ljavax/xml/stream/Location;)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v7}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$400(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v8, v8, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fElementQName:Lorg/apache/xerces/xni/QName;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v7}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$506(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)I

    move-result v7

    if-gtz v7, :cond_1

    goto/16 :goto_1

    :pswitch_3
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v7}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$600(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v7

    if-eqz v7, :cond_4

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v7}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$700(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Ljavax/xml/stream/events/XMLEvent;

    move-result-object v7

    invoke-interface {v7}, Ljavax/xml/stream/events/XMLEvent;->asCharacters()Ljavax/xml/stream/events/Characters;

    move-result-object v7

    move-object v6, v7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v7}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$600(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;->setIgnoringCharacters(Z)V

    move-object v7, v0

    move-object v8, v6

    invoke-interface {v8}, Ljavax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->sendCharactersToValidator(Ljava/lang/String;)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v7}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$600(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;->setIgnoringCharacters(Z)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v7}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$600(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v7

    move-object v8, v6

    invoke-interface {v7, v8}, Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;->characters(Ljavax/xml/stream/events/Characters;)V

    goto/16 :goto_0

    :cond_4
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v8}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$700(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Ljavax/xml/stream/events/XMLEvent;

    move-result-object v8

    invoke-interface {v8}, Ljavax/xml/stream/events/XMLEvent;->asCharacters()Ljavax/xml/stream/events/Characters;

    move-result-object v8

    invoke-interface {v8}, Ljavax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->sendCharactersToValidator(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v7}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$600(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v7

    if-eqz v7, :cond_5

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v7}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$700(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Ljavax/xml/stream/events/XMLEvent;

    move-result-object v7

    invoke-interface {v7}, Ljavax/xml/stream/events/XMLEvent;->asCharacters()Ljavax/xml/stream/events/Characters;

    move-result-object v7

    move-object v6, v7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v7}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$600(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;->setIgnoringCharacters(Z)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v7}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$400(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->startCDATA(Lorg/apache/xerces/xni/Augmentations;)V

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v8}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$700(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Ljavax/xml/stream/events/XMLEvent;

    move-result-object v8

    invoke-interface {v8}, Ljavax/xml/stream/events/XMLEvent;->asCharacters()Ljavax/xml/stream/events/Characters;

    move-result-object v8

    invoke-interface {v8}, Ljavax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->sendCharactersToValidator(Ljava/lang/String;)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v7}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$400(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->endCDATA(Lorg/apache/xerces/xni/Augmentations;)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v7}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$600(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;->setIgnoringCharacters(Z)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v7}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$600(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v7

    move-object v8, v6

    invoke-interface {v7, v8}, Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;->cdata(Ljavax/xml/stream/events/Characters;)V

    goto/16 :goto_0

    :cond_5
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v7}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$400(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->startCDATA(Lorg/apache/xerces/xni/Augmentations;)V

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v8}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$700(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Ljavax/xml/stream/events/XMLEvent;

    move-result-object v8

    invoke-interface {v8}, Ljavax/xml/stream/events/XMLEvent;->asCharacters()Ljavax/xml/stream/events/Characters;

    move-result-object v8

    invoke-interface {v8}, Ljavax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->sendCharactersToValidator(Ljava/lang/String;)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v7}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$400(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->endCDATA(Lorg/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_0

    :pswitch_5
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v7}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$504(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)I

    move-result v7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v7}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$600(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v7

    if-eqz v7, :cond_1

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v7}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$600(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v8}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$700(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Ljavax/xml/stream/events/XMLEvent;

    move-result-object v8

    check-cast v8, Ljavax/xml/stream/events/StartDocument;

    invoke-interface {v7, v8}, Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;->startDocument(Ljavax/xml/stream/events/StartDocument;)V

    goto/16 :goto_0

    :pswitch_6
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v7}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$600(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v7

    if-eqz v7, :cond_1

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v7}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$600(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v8}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$700(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Ljavax/xml/stream/events/XMLEvent;

    move-result-object v8

    check-cast v8, Ljavax/xml/stream/events/EndDocument;

    invoke-interface {v7, v8}, Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;->endDocument(Ljavax/xml/stream/events/EndDocument;)V

    goto/16 :goto_0

    :pswitch_7
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v7}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$600(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v7

    if-eqz v7, :cond_1

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v7}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$600(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v8}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$700(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Ljavax/xml/stream/events/XMLEvent;

    move-result-object v8

    check-cast v8, Ljavax/xml/stream/events/ProcessingInstruction;

    invoke-interface {v7, v8}, Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;->processingInstruction(Ljavax/xml/stream/events/ProcessingInstruction;)V

    goto/16 :goto_0

    :pswitch_8
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v7}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$600(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v7

    if-eqz v7, :cond_1

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v7}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$600(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v8}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$700(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Ljavax/xml/stream/events/XMLEvent;

    move-result-object v8

    check-cast v8, Ljavax/xml/stream/events/Comment;

    invoke-interface {v7, v8}, Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;->comment(Ljavax/xml/stream/events/Comment;)V

    goto/16 :goto_0

    :pswitch_9
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v7}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$600(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v7

    if-eqz v7, :cond_1

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v7}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$600(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v7

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v8}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$700(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Ljavax/xml/stream/events/XMLEvent;

    move-result-object v8

    check-cast v8, Ljavax/xml/stream/events/EntityReference;

    invoke-interface {v7, v8}, Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;->entityReference(Ljavax/xml/stream/events/EntityReference;)V

    goto/16 :goto_0

    :pswitch_a
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v7}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$700(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Ljavax/xml/stream/events/XMLEvent;

    move-result-object v7

    check-cast v7, Ljavax/xml/stream/events/DTD;

    move-object v6, v7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    move-object v8, v6

    invoke-interface {v8}, Ljavax/xml/stream/events/DTD;->getEntities()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->processEntityDeclarations(Ljava/util/List;)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v7}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$600(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v7

    if-eqz v7, :cond_1

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$EventHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v7}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$600(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v7

    move-object v8, v6

    invoke-interface {v7, v8}, Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;->doctypeDecl(Ljavax/xml/stream/events/DTD;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_3
        :pswitch_8
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_4
    .end packed-switch
.end method
