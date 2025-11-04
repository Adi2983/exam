.class public Lorg/apache/xerces/parsers/DTDConfiguration;
.super Lorg/apache/xerces/parsers/BasicParserConfiguration;

# interfaces
.implements Lorg/apache/xerces/xni/parser/XMLPullParserConfiguration;


# static fields
.field protected static final ALLOW_JAVA_ENCODINGS:Ljava/lang/String; = "http://apache.org/xml/features/allow-java-encodings"

.field protected static final CONTINUE_AFTER_FATAL_ERROR:Ljava/lang/String; = "http://apache.org/xml/features/continue-after-fatal-error"

.field protected static final DATATYPE_VALIDATOR_FACTORY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/datatype-validator-factory"

.field protected static final DOCUMENT_SCANNER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/document-scanner"

.field protected static final DTD_PROCESSOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/dtd-processor"

.field protected static final DTD_SCANNER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/dtd-scanner"

.field protected static final DTD_VALIDATOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/dtd"

.field protected static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final JAXP_SCHEMA_LANGUAGE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

.field protected static final JAXP_SCHEMA_SOURCE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaSource"

.field protected static final LOAD_EXTERNAL_DTD:Ljava/lang/String; = "http://apache.org/xml/features/nonvalidating/load-external-dtd"

.field protected static final LOCALE:Ljava/lang/String; = "http://apache.org/xml/properties/locale"

.field protected static final NAMESPACE_BINDER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/namespace-binder"

.field protected static final NOTIFY_BUILTIN_REFS:Ljava/lang/String; = "http://apache.org/xml/features/scanner/notify-builtin-refs"

.field protected static final NOTIFY_CHAR_REFS:Ljava/lang/String; = "http://apache.org/xml/features/scanner/notify-char-refs"

.field protected static final PRINT_EXCEPTION_STACK_TRACE:Z = false

.field protected static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"

.field protected static final WARN_ON_DUPLICATE_ATTDEF:Ljava/lang/String; = "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

.field protected static final WARN_ON_DUPLICATE_ENTITYDEF:Ljava/lang/String; = "http://apache.org/xml/features/warn-on-duplicate-entitydef"

.field protected static final WARN_ON_UNDECLARED_ELEMDEF:Ljava/lang/String; = "http://apache.org/xml/features/validation/warn-on-undeclared-elemdef"

.field protected static final XMLGRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"


# instance fields
.field protected fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

.field protected fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

.field protected fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

.field protected fDatatypeValidatorFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

.field protected fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

.field protected fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

.field protected fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

.field protected fInputSource:Lorg/apache/xerces/xni/parser/XMLInputSource;

.field protected fLocator:Lorg/apache/xerces/xni/XMLLocator;

.field protected fNamespaceBinder:Lorg/apache/xerces/impl/XMLNamespaceBinder;

.field protected fParseInProgress:Z

.field protected fScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

.field protected fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;


