.class public final Lorg/apache/xerces/util/SynchronizedSymbolTable;
.super Lorg/apache/xerces/util/SymbolTable;


# instance fields
.field protected fSymbolTable:Lorg/apache/xerces/util/SymbolTable;


# direct methods
.method public constructor <init>()V
    .locals 5

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lorg/apache/xerces/util/SymbolTable;-><init>()V

    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/util/SymbolTable;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/apache/xerces/util/SymbolTable;-><init>()V

    iput-object v2, v1, Lorg/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 7

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lorg/apache/xerces/util/SymbolTable;-><init>()V

    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/util/SymbolTable;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move v5, v1

    invoke-direct {v4, v5}, Lorg/apache/xerces/util/SymbolTable;-><init>(I)V

    iput-object v3, v2, Lorg/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lorg/apache/xerces/util/SymbolTable;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    return-void
.end method


# virtual methods
.method public addSymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v2, v5

    move-object v5, v2

    monitor-enter v5

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lorg/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v6, v1

    invoke-virtual {v5, v6}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

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

.method public addSymbol([CII)Ljava/lang/String;
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v4, v7

    move-object v7, v4

    monitor-enter v7

    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lorg/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v8, v1

    move v9, v2

    move v10, v3

    invoke-virtual {v7, v8, v9, v10}, Lorg/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    move-object v7, v4

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v5

    move-object v0, v7

    return-object v0

    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v4

    monitor-exit v7

    move-object v7, v6

    throw v7
.end method

.method public containsSymbol(Ljava/lang/String;)Z
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v2, v5

    move-object v5, v2

    monitor-enter v5

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lorg/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v6, v1

    invoke-virtual {v5, v6}, Lorg/apache/xerces/util/SymbolTable;->containsSymbol(Ljava/lang/String;)Z

    move-result v5

    move v3, v5

    move-object v5, v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, v3

    move v0, v5

    return v0

    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    monitor-exit v5

    move-object v5, v4

    throw v5
.end method

.method public containsSymbol([CII)Z
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v4, v7

    move-object v7, v4

    monitor-enter v7

    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lorg/apache/xerces/util/SynchronizedSymbolTable;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v8, v1

    move v9, v2

    move v10, v3

    invoke-virtual {v7, v8, v9, v10}, Lorg/apache/xerces/util/SymbolTable;->containsSymbol([CII)Z

    move-result v7

    move v5, v7

    move-object v7, v4

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v7, v5

    move v0, v7

    return v0

    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v4

    monitor-exit v7

    move-object v7, v6

    throw v7
.end method
