.class final Lorg/apache/xerces/jaxp/validation/ValidatorImpl;
.super Ljavax/xml/validation/Validator;

# interfaces
.implements Lorg/apache/xerces/xs/PSVIProvider;


# static fields
.field private static final CURRENT_ELEMENT_NODE:Ljava/lang/String; = "http://apache.org/xml/properties/dom/current-element-node"

.field private static final JAXP_SOURCE_RESULT_FEATURE_PREFIX:Ljava/lang/String; = "http://javax.xml.transform"


# instance fields
.field private final fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

.field private fConfigurationChanged:Z

.field private fDOMValidatorHelper:Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;

.field private fErrorHandlerChanged:Z

.field private fResourceResolverChanged:Z

.field private fSAXValidatorHelper:Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

.field private fStAXValidatorHelper:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

.field private fStreamValidatorHelper:Lorg/apache/xerces/jaxp/validation/StreamValidatorHelper;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/jaxp/validation/XSGrammarPoolContainer;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljavax/xml/validation/Validator;-><init>()V

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fConfigurationChanged:Z

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fErrorHandlerChanged:Z

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fResourceResolverChanged:Z

    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;-><init>(Lorg/apache/xerces/jaxp/validation/XSGrammarPoolContainer;)V

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->setResourceResolver(Lorg/w3c/dom/ls/LSResourceResolver;)V

    return-void
.end method


