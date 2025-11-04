.class public Lorg/apache/xerces/jaxp/DocumentBuilderImpl;
.super Ljavax/xml/parsers/DocumentBuilder;

# interfaces
.implements Lorg/apache/xerces/jaxp/JAXPConstants;


# static fields
.field private static final CREATE_CDATA_NODES_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/create-cdata-nodes"

.field private static final CREATE_ENTITY_REF_NODES_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/dom/create-entity-ref-nodes"

.field private static final INCLUDE_COMMENTS_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/include-comments"

.field private static final INCLUDE_IGNORABLE_WHITESPACE:Ljava/lang/String; = "http://apache.org/xml/features/dom/include-ignorable-whitespace"

.field private static final NAMESPACES_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field private static final SECURITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"

.field private static final VALIDATION_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field private static final XINCLUDE_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/xinclude"

.field private static final XMLSCHEMA_VALIDATION_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"


# instance fields
.field private final domParser:Lorg/apache/xerces/parsers/DOMParser;

.field private final fInitEntityResolver:Lorg/xml/sax/EntityResolver;

.field private final fInitErrorHandler:Lorg/xml/sax/ErrorHandler;

.field private final fSchemaValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

.field private final fSchemaValidator:Lorg/apache/xerces/xni/parser/XMLComponent;

.field private final fSchemaValidatorComponentManager:Lorg/apache/xerces/xni/parser/XMLComponentManager;

.field private final fUnparsedEntityHandler:Lorg/apache/xerces/jaxp/UnparsedEntityHandler;

.field private final grammar:Ljavax/xml/validation/Schema;


