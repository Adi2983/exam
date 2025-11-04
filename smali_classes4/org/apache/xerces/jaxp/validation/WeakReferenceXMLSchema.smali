.class final Lorg/apache/xerces/jaxp/validation/WeakReferenceXMLSchema;
.super Lorg/apache/xerces/jaxp/validation/AbstractXMLSchema;


# instance fields
.field private fGrammarPool:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>()V
    .locals 6

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lorg/apache/xerces/jaxp/validation/AbstractXMLSchema;-><init>()V

    move-object v1, v0

    new-instance v2, Ljava/lang/ref/WeakReference;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v1, Lorg/apache/xerces/jaxp/validation/WeakReferenceXMLSchema;->fGrammarPool:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public declared-synchronized getGrammarPool()Lorg/apache/xerces/xni/grammars/XMLGrammarPool;
    .locals 8

    move-object v0, p0

    move-object v6, p0

    monitor-enter v6

    move-object v2, v0

    :try_start_0
    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/WeakReferenceXMLSchema;->fGrammarPool:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/xni/grammars/XMLGrammarPool;

    move-object v1, v2

    move-object v2, v1

    if-nez v2, :cond_0

    new-instance v2, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;-><init>()V

    move-object v1, v2

    move-object v2, v0

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/WeakReferenceXMLSchema;->fGrammarPool:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    move-object v2, v1

    move-object v0, v2

    monitor-exit v6

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public isFullyComposed()Z
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method
