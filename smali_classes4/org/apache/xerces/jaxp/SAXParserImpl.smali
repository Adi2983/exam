.class public Lorg/apache/xerces/jaxp/SAXParserImpl;
.super Ljavax/xml/parsers/SAXParser;

# interfaces
.implements Lorg/apache/xerces/jaxp/JAXPConstants;
.implements Lorg/apache/xerces/xs/PSVIProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;
    }
.end annotation


# static fields
.field private static final NAMESPACES_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field private static final NAMESPACE_PREFIXES_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/namespace-prefixes"

.field private static final SECURITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"

.field private static final VALIDATION_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field private static final XINCLUDE_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/xinclude"

.field private static final XMLSCHEMA_VALIDATION_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"


# instance fields
.field private final fInitEntityResolver:Lorg/xml/sax/EntityResolver;

.field private final fInitErrorHandler:Lorg/xml/sax/ErrorHandler;

.field private final fSchemaValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

.field private final fSchemaValidator:Lorg/apache/xerces/xni/parser/XMLComponent;

.field private final fSchemaValidatorComponentManager:Lorg/apache/xerces/xni/parser/XMLComponentManager;

.field private final fUnparsedEntityHandler:Lorg/apache/xerces/jaxp/UnparsedEntityHandler;

.field private final grammar:Ljavax/xml/validation/Schema;

.field private schemaLanguage:Ljava/lang/String;

.field private final xmlReader:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;


