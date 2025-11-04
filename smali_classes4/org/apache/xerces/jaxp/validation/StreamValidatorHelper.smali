.class final Lorg/apache/xerces/jaxp/validation/StreamValidatorHelper;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xerces/jaxp/validation/ValidatorHelper;


# static fields
.field private static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field private static final ERROR_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-handler"

.field private static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field private static final PARSER_SETTINGS:Ljava/lang/String; = "http://apache.org/xml/features/internal/parser-settings"

.field private static final SCHEMA_VALIDATOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/schema"

.field private static final SECURITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"

.field private static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field private static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"


# instance fields
.field private final fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

.field private fConfiguration:Ljava/lang/ref/SoftReference;

.field private fParser:Ljava/lang/ref/SoftReference;

.field private final fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

.field private fSerializerFactory:Lorg/apache/xml/serialize/SerializerFactory;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    new-instance v3, Ljava/lang/ref/SoftReference;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/StreamValidatorHelper;->fConfiguration:Ljava/lang/ref/SoftReference;

    move-object v2, v0

    new-instance v3, Ljava/lang/ref/SoftReference;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/StreamValidatorHelper;->fParser:Ljava/lang/ref/SoftReference;

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/validator/schema"

    invoke-virtual {v3, v4}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    return-void
.end method

.method private initialize()Lorg/apache/xerces/xni/parser/XMLParserConfiguration;
    .locals 9

    move-object v0, p0

    new-instance v4, Lorg/apache/xerces/parsers/XML11Configuration;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Lorg/apache/xerces/parsers/XML11Configuration;-><init>()V

    move-object v1, v4

    move-object v4, v1

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/entity-resolver"

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v7, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v6, v7}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v4, v1

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/error-handler"

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v7, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {v6, v7}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {v4, v5}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object v2, v4

    move-object v4, v1

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/error-reporter"

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v4, v2

    const-string/jumbo v5, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v4, v5}, Lorg/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lorg/apache/xerces/util/MessageFormatter;

    move-result-object v4

    if-nez v4, :cond_0

    new-instance v4, Lorg/apache/xerces/impl/msg/XMLMessageFormatter;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Lorg/apache/xerces/impl/msg/XMLMessageFormatter;-><init>()V

    move-object v3, v4

    move-object v4, v2

    const-string/jumbo v5, "http://www.w3.org/TR/1998/REC-xml-19980210"

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lorg/apache/xerces/util/MessageFormatter;)V

    move-object v4, v2

    const-string/jumbo v5, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lorg/apache/xerces/util/MessageFormatter;)V

    :cond_0
    move-object v4, v1

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/symbol-table"

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v7, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {v6, v7}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v4, v1

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/validation-manager"

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v7, "http://apache.org/xml/properties/internal/validation-manager"

    invoke-virtual {v6, v7}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v4, v1

    const-string/jumbo v5, "http://apache.org/xml/properties/security-manager"

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v7, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {v6, v7}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v4, v5}, Lorg/apache/xerces/parsers/XML11Configuration;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/apache/xerces/parsers/XML11Configuration;->setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V

    move-object v4, v1

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/apache/xerces/parsers/XML11Configuration;->setDTDContentModelHandler(Lorg/apache/xerces/xni/XMLDTDContentModelHandler;)V

    move-object v4, v0

    new-instance v5, Ljava/lang/ref/SoftReference;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    invoke-direct {v6, v7}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, v4, Lorg/apache/xerces/jaxp/validation/StreamValidatorHelper;->fConfiguration:Ljava/lang/ref/SoftReference;

    move-object v4, v1

    move-object v0, v4

    return-object v0
.end method


