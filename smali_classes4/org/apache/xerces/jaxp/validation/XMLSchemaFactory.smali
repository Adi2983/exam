.class public final Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;
.super Ljavax/xml/validation/SchemaFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;,
        Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolImplExtension;
    }
.end annotation


# static fields
.field private static final JAXP_SOURCE_FEATURE_PREFIX:Ljava/lang/String; = "http://javax.xml.transform"

.field private static final SCHEMA_FULL_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema-full-checking"

.field private static final SECURITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"

.field private static final USE_GRAMMAR_POOL_ONLY:Ljava/lang/String; = "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

.field private static final XMLGRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"


# instance fields
.field private final fDOMEntityResolverWrapper:Lorg/apache/xerces/util/DOMEntityResolverWrapper;

.field private fErrorHandler:Lorg/xml/sax/ErrorHandler;

.field private final fErrorHandlerWrapper:Lorg/apache/xerces/util/ErrorHandlerWrapper;

.field private fLSResourceResolver:Lorg/w3c/dom/ls/LSResourceResolver;

.field private fSecurityManager:Lorg/apache/xerces/util/SecurityManager;

.field private fUseGrammarPoolOnly:Z

.field private final fXMLGrammarPoolWrapper:Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;

.field private final fXMLSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;


# direct methods
.method public constructor <init>()V
    .locals 6

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljavax/xml/validation/SchemaFactory;-><init>()V

    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;-><init>()V

    iput-object v2, v1, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/util/ErrorHandlerWrapper;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-static {}, Lorg/apache/xerces/jaxp/validation/DraconianErrorHandler;->getInstance()Lorg/apache/xerces/jaxp/validation/DraconianErrorHandler;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/xerces/util/ErrorHandlerWrapper;-><init>(Lorg/xml/sax/ErrorHandler;)V

    iput-object v2, v1, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fErrorHandlerWrapper:Lorg/apache/xerces/util/ErrorHandlerWrapper;

    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/util/DOMEntityResolverWrapper;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lorg/apache/xerces/util/DOMEntityResolverWrapper;-><init>()V

    iput-object v2, v1, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fDOMEntityResolverWrapper:Lorg/apache/xerces/util/DOMEntityResolverWrapper;

    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;-><init>()V

    iput-object v2, v1, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLGrammarPoolWrapper:Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    const-string/jumbo v2, "http://apache.org/xml/features/validation/schema-full-checking"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->setFeature(Ljava/lang/String;Z)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/grammar-pool"

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLGrammarPoolWrapper:Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;

    invoke-virtual {v1, v2, v3}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fDOMEntityResolverWrapper:Lorg/apache/xerces/util/DOMEntityResolverWrapper;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->setEntityResolver(Lorg/apache/xerces/xni/parser/XMLEntityResolver;)V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fErrorHandlerWrapper:Lorg/apache/xerces/util/ErrorHandlerWrapper;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->setErrorHandler(Lorg/apache/xerces/xni/parser/XMLErrorHandler;)V

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fUseGrammarPoolOnly:Z

    return-void
.end method

