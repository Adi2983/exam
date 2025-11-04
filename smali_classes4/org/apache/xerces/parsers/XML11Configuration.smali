.class public Lorg/apache/xerces/parsers/XML11Configuration;
.super Lorg/apache/xerces/util/ParserConfigurationSettings;

# interfaces
.implements Lorg/apache/xerces/xni/parser/XMLPullParserConfiguration;
.implements Lorg/apache/xerces/parsers/XML11Configurable;


# static fields
.field protected static final ALLOW_JAVA_ENCODINGS:Ljava/lang/String; = "http://apache.org/xml/features/allow-java-encodings"

.field protected static final CONTINUE_AFTER_FATAL_ERROR:Ljava/lang/String; = "http://apache.org/xml/features/continue-after-fatal-error"

.field protected static final DATATYPE_VALIDATOR_FACTORY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/datatype-validator-factory"

.field protected static final DOCUMENT_SCANNER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/document-scanner"

.field protected static final DTD_PROCESSOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/dtd-processor"

.field protected static final DTD_SCANNER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/dtd-scanner"

.field protected static final DTD_VALIDATOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/dtd"

.field protected static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field protected static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field protected static final ERROR_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-handler"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final EXTERNAL_GENERAL_ENTITIES:Ljava/lang/String; = "http://xml.org/sax/features/external-general-entities"

.field protected static final EXTERNAL_PARAMETER_ENTITIES:Ljava/lang/String; = "http://xml.org/sax/features/external-parameter-entities"

.field protected static final GENERATE_SYNTHETIC_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/generate-synthetic-annotations"

.field protected static final HONOUR_ALL_SCHEMALOCATIONS:Ljava/lang/String; = "http://apache.org/xml/features/honour-all-schemaLocations"

.field protected static final IDENTITY_CONSTRAINT_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/identity-constraint-checking"

.field protected static final ID_IDREF_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/id-idref-checking"

.field protected static final IGNORE_XSI_TYPE:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/ignore-xsi-type-until-elemdecl"

.field protected static final JAXP_SCHEMA_LANGUAGE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

.field protected static final JAXP_SCHEMA_SOURCE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaSource"

.field protected static final LOAD_EXTERNAL_DTD:Ljava/lang/String; = "http://apache.org/xml/features/nonvalidating/load-external-dtd"

.field protected static final LOCALE:Ljava/lang/String; = "http://apache.org/xml/properties/locale"

.field protected static final NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field protected static final NAMESPACE_BINDER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/namespace-binder"

.field protected static final NAMESPACE_GROWTH:Ljava/lang/String; = "http://apache.org/xml/features/namespace-growth"

.field protected static final NORMALIZE_DATA:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/normalized-value"

.field protected static final NOTIFY_BUILTIN_REFS:Ljava/lang/String; = "http://apache.org/xml/features/scanner/notify-builtin-refs"

.field protected static final NOTIFY_CHAR_REFS:Ljava/lang/String; = "http://apache.org/xml/features/scanner/notify-char-refs"

.field protected static final PRINT_EXCEPTION_STACK_TRACE:Z = false

.field protected static final ROOT_ELEMENT_DECL:Ljava/lang/String; = "http://apache.org/xml/properties/validation/schema/root-element-declaration"

.field protected static final ROOT_TYPE_DEF:Ljava/lang/String; = "http://apache.org/xml/properties/validation/schema/root-type-definition"

.field protected static final SCHEMA_AUGMENT_PSVI:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/augment-psvi"

.field protected static final SCHEMA_DV_FACTORY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation/schema/dv-factory"

.field protected static final SCHEMA_ELEMENT_DEFAULT:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/element-default"

.field protected static final SCHEMA_LOCATION:Ljava/lang/String; = "http://apache.org/xml/properties/schema/external-schemaLocation"

.field protected static final SCHEMA_NONS_LOCATION:Ljava/lang/String; = "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

.field protected static final SCHEMA_VALIDATOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/schema"

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final TOLERATE_DUPLICATES:Ljava/lang/String; = "http://apache.org/xml/features/internal/tolerate-duplicates"

.field protected static final UNPARSED_ENTITY_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/unparsed-entity-checking"

.field protected static final USE_GRAMMAR_POOL_ONLY:Ljava/lang/String; = "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

.field protected static final VALIDATE_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/validate-annotations"

.field protected static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field protected static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"

.field protected static final WARN_ON_DUPLICATE_ATTDEF:Ljava/lang/String; = "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

.field protected static final WARN_ON_DUPLICATE_ENTITYDEF:Ljava/lang/String; = "http://apache.org/xml/features/warn-on-duplicate-entitydef"

.field protected static final WARN_ON_UNDECLARED_ELEMDEF:Ljava/lang/String; = "http://apache.org/xml/features/validation/warn-on-undeclared-elemdef"

.field protected static final XML11_DATATYPE_VALIDATOR_FACTORY:Ljava/lang/String; = "org.apache.xerces.impl.dv.dtd.XML11DTDDVFactoryImpl"

.field protected static final XMLGRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"

.field protected static final XMLSCHEMA_FULL_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema-full-checking"

.field protected static final XMLSCHEMA_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"

.field protected static final XML_STRING:Ljava/lang/String; = "http://xml.org/sax/properties/xml-string"


# instance fields
.field private f11Initialized:Z

.field protected final fCommonComponents:Ljava/util/ArrayList;

.field protected final fComponents:Ljava/util/ArrayList;

.field protected fConfigUpdated:Z

.field protected fCurrentDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

.field protected fCurrentDVFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

.field protected fCurrentScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

.field protected fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

.field protected fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

.field protected final fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

.field protected final fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

.field protected final fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

.field protected final fDatatypeValidatorFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

.field protected fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

.field protected fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

.field protected fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

.field protected fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

.field protected fInputSource:Lorg/apache/xerces/xni/parser/XMLInputSource;

.field protected fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

.field protected fLocale:Ljava/util/Locale;

.field protected final fNamespaceScanner:Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

.field protected fNonNSDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

