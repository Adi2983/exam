.class final Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;
.super Ljavax/xml/validation/ValidatorHandler;

# interfaces
.implements Lorg/xml/sax/DTDHandler;
.implements Lorg/apache/xerces/impl/validation/EntityState;
.implements Lorg/apache/xerces/xs/PSVIProvider;
.implements Lorg/apache/xerces/jaxp/validation/ValidatorHelper;
.implements Lorg/apache/xerces/xni/XMLDocumentHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$1;,
        Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$ResolutionForwarder;,
        Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;
    }
.end annotation


# static fields
.field private static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field private static final LEXICAL_HANDLER:Ljava/lang/String; = "http://xml.org/sax/properties/lexical-handler"

.field private static final NAMESPACE_CONTEXT:Ljava/lang/String; = "http://apache.org/xml/properties/internal/namespace-context"

.field private static final NAMESPACE_PREFIXES:Ljava/lang/String; = "http://xml.org/sax/features/namespace-prefixes"

.field private static final SCHEMA_VALIDATOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/schema"

.field private static final SECURITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"

.field private static final STRINGS_INTERNED:Ljava/lang/String; = "http://apache.org/xml/features/internal/strings-interned"

.field private static final STRING_INTERNING:Ljava/lang/String; = "http://xml.org/sax/features/string-interning"

.field private static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field private static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"


# instance fields
.field private final fAttrAdapter:Lorg/apache/xerces/util/AttributesProxy;

.field private final fAttributeQName:Lorg/apache/xerces/xni/QName;

.field private final fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

.field private final fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

.field private fContentHandler:Lorg/xml/sax/ContentHandler;

.field private final fElementQName:Lorg/apache/xerces/xni/QName;

.field private final fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

.field private final fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

.field private fNeedPushNSContext:Z

.field private final fResolutionForwarder:Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$ResolutionForwarder;

.field private final fSAXLocatorWrapper:Lorg/apache/xerces/util/SAXLocatorWrapper;

.field private final fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

.field private fStringsInternalized:Z

.field private final fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

.field private final fTempString:Lorg/apache/xerces/xni/XMLString;

.field private final fTypeInfoProvider:Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;

.field private fUnparsedEntities:Ljava/util/HashMap;

