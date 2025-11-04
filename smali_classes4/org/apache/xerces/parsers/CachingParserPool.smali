.class public Lorg/apache/xerces/parsers/CachingParserPool;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/parsers/CachingParserPool$ShadowedGrammarPool;,
        Lorg/apache/xerces/parsers/CachingParserPool$SynchronizedGrammarPool;
    }
.end annotation


# static fields
.field public static final DEFAULT_SHADOW_GRAMMAR_POOL:Z

.field public static final DEFAULT_SHADOW_SYMBOL_TABLE:Z


# instance fields
.field protected fShadowGrammarPool:Z

.field protected fShadowSymbolTable:Z

.field protected fSynchronizedGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

.field protected fSynchronizedSymbolTable:Lorg/apache/xerces/util/SymbolTable;


# direct methods
.method public constructor <init>()V
    .locals 6

    move-object v0, p0

    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/util/SymbolTable;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Lorg/apache/xerces/util/SymbolTable;-><init>()V

    new-instance v3, Lorg/apache/xerces/util/XMLGrammarPoolImpl;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lorg/apache/xerces/util/XMLGrammarPoolImpl;-><init>()V

    invoke-direct {v1, v2, v3}, Lorg/apache/xerces/parsers/CachingParserPool;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lorg/apache/xerces/parsers/CachingParserPool;->fShadowSymbolTable:Z

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lorg/apache/xerces/parsers/CachingParserPool;->fShadowGrammarPool:Z

    move-object v3, v0

    new-instance v4, Lorg/apache/xerces/util/SynchronizedSymbolTable;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lorg/apache/xerces/util/SynchronizedSymbolTable;-><init>(Lorg/apache/xerces/util/SymbolTable;)V

    iput-object v4, v3, Lorg/apache/xerces/parsers/CachingParserPool;->fSynchronizedSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v3, v0

    new-instance v4, Lorg/apache/xerces/parsers/CachingParserPool$SynchronizedGrammarPool;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Lorg/apache/xerces/parsers/CachingParserPool$SynchronizedGrammarPool;-><init>(Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V

    iput-object v4, v3, Lorg/apache/xerces/parsers/CachingParserPool;->fSynchronizedGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    return-void
.end method


# virtual methods
.method public createDOMParser()Lorg/apache/xerces/parsers/DOMParser;
    .locals 8

    move-object v0, p0

    move-object v3, v0

    iget-boolean v3, v3, Lorg/apache/xerces/parsers/CachingParserPool;->fShadowSymbolTable:Z

    if-eqz v3, :cond_0

    new-instance v3, Lorg/apache/xerces/util/ShadowedSymbolTable;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/CachingParserPool;->fSynchronizedSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-direct {v4, v5}, Lorg/apache/xerces/util/ShadowedSymbolTable;-><init>(Lorg/apache/xerces/util/SymbolTable;)V

    :goto_0
    move-object v1, v3

    move-object v3, v0

    iget-boolean v3, v3, Lorg/apache/xerces/parsers/CachingParserPool;->fShadowGrammarPool:Z

    if-eqz v3, :cond_1

    new-instance v3, Lorg/apache/xerces/parsers/CachingParserPool$ShadowedGrammarPool;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/CachingParserPool;->fSynchronizedGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-direct {v4, v5}, Lorg/apache/xerces/parsers/CachingParserPool$ShadowedGrammarPool;-><init>(Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V

    :goto_1
    move-object v2, v3

    new-instance v3, Lorg/apache/xerces/parsers/DOMParser;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lorg/apache/xerces/parsers/DOMParser;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V

    move-object v0, v3

    return-object v0

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/CachingParserPool;->fSynchronizedSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    goto :goto_0

    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/CachingParserPool;->fSynchronizedGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    goto :goto_1
.end method

.method public createSAXParser()Lorg/apache/xerces/parsers/SAXParser;
    .locals 8

    move-object v0, p0

    move-object v3, v0

    iget-boolean v3, v3, Lorg/apache/xerces/parsers/CachingParserPool;->fShadowSymbolTable:Z

    if-eqz v3, :cond_0

    new-instance v3, Lorg/apache/xerces/util/ShadowedSymbolTable;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/CachingParserPool;->fSynchronizedSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    invoke-direct {v4, v5}, Lorg/apache/xerces/util/ShadowedSymbolTable;-><init>(Lorg/apache/xerces/util/SymbolTable;)V

    :goto_0
    move-object v1, v3

    move-object v3, v0

    iget-boolean v3, v3, Lorg/apache/xerces/parsers/CachingParserPool;->fShadowGrammarPool:Z

    if-eqz v3, :cond_1

    new-instance v3, Lorg/apache/xerces/parsers/CachingParserPool$ShadowedGrammarPool;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/CachingParserPool;->fSynchronizedGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-direct {v4, v5}, Lorg/apache/xerces/parsers/CachingParserPool$ShadowedGrammarPool;-><init>(Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V

    :goto_1
    move-object v2, v3

    new-instance v3, Lorg/apache/xerces/parsers/SAXParser;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lorg/apache/xerces/parsers/SAXParser;-><init>(Lorg/apache/xerces/util/SymbolTable;Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V

    move-object v0, v3

    return-object v0

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/CachingParserPool;->fSynchronizedSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    goto :goto_0

    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/CachingParserPool;->fSynchronizedGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    goto :goto_1
.end method

.method public getSymbolTable()Lorg/apache/xerces/util/SymbolTable;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/CachingParserPool;->fSynchronizedSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v0, v1

    return-object v0
.end method

.method public getXMLGrammarPool()Lorg/apache/xerces/xni/grammars/XMLGrammarPool;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/CachingParserPool;->fSynchronizedGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    move-object v0, v1

    return-object v0
.end method

.method public setShadowSymbolTable(Z)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lorg/apache/xerces/parsers/CachingParserPool;->fShadowSymbolTable:Z

    return-void
.end method
