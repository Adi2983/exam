.class public Lorg/apache/xerces/parsers/XML11DTDConfiguration;
.super Lorg/apache/xerces/util/ParserConfigurationSettings;

# interfaces
.implements Lorg/apache/xerces/xni/parser/XMLPullParserConfiguration;
.implements Lorg/apache/xerces/parsers/XML11Configurable;


# static fields
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

.field protected static final JAXP_SCHEMA_LANGUAGE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

.field protected static final JAXP_SCHEMA_SOURCE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaSource"

.field protected static final LOAD_EXTERNAL_DTD:Ljava/lang/String; = "http://apache.org/xml/features/nonvalidating/load-external-dtd"

.field protected static final NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field protected static final NAMESPACE_BINDER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/namespace-binder"

.field protected static final PRINT_EXCEPTION_STACK_TRACE:Z = false

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field protected static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"

.field protected static final XML11_DATATYPE_VALIDATOR_FACTORY:Ljava/lang/String; = "org.apache.xerces.impl.dv.dtd.XML11DTDDVFactoryImpl"

.field protected static final XMLGRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"

.field protected static final XML_STRING:Ljava/lang/String; = "http://xml.org/sax/properties/xml-string"


# instance fields
.field private f11Initialized:Z

.field protected fCommonComponents:Ljava/util/ArrayList;

.field protected fComponents:Ljava/util/ArrayList;

.field protected fConfigUpdated:Z

.field protected fCurrentDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

.field protected fCurrentDVFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

.field protected fCurrentScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

.field protected fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

.field protected fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

.field protected fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

.field protected fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

.field protected fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

.field protected fDatatypeValidatorFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

.field protected fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

.field protected fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

.field protected fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

.field protected fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

.field protected fInputSource:Lorg/apache/xerces/xni/parser/XMLInputSource;

.field protected fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

.field protected fLocale:Ljava/util/Locale;

.field protected fLocator:Lorg/apache/xerces/xni/XMLLocator;

.field protected fNamespaceScanner:Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

.field protected fNonNSDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

.field protected fNonNSScanner:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

.field protected fParseInProgress:Z

.field protected fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

.field protected fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

.field protected fVersionDetector:Lorg/apache/xerces/impl/XMLVersionDetector;

