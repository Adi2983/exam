.class public abstract Lorg/apache/xerces/parsers/BasicParserConfiguration;
.super Lorg/apache/xerces/util/ParserConfigurationSettings;

# interfaces
.implements Lorg/apache/xerces/xni/parser/XMLParserConfiguration;


# static fields
.field protected static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field protected static final ERROR_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-handler"

.field protected static final EXTERNAL_GENERAL_ENTITIES:Ljava/lang/String; = "http://xml.org/sax/features/external-general-entities"

.field protected static final EXTERNAL_PARAMETER_ENTITIES:Ljava/lang/String; = "http://xml.org/sax/features/external-parameter-entities"

.field protected static final NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final VALIDATION:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field protected static final XML_STRING:Ljava/lang/String; = "http://xml.org/sax/properties/xml-string"


# instance fields
.field protected fComponents:Ljava/util/ArrayList;

.field protected fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

.field protected fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

.field protected fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

.field protected fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

.field protected fLocale:Ljava/util/Locale;

.field protected fSymbolTable:Lorg/apache/xerces/util/SymbolTable;


# direct methods
.method protected constructor <init>()V
    .locals 4

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/apache/xerces/parsers/BasicParserConfiguration;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/xerces/util/SymbolTable;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/parsers/BasicParserConfiguration;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    move-object v6, v2

    invoke-direct {v5, v6}, Lorg/apache/xerces/util/ParserConfigurationSettings;-><init>(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Lorg/apache/xerces/parsers/BasicParserConfiguration;->fComponents:Ljava/util/ArrayList;

    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Lorg/apache/xerces/parsers/BasicParserConfiguration;->fRecognizedFeatures:Ljava/util/ArrayList;

    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Lorg/apache/xerces/parsers/BasicParserConfiguration;->fRecognizedProperties:Ljava/util/ArrayList;

    move-object v5, v0

    new-instance v6, Ljava/util/HashMap;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v5, Lorg/apache/xerces/parsers/BasicParserConfiguration;->fFeatures:Ljava/util/HashMap;

    move-object v5, v0

    new-instance v6, Ljava/util/HashMap;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v5, Lorg/apache/xerces/parsers/BasicParserConfiguration;->fProperties:Ljava/util/HashMap;

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/String;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    const-string/jumbo v8, "http://apache.org/xml/features/internal/parser-settings"

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    const-string/jumbo v8, "http://xml.org/sax/features/validation"

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x2

    const-string/jumbo v8, "http://xml.org/sax/features/namespaces"

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x3

    const-string/jumbo v8, "http://xml.org/sax/features/external-general-entities"

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x4

    const-string/jumbo v8, "http://xml.org/sax/features/external-parameter-entities"

    aput-object v8, v6, v7

    move-object v3, v5

    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Lorg/apache/xerces/parsers/BasicParserConfiguration;->addRecognizedFeatures([Ljava/lang/String;)V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/BasicParserConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v6, "http://apache.org/xml/features/internal/parser-settings"

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/BasicParserConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v6, "http://xml.org/sax/features/validation"

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/BasicParserConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v6, "http://xml.org/sax/features/namespaces"

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/BasicParserConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v6, "http://xml.org/sax/features/external-general-entities"

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/BasicParserConfiguration;->fFeatures:Ljava/util/HashMap;

    const-string/jumbo v6, "http://xml.org/sax/features/external-parameter-entities"

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    const-string/jumbo v8, "http://xml.org/sax/properties/xml-string"

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x1

    const-string/jumbo v8, "http://apache.org/xml/properties/internal/symbol-table"

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x2

    const-string/jumbo v8, "http://apache.org/xml/properties/internal/error-handler"

    aput-object v8, v6, v7

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x3

    const-string/jumbo v8, "http://apache.org/xml/properties/internal/entity-resolver"

    aput-object v8, v6, v7

    move-object v4, v5

    move-object v5, v0

    move-object v6, v4

    invoke-virtual {v5, v6}, Lorg/apache/xerces/parsers/BasicParserConfiguration;->addRecognizedProperties([Ljava/lang/String;)V

    move-object v5, v1

    if-nez v5, :cond_0

    new-instance v5, Lorg/apache/xerces/util/SymbolTable;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Lorg/apache/xerces/util/SymbolTable;-><init>()V

    move-object v1, v5

    :cond_0
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lorg/apache/xerces/parsers/BasicParserConfiguration;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/BasicParserConfiguration;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v6, "http://apache.org/xml/properties/internal/symbol-table"

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/BasicParserConfiguration;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    return-void
.end method


# virtual methods
.method protected addComponent(Lorg/apache/xerces/xni/parser/XMLComponent;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/BasicParserConfiguration;->fComponents:Ljava/util/ArrayList;

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/BasicParserConfiguration;->fComponents:Ljava/util/ArrayList;

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    move-object v7, v1

    invoke-interface {v7}, Lorg/apache/xerces/xni/parser/XMLComponent;->getRecognizedFeatures()[Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    move-object v7, v0

    move-object v8, v2

    invoke-virtual {v7, v8}, Lorg/apache/xerces/parsers/BasicParserConfiguration;->addRecognizedFeatures([Ljava/lang/String;)V

    move-object v7, v1

    invoke-interface {v7}, Lorg/apache/xerces/xni/parser/XMLComponent;->getRecognizedProperties()[Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    move-object v7, v0

    move-object v8, v3

    invoke-virtual {v7, v8}, Lorg/apache/xerces/parsers/BasicParserConfiguration;->addRecognizedProperties([Ljava/lang/String;)V

    move-object v7, v2

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    move v4, v7

    :goto_1
    move v7, v4

    move-object v8, v2

    array-length v8, v8

    if-lt v7, v8, :cond_3

    :cond_1
    move-object v7, v3

    if-eqz v7, :cond_2

    const/4 v7, 0x0

    move v4, v7

    :goto_2
    move v7, v4

    move-object v8, v3

    array-length v8, v8

    if-lt v7, v8, :cond_5

    :cond_2
    goto :goto_0

    :cond_3
    move-object v7, v2

    move v8, v4

    aget-object v7, v7, v8

    move-object v5, v7

    move-object v7, v1

    move-object v8, v5

    invoke-interface {v7, v8}, Lorg/apache/xerces/xni/parser/XMLComponent;->getFeatureDefault(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v7

    move-object v6, v7

    move-object v7, v6

    if-eqz v7, :cond_4

    move-object v7, v0

    move-object v8, v5

    move-object v9, v6

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-super {v7, v8, v9}, Lorg/apache/xerces/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    move-object v7, v3

    move v8, v4

    aget-object v7, v7, v8

    move-object v5, v7

    move-object v7, v1

    move-object v8, v5

    invoke-interface {v7, v8}, Lorg/apache/xerces/xni/parser/XMLComponent;->getPropertyDefault(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    move-object v7, v6

    if-eqz v7, :cond_6

    move-object v7, v0

    move-object v8, v5

    move-object v9, v6

    invoke-super {v7, v8, v9}, Lorg/apache/xerces/util/ParserConfigurationSettings;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method protected checkFeature(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    const-string/jumbo v5, "http://apache.org/xml/features/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const-string/jumbo v5, "http://apache.org/xml/features/"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    move v2, v4

    move v4, v2

    const-string/jumbo v5, "internal/parser-settings"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_0

    move-object v4, v1

    const-string/jumbo v5, "internal/parser-settings"

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

    invoke-super {v4, v5}, Lorg/apache/xerces/util/ParserConfigurationSettings;->checkFeature(Ljava/lang/String;)V

    return-void
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

.method public getDTDContentModelHandler()Lorg/apache/xerces/xni/XMLDTDContentModelHandler;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/BasicParserConfiguration;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    move-object v0, v1

    return-object v0
.end method

.method public getDTDHandler()Lorg/apache/xerces/xni/XMLDTDHandler;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/BasicParserConfiguration;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    move-object v0, v1

    return-object v0
.end method

.method public getDocumentHandler()Lorg/apache/xerces/xni/XMLDocumentHandler;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/BasicParserConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v0, v1

    return-object v0
.end method

.method public getEntityResolver()Lorg/apache/xerces/xni/parser/XMLEntityResolver;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/BasicParserConfiguration;->fProperties:Ljava/util/HashMap;

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

    iget-object v1, v1, Lorg/apache/xerces/parsers/BasicParserConfiguration;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v2, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xerces/xni/parser/XMLErrorHandler;

    move-object v0, v1

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/BasicParserConfiguration;->fLocale:Ljava/util/Locale;

    move-object v0, v1

    return-object v0
.end method

.method public abstract parse(Lorg/apache/xerces/xni/parser/XMLInputSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation
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

    iget-object v4, v4, Lorg/apache/xerces/parsers/BasicParserConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v1, v4

    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move v5, v1

    if-lt v4, v5, :cond_0

    return-void

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/BasicParserConfiguration;->fComponents:Ljava/util/ArrayList;

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
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/parsers/BasicParserConfiguration;->fDTDContentModelHandler:Lorg/apache/xerces/xni/XMLDTDContentModelHandler;

    return-void
.end method

.method public setDTDHandler(Lorg/apache/xerces/xni/XMLDTDHandler;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/parsers/BasicParserConfiguration;->fDTDHandler:Lorg/apache/xerces/xni/XMLDTDHandler;

    return-void
.end method

.method public setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/parsers/BasicParserConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/BasicParserConfiguration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/BasicParserConfiguration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/BasicParserConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/parser/XMLDocumentSource;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/BasicParserConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/BasicParserConfiguration;->fDocumentHandler:Lorg/apache/xerces/xni/XMLDocumentHandler;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/BasicParserConfiguration;->fLastComponent:Lorg/apache/xerces/xni/parser/XMLDocumentSource;

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/XMLDocumentHandler;->setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V

    :cond_0
    return-void
.end method

.method public setEntityResolver(Lorg/apache/xerces/xni/parser/XMLEntityResolver;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/BasicParserConfiguration;->fProperties:Ljava/util/HashMap;

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

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/BasicParserConfiguration;->fProperties:Ljava/util/HashMap;

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/error-handler"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/BasicParserConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-lt v6, v7, :cond_0

    move-object v6, v0

    move-object v7, v1

    move v8, v2

    invoke-super {v6, v7, v8}, Lorg/apache/xerces/util/ParserConfigurationSettings;->setFeature(Ljava/lang/String;Z)V

    return-void

    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/BasicParserConfiguration;->fComponents:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/xerces/xni/parser/XMLComponent;

    move-object v5, v6

    move-object v6, v5

    move-object v7, v1

    move v8, v2

    invoke-interface {v6, v7, v8}, Lorg/apache/xerces/xni/parser/XMLComponent;->setFeature(Ljava/lang/String;Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0
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

    iput-object v3, v2, Lorg/apache/xerces/parsers/BasicParserConfiguration;->fLocale:Ljava/util/Locale;

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/BasicParserConfiguration;->fComponents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move v7, v3

    if-lt v6, v7, :cond_0

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-super {v6, v7, v8}, Lorg/apache/xerces/util/ParserConfigurationSettings;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/BasicParserConfiguration;->fComponents:Ljava/util/ArrayList;

    move v7, v4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/xerces/xni/parser/XMLComponent;

    move-object v5, v6

    move-object v6, v5

    move-object v7, v1

    move-object v8, v2

    invoke-interface {v6, v7, v8}, Lorg/apache/xerces/xni/parser/XMLComponent;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method
