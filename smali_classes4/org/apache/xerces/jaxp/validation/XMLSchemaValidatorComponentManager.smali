.class final Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;
.super Lorg/apache/xerces/util/ParserConfigurationSettings;

# interfaces
.implements Lorg/apache/xerces/xni/parser/XMLComponentManager;


# static fields
.field private static final DISALLOW_DOCTYPE_DECL_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/disallow-doctype-decl"

.field private static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field private static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field private static final ERROR_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-handler"

.field private static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field private static final IDENTITY_CONSTRAINT_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/identity-constraint-checking"

.field private static final ID_IDREF_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/id-idref-checking"

.field private static final IGNORE_XSI_TYPE:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/ignore-xsi-type-until-elemdecl"

.field private static final LOCALE:Ljava/lang/String; = "http://apache.org/xml/properties/locale"

.field private static final NAMESPACE_CONTEXT:Ljava/lang/String; = "http://apache.org/xml/properties/internal/namespace-context"

.field private static final NORMALIZE_DATA:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/normalized-value"

.field private static final SCHEMA_AUGMENT_PSVI:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/augment-psvi"

.field private static final SCHEMA_ELEMENT_DEFAULT:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/element-default"

.field private static final SCHEMA_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"

.field private static final SCHEMA_VALIDATOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/schema"

.field private static final SECURITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"

.field private static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field private static final UNPARSED_ENTITY_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/unparsed-entity-checking"

.field private static final USE_GRAMMAR_POOL_ONLY:Ljava/lang/String; = "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

.field private static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field private static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"

.field private static final XMLGRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"


# instance fields
.field private final fComponents:Ljava/util/HashMap;

.field private fConfigUpdated:Z

.field private final fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

.field private fErrorHandler:Lorg/xml/sax/ErrorHandler;

.field private final fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

.field private final fInitFeatures:Ljava/util/HashMap;

.field private final fInitProperties:Ljava/util/HashMap;

.field private final fInitSecurityManager:Lorg/apache/xerces/util/SecurityManager;

.field private fLocale:Ljava/util/Locale;

.field private final fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

.field private fResourceResolver:Lorg/w3c/dom/ls/LSResourceResolver;

.field private final fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

.field private fUseGrammarPoolOnly:Z

