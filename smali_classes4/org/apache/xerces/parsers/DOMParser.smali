.class public Lorg/apache/xerces/parsers/DOMParser;
.super Lorg/apache/xerces/parsers/AbstractDOMParser;


# static fields
.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final USE_ENTITY_RESOLVER2:Ljava/lang/String; = "http://xml.org/sax/features/use-entity-resolver2"

.field protected static final XMLGRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"


# instance fields
.field protected fUseEntityResolver2:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/symbol-table"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/grammar-pool"

    aput-object v3, v1, v2

    sput-object v0, Lorg/apache/xerces/parsers/DOMParser;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/apache/xerces/parsers/DOMParser;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/parsers/DOMParser;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    const-string/jumbo v4, "org.apache.xerces.xni.parser.XMLParserConfiguration"

    const-string/jumbo v5, "org.apache.xerces.parsers.XIncludeAwareParserConfiguration"

    invoke-static {v4, v5}, Lorg/apache/xerces/parsers/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-direct {v3, v4}, Lorg/apache/xerces/parsers/AbstractDOMParser;-><init>(Lorg/apache/xerces/xni/parser/XMLParserConfiguration;)V

    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/apache/xerces/parsers/DOMParser;->fUseEntityResolver2:Z

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/DOMParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    sget-object v4, Lorg/apache/xerces/parsers/DOMParser;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-interface {v3, v4}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->addRecognizedProperties([Ljava/lang/String;)V

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/DOMParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/symbol-table"

    move-object v5, v1

    invoke-interface {v3, v4, v5}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/DOMParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/grammar-pool"

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/xni/parser/XMLParserConfiguration;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lorg/apache/xerces/parsers/AbstractDOMParser;-><init>(Lorg/apache/xerces/xni/parser/XMLParserConfiguration;)V

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/apache/xerces/parsers/DOMParser;->fUseEntityResolver2:Z

    return-void
.end method


# virtual methods
.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 5

    move-object v0, p0

    const/4 v3, 0x0

    move-object v1, v3

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lorg/apache/xerces/parsers/DOMParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-interface {v3, v4}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    move-object v2, v3

    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    instance-of v3, v3, Lorg/apache/xerces/util/EntityResolverWrapper;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lorg/apache/xerces/util/EntityResolverWrapper;

    invoke-virtual {v3}, Lorg/apache/xerces/util/EntityResolverWrapper;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v3

    move-object v1, v3

    :cond_0
    :goto_0
    move-object v3, v1

    move-object v0, v3

    return-object v0

    :cond_1
    move-object v3, v2

    instance-of v3, v3, Lorg/apache/xerces/util/EntityResolver2Wrapper;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lorg/apache/xerces/util/EntityResolver2Wrapper;

    invoke-virtual {v3}, Lorg/apache/xerces/util/EntityResolver2Wrapper;->getEntityResolver()Lorg/xml/sax/ext/EntityResolver2;
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v1, v3

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v2, v3

    goto :goto_0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 5

    move-object v0, p0

    const/4 v3, 0x0

    move-object v1, v3

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lorg/apache/xerces/parsers/DOMParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/error-handler"

    invoke-interface {v3, v4}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/xni/parser/XMLErrorHandler;

    move-object v2, v3

    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    instance-of v3, v3, Lorg/apache/xerces/util/ErrorHandlerWrapper;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lorg/apache/xerces/util/ErrorHandlerWrapper;

    invoke-virtual {v3}, Lorg/apache/xerces/util/ErrorHandlerWrapper;->getErrorHandler()Lorg/xml/sax/ErrorHandler;
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v1, v3

    :cond_0
    :goto_0
    move-object v3, v1

    move-object v0, v3

    return-object v0

    :catch_0
    move-exception v3

    move-object v2, v3

    goto :goto_0
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

    :try_start_0
    const-string/jumbo v5, "http://xml.org/sax/features/use-entity-resolver2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/parsers/DOMParser;->fUseEntityResolver2:Z

    move v0, v4

    :goto_0
    return v0

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object v5, v1

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z
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

    if-nez v4, :cond_1

    new-instance v4, Lorg/xml/sax/SAXNotRecognizedException;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/DOMParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v6}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

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

    :cond_1
    new-instance v4, Lorg/xml/sax/SAXNotSupportedException;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/DOMParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v6}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

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

    const-string/jumbo v5, "http://apache.org/xml/properties/dom/current-element-node"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    move v2, v4

    move-object v4, v0

    :try_start_0
    const-string/jumbo v5, "http://apache.org/xml/features/dom/defer-node-expansion"

    invoke-virtual {v4, v5}, Lorg/apache/xerces/parsers/DOMParser;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    move v2, v4

    :goto_0
    move v4, v2

    if-eqz v4, :cond_0

    new-instance v4, Lorg/xml/sax/SAXNotSupportedException;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    const-string/jumbo v6, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v7, "CannotQueryDeferredNode"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_0
    move-exception v4

    move-object v3, v4

    goto :goto_0

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    :goto_1
    move-object v0, v4

    :goto_2
    return-object v0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    move-object v4, v0

    :try_start_1
    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object v5, v1

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    move-object v0, v4

    goto :goto_2

    :catch_1
    move-exception v4

    move-object v2, v4

    move-object v4, v2

    invoke-virtual {v4}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    move-object v4, v2

    invoke-virtual {v4}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Lorg/xml/sax/SAXNotRecognizedException;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/DOMParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v6}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

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

    :cond_3
    new-instance v4, Lorg/xml/sax/SAXNotSupportedException;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/DOMParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v6}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

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