.method private propagateFeatures(Lorg/apache/xerces/jaxp/validation/AbstractXMLSchema;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v5, v1

    const-string/jumbo v6, "http://javax.xml.XMLConstants/feature/secure-processing"

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fSecurityManager:Lorg/apache/xerces/util/SecurityManager;

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/jaxp/validation/AbstractXMLSchema;->setFeature(Ljava/lang/String;Z)V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v5}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->getRecognizedFeatures()[Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    const/4 v5, 0x0

    move v3, v5

    :goto_1
    move v5, v3

    move-object v6, v2

    array-length v6, v6

    if-lt v5, v6, :cond_1

    return-void

    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    move-object v6, v2

    move v7, v3

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->getFeature(Ljava/lang/String;)Z

    move-result v5

    move v4, v5

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    aget-object v6, v6, v7

    move v7, v4

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/jaxp/validation/AbstractXMLSchema;->setFeature(Ljava/lang/String;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    move-object v0, v1

    return-object v0
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

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v6}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v6

    const-string/jumbo v7, "FeatureNameNull"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lorg/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    move-object v4, v1

    const-string/jumbo v5, "http://javax.xml.transform"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v1

    const-string/jumbo v5, "http://javax.xml.transform.stream.StreamSource/feature"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v1

    const-string/jumbo v5, "http://javax.xml.transform.sax.SAXSource/feature"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v1

    const-string/jumbo v5, "http://javax.xml.transform.dom.DOMSource/feature"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v1

    const-string/jumbo v5, "http://javax.xml.transform.stax.StAXSource/feature"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const/4 v4, 0x1

    move v0, v4

    :goto_0
    return v0

    :cond_2
    move-object v4, v1

    const-string/jumbo v5, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fSecurityManager:Lorg/apache/xerces/util/SecurityManager;

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    move-object v4, v1

    const-string/jumbo v5, "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fUseGrammarPoolOnly:Z

    move v0, v4

    goto :goto_0

    :cond_5
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->getFeature(Ljava/lang/String;)Z
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

    if-nez v4, :cond_6

    new-instance v4, Lorg/xml/sax/SAXNotRecognizedException;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v6}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

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

    :cond_6
    new-instance v4, Lorg/xml/sax/SAXNotSupportedException;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v6}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

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

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v6}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v6

    const-string/jumbo v7, "ProperyNameNull"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lorg/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    move-object v4, v1

    const-string/jumbo v5, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fSecurityManager:Lorg/apache/xerces/util/SecurityManager;

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_1
    move-object v4, v1

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Lorg/xml/sax/SAXNotSupportedException;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v6}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v6

    const-string/jumbo v7, "property-not-supported"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v1

    aput-object v11, v9, v10

    invoke-static {v6, v7, v8}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v0, v4

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

    if-nez v4, :cond_3

    new-instance v4, Lorg/xml/sax/SAXNotRecognizedException;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v6}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

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

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v6}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

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

.method public getResourceResolver()Lorg/w3c/dom/ls/LSResourceResolver;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fLSResourceResolver:Lorg/w3c/dom/ls/LSResourceResolver;

    move-object v0, v1

    return-object v0
.end method

