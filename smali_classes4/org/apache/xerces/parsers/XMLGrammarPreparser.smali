.class public Lorg/apache/xerces/parsers/XMLGrammarPreparser;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;
    }
.end annotation


# static fields
.field private static final CONTINUE_AFTER_FATAL_ERROR:Ljava/lang/String; = "http://apache.org/xml/features/continue-after-fatal-error"

.field protected static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field protected static final ERROR_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-handler"

.field protected static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field protected static final GRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"

.field private static final KNOWN_LOADERS:Ljava/util/Hashtable;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"


# instance fields
.field protected fEntityResolver:Lorg/apache/xerces/xni/parser/XMLEntityResolver;

.field protected final fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

.field protected fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

.field private final fLoaders:Ljava/util/Hashtable;

.field protected fLocale:Ljava/util/Locale;

.field private fModCount:I

.field protected final fSymbolTable:Lorg/apache/xerces/util/SymbolTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/Hashtable;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/apache/xerces/parsers/XMLGrammarPreparser;->KNOWN_LOADERS:Ljava/util/Hashtable;

    sget-object v0, Lorg/apache/xerces/parsers/XMLGrammarPreparser;->KNOWN_LOADERS:Ljava/util/Hashtable;

    const-string/jumbo v1, "http://www.w3.org/2001/XMLSchema"

    const-string/jumbo v2, "org.apache.xerces.impl.xs.XMLSchemaLoader"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v0, Lorg/apache/xerces/parsers/XMLGrammarPreparser;->KNOWN_LOADERS:Ljava/util/Hashtable;

    const-string/jumbo v1, "http://www.w3.org/TR/REC-xml"

    const-string/jumbo v2, "org.apache.xerces.impl.dtd.XMLDTDLoader"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v0, 0x5

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

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/error-reporter"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/error-handler"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/entity-resolver"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/grammar-pool"

    aput-object v3, v1, v2

    sput-object v0, Lorg/apache/xerces/parsers/XMLGrammarPreparser;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    move-object v0, p0

    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/util/SymbolTable;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/apache/xerces/util/SymbolTable;-><init>()V

    invoke-direct {v1, v2}, Lorg/apache/xerces/parsers/XMLGrammarPreparser;-><init>(Lorg/apache/xerces/util/SymbolTable;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lorg/apache/xerces/parsers/XMLGrammarPreparser;->fModCount:I

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/parsers/XMLGrammarPreparser;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v2, v0

    new-instance v3, Ljava/util/Hashtable;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/parsers/XMLGrammarPreparser;->fLoaders:Ljava/util/Hashtable;

    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lorg/apache/xerces/impl/XMLErrorReporter;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/parsers/XMLGrammarPreparser;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object v2, v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/xerces/parsers/XMLGrammarPreparser;->setLocale(Ljava/util/Locale;)V

    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/impl/XMLEntityManager;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lorg/apache/xerces/impl/XMLEntityManager;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/parsers/XMLGrammarPreparser;->fEntityResolver:Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    return-void
.end method

.method private clearModCounts()V
    .locals 5

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XMLGrammarPreparser;->fLoaders:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Lorg/apache/xerces/parsers/XMLGrammarPreparser;->fModCount:I

    return-void

    :cond_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;

    move-object v2, v3

    move-object v3, v2

    const/4 v4, 0x0

    iput v4, v3, Lorg/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;->modCount:I

    goto :goto_0
.end method


# virtual methods
.method public getEntityResolver()Lorg/apache/xerces/xni/parser/XMLEntityResolver;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XMLGrammarPreparser;->fEntityResolver:Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    move-object v0, v1

    return-object v0
.end method

.method public getErrorHandler()Lorg/apache/xerces/xni/parser/XMLErrorHandler;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XMLGrammarPreparser;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/XMLErrorReporter;->getErrorHandler()Lorg/apache/xerces/xni/parser/XMLErrorHandler;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XMLGrammarPreparser;->fLoaders:Ljava/util/Hashtable;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;

    iget-object v4, v4, Lorg/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;->loader:Lorg/apache/xerces/xni/grammars/XMLGrammarLoader;

    move-object v3, v4

    move-object v4, v3

    move-object v5, v2

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/grammars/XMLGrammarLoader;->getFeature(Ljava/lang/String;)Z

    move-result v4

    move v0, v4

    return v0
.end method

.method public getGrammarPool()Lorg/apache/xerces/xni/grammars/XMLGrammarPool;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XMLGrammarPreparser;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    move-object v0, v1

    return-object v0
.end method

.method public getLoader(Ljava/lang/String;)Lorg/apache/xerces/xni/grammars/XMLGrammarLoader;
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/XMLGrammarPreparser;->fLoaders:Ljava/util/Hashtable;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;

    move-object v2, v3

    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    iget-object v3, v3, Lorg/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;->loader:Lorg/apache/xerces/xni/grammars/XMLGrammarLoader;

    :goto_0
    move-object v0, v3

    return-object v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XMLGrammarPreparser;->fLocale:Ljava/util/Locale;

    move-object v0, v1

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XMLGrammarPreparser;->fLoaders:Ljava/util/Hashtable;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;

    iget-object v4, v4, Lorg/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;->loader:Lorg/apache/xerces/xni/grammars/XMLGrammarLoader;

    move-object v3, v4

    move-object v4, v3

    move-object v5, v2

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/grammars/XMLGrammarLoader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public preparseGrammar(Ljava/lang/String;Lorg/apache/xerces/xni/parser/XMLInputSource;)Lorg/apache/xerces/xni/grammars/Grammar;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/XMLGrammarPreparser;->fLoaders:Ljava/util/Hashtable;

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/XMLGrammarPreparser;->fLoaders:Ljava/util/Hashtable;

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;

    move-object v3, v6

    move-object v6, v3

    iget-object v6, v6, Lorg/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;->loader:Lorg/apache/xerces/xni/grammars/XMLGrammarLoader;

    move-object v4, v6

    move-object v6, v3

    iget v6, v6, Lorg/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;->modCount:I

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/parsers/XMLGrammarPreparser;->fModCount:I

    if-eq v6, v7, :cond_1

    move-object v6, v4

    const-string/jumbo v7, "http://apache.org/xml/properties/internal/symbol-table"

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/parsers/XMLGrammarPreparser;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-interface {v6, v7, v8}, Lorg/apache/xerces/xni/grammars/XMLGrammarLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v6, v4

    const-string/jumbo v7, "http://apache.org/xml/properties/internal/entity-resolver"

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/parsers/XMLGrammarPreparser;->fEntityResolver:Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    invoke-interface {v6, v7, v8}, Lorg/apache/xerces/xni/grammars/XMLGrammarLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v6, v4

    const-string/jumbo v7, "http://apache.org/xml/properties/internal/error-reporter"

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/parsers/XMLGrammarPreparser;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-interface {v6, v7, v8}, Lorg/apache/xerces/xni/grammars/XMLGrammarLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/XMLGrammarPreparser;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    if-eqz v6, :cond_0

    move-object v6, v4

    :try_start_0
    const-string/jumbo v7, "http://apache.org/xml/properties/internal/grammar-pool"

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/parsers/XMLGrammarPreparser;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-interface {v6, v7, v8}, Lorg/apache/xerces/xni/grammars/XMLGrammarLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    move-object v6, v3

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/parsers/XMLGrammarPreparser;->fModCount:I

    iput v7, v6, Lorg/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;->modCount:I

    :cond_1
    move-object v6, v4

    move-object v7, v2

    invoke-interface {v6, v7}, Lorg/apache/xerces/xni/grammars/XMLGrammarLoader;->loadGrammar(Lorg/apache/xerces/xni/parser/XMLInputSource;)Lorg/apache/xerces/xni/grammars/Grammar;

    move-result-object v6

    move-object v0, v6

    :goto_1
    return-object v0

    :catch_0
    move-exception v6

    move-object v5, v6

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1
.end method

.method public registerPreparser(Ljava/lang/String;Lorg/apache/xerces/xni/grammars/XMLGrammarLoader;)Z
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v2

    if-nez v6, :cond_1

    sget-object v6, Lorg/apache/xerces/parsers/XMLGrammarPreparser;->KNOWN_LOADERS:Ljava/util/Hashtable;

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lorg/apache/xerces/parsers/XMLGrammarPreparser;->KNOWN_LOADERS:Ljava/util/Hashtable;

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v3, v6

    :try_start_0
    invoke-static {}, Lorg/apache/xerces/parsers/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    move-object v4, v6

    move-object v6, v3

    move-object v7, v4

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lorg/apache/xerces/parsers/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/xerces/xni/grammars/XMLGrammarLoader;

    move-object v5, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/XMLGrammarPreparser;->fLoaders:Ljava/util/Hashtable;

    move-object v7, v1

    new-instance v8, Lorg/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v5

    invoke-direct {v9, v10}, Lorg/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;-><init>(Lorg/apache/xerces/xni/grammars/XMLGrammarLoader;)V

    invoke-virtual {v6, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    const/4 v6, 0x1

    move v0, v6

    :goto_0
    return v0

    :catch_0
    move-exception v6

    move-object v4, v6

    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/XMLGrammarPreparser;->fLoaders:Ljava/util/Hashtable;

    move-object v7, v1

    new-instance v8, Lorg/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v2

    invoke-direct {v9, v10}, Lorg/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;-><init>(Lorg/apache/xerces/xni/grammars/XMLGrammarLoader;)V

    invoke-virtual {v6, v7, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const/4 v6, 0x1

    move v0, v6

    goto :goto_0
.end method

.method public setEntityResolver(Lorg/apache/xerces/xni/parser/XMLEntityResolver;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XMLGrammarPreparser;->fEntityResolver:Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    move-object v3, v1

    if-eq v2, v3, :cond_1

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lorg/apache/xerces/parsers/XMLGrammarPreparser;->fModCount:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lorg/apache/xerces/parsers/XMLGrammarPreparser;->fModCount:I

    if-gez v2, :cond_0

    move-object v2, v0

    invoke-direct {v2}, Lorg/apache/xerces/parsers/XMLGrammarPreparser;->clearModCounts()V

    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/parsers/XMLGrammarPreparser;->fEntityResolver:Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    :cond_1
    return-void
.end method

.method public setErrorHandler(Lorg/apache/xerces/xni/parser/XMLErrorHandler;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XMLGrammarPreparser;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://apache.org/xml/properties/internal/error-handler"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/impl/XMLErrorReporter;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/XMLGrammarPreparser;->fLoaders:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v6

    move-object v3, v6

    :goto_0
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-nez v6, :cond_1

    move-object v6, v1

    const-string/jumbo v7, "http://apache.org/xml/features/continue-after-fatal-error"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/XMLGrammarPreparser;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v7, "http://apache.org/xml/features/continue-after-fatal-error"

    move v8, v2

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/impl/XMLErrorReporter;->setFeature(Ljava/lang/String;Z)V

    :cond_0
    return-void

    :cond_1
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;

    iget-object v6, v6, Lorg/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;->loader:Lorg/apache/xerces/xni/grammars/XMLGrammarLoader;

    move-object v4, v6

    move-object v6, v4

    move-object v7, v1

    move v8, v2

    :try_start_0
    invoke-interface {v6, v7, v8}, Lorg/apache/xerces/xni/grammars/XMLGrammarLoader;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    move-object v5, v6

    goto :goto_0
.end method

.method public setGrammarPool(Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XMLGrammarPreparser;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    move-object v3, v1

    if-eq v2, v3, :cond_1

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lorg/apache/xerces/parsers/XMLGrammarPreparser;->fModCount:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lorg/apache/xerces/parsers/XMLGrammarPreparser;->fModCount:I

    if-gez v2, :cond_0

    move-object v2, v0

    invoke-direct {v2}, Lorg/apache/xerces/parsers/XMLGrammarPreparser;->clearModCounts()V

    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/parsers/XMLGrammarPreparser;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    :cond_1
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/parsers/XMLGrammarPreparser;->fLocale:Ljava/util/Locale;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/XMLGrammarPreparser;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/impl/XMLErrorReporter;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/XMLGrammarPreparser;->fLoaders:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v6

    move-object v3, v6

    :goto_0
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-nez v6, :cond_0

    return-void

    :cond_0
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;

    iget-object v6, v6, Lorg/apache/xerces/parsers/XMLGrammarPreparser$XMLGrammarLoaderContainer;->loader:Lorg/apache/xerces/xni/grammars/XMLGrammarLoader;

    move-object v4, v6

    move-object v6, v4

    move-object v7, v1

    move-object v8, v2

    :try_start_0
    invoke-interface {v6, v7, v8}, Lorg/apache/xerces/xni/grammars/XMLGrammarLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    move-object v5, v6

    goto :goto_0
.end method
