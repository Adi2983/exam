.class final Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "StreamHelper"
.end annotation


# instance fields
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

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    return-void
.end method

.method private fillDeclaredPrefixes(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fDeclaredPrefixes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    move-object v5, v1

    invoke-interface {v5}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceCount()I

    move-result v5

    move v2, v5

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-lt v5, v6, :cond_0

    return-void

    :cond_0
    move-object v5, v1

    move v6, v3

    invoke-interface {v5, v6}, Ljavax/xml/stream/XMLStreamReader;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fDeclaredPrefixes:Ljava/util/ArrayList;

    move-object v6, v4

    if-eqz v6, :cond_1

    move-object v6, v4

    :goto_1
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v6, ""

    goto :goto_1
.end method

.method private fillXMLAttributes(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v5}, Lorg/apache/xerces/util/XMLAttributesImpl;->removeAllAttributes()V

    move-object v5, v1

    invoke-interface {v5}, Ljavax/xml/stream/XMLStreamReader;->getAttributeCount()I

    move-result v5

    move v2, v5

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move v6, v2

    if-lt v5, v6, :cond_0

    return-void

    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    move-object v7, v1

    move v8, v3

    invoke-interface {v7, v8}, Ljavax/xml/stream/XMLStreamReader;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, v1

    move v9, v3

    invoke-interface {v8, v9}, Ljavax/xml/stream/XMLStreamReader;->getAttributeLocalName(I)Ljava/lang/String;

    move-result-object v8

    move-object v9, v1

    move v10, v3

    invoke-interface {v9, v10}, Ljavax/xml/stream/XMLStreamReader;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fillQName(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v1

    move v6, v3

    invoke-interface {v5, v6}, Ljavax/xml/stream/XMLStreamReader;->getAttributeType(I)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    move-object v7, v4

    if-eqz v7, :cond_1

    move-object v7, v4

    :goto_1
    move-object v8, v1

    move v9, v3

    invoke-interface {v8, v9}, Ljavax/xml/stream/XMLStreamReader;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Lorg/apache/xerces/util/XMLAttributesImpl;->addAttributeNS(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

    move v6, v3

    move-object v7, v1

    move v8, v3

    invoke-interface {v7, v8}, Ljavax/xml/stream/XMLStreamReader;->isAttributeSpecified(I)Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/util/XMLAttributesImpl;->setSpecified(IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v7, Lorg/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method final validate(Ljavax/xml/stream/XMLStreamReader;Ljavax/xml/transform/stax/StAXResult;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v1

    invoke-interface {v6}, Ljavax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, v1

    invoke-interface {v6}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v6

    move v3, v6

    move v6, v3

    const/4 v7, 0x7

    if-eq v6, v7, :cond_0

    move v6, v3

    const/4 v7, 0x1

    if-eq v6, v7, :cond_0

    new-instance v6, Lorg/xml/sax/SAXException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v8}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$000(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    move-result-object v8

    invoke-virtual {v8}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v8

    const-string/jumbo v9, "StAXIllegalInitialState"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lorg/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v6}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$100(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;->setXMLStreamReader(Ljavax/xml/stream/XMLStreamReader;)V

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v4, v6

    move-object v6, v1

    :try_start_0
    const-string/jumbo v7, "javax.xml.stream.isInterning"

    invoke-interface {v6, v7}, Ljavax/xml/stream/XMLStreamReader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v4, v6

    :goto_0
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v7}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$100(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;

    move-result-object v7

    move-object v8, v2

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->setup(Ljavax/xml/stream/Location;Ljavax/xml/transform/stax/StAXResult;Z)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v6}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$400(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v7}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$200(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/util/StAXLocationWrapper;

    move-result-object v7

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v9}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$300(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->startDocument(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lorg/apache/xerces/xni/NamespaceContext;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_1
    move v6, v3

    packed-switch v6, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    move-object v6, v1

    invoke-interface {v6}, Ljavax/xml/stream/XMLStreamReader;->next()I

    move-result v6

    move v3, v6

    move-object v6, v1

    invoke-interface {v6}, Ljavax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v6}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$500(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)I

    move-result v6

    if-gtz v6, :cond_1

    :cond_3
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v6}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$400(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->endDocument(Lorg/apache/xerces/xni/Augmentations;)V

    move v6, v3

    const/16 v7, 0x8

    if-ne v6, v7, :cond_4

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v6}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$600(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v6

    if-eqz v6, :cond_4

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v6}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$600(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v6

    move-object v7, v1

    invoke-interface {v6, v7}, Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;->endDocument(Ljavax/xml/stream/XMLStreamReader;)V

    :cond_4
    return-void

    :catch_0
    move-exception v6

    move-object v5, v6

    goto :goto_0

    :pswitch_1
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v6}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$504(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)I

    move-result v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fElementQName:Lorg/apache/xerces/xni/QName;

    move-object v8, v1

    invoke-interface {v8}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    move-object v9, v1

    invoke-interface {v9}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v9

    move-object v10, v1

    invoke-interface {v10}, Ljavax/xml/stream/XMLStreamReader;->getPrefix()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fillQName(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->fillXMLAttributes(Ljavax/xml/stream/XMLStreamReader;)V

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->fillDeclaredPrefixes(Ljavax/xml/stream/XMLStreamReader;)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v6}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$300(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

    move-result-object v6

    move-object v7, v1

    invoke-interface {v7}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v6}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$400(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fElementQName:Lorg/apache/xerces/xni/QName;

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v8, v8, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_1

    :pswitch_2
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fElementQName:Lorg/apache/xerces/xni/QName;

    move-object v8, v1

    invoke-interface {v8}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    move-object v9, v1

    invoke-interface {v9}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v9

    move-object v10, v1

    invoke-interface {v10}, Ljavax/xml/stream/XMLStreamReader;->getPrefix()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fillQName(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->fillDeclaredPrefixes(Ljavax/xml/stream/XMLStreamReader;)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v6}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$300(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;

    move-result-object v6

    move-object v7, v1

    invoke-interface {v7}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v6}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$400(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fElementQName:Lorg/apache/xerces/xni/QName;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v6}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$506(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)I

    move-result v6

    goto/16 :goto_1

    :pswitch_3
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fTempString:Lorg/apache/xerces/xni/XMLString;

    move-object v7, v1

    invoke-interface {v7}, Ljavax/xml/stream/XMLStreamReader;->getTextCharacters()[C

    move-result-object v7

    move-object v8, v1

    invoke-interface {v8}, Ljavax/xml/stream/XMLStreamReader;->getTextStart()I

    move-result v8

    move-object v9, v1

    invoke-interface {v9}, Ljavax/xml/stream/XMLStreamReader;->getTextLength()I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lorg/apache/xerces/xni/XMLString;->setValues([CII)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v6}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$400(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fTempString:Lorg/apache/xerces/xni/XMLString;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_1

    :pswitch_4
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v6}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$400(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->startCDATA(Lorg/apache/xerces/xni/Augmentations;)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fTempString:Lorg/apache/xerces/xni/XMLString;

    move-object v7, v1

    invoke-interface {v7}, Ljavax/xml/stream/XMLStreamReader;->getTextCharacters()[C

    move-result-object v7

    move-object v8, v1

    invoke-interface {v8}, Ljavax/xml/stream/XMLStreamReader;->getTextStart()I

    move-result v8

    move-object v9, v1

    invoke-interface {v9}, Ljavax/xml/stream/XMLStreamReader;->getTextLength()I

    move-result v9

    invoke-virtual {v6, v7, v8, v9}, Lorg/apache/xerces/xni/XMLString;->setValues([CII)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v6}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$400(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->fTempString:Lorg/apache/xerces/xni/XMLString;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v6}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$400(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->endCDATA(Lorg/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_1

    :pswitch_5
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v6}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$504(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)I

    move-result v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v6}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$600(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v6

    if-eqz v6, :cond_2

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v6}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$600(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v6

    move-object v7, v1

    invoke-interface {v6, v7}, Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;->startDocument(Ljavax/xml/stream/XMLStreamReader;)V

    goto/16 :goto_1

    :pswitch_6
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v6}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$600(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v6

    if-eqz v6, :cond_2

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v6}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$600(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v6

    move-object v7, v1

    invoke-interface {v6, v7}, Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;->processingInstruction(Ljavax/xml/stream/XMLStreamReader;)V

    goto/16 :goto_1

    :pswitch_7
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v6}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$600(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v6

    if-eqz v6, :cond_2

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v6}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$600(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v6

    move-object v7, v1

    invoke-interface {v6, v7}, Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;->comment(Ljavax/xml/stream/XMLStreamReader;)V

    goto/16 :goto_1

    :pswitch_8
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v6}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$600(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v6

    if-eqz v6, :cond_2

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    invoke-static {v6}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->access$600(Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;)Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;

    move-result-object v6

    move-object v7, v1

    invoke-interface {v6, v7}, Lorg/apache/xerces/jaxp/validation/StAXDocumentHandler;->entityReference(Ljavax/xml/stream/XMLStreamReader;)V

    goto/16 :goto_1

    :pswitch_9
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper$StreamHelper;->this$0:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    move-object v7, v1

    const-string/jumbo v8, "javax.xml.stream.entities"

    invoke-interface {v7, v8}, Ljavax/xml/stream/XMLStreamReader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-virtual {v6, v7}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->processEntityDeclarations(Ljava/util/List;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_4
    .end packed-switch
.end method