.method public isSchemaLanguageSupported(Ljava/lang/String;)Z
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v4}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v4

    const-string/jumbo v5, "SchemaLanguageNull"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lorg/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v4}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v4

    const-string/jumbo v5, "SchemaLanguageLengthZero"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lorg/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    move-object v2, v1

    const-string/jumbo v3, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object v2, v1

    sget-object v3, Lorg/apache/xerces/impl/Constants;->W3C_XML_SCHEMA10_NS_URI:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public newSchema()Ljavax/xml/validation/Schema;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    new-instance v2, Lorg/apache/xerces/jaxp/validation/WeakReferenceXMLSchema;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/apache/xerces/jaxp/validation/WeakReferenceXMLSchema;-><init>()V

    move-object v1, v2

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->propagateFeatures(Lorg/apache/xerces/jaxp/validation/AbstractXMLSchema;)V

    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public newSchema(Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)Ljavax/xml/validation/Schema;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fUseGrammarPoolOnly:Z

    if-eqz v3, :cond_0

    new-instance v3, Lorg/apache/xerces/jaxp/validation/XMLSchema;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    new-instance v5, Lorg/apache/xerces/jaxp/validation/ReadOnlyGrammarPool;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v1

    invoke-direct {v6, v7}, Lorg/apache/xerces/jaxp/validation/ReadOnlyGrammarPool;-><init>(Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V

    invoke-direct {v4, v5}, Lorg/apache/xerces/jaxp/validation/XMLSchema;-><init>(Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V

    :goto_0
    move-object v2, v3

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->propagateFeatures(Lorg/apache/xerces/jaxp/validation/AbstractXMLSchema;)V

    move-object v3, v2

    move-object v0, v3

    return-object v0

    :cond_0
    new-instance v3, Lorg/apache/xerces/jaxp/validation/XMLSchema;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lorg/apache/xerces/jaxp/validation/XMLSchema;-><init>(Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Z)V

    goto :goto_0
.end method

.method public newSchema([Ljavax/xml/transform/Source;)Ljavax/xml/validation/Schema;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v13, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolImplExtension;

    move-object/from16 v21, v13

    move-object/from16 v13, v21

    move-object/from16 v14, v21

    invoke-direct {v14}, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolImplExtension;-><init>()V

    move-object v3, v13

    move-object v13, v1

    iget-object v13, v13, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLGrammarPoolWrapper:Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;

    move-object v14, v3

    invoke-virtual {v13, v14}, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;->setGrammarPool(Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V

    move-object v13, v2

    array-length v13, v13

    new-array v13, v13, [Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-object v4, v13

    const/4 v13, 0x0

    move v7, v13

    :goto_0
    move v13, v7

    move-object v14, v2

    array-length v14, v14

    if-lt v13, v14, :cond_0

    move-object v13, v1

    :try_start_0
    iget-object v13, v13, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    move-object v14, v4

    invoke-virtual {v13, v14}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->loadGrammar([Lorg/apache/xerces/xni/parser/XMLInputSource;)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v13, v1

    iget-object v13, v13, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLGrammarPoolWrapper:Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;->setGrammarPool(Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V

    move-object v13, v3

    invoke-virtual {v13}, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolImplExtension;->getGrammarCount()I

    move-result v13

    move v8, v13

    const/4 v13, 0x0

    move-object v9, v13

    move-object v13, v1

    iget-boolean v13, v13, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fUseGrammarPoolOnly:Z

    if-eqz v13, :cond_b

    move v13, v8

    const/4 v14, 0x1

    if-le v13, v14, :cond_9

    new-instance v13, Lorg/apache/xerces/jaxp/validation/XMLSchema;

    move-object/from16 v21, v13

    move-object/from16 v13, v21

    move-object/from16 v14, v21

    new-instance v15, Lorg/apache/xerces/jaxp/validation/ReadOnlyGrammarPool;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    move-object/from16 v17, v3

    invoke-direct/range {v16 .. v17}, Lorg/apache/xerces/jaxp/validation/ReadOnlyGrammarPool;-><init>(Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V

    invoke-direct {v14, v15}, Lorg/apache/xerces/jaxp/validation/XMLSchema;-><init>(Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V

    move-object v9, v13

    :goto_1
    move-object v13, v1

    move-object v14, v9

    invoke-direct {v13, v14}, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->propagateFeatures(Lorg/apache/xerces/jaxp/validation/AbstractXMLSchema;)V

    move-object v13, v9

    move-object v1, v13

    return-object v1

    :cond_0
    move-object v13, v2

    move v14, v7

    aget-object v13, v13, v14

    move-object v8, v13

    move-object v13, v8

    instance-of v13, v13, Ljavax/xml/transform/stream/StreamSource;

    if-eqz v13, :cond_1

    move-object v13, v8

    check-cast v13, Ljavax/xml/transform/stream/StreamSource;

    move-object v9, v13

    move-object v13, v9

    invoke-virtual {v13}, Ljavax/xml/transform/stream/StreamSource;->getPublicId()Ljava/lang/String;

    move-result-object v13

    move-object v10, v13

    move-object v13, v9

    invoke-virtual {v13}, Ljavax/xml/transform/stream/StreamSource;->getSystemId()Ljava/lang/String;

    move-result-object v13

    move-object v11, v13

    move-object v13, v9

    invoke-virtual {v13}, Ljavax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v13

    move-object v5, v13

    move-object v13, v9

    invoke-virtual {v13}, Ljavax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;

    move-result-object v13

    move-object v6, v13

    new-instance v13, Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-object/from16 v21, v13

    move-object/from16 v13, v21

    move-object/from16 v14, v21

    move-object v15, v10

    move-object/from16 v16, v11

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v17}, Lorg/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v12, v13

    move-object v13, v12

    move-object v14, v5

    invoke-virtual {v13, v14}, Lorg/apache/xerces/xni/parser/XMLInputSource;->setByteStream(Ljava/io/InputStream;)V

    move-object v13, v12

    move-object v14, v6

    invoke-virtual {v13, v14}, Lorg/apache/xerces/xni/parser/XMLInputSource;->setCharacterStream(Ljava/io/Reader;)V

    move-object v13, v4

    move v14, v7

    move-object v15, v12

    aput-object v15, v13, v14

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_1
    move-object v13, v8

    instance-of v13, v13, Ljavax/xml/transform/sax/SAXSource;

    if-eqz v13, :cond_3

    move-object v13, v8

    check-cast v13, Ljavax/xml/transform/sax/SAXSource;

    move-object v9, v13

    move-object v13, v9

    invoke-virtual {v13}, Ljavax/xml/transform/sax/SAXSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object v13

    move-object v10, v13

    move-object v13, v10

    if-nez v13, :cond_2

    new-instance v13, Lorg/xml/sax/SAXException;

    move-object/from16 v21, v13

    move-object/from16 v13, v21

    move-object/from16 v14, v21

    move-object v15, v1

    iget-object v15, v15, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v15}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v15

    const-string/jumbo v16, "SAXSourceNullInputSource"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Lorg/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_2
    move-object v13, v4

    move v14, v7

    new-instance v15, Lorg/apache/xerces/util/SAXInputSource;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    move-object/from16 v17, v9

    invoke-virtual/range {v17 .. v17}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v17

    move-object/from16 v18, v10

    invoke-direct/range {v16 .. v18}, Lorg/apache/xerces/util/SAXInputSource;-><init>(Lorg/xml/sax/XMLReader;Lorg/xml/sax/InputSource;)V

    aput-object v15, v13, v14

    goto :goto_2

    :cond_3
    move-object v13, v8

    instance-of v13, v13, Ljavax/xml/transform/dom/DOMSource;

    if-eqz v13, :cond_4

    move-object v13, v8

    check-cast v13, Ljavax/xml/transform/dom/DOMSource;

    move-object v9, v13

    move-object v13, v9

    invoke-virtual {v13}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object v13

    move-object v10, v13

    move-object v13, v9

    invoke-virtual {v13}, Ljavax/xml/transform/dom/DOMSource;->getSystemId()Ljava/lang/String;

    move-result-object v13

    move-object v11, v13

    move-object v13, v4

    move v14, v7

    new-instance v15, Lorg/apache/xerces/util/DOMInputSource;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    move-object/from16 v17, v10

    move-object/from16 v18, v11

    invoke-direct/range {v16 .. v18}, Lorg/apache/xerces/util/DOMInputSource;-><init>(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    aput-object v15, v13, v14

    goto :goto_2

    :cond_4
    move-object v13, v8

    instance-of v13, v13, Ljavax/xml/transform/stax/StAXSource;

    if-eqz v13, :cond_6

    move-object v13, v8

    check-cast v13, Ljavax/xml/transform/stax/StAXSource;

    move-object v9, v13

    move-object v13, v9

    invoke-virtual {v13}, Ljavax/xml/transform/stax/StAXSource;->getXMLEventReader()Ljavax/xml/stream/XMLEventReader;

    move-result-object v13

    move-object v10, v13

    move-object v13, v10

    if-eqz v13, :cond_5

    move-object v13, v4

    move v14, v7

    new-instance v15, Lorg/apache/xerces/util/StAXInputSource;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    move-object/from16 v17, v10

    invoke-direct/range {v16 .. v17}, Lorg/apache/xerces/util/StAXInputSource;-><init>(Ljavax/xml/stream/XMLEventReader;)V

    aput-object v15, v13, v14

    goto/16 :goto_2

    :cond_5
    move-object v13, v4

    move v14, v7

    new-instance v15, Lorg/apache/xerces/util/StAXInputSource;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    move-object/from16 v17, v9

    invoke-virtual/range {v17 .. v17}, Ljavax/xml/transform/stax/StAXSource;->getXMLStreamReader()Ljavax/xml/stream/XMLStreamReader;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lorg/apache/xerces/util/StAXInputSource;-><init>(Ljavax/xml/stream/XMLStreamReader;)V

    aput-object v15, v13, v14

    goto/16 :goto_2

    :cond_6
    move-object v13, v8

    if-nez v13, :cond_7

    new-instance v13, Ljava/lang/NullPointerException;

    move-object/from16 v21, v13

    move-object/from16 v13, v21

    move-object/from16 v14, v21

    move-object v15, v1

    iget-object v15, v15, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v15}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v15

    const-string/jumbo v16, "SchemaSourceArrayMemberNull"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Lorg/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_7
    new-instance v13, Ljava/lang/IllegalArgumentException;

    move-object/from16 v21, v13

    move-object/from16 v13, v21

    move-object/from16 v14, v21

    move-object v15, v1

    iget-object v15, v15, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v15}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v15

    const-string/jumbo v16, "SchemaFactorySourceUnrecognized"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    const/16 v19, 0x0

    move-object/from16 v20, v8

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v15 .. v17}, Lorg/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13

    :catch_0
    move-exception v13

    move-object v8, v13

    move-object v13, v8

    invoke-static {v13}, Lorg/apache/xerces/jaxp/validation/Util;->toSAXException(Lorg/apache/xerces/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object v13

    throw v13

    :catch_1
    move-exception v13

    move-object v9, v13

    new-instance v13, Lorg/xml/sax/SAXParseException;

    move-object/from16 v21, v13

    move-object/from16 v13, v21

    move-object/from16 v14, v21

    move-object v15, v9

    invoke-virtual {v15}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move-object/from16 v17, v9

    invoke-direct/range {v14 .. v17}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    move-object v10, v13

    move-object v13, v1

    iget-object v13, v13, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    if-eqz v13, :cond_8

    move-object v13, v1

    iget-object v13, v13, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    move-object v14, v10

    invoke-interface {v13, v14}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V

    :cond_8
    move-object v13, v10

    throw v13

    :cond_9
    move v13, v8

    const/4 v14, 0x1

    if-ne v13, v14, :cond_a

    move-object v13, v3

    const-string/jumbo v14, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {v13, v14}, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolImplExtension;->retrieveInitialGrammarSet(Ljava/lang/String;)[Lorg/apache/xerces/xni/grammars/Grammar;

    move-result-object v13

    move-object v10, v13

    new-instance v13, Lorg/apache/xerces/jaxp/validation/SimpleXMLSchema;

    move-object/from16 v21, v13

    move-object/from16 v13, v21

    move-object/from16 v14, v21

    move-object v15, v10

    const/16 v16, 0x0

    aget-object v15, v15, v16

    invoke-direct {v14, v15}, Lorg/apache/xerces/jaxp/validation/SimpleXMLSchema;-><init>(Lorg/apache/xerces/xni/grammars/Grammar;)V

    move-object v9, v13

    goto/16 :goto_1

    :cond_a
    new-instance v13, Lorg/apache/xerces/jaxp/validation/EmptyXMLSchema;

    move-object/from16 v21, v13

    move-object/from16 v13, v21

    move-object/from16 v14, v21

    invoke-direct {v14}, Lorg/apache/xerces/jaxp/validation/EmptyXMLSchema;-><init>()V

    move-object v9, v13

    goto/16 :goto_1

    :cond_b
    new-instance v13, Lorg/apache/xerces/jaxp/validation/XMLSchema;

    move-object/from16 v21, v13

    move-object/from16 v13, v21

    move-object/from16 v14, v21

    new-instance v15, Lorg/apache/xerces/jaxp/validation/ReadOnlyGrammarPool;

    move-object/from16 v21, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v21

    move-object/from16 v17, v3

    invoke-direct/range {v16 .. v17}, Lorg/apache/xerces/jaxp/validation/ReadOnlyGrammarPool;-><init>(Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V

    const/16 v16, 0x0

    invoke-direct/range {v14 .. v16}, Lorg/apache/xerces/jaxp/validation/XMLSchema;-><init>(Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Z)V

    move-object v9, v13

    goto/16 :goto_1
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fErrorHandlerWrapper:Lorg/apache/xerces/util/ErrorHandlerWrapper;

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    :goto_0
    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/ErrorHandlerWrapper;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fErrorHandlerWrapper:Lorg/apache/xerces/util/ErrorHandlerWrapper;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->setErrorHandler(Lorg/apache/xerces/xni/parser/XMLErrorHandler;)V

    return-void

    :cond_0
    invoke-static {}, Lorg/apache/xerces/jaxp/validation/DraconianErrorHandler;->getInstance()Lorg/apache/xerces/jaxp/validation/DraconianErrorHandler;

    move-result-object v3

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

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/NullPointerException;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v7}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v7

    const-string/jumbo v8, "FeatureNameNull"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lorg/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    move-object v5, v1

    const-string/jumbo v6, "http://javax.xml.transform"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v1

    const-string/jumbo v6, "http://javax.xml.transform.stream.StreamSource/feature"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v1

    const-string/jumbo v6, "http://javax.xml.transform.sax.SAXSource/feature"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v1

    const-string/jumbo v6, "http://javax.xml.transform.dom.DOMSource/feature"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v1

    const-string/jumbo v6, "http://javax.xml.transform.stax.StAXSource/feature"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    new-instance v5, Lorg/xml/sax/SAXNotSupportedException;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v7}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v7

    const-string/jumbo v8, "feature-read-only"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v1

    aput-object v12, v10, v11

    invoke-static {v7, v8, v9}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    move-object v5, v1

    const-string/jumbo v6, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v5, v0

    move v6, v2

    if-eqz v6, :cond_3

    new-instance v6, Lorg/apache/xerces/util/SecurityManager;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    invoke-direct {v7}, Lorg/apache/xerces/util/SecurityManager;-><init>()V

    :goto_0
    iput-object v6, v5, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fSecurityManager:Lorg/apache/xerces/util/SecurityManager;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    const-string/jumbo v6, "http://apache.org/xml/properties/security-manager"

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fSecurityManager:Lorg/apache/xerces/util/SecurityManager;

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    :cond_4
    move-object v5, v1

    const-string/jumbo v6, "http://apache.org/xml/features/internal/validation/schema/use-grammar-pool-only"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v5, v0

    move v6, v2

    iput-boolean v6, v5, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fUseGrammarPoolOnly:Z

    goto :goto_1

    :cond_5
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    move-object v6, v1

    move v7, v2

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

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

    if-nez v5, :cond_6

    new-instance v5, Lorg/xml/sax/SAXNotRecognizedException;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v7}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

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

    :cond_6
    new-instance v5, Lorg/xml/sax/SAXNotSupportedException;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v7}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

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

    move-object v5, v1

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/NullPointerException;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v7}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v7

    const-string/jumbo v8, "ProperyNameNull"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lorg/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    move-object v5, v1

    const-string/jumbo v6, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v0

    move-object v6, v2

    check-cast v6, Lorg/apache/xerces/util/SecurityManager;

    iput-object v6, v5, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fSecurityManager:Lorg/apache/xerces/util/SecurityManager;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    const-string/jumbo v6, "http://apache.org/xml/properties/security-manager"

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fSecurityManager:Lorg/apache/xerces/util/SecurityManager;

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    move-object v5, v1

    const-string/jumbo v6, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Lorg/xml/sax/SAXNotSupportedException;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v7}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

    move-result-object v7

    const-string/jumbo v8, "property-not-supported"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v1

    aput-object v12, v10, v11

    invoke-static {v7, v8, v9}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
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

    if-nez v5, :cond_3

    new-instance v5, Lorg/xml/sax/SAXNotRecognizedException;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v7}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

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

    :cond_3
    new-instance v5, Lorg/xml/sax/SAXNotSupportedException;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    invoke-virtual {v7}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->getLocale()Ljava/util/Locale;

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

.method public setResourceResolver(Lorg/w3c/dom/ls/LSResourceResolver;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fLSResourceResolver:Lorg/w3c/dom/ls/LSResourceResolver;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fDOMEntityResolverWrapper:Lorg/apache/xerces/util/DOMEntityResolverWrapper;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/DOMEntityResolverWrapper;->setEntityResolver(Lorg/w3c/dom/ls/LSResourceResolver;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/XMLSchemaFactory;->fDOMEntityResolverWrapper:Lorg/apache/xerces/util/DOMEntityResolverWrapper;

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->setEntityResolver(Lorg/apache/xerces/xni/parser/XMLEntityResolver;)V

    return-void
.end method