# virtual methods
.method public getAttributePSVI(I)Lorg/apache/xerces/xs/AttributePSVI;
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fSAXValidatorHelper:Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fSAXValidatorHelper:Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    move v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->getAttributePSVI(I)Lorg/apache/xerces/xs/AttributePSVI;

    move-result-object v2

    :goto_0
    move-object v0, v2

    return-object v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getAttributePSVIByName(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/xs/AttributePSVI;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fSAXValidatorHelper:Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fSAXValidatorHelper:Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->getAttributePSVIByName(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/xs/AttributePSVI;

    move-result-object v3

    :goto_0
    move-object v0, v3

    return-object v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getElementPSVI()Lorg/apache/xerces/xs/ElementPSVI;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fSAXValidatorHelper:Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fSAXValidatorHelper:Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    invoke-virtual {v1}, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->getElementPSVI()Lorg/apache/xerces/xs/ElementPSVI;

    move-result-object v1

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v1}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object v1

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

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v6}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

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

    if-nez v4, :cond_1

    move-object v4, v1

    const-string/jumbo v5, "http://javax.xml.transform.stream.StreamResult/feature"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v1

    const-string/jumbo v5, "http://javax.xml.transform.sax.SAXResult/feature"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v1

    const-string/jumbo v5, "http://javax.xml.transform.dom.DOMResult/feature"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v1

    const-string/jumbo v5, "http://javax.xml.transform.stax.StAXResult/feature"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const/4 v4, 0x1

    move v0, v4

    :goto_0
    return v0

    :cond_2
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getFeature(Ljava/lang/String;)Z
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

    if-nez v4, :cond_3

    new-instance v4, Lorg/xml/sax/SAXNotRecognizedException;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v6}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

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

    :cond_3
    new-instance v4, Lorg/xml/sax/SAXNotSupportedException;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v6}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

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

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v6}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v6

    const-string/jumbo v7, "ProperyNameNull"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lorg/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    const-string/jumbo v4, "http://apache.org/xml/properties/dom/current-element-node"

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fDOMValidatorHelper:Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fDOMValidatorHelper:Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;

    invoke-virtual {v4}, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->getCurrentElement()Lorg/w3c/dom/Node;

    move-result-object v4

    :goto_0
    move-object v0, v4

    :goto_1
    return-object v0

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v0, v4

    goto :goto_1

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

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v6}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

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

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v6}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

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

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v1}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getResourceResolver()Lorg/w3c/dom/ls/LSResourceResolver;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public reset()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fConfigurationChanged:Z

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v1}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->restoreInitialState()V

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->setResourceResolver(Lorg/w3c/dom/ls/LSResourceResolver;)V

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fConfigurationChanged:Z

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fErrorHandlerChanged:Z

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fResourceResolverChanged:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fErrorHandlerChanged:Z

    if-eqz v1, :cond_2

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fErrorHandlerChanged:Z

    :cond_2
    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fResourceResolverChanged:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->setResourceResolver(Lorg/w3c/dom/ls/LSResourceResolver;)V

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fResourceResolverChanged:Z

    goto :goto_0
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fErrorHandlerChanged:Z

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    return-void

    :cond_0
    const/4 v3, 0x0

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

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v7}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

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

    if-nez v5, :cond_1

    move-object v5, v1

    const-string/jumbo v6, "http://javax.xml.transform.stream.StreamResult/feature"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v1

    const-string/jumbo v6, "http://javax.xml.transform.sax.SAXResult/feature"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v1

    const-string/jumbo v6, "http://javax.xml.transform.dom.DOMResult/feature"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v1

    const-string/jumbo v6, "http://javax.xml.transform.stax.StAXResult/feature"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    new-instance v5, Lorg/xml/sax/SAXNotSupportedException;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v7}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

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
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    move-object v6, v1

    move v7, v2

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fConfigurationChanged:Z

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

    if-nez v5, :cond_3

    new-instance v5, Lorg/xml/sax/SAXNotRecognizedException;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v7}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

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

    :cond_3
    new-instance v5, Lorg/xml/sax/SAXNotSupportedException;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v7}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

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

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v7}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v7

    const-string/jumbo v8, "ProperyNameNull"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lorg/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    const-string/jumbo v5, "http://apache.org/xml/properties/dom/current-element-node"

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Lorg/xml/sax/SAXNotSupportedException;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v7}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v7

    const-string/jumbo v8, "property-read-only"

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

    :cond_1
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fConfigurationChanged:Z

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

    if-nez v5, :cond_2

    new-instance v5, Lorg/xml/sax/SAXNotRecognizedException;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v7}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

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

    :cond_2
    new-instance v5, Lorg/xml/sax/SAXNotSupportedException;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v7}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

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

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fResourceResolverChanged:Z

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->setResourceResolver(Lorg/w3c/dom/ls/LSResourceResolver;)V

    return-void

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public validate(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    .locals 12
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

    instance-of v3, v3, Ljavax/xml/transform/sax/SAXSource;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fSAXValidatorHelper:Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    if-nez v3, :cond_0

    move-object v3, v0

    new-instance v4, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-direct {v5, v6}, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;-><init>(Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;)V

    iput-object v4, v3, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fSAXValidatorHelper:Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fSAXValidatorHelper:Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/jaxp/validation/ValidatorHandlerImpl;->validate(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    :goto_0
    return-void

    :cond_1
    move-object v3, v1

    instance-of v3, v3, Ljavax/xml/transform/dom/DOMSource;

    if-eqz v3, :cond_3

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fDOMValidatorHelper:Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;

    if-nez v3, :cond_2

    move-object v3, v0

    new-instance v4, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-direct {v5, v6}, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;-><init>(Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;)V

    iput-object v4, v3, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fDOMValidatorHelper:Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;

    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fDOMValidatorHelper:Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/jaxp/validation/DOMValidatorHelper;->validate(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    goto :goto_0

    :cond_3
    move-object v3, v1

    instance-of v3, v3, Ljavax/xml/transform/stax/StAXSource;

    if-eqz v3, :cond_5

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fStAXValidatorHelper:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    if-nez v3, :cond_4

    move-object v3, v0

    new-instance v4, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-direct {v5, v6}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;-><init>(Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;)V

    iput-object v4, v3, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fStAXValidatorHelper:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    :cond_4
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fStAXValidatorHelper:Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/jaxp/validation/StAXValidatorHelper;->validate(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    goto :goto_0

    :cond_5
    move-object v3, v1

    instance-of v3, v3, Ljavax/xml/transform/stream/StreamSource;

    if-eqz v3, :cond_7

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fStreamValidatorHelper:Lorg/apache/xerces/jaxp/validation/StreamValidatorHelper;

    if-nez v3, :cond_6

    move-object v3, v0

    new-instance v4, Lorg/apache/xerces/jaxp/validation/StreamValidatorHelper;

    move-object v11, v4

    move-object v4, v11

    move-object v5, v11

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-direct {v5, v6}, Lorg/apache/xerces/jaxp/validation/StreamValidatorHelper;-><init>(Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;)V

    iput-object v4, v3, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fStreamValidatorHelper:Lorg/apache/xerces/jaxp/validation/StreamValidatorHelper;

    :cond_6
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fStreamValidatorHelper:Lorg/apache/xerces/jaxp/validation/StreamValidatorHelper;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/jaxp/validation/StreamValidatorHelper;->validate(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    goto :goto_0

    :cond_7
    move-object v3, v1

    if-nez v3, :cond_8

    new-instance v3, Ljava/lang/NullPointerException;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v5}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v5

    const-string/jumbo v6, "SourceParameterNull"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lorg/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_8
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/ValidatorImpl;->fComponentManager:Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v5}, Lorg/apache/xerces/jaxp/validation/XMLSchemaValidatorComponentManager;->getLocale()Ljava/util/Locale;

    move-result-object v5

    const-string/jumbo v6, "SourceNotAccepted"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v1

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v6, v7}, Lorg/apache/xerces/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