.field protected fNonNSScanner:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

.field protected fParseInProgress:Z

.field protected fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

.field protected fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

.field protected final fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

.field protected final fVersionDetector:Lorg/apache/xerces/impl/XMLVersionDetector;

.field protected final fXML11Components:Ljava/util/ArrayList;

.field protected fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

.field protected fXML11DTDScanner:Lorg/apache/xerces/impl/XML11DTDScannerImpl;

.field protected fXML11DTDValidator:Lorg/apache/xerces/impl/dtd/XML11DTDValidator;

.field protected fXML11DatatypeFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

.field protected fXML11DocScanner:Lorg/apache/xerces/impl/XML11DocumentScannerImpl;

.field protected fXML11NSDTDValidator:Lorg/apache/xerces/impl/dtd/XML11NSDTDValidator;

.field protected fXML11NSDocScanner:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;


# direct methods
.method public constructor <init>()V
    .locals 5

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/xerces/parsers/XML11Configuration;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

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

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/xerces/parsers/XML11Configuration;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

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

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/xerces/parsers/XML11Configuration;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, v0

    move-object v8, v3

    invoke-direct {v7, v8}, Lorg/apache/xerces/util/ParserConfigurationSettings;-><init>(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fParseInProgress:Z

    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fConfigUpdated:Z

    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DatatypeFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11NSDocScanner:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DocScanner:Lorg/apache/xerces/impl/XML11DocumentScannerImpl;

    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11NSDTDValidator:Lorg/apache/xerces/impl/dtd/XML11NSDTDValidator;

    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDValidator:Lorg/apache/xerces/impl/dtd/XML11DTDValidator;

    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDScanner:Lorg/apache/xerces/impl/XML11DTDScannerImpl;

    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Lorg/apache/xerces/parsers/XML11Configuration;->f11Initialized:Z

    move-object v7, v0

    new-instance v8, Ljava/util/ArrayList;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fComponents:Ljava/util/ArrayList;

    move-object v7, v0

    new-instance v8, Ljava/util/ArrayList;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11Components:Ljava/util/ArrayList;

    move-object v7, v0

    new-instance v8, Ljava/util/ArrayList;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fCommonComponents:Ljava/util/ArrayList;

    move-object v7, v0

    new-instance v8, Ljava/util/ArrayList;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fRecognizedFeatures:Ljava/util/ArrayList;

    move-object v7, v0

    new-instance v8, Ljava/util/ArrayList;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fRecognizedProperties:Ljava/util/ArrayList;

    move-object v7, v0

    new-instance v8, Ljava/util/HashMap;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v8, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fFeatures:Ljava/util/HashMap;

    move-object v7, v0

    new-instance v8, Ljava/util/HashMap;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v8, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fProperties:Ljava/util/HashMap;

    const/16 v7, 0x16

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

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x2

    const-string/jumbo v10, "http://xml.org/sax/features/validation"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x3

    const-string/jumbo v10, "http://xml.org/sax/features/namespaces"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x4

    const-string/jumbo v10, "http://apache.org/xml/features/validation/schema/normalized-value"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x5

    const-string/jumbo v10, "http://apache.org/xml/features/validation/schema/element-default"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x6

    const-string/jumbo v10, "http://apache.org/xml/features/validation/schema/augment-psvi"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x7

    const-string/jumbo v10, "http://apache.org/xml/features/generate-synthetic-annotations"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/16 v9, 0x8

    const-string/jumbo v10, "http://apache.org/xml/features/validate-annotations"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/16 v9, 0x9

    const-string/jumbo v10, "http://apache.org/xml/features/honour-all-schemaLocations"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/16 v9, 0xa

    const-string/jumbo v10, "http://apache.org/xml/features/namespace-growth"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/16 v9, 0xb

    const-string/jumbo v10, "http://apache.org/xml/features/internal/tolerate-duplicates"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/16 v9, 0xc

    const-string/jumbo v10, "http://apache.org/xml/features/validation/schema/ignore-xsi-type-until-elemdecl"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/16 v9, 0xd

    const-string/jumbo v10, "http://apache.org/xml/features/validation/id-idref-checking"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/16 v9, 0xe

    const-string/jumbo v10, "http://apache.org/xml/features/validation/identity-constraint-checking"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/16 v9, 0xf

    const-string/jumbo v10, "http://apache.org/xml/features/validation/unparsed-entity-checking"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/16 v9, 0x10

    const-string/jumbo v10, "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/16 v9, 0x11

    const-string/jumbo v10, "http://apache.org/xml/features/validation/schema"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/16 v9, 0x12

    const-string/jumbo v10, "http://apache.org/xml/features/validation/schema-full-checking"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/16 v9, 0x13

    const-string/jumbo v10, "http://xml.org/sax/features/external-general-entities"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/16 v9, 0x14

    const-string/jumbo v10, "http://xml.org/sax/features/external-parameter-entities"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/16 v9, 0x15

    const-string/jumbo v10, "http://apache.org/xml/features/internal/parser-settings"

    aput-object v10, v8, v9

    move-object v4, v7

    move-object v7, v0

    move-object v8, v4

    invoke-virtual {v7, v8}, Lorg/apache/xerces/parsers/XML11Configuration;->addRecognizedFeatures([Ljava/lang/String;)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v8, "http://xml.org/sax/features/validation"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v8, "http://xml.org/sax/features/namespaces"

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v8, "http://xml.org/sax/features/external-general-entities"

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v8, "http://xml.org/sax/features/external-parameter-entities"

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v8, "http://apache.org/xml/features/continue-after-fatal-error"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v8, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v8, "http://apache.org/xml/features/validation/schema/element-default"

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v8, "http://apache.org/xml/features/validation/schema/normalized-value"

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v8, "http://apache.org/xml/features/validation/schema/augment-psvi"

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v8, "http://apache.org/xml/features/generate-synthetic-annotations"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v8, "http://apache.org/xml/features/validate-annotations"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v8, "http://apache.org/xml/features/honour-all-schemaLocations"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v8, "http://apache.org/xml/features/namespace-growth"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v8, "http://apache.org/xml/features/internal/tolerate-duplicates"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v8, "http://apache.org/xml/features/validation/schema/ignore-xsi-type-until-elemdecl"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v8, "http://apache.org/xml/features/validation/id-idref-checking"

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v8, "http://apache.org/xml/features/validation/identity-constraint-checking"

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v8, "http://apache.org/xml/features/validation/unparsed-entity-checking"

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v8, "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v8, "http://apache.org/xml/features/internal/parser-settings"

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const/16 v7, 0x16

    new-array v7, v7, [Ljava/lang/String;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    const-string/jumbo v10, "http://apache.org/xml/properties/internal/symbol-table"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    const-string/jumbo v10, "http://apache.org/xml/properties/internal/error-handler"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x2

    const-string/jumbo v10, "http://apache.org/xml/properties/internal/entity-resolver"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x3

    const-string/jumbo v10, "http://apache.org/xml/properties/internal/error-reporter"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x4

    const-string/jumbo v10, "http://apache.org/xml/properties/internal/entity-manager"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x5

    const-string/jumbo v10, "http://apache.org/xml/properties/internal/document-scanner"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x6

    const-string/jumbo v10, "http://apache.org/xml/properties/internal/dtd-scanner"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x7

    const-string/jumbo v10, "http://apache.org/xml/properties/internal/dtd-processor"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/16 v9, 0x8

    const-string/jumbo v10, "http://apache.org/xml/properties/internal/validator/dtd"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/16 v9, 0x9

    const-string/jumbo v10, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/16 v9, 0xa

    const-string/jumbo v10, "http://apache.org/xml/properties/internal/validation-manager"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/16 v9, 0xb

    const-string/jumbo v10, "http://apache.org/xml/properties/internal/validator/schema"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/16 v9, 0xc

    const-string/jumbo v10, "http://xml.org/sax/properties/xml-string"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/16 v9, 0xd

    const-string/jumbo v10, "http://apache.org/xml/properties/internal/grammar-pool"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/16 v9, 0xe

    const-string/jumbo v10, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/16 v9, 0xf

    const-string/jumbo v10, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/16 v9, 0x10

    const-string/jumbo v10, "http://apache.org/xml/properties/schema/external-schemaLocation"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/16 v9, 0x11

    const-string/jumbo v10, "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/16 v9, 0x12

    const-string/jumbo v10, "http://apache.org/xml/properties/locale"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/16 v9, 0x13

    const-string/jumbo v10, "http://apache.org/xml/properties/validation/schema/root-type-definition"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/16 v9, 0x14

    const-string/jumbo v10, "http://apache.org/xml/properties/validation/schema/root-element-declaration"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/16 v9, 0x15

    const-string/jumbo v10, "http://apache.org/xml/properties/internal/validation/schema/dv-factory"

    aput-object v10, v8, v9

    move-object v5, v7

    move-object v7, v0

    move-object v8, v5

    invoke-virtual {v7, v8}, Lorg/apache/xerces/parsers/XML11Configuration;->addRecognizedProperties([Ljava/lang/String;)V

    move-object v7, v1

    if-nez v7, :cond_0

    new-instance v7, Lorg/apache/xerces/util/SymbolTable;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Lorg/apache/xerces/util/SymbolTable;-><init>()V

    move-object v1, v7

    :cond_0
    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v8, "http://apache.org/xml/properties/internal/symbol-table"

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/XML11Configuration;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    if-eqz v7, :cond_1

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v8, "http://apache.org/xml/properties/internal/grammar-pool"

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/XML11Configuration;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    :cond_1
    move-object v7, v0

    new-instance v8, Lorg/apache/xerces/impl/XMLEntityManager;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Lorg/apache/xerces/impl/XMLEntityManager;-><init>()V

    iput-object v8, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v8, "http://apache.org/xml/properties/internal/entity-manager"

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/XML11Configuration;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/parsers/XML11Configuration;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v7, v8}, Lorg/apache/xerces/parsers/XML11Configuration;->addCommonComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    move-object v7, v0

    new-instance v8, Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Lorg/apache/xerces/impl/XMLErrorReporter;-><init>()V

    iput-object v8, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/parsers/XML11Configuration;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v8}, Lorg/apache/xerces/impl/XMLEntityManager;->getEntityScanner()Lorg/apache/xerces/impl/XMLEntityScanner;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/xerces/impl/XMLErrorReporter;->setDocumentLocator(Lorg/apache/xerces/xni/XMLLocator;)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v8, "http://apache.org/xml/properties/internal/error-reporter"

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/XML11Configuration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/parsers/XML11Configuration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v7, v8}, Lorg/apache/xerces/parsers/XML11Configuration;->addCommonComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    move-object v7, v0

    new-instance v8, Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;-><init>()V

    iput-object v8, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fNamespaceScanner:Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v8, "http://apache.org/xml/properties/internal/document-scanner"

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/XML11Configuration;->fNamespaceScanner:Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/parsers/XML11Configuration;->fNamespaceScanner:Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {v7, v8}, Lorg/apache/xerces/parsers/XML11Configuration;->addComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    move-object v7, v0

    new-instance v8, Lorg/apache/xerces/impl/XMLDTDScannerImpl;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;-><init>()V

    iput-object v8, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v8, "http://apache.org/xml/properties/internal/dtd-scanner"

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    check-cast v8, Lorg/apache/xerces/xni/parser/XMLComponent;

    invoke-virtual {v7, v8}, Lorg/apache/xerces/parsers/XML11Configuration;->addComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    move-object v7, v0

    new-instance v8, Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;-><init>()V

    iput-object v8, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v8, "http://apache.org/xml/properties/internal/dtd-processor"

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-virtual {v7, v8}, Lorg/apache/xerces/parsers/XML11Configuration;->addComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    move-object v7, v0

    new-instance v8, Lorg/apache/xerces/impl/dtd/XMLNSDTDValidator;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Lorg/apache/xerces/impl/dtd/XMLNSDTDValidator;-><init>()V

    iput-object v8, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v8, "http://apache.org/xml/properties/internal/validator/dtd"

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {v7, v8}, Lorg/apache/xerces/parsers/XML11Configuration;->addComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    move-object v7, v0

    invoke-static {}, Lorg/apache/xerces/impl/dv/DTDDVFactory;->getInstance()Lorg/apache/xerces/impl/dv/DTDDVFactory;

    move-result-object v8

    iput-object v8, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fDatatypeValidatorFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v8, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/XML11Configuration;->fDatatypeValidatorFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v7, v0

    new-instance v8, Lorg/apache/xerces/impl/validation/ValidationManager;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Lorg/apache/xerces/impl/validation/ValidationManager;-><init>()V

    iput-object v8, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v8, "http://apache.org/xml/properties/internal/validation-manager"

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/XML11Configuration;->fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v7, v0

    new-instance v8, Lorg/apache/xerces/impl/XMLVersionDetector;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Lorg/apache/xerces/impl/XMLVersionDetector;-><init>()V

    iput-object v8, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fVersionDetector:Lorg/apache/xerces/impl/XMLVersionDetector;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v8, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v7, v8}, Lorg/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lorg/apache/xerces/util/MessageFormatter;

    move-result-object v7

    if-nez v7, :cond_2

    new-instance v7, Lorg/apache/xerces/impl/msg/XMLMessageFormatter;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Lorg/apache/xerces/impl/msg/XMLMessageFormatter;-><init>()V

    move-object v6, v7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v8, "http://www.w3.org/TR/1998/REC-xml-19980210"

    move-object v9, v6

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lorg/apache/xerces/util/MessageFormatter;)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v8, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    move-object v9, v6

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lorg/apache/xerces/util/MessageFormatter;)V

    :cond_2
    move-object v7, v0

    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/xerces/parsers/XML11Configuration;->setLocale(Ljava/util/Locale;)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fConfigUpdated:Z

    return-void

    :catch_0
    move-exception v7

    move-object v6, v7

    goto :goto_0