# direct methods
.method public constructor <init>()V
    .locals 5

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/xerces/parsers/DTDConfiguration;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/xerces/parsers/DTDConfiguration;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/xerces/parsers/DTDConfiguration;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, v0

    move-object v8, v1

    move-object v9, v3

    invoke-direct {v7, v8, v9}, Lorg/apache/xerces/parsers/BasicParserConfiguration;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Lorg/apache/xerces/parsers/DTDConfiguration;->fParseInProgress:Z

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    const-string/jumbo v10, "http://apache.org/xml/features/continue-after-fatal-error"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    const-string/jumbo v10, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    aput-object v10, v8, v9

    move-object v4, v7

    move-object v7, v0

    move-object v8, v4

    invoke-virtual {v7, v8}, Lorg/apache/xerces/parsers/DTDConfiguration;->addRecognizedFeatures([Ljava/lang/String;)V

    move-object v7, v0

    const-string/jumbo v8, "http://apache.org/xml/features/continue-after-fatal-error"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/parsers/DTDConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object v7, v0

    const-string/jumbo v8, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/parsers/DTDConfiguration;->setFeature(Ljava/lang/String;Z)V

    const/16 v7, 0xd

    new-array v7, v7, [Ljava/lang/String;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    const-string/jumbo v10, "http://apache.org/xml/properties/internal/error-reporter"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    const-string/jumbo v10, "http://apache.org/xml/properties/internal/entity-manager"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x2

    const-string/jumbo v10, "http://apache.org/xml/properties/internal/document-scanner"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x3

    const-string/jumbo v10, "http://apache.org/xml/properties/internal/dtd-scanner"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x4

    const-string/jumbo v10, "http://apache.org/xml/properties/internal/dtd-processor"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x5

    const-string/jumbo v10, "http://apache.org/xml/properties/internal/validator/dtd"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x6

    const-string/jumbo v10, "http://apache.org/xml/properties/internal/namespace-binder"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x7

    const-string/jumbo v10, "http://apache.org/xml/properties/internal/grammar-pool"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/16 v9, 0x8

    const-string/jumbo v10, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/16 v9, 0x9

    const-string/jumbo v10, "http://apache.org/xml/properties/internal/validation-manager"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/16 v9, 0xa

    const-string/jumbo v10, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/16 v9, 0xb

    const-string/jumbo v10, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/16 v9, 0xc

    const-string/jumbo v10, "http://apache.org/xml/properties/locale"

    aput-object v10, v8, v9

    move-object v5, v7

    move-object v7, v0

    move-object v8, v5

    invoke-virtual {v7, v8}, Lorg/apache/xerces/parsers/DTDConfiguration;->addRecognizedProperties([Ljava/lang/String;)V

    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Lorg/apache/xerces/parsers/DTDConfiguration;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/DTDConfiguration;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    if-eqz v7, :cond_0

    move-object v7, v0

    const-string/jumbo v8, "http://apache.org/xml/properties/internal/grammar-pool"

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/DTDConfiguration;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/parsers/DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/parsers/DTDConfiguration;->createEntityManager()Lorg/apache/xerces/impl/XMLEntityManager;

    move-result-object v8

    iput-object v8, v7, Lorg/apache/xerces/parsers/DTDConfiguration;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    move-object v7, v0

    const-string/jumbo v8, "http://apache.org/xml/properties/internal/entity-manager"

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/DTDConfiguration;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/parsers/DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/parsers/DTDConfiguration;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v7, v8}, Lorg/apache/xerces/parsers/DTDConfiguration;->addComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/parsers/DTDConfiguration;->createErrorReporter()Lorg/apache/xerces/impl/XMLErrorReporter;

    move-result-object v8

    iput-object v8, v7, Lorg/apache/xerces/parsers/DTDConfiguration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/DTDConfiguration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/parsers/DTDConfiguration;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v8}, Lorg/apache/xerces/impl/XMLEntityManager;->getEntityScanner()Lorg/apache/xerces/impl/XMLEntityScanner;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/xerces/impl/XMLErrorReporter;->setDocumentLocator(Lorg/apache/xerces/xni/XMLLocator;)V

    move-object v7, v0

    const-string/jumbo v8, "http://apache.org/xml/properties/internal/error-reporter"

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/DTDConfiguration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/parsers/DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/parsers/DTDConfiguration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v7, v8}, Lorg/apache/xerces/parsers/DTDConfiguration;->addComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/parsers/DTDConfiguration;->createDocumentScanner()Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    move-result-object v8

    iput-object v8, v7, Lorg/apache/xerces/parsers/DTDConfiguration;->fScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    move-object v7, v0

    const-string/jumbo v8, "http://apache.org/xml/properties/internal/document-scanner"

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/DTDConfiguration;->fScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/parsers/DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/DTDConfiguration;->fScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    instance-of v7, v7, Lorg/apache/xerces/xni/parser/XMLComponent;

    if-eqz v7, :cond_1

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/parsers/DTDConfiguration;->fScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    check-cast v8, Lorg/apache/xerces/xni/parser/XMLComponent;

    invoke-virtual {v7, v8}, Lorg/apache/xerces/parsers/DTDConfiguration;->addComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    :cond_1
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/parsers/DTDConfiguration;->createDTDScanner()Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    move-result-object v8

    iput-object v8, v7, Lorg/apache/xerces/parsers/DTDConfiguration;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/DTDConfiguration;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    if-eqz v7, :cond_2

    move-object v7, v0

    const-string/jumbo v8, "http://apache.org/xml/properties/internal/dtd-scanner"

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/DTDConfiguration;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/parsers/DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/DTDConfiguration;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    instance-of v7, v7, Lorg/apache/xerces/xni/parser/XMLComponent;

    if-eqz v7, :cond_2

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/parsers/DTDConfiguration;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    check-cast v8, Lorg/apache/xerces/xni/parser/XMLComponent;

    invoke-virtual {v7, v8}, Lorg/apache/xerces/parsers/DTDConfiguration;->addComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    :cond_2
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/parsers/DTDConfiguration;->createDTDProcessor()Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    move-result-object v8

    iput-object v8, v7, Lorg/apache/xerces/parsers/DTDConfiguration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/DTDConfiguration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    if-eqz v7, :cond_3

    move-object v7, v0

    const-string/jumbo v8, "http://apache.org/xml/properties/internal/dtd-processor"

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/DTDConfiguration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/parsers/DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/parsers/DTDConfiguration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-virtual {v7, v8}, Lorg/apache/xerces/parsers/DTDConfiguration;->addComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    :cond_3
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/parsers/DTDConfiguration;->createDTDValidator()Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    move-result-object v8

    iput-object v8, v7, Lorg/apache/xerces/parsers/DTDConfiguration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/DTDConfiguration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    if-eqz v7, :cond_4

    move-object v7, v0

    const-string/jumbo v8, "http://apache.org/xml/properties/internal/validator/dtd"

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/DTDConfiguration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/parsers/DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/parsers/DTDConfiguration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {v7, v8}, Lorg/apache/xerces/parsers/DTDConfiguration;->addComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    :cond_4
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/parsers/DTDConfiguration;->createNamespaceBinder()Lorg/apache/xerces/impl/XMLNamespaceBinder;

    move-result-object v8

    iput-object v8, v7, Lorg/apache/xerces/parsers/DTDConfiguration;->fNamespaceBinder:Lorg/apache/xerces/impl/XMLNamespaceBinder;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/DTDConfiguration;->fNamespaceBinder:Lorg/apache/xerces/impl/XMLNamespaceBinder;

    if-eqz v7, :cond_5

    move-object v7, v0

    const-string/jumbo v8, "http://apache.org/xml/properties/internal/namespace-binder"

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/DTDConfiguration;->fNamespaceBinder:Lorg/apache/xerces/impl/XMLNamespaceBinder;

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/parsers/DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/parsers/DTDConfiguration;->fNamespaceBinder:Lorg/apache/xerces/impl/XMLNamespaceBinder;

    invoke-virtual {v7, v8}, Lorg/apache/xerces/parsers/DTDConfiguration;->addComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    :cond_5
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/parsers/DTDConfiguration;->createDatatypeValidatorFactory()Lorg/apache/xerces/impl/dv/DTDDVFactory;

    move-result-object v8

    iput-object v8, v7, Lorg/apache/xerces/parsers/DTDConfiguration;->fDatatypeValidatorFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/DTDConfiguration;->fDatatypeValidatorFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    if-eqz v7, :cond_6

    move-object v7, v0

    const-string/jumbo v8, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/DTDConfiguration;->fDatatypeValidatorFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/parsers/DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/parsers/DTDConfiguration;->createValidationManager()Lorg/apache/xerces/impl/validation/ValidationManager;

    move-result-object v8

    iput-object v8, v7, Lorg/apache/xerces/parsers/DTDConfiguration;->fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/DTDConfiguration;->fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    if-eqz v7, :cond_7

    move-object v7, v0

    const-string/jumbo v8, "http://apache.org/xml/properties/internal/validation-manager"

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/DTDConfiguration;->fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/parsers/DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_7
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/DTDConfiguration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v8, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v7, v8}, Lorg/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lorg/apache/xerces/util/MessageFormatter;

    move-result-object v7

    if-nez v7, :cond_8

    new-instance v7, Lorg/apache/xerces/impl/msg/XMLMessageFormatter;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Lorg/apache/xerces/impl/msg/XMLMessageFormatter;-><init>()V

    move-object v6, v7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/DTDConfiguration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v8, "http://www.w3.org/TR/1998/REC-xml-19980210"

    move-object v9, v6

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lorg/apache/xerces/util/MessageFormatter;)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/DTDConfiguration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v8, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    move-object v9, v6

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lorg/apache/xerces/util/MessageFormatter;)V

    :cond_8
    move-object v7, v0

    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/xerces/parsers/DTDConfiguration;->setLocale(Ljava/util/Locale;)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v7

    move-object v6, v7

    goto :goto_0
