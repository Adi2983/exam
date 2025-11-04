.class public Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;
.super Ljavax/xml/parsers/DocumentBuilderFactory;


# static fields
.field private static final CREATE_CDATA_NODES_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/create-cdata-nodes"

.field private static final CREATE_ENTITY_REF_NODES_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/dom/create-entity-ref-nodes"

.field private static final INCLUDE_COMMENTS_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/include-comments"

.field private static final INCLUDE_IGNORABLE_WHITESPACE:Ljava/lang/String; = "http://apache.org/xml/features/dom/include-ignorable-whitespace"

.field private static final NAMESPACES_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field private static final VALIDATION_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field private static final XINCLUDE_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/xinclude"


# instance fields
.field private attributes:Ljava/util/Hashtable;

.field private fSecureProcess:Z

.field private features:Ljava/util/Hashtable;

.field private grammar:Ljavax/xml/validation/Schema;

.field private isXIncludeAware:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;-><init>()V

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->fSecureProcess:Z

    return-void
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->attributes:Ljava/util/Hashtable;

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->attributes:Ljava/util/Hashtable;

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    move-object v5, v2

    if-eqz v5, :cond_0

    move-object v5, v2

    move-object v0, v5

    :goto_0
    return-object v0

    :cond_0
    const/4 v5, 0x0

    move-object v2, v5

    :try_start_0
    new-instance v5, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->attributes:Ljava/util/Hashtable;

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->features:Ljava/util/Hashtable;

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;-><init>(Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    invoke-virtual {v5}, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->getDOMParser()Lorg/apache/xerces/parsers/DOMParser;

    move-result-object v5

    move-object v2, v5

    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v5, v6}, Lorg/apache/xerces/parsers/DOMParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v0, v5

    goto :goto_0

    :catch_0
    move-exception v5

    move-object v3, v5

    move-object v5, v2

    move-object v6, v1

    :try_start_1
    invoke-virtual {v5, v6}, Lorg/apache/xerces/parsers/DOMParser;->getFeature(Ljava/lang/String;)Z

    move-result v5

    move v4, v5

    move v5, v4

    if-eqz v5, :cond_1

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_1
    move-object v0, v5

    goto :goto_0

    :cond_1
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v5

    move-object v4, v5

    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v3

    invoke-virtual {v7}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    const-string/jumbo v4, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-boolean v3, v3, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->fSecureProcess:Z

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move-object v3, v1

    const-string/jumbo v4, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->isNamespaceAware()Z

    move-result v3

    move v0, v3

    goto :goto_0

    :cond_1
    move-object v3, v1

    const-string/jumbo v4, "http://xml.org/sax/features/validation"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->isValidating()Z

    move-result v3

    move v0, v3

    goto :goto_0

    :cond_2
    move-object v3, v1

    const-string/jumbo v4, "http://apache.org/xml/features/xinclude"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->isXIncludeAware()Z

    move-result v3

    move v0, v3

    goto :goto_0

    :cond_3
    move-object v3, v1

    const-string/jumbo v4, "http://apache.org/xml/features/dom/include-ignorable-whitespace"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->isIgnoringElementContentWhitespace()Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    move-object v3, v1

    const-string/jumbo v4, "http://apache.org/xml/features/dom/create-entity-ref-nodes"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->isExpandEntityReferences()Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x1

    :goto_2
    move v0, v3

    goto :goto_0

    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    :cond_7
    move-object v3, v1

    const-string/jumbo v4, "http://apache.org/xml/features/include-comments"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->isIgnoringComments()Z

    move-result v3

    if-nez v3, :cond_8

    const/4 v3, 0x1

    :goto_3
    move v0, v3

    goto :goto_0

    :cond_8
    const/4 v3, 0x0

    goto :goto_3

    :cond_9
    move-object v3, v1

    const-string/jumbo v4, "http://apache.org/xml/features/create-cdata-nodes"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->isCoalescing()Z

    move-result v3

    if-nez v3, :cond_a

    const/4 v3, 0x1

    :goto_4
    move v0, v3

    goto/16 :goto_0

    :cond_a
    const/4 v3, 0x0

    goto :goto_4

    :cond_b
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->features:Ljava/util/Hashtable;

    if-eqz v3, :cond_c

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->features:Ljava/util/Hashtable;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    if-eqz v3, :cond_c

    move-object v3, v2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move v0, v3

    goto/16 :goto_0

    :cond_c
    :try_start_0
    new-instance v3, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->attributes:Ljava/util/Hashtable;

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->features:Ljava/util/Hashtable;

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;-><init>(Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    invoke-virtual {v3}, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;->getDOMParser()Lorg/apache/xerces/parsers/DOMParser;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/parsers/DOMParser;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    move v0, v3

    goto/16 :goto_0

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

.method public getSchema()Ljavax/xml/validation/Schema;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->grammar:Ljavax/xml/validation/Schema;

    move-object v0, v1

    return-object v0
.end method

.method public isXIncludeAware()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->isXIncludeAware:Z

    move v0, v1

    return v0
.end method

.method public newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->grammar:Ljavax/xml/validation/Schema;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->attributes:Ljava/util/Hashtable;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->attributes:Ljava/util/Hashtable;

    const-string/jumbo v3, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljavax/xml/parsers/ParserConfigurationException;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    const/4 v4, 0x0

    const-string/jumbo v5, "schema-already-specified"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    const-string/jumbo v9, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    aput-object v9, v7, v8

    invoke-static {v4, v5, v6}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/xml/parsers/ParserConfigurationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->attributes:Ljava/util/Hashtable;

    const-string/jumbo v3, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljavax/xml/parsers/ParserConfigurationException;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    const/4 v4, 0x0

    const-string/jumbo v5, "schema-already-specified"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    const-string/jumbo v9, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    aput-object v9, v7, v8

    invoke-static {v4, v5, v6}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/xml/parsers/ParserConfigurationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :try_start_0
    new-instance v2, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->attributes:Ljava/util/Hashtable;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->features:Ljava/util/Hashtable;

    move-object v7, v0

    iget-boolean v7, v7, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->fSecureProcess:Z

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;-><init>(Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;Ljava/util/Hashtable;Ljava/util/Hashtable;Z)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    return-object v0

    :catch_0
    move-exception v2

    move-object v1, v2

    new-instance v2, Ljavax/xml/parsers/ParserConfigurationException;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    move-object v4, v1

    invoke-virtual {v4}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/xml/parsers/ParserConfigurationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v2

    if-nez v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->attributes:Ljava/util/Hashtable;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->attributes:Ljava/util/Hashtable;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->attributes:Ljava/util/Hashtable;

    if-nez v4, :cond_2

    move-object v4, v0

    new-instance v5, Ljava/util/Hashtable;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    iput-object v5, v4, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->attributes:Ljava/util/Hashtable;

    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->attributes:Ljava/util/Hashtable;

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :try_start_0
    new-instance v4, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->attributes:Ljava/util/Hashtable;

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->features:Ljava/util/Hashtable;

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;-><init>(Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;Ljava/util/Hashtable;Ljava/util/Hashtable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v3, v4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->attributes:Ljava/util/Hashtable;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v1

    const-string/jumbo v6, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v0

    move v6, v2

    iput-boolean v6, v5, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->fSecureProcess:Z

    :goto_0
    return-void

    :cond_0
    move-object v5, v1

    const-string/jumbo v6, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->setNamespaceAware(Z)V

    goto :goto_0

    :cond_1
    move-object v5, v1

    const-string/jumbo v6, "http://xml.org/sax/features/validation"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->setValidating(Z)V

    goto :goto_0

    :cond_2
    move-object v5, v1

    const-string/jumbo v6, "http://apache.org/xml/features/xinclude"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v0

    move v6, v2

    invoke-virtual {v5, v6}, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->setXIncludeAware(Z)V

    goto :goto_0

    :cond_3
    move-object v5, v1

    const-string/jumbo v6, "http://apache.org/xml/features/dom/include-ignorable-whitespace"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v5, v0

    move v6, v2

    if-nez v6, :cond_4

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v5, v6}, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->setIgnoringElementContentWhitespace(Z)V

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    :cond_5
    move-object v5, v1

    const-string/jumbo v6, "http://apache.org/xml/features/dom/create-entity-ref-nodes"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    move-object v5, v0

    move v6, v2

    if-nez v6, :cond_6

    const/4 v6, 0x1

    :goto_2
    invoke-virtual {v5, v6}, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->setExpandEntityReferences(Z)V

    goto :goto_0

    :cond_6
    const/4 v6, 0x0

    goto :goto_2

    :cond_7
    move-object v5, v1

    const-string/jumbo v6, "http://apache.org/xml/features/include-comments"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    move-object v5, v0

    move v6, v2

    if-nez v6, :cond_8

    const/4 v6, 0x1

    :goto_3
    invoke-virtual {v5, v6}, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->setIgnoringComments(Z)V

    goto :goto_0

    :cond_8
    const/4 v6, 0x0

    goto :goto_3

    :cond_9
    move-object v5, v1

    const-string/jumbo v6, "http://apache.org/xml/features/create-cdata-nodes"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    move-object v5, v0

    move v6, v2

    if-nez v6, :cond_a

    const/4 v6, 0x1

    :goto_4
    invoke-virtual {v5, v6}, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->setCoalescing(Z)V

    goto/16 :goto_0

    :cond_a
    const/4 v6, 0x0

    goto :goto_4

    :cond_b
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->features:Ljava/util/Hashtable;

    if-nez v5, :cond_c

    move-object v5, v0

    new-instance v6, Ljava/util/Hashtable;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/util/Hashtable;-><init>()V

    iput-object v6, v5, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->features:Ljava/util/Hashtable;

    :cond_c
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->features:Ljava/util/Hashtable;

    move-object v6, v1

    move v7, v2

    if-eqz v7, :cond_d

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_5
    invoke-virtual {v5, v6, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    :try_start_0
    new-instance v5, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->attributes:Ljava/util/Hashtable;

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->features:Ljava/util/Hashtable;

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/xerces/jaxp/DocumentBuilderImpl;-><init>(Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;Ljava/util/Hashtable;Ljava/util/Hashtable;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    :cond_d
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_5

    :catch_0
    move-exception v5

    move-object v3, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->features:Ljava/util/Hashtable;

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    new-instance v5, Ljavax/xml/parsers/ParserConfigurationException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v3

    invoke-virtual {v7}, Lorg/xml/sax/SAXNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/xml/parsers/ParserConfigurationException;-><init>(Ljava/lang/String;)V

    throw v5

    :catch_1
    move-exception v5

    move-object v4, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->features:Ljava/util/Hashtable;

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    new-instance v5, Ljavax/xml/parsers/ParserConfigurationException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v4

    invoke-virtual {v7}, Lorg/xml/sax/SAXNotRecognizedException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/xml/parsers/ParserConfigurationException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public setSchema(Ljavax/xml/validation/Schema;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->grammar:Ljavax/xml/validation/Schema;

    return-void
.end method

.method public setXIncludeAware(Z)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lorg/apache/xerces/jaxp/DocumentBuilderFactoryImpl;->isXIncludeAware:Z

    return-void
.end method