.method public getXMLParserConfiguration()Lorg/apache/xerces/xni/parser/XMLParserConfiguration;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DOMParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object v0, v1

    return-object v0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    new-instance v6, Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x0

    move-object v9, v1

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v6

    move-object v6, v0

    move-object v7, v2

    :try_start_0
    invoke-virtual {v6, v7}, Lorg/apache/xerces/parsers/DOMParser;->parse(Lorg/apache/xerces/xni/parser/XMLInputSource;)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v6

    move-object v3, v6

    move-object v6, v3

    invoke-virtual {v6}, Lorg/apache/xerces/xni/parser/XMLParseException;->getException()Ljava/lang/Exception;

    move-result-object v6

    move-object v4, v6

    move-object v6, v4

    if-eqz v6, :cond_0

    move-object v6, v4

    instance-of v6, v6, Ljava/io/CharConversionException;

    if-eqz v6, :cond_2

    :cond_0
    new-instance v6, Lorg/xml/sax/helpers/LocatorImpl;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    move-object v5, v6

    move-object v6, v5

    move-object v7, v3

    invoke-virtual {v7}, Lorg/apache/xerces/xni/parser/XMLParseException;->getPublicId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/xml/sax/helpers/LocatorImpl;->setPublicId(Ljava/lang/String;)V

    move-object v6, v5

    move-object v7, v3

    invoke-virtual {v7}, Lorg/apache/xerces/xni/parser/XMLParseException;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    move-object v6, v5

    move-object v7, v3

    invoke-virtual {v7}, Lorg/apache/xerces/xni/parser/XMLParseException;->getLineNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    move-object v6, v5

    move-object v7, v3

    invoke-virtual {v7}, Lorg/apache/xerces/xni/parser/XMLParseException;->getColumnNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    move-object v6, v4

    if-nez v6, :cond_1

    new-instance v6, Lorg/xml/sax/SAXParseException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v3

    invoke-virtual {v8}, Lorg/apache/xerces/xni/parser/XMLParseException;->getMessage()Ljava/lang/String;

    move-result-object v8

    move-object v9, v5

    invoke-direct {v7, v8, v9}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    :goto_0
    throw v6

    :cond_1
    new-instance v6, Lorg/xml/sax/SAXParseException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v3

    invoke-virtual {v8}, Lorg/apache/xerces/xni/parser/XMLParseException;->getMessage()Ljava/lang/String;

    move-result-object v8

    move-object v9, v5

    move-object v10, v4

    invoke-direct {v7, v8, v9, v10}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    move-object v6, v4

    instance-of v6, v6, Lorg/xml/sax/SAXException;

    if-eqz v6, :cond_3

    move-object v6, v4

    check-cast v6, Lorg/xml/sax/SAXException;

    throw v6

    :cond_3
    move-object v6, v4

    instance-of v6, v6, Ljava/io/IOException;

    if-eqz v6, :cond_4

    move-object v6, v4

    check-cast v6, Ljava/io/IOException;

    throw v6

    :cond_4
    new-instance v6, Lorg/xml/sax/SAXException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v4

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v6

    :catch_1
    move-exception v6

    move-object v4, v6

    move-object v6, v4

    invoke-virtual {v6}, Lorg/apache/xerces/xni/XNIException;->printStackTrace()V

    move-object v6, v4

    invoke-virtual {v6}, Lorg/apache/xerces/xni/XNIException;->getException()Ljava/lang/Exception;

    move-result-object v6

    move-object v5, v6

    move-object v6, v5

    if-nez v6, :cond_5

    new-instance v6, Lorg/xml/sax/SAXException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v4

    invoke-virtual {v8}, Lorg/apache/xerces/xni/XNIException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_5
    move-object v6, v5

    instance-of v6, v6, Lorg/xml/sax/SAXException;

    if-eqz v6, :cond_6

    move-object v6, v5

    check-cast v6, Lorg/xml/sax/SAXException;

    throw v6

    :cond_6
    move-object v6, v5

    instance-of v6, v6, Ljava/io/IOException;

    if-eqz v6, :cond_7

    move-object v6, v5

    check-cast v6, Ljava/io/IOException;

    throw v6

    :cond_7
    new-instance v6, Lorg/xml/sax/SAXException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v5

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v6
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    :try_start_0
    new-instance v5, Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    invoke-virtual {v7}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v8}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v5

    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v6}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/xerces/xni/parser/XMLInputSource;->setByteStream(Ljava/io/InputStream;)V

    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v6}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/xerces/xni/parser/XMLInputSource;->setCharacterStream(Ljava/io/Reader;)V

    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v6}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/xerces/xni/parser/XMLInputSource;->setEncoding(Ljava/lang/String;)V

    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Lorg/apache/xerces/parsers/DOMParser;->parse(Lorg/apache/xerces/xni/parser/XMLInputSource;)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v5

    move-object v2, v5

    move-object v5, v2

    invoke-virtual {v5}, Lorg/apache/xerces/xni/parser/XMLParseException;->getException()Ljava/lang/Exception;

    move-result-object v5

    move-object v3, v5

    move-object v5, v3

    if-eqz v5, :cond_0

    move-object v5, v3

    instance-of v5, v5, Ljava/io/CharConversionException;

    if-eqz v5, :cond_2

    :cond_0
    new-instance v5, Lorg/xml/sax/helpers/LocatorImpl;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    move-object v4, v5

    move-object v5, v4

    move-object v6, v2

    invoke-virtual {v6}, Lorg/apache/xerces/xni/parser/XMLParseException;->getPublicId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/xml/sax/helpers/LocatorImpl;->setPublicId(Ljava/lang/String;)V

    move-object v5, v4

    move-object v6, v2

    invoke-virtual {v6}, Lorg/apache/xerces/xni/parser/XMLParseException;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    move-object v5, v4

    move-object v6, v2

    invoke-virtual {v6}, Lorg/apache/xerces/xni/parser/XMLParseException;->getLineNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    move-object v5, v4

    move-object v6, v2

    invoke-virtual {v6}, Lorg/apache/xerces/xni/parser/XMLParseException;->getColumnNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    move-object v5, v3

    if-nez v5, :cond_1

    new-instance v5, Lorg/xml/sax/SAXParseException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v2

    invoke-virtual {v7}, Lorg/apache/xerces/xni/parser/XMLParseException;->getMessage()Ljava/lang/String;

    move-result-object v7

    move-object v8, v4

    invoke-direct {v6, v7, v8}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    :goto_0
    throw v5

    :cond_1
    new-instance v5, Lorg/xml/sax/SAXParseException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v2

    invoke-virtual {v7}, Lorg/apache/xerces/xni/parser/XMLParseException;->getMessage()Ljava/lang/String;

    move-result-object v7

    move-object v8, v4

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    move-object v5, v3

    instance-of v5, v5, Lorg/xml/sax/SAXException;

    if-eqz v5, :cond_3

    move-object v5, v3

    check-cast v5, Lorg/xml/sax/SAXException;

    throw v5

    :cond_3
    move-object v5, v3

    instance-of v5, v5, Ljava/io/IOException;

    if-eqz v5, :cond_4

    move-object v5, v3

    check-cast v5, Ljava/io/IOException;

    throw v5

    :cond_4
    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v3

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v5

    :catch_1
    move-exception v5

    move-object v3, v5

    move-object v5, v3

    invoke-virtual {v5}, Lorg/apache/xerces/xni/XNIException;->getException()Ljava/lang/Exception;

    move-result-object v5

    move-object v4, v5

    move-object v5, v4

    if-nez v5, :cond_5

    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v3

    invoke-virtual {v7}, Lorg/apache/xerces/xni/XNIException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_5
    move-object v5, v4

    instance-of v5, v5, Lorg/xml/sax/SAXException;

    if-eqz v5, :cond_6

    move-object v5, v4

    check-cast v5, Lorg/xml/sax/SAXException;

    throw v5

    :cond_6
    move-object v5, v4

    instance-of v5, v5, Ljava/io/IOException;

    if-eqz v5, :cond_7

    move-object v5, v4

    check-cast v5, Ljava/io/IOException;

    throw v5

    :cond_7
    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v4

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v5
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    move-object v2, v4

    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/parsers/DOMParser;->fUseEntityResolver2:Z

    if-eqz v4, :cond_1

    move-object v4, v1

    instance-of v4, v4, Lorg/xml/sax/ext/EntityResolver2;

    if-eqz v4, :cond_1

    move-object v4, v2

    instance-of v4, v4, Lorg/apache/xerces/util/EntityResolver2Wrapper;

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Lorg/apache/xerces/util/EntityResolver2Wrapper;

    move-object v3, v4

    move-object v4, v3

    move-object v5, v1

    check-cast v5, Lorg/xml/sax/ext/EntityResolver2;

    invoke-virtual {v4, v5}, Lorg/apache/xerces/util/EntityResolver2Wrapper;->setEntityResolver(Lorg/xml/sax/ext/EntityResolver2;)V

    :goto_0
    return-void

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/entity-resolver"

    new-instance v6, Lorg/apache/xerces/util/EntityResolver2Wrapper;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v1

    check-cast v8, Lorg/xml/sax/ext/EntityResolver2;

    invoke-direct {v7, v8}, Lorg/apache/xerces/util/EntityResolver2Wrapper;-><init>(Lorg/xml/sax/ext/EntityResolver2;)V

    invoke-interface {v4, v5, v6}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move-object v4, v2

    instance-of v4, v4, Lorg/apache/xerces/util/EntityResolverWrapper;

    if-eqz v4, :cond_2

    move-object v4, v2

    check-cast v4, Lorg/apache/xerces/util/EntityResolverWrapper;

    move-object v3, v4

    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xerces/util/EntityResolverWrapper;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    goto :goto_0

    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/entity-resolver"

    new-instance v6, Lorg/apache/xerces/util/EntityResolverWrapper;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v1

    invoke-direct {v7, v8}, Lorg/apache/xerces/util/EntityResolverWrapper;-><init>(Lorg/xml/sax/EntityResolver;)V

    invoke-interface {v4, v5, v6}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v2, v4

    goto :goto_0
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/error-handler"

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/xni/parser/XMLErrorHandler;

    move-object v2, v4

    move-object v4, v2

    instance-of v4, v4, Lorg/apache/xerces/util/ErrorHandlerWrapper;

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Lorg/apache/xerces/util/ErrorHandlerWrapper;

    move-object v3, v4

    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xerces/util/ErrorHandlerWrapper;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    :goto_0
    return-void

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/error-handler"

    new-instance v6, Lorg/apache/xerces/util/ErrorHandlerWrapper;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v1

    invoke-direct {v7, v8}, Lorg/apache/xerces/util/ErrorHandlerWrapper;-><init>(Lorg/xml/sax/ErrorHandler;)V

    invoke-interface {v4, v5, v6}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v2, v4

    goto :goto_0
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

    :try_start_0
    const-string/jumbo v6, "http://xml.org/sax/features/use-entity-resolver2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v2

    move-object v6, v0

    iget-boolean v6, v6, Lorg/apache/xerces/parsers/DOMParser;->fUseEntityResolver2:Z

    if-eq v5, v6, :cond_0

    move-object v5, v0

    move v6, v2

    iput-boolean v6, v5, Lorg/apache/xerces/parsers/DOMParser;->fUseEntityResolver2:Z

    move-object v5, v0

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/parsers/DOMParser;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/xerces/parsers/DOMParser;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object v6, v1

    move v7, v2

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V
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

    iget-object v7, v7, Lorg/apache/xerces/parsers/DOMParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

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

    :cond_2
    new-instance v5, Lorg/xml/sax/SAXNotSupportedException;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/DOMParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

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

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object v6, v1

    move-object v7, v2

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
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

    iget-object v7, v7, Lorg/apache/xerces/parsers/DOMParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

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

    iget-object v7, v7, Lorg/apache/xerces/parsers/DOMParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

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