.end method

.method private initXML11Components()V
    .locals 5

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/parsers/XML11Configuration;->f11Initialized:Z

    if-nez v1, :cond_0

    move-object v1, v0

    const-string/jumbo v2, "org.apache.xerces.impl.dv.dtd.XML11DTDDVFactoryImpl"

    invoke-static {v2}, Lorg/apache/xerces/impl/dv/DTDDVFactory;->getInstance(Ljava/lang/String;)Lorg/apache/xerces/impl/dv/DTDDVFactory;

    move-result-object v2

    iput-object v2, v1, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DatatypeFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/impl/XML11DTDScannerImpl;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/apache/xerces/impl/XML11DTDScannerImpl;-><init>()V

    iput-object v2, v1, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDScanner:Lorg/apache/xerces/impl/XML11DTDScannerImpl;

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDScanner:Lorg/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/parsers/XML11Configuration;->addXML11Component(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;-><init>()V

    iput-object v2, v1, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/parsers/XML11Configuration;->addXML11Component(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;-><init>()V

    iput-object v2, v1, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11NSDocScanner:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11NSDocScanner:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/parsers/XML11Configuration;->addXML11Component(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/impl/dtd/XML11NSDTDValidator;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/apache/xerces/impl/dtd/XML11NSDTDValidator;-><init>()V

    iput-object v2, v1, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11NSDTDValidator:Lorg/apache/xerces/impl/dtd/XML11NSDTDValidator;

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11NSDTDValidator:Lorg/apache/xerces/impl/dtd/XML11NSDTDValidator;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/parsers/XML11Configuration;->addXML11Component(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/apache/xerces/parsers/XML11Configuration;->f11Initialized:Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected addCommonComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fCommonComponents:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fCommonComponents:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/parsers/XML11Configuration;->addRecognizedParamsAndSetDefaults(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    goto :goto_0
.end method

.method protected addComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fComponents:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fComponents:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/parsers/XML11Configuration;->addRecognizedParamsAndSetDefaults(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    goto :goto_0
.end method

.method protected addRecognizedParamsAndSetDefaults(Lorg/apache/xerces/xni/parser/XMLComponent;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v7, v1

    invoke-interface {v7}, Lorg/apache/xerces/xni/parser/XMLComponent;->getRecognizedFeatures()[Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    move-object v7, v0

    move-object v8, v2

    invoke-virtual {v7, v8}, Lorg/apache/xerces/parsers/XML11Configuration;->addRecognizedFeatures([Ljava/lang/String;)V

    move-object v7, v1

    invoke-interface {v7}, Lorg/apache/xerces/xni/parser/XMLComponent;->getRecognizedProperties()[Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    move-object v7, v0

    move-object v8, v3

    invoke-virtual {v7, v8}, Lorg/apache/xerces/parsers/XML11Configuration;->addRecognizedProperties([Ljava/lang/String;)V

    move-object v7, v2

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    move v4, v7

    :goto_0
    move v7, v4

    move-object v8, v2

    array-length v8, v8

    if-lt v7, v8, :cond_2

    :cond_0
    move-object v7, v3

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    move v4, v7

    :goto_1
    move v7, v4

    move-object v8, v3

    array-length v8, v8

    if-lt v7, v8, :cond_4

    :cond_1
    return-void

    :cond_2
    move-object v7, v2

    move v8, v4

    aget-object v7, v7, v8

    move-object v5, v7

    move-object v7, v1

    move-object v8, v5

    invoke-interface {v7, v8}, Lorg/apache/xerces/xni/parser/XMLComponent;->getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    move-object v6, v7

    move-object v7, v6

    if-eqz v7, :cond_3

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fFeatures:Ljava/util/HashMap;

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fFeatures:Ljava/util/HashMap;

    move-object v8, v5

    move-object v9, v6

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fConfigUpdated:Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    move-object v7, v3

    move v8, v4

    aget-object v7, v7, v8

    move-object v5, v7

    move-object v7, v1

    move-object v8, v5

    invoke-interface {v7, v8}, Lorg/apache/xerces/xni/parser/XMLComponent;->getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    move-object v7, v6

    if-eqz v7, :cond_5

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fProperties:Ljava/util/HashMap;

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fProperties:Ljava/util/HashMap;

    move-object v8, v5

    move-object v9, v6

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fConfigUpdated:Z

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method protected addXML11Component(Lorg/apache/xerces/xni/parser/XMLComponent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11Components:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11Components:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/parsers/XML11Configuration;->addRecognizedParamsAndSetDefaults(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    goto :goto_0
.end method

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

    if-eqz v4, :cond_a

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
    move v4, v2

    const-string/jumbo v5, "validation/schema"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_6

    move-object v4, v1

    const-string/jumbo v5, "validation/schema"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto/16 :goto_0

    :cond_6
    move v4, v2

    const-string/jumbo v5, "validation/schema-full-checking"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_7

    move-object v4, v1

    const-string/jumbo v5, "validation/schema-full-checking"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto/16 :goto_0

    :cond_7
    move v4, v2

    const-string/jumbo v5, "validation/schema/normalized-value"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_8

    move-object v4, v1

    const-string/jumbo v5, "validation/schema/normalized-value"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto/16 :goto_0

    :cond_8
    move v4, v2

    const-string/jumbo v5, "validation/schema/element-default"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_9

    move-object v4, v1

    const-string/jumbo v5, "validation/schema/element-default"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto/16 :goto_0

    :cond_9
    move v4, v2

    const-string/jumbo v5, "internal/parser-settings"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_a

    move-object v4, v1

    const-string/jumbo v5, "internal/parser-settings"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

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

    :cond_a
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Lorg/apache/xerces/util/ParserConfigurationSettings;->checkFeature(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected checkProperty(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    const-string/jumbo v5, "http://apache.org/xml/properties/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const-string/jumbo v5, "http://apache.org/xml/properties/"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    move v2, v4

    move v4, v2

    const-string/jumbo v5, "internal/dtd-scanner"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_0

    move-object v4, v1

    const-string/jumbo v5, "internal/dtd-scanner"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return-void

    :cond_0
    move v4, v2

    const-string/jumbo v5, "schema/external-schemaLocation"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_1

    move-object v4, v1

    const-string/jumbo v5, "schema/external-schemaLocation"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v2

    const-string/jumbo v5, "schema/external-noNamespaceSchemaLocation"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_2

    move-object v4, v1

    const-string/jumbo v5, "schema/external-noNamespaceSchemaLocation"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    move-object v4, v1

    const-string/jumbo v5, "http://java.sun.com/xml/jaxp/properties/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const-string/jumbo v5, "http://java.sun.com/xml/jaxp/properties/"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    move v2, v4

    move v4, v2

    const-string/jumbo v5, "schemaSource"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_3

    move-object v4, v1

    const-string/jumbo v5, "schemaSource"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    move-object v4, v1

    const-string/jumbo v5, "http://xml.org/sax/properties/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const-string/jumbo v5, "http://xml.org/sax/properties/"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    move v2, v4

    move v4, v2

    const-string/jumbo v5, "xml-string"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_4

    move-object v4, v1

    const-string/jumbo v5, "xml-string"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

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

    :cond_4
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Lorg/apache/xerces/util/ParserConfigurationSettings;->checkProperty(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public cleanup()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11Configuration;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/XMLEntityManager;->closeReaders()V

    return-void
.end method

.method protected configurePipeline()V
    .locals 6

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fCurrentDVFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fDatatypeValidatorFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    if-eq v2, v3, :cond_0

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fDatatypeValidatorFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    iput-object v3, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fCurrentDVFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    move-object v2, v0

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XML11Configuration;->fCurrentDVFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fCurrentDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    if-eq v2, v3, :cond_1

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    iput-object v3, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fCurrentDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    move-object v2, v0

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/dtd-scanner"

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XML11Configuration;->fCurrentDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v2, v0

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/dtd-processor"

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/parser/XMLDTDScanner;->setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDSource(Lorg/apache/xerces/xni/parser/XMLDTDSource;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/XMLDTDHandler;->setDTDSource(Lorg/apache/xerces/xni/parser/XMLDTDSource;)V

    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/parser/XMLDTDScanner;->setDTDContentModelHandler(Lorg/apache/xerces/xni/XMLDTDContentModelHandler;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDContentModelSource(Lorg/apache/xerces/xni/parser/XMLDTDContentModelSource;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDContentModelHandler(Lorg/apache/xerces/xni/XMLDTDContentModelHandler;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v2, :cond_3

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/XMLDTDContentModelHandler;->setDTDContentModelSource(Lorg/apache/xerces/xni/parser/XMLDTDContentModelSource;)V

    :cond_3
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v3, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v2, v3, :cond_9

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fCurrentScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fNamespaceScanner:Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

    if-eq v2, v3, :cond_4

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fNamespaceScanner:Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iput-object v3, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fCurrentScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    move-object v2, v0

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/document-scanner"

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XML11Configuration;->fNamespaceScanner:Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v2, v0

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/validator/dtd"

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fNamespaceScanner:Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;->setDTDValidator(Lorg/apache/xerces/impl/dtd/XMLDTDValidatorFilter;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fNamespaceScanner:Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fNamespaceScanner:Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v2, :cond_5

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    :cond_5
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    iput-object v3, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v3, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v2, v3, :cond_8

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    if-nez v2, :cond_6

    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-object v2, v0

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/validator/schema"

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/parsers/XML11Configuration;->addCommonComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lorg/apache/xerces/util/MessageFormatter;

    move-result-object v2

    if-nez v2, :cond_6

    new-instance v2, Lorg/apache/xerces/impl/xs/XSMessageFormatter;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lorg/apache/xerces/impl/xs/XSMessageFormatter;-><init>()V

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/xml-schema-1"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lorg/apache/xerces/util/MessageFormatter;)V

    :cond_6
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v2, :cond_7

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    :cond_7
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    iput-object v3, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    :cond_8
    return-void

    :cond_9
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fNonNSScanner:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    if-nez v2, :cond_a

    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fNonNSScanner:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fNonNSDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fNonNSScanner:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/parsers/XML11Configuration;->addComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fNonNSDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/parsers/XML11Configuration;->addComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    :cond_a
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fCurrentScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fNonNSScanner:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    if-eq v2, v3, :cond_b

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fNonNSScanner:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iput-object v3, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fCurrentScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    move-object v2, v0

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/document-scanner"

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XML11Configuration;->fNonNSScanner:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v2, v0

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/validator/dtd"

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XML11Configuration;->fNonNSDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_b
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fNonNSScanner:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fNonNSDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fNonNSDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fNonNSScanner:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fNonNSDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v2, :cond_c

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fNonNSDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    :cond_c
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fNonNSDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    iput-object v3, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    goto/16 :goto_0
.end method

.method protected configureXML11Pipeline()V
    .locals 6

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fCurrentDVFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DatatypeFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    if-eq v2, v3, :cond_0

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DatatypeFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    iput-object v3, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fCurrentDVFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    move-object v2, v0

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XML11Configuration;->fCurrentDVFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fCurrentDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDScanner:Lorg/apache/xerces/impl/XML11DTDScannerImpl;

    if-eq v2, v3, :cond_1

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDScanner:Lorg/apache/xerces/impl/XML11DTDScannerImpl;

    iput-object v3, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fCurrentDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    move-object v2, v0

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/dtd-scanner"

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XML11Configuration;->fCurrentDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v2, v0

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/dtd-processor"

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDScanner:Lorg/apache/xerces/impl/XML11DTDScannerImpl;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/XML11DTDScannerImpl;->setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDScanner:Lorg/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;->setDTDSource(Lorg/apache/xerces/xni/parser/XMLDTDSource;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;->setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/XMLDTDHandler;->setDTDSource(Lorg/apache/xerces/xni/parser/XMLDTDSource;)V

    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDScanner:Lorg/apache/xerces/impl/XML11DTDScannerImpl;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/XML11DTDScannerImpl;->setDTDContentModelHandler(Lorg/apache/xerces/xni/XMLDTDContentModelHandler;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDScanner:Lorg/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;->setDTDContentModelSource(Lorg/apache/xerces/xni/parser/XMLDTDContentModelSource;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;->setDTDContentModelHandler(Lorg/apache/xerces/xni/XMLDTDContentModelHandler;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v2, :cond_3

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/XMLDTDContentModelHandler;->setDTDContentModelSource(Lorg/apache/xerces/xni/parser/XMLDTDContentModelSource;)V

    :cond_3
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v3, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v2, v3, :cond_9

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fCurrentScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11NSDocScanner:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    if-eq v2, v3, :cond_4

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11NSDocScanner:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iput-object v3, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fCurrentScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    move-object v2, v0

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/document-scanner"

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11NSDocScanner:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v2, v0

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/validator/dtd"

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11NSDTDValidator:Lorg/apache/xerces/impl/dtd/XML11NSDTDValidator;

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11NSDocScanner:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11NSDTDValidator:Lorg/apache/xerces/impl/dtd/XML11NSDTDValidator;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;->setDTDValidator(Lorg/apache/xerces/impl/dtd/XMLDTDValidatorFilter;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11NSDocScanner:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11NSDTDValidator:Lorg/apache/xerces/impl/dtd/XML11NSDTDValidator;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11NSDTDValidator:Lorg/apache/xerces/impl/dtd/XML11NSDTDValidator;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11NSDocScanner:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/dtd/XML11NSDTDValidator;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11NSDTDValidator:Lorg/apache/xerces/impl/dtd/XML11NSDTDValidator;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/dtd/XML11NSDTDValidator;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v2, :cond_5

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11NSDTDValidator:Lorg/apache/xerces/impl/dtd/XML11NSDTDValidator;

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    :cond_5
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11NSDTDValidator:Lorg/apache/xerces/impl/dtd/XML11NSDTDValidator;

    iput-object v3, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v3, "http://apache.org/xml/features/validation/schema"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v2, v3, :cond_8

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    if-nez v2, :cond_6

    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-object v2, v0

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/validator/schema"

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/parsers/XML11Configuration;->addCommonComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lorg/apache/xerces/util/MessageFormatter;

    move-result-object v2

    if-nez v2, :cond_6

    new-instance v2, Lorg/apache/xerces/impl/xs/XSMessageFormatter;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lorg/apache/xerces/impl/xs/XSMessageFormatter;-><init>()V

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/xml-schema-1"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lorg/apache/xerces/util/MessageFormatter;)V

    :cond_6
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v2, :cond_7

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    :cond_7
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    iput-object v3, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    :cond_8
    return-void

    :cond_9
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DocScanner:Lorg/apache/xerces/impl/XML11DocumentScannerImpl;

    if-nez v2, :cond_a

    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DocScanner:Lorg/apache/xerces/impl/XML11DocumentScannerImpl;

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DocScanner:Lorg/apache/xerces/impl/XML11DocumentScannerImpl;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/parsers/XML11Configuration;->addXML11Component(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/impl/dtd/XML11DTDValidator;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lorg/apache/xerces/impl/dtd/XML11DTDValidator;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDValidator:Lorg/apache/xerces/impl/dtd/XML11DTDValidator;

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDValidator:Lorg/apache/xerces/impl/dtd/XML11DTDValidator;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/parsers/XML11Configuration;->addXML11Component(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    :cond_a
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fCurrentScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DocScanner:Lorg/apache/xerces/impl/XML11DocumentScannerImpl;

    if-eq v2, v3, :cond_b

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DocScanner:Lorg/apache/xerces/impl/XML11DocumentScannerImpl;

    iput-object v3, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fCurrentScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    move-object v2, v0

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/document-scanner"

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DocScanner:Lorg/apache/xerces/impl/XML11DocumentScannerImpl;

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v2, v0

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/validator/dtd"

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDValidator:Lorg/apache/xerces/impl/dtd/XML11DTDValidator;

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_b
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DocScanner:Lorg/apache/xerces/impl/XML11DocumentScannerImpl;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDValidator:Lorg/apache/xerces/impl/dtd/XML11DTDValidator;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDValidator:Lorg/apache/xerces/impl/dtd/XML11DTDValidator;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DocScanner:Lorg/apache/xerces/impl/XML11DocumentScannerImpl;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/dtd/XML11DTDValidator;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDValidator:Lorg/apache/xerces/impl/dtd/XML11DTDValidator;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/dtd/XML11DTDValidator;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v2, :cond_c

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDValidator:Lorg/apache/xerces/impl/dtd/XML11DTDValidator;

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    :cond_c
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11DTDValidator:Lorg/apache/xerces/impl/dtd/XML11DTDValidator;

    iput-object v3, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    goto/16 :goto_0
.end method

.method public getDTDContentModelHandler()Lorg/apache/xerces/xni/XMLDTDContentModelHandler;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    move-object v0, v1

    return-object v0
.end method

.method public getDTDHandler()Lorg/apache/xerces/xni/XMLDTDHandler;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v0, v1

    return-object v0
.end method

.method public getDocumentHandler()Lorg/apache/xerces/xni/XMLDocumentHandler;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v0, v1

    return-object v0
.end method

.method public getEntityResolver()Lorg/apache/xerces/xni/parser/XMLEntityResolver;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11Configuration;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    move-object v0, v1

    return-object v0
.end method

.method public getErrorHandler()Lorg/apache/xerces/xni/parser/XMLErrorHandler;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11Configuration;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xerces/xni/parser/XMLErrorHandler;

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

    move-object v2, v1

    const-string/jumbo v3, "http://apache.org/xml/features/internal/parser-settings"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fConfigUpdated:Z

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lorg/apache/xerces/util/ParserConfigurationSettings;->getFeature(Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method getFeature0(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lorg/apache/xerces/util/ParserConfigurationSettings;->getFeature(Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11Configuration;->fLocale:Ljava/util/Locale;

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

    invoke-virtual {v2}, Lorg/apache/xerces/parsers/XML11Configuration;->getLocale()Ljava/util/Locale;

    move-result-object v2

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lorg/apache/xerces/util/ParserConfigurationSettings;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

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

    iget-boolean v8, v8, Lorg/apache/xerces/parsers/XML11Configuration;->fParseInProgress:Z

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

    iput-boolean v9, v8, Lorg/apache/xerces/parsers/XML11Configuration;->fParseInProgress:Z

    move-object v8, v0

    move-object v9, v1

    :try_start_0
    invoke-virtual {v8, v9}, Lorg/apache/xerces/parsers/XML11Configuration;->setInputSource(Lorg/apache/xerces/xni/parser/XMLInputSource;)V

    move-object v8, v0

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lorg/apache/xerces/parsers/XML11Configuration;->parse(Z)Z
    :try_end_0
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Lorg/apache/xerces/parsers/XML11Configuration;->fParseInProgress:Z

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/parsers/XML11Configuration;->cleanup()V

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

    iput-boolean v9, v8, Lorg/apache/xerces/parsers/XML11Configuration;->fParseInProgress:Z

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/parsers/XML11Configuration;->cleanup()V

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

    iget-object v6, v6, Lorg/apache/xerces/parsers/XML11Configuration;->fInputSource:Lorg/apache/xerces/xni/parser/XMLInputSource;

    if-eqz v6, :cond_0

    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lorg/apache/xerces/parsers/XML11Configuration;->fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v6}, Lorg/apache/xerces/impl/validation/ValidationManager;->reset()V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/XML11Configuration;->fVersionDetector:Lorg/apache/xerces/impl/XMLVersionDetector;

    move-object v7, v0

    invoke-virtual {v6, v7}, Lorg/apache/xerces/impl/XMLVersionDetector;->reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/parsers/XML11Configuration;->resetCommon()V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/XML11Configuration;->fVersionDetector:Lorg/apache/xerces/impl/XMLVersionDetector;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fInputSource:Lorg/apache/xerces/xni/parser/XMLInputSource;

    invoke-virtual {v6, v7}, Lorg/apache/xerces/impl/XMLVersionDetector;->determineDocVersion(Lorg/apache/xerces/xni/parser/XMLInputSource;)S

    move-result v6

    move v2, v6

    move v6, v2

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/parsers/XML11Configuration;->configurePipeline()V

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/parsers/XML11Configuration;->reset()V

    :goto_0
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lorg/apache/xerces/parsers/XML11Configuration;->fConfigUpdated:Z

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/XML11Configuration;->fVersionDetector:Lorg/apache/xerces/impl/XMLVersionDetector;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11Configuration;->fCurrentScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    check-cast v7, Lorg/apache/xerces/impl/XMLEntityHandler;

    move v8, v2

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/impl/XMLVersionDetector;->startDocumentParsing(Lorg/apache/xerces/impl/XMLEntityHandler;S)V

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/apache/xerces/parsers/XML11Configuration;->fInputSource:Lorg/apache/xerces/xni/parser/XMLInputSource;
    :try_end_0
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :cond_0
    move-object v6, v0

    :try_start_1
    iget-object v6, v6, Lorg/apache/xerces/parsers/XML11Configuration;->fCurrentScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    move v7, v1

    invoke-interface {v6, v7}, Lorg/apache/xerces/xni/parser/XMLDocumentScanner;->scanDocument(Z)Z
    :try_end_1
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    move-result v6

    move v0, v6

    :goto_1
    return v0

    :cond_1
    move v6, v2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    move-object v6, v0

    :try_start_2
    invoke-direct {v6}, Lorg/apache/xerces/parsers/XML11Configuration;->initXML11Components()V

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/parsers/XML11Configuration;->configureXML11Pipeline()V

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/parsers/XML11Configuration;->resetXML11()V
    :try_end_2
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    move v0, v6

    goto :goto_1

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
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XML11Configuration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v4

    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move v5, v1

    if-lt v4, v5, :cond_0

    return-void

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XML11Configuration;->fComponents:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/xni/parser/XMLComponent;

    move-object v3, v4

    move-object v4, v3

    move-object v5, v0

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLComponent;->reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected resetCommon()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XML11Configuration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v4

    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move v5, v1

    if-lt v4, v5, :cond_0

    return-void

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XML11Configuration;->fCommonComponents:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/xni/parser/XMLComponent;

    move-object v3, v4

    move-object v4, v3

    move-object v5, v0

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLComponent;->reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected resetXML11()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v4

    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move v5, v1

    if-lt v4, v5, :cond_0

    return-void

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11Components:Ljava/util/ArrayList;

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/xni/parser/XMLComponent;

    move-object v3, v4

    move-object v4, v3

    move-object v5, v0

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLComponent;->reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public setDTDContentModelHandler(Lorg/apache/xerces/xni/XMLDTDContentModelHandler;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    return-void
.end method

.method public setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    return-void
.end method

.method public setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11Configuration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    :cond_0
    return-void
.end method

.method public setEntityResolver(Lorg/apache/xerces/xni/parser/XMLEntityResolver;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/entity-resolver"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-void
.end method

.method public setErrorHandler(Lorg/apache/xerces/xni/parser/XMLErrorHandler;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/error-handler"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v9, v0

    const/4 v10, 0x1

    iput-boolean v10, v9, Lorg/apache/xerces/parsers/XML11Configuration;->fConfigUpdated:Z

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/XML11Configuration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v3, v9

    const/4 v9, 0x0

    move v4, v9

    :goto_0
    move v9, v4

    move v10, v3

    if-lt v9, v10, :cond_0

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/XML11Configuration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v3, v9

    const/4 v9, 0x0

    move v5, v9

    :goto_1
    move v9, v5

    move v10, v3

    if-lt v9, v10, :cond_1

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v3, v9

    const/4 v9, 0x0

    move v6, v9

    :goto_2
    move v9, v6

    move v10, v3

    if-lt v9, v10, :cond_2

    move-object v9, v0

    move-object v10, v1

    move v11, v2

    invoke-super {v9, v10, v11}, Lorg/apache/xerces/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V

    return-void

    :cond_0
    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/XML11Configuration;->fComponents:Ljava/util/ArrayList;

    move v10, v4

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/xerces/xni/parser/XMLComponent;

    move-object v5, v9

    move-object v9, v5

    move-object v10, v1

    move v11, v2

    invoke-interface {v9, v10, v11}, Lorg/apache/xerces/xni/parser/XMLComponent;->setFeature(Ljava/lang/String;Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/XML11Configuration;->fCommonComponents:Ljava/util/ArrayList;

    move v10, v5

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/xerces/xni/parser/XMLComponent;

    move-object v6, v9

    move-object v9, v6

    move-object v10, v1

    move v11, v2

    invoke-interface {v9, v10, v11}, Lorg/apache/xerces/xni/parser/XMLComponent;->setFeature(Ljava/lang/String;Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11Components:Ljava/util/ArrayList;

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/xerces/xni/parser/XMLComponent;

    move-object v7, v9

    move-object v9, v7

    move-object v10, v1

    move v11, v2

    :try_start_0
    invoke-interface {v9, v10, v11}, Lorg/apache/xerces/xni/parser/XMLComponent;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :catch_0
    move-exception v9

    move-object v8, v9

    goto :goto_3
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

    iput-object v3, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fInputSource:Lorg/apache/xerces/xni/parser/XMLInputSource;

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

    iput-object v3, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fLocale:Ljava/util/Locale;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11Configuration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/XMLErrorReporter;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v9, v0

    const/4 v10, 0x1

    iput-boolean v10, v9, Lorg/apache/xerces/parsers/XML11Configuration;->fConfigUpdated:Z

    const-string/jumbo v9, "http://apache.org/xml/properties/locale"

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v9, v0

    move-object v10, v2

    check-cast v10, Ljava/util/Locale;

    invoke-virtual {v9, v10}, Lorg/apache/xerces/parsers/XML11Configuration;->setLocale(Ljava/util/Locale;)V

    :cond_0
    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/XML11Configuration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v3, v9

    const/4 v9, 0x0

    move v4, v9

    :goto_0
    move v9, v4

    move v10, v3

    if-lt v9, v10, :cond_1

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/XML11Configuration;->fCommonComponents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v3, v9

    const/4 v9, 0x0

    move v5, v9

    :goto_1
    move v9, v5

    move v10, v3

    if-lt v9, v10, :cond_2

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11Components:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v3, v9

    const/4 v9, 0x0

    move v6, v9

    :goto_2
    move v9, v6

    move v10, v3

    if-lt v9, v10, :cond_3

    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    invoke-super {v9, v10, v11}, Lorg/apache/xerces/util/ParserConfigurationSettings;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/XML11Configuration;->fComponents:Ljava/util/ArrayList;

    move v10, v4

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/xerces/xni/parser/XMLComponent;

    move-object v5, v9

    move-object v9, v5

    move-object v10, v1

    move-object v11, v2

    invoke-interface {v9, v10, v11}, Lorg/apache/xerces/xni/parser/XMLComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/XML11Configuration;->fCommonComponents:Ljava/util/ArrayList;

    move v10, v5

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/xerces/xni/parser/XMLComponent;

    move-object v6, v9

    move-object v9, v6

    move-object v10, v1

    move-object v11, v2

    invoke-interface {v9, v10, v11}, Lorg/apache/xerces/xni/parser/XMLComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/XML11Configuration;->fXML11Components:Ljava/util/ArrayList;

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/xerces/xni/parser/XMLComponent;

    move-object v7, v9

    move-object v9, v7

    move-object v10, v1

    move-object v11, v2

    :try_start_0
    invoke-interface {v9, v10, v11}, Lorg/apache/xerces/xni/parser/XMLComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :catch_0
    move-exception v9

    move-object v8, v9

    goto :goto_3
.end method
