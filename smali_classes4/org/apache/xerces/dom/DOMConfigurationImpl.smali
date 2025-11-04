.class public Lorg/apache/xerces/dom/DOMConfigurationImpl;
.super Lorg/apache/xerces/util/ParserConfigurationSettings;

# interfaces
.implements Lorg/apache/xerces/xni/parser/XMLParserConfiguration;
.implements Lorg/w3c/dom/DOMConfiguration;


# static fields
.field protected static final BALANCE_SYNTAX_TREES:Ljava/lang/String; = "http://apache.org/xml/features/validation/balance-syntax-trees"

.field protected static final CDATA:S = 0x8s

.field protected static final COMMENTS:S = 0x20s

.field protected static final DISALLOW_DOCTYPE_DECL_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/disallow-doctype-decl"

.field protected static final DTD_VALIDATOR_FACTORY_PROPERTY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/datatype-validator-factory"

.field protected static final DTD_VALIDATOR_PROPERTY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/dtd"

.field protected static final DTNORMALIZATION:S = 0x2s

.field protected static final DYNAMIC_VALIDATION:Ljava/lang/String; = "http://apache.org/xml/features/validation/dynamic"

.field protected static final ENTITIES:S = 0x4s

.field protected static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field protected static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field protected static final ERROR_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-handler"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final GENERATE_SYNTHETIC_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/generate-synthetic-annotations"

.field protected static final GRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"

.field protected static final HONOUR_ALL_SCHEMALOCATIONS:Ljava/lang/String; = "http://apache.org/xml/features/honour-all-schemaLocations"

.field protected static final INFOSET_FALSE_PARAMS:S = 0xes

.field protected static final INFOSET_MASK:S = 0x32fs

.field protected static final INFOSET_TRUE_PARAMS:S = 0x321s

.field protected static final JAXP_SCHEMA_LANGUAGE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

.field protected static final JAXP_SCHEMA_SOURCE:Ljava/lang/String; = "http://java.sun.com/xml/jaxp/properties/schemaSource"

.field protected static final NAMESPACES:S = 0x1s

.field protected static final NAMESPACE_GROWTH:Ljava/lang/String; = "http://apache.org/xml/features/namespace-growth"

.field protected static final NORMALIZE_DATA:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/normalized-value"

.field protected static final NSDECL:S = 0x200s

.field protected static final PSVI:S = 0x80s

.field protected static final SCHEMA:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"

.field protected static final SCHEMA_DV_FACTORY:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation/schema/dv-factory"

.field protected static final SCHEMA_ELEMENT_DEFAULT:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/element-default"

.field protected static final SCHEMA_FULL_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema-full-checking"

.field protected static final SCHEMA_LOCATION:Ljava/lang/String; = "http://apache.org/xml/properties/schema/external-schemaLocation"

.field protected static final SCHEMA_NONS_LOCATION:Ljava/lang/String; = "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

.field protected static final SECURITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"

.field protected static final SEND_PSVI:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema/augment-psvi"

.field protected static final SPLITCDATA:S = 0x10s

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final TOLERATE_DUPLICATES:Ljava/lang/String; = "http://apache.org/xml/features/internal/tolerate-duplicates"

.field protected static final USE_GRAMMAR_POOL_ONLY:Ljava/lang/String; = "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

.field protected static final VALIDATE:S = 0x40s

.field protected static final VALIDATE_ANNOTATIONS:Ljava/lang/String; = "http://apache.org/xml/features/validate-annotations"

.field protected static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"

.field protected static final WARN_ON_DUPLICATE_ATTDEF:Ljava/lang/String; = "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

.field protected static final WELLFORMED:S = 0x100s

.field protected static final XERCES_NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field protected static final XERCES_VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field protected static final XML11_DATATYPE_VALIDATOR_FACTORY:Ljava/lang/String; = "org.apache.xerces.impl.dv.dtd.XML11DTDDVFactoryImpl"

.field protected static final XML_STRING:Ljava/lang/String; = "http://xml.org/sax/properties/xml-string"


# instance fields
.field protected fComponents:Ljava/util/ArrayList;

.field protected fCurrentDVFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

.field protected fDatatypeValidatorFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

.field fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

.field protected final fErrorHandlerWrapper:Lorg/apache/xerces/util/DOMErrorHandlerWrapper;

.field protected fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

.field protected fLocale:Ljava/util/Locale;

.field private fRecognizedParameters:Lorg/w3c/dom/DOMStringList;

.field private fSchemaLocation:Ljava/lang/String;

.field protected fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

.field protected fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

.field protected fXML11DatatypeFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

.field protected features:S