# direct methods
.method constructor <init>(Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;Ljava/util/Hashtable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/xerces/jaxp/SAXParserImpl;-><init>(Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;Ljava/util/Hashtable;Z)V

    return-void
.end method

.method constructor <init>(Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;Ljava/util/Hashtable;Z)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move/from16 v3, p3

    move-object v6, v0

    invoke-direct {v6}, Ljavax/xml/parsers/SAXParser;-><init>()V

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/apache/xerces/jaxp/SAXParserImpl;->schemaLanguage:Ljava/lang/String;

    move-object v6, v0

    new-instance v7, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    invoke-direct {v8, v9}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;-><init>(Lorg/apache/xerces/jaxp/SAXParserImpl;)V

    iput-object v7, v6, Lorg/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    const-string/jumbo v7, "http://xml.org/sax/features/namespaces"

    move-object v8, v1

    invoke-virtual {v8}, Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;->isNamespaceAware()Z

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setFeature0(Ljava/lang/String;Z)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    const-string/jumbo v7, "http://xml.org/sax/features/namespace-prefixes"

    move-object v8, v1

    invoke-virtual {v8}, Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;->isNamespaceAware()Z

    move-result v8

    if-nez v8, :cond_2

    const/4 v8, 0x1

    :goto_0
    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setFeature0(Ljava/lang/String;Z)V

    move-object v6, v1

    invoke-virtual {v6}, Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;->isXIncludeAware()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    const-string/jumbo v7, "http://apache.org/xml/features/xinclude"

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setFeature0(Ljava/lang/String;Z)V

    :cond_0
    move v6, v3

    if-eqz v6, :cond_1

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    const-string/jumbo v7, "http://apache.org/xml/properties/security-manager"

    new-instance v8, Lorg/apache/xerces/util/SecurityManager;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Lorg/apache/xerces/util/SecurityManager;-><init>()V

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setProperty0(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    move-object v6, v0

    move-object v7, v2

    invoke-direct {v6, v7}, Lorg/apache/xerces/jaxp/SAXParserImpl;->setFeatures(Ljava/util/Hashtable;)V

    move-object v6, v1

    invoke-virtual {v6}, Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;->isValidating()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v0

    new-instance v7, Lorg/apache/xerces/jaxp/DefaultValidationErrorHandler;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Lorg/apache/xerces/jaxp/DefaultValidationErrorHandler;-><init>()V

    iput-object v7, v6, Lorg/apache/xerces/jaxp/SAXParserImpl;->fInitErrorHandler:Lorg/xml/sax/ErrorHandler;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/SAXParserImpl;->fInitErrorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-virtual {v6, v7}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    :goto_1
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    const-string/jumbo v7, "http://xml.org/sax/features/validation"

    move-object v8, v1

    invoke-virtual {v8}, Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;->isValidating()Z

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setFeature0(Ljava/lang/String;Z)V

    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v7}, Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;->getSchema()Ljavax/xml/validation/Schema;

    move-result-object v7

    iput-object v7, v6, Lorg/apache/xerces/jaxp/SAXParserImpl;->grammar:Ljavax/xml/validation/Schema;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/SAXParserImpl;->grammar:Ljavax/xml/validation/Schema;

    if-eqz v6, :cond_5

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v6}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->getXMLParserConfiguration()Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-result-object v6

    move-object v4, v6

    const/4 v6, 0x0

    move-object v5, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/SAXParserImpl;->grammar:Ljavax/xml/validation/Schema;

    instance-of v6, v6, Lorg/apache/xerces/jaxp/validation/XSGrammarPoolContainer;

    if-eqz v6, :cond_4

    new-instance v6, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;-><init>()V

    move-object v5, v6

    move-object v6, v0

    new-instance v7, Lorg/apache/xerces/impl/validation/ValidationManager;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Lorg/apache/xerces/impl/validation/ValidationManager;-><init>()V

    iput-object v7, v6, Lorg/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    move-object v6, v0

    new-instance v7, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    invoke-direct {v8, v9}, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;-><init>(Lorg/apache/xerces/impl/validation/ValidationManager;)V

    iput-object v7, v6, Lorg/apache/xerces/jaxp/SAXParserImpl;->fUnparsedEntityHandler:Lorg/apache/xerces/jaxp/UnparsedEntityHandler;

    move-object v6, v4

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/SAXParserImpl;->fUnparsedEntityHandler:Lorg/apache/xerces/jaxp/UnparsedEntityHandler;

    invoke-interface {v6, v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/SAXParserImpl;->fUnparsedEntityHandler:Lorg/apache/xerces/jaxp/UnparsedEntityHandler;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v6, v7}, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/SAXParserImpl;->fUnparsedEntityHandler:Lorg/apache/xerces/jaxp/UnparsedEntityHandler;

    invoke-virtual {v6, v7}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setDTDSource(Lorg/apache/xerces/xni/parser/XMLDTDSource;)V

    move-object v6, v0

    new-instance v7, Lorg/apache/xerces/jaxp/SchemaValidatorConfiguration;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v4

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/jaxp/SAXParserImpl;->grammar:Ljavax/xml/validation/Schema;

    check-cast v10, Lorg/apache/xerces/jaxp/validation/XSGrammarPoolContainer;

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    invoke-direct {v8, v9, v10, v11}, Lorg/apache/xerces/jaxp/SchemaValidatorConfiguration;-><init>(Lorg/apache/xerces/xni/parser/XMLComponentManager;Lorg/apache/xerces/jaxp/validation/XSGrammarPoolContainer;Lorg/apache/xerces/impl/validation/ValidationManager;)V

    iput-object v7, v6, Lorg/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidatorComponentManager:Lorg/apache/xerces/xni/parser/XMLComponentManager;

    :goto_2
    move-object v6, v4

    move-object v7, v5

    invoke-interface {v7}, Lorg/apache/xerces/xni/parser/XMLComponent;->getRecognizedFeatures()[Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->addRecognizedFeatures([Ljava/lang/String;)V

    move-object v6, v4

    move-object v7, v5

    invoke-interface {v7}, Lorg/apache/xerces/xni/parser/XMLComponent;->getRecognizedProperties()[Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->addRecognizedProperties([Ljava/lang/String;)V

    move-object v6, v4

    move-object v7, v5

    check-cast v7, Lorg/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v6, v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v6, v5

    check-cast v6, Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-interface {v6, v7}, Lorg/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    move-object v7, v5

    check-cast v7, Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    invoke-virtual {v6, v7}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lorg/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidator:Lorg/apache/xerces/xni/parser/XMLComponent;

    :goto_3
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v7}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v7

    iput-object v7, v6, Lorg/apache/xerces/jaxp/SAXParserImpl;->fInitEntityResolver:Lorg/xml/sax/EntityResolver;

    return-void

    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_3
    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v7}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object v7

    iput-object v7, v6, Lorg/apache/xerces/jaxp/SAXParserImpl;->fInitErrorHandler:Lorg/xml/sax/ErrorHandler;

    goto/16 :goto_1

    :cond_4
    new-instance v6, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/jaxp/SAXParserImpl;->grammar:Ljavax/xml/validation/Schema;

    invoke-virtual {v8}, Ljavax/xml/validation/Schema;->newValidatorHandler()Ljavax/xml/validation/ValidatorHandler;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/apache/xerces/jaxp/JAXPValidatorComponent;-><init>(Ljavax/xml/validation/ValidatorHandler;)V

    move-object v5, v6

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/apache/xerces/jaxp/SAXParserImpl;->fUnparsedEntityHandler:Lorg/apache/xerces/jaxp/UnparsedEntityHandler;

    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lorg/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidatorComponentManager:Lorg/apache/xerces/xni/parser/XMLComponentManager;

    goto :goto_2

    :cond_5
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/apache/xerces/jaxp/SAXParserImpl;->fUnparsedEntityHandler:Lorg/apache/xerces/jaxp/UnparsedEntityHandler;

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidatorComponentManager:Lorg/apache/xerces/xni/parser/XMLComponentManager;

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidator:Lorg/apache/xerces/xni/parser/XMLComponent;

    goto :goto_3
.end method

.method static access$000(Lorg/apache/xerces/jaxp/SAXParserImpl;)Lorg/apache/xerces/xni/parser/XMLComponent;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidator:Lorg/apache/xerces/xni/parser/XMLComponent;

    move-object v0, v1

    return-object v0
.end method

.method static access$100(Lorg/apache/xerces/jaxp/SAXParserImpl;)Ljavax/xml/validation/Schema;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/SAXParserImpl;->grammar:Ljavax/xml/validation/Schema;

    move-object v0, v1

    return-object v0
.end method

.method static access$200(Lorg/apache/xerces/jaxp/SAXParserImpl;)Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/SAXParserImpl;->schemaLanguage:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method static access$202(Lorg/apache/xerces/jaxp/SAXParserImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lorg/apache/xerces/jaxp/SAXParserImpl;->schemaLanguage:Ljava/lang/String;

    move-object v0, v2

    return-object v0
.end method

.method static access$300(Lorg/apache/xerces/jaxp/SAXParserImpl;)Lorg/apache/xerces/impl/validation/ValidationManager;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidationManager:Lorg/apache/xerces/impl/validation/ValidationManager;

    move-object v0, v1

    return-object v0
.end method

.method static access$400(Lorg/apache/xerces/jaxp/SAXParserImpl;)Lorg/apache/xerces/jaxp/UnparsedEntityHandler;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/SAXParserImpl;->fUnparsedEntityHandler:Lorg/apache/xerces/jaxp/UnparsedEntityHandler;

    move-object v0, v1

    return-object v0
.end method

.method static access$500(Lorg/apache/xerces/jaxp/SAXParserImpl;)Lorg/apache/xerces/xni/parser/XMLComponentManager;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/SAXParserImpl;->fSchemaValidatorComponentManager:Lorg/apache/xerces/xni/parser/XMLComponentManager;

    move-object v0, v1

    return-object v0
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

    iget-object v6, v6, Lorg/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    move-object v7, v4

    move v8, v5

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setFeature0(Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method public getAttributePSVI(I)Lorg/apache/xerces/xs/AttributePSVI;
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    move v3, v1

    invoke-interface {v2, v3}, Lorg/apache/xerces/xs/PSVIProvider;->getAttributePSVI(I)Lorg/apache/xerces/xs/AttributePSVI;

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

    iget-object v3, v3, Lorg/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/apache/xerces/xs/PSVIProvider;->getAttributePSVIByName(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/xs/AttributePSVI;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public getElementPSVI()Lorg/apache/xerces/xs/ElementPSVI;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-interface {v1}, Lorg/apache/xerces/xs/PSVIProvider;->getElementPSVI()Lorg/apache/xerces/xs/ElementPSVI;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getParser()Lorg/xml/sax/Parser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    move-object v0, v1

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getSchema()Ljavax/xml/validation/Schema;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/SAXParserImpl;->grammar:Ljavax/xml/validation/Schema;

    move-object v0, v1

    return-object v0
.end method

.method public getXMLReader()Lorg/xml/sax/XMLReader;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    move-object v0, v1

    return-object v0
.end method

.method public isNamespaceAware()Z
    .locals 6

    move-object v0, p0

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lorg/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    const-string/jumbo v3, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v2, v3}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->getFeature(Ljava/lang/String;)Z
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
    iget-object v2, v2, Lorg/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    const-string/jumbo v3, "http://xml.org/sax/features/validation"

    invoke-virtual {v2, v3}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->getFeature(Ljava/lang/String;)Z
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
    iget-object v2, v2, Lorg/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    const-string/jumbo v3, "http://apache.org/xml/features/xinclude"

    invoke-virtual {v2, v3}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->getFeature(Ljava/lang/String;)Z
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

.method public parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/HandlerBase;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :cond_0
    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setDocumentHandler(Lorg/xml/sax/DocumentHandler;)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->parse(Lorg/xml/sax/InputSource;)V

    return-void
.end method

.method public parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :cond_0
    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setDocumentHandler(Lorg/xml/sax/DocumentHandler;)V

    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->parse(Lorg/xml/sax/InputSource;)V

    return-void
.end method

.method public reset()V
    .locals 4

    move-object v0, p0

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lorg/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v2}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->restoreInitState()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v2}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/SAXParserImpl;->fInitErrorHandler:Lorg/xml/sax/ErrorHandler;

    if-eq v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/SAXParserImpl;->fInitErrorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v2}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/SAXParserImpl;->fInitEntityResolver:Lorg/xml/sax/EntityResolver;

    if-eq v2, v3, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/SAXParserImpl;->fInitEntityResolver:Lorg/xml/sax/EntityResolver;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    :cond_1
    return-void

    :catch_0
    move-exception v2

    move-object v1, v2

    goto :goto_0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/SAXParserImpl;->xmlReader:Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