.field private final fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljavax/xml/validation/ValidatorHandler;-><init>()V

    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/util/SAXLocatorWrapper;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Lorg/apache/xerces/util/SAXLocatorWrapper;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fSAXLocatorWrapper:Lorg/apache/xerces/util/SAXLocatorWrapper;

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fNeedPushNSContext:Z

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fUnparsedEntities:Ljava/util/HashMap;

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fStringsInternalized:Z

    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/xni/QName;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/xni/QName;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/util/XMLAttributesImpl;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Lorg/apache/xerces/util/XMLAttributesImpl;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/util/AttributesProxy;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-direct {v4, v5}, Lorg/apache/xerces/util/AttributesProxy;-><init>(Lorg/apache/xerces/xni/XMLAttributes;)V

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fAttrAdapter:Lorg/apache/xerces/util/AttributesProxy;

    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/xni/XMLString;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Lorg/apache/xerces/xni/XMLString;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fTempString:Lorg/apache/xerces/xni/XMLString;

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;-><init>(Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$1;)V

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fTypeInfoProvider:Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;

    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$ResolutionForwarder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$ResolutionForwarder;-><init>(Lorg/w3c/dom/ls/LSResourceResolver;)V

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fResolutionForwarder:Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$ResolutionForwarder;

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {v3, v4}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/impl/XMLErrorReporter;

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/namespace-context"

    invoke-virtual {v3, v4}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/xni/NamespaceContext;

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/validator/schema"

    invoke-virtual {v3, v4}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {v3, v4}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/util/SymbolTable;

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/validation-manager"

    invoke-virtual {v3, v4}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/impl/validation/ValidationManager;

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/jaxp/validation/XSGrammarPoolContainer;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-direct {v4, v5}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;-><init>(Lorg/apache/xerces/jaxp/validation/XSGrammarPoolContainer;)V

    invoke-direct {v2, v3}, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;-><init>(Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-string/jumbo v6, "http://xml.org/sax/features/namespace-prefixes"

    aput-object v6, v4, v5

    invoke-virtual {v2, v3}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->addRecognizedFeatures([Ljava/lang/String;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v3, "http://xml.org/sax/features/namespace-prefixes"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->setFeature(Ljava/lang/String;Z)V

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->setResourceResolver(Lorg/w3c/dom/ls/LSResourceResolver;)V

    return-void
.end method

.method static access$100(Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;)Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    move-object v0, v1

    return-object v0
.end method

.method private fillQName(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object v7, v0

    iget-boolean v7, v7, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fStringsInternalized:Z

    if-nez v7, :cond_5

    move-object v7, v2

    if-eqz v7, :cond_2

    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v8, v2

    invoke-virtual {v7, v8}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_0
    move-object v2, v7

    move-object v7, v3

    if-eqz v7, :cond_3

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v8, v3

    invoke-virtual {v7, v8}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_1
    move-object v3, v7

    move-object v7, v4

    if-eqz v7, :cond_4

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v8, v4

    invoke-virtual {v7, v8}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_2
    move-object v4, v7

    :cond_0
    :goto_3
    sget-object v7, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object v5, v7

    move-object v7, v4

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    move v6, v7

    move v7, v6

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v8, v4

    const/4 v9, 0x0

    move v10, v6

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    :cond_1
    move-object v7, v1

    move-object v8, v5

    move-object v9, v3

    move-object v10, v4

    move-object v11, v2

    invoke-virtual {v7, v8, v9, v10, v11}, Lorg/apache/xerces/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    :cond_3
    sget-object v7, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_1

    :cond_4
    sget-object v7, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_2

    :cond_5
    move-object v7, v2

    if-eqz v7, :cond_6

    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_6

    const/4 v7, 0x0

    move-object v2, v7

    :cond_6
    move-object v7, v3

    if-nez v7, :cond_7

    sget-object v7, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object v3, v7

    :cond_7
    move-object v7, v4

    if-nez v7, :cond_0

    sget-object v7, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object v4, v7

    goto :goto_3
.end method

.method private fillXMLAttribute(Lorg/xml/sax/Attributes;I)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    move-object v6, v1

    move v7, v2

    invoke-interface {v6, v7}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v6

    move-object v7, v1

    move v8, v2

    invoke-interface {v7, v8}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v7

    move-object v8, v1

    move v9, v2

    invoke-interface {v8, v9}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fillQName(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v1

    move v5, v2

    invoke-interface {v4, v5}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fAttributeQName:Lorg/apache/xerces/xni/QName;

    move-object v6, v3

    if-eqz v6, :cond_0

    move-object v6, v3

    :goto_0
    move-object v7, v1

    move v8, v2

    invoke-interface {v7, v8}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lorg/apache/xerces/util/XMLAttributesImpl;->addAttributeNS(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v6, Lorg/apache/xerces/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    goto :goto_0
.end method

.method private fillXMLAttributes(Lorg/xml/sax/Attributes;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v4}, Lorg/apache/xerces/util/XMLAttributesImpl;->removeAllAttributes()V

    move-object v4, v1

    invoke-interface {v4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v4

    move v2, v4

    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move v5, v2

    if-lt v4, v5, :cond_0

    return-void

    :cond_0
    move-object v4, v0

    move-object v5, v1

    move v6, v3

    invoke-direct {v4, v5, v6}, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fillXMLAttribute(Lorg/xml/sax/Attributes;I)V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

    move v5, v3

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/util/XMLAttributesImpl;->setSpecified(IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private fillXMLAttributes2(Lorg/xml/sax/ext/Attributes2;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

    invoke-virtual {v4}, Lorg/apache/xerces/util/XMLAttributesImpl;->removeAllAttributes()V

    move-object v4, v1

    invoke-interface {v4}, Lorg/xml/sax/ext/Attributes2;->getLength()I

    move-result v4

    move v2, v4

    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move v5, v2

    if-lt v4, v5, :cond_0

    return-void

    :cond_0
    move-object v4, v0

    move-object v5, v1

    move v6, v3

    invoke-direct {v4, v5, v6}, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fillXMLAttribute(Lorg/xml/sax/Attributes;I)V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

    move v5, v3

    move-object v6, v1

    move v7, v3

    invoke-interface {v6, v7}, Lorg/xml/sax/ext/Attributes2;->isSpecified(I)Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/util/XMLAttributesImpl;->setSpecified(IZ)V

    move-object v4, v1

    move v5, v3

    invoke-interface {v4, v5}, Lorg/xml/sax/ext/Attributes2;->isDeclared(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

    move v5, v3

    invoke-virtual {v4, v5}, Lorg/apache/xerces/util/XMLAttributesImpl;->getAugmentations(I)Lorg/apache/xerces/xni/Augmentations;

    move-result-object v4

    const-string/jumbo v5, "ATTRIBUTE_DECLARED"

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v4, v5, v6}, Lorg/apache/xerces/xni/Augmentations;->putItem(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
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

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v4, :cond_1

    move-object v4, v1

    iget v4, v4, Lorg/apache/xerces/xni/XMLString;->length:I

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    move-object v5, v1

    iget-object v5, v5, Lorg/apache/xerces/xni/XMLString;->ch:[C

    move-object v6, v1

    iget v6, v6, Lorg/apache/xerces/xni/XMLString;->offset:I

    move-object v7, v1

    iget v7, v7, Lorg/apache/xerces/xni/XMLString;->length:I

    invoke-interface {v4, v5, v6, v7}, Lorg/xml/sax/ContentHandler;->characters([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
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

.method public characters([CII)V
    .locals 10
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
    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fTempString:Lorg/apache/xerces/xni/XMLString;

    move-object v7, v1

    move v8, v2

    move v9, v3

    invoke-virtual {v6, v7, v8, v9}, Lorg/apache/xerces/xni/XMLString;->setValues([CII)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fTempString:Lorg/apache/xerces/xni/XMLString;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v6

    move-object v4, v6

    move-object v6, v4

    invoke-static {v6}, Lorg/apache/xerces/jaxp/validation/Util;->toSAXParseException(Lorg/apache/xerces/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object v6

    throw v6

    :catch_1
    move-exception v6

    move-object v5, v6

    move-object v6, v5

    invoke-static {v6}, Lorg/apache/xerces/jaxp/validation/Util;->toSAXException(Lorg/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object v6

    throw v6
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

    invoke-virtual {v4, v5, v6, v7}, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V

    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public endCDATA(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

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

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fSAXLocatorWrapper:Lorg/apache/xerces/util/SAXLocatorWrapper;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/SAXLocatorWrapper;->setLocator(Lorg/xml/sax/Locator;)V

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->endDocument(Lorg/apache/xerces/xni/Augmentations;)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v3

    move-object v1, v3

    move-object v3, v1

    invoke-static {v3}, Lorg/apache/xerces/jaxp/validation/Util;->toSAXParseException(Lorg/apache/xerces/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object v3

    throw v3

    :catch_1
    move-exception v3

    move-object v2, v3

    move-object v3, v2

    invoke-static {v3}, Lorg/apache/xerces/jaxp/validation/Util;->toSAXException(Lorg/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object v3

    throw v3
.end method

.method public endDocument(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v3, :cond_0

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v3}, Lorg/xml/sax/ContentHandler;->endDocument()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v3

    move-object v2, v3

    new-instance v3, Lorg/apache/xerces/xni/XNIException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fillQName(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v0

    :try_start_0
    iget-object v8, v8, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-interface {v8}, Lorg/apache/xerces/xni/NamespaceContext;->popContext()V

    return-void

    :catch_0
    move-exception v8

    move-object v4, v8

    move-object v8, v4

    :try_start_1
    invoke-static {v8}, Lorg/apache/xerces/jaxp/validation/Util;->toSAXParseException(Lorg/apache/xerces/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object v8

    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v8

    move-object v6, v8

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-interface {v8}, Lorg/apache/xerces/xni/NamespaceContext;->popContext()V

    move-object v8, v6

    throw v8

    :catch_1
    move-exception v8

    move-object v5, v8

    move-object v8, v5

    :try_start_2
    invoke-static {v8}, Lorg/apache/xerces/jaxp/validation/Util;->toSAXException(Lorg/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object v8

    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
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

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v6, :cond_0

    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fTypeInfoProvider:Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;

    move-object v7, v2

    invoke-virtual {v6, v7}, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->beginEndElement(Lorg/apache/xerces/xni/Augmentations;)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    move-object v7, v1

    iget-object v7, v7, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v7, :cond_1

    move-object v7, v1

    iget-object v7, v7, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    :goto_0
    move-object v8, v1

    iget-object v8, v8, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object v9, v1

    iget-object v9, v9, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-interface {v6, v7, v8, v9}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fTypeInfoProvider:Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;

    invoke-virtual {v6}, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->finishEndElement()V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    sget-object v7, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v6

    move-object v3, v6

    :try_start_2
    new-instance v6, Lorg/apache/xerces/xni/XNIException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v3

    invoke-direct {v7, v8}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v6

    move-object v4, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fTypeInfoProvider:Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;

    invoke-virtual {v6}, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->finishEndElement()V

    move-object v6, v4

    throw v6
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

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    move-object v3, v1

    invoke-interface {v2, v3}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getAttributePSVI(I)Lorg/apache/xerces/xs/AttributePSVI;
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fTypeInfoProvider:Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;

    move v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->getAttributePSVI(I)Lorg/apache/xerces/xs/AttributePSVI;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getAttributePSVIByName(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/xs/AttributePSVI;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fTypeInfoProvider:Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->getAttributePSVIByName(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/xs/AttributePSVI;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    move-object v0, v1

    return-object v0
.end method

.method public getDocumentSource()Lorg/apache/xerces/xni/parser/XMLDocumentSource;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-object v0, v1

    return-object v0
.end method

.method public getElementPSVI()Lorg/apache/xerces/xs/ElementPSVI;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fTypeInfoProvider:Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;

    invoke-virtual {v1}, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->getElementPSVI()Lorg/apache/xerces/xs/ElementPSVI;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v1}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v6}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v6

    const-string/jumbo v7, "FeatureNameNull"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lorg/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    const-string/jumbo v4, "http://apache.org/xml/features/internal/strings-interned"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fStringsInternalized:Z

    move v0, v4

    :goto_0
    return v0

    :cond_1
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    move v0, v4

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v2, v4

    move-object v4, v2

    invoke-virtual {v4}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    move-object v4, v2

    invoke-virtual {v4}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Lorg/xml/sax/SAXNotRecognizedException;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v6}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v6

    const-string/jumbo v7, "feature-not-recognized"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v3

    aput-object v11, v9, v10

    invoke-static {v6, v7, v8}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    new-instance v4, Lorg/xml/sax/SAXNotSupportedException;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v6}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v6

    const-string/jumbo v7, "feature-not-supported"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v3

    aput-object v11, v9, v10

    invoke-static {v6, v7, v8}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v6}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v6

    const-string/jumbo v7, "ProperyNameNull"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lorg/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v0, v4

    return-object v0

    :catch_0
    move-exception v4

    move-object v2, v4

    move-object v4, v2

    invoke-virtual {v4}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    move-object v4, v2

    invoke-virtual {v4}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Lorg/xml/sax/SAXNotRecognizedException;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v6}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v6

    const-string/jumbo v7, "property-not-recognized"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v3

    aput-object v11, v9, v10

    invoke-static {v6, v7, v8}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    new-instance v4, Lorg/xml/sax/SAXNotSupportedException;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v6}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v6

    const-string/jumbo v7, "property-not-supported"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v3

    aput-object v11, v9, v10

    invoke-static {v6, v7, v8}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getResourceResolver()Lorg/w3c/dom/ls/LSResourceResolver;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v1}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getResourceResolver()Lorg/w3c/dom/ls/LSResourceResolver;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getTypeInfoProvider()Ljavax/xml/validation/TypeInfoProvider;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fTypeInfoProvider:Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;

    move-object v0, v1

    return-object v0
.end method

.method public ignorableWhitespace(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
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

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v4, :cond_0

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    move-object v5, v1

    iget-object v5, v5, Lorg/apache/xerces/xni/XMLString;->ch:[C

    move-object v6, v1

    iget v6, v6, Lorg/apache/xerces/xni/XMLString;->offset:I

    move-object v7, v1

    iget v7, v7, Lorg/apache/xerces/xni/XMLString;->length:I

    invoke-interface {v4, v5, v6, v7}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

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

.method public ignorableWhitespace([CII)V
    .locals 10
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
    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fTempString:Lorg/apache/xerces/xni/XMLString;

    move-object v7, v1

    move v8, v2

    move v9, v3

    invoke-virtual {v6, v7, v8, v9}, Lorg/apache/xerces/xni/XMLString;->setValues([CII)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fTempString:Lorg/apache/xerces/xni/XMLString;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->ignorableWhitespace(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v6

    move-object v4, v6

    move-object v6, v4

    invoke-static {v6}, Lorg/apache/xerces/jaxp/validation/Util;->toSAXParseException(Lorg/apache/xerces/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object v6

    throw v6

    :catch_1
    move-exception v6

    move-object v5, v6

    move-object v6, v5

    invoke-static {v6}, Lorg/apache/xerces/jaxp/validation/Util;->toSAXException(Lorg/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object v6

    throw v6
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
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fUnparsedEntities:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fUnparsedEntities:Ljava/util/HashMap;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v5, :cond_0

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v7}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v5

    move-object v4, v5

    new-instance v5, Lorg/apache/xerces/xni/XNIException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v4

    invoke-direct {v6, v7}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v5
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fSAXLocatorWrapper:Lorg/apache/xerces/util/SAXLocatorWrapper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/SAXLocatorWrapper;->setLocator(Lorg/xml/sax/Locator;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    move-object v3, v1

    invoke-interface {v2, v3}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    :cond_0
    return-void
.end method

.method public setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V
    .locals 0

    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object v5, v1

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/NullPointerException;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v7}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v7

    const-string/jumbo v8, "FeatureNameNull"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lorg/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    const-string/jumbo v5, "http://apache.org/xml/features/internal/strings-interned"

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v0

    move v6, v2

    iput-boolean v6, v5, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fStringsInternalized:Z

    :goto_0
    return-void

    :cond_1
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    move-object v6, v1

    move v7, v2

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    move-object v3, v5

    move-object v5, v3

    invoke-virtual {v5}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    move-object v5, v3

    invoke-virtual {v5}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result v5

    if-nez v5, :cond_2

    new-instance v5, Lorg/xml/sax/SAXNotRecognizedException;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v7}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v7

    const-string/jumbo v8, "feature-not-recognized"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v4

    aput-object v12, v10, v11

    invoke-static {v7, v8, v9}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    new-instance v5, Lorg/xml/sax/SAXNotSupportedException;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v7}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v7

    const-string/jumbo v8, "feature-not-supported"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v4

    aput-object v12, v10, v11

    invoke-static {v7, v8, v9}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object v5, v1

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/NullPointerException;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v7}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v7

    const-string/jumbo v8, "ProperyNameNull"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lorg/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v5

    move-object v3, v5

    move-object v5, v3

    invoke-virtual {v5}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    move-object v5, v3

    invoke-virtual {v5}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Lorg/xml/sax/SAXNotRecognizedException;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v7}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v7

    const-string/jumbo v8, "property-not-recognized"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v4

    aput-object v12, v10, v11

    invoke-static {v7, v8, v9}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    new-instance v5, Lorg/xml/sax/SAXNotSupportedException;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v7}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v7

    const-string/jumbo v8, "property-not-supported"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v4

    aput-object v12, v10, v11

    invoke-static {v7, v8, v9}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public setResourceResolver(Lorg/w3c/dom/ls/LSResourceResolver;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->setResourceResolver(Lorg/w3c/dom/ls/LSResourceResolver;)V

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    move-object v3, v1

    invoke-interface {v2, v3}, Lorg/xml/sax/ContentHandler;->skippedEntity(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startCDATA(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public startDocument()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v3}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->reset()V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lorg/apache/xerces/impl/validation/ValidationManager;->setEntityState(Lorg/apache/xerces/impl/validation/EntityState;)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fTypeInfoProvider:Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;

    invoke-virtual {v3}, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->finishStartElement()V

    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fNeedPushNSContext:Z

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fUnparsedEntities:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fUnparsedEntities:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fUnparsedEntities:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fSAXLocatorWrapper:Lorg/apache/xerces/util/SAXLocatorWrapper;

    invoke-virtual {v3, v4}, Lorg/apache/xerces/impl/XMLErrorReporter;->setDocumentLocator(Lorg/apache/xerces/xni/XMLLocator;)V

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fSAXLocatorWrapper:Lorg/apache/xerces/util/SAXLocatorWrapper;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fSAXLocatorWrapper:Lorg/apache/xerces/util/SAXLocatorWrapper;

    invoke-virtual {v5}, Lorg/apache/xerces/util/SAXLocatorWrapper;->getEncoding()Ljava/lang/String;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->startDocument(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lorg/apache/xerces/xni/NamespaceContext;Lorg/apache/xerces/xni/Augmentations;)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v3

    move-object v1, v3

    move-object v3, v1

    invoke-static {v3}, Lorg/apache/xerces/jaxp/validation/Util;->toSAXParseException(Lorg/apache/xerces/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object v3

    throw v3

    :catch_1
    move-exception v3

    move-object v2, v3

    move-object v3, v2

    invoke-static {v3}, Lorg/apache/xerces/jaxp/validation/Util;->toSAXException(Lorg/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object v3

    throw v3
.end method

.method public startDocument(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lorg/apache/xerces/xni/NamespaceContext;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v6, :cond_0

    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v6}, Lorg/xml/sax/ContentHandler;->startDocument()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v6

    move-object v5, v6

    new-instance v6, Lorg/apache/xerces/xni/XNIException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v5

    invoke-direct {v7, v8}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v6
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object v7, v0

    iget-boolean v7, v7, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fNeedPushNSContext:Z

    if-eqz v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-interface {v7}, Lorg/apache/xerces/xni/NamespaceContext;->pushContext()V

    :cond_0
    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fNeedPushNSContext:Z

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    invoke-direct {v7, v8, v9, v10, v11}, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fillQName(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v4

    instance-of v7, v7, Lorg/xml/sax/ext/Attributes2;

    if-eqz v7, :cond_1

    move-object v7, v0

    move-object v8, v4

    check-cast v8, Lorg/xml/sax/ext/Attributes2;

    invoke-direct {v7, v8}, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fillXMLAttributes2(Lorg/xml/sax/ext/Attributes2;)V

    :goto_0
    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fElementQName:Lorg/apache/xerces/xni/QName;

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fAttributes:Lorg/apache/xerces/util/XMLAttributesImpl;

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :cond_1
    move-object v7, v0

    move-object v8, v4

    invoke-direct {v7, v8}, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fillXMLAttributes(Lorg/xml/sax/Attributes;)V

    goto :goto_0

    :catch_0
    move-exception v7

    move-object v5, v7

    move-object v7, v5

    invoke-static {v7}, Lorg/apache/xerces/jaxp/validation/Util;->toSAXParseException(Lorg/apache/xerces/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object v7

    throw v7

    :catch_1
    move-exception v7

    move-object v6, v7

    move-object v7, v6

    invoke-static {v7}, Lorg/apache/xerces/jaxp/validation/Util;->toSAXException(Lorg/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object v7

    throw v7
.end method

.method public startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v7, :cond_0

    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fTypeInfoProvider:Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;

    move-object v8, v3

    move-object v9, v2

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->beginStartElement(Lorg/apache/xerces/xni/Augmentations;Lorg/apache/xerces/xni/XMLAttributes;)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    move-object v8, v1

    iget-object v8, v8, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v8, :cond_1

    move-object v8, v1

    iget-object v8, v8, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    :goto_0
    move-object v9, v1

    iget-object v9, v9, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object v10, v1

    iget-object v10, v10, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fAttrAdapter:Lorg/apache/xerces/util/AttributesProxy;

    invoke-interface {v7, v8, v9, v10, v11}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fTypeInfoProvider:Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;

    invoke-virtual {v7}, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->finishStartElement()V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    sget-object v8, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v7

    move-object v4, v7

    :try_start_2
    new-instance v7, Lorg/apache/xerces/xni/XNIException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v4

    invoke-direct {v8, v9}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v7

    move-object v5, v7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fTypeInfoProvider:Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;

    invoke-virtual {v7}, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$XMLSchemaTypeInfoProvider;->finishStartElement()V

    move-object v7, v5

    throw v7
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

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    iget-boolean v5, v5, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fStringsInternalized:Z

    if-nez v5, :cond_4

    move-object v5, v1

    if-eqz v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v6, v1

    invoke-virtual {v5, v6}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_0
    move-object v3, v5

    move-object v5, v2

    if-eqz v5, :cond_3

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v6, v2

    invoke-virtual {v5, v6}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    move-object v4, v5

    :goto_2
    move-object v5, v0

    iget-boolean v5, v5, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fNeedPushNSContext:Z

    if-eqz v5, :cond_0

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fNeedPushNSContext:Z

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-interface {v5}, Lorg/apache/xerces/xni/NamespaceContext;->pushContext()V

    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    move-object v6, v3

    move-object v7, v4

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fContentHandler:Lorg/xml/sax/ContentHandler;

    move-object v6, v1

    move-object v7, v2

    invoke-interface {v5, v6, v7}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    sget-object v5, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    move-object v5, v1

    if-eqz v5, :cond_5

    move-object v5, v1

    :goto_3
    move-object v3, v5

    move-object v5, v2

    if-eqz v5, :cond_6

    move-object v5, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6

    move-object v5, v2

    :goto_4
    move-object v4, v5

    goto :goto_2

    :cond_5
    sget-object v5, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    goto :goto_4
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

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
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

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fUnparsedEntities:Ljava/util/HashMap;

    if-nez v5, :cond_0

    move-object v5, v0

    new-instance v6, Ljava/util/HashMap;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v5, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fUnparsedEntities:Ljava/util/HashMap;

    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fUnparsedEntities:Ljava/util/HashMap;

    move-object v6, v1

    move-object v7, v1

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    return-void
.end method

.method public validate(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v14, v3

    instance-of v14, v14, Ljavax/xml/transform/sax/SAXResult;

    if-nez v14, :cond_0

    move-object v14, v3

    if-nez v14, :cond_7

    :cond_0
    move-object v14, v2

    check-cast v14, Ljavax/xml/transform/sax/SAXSource;

    move-object v4, v14

    move-object v14, v3

    check-cast v14, Ljavax/xml/transform/sax/SAXResult;

    move-object v5, v14

    const/4 v14, 0x0

    move-object v6, v14

    move-object v14, v3

    if-eqz v14, :cond_2

    move-object v14, v5

    invoke-virtual {v14}, Ljavax/xml/transform/sax/SAXResult;->getHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v14

    move-object v7, v14

    move-object v14, v5

    invoke-virtual {v14}, Ljavax/xml/transform/sax/SAXResult;->getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;

    move-result-object v14

    move-object v6, v14

    move-object v14, v6

    if-nez v14, :cond_1

    move-object v14, v7

    instance-of v14, v14, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v14, :cond_1

    move-object v14, v7

    check-cast v14, Lorg/xml/sax/ext/LexicalHandler;

    move-object v6, v14

    :cond_1
    move-object v14, v1

    move-object v15, v7

    invoke-virtual {v14, v15}, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    :cond_2
    const/4 v14, 0x0

    move-object v7, v14

    move-object v14, v4

    :try_start_0
    invoke-virtual {v14}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v14

    move-object v7, v14

    move-object v14, v7

    if-nez v14, :cond_3

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v14

    move-object v8, v14

    move-object v14, v8

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v14, v8

    :try_start_1
    invoke-virtual {v14}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v14

    invoke-virtual {v14}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v14

    move-object v7, v14

    move-object v14, v7

    instance-of v14, v14, Lorg/apache/xerces/parsers/SAXParser;

    if-eqz v14, :cond_3

    move-object v14, v1

    iget-object v14, v14, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v15, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {v14, v15}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v14

    move-object v9, v14

    move-object v14, v9

    if-eqz v14, :cond_3

    move-object v14, v7

    :try_start_2
    const-string/jumbo v15, "http://apache.org/xml/properties/security-manager"

    move-object/from16 v16, v9

    invoke-interface/range {v14 .. v16}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    :goto_0
    move-object v14, v1

    move-object v15, v7

    :try_start_3
    const-string/jumbo v16, "http://xml.org/sax/features/string-interning"

    invoke-interface/range {v15 .. v16}, Lorg/xml/sax/XMLReader;->getFeature(Ljava/lang/String;)Z

    move-result v15

    iput-boolean v15, v14, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fStringsInternalized:Z
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    move-object v14, v1

    :try_start_4
    iget-object v14, v14, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v14}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object v14

    move-object v8, v14

    move-object v14, v7

    move-object v15, v8

    if-eqz v15, :cond_6

    move-object v15, v8

    :goto_2
    invoke-interface {v14, v15}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    move-object v14, v7

    move-object v15, v1

    iget-object v15, v15, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fResolutionForwarder:Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$ResolutionForwarder;

    invoke-interface {v14, v15}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    move-object v14, v1

    iget-object v14, v14, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fResolutionForwarder:Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$ResolutionForwarder;

    move-object v15, v1

    iget-object v15, v15, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v15}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getResourceResolver()Lorg/w3c/dom/ls/LSResourceResolver;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$ResolutionForwarder;->setEntityResolver(Lorg/w3c/dom/ls/LSResourceResolver;)V

    move-object v14, v7

    move-object v15, v1

    invoke-interface {v14, v15}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    move-object v14, v7

    move-object v15, v1

    invoke-interface {v14, v15}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v14, v7

    :try_start_5
    const-string/jumbo v15, "http://xml.org/sax/properties/lexical-handler"

    move-object/from16 v16, v6

    invoke-interface/range {v14 .. v16}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_3
    move-object v14, v4

    :try_start_6
    invoke-virtual {v14}, Ljavax/xml/transform/sax/SAXSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object v14

    move-object v9, v14

    move-object v14, v7

    move-object v15, v9

    invoke-interface {v14, v15}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v14, v1

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    move-object v14, v7

    if-eqz v14, :cond_4

    move-object v14, v7

    const/4 v15, 0x0

    :try_start_7
    invoke-interface {v14, v15}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    move-object v14, v7

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    move-object v14, v7

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    move-object v14, v7

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    move-object v14, v1

    iget-object v14, v14, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fResolutionForwarder:Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$ResolutionForwarder;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$ResolutionForwarder;->setEntityResolver(Lorg/w3c/dom/ls/LSResourceResolver;)V

    move-object v14, v7

    const-string/jumbo v15, "http://xml.org/sax/properties/lexical-handler"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :cond_4
    :goto_4
    return-void

    :catch_0
    move-exception v14

    move-object v10, v14

    goto :goto_0

    :catch_1
    move-exception v14

    move-object v9, v14

    :try_start_8
    new-instance v14, Ljavax/xml/parsers/FactoryConfigurationError;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v9

    invoke-direct/range {v15 .. v16}, Ljavax/xml/parsers/FactoryConfigurationError;-><init>(Ljava/lang/Exception;)V

    throw v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_0
    move-exception v14

    move-object v11, v14

    move-object v14, v1

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    move-object v14, v7

    if-eqz v14, :cond_5

    move-object v14, v7

    const/4 v15, 0x0

    :try_start_9
    invoke-interface {v14, v15}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    move-object v14, v7

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    move-object v14, v7

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    move-object v14, v7

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    move-object v14, v1

    iget-object v14, v14, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fResolutionForwarder:Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$ResolutionForwarder;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl$ResolutionForwarder;->setEntityResolver(Lorg/w3c/dom/ls/LSResourceResolver;)V

    move-object v14, v7

    const-string/jumbo v15, "http://xml.org/sax/properties/lexical-handler"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :cond_5
    :goto_5
    move-object v14, v11

    throw v14

    :catch_2
    move-exception v14

    move-object v8, v14

    move-object v14, v1

    const/4 v15, 0x0

    :try_start_a
    iput-boolean v15, v14, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fStringsInternalized:Z

    goto/16 :goto_1

    :cond_6
    invoke-static {}, Lorg/apache/xerces/jaxp/validation/DraconianErrorHandler;->getInstance()Lorg/apache/xerces/jaxp/validation/DraconianErrorHandler;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v15

    goto/16 :goto_2

    :catch_3
    move-exception v14

    move-object v9, v14

    goto/16 :goto_3

    :cond_7
    new-instance v14, Ljava/lang/IllegalArgumentException;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v16

    const-string/jumbo v17, "SourceResultMismatch"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    const/16 v20, 0x0

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    const/16 v20, 0x1

    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v16 .. v18}, Lorg/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    :catch_4
    move-exception v14

    move-object v13, v14

    goto :goto_5

    :catch_5
    move-exception v14

    move-object v13, v14

    goto/16 :goto_4
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
