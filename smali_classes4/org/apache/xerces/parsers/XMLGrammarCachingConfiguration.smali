.class public Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;
.super Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;


# static fields
.field public static final BIG_PRIME:I = 0x7f7

.field protected static final SCHEMA_FULL_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema-full-checking"

.field protected static final fStaticGrammarPool:Lorg/apache/xerces/util/XMLGrammarPoolImpl;

.field protected static final fStaticSymbolTable:Lorg/apache/xerces/util/SynchronizedSymbolTable;


# instance fields
.field protected fDTDLoader:Lorg/apache/xerces/impl/dtd/XMLDTDLoader;

.field protected fSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/apache/xerces/util/SynchronizedSymbolTable;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/16 v2, 0x7f7

    invoke-direct {v1, v2}, Lorg/apache/xerces/util/SynchronizedSymbolTable;-><init>(I)V

    sput-object v0, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fStaticSymbolTable:Lorg/apache/xerces/util/SynchronizedSymbolTable;

    new-instance v0, Lorg/apache/xerces/util/XMLGrammarPoolImpl;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Lorg/apache/xerces/util/XMLGrammarPoolImpl;-><init>()V

    sput-object v0, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fStaticGrammarPool:Lorg/apache/xerces/util/XMLGrammarPoolImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    move-object v0, p0

    move-object v1, v0

    sget-object v2, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fStaticSymbolTable:Lorg/apache/xerces/util/SynchronizedSymbolTable;

    sget-object v3, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fStaticGrammarPool:Lorg/apache/xerces/util/XMLGrammarPoolImpl;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    sget-object v4, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fStaticGrammarPool:Lorg/apache/xerces/util/XMLGrammarPoolImpl;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    move-object v4, v0

    new-instance v5, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-direct {v6, v7}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;-><init>(Lorg/apache/xerces/util/SymbolTable;)V

    iput-object v5, v4, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/grammar-pool"

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v4, v0

    new-instance v5, Lorg/apache/xerces/impl/dtd/XMLDTDLoader;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-direct {v6, v7, v8}, Lorg/apache/xerces/impl/dtd/XMLDTDLoader;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V

    iput-object v5, v4, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fDTDLoader:Lorg/apache/xerces/impl/dtd/XMLDTDLoader;

    return-void
.end method


