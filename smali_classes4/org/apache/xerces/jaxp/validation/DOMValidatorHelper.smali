.class final Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xerces/jaxp/validation/ValidatorHelper;
.implements Lorg/apache/xerces/impl/validation/EntityState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;
    }
.end annotation


# static fields
.field private static final CHUNK_MASK:I = 0x3ff

.field private static final CHUNK_SIZE:I = 0x400

.field private static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field private static final NAMESPACE_CONTEXT:Ljava/lang/String; = "http://apache.org/xml/properties/internal/namespace-context"

.field private static final SCHEMA_VALIDATOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/schema"

.field private static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field private static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"


# instance fields
.field final fAttributeQName:Lorg/apache/xerces/xni/QName;

.field final fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

.field private final fCharBuffer:[C

.field private final fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

.field private fCurrentElement:Lorg/w3c/dom/Node;

.field private final fDOMNamespaceContext:Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;

.field private final fDOMResultAugmentor:Lorg/apache/xerces/jaxp/validation/DOMResultAugmentor;

.field private final fDOMResultBuilder:Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;

.field private fDOMValidatorHandler:Lorg/apache/xerces/jaxp/validation/DOMDocumentHandler;

.field final fElementQName:Lorg/apache/xerces/xni/QName;

.field private fEntities:Lorg/w3c/dom/NamedNodeMap;

.field private final fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

.field private final fNamespaceContext:Lorg/apache/xerces/util/NamespaceSupport;

.field private fRoot:Lorg/w3c/dom/Node;

.field private final fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

.field private final fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

.field final fTempString:Lorg/apache/xerces/xni/XMLString;

.field private final fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

.field private final fXMLLocator:Lorg/apache/xerces/impl/xs/util/SimpleLocator;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v0

    invoke-direct {v4, v5}, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;-><init>(Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;)V

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMNamespaceContext:Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;

    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    invoke-direct/range {v4 .. v9}, Lorg/apache/xerces/impl/xs/util/SimpleLocator;-><init>(Ljava/lang/String;Ljava/lang/String;III)V

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fXMLLocator:Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/jaxp/validation/DOMResultAugmentor;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    move-object v5, v0

    invoke-direct {v4, v5}, Lorg/apache/xerces/jaxp/validation/DOMResultAugmentor;-><init>(Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;)V

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMResultAugmentor:Lorg/apache/xerces/jaxp/validation/DOMResultAugmentor;

    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    invoke-direct {v4}, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMResultBuilder:Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fEntities:Lorg/w3c/dom/NamedNodeMap;

    move-object v2, v0

    const/16 v3, 0x400

    new-array v3, v3, [C

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fCharBuffer:[C

    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/xni/QName;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    invoke-direct {v4}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fElementQName:Lorg/apache/xerces/xni/QName;

    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/xni/QName;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    invoke-direct {v4}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/util/XMLAttributesImpl;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    invoke-direct {v4}, Lorg/apache/xerces/util/XMLAttributesImpl;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/xni/XMLString;

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    invoke-direct {v4}, Lorg/apache/xerces/xni/XMLString;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fTempString:Lorg/apache/xerces/xni/XMLString;

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {v3, v4}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/impl/XMLErrorReporter;

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/namespace-context"

    invoke-virtual {v3, v4}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/util/NamespaceSupport;

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fNamespaceContext:Lorg/apache/xerces/util/NamespaceSupport;

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/validator/schema"

    invoke-virtual {v3, v4}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {v3, v4}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/util/SymbolTable;

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/validation-manager"

    invoke-virtual {v3, v4}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/impl/validation/ValidationManager;

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    return-void
.end method

.method static access$000(Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;)Lorg/apache/xerces/util/NamespaceSupport;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fNamespaceContext:Lorg/apache/xerces/util/NamespaceSupport;

    move-object v0, v1

    return-object v0
.end method

.method static access$100(Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;)Lorg/w3c/dom/Node;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fRoot:Lorg/w3c/dom/Node;

    move-object v0, v1

    return-object v0
.end method

.method static access$200(Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;Lorg/apache/xerces/xni/QName;Lorg/w3c/dom/Node;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fillQName(Lorg/apache/xerces/xni/QName;Lorg/w3c/dom/Node;)V

    return-void
.end method

.method static access$300(Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;)Lorg/apache/xerces/util/SymbolTable;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v0, v1

    return-object v0
.end method

.method private beginNode(Lorg/w3c/dom/Node;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fCurrentElement:Lorg/w3c/dom/Node;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fNamespaceContext:Lorg/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v2}, Lorg/apache/xerces/util/NamespaceSupport;->pushContext()V

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fElementQName:Lorg/apache/xerces/xni/QName;

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fillQName(Lorg/apache/xerces/xni/QName;Lorg/w3c/dom/Node;)V

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->processAttributes(Lorg/w3c/dom/NamedNodeMap;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fElementQName:Lorg/apache/xerces/xni/QName;

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V

    goto :goto_0

    :pswitch_2
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lorg/apache/xerces/jaxp/validation/DOMDocumentHandler;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lorg/apache/xerces/jaxp/validation/DOMDocumentHandler;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lorg/apache/xerces/jaxp/validation/DOMDocumentHandler;->setIgnoringCharacters(Z)V

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->sendCharactersToValidator(Ljava/lang/String;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lorg/apache/xerces/jaxp/validation/DOMDocumentHandler;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/apache/xerces/jaxp/validation/DOMDocumentHandler;->setIgnoringCharacters(Z)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lorg/apache/xerces/jaxp/validation/DOMDocumentHandler;

    move-object v3, v1

    check-cast v3, Lorg/w3c/dom/Text;

    invoke-interface {v2, v3}, Lorg/apache/xerces/jaxp/validation/DOMDocumentHandler;->characters(Lorg/w3c/dom/Text;)V

    goto :goto_0

    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->sendCharactersToValidator(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lorg/apache/xerces/jaxp/validation/DOMDocumentHandler;

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lorg/apache/xerces/jaxp/validation/DOMDocumentHandler;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lorg/apache/xerces/jaxp/validation/DOMDocumentHandler;->setIgnoringCharacters(Z)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->startCDATA(Lorg/apache/xerces/xni/Augmentations;)V

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->sendCharactersToValidator(Ljava/lang/String;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->endCDATA(Lorg/apache/xerces/xni/Augmentations;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lorg/apache/xerces/jaxp/validation/DOMDocumentHandler;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/apache/xerces/jaxp/validation/DOMDocumentHandler;->setIgnoringCharacters(Z)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lorg/apache/xerces/jaxp/validation/DOMDocumentHandler;

    move-object v3, v1

    check-cast v3, Lorg/w3c/dom/CDATASection;

    invoke-interface {v2, v3}, Lorg/apache/xerces/jaxp/validation/DOMDocumentHandler;->cdata(Lorg/w3c/dom/CDATASection;)V

    goto/16 :goto_0

    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->startCDATA(Lorg/apache/xerces/xni/Augmentations;)V

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->sendCharactersToValidator(Ljava/lang/String;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->endCDATA(Lorg/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_0

    :pswitch_4
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lorg/apache/xerces/jaxp/validation/DOMDocumentHandler;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lorg/apache/xerces/jaxp/validation/DOMDocumentHandler;

    move-object v3, v1

    check-cast v3, Lorg/w3c/dom/ProcessingInstruction;

    invoke-interface {v2, v3}, Lorg/apache/xerces/jaxp/validation/DOMDocumentHandler;->processingInstruction(Lorg/w3c/dom/ProcessingInstruction;)V

    goto/16 :goto_0

    :pswitch_5
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lorg/apache/xerces/jaxp/validation/DOMDocumentHandler;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lorg/apache/xerces/jaxp/validation/DOMDocumentHandler;

    move-object v3, v1

    check-cast v3, Lorg/w3c/dom/Comment;

    invoke-interface {v2, v3}, Lorg/apache/xerces/jaxp/validation/DOMDocumentHandler;->comment(Lorg/w3c/dom/Comment;)V

    goto/16 :goto_0

    :pswitch_6
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lorg/apache/xerces/jaxp/validation/DOMDocumentHandler;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lorg/apache/xerces/jaxp/validation/DOMDocumentHandler;

    move-object v3, v1

    check-cast v3, Lorg/w3c/dom/DocumentType;

    invoke-interface {v2, v3}, Lorg/apache/xerces/jaxp/validation/DOMDocumentHandler;->doctypeDecl(Lorg/w3c/dom/DocumentType;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private fillQName(Lorg/apache/xerces/xni/QName;Lorg/w3c/dom/Node;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v2

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    move-object v7, v2

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    move-object v7, v2

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    move-object v7, v2

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    move-object v7, v1

    move-object v8, v3

    if-eqz v8, :cond_0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v9, v3

    invoke-virtual {v8, v9}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_0
    iput-object v8, v7, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    move-object v7, v1

    move-object v8, v4

    if-eqz v8, :cond_1

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v9, v4

    invoke-virtual {v8, v9}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_1
    iput-object v8, v7, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object v7, v1

    move-object v8, v5

    if-eqz v8, :cond_2

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v9, v5

    invoke-virtual {v8, v9}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_2
    iput-object v8, v7, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v7, v1

    move-object v8, v6

    if-eqz v8, :cond_3

    move-object v8, v6

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v9, v6

    invoke-virtual {v8, v9}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_3
    iput-object v8, v7, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    return-void

    :cond_0
    sget-object v8, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v8, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_1

    :cond_2
    sget-object v8, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    goto :goto_3
.end method

.method private finishNode(Lorg/w3c/dom/Node;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fCurrentElement:Lorg/w3c/dom/Node;

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fElementQName:Lorg/apache/xerces/xni/QName;

    move-object v4, v1

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fillQName(Lorg/apache/xerces/xni/QName;Lorg/w3c/dom/Node;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fElementQName:Lorg/apache/xerces/xni/QName;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fNamespaceContext:Lorg/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v2}, Lorg/apache/xerces/util/NamespaceSupport;->popContext()V

    :cond_0
    return-void
.end method

.method private processAttributes(Lorg/w3c/dom/NamedNodeMap;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    invoke-interface {v6}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v6

    move v2, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v6}, Lorg/apache/xerces/util/XMLAttributesImpl;->removeAllAttributes()V

    const/4 v6, 0x0

    move v3, v6

    :goto_0
    move v6, v3

    move v7, v2

    if-lt v6, v7, :cond_0

    return-void

    :cond_0
    move-object v6, v1

    move v7, v3

    invoke-interface {v6, v7}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Attr;

    move-object v4, v6

    move-object v6, v4

    invoke-interface {v6}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    move-object v6, v5

    if-nez v6, :cond_1

    sget-object v6, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object v5, v6

    :cond_1
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    move-object v8, v4

    invoke-direct {v6, v7, v8}, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fillQName(Lorg/apache/xerces/xni/QName;Lorg/w3c/dom/Node;)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    sget-object v8, Lorg/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    move-object v9, v5

    invoke-virtual {v6, v7, v8, v9}, Lorg/apache/xerces/util/XMLAttributesImpl;->addAttributeNS(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

    move v7, v3

    move-object v8, v4

    invoke-interface {v8}, Lorg/w3c/dom/Attr;->getSpecified()Z

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/util/XMLAttributesImpl;->setSpecified(IZ)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    iget-object v6, v6, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    sget-object v7, Lorg/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-ne v6, v7, :cond_2

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    iget-object v6, v6, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    sget-object v7, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v6, v7, :cond_4

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fNamespaceContext:Lorg/apache/xerces/util/NamespaceSupport;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    iget-object v7, v7, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object v8, v5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_3

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v9, v5

    invoke-virtual {v8, v9}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_1
    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    :cond_4
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fNamespaceContext:Lorg/apache/xerces/util/NamespaceSupport;

    sget-object v7, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object v8, v5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_5

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v9, v5

    invoke-virtual {v8, v9}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_3
    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    goto :goto_3
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

    iget-object v8, v8, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fCharBuffer:[C

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Ljava/lang/String;->getChars(II[CI)V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fTempString:Lorg/apache/xerces/xni/XMLString;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fCharBuffer:[C

    const/4 v7, 0x0

    move v8, v3

    invoke-virtual {v5, v6, v7, v8}, Lorg/apache/xerces/xni/XMLString;->setValues([CII)V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fTempString:Lorg/apache/xerces/xni/XMLString;

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

    iget-object v8, v8, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fCharBuffer:[C

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Ljava/lang/String;->getChars(II[CI)V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fTempString:Lorg/apache/xerces/xni/XMLString;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fCharBuffer:[C

    const/4 v7, 0x0

    const/16 v8, 0x400

    invoke-virtual {v5, v6, v7, v8}, Lorg/apache/xerces/xni/XMLString;->setValues([CII)V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fTempString:Lorg/apache/xerces/xni/XMLString;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    goto :goto_0
.end method

.method private setupDOMResultHandler(Ljavax/xml/transform/dom/DOMSource;Ljavax/xml/transform/dom/DOMResult;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v2

    if-nez v6, :cond_0

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lorg/apache/xerces/jaxp/validation/DOMDocumentHandler;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    :goto_0
    return-void

    :cond_0
    move-object v6, v2

    invoke-virtual {v6}, Ljavax/xml/transform/dom/DOMResult;->getNode()Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v3, v6

    move-object v6, v1

    invoke-virtual {v6}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v7, v3

    if-ne v6, v7, :cond_1

    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMResultAugmentor:Lorg/apache/xerces/jaxp/validation/DOMResultAugmentor;

    iput-object v7, v6, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lorg/apache/xerces/jaxp/validation/DOMDocumentHandler;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMResultAugmentor:Lorg/apache/xerces/jaxp/validation/DOMResultAugmentor;

    move-object v7, v2

    invoke-virtual {v6, v7}, Lorg/apache/xerces/jaxp/validation/DOMResultAugmentor;->setDOMResult(Ljavax/xml/transform/dom/DOMResult;)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMResultAugmentor:Lorg/apache/xerces/jaxp/validation/DOMResultAugmentor;

    invoke-virtual {v6, v7}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    goto :goto_0

    :cond_1
    move-object v6, v2

    invoke-virtual {v6}, Ljavax/xml/transform/dom/DOMResult;->getNode()Lorg/w3c/dom/Node;

    move-result-object v6

    if-nez v6, :cond_2

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v6

    move-object v4, v6

    move-object v6, v4

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    move-object v6, v4

    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v6

    move-object v5, v6

    move-object v6, v2

    move-object v7, v5

    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavax/xml/transform/dom/DOMResult;->setNode(Lorg/w3c/dom/Node;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMResultBuilder:Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;

    iput-object v7, v6, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lorg/apache/xerces/jaxp/validation/DOMDocumentHandler;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMResultBuilder:Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;

    move-object v7, v2

    invoke-virtual {v6, v7}, Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;->setDOMResult(Ljavax/xml/transform/dom/DOMResult;)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMResultBuilder:Lorg/apache/xerces/jaxp/validation/DOMResultBuilder;

    invoke-virtual {v6, v7}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    goto :goto_0

    :catch_0
    move-exception v6

    move-object v4, v6

    new-instance v6, Lorg/xml/sax/SAXException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v4

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v6
.end method

.method private setupEntityMap(Lorg/w3c/dom/Document;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v0

    move-object v4, v2

    invoke-interface {v4}, Lorg/w3c/dom/DocumentType;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    iput-object v4, v3, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fEntities:Lorg/w3c/dom/NamedNodeMap;

    :goto_0
    return-void

    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fEntities:Lorg/w3c/dom/NamedNodeMap;

    goto :goto_0
.end method

.method private useIsSameNode(Lorg/w3c/dom/Node;)Z
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    instance-of v3, v3, Lorg/apache/xerces/dom/NodeImpl;

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move-object v3, v1

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1

    move-object v3, v1

    check-cast v3, Lorg/w3c/dom/Document;

    :goto_1
    move-object v2, v3

    move-object v3, v2

    if-eqz v3, :cond_2

    move-object v3, v2

    invoke-interface {v3}, Lorg/w3c/dom/Document;->getImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v3

    const-string/jumbo v4, "Core"

    const-string/jumbo v5, "3.0"

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    move v0, v3

    goto :goto_0

    :cond_1
    move-object v3, v1

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private validate(Lorg/w3c/dom/Node;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    move-object v2, v5

    move-object v5, v0

    move-object v6, v2

    invoke-direct {v5, v6}, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->useIsSameNode(Lorg/w3c/dom/Node;)Z

    move-result v5

    move v3, v5

    :goto_0
    move-object v5, v1

    if-nez v5, :cond_0

    return-void

    :cond_0
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->beginNode(Lorg/w3c/dom/Node;)V

    move-object v5, v1

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v4, v5

    :cond_1
    move-object v5, v4

    if-eqz v5, :cond_2

    :goto_1
    move-object v5, v4

    move-object v1, v5

    goto :goto_0

    :cond_2
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->finishNode(Lorg/w3c/dom/Node;)V

    move-object v5, v2

    move-object v6, v1

    if-ne v5, v6, :cond_3

    goto :goto_1

    :cond_3
    move-object v5, v1

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v4, v5

    move-object v5, v4

    if-nez v5, :cond_1

    move-object v5, v1

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v1, v5

    move-object v5, v1

    if-eqz v5, :cond_4

    move v5, v3

    if-eqz v5, :cond_6

    move-object v5, v2

    move-object v6, v1

    invoke-interface {v5, v6}, Lorg/w3c/dom/Node;->isSameNode(Lorg/w3c/dom/Node;)Z

    move-result v5

    :goto_2
    if-eqz v5, :cond_1

    :cond_4
    move-object v5, v1

    if-eqz v5, :cond_5

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->finishNode(Lorg/w3c/dom/Node;)V

    :cond_5
    const/4 v5, 0x0

    move-object v4, v5

    goto :goto_1

    :cond_6
    move-object v5, v2

    move-object v6, v1

    if-ne v5, v6, :cond_7

    const/4 v5, 0x1

    goto :goto_2

    :cond_7
    const/4 v5, 0x0

    goto :goto_2
.end method


# virtual methods
.method getCurrentElement()Lorg/w3c/dom/Node;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fCurrentElement:Lorg/w3c/dom/Node;

    move-object v0, v1

    return-object v0
.end method

.method public isEntityDeclared(Ljava/lang/String;)Z
    .locals 3

    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public isEntityUnparsed(Ljava/lang/String;)Z
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fEntities:Lorg/w3c/dom/NamedNodeMap;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fEntities:Lorg/w3c/dom/NamedNodeMap;

    move-object v4, v1

    invoke-interface {v3, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Entity;

    move-object v2, v3

    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v2

    invoke-interface {v3}, Lorg/w3c/dom/Entity;->getNotationName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    :goto_1
    return v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1
.end method

.method public validate(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v11, v2

    instance-of v11, v11, Ljavax/xml/transform/dom/DOMResult;

    if-nez v11, :cond_0

    move-object v11, v2

    if-nez v11, :cond_4

    :cond_0
    move-object v11, v1

    check-cast v11, Ljavax/xml/transform/dom/DOMSource;

    move-object v3, v11

    move-object v11, v2

    check-cast v11, Ljavax/xml/transform/dom/DOMResult;

    move-object v4, v11

    move-object v11, v3

    invoke-virtual {v11}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object v11

    move-object v5, v11

    move-object v11, v0

    move-object v12, v5

    iput-object v12, v11, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fRoot:Lorg/w3c/dom/Node;

    move-object v11, v5

    if-eqz v11, :cond_1

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v11}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->reset()V

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    move-object v12, v0

    invoke-virtual {v11, v12}, Lorg/apache/xerces/impl/validation/ValidationManager;->setEntityState(Lorg/apache/xerces/impl/validation/EntityState;)V

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMNamespaceContext:Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;

    invoke-virtual {v11}, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;->reset()V

    move-object v11, v3

    invoke-virtual {v11}, Ljavax/xml/transform/dom/DOMSource;->getSystemId()Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fXMLLocator:Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    move-object v12, v6

    invoke-virtual {v11, v12}, Lorg/apache/xerces/impl/xs/util/SimpleLocator;->setLiteralSystemId(Ljava/lang/String;)V

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fXMLLocator:Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    move-object v12, v6

    invoke-virtual {v11, v12}, Lorg/apache/xerces/impl/xs/util/SimpleLocator;->setExpandedSystemId(Ljava/lang/String;)V

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fXMLLocator:Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    invoke-virtual {v11, v12}, Lorg/apache/xerces/impl/XMLErrorReporter;->setDocumentLocator(Lorg/apache/xerces/xni/XMLLocator;)V

    move-object v11, v0

    move-object v12, v5

    :try_start_0
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v12

    const/16 v13, 0x9

    if-ne v12, v13, :cond_2

    move-object v12, v5

    check-cast v12, Lorg/w3c/dom/Document;

    :goto_0
    invoke-direct {v11, v12}, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->setupEntityMap(Lorg/w3c/dom/Document;)V

    move-object v11, v0

    move-object v12, v3

    move-object v13, v4

    invoke-direct {v11, v12, v13}, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->setupDOMResultHandler(Ljavax/xml/transform/dom/DOMSource;Ljavax/xml/transform/dom/DOMResult;)V

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fXMLLocator:Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    const/4 v13, 0x0

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMNamespaceContext:Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper$DOMNamespaceContext;

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v13, v14, v15}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->startDocument(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lorg/apache/xerces/xni/NamespaceContext;Lorg/apache/xerces/xni/Augmentations;)V

    move-object v11, v0

    move-object v12, v5

    invoke-direct {v11, v12}, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->validate(Lorg/w3c/dom/Node;)V

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->endDocument(Lorg/apache/xerces/xni/Augmentations;)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v11, v0

    const/4 v12, 0x0

    iput-object v12, v11, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fRoot:Lorg/w3c/dom/Node;

    move-object v11, v0

    const/4 v12, 0x0

    iput-object v12, v11, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fCurrentElement:Lorg/w3c/dom/Node;

    move-object v11, v0

    const/4 v12, 0x0

    iput-object v12, v11, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fEntities:Lorg/w3c/dom/NamedNodeMap;

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lorg/apache/xerces/jaxp/validation/DOMDocumentHandler;

    if-eqz v11, :cond_1

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lorg/apache/xerces/jaxp/validation/DOMDocumentHandler;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lorg/apache/xerces/jaxp/validation/DOMDocumentHandler;->setDOMResult(Ljavax/xml/transform/dom/DOMResult;)V

    :cond_1
    return-void

    :cond_2
    move-object v12, v5

    :try_start_1
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;
    :try_end_1
    .catch Lorg/apache/xerces/xni/parser/XMLParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v12

    goto :goto_0

    :catch_0
    move-exception v11

    move-object v7, v11

    move-object v11, v7

    :try_start_2
    invoke-static {v11}, Lorg/apache/xerces/jaxp/validation/Util;->toSAXParseException(Lorg/apache/xerces/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object v11

    throw v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v11

    move-object v9, v11

    move-object v11, v0

    const/4 v12, 0x0

    iput-object v12, v11, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fRoot:Lorg/w3c/dom/Node;

    move-object v11, v0

    const/4 v12, 0x0

    iput-object v12, v11, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fCurrentElement:Lorg/w3c/dom/Node;

    move-object v11, v0

    const/4 v12, 0x0

    iput-object v12, v11, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fEntities:Lorg/w3c/dom/NamedNodeMap;

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lorg/apache/xerces/jaxp/validation/DOMDocumentHandler;

    if-eqz v11, :cond_3

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fDOMValidatorHandler:Lorg/apache/xerces/jaxp/validation/DOMDocumentHandler;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lorg/apache/xerces/jaxp/validation/DOMDocumentHandler;->setDOMResult(Ljavax/xml/transform/dom/DOMResult;)V

    :cond_3
    move-object v11, v9

    throw v11

    :catch_1
    move-exception v11

    move-object v8, v11

    move-object v11, v8

    :try_start_3
    invoke-static {v11}, Lorg/apache/xerces/jaxp/validation/Util;->toSAXException(Lorg/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object v11

    throw v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    new-instance v11, Ljava/lang/IllegalArgumentException;

    move-object/from16 v19, v11

    move-object/from16 v11, v19

    move-object/from16 v12, v19

    move-object v13, v0

    iget-object v13, v13, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v13}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v13

    const-string/jumbo v14, "SourceResultMismatch"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const/16 v17, 0x0

    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    move-object/from16 v19, v15

    move-object/from16 v15, v19

    move-object/from16 v16, v19

    const/16 v17, 0x1

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static {v13, v14, v15}, Lorg/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11
.end method
