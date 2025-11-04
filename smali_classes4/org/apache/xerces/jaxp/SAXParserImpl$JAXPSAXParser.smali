.class public Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;
.super Lorg/apache/xerces/parsers/SAXParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/jaxp/SAXParserImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JAXPSAXParser"
.end annotation


# instance fields
.field private final fInitFeatures:Ljava/util/HashMap;

.field private final fInitProperties:Ljava/util/HashMap;

.field private final fSAXParser:Lorg/apache/xerces/jaxp/SAXParserImpl;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;-><init>(Lorg/apache/xerces/jaxp/SAXParserImpl;)V

    return-void
.end method

.method constructor <init>(Lorg/apache/xerces/jaxp/SAXParserImpl;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lorg/apache/xerces/parsers/SAXParser;-><init>()V

    move-object v2, v0

    new-instance v3, Ljava/util/HashMap;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitFeatures:Ljava/util/HashMap;

    move-object v2, v0

    new-instance v3, Ljava/util/HashMap;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitProperties:Ljava/util/HashMap;

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lorg/apache/xerces/jaxp/SAXParserImpl;

    return-void
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
    iget-object v2, v2, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lorg/apache/xerces/jaxp/SAXParserImpl;

    invoke-static {v2}, Lorg/apache/xerces/jaxp/SAXParserImpl;->access$000(Lorg/apache/xerces/jaxp/SAXParserImpl;)Lorg/apache/xerces/xni/parser/XMLComponent;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lorg/apache/xerces/jaxp/SAXParserImpl;

    invoke-static {v3}, Lorg/apache/xerces/jaxp/SAXParserImpl;->access$500(Lorg/apache/xerces/jaxp/SAXParserImpl;)Lorg/apache/xerces/xni/parser/XMLComponentManager;

    move-result-object v3

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

.method private setSchemaValidatorFeature(Ljava/lang/String;Z)V
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

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lorg/apache/xerces/jaxp/SAXParserImpl;

    invoke-static {v5}, Lorg/apache/xerces/jaxp/SAXParserImpl;->access$000(Lorg/apache/xerces/jaxp/SAXParserImpl;)Lorg/apache/xerces/xni/parser/XMLComponent;

    move-result-object v5

    move-object v6, v1

    move v7, v2

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLComponent;->setFeature(Ljava/lang/String;Z)V
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

    if-nez v5, :cond_0

    new-instance v5, Lorg/xml/sax/SAXNotRecognizedException;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

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

    :cond_0
    new-instance v5, Lorg/xml/sax/SAXNotSupportedException;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

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

.method private setSchemaValidatorProperty(Ljava/lang/String;Ljava/lang/Object;)V
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

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lorg/apache/xerces/jaxp/SAXParserImpl;

    invoke-static {v5}, Lorg/apache/xerces/jaxp/SAXParserImpl;->access$000(Lorg/apache/xerces/jaxp/SAXParserImpl;)Lorg/apache/xerces/xni/parser/XMLComponent;

    move-result-object v5

    move-object v6, v1

    move-object v7, v2

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
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

    if-nez v5, :cond_0

    new-instance v5, Lorg/xml/sax/SAXNotRecognizedException;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

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

    :cond_0
    new-instance v5, Lorg/xml/sax/SAXNotSupportedException;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

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


# virtual methods
.method public declared-synchronized getFeature(Ljava/lang/String;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v5, p0

    monitor-enter v5

    move-object v3, v1

    if-nez v3, :cond_0

    :try_start_0
    new-instance v3, Ljava/lang/NullPointerException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/NullPointerException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v5

    throw v0

    :cond_0
    move-object v3, v1

    :try_start_1
    const-string/jumbo v4, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v0

    :try_start_2
    const-string/jumbo v4, "http://apache.org/xml/properties/security-manager"

    invoke-super {v3, v4}, Lorg/apache/xerces/parsers/SAXParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    :goto_1
    monitor-exit v5

    return v0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v2, v3

    const/4 v3, 0x0

    move v0, v3

    goto :goto_1

    :cond_2
    move-object v3, v0

    move-object v4, v1

    :try_start_3
    invoke-super {v3, v4}, Lorg/apache/xerces/parsers/SAXParser;->getFeature(Ljava/lang/String;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v3

    move v0, v3

    goto :goto_1
.end method

.method getFeature0(Ljava/lang/String;)Z
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

    move-object v3, v1

    invoke-super {v2, v3}, Lorg/apache/xerces/parsers/SAXParser;->getFeature(Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public declared-synchronized getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v4, p0

    monitor-enter v4

    move-object v2, v1

    if-nez v2, :cond_0

    :try_start_0
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_0
    move-object v2, v0

    :try_start_1
    iget-object v2, v2, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lorg/apache/xerces/jaxp/SAXParserImpl;

    if-eqz v2, :cond_1

    const-string/jumbo v2, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lorg/apache/xerces/jaxp/SAXParserImpl;

    invoke-static {v2}, Lorg/apache/xerces/jaxp/SAXParserImpl;->access$200(Lorg/apache/xerces/jaxp/SAXParserImpl;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    move-object v0, v2

    :goto_0
    monitor-exit v4

    return-object v0

    :cond_1
    move-object v2, v0

    move-object v3, v1

    :try_start_2
    invoke-super {v2, v3}, Lorg/apache/xerces/parsers/SAXParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method getProperty0(Ljava/lang/String;)Ljava/lang/Object;
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

    move-object v3, v1

    invoke-super {v2, v3}, Lorg/apache/xerces/parsers/SAXParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method getXMLParserConfiguration()Lorg/apache/xerces/xni/parser/XMLParserConfiguration;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object v0, v1

    return-object v0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lorg/apache/xerces/jaxp/SAXParserImpl;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lorg/apache/xerces/jaxp/SAXParserImpl;

    invoke-static {v2}, Lorg/apache/xerces/jaxp/SAXParserImpl;->access$000(Lorg/apache/xerces/jaxp/SAXParserImpl;)Lorg/apache/xerces/xni/parser/XMLComponent;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lorg/apache/xerces/jaxp/SAXParserImpl;

    invoke-static {v2}, Lorg/apache/xerces/jaxp/SAXParserImpl;->access$300(Lorg/apache/xerces/jaxp/SAXParserImpl;)Lorg/apache/xerces/impl/validation/ValidationManager;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lorg/apache/xerces/jaxp/SAXParserImpl;

    invoke-static {v2}, Lorg/apache/xerces/jaxp/SAXParserImpl;->access$300(Lorg/apache/xerces/jaxp/SAXParserImpl;)Lorg/apache/xerces/impl/validation/ValidationManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xerces/impl/validation/ValidationManager;->reset()V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lorg/apache/xerces/jaxp/SAXParserImpl;

    invoke-static {v2}, Lorg/apache/xerces/jaxp/SAXParserImpl;->access$400(Lorg/apache/xerces/jaxp/SAXParserImpl;)Lorg/apache/xerces/jaxp/UnparsedEntityHandler;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->reset()V

    :cond_0
    move-object v2, v0

    invoke-direct {v2}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->resetSchemaValidator()V

    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lorg/apache/xerces/parsers/SAXParser;->parse(Ljava/lang/String;)V

    return-void
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lorg/apache/xerces/jaxp/SAXParserImpl;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lorg/apache/xerces/jaxp/SAXParserImpl;

    invoke-static {v2}, Lorg/apache/xerces/jaxp/SAXParserImpl;->access$000(Lorg/apache/xerces/jaxp/SAXParserImpl;)Lorg/apache/xerces/xni/parser/XMLComponent;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lorg/apache/xerces/jaxp/SAXParserImpl;

    invoke-static {v2}, Lorg/apache/xerces/jaxp/SAXParserImpl;->access$300(Lorg/apache/xerces/jaxp/SAXParserImpl;)Lorg/apache/xerces/impl/validation/ValidationManager;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lorg/apache/xerces/jaxp/SAXParserImpl;

    invoke-static {v2}, Lorg/apache/xerces/jaxp/SAXParserImpl;->access$300(Lorg/apache/xerces/jaxp/SAXParserImpl;)Lorg/apache/xerces/impl/validation/ValidationManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xerces/impl/validation/ValidationManager;->reset()V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lorg/apache/xerces/jaxp/SAXParserImpl;

    invoke-static {v2}, Lorg/apache/xerces/jaxp/SAXParserImpl;->access$400(Lorg/apache/xerces/jaxp/SAXParserImpl;)Lorg/apache/xerces/jaxp/UnparsedEntityHandler;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xerces/jaxp/UnparsedEntityHandler;->reset()V

    :cond_0
    move-object v2, v0

    invoke-direct {v2}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->resetSchemaValidator()V

    :cond_1
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lorg/apache/xerces/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;)V

    return-void
.end method

.method declared-synchronized restoreInitState()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    move-object v0, p0

    move-object v8, p0

    monitor-enter v8

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitFeatures:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitFeatures:Ljava/util/HashMap;

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

    iget-object v5, v5, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitFeatures:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitProperties:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitProperties:Ljava/util/HashMap;

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

    iget-object v5, v5, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitProperties:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v8

    return-void

    :cond_2
    move-object v5, v1

    :try_start_1
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

    invoke-super {v5, v6, v7}, Lorg/apache/xerces/parsers/SAXParser;->setFeature(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0

    :cond_3
    move-object v5, v1

    :try_start_2
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

    invoke-super {v5, v6, v7}, Lorg/apache/xerces/parsers/SAXParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized setFeature(Ljava/lang/String;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v9, p0

    monitor-enter v9

    move-object v5, v1

    if-nez v5, :cond_0

    :try_start_0
    new-instance v5, Ljava/lang/NullPointerException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0

    :cond_0
    move-object v5, v1

    :try_start_1
    const-string/jumbo v6, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v0

    :try_start_2
    const-string/jumbo v6, "http://apache.org/xml/properties/security-manager"

    move v7, v2

    if-eqz v7, :cond_2

    new-instance v7, Lorg/apache/xerces/util/SecurityManager;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Lorg/apache/xerces/util/SecurityManager;-><init>()V

    :goto_0
    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_1
    monitor-exit v9

    return-void

    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    :catch_0
    move-exception v5

    move-object v3, v5

    move v5, v2

    if-eqz v5, :cond_1

    move-object v5, v3

    :try_start_3
    throw v5

    :catch_1
    move-exception v5

    move-object v4, v5

    move v5, v2

    if-eqz v5, :cond_1

    move-object v5, v4

    throw v5

    :cond_3
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitFeatures:Ljava/util/HashMap;

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Lorg/apache/xerces/parsers/SAXParser;->getFeature(Ljava/lang/String;)Z

    move-result v5

    move v3, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitFeatures:Ljava/util/HashMap;

    move-object v6, v1

    move v7, v3

    if-eqz v7, :cond_6

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_2
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :cond_4
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lorg/apache/xerces/jaxp/SAXParserImpl;

    if-eqz v5, :cond_5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lorg/apache/xerces/jaxp/SAXParserImpl;

    invoke-static {v5}, Lorg/apache/xerces/jaxp/SAXParserImpl;->access$000(Lorg/apache/xerces/jaxp/SAXParserImpl;)Lorg/apache/xerces/xni/parser/XMLComponent;

    move-result-object v5

    if-eqz v5, :cond_5

    move-object v5, v0

    move-object v6, v1

    move v7, v2

    invoke-direct {v5, v6, v7}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setSchemaValidatorFeature(Ljava/lang/String;Z)V

    :cond_5
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    invoke-super {v5, v6, v7}, Lorg/apache/xerces/parsers/SAXParser;->setFeature(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_6
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method setFeature0(Ljava/lang/String;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Lorg/apache/xerces/parsers/SAXParser;->setFeature(Ljava/lang/String;Z)V

    return-void
.end method

.method public declared-synchronized setProperty(Ljava/lang/String;Ljava/lang/Object;)V
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

    move-object v12, p0

    monitor-enter v12

    move-object v4, v1

    if-nez v4, :cond_0

    :try_start_0
    new-instance v4, Ljava/lang/NullPointerException;

    move-object v13, v4

    move-object v4, v13

    move-object v5, v13

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v12

    throw v0

    :cond_0
    move-object v4, v0

    :try_start_1
    iget-object v4, v4, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lorg/apache/xerces/jaxp/SAXParserImpl;

    if-eqz v4, :cond_a

    const-string/jumbo v4, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lorg/apache/xerces/jaxp/SAXParserImpl;

    invoke-static {v4}, Lorg/apache/xerces/jaxp/SAXParserImpl;->access$100(Lorg/apache/xerces/jaxp/SAXParserImpl;)Ljavax/xml/validation/Schema;

    move-result-object v4

    if-eqz v4, :cond_1

    new-instance v4, Lorg/xml/sax/SAXNotSupportedException;

    move-object v13, v4

    move-object v4, v13

    move-object v5, v13

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v6}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v6

    const-string/jumbo v7, "schema-already-specified"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x0

    move-object v11, v1

    aput-object v11, v9, v10

    invoke-static {v6, v7, v8}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    const-string/jumbo v4, "http://www.w3.org/2001/XMLSchema"

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lorg/apache/xerces/jaxp/SAXParserImpl;

    invoke-virtual {v4}, Lorg/apache/xerces/jaxp/SAXParserImpl;->isValidating()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lorg/apache/xerces/jaxp/SAXParserImpl;

    const-string/jumbo v5, "http://www.w3.org/2001/XMLSchema"

    invoke-static {v4, v5}, Lorg/apache/xerces/jaxp/SAXParserImpl;->access$202(Lorg/apache/xerces/jaxp/SAXParserImpl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v4, v0

    const-string/jumbo v5, "http://apache.org/xml/features/validation/schema"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setFeature(Ljava/lang/String;Z)V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitProperties:Ljava/util/HashMap;

    const-string/jumbo v5, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitProperties:Ljava/util/HashMap;

    const-string/jumbo v5, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    move-object v6, v0

    const-string/jumbo v7, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-super {v6, v7}, Lorg/apache/xerces/parsers/SAXParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :cond_2
    move-object v4, v0

    const-string/jumbo v5, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    const-string/jumbo v6, "http://www.w3.org/2001/XMLSchema"

    invoke-super {v4, v5, v6}, Lorg/apache/xerces/parsers/SAXParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_0
    monitor-exit v12

    return-void

    :cond_4
    move-object v4, v2

    if-nez v4, :cond_5

    move-object v4, v0

    :try_start_2
    iget-object v4, v4, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lorg/apache/xerces/jaxp/SAXParserImpl;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/apache/xerces/jaxp/SAXParserImpl;->access$202(Lorg/apache/xerces/jaxp/SAXParserImpl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v4, v0

    const-string/jumbo v5, "http://apache.org/xml/features/validation/schema"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setFeature(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_5
    new-instance v4, Lorg/xml/sax/SAXNotSupportedException;

    move-object v13, v4

    move-object v4, v13

    move-object v5, v13

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v6}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v6

    const-string/jumbo v7, "schema-not-supported"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_6
    const-string/jumbo v4, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lorg/apache/xerces/jaxp/SAXParserImpl;

    invoke-static {v4}, Lorg/apache/xerces/jaxp/SAXParserImpl;->access$100(Lorg/apache/xerces/jaxp/SAXParserImpl;)Ljavax/xml/validation/Schema;

    move-result-object v4

    if-eqz v4, :cond_7

    new-instance v4, Lorg/xml/sax/SAXNotSupportedException;

    move-object v13, v4

    move-object v4, v13

    move-object v5, v13

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v6}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v6

    const-string/jumbo v7, "schema-already-specified"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x0

    move-object v11, v1

    aput-object v11, v9, v10

    invoke-static {v6, v7, v8}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_7
    move-object v4, v0

    const-string/jumbo v5, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-virtual {v4, v5}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v3, v4

    move-object v4, v3

    if-eqz v4, :cond_9

    const-string/jumbo v4, "http://www.w3.org/2001/XMLSchema"

    move-object v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitProperties:Ljava/util/HashMap;

    const-string/jumbo v5, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitProperties:Ljava/util/HashMap;

    const-string/jumbo v5, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    move-object v6, v0

    const-string/jumbo v7, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-super {v6, v7}, Lorg/apache/xerces/parsers/SAXParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :cond_8
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Lorg/apache/xerces/parsers/SAXParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_9
    new-instance v4, Lorg/xml/sax/SAXNotSupportedException;

    move-object v13, v4

    move-object v4, v13

    move-object v5, v13

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v6}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v6

    const-string/jumbo v7, "jaxp-order-not-supported"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x0

    const-string/jumbo v11, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    aput-object v11, v9, v10

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    const/4 v10, 0x1

    const-string/jumbo v11, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    aput-object v11, v9, v10

    invoke-static {v6, v7, v8}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_a
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitProperties:Ljava/util/HashMap;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fInitProperties:Ljava/util/HashMap;

    move-object v5, v1

    move-object v6, v0

    move-object v7, v1

    invoke-super {v6, v7}, Lorg/apache/xerces/parsers/SAXParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :cond_b
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lorg/apache/xerces/jaxp/SAXParserImpl;

    if-eqz v4, :cond_c

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->fSAXParser:Lorg/apache/xerces/jaxp/SAXParserImpl;

    invoke-static {v4}, Lorg/apache/xerces/jaxp/SAXParserImpl;->access$000(Lorg/apache/xerces/jaxp/SAXParserImpl;)Lorg/apache/xerces/xni/parser/XMLComponent;

    move-result-object v4

    if-eqz v4, :cond_c

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lorg/apache/xerces/jaxp/SAXParserImpl$JAXPSAXParser;->setSchemaValidatorProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_c
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Lorg/apache/xerces/parsers/SAXParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method setProperty0(Ljava/lang/String;Ljava/lang/Object;)V
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

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Lorg/apache/xerces/parsers/SAXParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
