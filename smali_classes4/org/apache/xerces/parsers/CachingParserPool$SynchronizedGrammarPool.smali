.class public final Lorg/apache/xerces/parsers/CachingParserPool$SynchronizedGrammarPool;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xerces/xni/grammars/XMLGrammarPool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xerces/parsers/CachingParserPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SynchronizedGrammarPool"
.end annotation


# instance fields
.field private fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/xni/grammars/XMLGrammarPool;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/parsers/CachingParserPool$SynchronizedGrammarPool;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    return-void
.end method


# virtual methods
.method public cacheGrammars(Ljava/lang/String;[Lorg/apache/xerces/xni/grammars/Grammar;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/CachingParserPool$SynchronizedGrammarPool;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    move-object v3, v5

    move-object v5, v3

    monitor-enter v5

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lorg/apache/xerces/parsers/CachingParserPool$SynchronizedGrammarPool;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    move-object v6, v1

    move-object v7, v2

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/grammars/XMLGrammarPool;->cacheGrammars(Ljava/lang/String;[Lorg/apache/xerces/xni/grammars/Grammar;)V

    move-object v5, v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v3

    monitor-exit v5

    move-object v5, v4

    throw v5
.end method

.method public clear()V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/CachingParserPool$SynchronizedGrammarPool;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    move-object v1, v3

    move-object v3, v1

    monitor-enter v3

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lorg/apache/xerces/parsers/CachingParserPool$SynchronizedGrammarPool;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-interface {v3}, Lorg/apache/xerces/xni/grammars/XMLGrammarPool;->clear()V

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3

    move-object v3, v2

    throw v3
.end method

.method public lockPool()V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/CachingParserPool$SynchronizedGrammarPool;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    move-object v1, v3

    move-object v3, v1

    monitor-enter v3

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lorg/apache/xerces/parsers/CachingParserPool$SynchronizedGrammarPool;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-interface {v3}, Lorg/apache/xerces/xni/grammars/XMLGrammarPool;->lockPool()V

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3

    move-object v3, v2

    throw v3
.end method

.method public retrieveGrammar(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Lorg/apache/xerces/xni/grammars/Grammar;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/CachingParserPool$SynchronizedGrammarPool;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    move-object v2, v5

    move-object v5, v2

    monitor-enter v5

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lorg/apache/xerces/parsers/CachingParserPool$SynchronizedGrammarPool;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    move-object v6, v1

    invoke-interface {v5, v6}, Lorg/apache/xerces/xni/grammars/XMLGrammarPool;->retrieveGrammar(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Lorg/apache/xerces/xni/grammars/Grammar;

    move-result-object v5

    move-object v3, v5

    move-object v5, v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v3

    move-object v0, v5

    return-object v0

    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    monitor-exit v5

    move-object v5, v4

    throw v5
.end method

.method public retrieveInitialGrammarSet(Ljava/lang/String;)[Lorg/apache/xerces/xni/grammars/Grammar;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/CachingParserPool$SynchronizedGrammarPool;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    move-object v2, v5

    move-object v5, v2

    monitor-enter v5

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lorg/apache/xerces/parsers/CachingParserPool$SynchronizedGrammarPool;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    move-object v6, v1

    invoke-interface {v5, v6}, Lorg/apache/xerces/xni/grammars/XMLGrammarPool;->retrieveInitialGrammarSet(Ljava/lang/String;)[Lorg/apache/xerces/xni/grammars/Grammar;

    move-result-object v5

    move-object v3, v5

    move-object v5, v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v3

    move-object v0, v5

    return-object v0

    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    monitor-exit v5

    move-object v5, v4

    throw v5
.end method

.method public unlockPool()V
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/CachingParserPool$SynchronizedGrammarPool;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    move-object v1, v3

    move-object v3, v1

    monitor-enter v3

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lorg/apache/xerces/parsers/CachingParserPool$SynchronizedGrammarPool;->fGrammarPool:Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    invoke-interface {v3}, Lorg/apache/xerces/xni/grammars/XMLGrammarPool;->unlockPool()V

    move-object v3, v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    monitor-exit v3

    move-object v3, v2

    throw v3
.end method