# direct methods
.method constructor <init>(Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;Ljava/util/Hashtable;Ljava/util/Hashtable;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
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

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;-><init>(Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;Ljava/util/Hashtable;Ljava/util/Hashtable;Z)V

    return-void
.end method

.method constructor <init>(Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;Ljava/util/Hashtable;Ljava/util/Hashtable;Z)V
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

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object v7, v0

    invoke-direct {v7}, Ljavax/xml/parsers/DocumentBuilder;-><init>()V

    move-object v7, v0

    new-instance v8, Lorg/apache/xerces/parsers/DOMParser;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Lorg/apache/xerces/parsers/DOMParser;-><init>()V

    iput-object v8, v7, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lorg/apache/xerces/parsers/DOMParser;

    move-object v7, v1

    invoke-virtual {v7}, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->isValidating()Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v0

    new-instance v8, Lorg/apache/xerces/jaxp/DefaultValidationErrorHandler;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Lorg/apache/xerces/jaxp/DefaultValidationErrorHandler;-><init>()V

    iput-object v8, v7, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->fInitErrorHandler:Lorg/xml/sax/ErrorHandler;

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->fInitErrorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-virtual {v7, v8}, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    :goto_0
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lorg/apache/xerces/parsers/DOMParser;

    const-string/jumbo v8, "http://xml.org/sax/features/validation"

    move-object v9, v1

    invoke-virtual {v9}, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->isValidating()Z

    move-result v9

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/parsers/DOMParser;->setFeature(Ljava/lang/String;Z)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lorg/apache/xerces/parsers/DOMParser;

    const-string/jumbo v8, "http://xml.org/sax/features/namespaces"

    move-object v9, v1

    invoke-virtual {v9}, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->isNamespaceAware()Z

    move-result v9

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/parsers/DOMParser;->setFeature(Ljava/lang/String;Z)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lorg/apache/xerces/parsers/DOMParser;

    const-string/jumbo v8, "http://apache.org/xml/features/dom/include-ignorable-whitespace"

    move-object v9, v1

    invoke-virtual {v9}, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->isIgnoringElementContentWhitespace()Z

    move-result v9

    if-nez v9, :cond_3

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/parsers/DOMParser;->setFeature(Ljava/lang/String;Z)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lorg/apache/xerces/parsers/DOMParser;

    const-string/jumbo v8, "http://apache.org/xml/features/dom/create-entity-ref-nodes"

    move-object v9, v1

    invoke-virtual {v9}, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->isExpandEntityReferences()Z

    move-result v9

    if-nez v9, :cond_4

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/parsers/DOMParser;->setFeature(Ljava/lang/String;Z)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lorg/apache/xerces/parsers/DOMParser;

    const-string/jumbo v8, "http://apache.org/xml/features/include-comments"

    move-object v9, v1

    invoke-virtual {v9}, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->isIgnoringComments()Z

    move-result v9

    if-nez v9, :cond_5

    const/4 v9, 0x1

    :goto_3
    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/parsers/DOMParser;->setFeature(Ljava/lang/String;Z)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lorg/apache/xerces/parsers/DOMParser;

    const-string/jumbo v8, "http://apache.org/xml/features/create-cdata-nodes"

    move-object v9, v1

    invoke-virtual {v9}, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->isCoalescing()Z

    move-result v9

    if-nez v9, :cond_6

    const/4 v9, 0x1

    :goto_4
    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/parsers/DOMParser;->setFeature(Ljava/lang/String;Z)V

    move-object v7, v1

    invoke-virtual {v7}, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->isXIncludeAware()Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lorg/apache/xerces/parsers/DOMParser;

    const-string/jumbo v8, "http://apache.org/xml/features/xinclude"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/parsers/DOMParser;->setFeature(Ljava/lang/String;Z)V

    :cond_0
    move v7, v4

    if-eqz v7, :cond_1

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lorg/apache/xerces/parsers/DOMParser;

    const-string/jumbo v8, "http://apache.org/xml/properties/security-manager"

    new-instance v9, Lorg/apache/xerces/util/SecurityManager;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    invoke-direct {v10}, Lorg/apache/xerces/util/SecurityManager;-><init>()V

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/parsers/DOMParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v8}, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->getSchema()Ljavax/xml/validation/Schema;

    move-result-object v8

    iput-object v8, v7, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->grammar:Ljavax/xml/validation/Schema;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->grammar:Ljavax/xml/validation/Schema;

    if-eqz v7, :cond_8

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lorg/apache/xerces/parsers/DOMParser;

    invoke-virtual {v7}, Lorg/apache/xerces/parsers/DOMParser;->getXMLParserConfiguration()Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-result-object v7

    move-object v5, v7

    const/4 v7, 0x0

    move-object v6, v7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->grammar:Ljavax/xml/validation/Schema;

    instance-of v7, v7, Lorg/apache/xerces/jaxp/validation/XSGrammarPoolContainer;

    if-eqz v7, :cond_7

    new-instance v7, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;-><init>()V

    move-object v6, v7

    move-object v7, v0

    new-instance v8, Lorg/apache/xerces/impl/validation/ValidationManager;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    invoke-direct {v9}, Lorg/apache/xerces/impl/validation/ValidationManager;-><init>()V

    iput-object v8, v7, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->fSchemaValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    move-object v7, v0

    new-instance v8, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->fSchemaValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    invoke-direct {v9, v10}, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;-><init>(Lorg/apache/xerces/impl/validation/ValidationManager;)V

    iput-object v8, v7, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->fUnparsedEntityHandler:Lorg/apache/xerces/jaxp/UnparsedEntityHandler;

    move-object v7, v5

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->fUnparsedEntityHandler:Lorg/apache/xerces/jaxp/UnparsedEntityHandler;

    invoke-interface {v7, v8}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->fUnparsedEntityHandler:Lorg/apache/xerces/jaxp/UnparsedEntityHandler;

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lorg/apache/xerces/parsers/DOMParser;

    invoke-virtual {v7, v8}, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lorg/apache/xerces/parsers/DOMParser;

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->fUnparsedEntityHandler:Lorg/apache/xerces/jaxp/UnparsedEntityHandler;

    invoke-virtual {v7, v8}, Lorg/apache/xerces/parsers/DOMParser;->setDTDSource(Lorg/apache/xerces/xni/parser/XMLDTDSource;)V

    move-object v7, v0

    new-instance v8, Lorg/apache/xerces/jaxp/SchemaValidatorConfiguration;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v5

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->grammar:Ljavax/xml/validation/Schema;

    check-cast v11, Lorg/apache/xerces/jaxp/validation/XSGrammarPoolContainer;

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->fSchemaValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    invoke-direct {v9, v10, v11, v12}, Lorg/apache/xerces/jaxp/SchemaValidatorConfiguration;-><init>(Lorg/apache/xerces/xni/parser/XMLComponentManager;Lorg/apache/xerces/jaxp/validation/XSGrammarPoolContainer;Lorg/apache/xerces/impl/validation/ValidationManager;)V

    iput-object v8, v7, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->fSchemaValidatorComponentManager:Lorg/apache/xerces/xni/parser/XMLComponentManager;

    :goto_5
    move-object v7, v5

    move-object v8, v6

    invoke-interface {v8}, Lorg/apache/xerces/xni/parser/XMLComponent;->getRecognizedFeatures()[Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->addRecognizedFeatures([Ljava/lang/String;)V

    move-object v7, v5

    move-object v8, v6

    invoke-interface {v8}, Lorg/apache/xerces/xni/parser/XMLComponent;->getRecognizedProperties()[Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->addRecognizedProperties([Ljava/lang/String;)V

    move-object v7, v5

    move-object v8, v6

    check-cast v8, Lorg/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v7, v8}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v7, v6

    check-cast v7, Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lorg/apache/xerces/parsers/DOMParser;

    invoke-interface {v7, v8}, Lorg/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lorg/apache/xerces/parsers/DOMParser;

    move-object v8, v6

    check-cast v8, Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    invoke-virtual {v7, v8}, Lorg/apache/xerces/parsers/DOMParser;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->fSchemaValidator:Lorg/apache/xerces/xni/parser/XMLComponent;

    :goto_6
    move-object v7, v0

    move-object v8, v3

    invoke-direct {v7, v8}, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->setFeatures(Ljava/util/Hashtable;)V

    move-object v7, v0

    move-object v8, v2

    invoke-direct {v7, v8}, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->setDocumentBuilderFactoryAttributes(Ljava/util/Hashtable;)V

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lorg/apache/xerces/parsers/DOMParser;

    invoke-virtual {v8}, Lorg/apache/xerces/parsers/DOMParser;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v8

    iput-object v8, v7, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->fInitEntityResolver:Lorg/xml/sax/EntityResolver;

    return-void

    :cond_2
    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lorg/apache/xerces/parsers/DOMParser;

    invoke-virtual {v8}, Lorg/apache/xerces/parsers/DOMParser;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object v8

    iput-object v8, v7, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->fInitErrorHandler:Lorg/xml/sax/ErrorHandler;

    goto/16 :goto_0

    :cond_3
    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_2

    :cond_5
    const/4 v9, 0x0

    goto/16 :goto_3

    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_4

    :cond_7
    new-instance v7, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->grammar:Ljavax/xml/validation/Schema;

    invoke-virtual {v9}, Ljavax/xml/validation/Schema;->newValidatorHandler()Ljavax/xml/validation/ValidatorHandler;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;-><init>(Ljavax/xml/validation/ValidatorHandler;)V

    move-object v6, v7

    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->fSchemaValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->fUnparsedEntityHandler:Lorg/apache/xerces/jaxp/UnparsedEntityHandler;

    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->fSchemaValidatorComponentManager:Lorg/apache/xerces/xni/parser/XMLComponentManager;

    goto :goto_5

    :cond_8
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->fSchemaValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->fUnparsedEntityHandler:Lorg/apache/xerces/jaxp/UnparsedEntityHandler;

    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->fSchemaValidatorComponentManager:Lorg/apache/xerces/xni/parser/XMLComponentManager;

    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->fSchemaValidator:Lorg/apache/xerces/xni/parser/XMLComponent;

    goto :goto_6
.end method

.method private resetSchemaValidator()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->fSchemaValidator:Lorg/apache/xerces/xni/parser/XMLComponent;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->fSchemaValidatorComponentManager:Lorg/apache/xerces/xni/parser/XMLComponentManager;

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/parser/XMLComponent;->reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    move-object v1, v2

    new-instance v2, Lorg/xml/sax/SAXException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method

.method private setDocumentBuilderFactoryAttributes(Ljava/util/Hashtable;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotSupportedException;,
            Lorg/xml/sax/SAXNotRecognizedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v7, v1

    if-nez v7, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v7, v1

    invoke-virtual {v7}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v2, v7

    :cond_1
    :goto_1
    move-object v7, v2

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_0

    :cond_2
    move-object v7, v2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    move-object v3, v7

    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v4, v7

    move-object v7, v3

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    move-object v7, v5

    instance-of v7, v7, Ljava/lang/Boolean;

    if-eqz v7, :cond_3

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lorg/apache/xerces/parsers/DOMParser;

    move-object v8, v4

    move-object v9, v5

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/parsers/DOMParser;->setFeature(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_3
    const-string/jumbo v7, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string/jumbo v7, "http://www.w3.org/2001/XMLSchema"

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v0

    invoke-virtual {v7}, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->isValidating()Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lorg/apache/xerces/parsers/DOMParser;

    const-string/jumbo v8, "http://apache.org/xml/features/validation/schema"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/parsers/DOMParser;->setFeature(Ljava/lang/String;Z)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lorg/apache/xerces/parsers/DOMParser;

    const-string/jumbo v8, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    const-string/jumbo v9, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/parsers/DOMParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v7, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    move-object v7, v0

    invoke-virtual {v7}, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->isValidating()Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v7, v1

    const-string/jumbo v8, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object v6, v7

    move-object v7, v6

    if-eqz v7, :cond_5

    const-string/jumbo v7, "http://www.w3.org/2001/XMLSchema"

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lorg/apache/xerces/parsers/DOMParser;

    move-object v8, v4

    move-object v9, v5

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/parsers/DOMParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_5
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move-object v15, v7

    move-object v7, v15

    move-object v8, v15

    const-string/jumbo v9, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v10, "jaxp-order-not-supported"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x0

    const-string/jumbo v14, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    aput-object v14, v12, v13

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    const/4 v13, 0x1

    const-string/jumbo v14, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    aput-object v14, v12, v13

    invoke-static {v9, v10, v11}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_6
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lorg/apache/xerces/parsers/DOMParser;

    move-object v8, v4

    move-object v9, v5

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/parsers/DOMParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method private setFeatures(Ljava/util/Hashtable;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotSupportedException;,
            Lorg/xml/sax/SAXNotRecognizedException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    if-eqz v6, :cond_0

    move-object v6, v1

    invoke-virtual {v6}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v2, v6

    :goto_0
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    move-object v3, v6

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v4, v6

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    move v5, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lorg/apache/xerces/parsers/DOMParser;

    move-object v7, v4

    move v8, v5

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/parsers/DOMParser;->setFeature(Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method public getDOMImplementation()Lorg/w3c/dom/DOMImplementation;
    .locals 2

    move-object v0, p0

    invoke-static {}, Lorg/apache/xerces/dom/DOMImplementationImpl;->getDOMImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method getDOMParser()Lorg/apache/xerces/parsers/DOMParser;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lorg/apache/xerces/parsers/DOMParser;

    move-object v0, v1

    return-object v0
.end method

.method public getSchema()Ljavax/xml/validation/Schema;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->grammar:Ljavax/xml/validation/Schema;

    move-object v0, v1

    return-object v0
.end method

.method public isNamespaceAware()Z
    .locals 6

    move-object v0, p0

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lorg/apache/xerces/parsers/DOMParser;

    const-string/jumbo v3, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v2, v3}, Lorg/apache/xerces/parsers/DOMParser;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v0, v2

    return v0

    :catch_0
    move-exception v2

    move-object v1, v2

    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-virtual {v4}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public isValidating()Z
    .locals 6

    move-object v0, p0

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lorg/apache/xerces/parsers/DOMParser;

    const-string/jumbo v3, "http://xml.org/sax/features/validation"

    invoke-virtual {v2, v3}, Lorg/apache/xerces/parsers/DOMParser;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v0, v2

    return v0

    :catch_0
    move-exception v2

    move-object v1, v2

    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-virtual {v4}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public isXIncludeAware()Z
    .locals 4

    move-object v0, p0

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lorg/apache/xerces/parsers/DOMParser;

    const-string/jumbo v3, "http://apache.org/xml/features/xinclude"

    invoke-virtual {v2, v3}, Lorg/apache/xerces/parsers/DOMParser;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v0, v2

    :goto_0
    return v0

    :catch_0
    move-exception v2

    move-object v1, v2

    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public newDocument()Lorg/w3c/dom/Document;
    .locals 4

    move-object v0, p0

    new-instance v1, Lorg/apache/xerces/dom/DocumentImpl;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Lorg/apache/xerces/dom/DocumentImpl;-><init>()V

    move-object v0, v1

    return-object v0
.end method

.method public parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v6, "jaxp-null-input-source"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->fSchemaValidator:Lorg/apache/xerces/xni/parser/XMLComponent;

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->fSchemaValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->fSchemaValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    invoke-virtual {v3}, Lorg/apache/xerces/impl/validation/ValidationManager;->reset()V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->fUnparsedEntityHandler:Lorg/apache/xerces/jaxp/UnparsedEntityHandler;

    invoke-virtual {v3}, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->reset()V

    :cond_1
    move-object v3, v0

    invoke-direct {v3}, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->resetSchemaValidator()V

    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lorg/apache/xerces/parsers/DOMParser;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/parsers/DOMParser;->parse(Lorg/xml/sax/InputSource;)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lorg/apache/xerces/parsers/DOMParser;

    invoke-virtual {v3}, Lorg/apache/xerces/parsers/DOMParser;->getDocument()Lorg/w3c/dom/Document;

    move-result-object v3

    move-object v2, v3

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lorg/apache/xerces/parsers/DOMParser;

    invoke-virtual {v3}, Lorg/apache/xerces/parsers/DOMParser;->dropDocumentReferences()V

    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public reset()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lorg/apache/xerces/parsers/DOMParser;

    invoke-virtual {v1}, Lorg/apache/xerces/parsers/DOMParser;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->fInitErrorHandler:Lorg/xml/sax/ErrorHandler;

    if-eq v1, v2, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lorg/apache/xerces/parsers/DOMParser;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->fInitErrorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/parsers/DOMParser;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lorg/apache/xerces/parsers/DOMParser;

    invoke-virtual {v1}, Lorg/apache/xerces/parsers/DOMParser;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->fInitEntityResolver:Lorg/xml/sax/EntityResolver;

    if-eq v1, v2, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lorg/apache/xerces/parsers/DOMParser;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->fInitEntityResolver:Lorg/xml/sax/EntityResolver;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/parsers/DOMParser;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    :cond_1
    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lorg/apache/xerces/parsers/DOMParser;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/parsers/DOMParser;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->domParser:Lorg/apache/xerces/parsers/DOMParser;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/parsers/DOMParser;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    return-void
.end method