# direct methods
.method protected constructor <init>()V
    .locals 4

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/apache/xerces/dom/DOMConfigurationImpl;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/xerces/util/SymbolTable;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/dom/DOMConfigurationImpl;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v8, v0

    move-object v9, v2

    invoke-direct {v8, v9}, Lorg/apache/xerces/util/ParserConfigurationSettings;-><init>(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    move-object v8, v0

    const/4 v9, 0x0

    iput-short v9, v8, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    move-object v8, v0

    new-instance v9, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;-><init>()V

    iput-object v9, v8, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fErrorHandlerWrapper:Lorg/apache/xerces/util/DOMErrorHandlerWrapper;

    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fSchemaLocation:Ljava/lang/String;

    move-object v8, v0

    new-instance v9, Ljava/util/ArrayList;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v8, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fRecognizedFeatures:Ljava/util/ArrayList;

    move-object v8, v0

    new-instance v9, Ljava/util/ArrayList;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v8, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fRecognizedProperties:Ljava/util/ArrayList;

    move-object v8, v0

    new-instance v9, Ljava/util/HashMap;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v9, v8, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fFeatures:Ljava/util/HashMap;

    move-object v8, v0

    new-instance v9, Ljava/util/HashMap;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    iput-object v9, v8, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fProperties:Ljava/util/HashMap;

    const/16 v8, 0x12

    new-array v8, v8, [Ljava/lang/String;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    const-string/jumbo v11, "http://xml.org/sax/features/validation"

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    const-string/jumbo v11, "http://xml.org/sax/features/namespaces"

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x2

    const-string/jumbo v11, "http://apache.org/xml/features/validation/schema"

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x3

    const-string/jumbo v11, "http://apache.org/xml/features/validation/schema-full-checking"

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x4

    const-string/jumbo v11, "http://apache.org/xml/features/validation/dynamic"

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x5

    const-string/jumbo v11, "http://apache.org/xml/features/validation/schema/normalized-value"

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x6

    const-string/jumbo v11, "http://apache.org/xml/features/validation/schema/element-default"

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x7

    const-string/jumbo v11, "http://apache.org/xml/features/validation/schema/augment-psvi"

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/16 v10, 0x8

    const-string/jumbo v11, "http://apache.org/xml/features/generate-synthetic-annotations"

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/16 v10, 0x9

    const-string/jumbo v11, "http://apache.org/xml/features/validate-annotations"

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/16 v10, 0xa

    const-string/jumbo v11, "http://apache.org/xml/features/honour-all-schemaLocations"

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/16 v10, 0xb

    const-string/jumbo v11, "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/16 v10, 0xc

    const-string/jumbo v11, "http://apache.org/xml/features/disallow-doctype-decl"

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/16 v10, 0xd

    const-string/jumbo v11, "http://apache.org/xml/features/validation/balance-syntax-trees"

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/16 v10, 0xe

    const-string/jumbo v11, "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/16 v10, 0xf

    const-string/jumbo v11, "http://apache.org/xml/features/internal/parser-settings"

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/16 v10, 0x10

    const-string/jumbo v11, "http://apache.org/xml/features/namespace-growth"

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/16 v10, 0x11

    const-string/jumbo v11, "http://apache.org/xml/features/internal/tolerate-duplicates"

    aput-object v11, v9, v10

    move-object v3, v8

    move-object v8, v0

    move-object v9, v3

    invoke-virtual {v8, v9}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->addRecognizedFeatures([Ljava/lang/String;)V

    move-object v8, v0

    const-string/jumbo v9, "http://xml.org/sax/features/validation"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    move-object v8, v0

    const-string/jumbo v9, "http://apache.org/xml/features/validation/schema"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    move-object v8, v0

    const-string/jumbo v9, "http://apache.org/xml/features/validation/schema-full-checking"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    move-object v8, v0

    const-string/jumbo v9, "http://apache.org/xml/features/validation/dynamic"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    move-object v8, v0

    const-string/jumbo v9, "http://apache.org/xml/features/validation/schema/normalized-value"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    move-object v8, v0

    const-string/jumbo v9, "http://apache.org/xml/features/validation/schema/element-default"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    move-object v8, v0

    const-string/jumbo v9, "http://xml.org/sax/features/namespaces"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    move-object v8, v0

    const-string/jumbo v9, "http://apache.org/xml/features/validation/schema/augment-psvi"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    move-object v8, v0

    const-string/jumbo v9, "http://apache.org/xml/features/generate-synthetic-annotations"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    move-object v8, v0

    const-string/jumbo v9, "http://apache.org/xml/features/validate-annotations"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    move-object v8, v0

    const-string/jumbo v9, "http://apache.org/xml/features/honour-all-schemaLocations"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    move-object v8, v0

    const-string/jumbo v9, "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    move-object v8, v0

    const-string/jumbo v9, "http://apache.org/xml/features/disallow-doctype-decl"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    move-object v8, v0

    const-string/jumbo v9, "http://apache.org/xml/features/validation/balance-syntax-trees"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    move-object v8, v0

    const-string/jumbo v9, "http://apache.org/xml/features/validation/warn-on-duplicate-attdef"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    move-object v8, v0

    const-string/jumbo v9, "http://apache.org/xml/features/internal/parser-settings"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    move-object v8, v0

    const-string/jumbo v9, "http://apache.org/xml/features/namespace-growth"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    move-object v8, v0

    const-string/jumbo v9, "http://apache.org/xml/features/internal/tolerate-duplicates"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    const/16 v8, 0x10

    new-array v8, v8, [Ljava/lang/String;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    const-string/jumbo v11, "http://xml.org/sax/properties/xml-string"

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    const-string/jumbo v11, "http://apache.org/xml/properties/internal/symbol-table"

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x2

    const-string/jumbo v11, "http://apache.org/xml/properties/internal/error-handler"

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x3

    const-string/jumbo v11, "http://apache.org/xml/properties/internal/entity-resolver"

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x4

    const-string/jumbo v11, "http://apache.org/xml/properties/internal/error-reporter"

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x5

    const-string/jumbo v11, "http://apache.org/xml/properties/internal/entity-manager"

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x6

    const-string/jumbo v11, "http://apache.org/xml/properties/internal/validation-manager"

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x7

    const-string/jumbo v11, "http://apache.org/xml/properties/internal/grammar-pool"

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/16 v10, 0x8

    const-string/jumbo v11, "http://apache.org/xml/properties/security-manager"

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/16 v10, 0x9

    const-string/jumbo v11, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/16 v10, 0xa

    const-string/jumbo v11, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/16 v10, 0xb

    const-string/jumbo v11, "http://apache.org/xml/properties/schema/external-schemaLocation"

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/16 v10, 0xc

    const-string/jumbo v11, "http://apache.org/xml/properties/schema/external-noNamespaceSchemaLocation"

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/16 v10, 0xd

    const-string/jumbo v11, "http://apache.org/xml/properties/internal/validator/dtd"

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/16 v10, 0xe

    const-string/jumbo v11, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/16 v10, 0xf

    const-string/jumbo v11, "http://apache.org/xml/properties/internal/validation/schema/dv-factory"

    aput-object v11, v9, v10

    move-object v4, v8

    move-object v8, v0

    move-object v9, v4

    invoke-virtual {v8, v9}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->addRecognizedProperties([Ljava/lang/String;)V

    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget-short v9, v9, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/4 v10, 0x1

    or-int/lit8 v9, v9, 0x1

    int-to-short v9, v9

    iput-short v9, v8, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget-short v9, v9, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/4 v10, 0x4

    or-int/lit8 v9, v9, 0x4

    int-to-short v9, v9

    iput-short v9, v8, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget-short v9, v9, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/16 v10, 0x20

    or-int/lit8 v9, v9, 0x20

    int-to-short v9, v9

    iput-short v9, v8, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget-short v9, v9, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/16 v10, 0x8

    or-int/lit8 v9, v9, 0x8

    int-to-short v9, v9

    iput-short v9, v8, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget-short v9, v9, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/16 v10, 0x10

    or-int/lit8 v9, v9, 0x10

    int-to-short v9, v9

    iput-short v9, v8, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget-short v9, v9, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/16 v10, 0x100

    or-int/lit16 v9, v9, 0x100

    int-to-short v9, v9

    iput-short v9, v8, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget-short v9, v9, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/16 v10, 0x200

    or-int/lit16 v9, v9, 0x200

    int-to-short v9, v9

    iput-short v9, v8, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    move-object v8, v1

    if-nez v8, :cond_0

    new-instance v8, Lorg/apache/xerces/util/SymbolTable;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Lorg/apache/xerces/util/SymbolTable;-><init>()V

    move-object v1, v8

    :cond_0
    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v8, v0

    new-instance v9, Ljava/util/ArrayList;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v8, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fComponents:Ljava/util/ArrayList;

    move-object v8, v0

    const-string/jumbo v9, "http://apache.org/xml/properties/internal/symbol-table"

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v8, v9, v10}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v8, v0

    new-instance v9, Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Lorg/apache/xerces/impl/XMLErrorReporter;-><init>()V

    iput-object v9, v8, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object v8, v0

    const-string/jumbo v9, "http://apache.org/xml/properties/internal/error-reporter"

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v8, v9, v10}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v8, v9}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->addComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    move-object v8, v0

    invoke-static {}, Lorg/apache/xerces/impl/dv/DTDDVFactory;->getInstance()Lorg/apache/xerces/impl/dv/DTDDVFactory;

    move-result-object v9

    iput-object v9, v8, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fDatatypeValidatorFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    move-object v8, v0

    const-string/jumbo v9, "org.apache.xerces.impl.dv.dtd.XML11DTDDVFactoryImpl"

    invoke-static {v9}, Lorg/apache/xerces/impl/dv/DTDDVFactory;->getInstance(Ljava/lang/String;)Lorg/apache/xerces/impl/dv/DTDDVFactory;

    move-result-object v9

    iput-object v9, v8, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fXML11DatatypeFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fDatatypeValidatorFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    iput-object v9, v8, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fCurrentDVFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    move-object v8, v0

    const-string/jumbo v9, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fCurrentDVFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    invoke-virtual {v8, v9, v10}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v8, Lorg/apache/xerces/impl/XMLEntityManager;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Lorg/apache/xerces/impl/XMLEntityManager;-><init>()V

    move-object v5, v8

    move-object v8, v0

    const-string/jumbo v9, "http://apache.org/xml/properties/internal/entity-manager"

    move-object v10, v5

    invoke-virtual {v8, v9, v10}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v8, v0

    move-object v9, v5

    invoke-virtual {v8, v9}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->addComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V

    move-object v8, v0

    move-object v9, v0

    invoke-virtual {v9}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->createValidationManager()Lorg/apache/xerces/impl/validation/ValidationManager;

    move-result-object v9

    iput-object v9, v8, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    move-object v8, v0

    const-string/jumbo v9, "http://apache.org/xml/properties/internal/validation-manager"

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v8, v9, v10}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v9, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v8, v9}, Lorg/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lorg/apache/xerces/util/MessageFormatter;

    move-result-object v8

    if-nez v8, :cond_1

    new-instance v8, Lorg/apache/xerces/impl/msg/XMLMessageFormatter;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Lorg/apache/xerces/impl/msg/XMLMessageFormatter;-><init>()V

    move-object v6, v8

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v9, "http://www.w3.org/TR/1998/REC-xml-19980210"

    move-object v10, v6

    invoke-virtual {v8, v9, v10}, Lorg/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lorg/apache/xerces/util/MessageFormatter;)V

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v9, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    move-object v10, v6

    invoke-virtual {v8, v9, v10}, Lorg/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lorg/apache/xerces/util/MessageFormatter;)V

    :cond_1
    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v9, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v8, v9}, Lorg/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lorg/apache/xerces/util/MessageFormatter;

    move-result-object v8

    if-nez v8, :cond_2

    const/4 v8, 0x0

    move-object v6, v8

    :try_start_0
    const-string/jumbo v8, "org.apache.xerces.impl.xs.XSMessageFormatter"

    invoke-static {}, Lorg/apache/xerces/dom/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lorg/apache/xerces/dom/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/xerces/util/MessageFormatter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v8

    :goto_0
    move-object v8, v6

    if-eqz v8, :cond_2

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v9, "http://www.w3.org/TR/xml-schema-1"

    move-object v10, v6

    invoke-virtual {v8, v9, v10}, Lorg/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lorg/apache/xerces/util/MessageFormatter;)V

    :cond_2
    move-object v8, v0

    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setLocale(Ljava/util/Locale;)V
    :try_end_1
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v8

    move-object v7, v8

    goto :goto_0

    :catch_1
    move-exception v8

    move-object v6, v8

    goto :goto_1
