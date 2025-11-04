.class public Lorg/apache/xerces/parsers/DOMASBuilderImpl;
.super Lorg/apache/xerces/parsers/DOMParserImpl;

# interfaces
.implements Lorg/apache/xerces/dom3/as/DOMASBuilder;


# static fields
.field protected static final ENTITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-manager"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final SCHEMA_FULL_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema-full-checking"

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"


# instance fields
.field protected fAbstractSchema:Lorg/apache/xerces/dom/ASModelImpl;

.field protected fGrammarBucket:Lorg/apache/xerces/impl/xs/XSGrammarBucket;


# direct methods
.method public constructor <init>()V
    .locals 5

    move-object v0, p0

    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;-><init>()V

    invoke-direct {v1, v2}, Lorg/apache/xerces/parsers/DOMParserImpl;-><init>(Lorg/apache/xerces/xni/parser/XMLParserConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lorg/apache/xerces/parsers/DOMParserImpl;-><init>(Lorg/apache/xerces/xni/parser/XMLParserConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;-><init>(Lorg/apache/xerces/util/SymbolTable;)V

    invoke-direct {v2, v3}, Lorg/apache/xerces/parsers/DOMParserImpl;-><init>(Lorg/apache/xerces/xni/parser/XMLParserConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    new-instance v4, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V

    invoke-direct {v3, v4}, Lorg/apache/xerces/parsers/DOMParserImpl;-><init>(Lorg/apache/xerces/xni/parser/XMLParserConfiguration;)V

    return-void
.end method

.method private addGrammars(Lorg/apache/xerces/dom/ASModelImpl;Lorg/apache/xerces/impl/xs/XSGrammarBucket;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v2

    invoke-virtual {v6}, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->getGrammars()[Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v6

    move-object v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v4

    move-object v7, v3

    array-length v7, v7

    if-lt v6, v7, :cond_0

    return-void

    :cond_0
    new-instance v6, Lorg/apache/xerces/dom/ASModelImpl;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Lorg/apache/xerces/dom/ASModelImpl;-><init>()V

    move-object v5, v6

    move-object v6, v5

    move-object v7, v3

    move v8, v4

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Lorg/apache/xerces/dom/ASModelImpl;->setGrammar(Lorg/apache/xerces/impl/xs/SchemaGrammar;)V

    move-object v6, v1

    move-object v7, v5

    invoke-virtual {v6, v7}, Lorg/apache/xerces/dom/ASModelImpl;->addASModel(Lorg/apache/xerces/dom3/as/ASModel;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private initGrammarBucket()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DOMASBuilderImpl;->fGrammarBucket:Lorg/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->reset()V

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DOMASBuilderImpl;->fAbstractSchema:Lorg/apache/xerces/dom/ASModelImpl;

    if-eqz v1, :cond_0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/DOMASBuilderImpl;->fAbstractSchema:Lorg/apache/xerces/dom/ASModelImpl;

    invoke-direct {v1, v2}, Lorg/apache/xerces/parsers/DOMASBuilderImpl;->initGrammarBucketRecurse(Lorg/apache/xerces/dom/ASModelImpl;)V

    :cond_0
    return-void
.end method

.method private initGrammarBucketRecurse(Lorg/apache/xerces/dom/ASModelImpl;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    invoke-virtual {v4}, Lorg/apache/xerces/dom/ASModelImpl;->getGrammar()Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMASBuilderImpl;->fGrammarBucket:Lorg/apache/xerces/impl/xs/XSGrammarBucket;

    move-object v5, v1

    invoke-virtual {v5}, Lorg/apache/xerces/dom/ASModelImpl;->getGrammar()Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lorg/apache/xerces/impl/xs/SchemaGrammar;)V

    :cond_0
    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move-object v5, v1

    invoke-virtual {v5}, Lorg/apache/xerces/dom/ASModelImpl;->getInternalASModels()Ljava/util/Vector;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v4, v5, :cond_1

    return-void

    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Lorg/apache/xerces/dom/ASModelImpl;->getInternalASModels()Ljava/util/Vector;

    move-result-object v4

    move v5, v2

    invoke-virtual {v4, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/dom/ASModelImpl;

    move-object v3, v4

    move-object v4, v0

    move-object v5, v3

    invoke-direct {v4, v5}, Lorg/apache/xerces/parsers/DOMASBuilderImpl;->initGrammarBucketRecurse(Lorg/apache/xerces/dom/ASModelImpl;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private initGrammarPool(Lorg/apache/xerces/dom/ASModelImpl;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v6, 0x1

    new-array v6, v6, [Lorg/apache/xerces/xni/grammars/Grammar;

    move-object v3, v6

    move-object v6, v3

    const/4 v7, 0x0

    move-object v8, v1

    invoke-virtual {v8}, Lorg/apache/xerces/dom/ASModelImpl;->getGrammar()Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v8

    move-object v10, v6

    move v11, v7

    move-object v12, v8

    move-object v6, v12

    move-object v7, v10

    move v8, v11

    move-object v9, v12

    aput-object v9, v7, v8

    if-eqz v6, :cond_0

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-interface {v7}, Lorg/apache/xerces/xni/grammars/Grammar;->getGrammarDescription()Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;->getGrammarType()Ljava/lang/String;

    move-result-object v7

    move-object v8, v3

    invoke-interface {v6, v7, v8}, Lorg/apache/xerces/xni/grammars/XMLGrammarPool;->cacheGrammars(Ljava/lang/String;[Lorg/apache/xerces/xni/grammars/Grammar;)V

    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Lorg/apache/xerces/dom/ASModelImpl;->getInternalASModels()Ljava/util/Vector;

    move-result-object v6

    move-object v4, v6

    const/4 v6, 0x0

    move v5, v6

    :goto_0
    move v6, v5

    move-object v7, v4

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-lt v6, v7, :cond_1

    return-void

    :cond_1
    move-object v6, v0

    move-object v7, v4

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/xerces/dom/ASModelImpl;

    move-object v8, v2

    invoke-direct {v6, v7, v8}, Lorg/apache/xerces/parsers/DOMASBuilderImpl;->initGrammarPool(Lorg/apache/xerces/dom/ASModelImpl;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getAbstractSchema()Lorg/apache/xerces/dom3/as/ASModel;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/DOMASBuilderImpl;->fAbstractSchema:Lorg/apache/xerces/dom/ASModelImpl;

    move-object v0, v1

    return-object v0
.end method

.method parseASInputSource(Lorg/apache/xerces/xni/parser/XMLInputSource;)Lorg/apache/xerces/dom3/as/ASModel;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMASBuilderImpl;->fGrammarBucket:Lorg/apache/xerces/impl/xs/XSGrammarBucket;

    if-nez v5, :cond_0

    move-object v5, v0

    new-instance v6, Lorg/apache/xerces/impl/xs/XSGrammarBucket;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Lorg/apache/xerces/impl/xs/XSGrammarBucket;-><init>()V

    iput-object v6, v5, Lorg/apache/xerces/parsers/DOMASBuilderImpl;->fGrammarBucket:Lorg/apache/xerces/impl/xs/XSGrammarBucket;

    :cond_0
    move-object v5, v0

    invoke-direct {v5}, Lorg/apache/xerces/parsers/DOMASBuilderImpl;->initGrammarBucket()V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMASBuilderImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    check-cast v5, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;

    move-object v2, v5

    move-object v5, v2

    invoke-virtual {v5}, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->lockGrammarPool()V

    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v5, v6}, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->parseXMLSchema(Lorg/apache/xerces/xni/parser/XMLInputSource;)Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v5

    move-object v3, v5

    move-object v5, v2

    invoke-virtual {v5}, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->unlockGrammarPool()V

    const/4 v5, 0x0

    move-object v4, v5

    move-object v5, v3

    if-eqz v5, :cond_1

    new-instance v5, Lorg/apache/xerces/dom/ASModelImpl;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Lorg/apache/xerces/dom/ASModelImpl;-><init>()V

    move-object v4, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/DOMASBuilderImpl;->fGrammarBucket:Lorg/apache/xerces/impl/xs/XSGrammarBucket;

    move-object v6, v3

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/impl/xs/XSGrammarBucket;->putGrammar(Lorg/apache/xerces/impl/xs/SchemaGrammar;Z)Z

    move-result v5

    move-object v5, v0

    move-object v6, v4

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/DOMASBuilderImpl;->fGrammarBucket:Lorg/apache/xerces/impl/xs/XSGrammarBucket;

    invoke-direct {v5, v6, v7}, Lorg/apache/xerces/parsers/DOMASBuilderImpl;->addGrammars(Lorg/apache/xerces/dom/ASModelImpl;Lorg/apache/xerces/impl/xs/XSGrammarBucket;)V

    :cond_1
    move-object v5, v4

    move-object v0, v5

    return-object v0
.end method

.method public parseASInputSource(Lorg/w3c/dom/ls/LSInput;)Lorg/apache/xerces/dom3/as/ASModel;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/dom3/as/DOMASException;,
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lorg/apache/xerces/parsers/DOMASBuilderImpl;->dom2xmlInputSource(Lorg/w3c/dom/ls/LSInput;)Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-result-object v5

    move-object v2, v5

    move-object v5, v0

    move-object v6, v2

    :try_start_0
    invoke-virtual {v5, v6}, Lorg/apache/xerces/parsers/DOMASBuilderImpl;->parseASInputSource(Lorg/apache/xerces/xni/parser/XMLInputSource;)Lorg/apache/xerces/dom3/as/ASModel;
    :try_end_0
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v0, v5

    return-object v0

    :catch_0
    move-exception v5

    move-object v3, v5

    move-object v5, v3

    invoke-virtual {v5}, Lorg/apache/xerces/xni/XNIException;->getException()Ljava/lang/Exception;

    move-result-object v5

    move-object v4, v5

    move-object v5, v4

    throw v5
.end method

.method public parseASURI(Ljava/lang/String;)Lorg/apache/xerces/dom3/as/ASModel;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/dom3/as/DOMASException;,
            Ljava/lang/Exception;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    new-instance v3, Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    move-object v6, v1

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/apache/xerces/parsers/DOMASBuilderImpl;->parseASInputSource(Lorg/apache/xerces/xni/parser/XMLInputSource;)Lorg/apache/xerces/dom3/as/ASModel;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public setAbstractSchema(Lorg/apache/xerces/dom3/as/ASModel;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Lorg/apache/xerces/dom/ASModelImpl;

    iput-object v4, v3, Lorg/apache/xerces/parsers/DOMASBuilderImpl;->fAbstractSchema:Lorg/apache/xerces/dom/ASModelImpl;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/DOMASBuilderImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-interface {v3, v4}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    move-object v2, v3

    move-object v3, v2

    if-nez v3, :cond_0

    new-instance v3, Lorg/apache/xerces/util/XMLGrammarPoolImpl;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lorg/apache/xerces/util/XMLGrammarPoolImpl;-><init>()V

    move-object v2, v3

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/DOMASBuilderImpl;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/grammar-pool"

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/DOMASBuilderImpl;->fAbstractSchema:Lorg/apache/xerces/dom/ASModelImpl;

    if-eqz v3, :cond_1

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/DOMASBuilderImpl;->fAbstractSchema:Lorg/apache/xerces/dom/ASModelImpl;

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lorg/apache/xerces/parsers/DOMASBuilderImpl;->initGrammarPool(Lorg/apache/xerces/dom/ASModelImpl;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V

    :cond_1
    return-void
.end method
