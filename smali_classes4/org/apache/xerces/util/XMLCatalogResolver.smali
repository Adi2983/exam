.class public Lorg/apache/xerces/util/XMLCatalogResolver;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xerces/xni/parser/XMLEntityResolver;
.implements Lorg/xml/sax/ext/EntityResolver2;
.implements Lorg/w3c/dom/ls/LSResourceResolver;


# instance fields
.field private fCatalog:Lorg/apache/xml/resolver/Catalog;

.field private fCatalogsChanged:Z

.field private fCatalogsList:[Ljava/lang/String;

.field private fPreferPublic:Z

.field private fResolverCatalogManager:Lorg/apache/xml/resolver/CatalogManager;

.field private fUseLiteralSystemId:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/apache/xerces/util/XMLCatalogResolver;-><init>([Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/XMLCatalogResolver;-><init>([Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/util/XMLCatalogResolver;->fResolverCatalogManager:Lorg/apache/xml/resolver/CatalogManager;

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/util/XMLCatalogResolver;->fCatalog:Lorg/apache/xml/resolver/Catalog;

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/util/XMLCatalogResolver;->fCatalogsList:[Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/apache/xerces/util/XMLCatalogResolver;->fCatalogsChanged:Z

    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/apache/xerces/util/XMLCatalogResolver;->fPreferPublic:Z

    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/apache/xerces/util/XMLCatalogResolver;->fUseLiteralSystemId:Z

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lorg/apache/xerces/util/XMLCatalogResolver;->init([Ljava/lang/String;Z)V

    return-void
.end method

.method private attachReaderToCatalog(Lorg/apache/xml/resolver/Catalog;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    new-instance v4, Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Lorg/apache/xerces/jaxp/SAXParserFactoryImpl;-><init>()V

    move-object v2, v4

    move-object v4, v2

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    move-object v4, v2

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    new-instance v4, Lorg/apache/xml/resolver/readers/SAXCatalogReader;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v2

    invoke-direct {v5, v6}, Lorg/apache/xml/resolver/readers/SAXCatalogReader;-><init>(Ljavax/xml/parsers/SAXParserFactory;)V

    move-object v3, v4

    move-object v4, v3

    const-string/jumbo v5, "urn:oasis:names:tc:entity:xmlns:xml:catalog"

    const-string/jumbo v6, "catalog"

    const-string/jumbo v7, "org.apache.xml.resolver.readers.OASISXMLCatalogReader"

    invoke-virtual {v4, v5, v6, v7}, Lorg/apache/xml/resolver/readers/SAXCatalogReader;->setCatalogParser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v1

    const-string/jumbo v5, "application/xml"

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lorg/apache/xml/resolver/Catalog;->addReader(Ljava/lang/String;Lorg/apache/xml/resolver/readers/CatalogReader;)V

    return-void
.end method

.method private init([Ljava/lang/String;Z)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    :goto_0
    iput-object v4, v3, Lorg/apache/xerces/util/XMLCatalogResolver;->fCatalogsList:[Ljava/lang/String;

    move-object v3, v0

    move v4, v2

    iput-boolean v4, v3, Lorg/apache/xerces/util/XMLCatalogResolver;->fPreferPublic:Z

    move-object v3, v0

    new-instance v4, Lorg/apache/xml/resolver/CatalogManager;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lorg/apache/xml/resolver/CatalogManager;-><init>()V

    iput-object v4, v3, Lorg/apache/xerces/util/XMLCatalogResolver;->fResolverCatalogManager:Lorg/apache/xml/resolver/CatalogManager;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLCatalogResolver;->fResolverCatalogManager:Lorg/apache/xml/resolver/CatalogManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/apache/xml/resolver/CatalogManager;->setAllowOasisXMLCatalogPI(Z)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLCatalogResolver;->fResolverCatalogManager:Lorg/apache/xml/resolver/CatalogManager;

    const-string/jumbo v4, "org.apache.xml.resolver.Catalog"

    invoke-virtual {v3, v4}, Lorg/apache/xml/resolver/CatalogManager;->setCatalogClassName(Ljava/lang/String;)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLCatalogResolver;->fResolverCatalogManager:Lorg/apache/xml/resolver/CatalogManager;

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Lorg/apache/xml/resolver/CatalogManager;->setCatalogFiles(Ljava/lang/String;)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLCatalogResolver;->fResolverCatalogManager:Lorg/apache/xml/resolver/CatalogManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/xml/resolver/CatalogManager;->setIgnoreMissingProperties(Z)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLCatalogResolver;->fResolverCatalogManager:Lorg/apache/xml/resolver/CatalogManager;

    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/util/XMLCatalogResolver;->fPreferPublic:Z

    invoke-virtual {v3, v4}, Lorg/apache/xml/resolver/CatalogManager;->setPreferPublic(Z)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLCatalogResolver;->fResolverCatalogManager:Lorg/apache/xml/resolver/CatalogManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/apache/xml/resolver/CatalogManager;->setRelativeCatalogs(Z)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLCatalogResolver;->fResolverCatalogManager:Lorg/apache/xml/resolver/CatalogManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/apache/xml/resolver/CatalogManager;->setUseStaticCatalog(Z)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLCatalogResolver;->fResolverCatalogManager:Lorg/apache/xml/resolver/CatalogManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/apache/xml/resolver/CatalogManager;->setVerbosity(I)V

    return-void

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private parseCatalogs()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLCatalogResolver;->fCatalogsList:[Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object v3, v0

    new-instance v4, Lorg/apache/xml/resolver/Catalog;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/XMLCatalogResolver;->fResolverCatalogManager:Lorg/apache/xml/resolver/CatalogManager;

    invoke-direct {v5, v6}, Lorg/apache/xml/resolver/Catalog;-><init>(Lorg/apache/xml/resolver/CatalogManager;)V

    iput-object v4, v3, Lorg/apache/xerces/util/XMLCatalogResolver;->fCatalog:Lorg/apache/xml/resolver/Catalog;

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/XMLCatalogResolver;->fCatalog:Lorg/apache/xml/resolver/Catalog;

    invoke-direct {v3, v4}, Lorg/apache/xerces/util/XMLCatalogResolver;->attachReaderToCatalog(Lorg/apache/xml/resolver/Catalog;)V

    const/4 v3, 0x0

    move v1, v3

    :goto_0
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/XMLCatalogResolver;->fCatalogsList:[Ljava/lang/String;

    array-length v4, v4

    if-lt v3, v4, :cond_0

    :goto_1
    return-void

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLCatalogResolver;->fCatalogsList:[Ljava/lang/String;

    move v4, v1

    aget-object v3, v3, v4

    move-object v2, v3

    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLCatalogResolver;->fCatalog:Lorg/apache/xml/resolver/Catalog;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/apache/xml/resolver/Catalog;->parseCatalog(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/util/XMLCatalogResolver;->fCatalog:Lorg/apache/xml/resolver/Catalog;

    goto :goto_1
.end method


# virtual methods
.method public final declared-synchronized clear()V
    .locals 4

    move-object v0, p0

    move-object v3, p0

    monitor-enter v3

    move-object v1, v0

    const/4 v2, 0x0

    :try_start_0
    iput-object v2, v1, Lorg/apache/xerces/util/XMLCatalogResolver;->fCatalog:Lorg/apache/xml/resolver/Catalog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public final declared-synchronized getCatalogList()[Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v2, p0

    monitor-enter v2

    move-object v1, v0

    :try_start_0
    iget-object v1, v1, Lorg/apache/xerces/util/XMLCatalogResolver;->fCatalogsList:[Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/XMLCatalogResolver;->fCatalogsList:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    move-object v0, v1

    monitor-exit v2

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public getExternalSubset(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v3, 0x0

    move-object v0, v3

    return-object v0
.end method

.method public final getPreferPublic()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/util/XMLCatalogResolver;->fPreferPublic:Z

    move v0, v1

    return v0
.end method

.method public final getUseLiteralSystemId()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/util/XMLCatalogResolver;->fUseLiteralSystemId:Z

    move v0, v1

    return v0
.end method

.method public resolveEntity(Lorg/apache/xerces/xni/XMLResourceIdentifier;)Lorg/apache/xerces/xni/parser/XMLInputSource;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/XMLCatalogResolver;->resolveIdentifier(Lorg/apache/xerces/xni/XMLResourceIdentifier;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    if-eqz v3, :cond_0

    new-instance v3, Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    invoke-interface {v5}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    move-object v7, v1

    invoke-interface {v7}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v5, 0x0

    move-object v3, v5

    move-object v5, v1

    if-eqz v5, :cond_1

    move-object v5, v2

    if-eqz v5, :cond_1

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/util/XMLCatalogResolver;->resolvePublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    :cond_0
    :goto_0
    move-object v5, v3

    if-eqz v5, :cond_2

    new-instance v5, Lorg/xml/sax/InputSource;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v3

    invoke-direct {v6, v7}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v5, v6}, Lorg/xml/sax/InputSource;->setPublicId(Ljava/lang/String;)V

    move-object v5, v4

    move-object v0, v5

    :goto_1
    return-object v0

    :cond_1
    move-object v5, v2

    if-eqz v5, :cond_0

    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Lorg/apache/xerces/util/XMLCatalogResolver;->resolveSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_1
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const/4 v7, 0x0

    move-object v5, v7

    move-object v7, v0

    invoke-virtual {v7}, Lorg/apache/xerces/util/XMLCatalogResolver;->getUseLiteralSystemId()Z

    move-result v7

    if-nez v7, :cond_0

    move-object v7, v3

    if-eqz v7, :cond_0

    :try_start_0
    new-instance v7, Lorg/apache/xerces/util/URI;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Lorg/apache/xerces/util/URI;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v3

    invoke-direct {v10, v11}, Lorg/apache/xerces/util/URI;-><init>(Ljava/lang/String;)V

    move-object v10, v4

    invoke-direct {v8, v9, v10}, Lorg/apache/xerces/util/URI;-><init>(Lorg/apache/xerces/util/URI;Ljava/lang/String;)V

    move-object v6, v7

    move-object v7, v6

    invoke-virtual {v7}, Lorg/apache/xerces/util/URI;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    move-object v4, v7

    :cond_0
    :goto_0
    move-object v7, v2

    if-eqz v7, :cond_2

    move-object v7, v4

    if-eqz v7, :cond_2

    move-object v7, v0

    move-object v8, v2

    move-object v9, v4

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/util/XMLCatalogResolver;->resolvePublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    :cond_1
    :goto_1
    move-object v7, v5

    if-eqz v7, :cond_3

    new-instance v7, Lorg/xml/sax/InputSource;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v5

    invoke-direct {v8, v9}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    move-object v6, v7

    move-object v7, v6

    move-object v8, v2

    invoke-virtual {v7, v8}, Lorg/xml/sax/InputSource;->setPublicId(Ljava/lang/String;)V

    move-object v7, v6

    move-object v0, v7

    :goto_2
    return-object v0

    :catch_0
    move-exception v7

    move-object v6, v7

    goto :goto_0

    :cond_2
    move-object v7, v4

    if-eqz v7, :cond_1

    move-object v7, v0

    move-object v8, v4

    invoke-virtual {v7, v8}, Lorg/apache/xerces/util/XMLCatalogResolver;->resolveSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_2
.end method

.method public resolveIdentifier(Lorg/apache/xerces/xni/XMLResourceIdentifier;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    const/4 v6, 0x0

    move-object v2, v6

    move-object v6, v1

    invoke-interface {v6}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getNamespace()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    move-object v6, v3

    if-eqz v6, :cond_0

    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v6, v7}, Lorg/apache/xerces/util/XMLCatalogResolver;->resolveURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    :cond_0
    move-object v6, v2

    if-nez v6, :cond_1

    move-object v6, v1

    invoke-interface {v6}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/util/XMLCatalogResolver;->getUseLiteralSystemId()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v1

    invoke-interface {v6}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v6

    :goto_0
    move-object v5, v6

    move-object v6, v4

    if-eqz v6, :cond_3

    move-object v6, v5

    if-eqz v6, :cond_3

    move-object v6, v0

    move-object v7, v4

    move-object v8, v5

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/util/XMLCatalogResolver;->resolvePublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    :cond_1
    :goto_1
    move-object v6, v2

    move-object v0, v6

    return-object v0

    :cond_2
    move-object v6, v1

    invoke-interface {v6}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_3
    move-object v6, v5

    if-eqz v6, :cond_1

    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Lorg/apache/xerces/util/XMLCatalogResolver;->resolveSystem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    goto :goto_1
.end method

.method public final declared-synchronized resolvePublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p0

    monitor-enter v6

    move-object v3, v0

    :try_start_0
    iget-boolean v3, v3, Lorg/apache/xerces/util/XMLCatalogResolver;->fCatalogsChanged:Z

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-direct {v3}, Lorg/apache/xerces/util/XMLCatalogResolver;->parseCatalogs()V

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lorg/apache/xerces/util/XMLCatalogResolver;->fCatalogsChanged:Z

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLCatalogResolver;->fCatalog:Lorg/apache/xml/resolver/Catalog;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLCatalogResolver;->fCatalog:Lorg/apache/xml/resolver/Catalog;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lorg/apache/xml/resolver/Catalog;->resolvePublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :goto_0
    move-object v0, v3

    monitor-exit v6

    return-object v0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public resolveResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ls/LSInput;
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    const/4 v8, 0x0

    move-object v6, v8

    move-object v8, v2

    if-eqz v8, :cond_0

    move-object v8, v0

    move-object v9, v2

    :try_start_0
    invoke-virtual {v8, v9}, Lorg/apache/xerces/util/XMLCatalogResolver;->resolveURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    :cond_0
    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/util/XMLCatalogResolver;->getUseLiteralSystemId()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v8

    if-nez v8, :cond_1

    move-object v8, v5

    if-eqz v8, :cond_1

    :try_start_1
    new-instance v8, Lorg/apache/xerces/util/URI;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    new-instance v10, Lorg/apache/xerces/util/URI;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v5

    invoke-direct {v11, v12}, Lorg/apache/xerces/util/URI;-><init>(Ljava/lang/String;)V

    move-object v11, v4

    invoke-direct {v9, v10, v11}, Lorg/apache/xerces/util/URI;-><init>(Lorg/apache/xerces/util/URI;Ljava/lang/String;)V

    move-object v7, v8

    move-object v8, v7

    invoke-virtual {v8}, Lorg/apache/xerces/util/URI;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/apache/xerces/util/URI$MalformedURIException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    move-object v4, v8

    :cond_1
    :goto_0
    move-object v8, v6

    if-nez v8, :cond_2

    move-object v8, v3

    if-eqz v8, :cond_3

    move-object v8, v4

    if-eqz v8, :cond_3

    move-object v8, v0

    move-object v9, v3

    move-object v10, v4

    :try_start_2
    invoke-virtual {v8, v9, v10}, Lorg/apache/xerces/util/XMLCatalogResolver;->resolvePublic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v8

    move-object v6, v8

    :cond_2
    :goto_1
    move-object v8, v6

    if-eqz v8, :cond_4

    new-instance v8, Lorg/apache/xerces/dom/DOMInputImpl;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v3

    move-object v11, v6

    move-object v12, v5

    invoke-direct {v9, v10, v11, v12}, Lorg/apache/xerces/dom/DOMInputImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v8

    :goto_2
    return-object v0

    :catch_0
    move-exception v8

    move-object v7, v8

    goto :goto_0

    :cond_3
    move-object v8, v4

    if-eqz v8, :cond_2

    move-object v8, v0

    move-object v9, v4

    :try_start_3
    invoke-virtual {v8, v9}, Lorg/apache/xerces/util/XMLCatalogResolver;->resolveSystem(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v8

    move-object v6, v8

    goto :goto_1

    :catch_1
    move-exception v8

    move-object v7, v8

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_2
.end method

.method public final declared-synchronized resolveSystem(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    :try_start_0
    iget-boolean v2, v2, Lorg/apache/xerces/util/XMLCatalogResolver;->fCatalogsChanged:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-direct {v2}, Lorg/apache/xerces/util/XMLCatalogResolver;->parseCatalogs()V

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xerces/util/XMLCatalogResolver;->fCatalogsChanged:Z

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/XMLCatalogResolver;->fCatalog:Lorg/apache/xml/resolver/Catalog;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/XMLCatalogResolver;->fCatalog:Lorg/apache/xml/resolver/Catalog;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xml/resolver/Catalog;->resolveSystem(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :goto_0
    move-object v0, v2

    monitor-exit v4

    return-object v0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public final declared-synchronized resolveURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    :try_start_0
    iget-boolean v2, v2, Lorg/apache/xerces/util/XMLCatalogResolver;->fCatalogsChanged:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-direct {v2}, Lorg/apache/xerces/util/XMLCatalogResolver;->parseCatalogs()V

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xerces/util/XMLCatalogResolver;->fCatalogsChanged:Z

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/XMLCatalogResolver;->fCatalog:Lorg/apache/xml/resolver/Catalog;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/XMLCatalogResolver;->fCatalog:Lorg/apache/xml/resolver/Catalog;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xml/resolver/Catalog;->resolveURI(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :goto_0
    move-object v0, v2

    monitor-exit v4

    return-object v0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public final declared-synchronized setCatalogList([Ljava/lang/String;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v4, p0

    monitor-enter v4

    move-object v2, v0

    const/4 v3, 0x1

    :try_start_0
    iput-boolean v3, v2, Lorg/apache/xerces/util/XMLCatalogResolver;->fCatalogsChanged:Z

    move-object v2, v0

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    :goto_0
    iput-object v3, v2, Lorg/apache/xerces/util/XMLCatalogResolver;->fCatalogsList:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-void

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public final setPreferPublic(Z)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lorg/apache/xerces/util/XMLCatalogResolver;->fPreferPublic:Z

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/XMLCatalogResolver;->fResolverCatalogManager:Lorg/apache/xml/resolver/CatalogManager;

    move v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xml/resolver/CatalogManager;->setPreferPublic(Z)V

    return-void
.end method

.method public final setUseLiteralSystemId(Z)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lorg/apache/xerces/util/XMLCatalogResolver;->fUseLiteralSystemId:Z

    return-void
.end method
