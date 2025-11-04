.class public Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;
.super Ljavax/xml/parsers/SAXParserFactory;


# static fields
.field private static final NAMESPACES_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field private static final VALIDATION_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field private static final XINCLUDE_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/xinclude"


# instance fields
.field private fSecureProcess:Z

.field private features:Ljava/util/Hashtable;

.field private grammar:Ljavax/xml/validation/Schema;

.field private isXIncludeAware:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljavax/xml/parsers/SAXParserFactory;-><init>()V

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;->fSecureProcess:Z

    return-void
.end method

.method private newSAXParserImpl()Lorg/apache/xerces/jaxp/SAXParserImpl;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    move-object v0, p0

    :try_start_0
    new-instance v5, Lorg/apache/xerces/jaxp/SAXParserImpl;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;->features:Ljava/util/Hashtable;

    invoke-direct {v6, v7, v8}, Lorg/apache/xerces/jaxp/SAXParserImpl;-><init>(Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;Ljava/util/Hashtable;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v1, v5

    move-object v5, v1

    move-object v0, v5

    return-object v0

    :catch_0
    move-exception v5

    move-object v2, v5

    move-object v5, v2

    throw v5

    :catch_1
    move-exception v5

    move-object v3, v5

    move-object v5, v3

    throw v5

    :catch_2
    move-exception v5

    move-object v4, v5

    new-instance v5, Ljavax/xml/parsers/ParserConfigurationException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v4

    invoke-virtual {v7}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/xml/parsers/ParserConfigurationException;-><init>(Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method public getFeature(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    :cond_0
    move-object v2, v1

    const-string/jumbo v3, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-boolean v2, v2, Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;->fSecureProcess:Z

    move v0, v2

    :goto_0
    return v0

    :cond_1
    move-object v2, v1

    const-string/jumbo v3, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;->isNamespaceAware()Z

    move-result v2

    move v0, v2

    goto :goto_0

    :cond_2
    move-object v2, v1

    const-string/jumbo v3, "http://xml.org/sax/features/validation"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;->isValidating()Z

    move-result v2

    move v0, v2

    goto :goto_0

    :cond_3
    move-object v2, v1

    const-string/jumbo v3, "http://apache.org/xml/features/xinclude"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;->isXIncludeAware()Z

    move-result v2

    move v0, v2

    goto :goto_0

    :cond_4
    move-object v2, v0

    invoke-direct {v2}, Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;->newSAXParserImpl()Lorg/apache/xerces/jaxp/SAXParserImpl;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/xerces/jaxp/SAXParserImpl;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v2, v3}, Lorg/xml/sax/XMLReader;->getFeature(Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public getSchema()Ljavax/xml/validation/Schema;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;->grammar:Ljavax/xml/validation/Schema;

    move-object v0, v1

    return-object v0
.end method

.method public isXIncludeAware()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;->isXIncludeAware:Z

    move v0, v1

    return v0
.end method

.method public newSAXParser()Ljavax/xml/parsers/SAXParser;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    move-object v0, p0

    :try_start_0
    new-instance v3, Lorg/apache/xerces/jaxp/SAXParserImpl;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;->features:Ljava/util/Hashtable;

    move-object v7, v0

    iget-boolean v7, v7, Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;->fSecureProcess:Z

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/xerces/jaxp/SAXParserImpl;-><init>(Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;Ljava/util/Hashtable;Z)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    move-object v3, v1

    move-object v0, v3

    return-object v0

    :catch_0
    move-exception v3

    move-object v2, v3

    new-instance v3, Ljavax/xml/parsers/ParserConfigurationException;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v2

    invoke-virtual {v5}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/xml/parsers/ParserConfigurationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v1

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/NullPointerException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    :cond_0
    move-object v5, v1

    const-string/jumbo v6, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v0

    move v6, v2

    iput-boolean v6, v5, Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;->fSecureProcess:Z

    :goto_0
    return-void

    :cond_1
    move-object v5, v1

    const-string/jumbo v6, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;->setNamespaceAware(Z)V

    goto :goto_0

    :cond_2
    move-object v5, v1

    const-string/jumbo v6, "http://xml.org/sax/features/validation"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;->setValidating(Z)V

    goto :goto_0

    :cond_3
    move-object v5, v1

    const-string/jumbo v6, "http://apache.org/xml/features/xinclude"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;->setXIncludeAware(Z)V

    goto :goto_0

    :cond_4
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;->features:Ljava/util/Hashtable;

    if-nez v5, :cond_5

    move-object v5, v0

    new-instance v6, Ljava/util/Hashtable;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    iput-object v6, v5, Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;->features:Ljava/util/Hashtable;

    :cond_5
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;->features:Ljava/util/Hashtable;

    move-object v6, v1

    move v7, v2

    if-eqz v7, :cond_6

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v5, v0

    :try_start_0
    invoke-direct {v5}, Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;->newSAXParserImpl()Lorg/apache/xerces/jaxp/SAXParserImpl;
    :try_end_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    goto :goto_0

    :cond_6
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    :catch_0
    move-exception v5

    move-object v3, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;->features:Ljava/util/Hashtable;

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v5, v3

    throw v5

    :catch_1
    move-exception v5

    move-object v4, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;->features:Ljava/util/Hashtable;

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v5, v4

    throw v5
.end method

.method public setSchema(Ljavax/xml/validation/Schema;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;->grammar:Ljavax/xml/validation/Schema;

    return-void
.end method

.method public setXIncludeAware(Z)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;->isXIncludeAware:Z

    return-void
.end method