# virtual methods
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

    instance-of v14, v14, Ljavax/xml/transform/stream/StreamResult;

    if-nez v14, :cond_0

    move-object v14, v3

    if-nez v14, :cond_a

    :cond_0
    move-object v14, v2

    check-cast v14, Ljavax/xml/transform/stream/StreamSource;

    move-object v4, v14

    move-object v14, v3

    check-cast v14, Ljavax/xml/transform/stream/StreamResult;

    move-object v5, v14

    new-instance v14, Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v4

    invoke-virtual/range {v16 .. v16}, Ljavax/xml/transform/stream/StreamSource;->getPublicId()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v4

    invoke-virtual/range {v17 .. v17}, Ljavax/xml/transform/stream/StreamSource;->getSystemId()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-direct/range {v15 .. v18}, Lorg/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v14

    move-object v14, v6

    move-object v15, v4

    invoke-virtual {v15}, Ljavax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/apache/xerces/xni/parser/XMLInputSource;->setByteStream(Ljava/io/InputStream;)V

    move-object v14, v6

    move-object v15, v4

    invoke-virtual {v15}, Ljavax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/apache/xerces/xni/parser/XMLInputSource;->setCharacterStream(Ljava/io/Reader;)V

    const/4 v14, 0x0

    move v7, v14

    move-object v14, v1

    iget-object v14, v14, Lorg/apache/xerces/jaxp/validation/StreamValidatorHelper;->fConfiguration:Ljava/lang/ref/SoftReference;

    invoke-virtual {v14}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object v8, v14

    move-object v14, v8

    if-nez v14, :cond_4

    move-object v14, v1

    invoke-direct {v14}, Lorg/apache/xerces/jaxp/validation/StreamValidatorHelper;->initialize()Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-result-object v14

    move-object v8, v14

    const/4 v14, 0x1

    move v7, v14

    :cond_1
    :goto_0
    move-object v14, v1

    iget-object v14, v14, Lorg/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v14}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->reset()V

    move-object v14, v5

    if-eqz v14, :cond_9

    move-object v14, v1

    iget-object v14, v14, Lorg/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSerializerFactory:Lorg/apache/xml/serialize/SerializerFactory;

    if-nez v14, :cond_2

    move-object v14, v1

    const-string/jumbo v15, "xml"

    invoke-static {v15}, Lorg/apache/xml/serialize/SerializerFactory;->getSerializerFactory(Ljava/lang/String;)Lorg/apache/xml/serialize/SerializerFactory;

    move-result-object v15

    iput-object v15, v14, Lorg/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSerializerFactory:Lorg/apache/xml/serialize/SerializerFactory;

    :cond_2
    move-object v14, v5

    invoke-virtual {v14}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object v14

    if-eqz v14, :cond_5

    move-object v14, v1

    iget-object v14, v14, Lorg/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSerializerFactory:Lorg/apache/xml/serialize/SerializerFactory;

    move-object v15, v5

    invoke-virtual {v15}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object v15

    new-instance v16, Lorg/apache/xml/serialize/OutputFormat;

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    invoke-direct/range {v17 .. v17}, Lorg/apache/xml/serialize/OutputFormat;-><init>()V

    invoke-virtual/range {v14 .. v16}, Lorg/apache/xml/serialize/SerializerFactory;->makeSerializer(Ljava/io/Writer;Lorg/apache/xml/serialize/OutputFormat;)Lorg/apache/xml/serialize/Serializer;

    move-result-object v14

    move-object v9, v14

    :goto_1
    move-object v14, v1

    iget-object v14, v14, Lorg/apache/xerces/jaxp/validation/StreamValidatorHelper;->fParser:Ljava/lang/ref/SoftReference;

    invoke-virtual {v14}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/xerces/parsers/SAXParser;

    move-object v10, v14

    move v14, v7

    if-nez v14, :cond_3

    move-object v14, v10

    if-nez v14, :cond_8

    :cond_3
    new-instance v14, Lorg/apache/xerces/parsers/SAXParser;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v8

    invoke-direct/range {v15 .. v16}, Lorg/apache/xerces/parsers/SAXParser;-><init>(Lorg/apache/xerces/xni/parser/XMLParserConfiguration;)V

    move-object v10, v14

    move-object v14, v1

    new-instance v15, Ljava/lang/ref/SoftReference;

    move-object/from16 v22, v15

    move-object/from16 v15, v22

    move-object/from16 v16, v22

    move-object/from16 v17, v10

    invoke-direct/range {v16 .. v17}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v15, v14, Lorg/apache/xerces/jaxp/validation/StreamValidatorHelper;->fParser:Ljava/lang/ref/SoftReference;

    :goto_2
    move-object v14, v8

    move-object v15, v1

    iget-object v15, v15, Lorg/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-interface {v14, v15}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v14, v1

    iget-object v14, v14, Lorg/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    move-object v15, v10

    invoke-virtual {v14, v15}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v14, v10

    move-object v15, v9

    invoke-interface {v15}, Lorg/apache/xml/serialize/Serializer;->asContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/apache/xerces/parsers/SAXParser;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    :goto_3
    move-object v14, v8

    move-object v15, v6

    :try_start_0
    invoke-interface {v14, v15}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->parse(Lorg/apache/xerces/xni/parser/XMLInputSource;)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v14, v1

    iget-object v14, v14, Lorg/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    return-void

    :cond_4
    move-object v14, v1

    iget-object v14, v14, Lorg/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string/jumbo v15, "http://apache.org/xml/features/internal/parser-settings"

    invoke-virtual {v14, v15}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    move-object v14, v8

    const-string/jumbo v15, "http://apache.org/xml/properties/internal/entity-resolver"

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    move-object/from16 v16, v0

    const-string/jumbo v17, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual/range {v16 .. v17}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    invoke-interface/range {v14 .. v16}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v14, v8

    const-string/jumbo v15, "http://apache.org/xml/properties/internal/error-handler"

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    move-object/from16 v16, v0

    const-string/jumbo v17, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual/range {v16 .. v17}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    invoke-interface/range {v14 .. v16}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v14, v8

    const-string/jumbo v15, "http://apache.org/xml/properties/security-manager"

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    move-object/from16 v16, v0

    const-string/jumbo v17, "http://apache.org/xml/properties/security-manager"

    invoke-virtual/range {v16 .. v17}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    invoke-interface/range {v14 .. v16}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    move-object v14, v5

    invoke-virtual {v14}, Ljavax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    if-eqz v14, :cond_6

    move-object v14, v1

    iget-object v14, v14, Lorg/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSerializerFactory:Lorg/apache/xml/serialize/SerializerFactory;

    move-object v15, v5

    invoke-virtual {v15}, Ljavax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v15

    new-instance v16, Lorg/apache/xml/serialize/OutputFormat;

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    invoke-direct/range {v17 .. v17}, Lorg/apache/xml/serialize/OutputFormat;-><init>()V

    invoke-virtual/range {v14 .. v16}, Lorg/apache/xml/serialize/SerializerFactory;->makeSerializer(Ljava/io/OutputStream;Lorg/apache/xml/serialize/OutputFormat;)Lorg/apache/xml/serialize/Serializer;

    move-result-object v14

    move-object v9, v14

    goto/16 :goto_1

    :cond_6
    move-object v14, v5

    invoke-virtual {v14}, Ljavax/xml/transform/stream/StreamResult;->getSystemId()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_7

    move-object v14, v5

    invoke-virtual {v14}, Ljavax/xml/transform/stream/StreamResult;->getSystemId()Ljava/lang/String;

    move-result-object v14

    move-object v10, v14

    move-object v14, v10

    invoke-static {v14}, Lorg/apache/xerces/impl/XMLEntityManager;->createOutputStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v14

    move-object v11, v14

    move-object v14, v1

    iget-object v14, v14, Lorg/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSerializerFactory:Lorg/apache/xml/serialize/SerializerFactory;

    move-object v15, v11

    new-instance v16, Lorg/apache/xml/serialize/OutputFormat;

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    invoke-direct/range {v17 .. v17}, Lorg/apache/xml/serialize/OutputFormat;-><init>()V

    invoke-virtual/range {v14 .. v16}, Lorg/apache/xml/serialize/SerializerFactory;->makeSerializer(Ljava/io/OutputStream;Lorg/apache/xml/serialize/OutputFormat;)Lorg/apache/xml/serialize/Serializer;

    move-result-object v14

    move-object v9, v14

    goto/16 :goto_1

    :cond_7
    new-instance v14, Ljava/lang/IllegalArgumentException;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v16

    const-string/jumbo v17, "StreamResultNotInitialized"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Lorg/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_8
    move-object v14, v10

    invoke-virtual {v14}, Lorg/apache/xerces/parsers/SAXParser;->reset()V

    goto/16 :goto_2

    :cond_9
    move-object v14, v1

    iget-object v14, v14, Lorg/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    goto/16 :goto_3

    :catch_0
    move-exception v14

    move-object v9, v14

    move-object v14, v9

    :try_start_1
    invoke-static {v14}, Lorg/apache/xerces/jaxp/validation/Util;->toSAXParseException(Lorg/apache/xerces/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object v14

    throw v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v14

    move-object v12, v14

    move-object v14, v1

    iget-object v14, v14, Lorg/apache/xerces/jaxp/validation/StreamValidatorHelper;->fSchemaValidator:Lorg/apache/xerces/impl/xs/XMLSchemaValidator;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lorg/apache/xerces/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v14, v12

    throw v14

    :catch_1
    move-exception v14

    move-object v10, v14

    move-object v14, v10

    :try_start_2
    invoke-static {v14}, Lorg/apache/xerces/jaxp/validation/Util;->toSAXException(Lorg/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object v14

    throw v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_a
    new-instance v14, Ljava/lang/IllegalArgumentException;

    move-object/from16 v22, v14

    move-object/from16 v14, v22

    move-object/from16 v15, v22

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/apache/xerces/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

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
.end method