.end method


# virtual methods
.method protected checkFeature(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    const-string/jumbo v5, "http://apache.org/xml/features/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const-string/jumbo v5, "http://apache.org/xml/features/"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    move v2, v4

    move v4, v2

    const-string/jumbo v5, "validation/dynamic"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_0

    move-object v4, v1

    const-string/jumbo v5, "validation/dynamic"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return-void

    :cond_0
    move v4, v2

    const-string/jumbo v5, "validation/default-attribute-values"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_1

    move-object v4, v1

    const-string/jumbo v5, "validation/default-attribute-values"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    move v3, v4

    new-instance v4, Lorg/apache/xerces/xni/parser/XMLConfigurationException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move v6, v3

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v4

    :cond_1
    move v4, v2

    const-string/jumbo v5, "validation/validate-content-models"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_2

    move-object v4, v1

    const-string/jumbo v5, "validation/validate-content-models"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    move v3, v4

    new-instance v4, Lorg/apache/xerces/xni/parser/XMLConfigurationException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move v6, v3

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v4

    :cond_2
    move v4, v2

    const-string/jumbo v5, "nonvalidating/load-dtd-grammar"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_3

    move-object v4, v1

    const-string/jumbo v5, "nonvalidating/load-dtd-grammar"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    move v4, v2

    const-string/jumbo v5, "nonvalidating/load-external-dtd"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_4

    move-object v4, v1

    const-string/jumbo v5, "nonvalidating/load-external-dtd"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    move v4, v2

    const-string/jumbo v5, "validation/validate-datatypes"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_5

    move-object v4, v1

    const-string/jumbo v5, "validation/validate-datatypes"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    move v3, v4

    new-instance v4, Lorg/apache/xerces/xni/parser/XMLConfigurationException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move v6, v3

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;-><init>(SLjava/lang/String;)V

    throw v4

    :cond_5
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Lorg/apache/xerces/parsers/BasicParserConfiguration;->checkFeature(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected checkProperty(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    const-string/jumbo v4, "http://apache.org/xml/properties/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string/jumbo v4, "http://apache.org/xml/properties/"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    move v2, v3

    move v3, v2

    const-string/jumbo v4, "internal/dtd-scanner"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_0

    move-object v3, v1

    const-string/jumbo v4, "internal/dtd-scanner"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lorg/apache/xerces/parsers/BasicParserConfiguration;->checkProperty(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public cleanup()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DTDConfiguration;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/XMLEntityManager;->closeReaders()V

    return-void
.end method

.method protected configureDTDPipeline()V
    .locals 4

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DTDConfiguration;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DTDConfiguration;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/dtd-scanner"

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/DTDConfiguration;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DTDConfiguration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    if-eqz v1, :cond_2

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DTDConfiguration;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/dtd-processor"

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/DTDConfiguration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DTDConfiguration;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/DTDConfiguration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-interface {v1, v2}, Lorg/apache/xerces/xni/parser/XMLDTDScanner;->setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DTDConfiguration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/DTDConfiguration;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDSource(Lorg/apache/xerces/xni/parser/XMLDTDSource;)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DTDConfiguration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/DTDConfiguration;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DTDConfiguration;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DTDConfiguration;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/DTDConfiguration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-interface {v1, v2}, Lorg/apache/xerces/xni/XMLDTDHandler;->setDTDSource(Lorg/apache/xerces/xni/parser/XMLDTDSource;)V

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DTDConfiguration;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/DTDConfiguration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-interface {v1, v2}, Lorg/apache/xerces/xni/parser/XMLDTDScanner;->setDTDContentModelHandler(Lorg/apache/xerces/xni/XMLDTDContentModelHandler;)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DTDConfiguration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/DTDConfiguration;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDContentModelSource(Lorg/apache/xerces/xni/parser/XMLDTDContentModelSource;)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DTDConfiguration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/DTDConfiguration;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDContentModelHandler(Lorg/apache/xerces/xni/XMLDTDContentModelHandler;)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DTDConfiguration;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DTDConfiguration;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/DTDConfiguration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-interface {v1, v2}, Lorg/apache/xerces/xni/XMLDTDContentModelHandler;->setDTDContentModelSource(Lorg/apache/xerces/xni/parser/XMLDTDContentModelSource;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DTDConfiguration;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/DTDConfiguration;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    invoke-interface {v1, v2}, Lorg/apache/xerces/xni/parser/XMLDTDScanner;->setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DTDConfiguration;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v1, :cond_3

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DTDConfiguration;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/DTDConfiguration;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-interface {v1, v2}, Lorg/apache/xerces/xni/XMLDTDHandler;->setDTDSource(Lorg/apache/xerces/xni/parser/XMLDTDSource;)V

    :cond_3
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DTDConfiguration;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/DTDConfiguration;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-interface {v1, v2}, Lorg/apache/xerces/xni/parser/XMLDTDScanner;->setDTDContentModelHandler(Lorg/apache/xerces/xni/XMLDTDContentModelHandler;)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DTDConfiguration;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DTDConfiguration;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/DTDConfiguration;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-interface {v1, v2}, Lorg/apache/xerces/xni/XMLDTDContentModelHandler;->setDTDContentModelSource(Lorg/apache/xerces/xni/parser/XMLDTDContentModelSource;)V

    goto :goto_0
.end method

.method protected configurePipeline()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DTDConfiguration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DTDConfiguration;->fScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/DTDConfiguration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-interface {v1, v2}, Lorg/apache/xerces/xni/parser/XMLDocumentScanner;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DTDConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v2, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DTDConfiguration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/DTDConfiguration;->fNamespaceBinder:Lorg/apache/xerces/impl/XMLNamespaceBinder;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DTDConfiguration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/DTDConfiguration;->fScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DTDConfiguration;->fNamespaceBinder:Lorg/apache/xerces/impl/XMLNamespaceBinder;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/DTDConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/XMLNamespaceBinder;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DTDConfiguration;->fNamespaceBinder:Lorg/apache/xerces/impl/XMLNamespaceBinder;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/DTDConfiguration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/XMLNamespaceBinder;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/DTDConfiguration;->fNamespaceBinder:Lorg/apache/xerces/impl/XMLNamespaceBinder;

    iput-object v2, v1, Lorg/apache/xerces/parsers/DTDConfiguration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    :goto_0
    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/parsers/DTDConfiguration;->configureDTDPipeline()V

    return-void

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DTDConfiguration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/DTDConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DTDConfiguration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/DTDConfiguration;->fScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/DTDConfiguration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    iput-object v2, v1, Lorg/apache/xerces/parsers/DTDConfiguration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    goto :goto_0

    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DTDConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v2, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_2

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DTDConfiguration;->fScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/DTDConfiguration;->fNamespaceBinder:Lorg/apache/xerces/impl/XMLNamespaceBinder;

    invoke-interface {v1, v2}, Lorg/apache/xerces/xni/parser/XMLDocumentScanner;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DTDConfiguration;->fNamespaceBinder:Lorg/apache/xerces/impl/XMLNamespaceBinder;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/DTDConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/XMLNamespaceBinder;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DTDConfiguration;->fNamespaceBinder:Lorg/apache/xerces/impl/XMLNamespaceBinder;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/DTDConfiguration;->fScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/XMLNamespaceBinder;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/DTDConfiguration;->fNamespaceBinder:Lorg/apache/xerces/impl/XMLNamespaceBinder;

    iput-object v2, v1, Lorg/apache/xerces/parsers/DTDConfiguration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    goto :goto_0

    :cond_2
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DTDConfiguration;->fScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/DTDConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v1, v2}, Lorg/apache/xerces/xni/parser/XMLDocumentScanner;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/DTDConfiguration;->fScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    iput-object v2, v1, Lorg/apache/xerces/parsers/DTDConfiguration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    goto :goto_0
.end method

.method protected createDTDProcessor()Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;
    .locals 4

    move-object v0, p0

    new-instance v1, Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;-><init>()V

    move-object v0, v1

    return-object v0
.end method

.method protected createDTDScanner()Lorg/apache/xerces/xni/parser/XMLDTDScanner;
    .locals 4

    move-object v0, p0

    new-instance v1, Lorg/apache/xerces/impl/XMLDTDScannerImpl;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;-><init>()V

    move-object v0, v1

    return-object v0
.end method

.method protected createDTDValidator()Lorg/apache/xerces/impl/dtd/XMLDTDValidator;
    .locals 4

    move-object v0, p0

    new-instance v1, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;-><init>()V

    move-object v0, v1

    return-object v0
.end method

.method protected createDatatypeValidatorFactory()Lorg/apache/xerces/impl/dv/DTDDVFactory;
    .locals 2

    move-object v0, p0

    invoke-static {}, Lorg/apache/xerces/impl/dv/DTDDVFactory;->getInstance()Lorg/apache/xerces/impl/dv/DTDDVFactory;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method protected createDocumentScanner()Lorg/apache/xerces/xni/parser/XMLDocumentScanner;
    .locals 4

    move-object v0, p0

    new-instance v1, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;-><init>()V

    move-object v0, v1

    return-object v0
.end method

.method protected createEntityManager()Lorg/apache/xerces/impl/XMLEntityManager;
    .locals 4

    move-object v0, p0

    new-instance v1, Lorg/apache/xerces/impl/XMLEntityManager;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lorg/apache/xerces/impl/XMLEntityManager;-><init>()V

    move-object v0, v1

    return-object v0
.end method

.method protected createErrorReporter()Lorg/apache/xerces/impl/XMLErrorReporter;
    .locals 4

    move-object v0, p0

    new-instance v1, Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lorg/apache/xerces/impl/XMLErrorReporter;-><init>()V

    move-object v0, v1

    return-object v0
.end method

.method protected createNamespaceBinder()Lorg/apache/xerces/impl/XMLNamespaceBinder;
    .locals 4

    move-object v0, p0

    new-instance v1, Lorg/apache/xerces/impl/XMLNamespaceBinder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lorg/apache/xerces/impl/XMLNamespaceBinder;-><init>()V

    move-object v0, v1

    return-object v0
.end method

.method protected createValidationManager()Lorg/apache/xerces/impl/validation/ValidationManager;
    .locals 4

    move-object v0, p0

    new-instance v1, Lorg/apache/xerces/impl/validation/ValidationManager;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lorg/apache/xerces/impl/validation/ValidationManager;-><init>()V

    move-object v0, v1

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "http://apache.org/xml/properties/locale"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/parsers/DTDConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v2

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lorg/apache/xerces/parsers/BasicParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public parse(Lorg/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v8, v0

    iget-boolean v8, v8, Lorg/apache/xerces/parsers/DTDConfiguration;->fParseInProgress:Z

    if-eqz v8, :cond_0

    new-instance v8, Lorg/apache/xerces/xni/XNIException;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    const-string/jumbo v10, "FWK005 parse may not be called while parsing."

    invoke-direct {v9, v10}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    move-object v8, v0

    const/4 v9, 0x1

    iput-boolean v9, v8, Lorg/apache/xerces/parsers/DTDConfiguration;->fParseInProgress:Z

    move-object v8, v0

    move-object v9, v1

    :try_start_0
    invoke-virtual {v8, v9}, Lorg/apache/xerces/parsers/DTDConfiguration;->setInputSource(Lorg/apache/xerces/xni/parser/XMLInputSource;)V

    move-object v8, v0

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lorg/apache/xerces/parsers/DTDConfiguration;->parse(Z)Z
    :try_end_0
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Lorg/apache/xerces/parsers/DTDConfiguration;->fParseInProgress:Z

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/parsers/DTDConfiguration;->cleanup()V

    return-void

    :catch_0
    move-exception v8

    move-object v2, v8

    move-object v8, v2

    :try_start_1
    throw v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v8

    move-object v6, v8

    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Lorg/apache/xerces/parsers/DTDConfiguration;->fParseInProgress:Z

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/parsers/DTDConfiguration;->cleanup()V

    move-object v8, v6

    throw v8

    :catch_1
    move-exception v8

    move-object v3, v8

    move-object v8, v3

    :try_start_2
    throw v8

    :catch_2
    move-exception v8

    move-object v4, v8

    move-object v8, v4

    throw v8

    :catch_3
    move-exception v8

    move-object v5, v8

    new-instance v8, Lorg/apache/xerces/xni/XNIException;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v5

    invoke-direct {v9, v10}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public parse(Z)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/DTDConfiguration;->fInputSource:Lorg/apache/xerces/xni/parser/XMLInputSource;

    if-eqz v6, :cond_0

    move-object v6, v0

    :try_start_0
    invoke-virtual {v6}, Lorg/apache/xerces/parsers/DTDConfiguration;->reset()V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/DTDConfiguration;->fScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/DTDConfiguration;->fInputSource:Lorg/apache/xerces/xni/parser/XMLInputSource;

    invoke-interface {v6, v7}, Lorg/apache/xerces/xni/parser/XMLDocumentScanner;->setInputSource(Lorg/apache/xerces/xni/parser/XMLInputSource;)V

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/apache/xerces/parsers/DTDConfiguration;->fInputSource:Lorg/apache/xerces/xni/parser/XMLInputSource;
    :try_end_0
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :cond_0
    move-object v6, v0

    :try_start_1
    iget-object v6, v6, Lorg/apache/xerces/parsers/DTDConfiguration;->fScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    move v7, v1

    invoke-interface {v6, v7}, Lorg/apache/xerces/xni/parser/XMLDocumentScanner;->scanDocument(Z)Z
    :try_end_1
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    move-result v6

    move v0, v6

    return v0

    :catch_0
    move-exception v6

    move-object v2, v6

    move-object v6, v2

    throw v6

    :catch_1
    move-exception v6

    move-object v3, v6

    move-object v6, v3

    throw v6

    :catch_2
    move-exception v6

    move-object v4, v6

    move-object v6, v4

    throw v6

    :catch_3
    move-exception v6

    move-object v5, v6

    new-instance v6, Lorg/apache/xerces/xni/XNIException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v5

    invoke-direct {v7, v8}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v6

    :catch_4
    move-exception v6

    move-object v2, v6

    move-object v6, v2

    throw v6

    :catch_5
    move-exception v6

    move-object v3, v6

    move-object v6, v3

    throw v6

    :catch_6
    move-exception v6

    move-object v4, v6

    move-object v6, v4

    throw v6

    :catch_7
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

.method protected reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DTDConfiguration;->fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DTDConfiguration;->fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/validation/ValidationManager;->reset()V

    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/parsers/DTDConfiguration;->configurePipeline()V

    move-object v1, v0

    invoke-super {v1}, Lorg/apache/xerces/parsers/BasicParserConfiguration;->reset()V

    return-void
.end method

.method public setInputSource(Lorg/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/parsers/DTDConfiguration;->fInputSource:Lorg/apache/xerces/xni/parser/XMLInputSource;

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lorg/apache/xerces/parsers/BasicParserConfiguration;->setLocale(Ljava/util/Locale;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/DTDConfiguration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/XMLErrorReporter;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const-string/jumbo v3, "http://apache.org/xml/properties/locale"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    move-object v4, v2

    check-cast v4, Ljava/util/Locale;

    invoke-virtual {v3, v4}, Lorg/apache/xerces/parsers/DTDConfiguration;->setLocale(Ljava/util/Locale;)V

    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lorg/apache/xerces/parsers/BasicParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