.field private final fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/jaxp/validation/XSGrammarPoolContainer;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    invoke-direct {v4}, Lorg/apache/xerces/util/ParserConfigurationSettings;-><init>()V

    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fConfigUpdated:Z

    move-object v4, v0

    new-instance v5, Ljava/util/HashMap;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fComponents:Ljava/util/HashMap;

    move-object v4, v0

    new-instance v5, Ljava/util/HashMap;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fInitFeatures:Ljava/util/HashMap;

    move-object v4, v0

    new-instance v5, Ljava/util/HashMap;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fInitProperties:Ljava/util/HashMap;

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fResourceResolver:Lorg/w3c/dom/ls/LSResourceResolver;

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fLocale:Ljava/util/Locale;

    move-object v4, v0

    new-instance v5, Lorg/apache/xerces/impl/XMLEntityManager;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Lorg/apache/xerces/impl/XMLEntityManager;-><init>()V

    iput-object v5, v4, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fComponents:Ljava/util/HashMap;

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/entity-manager"

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v4, v0

    new-instance v5, Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Lorg/apache/xerces/impl/XMLErrorReporter;-><init>()V

    iput-object v5, v4, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fComponents:Ljava/util/HashMap;

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/error-reporter"

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v4, v0

    new-instance v5, Lorg/apache/xerces/util/NamespaceSupport;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Lorg/apache/xerces/util/NamespaceSupport;-><init>()V

    iput-object v5, v4, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fComponents:Ljava/util/HashMap;

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/namespace-context"

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v4, v0

    new-instance v5, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;-><init>()V

    iput-object v5, v4, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fComponents:Ljava/util/HashMap;

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/validator/schema"

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v4, v0

    new-instance v5, Lorg/apache/xerces/impl/validation/ValidationManager;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Lorg/apache/xerces/impl/validation/ValidationManager;-><init>()V

    iput-object v5, v4, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fComponents:Ljava/util/HashMap;

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/validation-manager"

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fComponents:Ljava/util/HashMap;

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/entity-resolver"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fComponents:Ljava/util/HashMap;

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/error-handler"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fComponents:Ljava/util/HashMap;

    const-string/jumbo v5, "http://apache.org/xml/properties/security-manager"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fComponents:Ljava/util/HashMap;

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/symbol-table"

    new-instance v6, Lorg/apache/xerces/util/SymbolTable;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Lorg/apache/xerces/util/SymbolTable;-><init>()V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fComponents:Ljava/util/HashMap;

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/grammar-pool"

    move-object v6, v1

    invoke-interface {v6}, Lorg/apache/xerces/jaxp/validation/XSGrammarPoolContainer;->getGrammarPool()Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Lorg/apache/xerces/jaxp/validation/XSGrammarPoolContainer;->isFullyComposed()Z

    move-result v5

    iput-boolean v5, v4, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fUseGrammarPoolOnly:Z

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v5, "http://www.w3.org/TR/xml-schema-1"

    new-instance v6, Lorg/apache/xerces/impl/xs/XSMessageFormatter;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Lorg/apache/xerces/impl/xs/XSMessageFormatter;-><init>()V

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lorg/apache/xerces/util/MessageFormatter;)V

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    const-string/jumbo v7, "http://apache.org/xml/features/disallow-doctype-decl"

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    const-string/jumbo v7, "http://apache.org/xml/features/validation/schema/normalized-value"

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x2

    const-string/jumbo v7, "http://apache.org/xml/features/validation/schema/element-default"

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x3

    const-string/jumbo v7, "http://apache.org/xml/features/validation/schema/augment-psvi"

    aput-object v7, v5, v6

    move-object v2, v4

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->addRecognizedFeatures([Ljava/lang/String;)V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v5, "http://apache.org/xml/features/disallow-doctype-decl"

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v5, "http://apache.org/xml/features/validation/schema/normalized-value"

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v5, "http://apache.org/xml/features/validation/schema/element-default"

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v5, "http://apache.org/xml/features/validation/schema/augment-psvi"

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->addRecognizedParamsAndSetDefaults(Lorg/apache/xerces/xni/parser/XMLComponent;Lorg/apache/xerces/jaxp/validation/XSGrammarPoolContainer;)V

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->addRecognizedParamsAndSetDefaults(Lorg/apache/xerces/xni/parser/XMLComponent;Lorg/apache/xerces/jaxp/validation/XSGrammarPoolContainer;)V

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-object v6, v1

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->addRecognizedParamsAndSetDefaults(Lorg/apache/xerces/xni/parser/XMLComponent;Lorg/apache/xerces/jaxp/validation/XSGrammarPoolContainer;)V

    move-object v4, v1

    const-string/jumbo v5, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-interface {v4, v5}, Lorg/apache/xerces/jaxp/validation/XSGrammarPoolContainer;->getFeature(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    move-object v3, v4

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    new-instance v5, Lorg/apache/xerces/util/SecurityManager;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Lorg/apache/xerces/util/SecurityManager;-><init>()V

    iput-object v5, v4, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fInitSecurityManager:Lorg/apache/xerces/util/SecurityManager;

    :goto_0
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fComponents:Ljava/util/HashMap;

    const-string/jumbo v5, "http://apache.org/xml/properties/security-manager"

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fInitSecurityManager:Lorg/apache/xerces/util/SecurityManager;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v5, "http://apache.org/xml/features/validation/schema/ignore-xsi-type-until-elemdecl"

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v5, "http://apache.org/xml/features/validation/id-idref-checking"

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v5, "http://apache.org/xml/features/validation/identity-constraint-checking"

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v5, "http://apache.org/xml/features/validation/unparsed-entity-checking"

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-void

    :cond_0
    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fInitSecurityManager:Lorg/apache/xerces/util/SecurityManager;

    goto :goto_0
.end method

.method private setFeatureDefaults(Lorg/apache/xerces/xni/parser/XMLComponent;[Ljava/lang/String;Lorg/apache/xerces/jaxp/validation/XSGrammarPoolContainer;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, v2

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    move v4, v7

    :goto_0
    move v7, v4

    move-object v8, v2

    array-length v8, v8

    if-lt v7, v8, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object v7, v2

    move v8, v4

    aget-object v7, v7, v8

    move-object v5, v7

    move-object v7, v3

    move-object v8, v5

    invoke-interface {v7, v8}, Lorg/apache/xerces/jaxp/validation/XSGrammarPoolContainer;->getFeature(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    move-object v6, v7

    move-object v7, v6

    if-nez v7, :cond_2

    move-object v7, v1

    move-object v8, v5

    invoke-interface {v7, v8}, Lorg/apache/xerces/xni/parser/XMLComponent;->getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    move-object v6, v7

    :cond_2
    move-object v7, v6

    if-eqz v7, :cond_3

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fFeatures:Ljava/util/HashMap;

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fFeatures:Ljava/util/HashMap;

    move-object v8, v5

    move-object v9, v6

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fConfigUpdated:Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private setPropertyDefaults(Lorg/apache/xerces/xni/parser/XMLComponent;[Ljava/lang/String;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v2

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    move v3, v6

    :goto_0
    move v6, v3

    move-object v7, v2

    array-length v7, v7

    if-lt v6, v7, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object v6, v2

    move v7, v3

    aget-object v6, v6, v7

    move-object v4, v6

    move-object v6, v1

    move-object v7, v4

    invoke-interface {v6, v7}, Lorg/apache/xerces/xni/parser/XMLComponent;->getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    move-object v6, v5

    if-eqz v6, :cond_2

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fProperties:Ljava/util/HashMap;

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fProperties:Ljava/util/HashMap;

    move-object v7, v4

    move-object v8, v5

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fConfigUpdated:Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addRecognizedParamsAndSetDefaults(Lorg/apache/xerces/xni/parser/XMLComponent;Lorg/apache/xerces/jaxp/validation/XSGrammarPoolContainer;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v1

    invoke-interface {v5}, Lorg/apache/xerces/xni/parser/XMLComponent;->getRecognizedFeatures()[Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->addRecognizedFeatures([Ljava/lang/String;)V

    move-object v5, v1

    invoke-interface {v5}, Lorg/apache/xerces/xni/parser/XMLComponent;->getRecognizedProperties()[Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->addRecognizedProperties([Ljava/lang/String;)V

    move-object v5, v0

    move-object v6, v1

    move-object v7, v3

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->setFeatureDefaults(Lorg/apache/xerces/xni/parser/XMLComponent;[Ljava/lang/String;Lorg/apache/xerces/jaxp/validation/XSGrammarPoolContainer;)V

    move-object v5, v0

    move-object v6, v1

    move-object v7, v4

    invoke-direct {v5, v6, v7}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->setPropertyDefaults(Lorg/apache/xerces/xni/parser/XMLComponent;[Ljava/lang/String;)V

    return-void
.end method

.method getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    move-object v0, v1

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "http://apache.org/xml/features/internal/parser-settings"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fConfigUpdated:Z

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const-string/jumbo v2, "http://xml.org/sax/features/validation"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "http://apache.org/xml/features/validation/schema"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v0

    iget-boolean v2, v2, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fUseGrammarPoolOnly:Z

    move v0, v2

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "http://javax.xml.XMLConstants/feature/secure-processing"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v2, v0

    const-string/jumbo v3, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {v2, v3}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :goto_1
    move v0, v2

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lorg/apache/xerces/util/ParserConfigurationSettings;->getFeature(Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method getLocale()Ljava/util/Locale;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fLocale:Ljava/util/Locale;

    move-object v0, v1

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v3, "http://apache.org/xml/properties/locale"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fComponents:Ljava/util/HashMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fComponents:Ljava/util/HashMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    :cond_2
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lorg/apache/xerces/util/ParserConfigurationSettings;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method getResourceResolver()Lorg/w3c/dom/ls/LSResourceResolver;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fResourceResolver:Lorg/w3c/dom/ls/LSResourceResolver;

    move-object v0, v1

    return-object v0
.end method

.method public reset()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-interface {v1}, Lorg/apache/xerces/xni/NamespaceContext;->reset()V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/validation/ValidationManager;->reset()V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/XMLEntityManager;->reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/XMLErrorReporter;->reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fConfigUpdated:Z

    return-void
.end method

.method restoreInitialState()V
    .locals 8

    move-object v0, p0

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fConfigUpdated:Z

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fComponents:Ljava/util/HashMap;

    const-string/jumbo v6, "http://apache.org/xml/properties/internal/entity-resolver"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fComponents:Ljava/util/HashMap;

    const-string/jumbo v6, "http://apache.org/xml/properties/internal/error-handler"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fComponents:Ljava/util/HashMap;

    const-string/jumbo v6, "http://apache.org/xml/properties/security-manager"

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fInitSecurityManager:Lorg/apache/xerces/util/SecurityManager;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->setLocale(Ljava/util/Locale;)V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fComponents:Ljava/util/HashMap;

    const-string/jumbo v6, "http://apache.org/xml/properties/locale"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fInitFeatures:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fInitFeatures:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v1, v5

    :goto_0
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fInitFeatures:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fInitProperties:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fInitProperties:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v1, v5

    :goto_1
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fInitProperties:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    :cond_1
    return-void

    :cond_2
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    move-object v2, v5

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v3, v5

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move v4, v5

    move-object v5, v0

    move-object v6, v3

    move v7, v4

    invoke-super {v5, v6, v7}, Lorg/apache/xerces/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    move-object v2, v5

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v3, v5

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    move-object v5, v0

    move-object v6, v3

    move-object v7, v4

    invoke-super {v5, v6, v7}, Lorg/apache/xerces/util/ParserConfigurationSettings;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    move-object v2, v0

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/error-handler"

    move-object v4, v1

    if-eqz v4, :cond_0

    new-instance v4, Lorg/apache/xerces/util/ErrorHandlerWrapper;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lorg/apache/xerces/util/ErrorHandlerWrapper;-><init>(Lorg/xml/sax/ErrorHandler;)V

    :goto_0
    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v4, Lorg/apache/xerces/util/ErrorHandlerWrapper;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-static {}, Lorg/apache/xerces/jaxp/validation/DraconianErrorHandler;->getInstance()Lorg/apache/xerces/jaxp/validation/DraconianErrorHandler;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/xerces/util/ErrorHandlerWrapper;-><init>(Lorg/xml/sax/ErrorHandler;)V

    goto :goto_0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const-string/jumbo v4, "http://apache.org/xml/features/internal/parser-settings"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lorg/apache/xerces/xni/parser/XMLConfigurationException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v4

    :cond_0
    move v4, v2

    if-nez v4, :cond_2

    const-string/jumbo v4, "http://xml.org/sax/features/validation"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "http://apache.org/xml/features/validation/schema"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    new-instance v4, Lorg/apache/xerces/xni/parser/XMLConfigurationException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v4

    :cond_2
    const-string/jumbo v4, "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v2

    move-object v5, v0

    iget-boolean v5, v5, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fUseGrammarPoolOnly:Z

    if-eq v4, v5, :cond_3

    new-instance v4, Lorg/apache/xerces/xni/parser/XMLConfigurationException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v4

    :cond_3
    const-string/jumbo v4, "http://javax.xml.XMLConstants/feature/secure-processing"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v4, v0

    const-string/jumbo v5, "http://apache.org/xml/properties/security-manager"

    move v6, v2

    if-eqz v6, :cond_4

    new-instance v6, Lorg/apache/xerces/util/SecurityManager;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Lorg/apache/xerces/util/SecurityManager;-><init>()V

    :goto_0
    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_4
    const/4 v6, 0x0

    goto :goto_0

    :cond_5
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fConfigUpdated:Z

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    move-object v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/impl/XMLEntityManager;->setFeature(Ljava/lang/String;Z)V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/impl/XMLErrorReporter;->setFeature(Ljava/lang/String;Z)V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-object v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->setFeature(Ljava/lang/String;Z)V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fInitFeatures:Ljava/util/HashMap;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Lorg/apache/xerces/util/ParserConfigurationSettings;->getFeature(Ljava/lang/String;)Z

    move-result v4

    move v3, v4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fInitFeatures:Ljava/util/HashMap;

    move-object v5, v1

    move v6, v3

    if-eqz v6, :cond_7

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_2
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :cond_6
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-super {v4, v5, v6}, Lorg/apache/xerces/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_7
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2
.end method

.method setLocale(Ljava/util/Locale;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fLocale:Ljava/util/Locale;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/XMLErrorReporter;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/entity-manager"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/error-reporter"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/namespace-context"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/validator/schema"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/symbol-table"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/validation-manager"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/grammar-pool"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    new-instance v3, Lorg/apache/xerces/xni/parser/XMLConfigurationException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x1

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v3

    :cond_1
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fConfigUpdated:Z

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/impl/XMLEntityManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/impl/XMLErrorReporter;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/entity-resolver"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/error-handler"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "http://apache.org/xml/properties/security-manager"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fComponents:Ljava/util/HashMap;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :goto_0
    return-void

    :cond_3
    const-string/jumbo v3, "http://apache.org/xml/properties/locale"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v3, v0

    move-object v4, v2

    check-cast v4, Ljava/util/Locale;

    invoke-virtual {v3, v4}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->setLocale(Ljava/util/Locale;)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fComponents:Ljava/util/HashMap;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :cond_4
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fInitProperties:Ljava/util/HashMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fInitProperties:Ljava/util/HashMap;

    move-object v4, v1

    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Lorg/apache/xerces/util/ParserConfigurationSettings;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :cond_5
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lorg/apache/xerces/util/ParserConfigurationSettings;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method setResourceResolver(Lorg/w3c/dom/ls/LSResourceResolver;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->fResourceResolver:Lorg/w3c/dom/ls/LSResourceResolver;

    move-object v2, v0

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/entity-resolver"

    new-instance v4, Lorg/apache/xerces/util/DOMEntityResolverWrapper;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lorg/apache/xerces/util/DOMEntityResolverWrapper;-><init>(Lorg/w3c/dom/ls/LSResourceResolver;)V

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