.field protected fXML11Components:Ljava/util/ArrayList;

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

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

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

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

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

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

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

    iput-object v8, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11Components:Ljava/util/ArrayList;

    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCommonComponents:Ljava/util/ArrayList;

    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fParseInProgress:Z

    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fConfigUpdated:Z

    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DatatypeFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDocScanner:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DocScanner:Lorg/apache/xerces/impl/XML11DocumentScannerImpl;

    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDTDValidator:Lorg/apache/xerces/impl/dtd/XML11NSDTDValidator;

    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDValidator:Lorg/apache/xerces/impl/dtd/XML11DTDValidator;

    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDScanner:Lorg/apache/xerces/impl/XML11DTDScannerImpl;

    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->f11Initialized:Z

    move-object v7, v0

    new-instance v8, Ljava/util/ArrayList;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fComponents:Ljava/util/ArrayList;

    move-object v7, v0

    new-instance v8, Ljava/util/ArrayList;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11Components:Ljava/util/ArrayList;

    move-object v7, v0

    new-instance v8, Ljava/util/ArrayList;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCommonComponents:Ljava/util/ArrayList;

    move-object v7, v0

    new-instance v8, Ljava/util/ArrayList;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fRecognizedFeatures:Ljava/util/ArrayList;

    move-object v7, v0

    new-instance v8, Ljava/util/ArrayList;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fRecognizedProperties:Ljava/util/ArrayList;

    move-object v7, v0

    new-instance v8, Ljava/util/HashMap;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v8, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fFeatures:Ljava/util/HashMap;

    move-object v7, v0

    new-instance v8, Ljava/util/HashMap;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v8, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fProperties:Ljava/util/HashMap;

    const/4 v7, 0x7

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

    const-string/jumbo v10, "http://xml.org/sax/features/external-general-entities"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x5

    const-string/jumbo v10, "http://xml.org/sax/features/external-parameter-entities"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x6

    const-string/jumbo v10, "http://apache.org/xml/features/internal/parser-settings"

    aput-object v10, v8, v9

    move-object v4, v7

    move-object v7, v0

    move-object v8, v4

    invoke-virtual {v7, v8}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->addRecognizedFeatures([Ljava/lang/String;)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v8, "http://xml.org/sax/features/validation"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v8, "http://xml.org/sax/features/namespaces"

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v8, "http://xml.org/sax/features/external-general-entities"

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v8, "http://xml.org/sax/features/external-parameter-entities"

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v8, "http://apache.org/xml/features/continue-after-fatal-error"

    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v8, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v8, "http://apache.org/xml/features/internal/parser-settings"

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const/16 v7, 0xf

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

    const-string/jumbo v10, "http://xml.org/sax/properties/xml-string"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/16 v9, 0xc

    const-string/jumbo v10, "http://apache.org/xml/properties/internal/grammar-pool"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/16 v9, 0xd

    const-string/jumbo v10, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/16 v9, 0xe

    const-string/jumbo v10, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    aput-object v10, v8, v9

    move-object v5, v7

    move-object v7, v0

    move-object v8, v5

    invoke-virtual {v7, v8}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->addRecognizedProperties([Ljava/lang/String;)V

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

    iput-object v8, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v8, "http://apache.org/xml/properties/internal/symbol-table"

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    if-eqz v7, :cond_1

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v8, "http://apache.org/xml/properties/internal/grammar-pool"

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    :cond_1
    move-object v7, v0

    new-instance v8, Lorg/apache/xerces/impl/XMLEntityManager;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Lorg/apache/xerces/impl/XMLEntityManager;-><init>()V

    iput-object v8, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v8, "http://apache.org/xml/properties/internal/entity-manager"

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v7, v8}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->addCommonComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    move-object v7, v0

    new-instance v8, Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Lorg/apache/xerces/impl/XMLErrorReporter;-><init>()V

    iput-object v8, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v8}, Lorg/apache/xerces/impl/XMLEntityManager;->getEntityScanner()Lorg/apache/xerces/impl/XMLEntityScanner;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/xerces/impl/XMLErrorReporter;->setDocumentLocator(Lorg/apache/xerces/xni/XMLLocator;)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v8, "http://apache.org/xml/properties/internal/error-reporter"

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v7, v8}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->addCommonComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    move-object v7, v0

    new-instance v8, Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;-><init>()V

    iput-object v8, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fNamespaceScanner:Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v8, "http://apache.org/xml/properties/internal/document-scanner"

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fNamespaceScanner:Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fNamespaceScanner:Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {v7, v8}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->addComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    move-object v7, v0

    new-instance v8, Lorg/apache/xerces/impl/XMLDTDScannerImpl;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Lorg/apache/xerces/impl/XMLDTDScannerImpl;-><init>()V

    iput-object v8, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v8, "http://apache.org/xml/properties/internal/dtd-scanner"

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    check-cast v8, Lorg/apache/xerces/xni/parser/XMLComponent;

    invoke-virtual {v7, v8}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->addComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    move-object v7, v0

    new-instance v8, Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;-><init>()V

    iput-object v8, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v8, "http://apache.org/xml/properties/internal/dtd-processor"

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-virtual {v7, v8}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->addComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    move-object v7, v0

    new-instance v8, Lorg/apache/xerces/impl/dtd/XMLNSDTDValidator;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Lorg/apache/xerces/impl/dtd/XMLNSDTDValidator;-><init>()V

    iput-object v8, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v8, "http://apache.org/xml/properties/internal/validator/dtd"

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {v7, v8}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->addComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    move-object v7, v0

    invoke-static {}, Lorg/apache/xerces/impl/dv/DTDDVFactory;->getInstance()Lorg/apache/xerces/impl/dv/DTDDVFactory;

    move-result-object v8

    iput-object v8, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDatatypeValidatorFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v8, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDatatypeValidatorFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v7, v0

    new-instance v8, Lorg/apache/xerces/impl/validation/ValidationManager;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Lorg/apache/xerces/impl/validation/ValidationManager;-><init>()V

    iput-object v8, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v8, "http://apache.org/xml/properties/internal/validation-manager"

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v7, v0

    new-instance v8, Lorg/apache/xerces/impl/XMLVersionDetector;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Lorg/apache/xerces/impl/XMLVersionDetector;-><init>()V

    iput-object v8, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fVersionDetector:Lorg/apache/xerces/impl/XMLVersionDetector;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

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

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v8, "http://www.w3.org/TR/1998/REC-xml-19980210"

    move-object v9, v6

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lorg/apache/xerces/util/MessageFormatter;)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v8, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    move-object v9, v6

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lorg/apache/xerces/util/MessageFormatter;)V

    :cond_2
    move-object v7, v0

    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->setLocale(Ljava/util/Locale;)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fConfigUpdated:Z

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

    iget-boolean v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->f11Initialized:Z

    if-nez v1, :cond_0

    move-object v1, v0

    const-string/jumbo v2, "org.apache.xerces.impl.dv.dtd.XML11DTDDVFactoryImpl"

    invoke-static {v2}, Lorg/apache/xerces/impl/dv/DTDDVFactory;->getInstance(Ljava/lang/String;)Lorg/apache/xerces/impl/dv/DTDDVFactory;

    move-result-object v2

    iput-object v2, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DatatypeFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/impl/XML11DTDScannerImpl;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/apache/xerces/impl/XML11DTDScannerImpl;-><init>()V

    iput-object v2, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDScanner:Lorg/apache/xerces/impl/XML11DTDScannerImpl;

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDScanner:Lorg/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->addXML11Component(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;-><init>()V

    iput-object v2, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->addXML11Component(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;-><init>()V

    iput-object v2, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDocScanner:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDocScanner:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->addXML11Component(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/impl/dtd/XML11NSDTDValidator;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/apache/xerces/impl/dtd/XML11NSDTDValidator;-><init>()V

    iput-object v2, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDTDValidator:Lorg/apache/xerces/impl/dtd/XML11NSDTDValidator;

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDTDValidator:Lorg/apache/xerces/impl/dtd/XML11NSDTDValidator;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->addXML11Component(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->f11Initialized:Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected addCommonComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCommonComponents:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCommonComponents:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->addRecognizedParamsAndSetDefaults(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    goto :goto_0
.end method

.method protected addComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fComponents:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fComponents:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->addRecognizedParamsAndSetDefaults(Lorg/apache/xerces/xni/parser/XMLComponent;)V

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

    invoke-virtual {v7, v8}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->addRecognizedFeatures([Ljava/lang/String;)V

    move-object v7, v1

    invoke-interface {v7}, Lorg/apache/xerces/xni/parser/XMLComponent;->getRecognizedProperties()[Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    move-object v7, v0

    move-object v8, v3

    invoke-virtual {v7, v8}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->addRecognizedProperties([Ljava/lang/String;)V

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

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fFeatures:Ljava/util/HashMap;

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fFeatures:Ljava/util/HashMap;

    move-object v8, v5

    move-object v9, v6

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fConfigUpdated:Z

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

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fProperties:Ljava/util/HashMap;

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fProperties:Ljava/util/HashMap;

    move-object v8, v5

    move-object v9, v6

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v7, v0

    const/4 v8, 0x1

    iput-boolean v8, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fConfigUpdated:Z

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method protected addXML11Component(Lorg/apache/xerces/xni/parser/XMLComponent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11Components:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11Components:Ljava/util/ArrayList;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->addRecognizedParamsAndSetDefaults(Lorg/apache/xerces/xni/parser/XMLComponent;)V

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

    if-eqz v4, :cond_6

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

    const-string/jumbo v5, "internal/parser-settings"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_6

    move-object v4, v1

    const-string/jumbo v5, "internal/parser-settings"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

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

    :cond_6
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

    if-eqz v4, :cond_0

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
    move-object v4, v1

    const-string/jumbo v5, "http://xml.org/sax/properties/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

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

    if-ne v4, v5, :cond_1

    move-object v4, v1

    const-string/jumbo v5, "xml-string"

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
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Lorg/apache/xerces/util/ParserConfigurationSettings;->checkProperty(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public cleanup()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fEntityManager:Lorg/apache/xerces/impl/XMLEntityManager;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/XMLEntityManager;->closeReaders()V

    return-void
.end method

.method protected configurePipeline()V
    .locals 5

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentDVFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDatatypeValidatorFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    if-eq v1, v2, :cond_0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDatatypeValidatorFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    iput-object v2, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentDVFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    move-object v1, v0

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentDVFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    invoke-virtual {v1, v2, v3}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    if-eq v1, v2, :cond_1

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    iput-object v2, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    move-object v1, v0

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/dtd-scanner"

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {v1, v2, v3}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v1, v0

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/dtd-processor"

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-virtual {v1, v2, v3}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-interface {v1, v2}, Lorg/apache/xerces/xni/parser/XMLDTDScanner;->setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDSource(Lorg/apache/xerces/xni/parser/XMLDTDSource;)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v1, :cond_2

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-interface {v1, v2}, Lorg/apache/xerces/xni/XMLDTDHandler;->setDTDSource(Lorg/apache/xerces/xni/parser/XMLDTDSource;)V

    :cond_2
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-interface {v1, v2}, Lorg/apache/xerces/xni/parser/XMLDTDScanner;->setDTDContentModelHandler(Lorg/apache/xerces/xni/XMLDTDContentModelHandler;)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDContentModelSource(Lorg/apache/xerces/xni/parser/XMLDTDContentModelSource;)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;->setDTDContentModelHandler(Lorg/apache/xerces/xni/XMLDTDContentModelHandler;)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v1, :cond_3

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDProcessor:Lorg/apache/xerces/impl/dtd/XMLDTDProcessor;

    invoke-interface {v1, v2}, Lorg/apache/xerces/xni/XMLDTDContentModelHandler;->setDTDContentModelSource(Lorg/apache/xerces/xni/parser/XMLDTDContentModelSource;)V

    :cond_3
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v2, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_6

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fNamespaceScanner:Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

    if-eq v1, v2, :cond_4

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fNamespaceScanner:Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

    iput-object v2, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    move-object v1, v0

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/document-scanner"

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fNamespaceScanner:Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {v1, v2, v3}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v1, v0

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/validator/dtd"

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {v1, v2, v3}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fNamespaceScanner:Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;->setDTDValidator(Lorg/apache/xerces/impl/dtd/XMLDTDValidatorFilter;)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fNamespaceScanner:Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fNamespaceScanner:Lorg/apache/xerces/impl/XMLNSDocumentScannerImpl;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_5

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-interface {v1, v2}, Lorg/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    :cond_5
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    iput-object v2, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    :goto_0
    return-void

    :cond_6
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSScanner:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    if-nez v1, :cond_7

    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;-><init>()V

    iput-object v2, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSScanner:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;-><init>()V

    iput-object v2, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSScanner:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->addComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->addComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    :cond_7
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSScanner:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    if-eq v1, v2, :cond_8

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSScanner:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    iput-object v2, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    move-object v1, v0

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/document-scanner"

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSScanner:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v1, v2, v3}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v1, v0

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/validator/dtd"

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {v1, v2, v3}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSScanner:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/XMLDocumentScannerImpl;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSScanner:Lorg/apache/xerces/impl/XMLDocumentScannerImpl;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_9

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    invoke-interface {v1, v2}, Lorg/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    :cond_9
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fNonNSDTDValidator:Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    iput-object v2, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    goto :goto_0
.end method

.method protected configureXML11Pipeline()V
    .locals 5

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentDVFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DatatypeFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    if-eq v1, v2, :cond_0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DatatypeFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    iput-object v2, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentDVFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    move-object v1, v0

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentDVFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    invoke-virtual {v1, v2, v3}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDScanner:Lorg/apache/xerces/impl/XML11DTDScannerImpl;

    if-eq v1, v2, :cond_1

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDScanner:Lorg/apache/xerces/impl/XML11DTDScannerImpl;

    iput-object v2, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    move-object v1, v0

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/dtd-scanner"

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentDTDScanner:Lorg/apache/xerces/xni/parser/XMLDTDScanner;

    invoke-virtual {v1, v2, v3}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v1, v0

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/dtd-processor"

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-virtual {v1, v2, v3}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDScanner:Lorg/apache/xerces/impl/XML11DTDScannerImpl;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/XML11DTDScannerImpl;->setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDScanner:Lorg/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;->setDTDSource(Lorg/apache/xerces/xni/parser/XMLDTDSource;)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;->setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    if-eqz v1, :cond_2

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-interface {v1, v2}, Lorg/apache/xerces/xni/XMLDTDHandler;->setDTDSource(Lorg/apache/xerces/xni/parser/XMLDTDSource;)V

    :cond_2
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDScanner:Lorg/apache/xerces/impl/XML11DTDScannerImpl;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/XML11DTDScannerImpl;->setDTDContentModelHandler(Lorg/apache/xerces/xni/XMLDTDContentModelHandler;)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDScanner:Lorg/apache/xerces/impl/XML11DTDScannerImpl;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;->setDTDContentModelSource(Lorg/apache/xerces/xni/parser/XMLDTDContentModelSource;)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;->setDTDContentModelHandler(Lorg/apache/xerces/xni/XMLDTDContentModelHandler;)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    if-eqz v1, :cond_3

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDProcessor:Lorg/apache/xerces/impl/dtd/XML11DTDProcessor;

    invoke-interface {v1, v2}, Lorg/apache/xerces/xni/XMLDTDContentModelHandler;->setDTDContentModelSource(Lorg/apache/xerces/xni/parser/XMLDTDContentModelSource;)V

    :cond_3
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v2, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v1, v2, :cond_6

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDocScanner:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    if-eq v1, v2, :cond_4

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDocScanner:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    iput-object v2, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    move-object v1, v0

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/document-scanner"

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDocScanner:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-virtual {v1, v2, v3}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v1, v0

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/validator/dtd"

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDTDValidator:Lorg/apache/xerces/impl/dtd/XML11NSDTDValidator;

    invoke-virtual {v1, v2, v3}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDocScanner:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDTDValidator:Lorg/apache/xerces/impl/dtd/XML11NSDTDValidator;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;->setDTDValidator(Lorg/apache/xerces/impl/dtd/XMLDTDValidatorFilter;)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDocScanner:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDTDValidator:Lorg/apache/xerces/impl/dtd/XML11NSDTDValidator;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDTDValidator:Lorg/apache/xerces/impl/dtd/XML11NSDTDValidator;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDocScanner:Lorg/apache/xerces/impl/XML11NSDocumentScannerImpl;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/dtd/XML11NSDTDValidator;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDTDValidator:Lorg/apache/xerces/impl/dtd/XML11NSDTDValidator;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/dtd/XML11NSDTDValidator;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_5

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDTDValidator:Lorg/apache/xerces/impl/dtd/XML11NSDTDValidator;

    invoke-interface {v1, v2}, Lorg/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    :cond_5
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11NSDTDValidator:Lorg/apache/xerces/impl/dtd/XML11NSDTDValidator;

    iput-object v2, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    :goto_0
    return-void

    :cond_6
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DocScanner:Lorg/apache/xerces/impl/XML11DocumentScannerImpl;

    if-nez v1, :cond_7

    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;-><init>()V

    iput-object v2, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DocScanner:Lorg/apache/xerces/impl/XML11DocumentScannerImpl;

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DocScanner:Lorg/apache/xerces/impl/XML11DocumentScannerImpl;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->addXML11Component(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/impl/dtd/XML11DTDValidator;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/apache/xerces/impl/dtd/XML11DTDValidator;-><init>()V

    iput-object v2, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDValidator:Lorg/apache/xerces/impl/dtd/XML11DTDValidator;

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDValidator:Lorg/apache/xerces/impl/dtd/XML11DTDValidator;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->addXML11Component(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    :cond_7
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DocScanner:Lorg/apache/xerces/impl/XML11DocumentScannerImpl;

    if-eq v1, v2, :cond_8

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DocScanner:Lorg/apache/xerces/impl/XML11DocumentScannerImpl;

    iput-object v2, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    move-object v1, v0

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/document-scanner"

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DocScanner:Lorg/apache/xerces/impl/XML11DocumentScannerImpl;

    invoke-virtual {v1, v2, v3}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v1, v0

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/validator/dtd"

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDValidator:Lorg/apache/xerces/impl/dtd/XML11DTDValidator;

    invoke-virtual {v1, v2, v3}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_8
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DocScanner:Lorg/apache/xerces/impl/XML11DocumentScannerImpl;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDValidator:Lorg/apache/xerces/impl/dtd/XML11DTDValidator;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/XML11DocumentScannerImpl;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDValidator:Lorg/apache/xerces/impl/dtd/XML11DTDValidator;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DocScanner:Lorg/apache/xerces/impl/XML11DocumentScannerImpl;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/dtd/XML11DTDValidator;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDValidator:Lorg/apache/xerces/impl/dtd/XML11DTDValidator;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/dtd/XML11DTDValidator;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v1, :cond_9

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDValidator:Lorg/apache/xerces/impl/dtd/XML11DTDValidator;

    invoke-interface {v1, v2}, Lorg/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    :cond_9
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11DTDValidator:Lorg/apache/xerces/impl/dtd/XML11DTDValidator;

    iput-object v2, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    goto :goto_0
.end method

.method public getDTDContentModelHandler()Lorg/apache/xerces/xni/XMLDTDContentModelHandler;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    move-object v0, v1

    return-object v0
.end method

.method public getDTDHandler()Lorg/apache/xerces/xni/XMLDTDHandler;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v0, v1

    return-object v0
.end method

.method public getDocumentHandler()Lorg/apache/xerces/xni/XMLDocumentHandler;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v0, v1

    return-object v0
.end method

.method public getEntityResolver()Lorg/apache/xerces/xni/parser/XMLEntityResolver;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fProperties:Ljava/util/HashMap;

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

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fProperties:Ljava/util/HashMap;

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

    iget-boolean v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fConfigUpdated:Z

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

.method public getLocale()Ljava/util/Locale;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fLocale:Ljava/util/Locale;

    move-object v0, v1

    return-object v0
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

    iget-boolean v8, v8, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fParseInProgress:Z

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

    iput-boolean v9, v8, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fParseInProgress:Z

    move-object v8, v0

    move-object v9, v1

    :try_start_0
    invoke-virtual {v8, v9}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->setInputSource(Lorg/apache/xerces/xni/parser/XMLInputSource;)V

    move-object v8, v0

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->parse(Z)Z
    :try_end_0
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fParseInProgress:Z

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->cleanup()V

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

    iput-boolean v9, v8, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fParseInProgress:Z

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->cleanup()V

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

    iget-object v6, v6, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fInputSource:Lorg/apache/xerces/xni/parser/XMLInputSource;

    if-eqz v6, :cond_0

    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v6}, Lorg/apache/xerces/impl/validation/ValidationManager;->reset()V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fVersionDetector:Lorg/apache/xerces/impl/XMLVersionDetector;

    move-object v7, v0

    invoke-virtual {v6, v7}, Lorg/apache/xerces/impl/XMLVersionDetector;->reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->resetCommon()V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fVersionDetector:Lorg/apache/xerces/impl/XMLVersionDetector;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fInputSource:Lorg/apache/xerces/xni/parser/XMLInputSource;

    invoke-virtual {v6, v7}, Lorg/apache/xerces/impl/XMLVersionDetector;->determineDocVersion(Lorg/apache/xerces/xni/parser/XMLInputSource;)S

    move-result v6

    move v2, v6

    move v6, v2

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->configurePipeline()V

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->reset()V

    :goto_0
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fConfigUpdated:Z

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fVersionDetector:Lorg/apache/xerces/impl/XMLVersionDetector;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

    check-cast v7, Lorg/apache/xerces/impl/XMLEntityHandler;

    move v8, v2

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/impl/XMLVersionDetector;->startDocumentParsing(Lorg/apache/xerces/impl/XMLEntityHandler;S)V

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fInputSource:Lorg/apache/xerces/xni/parser/XMLInputSource;
    :try_end_0
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :cond_0
    move-object v6, v0

    :try_start_1
    iget-object v6, v6, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCurrentScanner:Lorg/apache/xerces/xni/parser/XMLDocumentScanner;

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
    invoke-direct {v6}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->initXML11Components()V

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->configureXML11Pipeline()V

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->resetXML11()V
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

    iget-object v4, v4, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fComponents:Ljava/util/ArrayList;

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

    iget-object v4, v4, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fComponents:Ljava/util/ArrayList;

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

    iget-object v4, v4, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCommonComponents:Ljava/util/ArrayList;

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

    iget-object v4, v4, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCommonComponents:Ljava/util/ArrayList;

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

    iget-object v4, v4, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11Components:Ljava/util/ArrayList;

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

    iget-object v4, v4, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11Components:Ljava/util/ArrayList;

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

    iput-object v3, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    return-void
.end method

.method public setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    return-void
.end method

.method public setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    :cond_0
    return-void
.end method

.method public setEntityResolver(Lorg/apache/xerces/xni/parser/XMLEntityResolver;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fProperties:Ljava/util/HashMap;

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

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fProperties:Ljava/util/HashMap;

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

    iput-boolean v10, v9, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fConfigUpdated:Z

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fComponents:Ljava/util/ArrayList;

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

    iget-object v9, v9, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCommonComponents:Ljava/util/ArrayList;

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

    iget-object v9, v9, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11Components:Ljava/util/ArrayList;

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

    iget-object v9, v9, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fComponents:Ljava/util/ArrayList;

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

    iget-object v9, v9, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCommonComponents:Ljava/util/ArrayList;

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

    iget-object v9, v9, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11Components:Ljava/util/ArrayList;

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

    iput-object v3, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fInputSource:Lorg/apache/xerces/xni/parser/XMLInputSource;

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

    iput-object v3, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fLocale:Ljava/util/Locale;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

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

    iput-boolean v10, v9, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fConfigUpdated:Z

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fComponents:Ljava/util/ArrayList;

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

    iget-object v9, v9, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCommonComponents:Ljava/util/ArrayList;

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

    iget-object v9, v9, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11Components:Ljava/util/ArrayList;

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

    move-object v11, v2

    invoke-super {v9, v10, v11}, Lorg/apache/xerces/util/ParserConfigurationSettings;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fComponents:Ljava/util/ArrayList;

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

    :cond_1
    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fCommonComponents:Ljava/util/ArrayList;

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

    :cond_2
    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/XML11DTDConfiguration;->fXML11Components:Ljava/util/ArrayList;

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