# virtual methods
.method protected checkFeature(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->checkFeature(Ljava/lang/String;)V

    return-void
.end method

.method protected checkProperty(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/parser/XMLConfigurationException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lorg/apache/xerces/parsers/XIncludeAwareParserConfiguration;->checkProperty(Ljava/lang/String;)V

    return-void
.end method

.method public clearGrammarPool()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-interface {v1}, Lorg/apache/xerces/xni/grammars/XMLGrammarPool;->clear()V

    return-void
.end method

.method public lockGrammarPool()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-interface {v1}, Lorg/apache/xerces/xni/grammars/XMLGrammarPool;->lockPool()V

    return-void
.end method

.method parseDTD(Lorg/apache/xerces/xni/parser/XMLInputSource;)Lorg/apache/xerces/impl/dtd/DTDGrammar;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->getEntityResolver()Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    move-result-object v4

    move-object v2, v4

    move-object v4, v2

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fDTDLoader:Lorg/apache/xerces/impl/dtd/XMLDTDLoader;

    move-object v5, v2

    invoke-virtual {v4, v5}, Lorg/apache/xerces/impl/dtd/XMLDTDLoader;->setEntityResolver(Lorg/apache/xerces/xni/parser/XMLEntityResolver;)V

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fDTDLoader:Lorg/apache/xerces/impl/dtd/XMLDTDLoader;

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/error-reporter"

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/impl/dtd/XMLDTDLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fDTDLoader:Lorg/apache/xerces/impl/dtd/XMLDTDLoader;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xerces/impl/dtd/XMLDTDLoader;->loadGrammar(Lorg/apache/xerces/xni/parser/XMLInputSource;)Lorg/apache/xerces/xni/grammars/Grammar;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/impl/dtd/DTDGrammar;

    move-object v3, v4

    move-object v4, v3

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    const-string/jumbo v5, "http://www.w3.org/TR/REC-xml"

    const/4 v6, 0x1

    new-array v6, v6, [Lorg/apache/xerces/xni/grammars/Grammar;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v3

    aput-object v9, v7, v8

    invoke-interface {v4, v5, v6}, Lorg/apache/xerces/xni/grammars/XMLGrammarPool;->cacheGrammars(Ljava/lang/String;[Lorg/apache/xerces/xni/grammars/Grammar;)V

    :cond_1
    move-object v4, v3

    move-object v0, v4

    return-object v0
.end method

.method public parseGrammar(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/xni/grammars/Grammar;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v4, Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x0

    move-object v7, v2

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->parseGrammar(Ljava/lang/String;Lorg/apache/xerces/xni/parser/XMLInputSource;)Lorg/apache/xerces/xni/grammars/Grammar;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public parseGrammar(Ljava/lang/String;Lorg/apache/xerces/xni/parser/XMLInputSource;)Lorg/apache/xerces/xni/grammars/Grammar;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    const-string/jumbo v4, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->parseXMLSchema(Lorg/apache/xerces/xni/parser/XMLInputSource;)Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v3

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    move-object v3, v1

    const-string/jumbo v4, "http://www.w3.org/TR/REC-xml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->parseDTD(Lorg/apache/xerces/xni/parser/XMLInputSource;)Lorg/apache/xerces/impl/dtd/DTDGrammar;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method parseXMLSchema(Lorg/apache/xerces/xni/parser/XMLInputSource;)Lorg/apache/xerces/impl/xs/SchemaGrammar;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->getEntityResolver()Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    move-result-object v6

    move-object v2, v6

    move-object v6, v2

    if-eqz v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    move-object v7, v2

    invoke-virtual {v6, v7}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->setEntityResolver(Lorg/apache/xerces/xni/parser/XMLEntityResolver;)V

    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v7, "http://www.w3.org/TR/xml-schema-1"

    invoke-virtual {v6, v7}, Lorg/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lorg/apache/xerces/util/MessageFormatter;

    move-result-object v6

    if-nez v6, :cond_1

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v7, "http://www.w3.org/TR/xml-schema-1"

    new-instance v8, Lorg/apache/xerces/impl/xs/XSMessageFormatter;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Lorg/apache/xerces/impl/xs/XSMessageFormatter;-><init>()V

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lorg/apache/xerces/util/MessageFormatter;)V

    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    const-string/jumbo v7, "http://apache.org/xml/properties/internal/error-reporter"

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fErrorReporter:Lorg/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v6, "http://apache.org/xml/properties/"

    move-object v3, v6

    new-instance v6, Ljava/lang/StringBuffer;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string/jumbo v7, "schema/external-schemaLocation"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    move-object v7, v4

    move-object v8, v0

    move-object v9, v4

    invoke-virtual {v8, v9}, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v6, Ljava/lang/StringBuffer;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string/jumbo v7, "schema/external-noNamespaceSchemaLocation"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    move-object v7, v4

    move-object v8, v0

    move-object v9, v4

    invoke-virtual {v8, v9}, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v6, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    move-object v4, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    move-object v7, v4

    move-object v8, v0

    move-object v9, v4

    invoke-virtual {v8, v9}, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    const-string/jumbo v7, "http://apache.org/xml/features/validation/schema-full-checking"

    move-object v8, v0

    const-string/jumbo v9, "http://apache.org/xml/features/validation/schema-full-checking"

    invoke-virtual {v8, v9}, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->setFeature(Ljava/lang/String;Z)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fSchemaLoader:Lorg/apache/xerces/impl/xs/XMLSchemaLoader;

    move-object v7, v1

    invoke-virtual {v6, v7}, Lorg/apache/xerces/impl/xs/XMLSchemaLoader;->loadGrammar(Lorg/apache/xerces/xni/parser/XMLInputSource;)Lorg/apache/xerces/xni/grammars/Grammar;

    move-result-object v6

    check-cast v6, Lorg/apache/xerces/impl/xs/SchemaGrammar;

    move-object v5, v6

    move-object v6, v5

    if-eqz v6, :cond_2

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    const-string/jumbo v7, "http://www.w3.org/2001/XMLSchema"

    const/4 v8, 0x1

    new-array v8, v8, [Lorg/apache/xerces/xni/grammars/Grammar;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v5

    aput-object v11, v9, v10

    invoke-interface {v6, v7, v8}, Lorg/apache/xerces/xni/grammars/XMLGrammarPool;->cacheGrammars(Ljava/lang/String;[Lorg/apache/xerces/xni/grammars/Grammar;)V

    :cond_2
    move-object v6, v5

    move-object v0, v6

    return-object v0
.end method

.method public unlockGrammarPool()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/XMLGrammarCachingConfiguration;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-interface {v1}, Lorg/apache/xerces/xni/grammars/XMLGrammarPool;->unlockPool()V

    return-void
.end method