.end method

.method private static newFeatureNotFoundError(Ljava/lang/String;)Lorg/w3c/dom/DOMException;
    .locals 9

    move-object v0, p0

    const-string/jumbo v2, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v3, "FEATURE_NOT_FOUND"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    new-instance v2, Lorg/w3c/dom/DOMException;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const/16 v4, 0x8

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    move-object v0, v2

    return-object v0
.end method

.method private static newFeatureNotSupportedError(Ljava/lang/String;)Lorg/w3c/dom/DOMException;
    .locals 9

    move-object v0, p0

    const-string/jumbo v2, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v3, "FEATURE_NOT_SUPPORTED"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    new-instance v2, Lorg/w3c/dom/DOMException;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const/16 v4, 0x9

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    move-object v0, v2

    return-object v0
.end method

.method private static newTypeMismatchError(Ljava/lang/String;)Lorg/w3c/dom/DOMException;
    .locals 9

    move-object v0, p0

    const-string/jumbo v2, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v3, "TYPE_MISMATCH_ERR"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    new-instance v2, Lorg/w3c/dom/DOMException;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const/16 v4, 0x11

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    move-object v0, v2

    return-object v0
.end method


# virtual methods
.method protected addComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fComponents:Ljava/util/ArrayList;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fComponents:Ljava/util/ArrayList;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v4

    move-object v4, v1

    invoke-interface {v4}, Lorg/apache/xerces/xni/parser/XMLComponent;->getRecognizedFeatures()[Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->addRecognizedFeatures([Ljava/lang/String;)V

    move-object v4, v1

    invoke-interface {v4}, Lorg/apache/xerces/xni/parser/XMLComponent;->getRecognizedProperties()[Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->addRecognizedProperties([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public canSetParameter(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    if-nez v3, :cond_0

    const/4 v3, 0x1

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move-object v3, v2

    instance-of v3, v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_9

    move-object v3, v1

    const-string/jumbo v4, "comments"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v1

    const-string/jumbo v4, "datatype-normalization"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v1

    const-string/jumbo v4, "cdata-sections"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v1

    const-string/jumbo v4, "entities"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v1

    const-string/jumbo v4, "split-cdata-sections"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v1

    const-string/jumbo v4, "namespaces"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v1

    const-string/jumbo v4, "validate"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v1

    const-string/jumbo v4, "well-formed"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v1

    const-string/jumbo v4, "infoset"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v1

    const-string/jumbo v4, "namespace-declarations"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    :cond_2
    move-object v3, v1

    const-string/jumbo v4, "normalize-characters"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object v3, v1

    const-string/jumbo v4, "canonical-form"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object v3, v1

    const-string/jumbo v4, "validate-if-schema"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object v3, v1

    const-string/jumbo v4, "check-character-normalization"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    move-object v3, v2

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x0

    :goto_1
    move v0, v3

    goto/16 :goto_0

    :cond_4
    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    move-object v3, v1

    const-string/jumbo v4, "element-content-whitespace"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    move-object v3, v1

    const-string/jumbo v4, "http://apache.org/xml/features/validation/schema/augment-psvi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_6
    move-object v3, v2

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    :goto_2
    move v0, v3

    goto/16 :goto_0

    :cond_7
    const/4 v3, 0x0

    goto :goto_2

    :cond_8
    const/4 v3, 0x0

    move v0, v3

    goto/16 :goto_0

    :cond_9
    move-object v3, v1

    const-string/jumbo v4, "error-handler"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    move-object v3, v2

    instance-of v3, v3, Lorg/w3c/dom/DOMErrorHandler;

    if-eqz v3, :cond_a

    const/4 v3, 0x1

    :goto_3
    move v0, v3

    goto/16 :goto_0

    :cond_a
    const/4 v3, 0x0

    goto :goto_3

    :cond_b
    move-object v3, v1

    const-string/jumbo v4, "resource-resolver"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    move-object v3, v2

    instance-of v3, v3, Lorg/w3c/dom/ls/LSResourceResolver;

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    :goto_4
    move v0, v3

    goto/16 :goto_0

    :cond_c
    const/4 v3, 0x0

    goto :goto_4

    :cond_d
    move-object v3, v1

    const-string/jumbo v4, "schema-location"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    move-object v3, v2

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_e

    const/4 v3, 0x1

    :goto_5
    move v0, v3

    goto/16 :goto_0

    :cond_e
    const/4 v3, 0x0

    goto :goto_5

    :cond_f
    move-object v3, v1

    const-string/jumbo v4, "schema-type"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    move-object v3, v2

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_11

    move-object v3, v2

    sget-object v4, Lorg/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    move-object v3, v2

    sget-object v4, Lorg/apache/xerces/impl/Constants;->NS_DTD:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_10
    const/4 v3, 0x1

    :goto_6
    move v0, v3

    goto/16 :goto_0

    :cond_11
    const/4 v3, 0x0

    goto :goto_6

    :cond_12
    move-object v3, v1

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    move-object v3, v2

    instance-of v3, v3, Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    if-eqz v3, :cond_13

    const/4 v3, 0x1

    :goto_7
    move v0, v3

    goto/16 :goto_0

    :cond_13
    const/4 v3, 0x0

    goto :goto_7

    :cond_14
    move-object v3, v1

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    move-object v3, v2

    instance-of v3, v3, Lorg/apache/xerces/util/SymbolTable;

    if-eqz v3, :cond_15

    const/4 v3, 0x1

    :goto_8
    move v0, v3

    goto/16 :goto_0

    :cond_15
    const/4 v3, 0x0

    goto :goto_8

    :cond_16
    move-object v3, v1

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    move-object v3, v2

    instance-of v3, v3, Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    if-eqz v3, :cond_17

    const/4 v3, 0x1

    :goto_9
    move v0, v3

    goto/16 :goto_0

    :cond_17
    const/4 v3, 0x0

    goto :goto_9

    :cond_18
    move-object v3, v1

    const-string/jumbo v4, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    move-object v3, v2

    instance-of v3, v3, Lorg/apache/xerces/util/SecurityManager;

    if-eqz v3, :cond_19

    const/4 v3, 0x1

    :goto_a
    move v0, v3

    goto/16 :goto_0

    :cond_19
    const/4 v3, 0x0

    goto :goto_a

    :cond_1a
    const/4 v3, 0x0

    move v0, v3

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

    const-string/jumbo v5, "http://xml.org/sax/properties/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

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

    if-ne v4, v5, :cond_0

    move-object v4, v1

    const-string/jumbo v5, "xml-string"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

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

    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Lorg/apache/xerces/util/ParserConfigurationSettings;->checkProperty(Ljava/lang/String;)V

    return-void
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

.method public getDTDContentModelHandler()Lorg/apache/xerces/xni/XMLDTDContentModelHandler;
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public getDTDHandler()Lorg/apache/xerces/xni/XMLDTDHandler;
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public getDocumentHandler()Lorg/apache/xerces/xni/XMLDocumentHandler;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v0, v1

    return-object v0
.end method

.method public getEntityResolver()Lorg/apache/xerces/xni/parser/XMLEntityResolver;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fProperties:Ljava/util/HashMap;

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

    iget-object v1, v1, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fProperties:Ljava/util/HashMap;

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

    const/4 v2, 0x1

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

    iget-object v1, v1, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fLocale:Ljava/util/Locale;

    move-object v0, v1

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    const-string/jumbo v4, "comments"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-short v3, v3, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/16 v4, 0x20

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_0

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    move-object v0, v3

    :goto_1
    return-object v0

    :cond_0
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    move-object v3, v1

    const-string/jumbo v4, "namespaces"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, v0

    iget-short v3, v3, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/4 v4, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_2
    move-object v0, v3

    goto :goto_1

    :cond_2
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_3
    move-object v3, v1

    const-string/jumbo v4, "datatype-normalization"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v3, v0

    iget-short v3, v3, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/4 v4, 0x2

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_3
    move-object v0, v3

    goto :goto_1

    :cond_4
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_5
    move-object v3, v1

    const-string/jumbo v4, "cdata-sections"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v3, v0

    iget-short v3, v3, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/16 v4, 0x8

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_6

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_4
    move-object v0, v3

    goto :goto_1

    :cond_6
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_4

    :cond_7
    move-object v3, v1

    const-string/jumbo v4, "entities"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object v3, v0

    iget-short v3, v3, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/4 v4, 0x4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_8

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_5
    move-object v0, v3

    goto :goto_1

    :cond_8
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_5

    :cond_9
    move-object v3, v1

    const-string/jumbo v4, "split-cdata-sections"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    move-object v3, v0

    iget-short v3, v3, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/16 v4, 0x10

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_a

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_6
    move-object v0, v3

    goto :goto_1

    :cond_a
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_6

    :cond_b
    move-object v3, v1

    const-string/jumbo v4, "validate"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    move-object v3, v0

    iget-short v3, v3, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/16 v4, 0x40

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_c

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_7
    move-object v0, v3

    goto/16 :goto_1

    :cond_c
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_7

    :cond_d
    move-object v3, v1

    const-string/jumbo v4, "well-formed"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    move-object v3, v0

    iget-short v3, v3, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/16 v4, 0x100

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_e

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_8
    move-object v0, v3

    goto/16 :goto_1

    :cond_e
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_8

    :cond_f
    move-object v3, v1

    const-string/jumbo v4, "namespace-declarations"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    move-object v3, v0

    iget-short v3, v3, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/16 v4, 0x200

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_10

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_9
    move-object v0, v3

    goto/16 :goto_1

    :cond_10
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_9

    :cond_11
    move-object v3, v1

    const-string/jumbo v4, "infoset"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    move-object v3, v0

    iget-short v3, v3, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/16 v4, 0x32f

    and-int/lit16 v3, v3, 0x32f

    const/16 v4, 0x321

    if-ne v3, v4, :cond_12

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_a
    move-object v0, v3

    goto/16 :goto_1

    :cond_12
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_a

    :cond_13
    move-object v3, v1

    const-string/jumbo v4, "normalize-characters"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    move-object v3, v1

    const-string/jumbo v4, "canonical-form"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    move-object v3, v1

    const-string/jumbo v4, "validate-if-schema"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    move-object v3, v1

    const-string/jumbo v4, "check-character-normalization"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    :cond_14
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v3

    goto/16 :goto_1

    :cond_15
    move-object v3, v1

    const-string/jumbo v4, "http://apache.org/xml/features/validation/schema/augment-psvi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v0, v3

    goto/16 :goto_1

    :cond_16
    move-object v3, v1

    const-string/jumbo v4, "psvi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_18

    move-object v3, v0

    iget-short v3, v3, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/16 v4, 0x80

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_17

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_b
    move-object v0, v3

    goto/16 :goto_1

    :cond_17
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_b

    :cond_18
    move-object v3, v1

    const-string/jumbo v4, "element-content-whitespace"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v0, v3

    goto/16 :goto_1

    :cond_19
    move-object v3, v1

    const-string/jumbo v4, "error-handler"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1a

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fErrorHandlerWrapper:Lorg/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-virtual {v3}, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->getErrorHandler()Lorg/w3c/dom/DOMErrorHandler;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_1

    :cond_1a
    move-object v3, v1

    const-string/jumbo v4, "resource-resolver"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->getEntityResolver()Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    if-eqz v3, :cond_1b

    move-object v3, v2

    instance-of v3, v3, Lorg/apache/xerces/util/DOMEntityResolverWrapper;

    if-eqz v3, :cond_1b

    move-object v3, v2

    check-cast v3, Lorg/apache/xerces/util/DOMEntityResolverWrapper;

    invoke-virtual {v3}, Lorg/apache/xerces/util/DOMEntityResolverWrapper;->getEntityResolver()Lorg/w3c/dom/ls/LSResourceResolver;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_1

    :cond_1b
    const/4 v3, 0x0

    move-object v0, v3

    goto/16 :goto_1

    :cond_1c
    move-object v3, v1

    const-string/jumbo v4, "schema-type"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    move-object v3, v0

    const-string/jumbo v4, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_1

    :cond_1d
    move-object v3, v1

    const-string/jumbo v4, "schema-location"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1e

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fSchemaLocation:Ljava/lang/String;

    move-object v0, v3

    goto/16 :goto_1

    :cond_1e
    move-object v3, v1

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->getEntityResolver()Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_1

    :cond_1f
    move-object v3, v1

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    move-object v3, v0

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_1

    :cond_20
    move-object v3, v1

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    move-object v3, v0

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_1

    :cond_21
    move-object v3, v1

    const-string/jumbo v4, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    move-object v3, v0

    const-string/jumbo v4, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    goto/16 :goto_1

    :cond_22
    move-object v3, v1

    invoke-static {v3}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->newFeatureNotFoundError(Ljava/lang/String;)Lorg/w3c/dom/DOMException;

    move-result-object v3

    throw v3
.end method

.method public getParameterNames()Lorg/w3c/dom/DOMStringList;
    .locals 7

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fRecognizedParameters:Lorg/w3c/dom/DOMStringList;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    move-object v2, v1

    const-string/jumbo v3, "comments"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "datatype-normalization"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "cdata-sections"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "entities"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "split-cdata-sections"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "namespaces"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "validate"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "infoset"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "normalize-characters"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "canonical-form"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "validate-if-schema"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "check-character-normalization"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "well-formed"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "namespace-declarations"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "element-content-whitespace"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "error-handler"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "schema-type"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "schema-location"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "resource-resolver"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    const-string/jumbo v3, "http://apache.org/xml/features/validation/schema/augment-psvi"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/dom/DOMStringListImpl;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lorg/apache/xerces/dom/DOMStringListImpl;-><init>(Ljava/util/ArrayList;)V

    iput-object v3, v2, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fRecognizedParameters:Lorg/w3c/dom/DOMStringList;

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fRecognizedParameters:Lorg/w3c/dom/DOMStringList;

    move-object v0, v2

    return-object v0
.end method

.method public parse(Lorg/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    return-void
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

    iget-object v4, v4, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v4}, Lorg/apache/xerces/impl/validation/ValidationManager;->reset()V

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v4

    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move v5, v1

    if-lt v4, v5, :cond_1

    return-void

    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fComponents:Ljava/util/ArrayList;

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
    .locals 0

    return-void
.end method

.method public setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V
    .locals 0

    return-void
.end method

.method protected final setDTDValidatorFactory(Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    const-string/jumbo v2, "1.1"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fCurrentDVFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fXML11DatatypeFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    if-eq v2, v3, :cond_0

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fXML11DatatypeFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    iput-object v3, v2, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fCurrentDVFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    move-object v2, v0

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fCurrentDVFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fCurrentDVFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fDatatypeValidatorFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    if-eq v2, v3, :cond_0

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fDatatypeValidatorFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    iput-object v3, v2, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fCurrentDVFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    move-object v2, v0

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/datatype-validator-factory"

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fCurrentDVFactory:Lorg/apache/xerces/impl/dv/DTDDVFactory;

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    return-void
.end method

.method public setEntityResolver(Lorg/apache/xerces/xni/parser/XMLEntityResolver;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fProperties:Ljava/util/HashMap;

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

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/error-handler"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :cond_0
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Lorg/apache/xerces/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V

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

    iput-object v3, v2, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fLocale:Ljava/util/Locale;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/XMLErrorReporter;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v6, 0x1

    move v3, v6

    move-object v6, v2

    instance-of v6, v6, Ljava/lang/Boolean;

    if-eqz v6, :cond_0

    move-object v6, v2

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move v4, v6

    move-object v6, v1

    const-string/jumbo v7, "comments"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v6, v0

    move v7, v4

    if-eqz v7, :cond_4

    move-object v7, v0

    iget-short v7, v7, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/16 v8, 0x20

    or-int/lit8 v7, v7, 0x20

    int-to-short v7, v7

    :goto_0
    iput-short v7, v6, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    :cond_0
    :goto_1
    move v6, v3

    if-eqz v6, :cond_1

    move-object v6, v2

    instance-of v6, v6, Ljava/lang/Boolean;

    if-nez v6, :cond_3

    :cond_1
    const/4 v6, 0x1

    move v3, v6

    move-object v6, v1

    const-string/jumbo v7, "error-handler"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e

    move-object v6, v2

    instance-of v6, v6, Lorg/w3c/dom/DOMErrorHandler;

    if-nez v6, :cond_2

    move-object v6, v2

    if-nez v6, :cond_1d

    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fErrorHandlerWrapper:Lorg/apache/xerces/util/DOMErrorHandlerWrapper;

    move-object v7, v2

    check-cast v7, Lorg/w3c/dom/DOMErrorHandler;

    invoke-virtual {v6, v7}, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->setErrorHandler(Lorg/w3c/dom/DOMErrorHandler;)V

    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fErrorHandlerWrapper:Lorg/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-virtual {v6, v7}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setErrorHandler(Lorg/apache/xerces/xni/parser/XMLErrorHandler;)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    move-object v7, v0

    iget-short v7, v7, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/16 v8, -0x21

    and-int/lit8 v7, v7, -0x21

    int-to-short v7, v7

    goto :goto_0

    :cond_5
    move-object v6, v1

    const-string/jumbo v7, "datatype-normalization"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    move-object v6, v0

    const-string/jumbo v7, "http://apache.org/xml/features/validation/schema/normalized-value"

    move v8, v4

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    move-object v6, v0

    move v7, v4

    if-eqz v7, :cond_6

    move-object v7, v0

    iget-short v7, v7, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/4 v8, 0x2

    or-int/lit8 v7, v7, 0x2

    int-to-short v7, v7

    :goto_3
    iput-short v7, v6, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    move v6, v4

    if-eqz v6, :cond_0

    move-object v6, v0

    move-object v7, v0

    iget-short v7, v7, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/16 v8, 0x40

    or-int/lit8 v7, v7, 0x40

    int-to-short v7, v7

    iput-short v7, v6, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    goto :goto_1

    :cond_6
    move-object v7, v0

    iget-short v7, v7, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/4 v8, -0x3

    and-int/lit8 v7, v7, -0x3

    int-to-short v7, v7

    goto :goto_3

    :cond_7
    move-object v6, v1

    const-string/jumbo v7, "namespaces"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    move-object v6, v0

    move v7, v4

    if-eqz v7, :cond_8

    move-object v7, v0

    iget-short v7, v7, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/4 v8, 0x1

    or-int/lit8 v7, v7, 0x1

    int-to-short v7, v7

    :goto_4
    iput-short v7, v6, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    goto/16 :goto_1

    :cond_8
    move-object v7, v0

    iget-short v7, v7, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/4 v8, -0x2

    and-int/lit8 v7, v7, -0x2

    int-to-short v7, v7

    goto :goto_4

    :cond_9
    move-object v6, v1

    const-string/jumbo v7, "cdata-sections"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    move-object v6, v0

    move v7, v4

    if-eqz v7, :cond_a

    move-object v7, v0

    iget-short v7, v7, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/16 v8, 0x8

    or-int/lit8 v7, v7, 0x8

    int-to-short v7, v7

    :goto_5
    iput-short v7, v6, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    goto/16 :goto_1

    :cond_a
    move-object v7, v0

    iget-short v7, v7, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/16 v8, -0x9

    and-int/lit8 v7, v7, -0x9

    int-to-short v7, v7

    goto :goto_5

    :cond_b
    move-object v6, v1

    const-string/jumbo v7, "entities"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_d

    move-object v6, v0

    move v7, v4

    if-eqz v7, :cond_c

    move-object v7, v0

    iget-short v7, v7, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/4 v8, 0x4

    or-int/lit8 v7, v7, 0x4

    int-to-short v7, v7

    :goto_6
    iput-short v7, v6, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    goto/16 :goto_1

    :cond_c
    move-object v7, v0

    iget-short v7, v7, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/4 v8, -0x5

    and-int/lit8 v7, v7, -0x5

    int-to-short v7, v7

    goto :goto_6

    :cond_d
    move-object v6, v1

    const-string/jumbo v7, "split-cdata-sections"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    move-object v6, v0

    move v7, v4

    if-eqz v7, :cond_e

    move-object v7, v0

    iget-short v7, v7, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/16 v8, 0x10

    or-int/lit8 v7, v7, 0x10

    int-to-short v7, v7

    :goto_7
    iput-short v7, v6, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    goto/16 :goto_1

    :cond_e
    move-object v7, v0

    iget-short v7, v7, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/16 v8, -0x11

    and-int/lit8 v7, v7, -0x11

    int-to-short v7, v7

    goto :goto_7

    :cond_f
    move-object v6, v1

    const-string/jumbo v7, "validate"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    move-object v6, v0

    move v7, v4

    if-eqz v7, :cond_10

    move-object v7, v0

    iget-short v7, v7, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/16 v8, 0x40

    or-int/lit8 v7, v7, 0x40

    int-to-short v7, v7

    :goto_8
    iput-short v7, v6, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    goto/16 :goto_1

    :cond_10
    move-object v7, v0

    iget-short v7, v7, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/16 v8, -0x41

    and-int/lit8 v7, v7, -0x41

    int-to-short v7, v7

    goto :goto_8

    :cond_11
    move-object v6, v1

    const-string/jumbo v7, "well-formed"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    move-object v6, v0

    move v7, v4

    if-eqz v7, :cond_12

    move-object v7, v0

    iget-short v7, v7, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/16 v8, 0x100

    or-int/lit16 v7, v7, 0x100

    int-to-short v7, v7

    :goto_9
    iput-short v7, v6, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    goto/16 :goto_1

    :cond_12
    move-object v7, v0

    iget-short v7, v7, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/16 v8, -0x101

    and-int/lit16 v7, v7, -0x101

    int-to-short v7, v7

    goto :goto_9

    :cond_13
    move-object v6, v1

    const-string/jumbo v7, "namespace-declarations"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_15

    move-object v6, v0

    move v7, v4

    if-eqz v7, :cond_14

    move-object v7, v0

    iget-short v7, v7, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/16 v8, 0x200

    or-int/lit16 v7, v7, 0x200

    int-to-short v7, v7

    :goto_a
    iput-short v7, v6, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    goto/16 :goto_1

    :cond_14
    move-object v7, v0

    iget-short v7, v7, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/16 v8, -0x201

    and-int/lit16 v7, v7, -0x201

    int-to-short v7, v7

    goto :goto_a

    :cond_15
    move-object v6, v1

    const-string/jumbo v7, "infoset"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    move v6, v4

    if-eqz v6, :cond_0

    move-object v6, v0

    move-object v7, v0

    iget-short v7, v7, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/16 v8, 0x321

    or-int/lit16 v7, v7, 0x321

    int-to-short v7, v7

    iput-short v7, v6, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    move-object v6, v0

    move-object v7, v0

    iget-short v7, v7, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/16 v8, -0xf

    and-int/lit8 v7, v7, -0xf

    int-to-short v7, v7

    iput-short v7, v6, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    move-object v6, v0

    const-string/jumbo v7, "http://apache.org/xml/features/validation/schema/normalized-value"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_16
    move-object v6, v1

    const-string/jumbo v7, "normalize-characters"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_17

    move-object v6, v1

    const-string/jumbo v7, "canonical-form"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_17

    move-object v6, v1

    const-string/jumbo v7, "validate-if-schema"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_17

    move-object v6, v1

    const-string/jumbo v7, "check-character-normalization"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    :cond_17
    move v6, v4

    if-eqz v6, :cond_0

    move-object v6, v1

    invoke-static {v6}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->newFeatureNotSupportedError(Ljava/lang/String;)Lorg/w3c/dom/DOMException;

    move-result-object v6

    throw v6

    :cond_18
    move-object v6, v1

    const-string/jumbo v7, "element-content-whitespace"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_19

    move v6, v4

    if-nez v6, :cond_0

    move-object v6, v1

    invoke-static {v6}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->newFeatureNotSupportedError(Ljava/lang/String;)Lorg/w3c/dom/DOMException;

    move-result-object v6

    throw v6

    :cond_19
    move-object v6, v1

    const-string/jumbo v7, "http://apache.org/xml/features/validation/schema/augment-psvi"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a

    move v6, v4

    if-nez v6, :cond_0

    move-object v6, v1

    invoke-static {v6}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->newFeatureNotSupportedError(Ljava/lang/String;)Lorg/w3c/dom/DOMException;

    move-result-object v6

    throw v6

    :cond_1a
    move-object v6, v1

    const-string/jumbo v7, "psvi"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1c

    move-object v6, v0

    move v7, v4

    if-eqz v7, :cond_1b

    move-object v7, v0

    iget-short v7, v7, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/16 v8, 0x80

    or-int/lit16 v7, v7, 0x80

    int-to-short v7, v7

    :goto_b
    iput-short v7, v6, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    goto/16 :goto_1

    :cond_1b
    move-object v7, v0

    iget-short v7, v7, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/16 v8, -0x81

    and-int/lit16 v7, v7, -0x81

    int-to-short v7, v7

    goto :goto_b

    :cond_1c
    const/4 v6, 0x0

    move v3, v6

    goto/16 :goto_1

    :cond_1d
    move-object v6, v1

    invoke-static {v6}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->newTypeMismatchError(Ljava/lang/String;)Lorg/w3c/dom/DOMException;

    move-result-object v6

    throw v6

    :cond_1e
    move-object v6, v1

    const-string/jumbo v7, "resource-resolver"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_21

    move-object v6, v2

    instance-of v6, v6, Lorg/w3c/dom/ls/LSResourceResolver;

    if-nez v6, :cond_1f

    move-object v6, v2

    if-nez v6, :cond_20

    :cond_1f
    move-object v6, v0

    :try_start_0
    new-instance v7, Lorg/apache/xerces/util/DOMEntityResolverWrapper;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v2

    check-cast v9, Lorg/w3c/dom/ls/LSResourceResolver;

    invoke-direct {v8, v9}, Lorg/apache/xerces/util/DOMEntityResolverWrapper;-><init>(Lorg/w3c/dom/ls/LSResourceResolver;)V

    invoke-virtual {v6, v7}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setEntityResolver(Lorg/apache/xerces/xni/parser/XMLEntityResolver;)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v6

    move-object v4, v6

    goto/16 :goto_2

    :cond_20
    move-object v6, v1

    invoke-static {v6}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->newTypeMismatchError(Ljava/lang/String;)Lorg/w3c/dom/DOMException;

    move-result-object v6

    throw v6

    :cond_21
    move-object v6, v1

    const-string/jumbo v7, "schema-location"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_27

    move-object v6, v2

    instance-of v6, v6, Ljava/lang/String;

    if-nez v6, :cond_22

    move-object v6, v2

    if-nez v6, :cond_26

    :cond_22
    move-object v6, v2

    if-nez v6, :cond_23

    move-object v6, v0

    const/4 v7, 0x0

    :try_start_1
    iput-object v7, v6, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fSchemaLocation:Ljava/lang/String;

    move-object v6, v0

    const-string/jumbo v7, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_c
    goto/16 :goto_2

    :cond_23
    move-object v6, v0

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    iput-object v7, v6, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fSchemaLocation:Ljava/lang/String;

    new-instance v6, Ljava/util/StringTokenizer;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fSchemaLocation:Ljava/lang/String;

    const-string/jumbo v9, " \n\t\r"

    invoke-direct {v7, v8, v9}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v6

    move-object v6, v4

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_25

    new-instance v6, Ljava/util/ArrayList;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v6

    move-object v6, v5

    move-object v7, v4

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    :goto_d
    move-object v6, v4

    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-nez v6, :cond_24

    move-object v6, v0

    const-string/jumbo v7, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    move-object v8, v5

    move-object v9, v5

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_c

    :cond_24
    move-object v6, v5

    move-object v7, v4

    invoke-virtual {v7}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_d

    :cond_25
    move-object v6, v0

    const-string/jumbo v7, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v2

    check-cast v11, Ljava/lang/String;

    aput-object v11, v9, v10

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_c

    :catch_1
    move-exception v6

    move-object v4, v6

    goto/16 :goto_2

    :cond_26
    move-object v6, v1

    invoke-static {v6}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->newTypeMismatchError(Ljava/lang/String;)Lorg/w3c/dom/DOMException;

    move-result-object v6

    throw v6

    :cond_27
    move-object v6, v1

    const-string/jumbo v7, "schema-type"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2d

    move-object v6, v2

    instance-of v6, v6, Ljava/lang/String;

    if-nez v6, :cond_28

    move-object v6, v2

    if-nez v6, :cond_2c

    :cond_28
    move-object v6, v2

    if-nez v6, :cond_2a

    move-object v6, v0

    :try_start_2
    const-string/jumbo v7, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_29
    :goto_e
    goto/16 :goto_2

    :cond_2a
    move-object v6, v2

    sget-object v7, Lorg/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2b

    move-object v6, v0

    const-string/jumbo v7, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    sget-object v8, Lorg/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_e

    :cond_2b
    move-object v6, v2

    sget-object v7, Lorg/apache/xerces/impl/Constants;->NS_DTD:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29

    move-object v6, v0

    const-string/jumbo v7, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    sget-object v8, Lorg/apache/xerces/impl/Constants;->NS_DTD:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_e

    :catch_2
    move-exception v6

    move-object v4, v6

    goto/16 :goto_2

    :cond_2c
    move-object v6, v1

    invoke-static {v6}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->newTypeMismatchError(Ljava/lang/String;)Lorg/w3c/dom/DOMException;

    move-result-object v6

    throw v6

    :cond_2d
    move-object v6, v1

    const-string/jumbo v7, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_30

    move-object v6, v2

    instance-of v6, v6, Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    if-nez v6, :cond_2e

    move-object v6, v2

    if-nez v6, :cond_2f

    :cond_2e
    move-object v6, v0

    move-object v7, v2

    :try_start_3
    check-cast v7, Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    invoke-virtual {v6, v7}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setEntityResolver(Lorg/apache/xerces/xni/parser/XMLEntityResolver;)V
    :try_end_3
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_2

    :catch_3
    move-exception v6

    move-object v4, v6

    goto/16 :goto_2

    :cond_2f
    move-object v6, v1

    invoke-static {v6}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->newTypeMismatchError(Ljava/lang/String;)Lorg/w3c/dom/DOMException;

    move-result-object v6

    throw v6

    :cond_30
    move-object v6, v1

    const-string/jumbo v7, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_32

    move-object v6, v2

    instance-of v6, v6, Lorg/apache/xerces/util/SymbolTable;

    if-eqz v6, :cond_31

    move-object v6, v0

    const-string/jumbo v7, "http://apache.org/xml/properties/internal/symbol-table"

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_31
    move-object v6, v1

    invoke-static {v6}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->newTypeMismatchError(Ljava/lang/String;)Lorg/w3c/dom/DOMException;

    move-result-object v6

    throw v6

    :cond_32
    move-object v6, v1

    const-string/jumbo v7, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_35

    move-object v6, v2

    instance-of v6, v6, Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    if-nez v6, :cond_33

    move-object v6, v2

    if-nez v6, :cond_34

    :cond_33
    move-object v6, v0

    const-string/jumbo v7, "http://apache.org/xml/properties/internal/grammar-pool"

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_34
    move-object v6, v1

    invoke-static {v6}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->newTypeMismatchError(Ljava/lang/String;)Lorg/w3c/dom/DOMException;

    move-result-object v6

    throw v6

    :cond_35
    move-object v6, v1

    const-string/jumbo v7, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_38

    move-object v6, v2

    instance-of v6, v6, Lorg/apache/xerces/util/SecurityManager;

    if-nez v6, :cond_36

    move-object v6, v2

    if-nez v6, :cond_37

    :cond_36
    move-object v6, v0

    const-string/jumbo v7, "http://apache.org/xml/properties/security-manager"

    move-object v8, v2

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_37
    move-object v6, v1

    invoke-static {v6}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->newTypeMismatchError(Ljava/lang/String;)Lorg/w3c/dom/DOMException;

    move-result-object v6

    throw v6

    :cond_38
    move-object v6, v1

    invoke-static {v6}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->newFeatureNotFoundError(Ljava/lang/String;)Lorg/w3c/dom/DOMException;

    move-result-object v6

    throw v6
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

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lorg/apache/xerces/util/ParserConfigurationSettings;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
