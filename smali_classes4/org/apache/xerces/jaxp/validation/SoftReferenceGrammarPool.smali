.class final Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xerces/xni/grammars/XMLGrammarPool;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;,
        Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;
    }
.end annotation


# static fields
.field protected static final TABLE_SIZE:I = 0xb

.field protected static final ZERO_LENGTH_GRAMMAR_ARRAY:[Lorg/apache/xerces/xni/grammars/Grammar;


# instance fields
.field protected fGrammarCount:I

.field protected fGrammars:[Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

.field protected fPoolIsLocked:Z

.field protected final fReferenceQueue:Ljava/lang/ref/ReferenceQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/apache/xerces/xni/grammars/Grammar;

    sput-object v0, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->ZERO_LENGTH_GRAMMAR_ARRAY:[Lorg/apache/xerces/xni/grammars/Grammar;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammarCount:I

    move-object v1, v0

    new-instance v2, Ljava/lang/ref/ReferenceQueue;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v2, v1, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    move-object v1, v0

    const/16 v2, 0xb

    new-array v2, v2, [Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    iput-object v2, v1, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fPoolIsLocked:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammarCount:I

    move-object v2, v0

    new-instance v3, Ljava/lang/ref/ReferenceQueue;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    move-object v2, v0

    move v3, v1

    new-array v3, v3, [Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fPoolIsLocked:Z

    return-void
.end method

.method private clean()V
    .locals 5

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v3}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    if-nez v3, :cond_0

    return-void

    :cond_0
    move-object v3, v1

    check-cast v3, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;->entry:Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    move-object v2, v3

    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v0

    move-object v4, v2

    invoke-direct {v3, v4}, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->removeEntry(Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;)Lorg/apache/xerces/xni/grammars/Grammar;

    move-result-object v3

    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v3}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v3

    move-object v1, v3

    goto :goto_0
.end method

.method private removeEntry(Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;)Lorg/apache/xerces/xni/grammars/Grammar;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->prev:Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    if-eqz v2, :cond_1

    move-object v2, v1

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->prev:Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    move-object v3, v1

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    :goto_0
    move-object v2, v1

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    move-object v3, v1

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->prev:Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->prev:Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    :cond_0
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammarCount:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammarCount:I

    move-object v2, v1

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->grammar:Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;->entry:Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    move-object v2, v1

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->grammar:Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;

    invoke-virtual {v2}, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/xni/grammars/Grammar;

    move-object v0, v2

    return-object v0

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    move-object v3, v1

    iget v3, v3, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->bucket:I

    move-object v4, v1

    iget-object v4, v4, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    aput-object v4, v2, v3

    goto :goto_0
.end method


# virtual methods
.method public cacheGrammars(Ljava/lang/String;[Lorg/apache/xerces/xni/grammars/Grammar;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fPoolIsLocked:Z

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move-object v5, v2

    array-length v5, v5

    if-lt v4, v5, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object v4, v0

    move-object v5, v2

    move v6, v3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->putGrammar(Lorg/apache/xerces/xni/grammars/Grammar;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public clear()V
    .locals 5

    move-object v0, p0

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    move v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    array-length v3, v3

    if-lt v2, v3, :cond_0

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammarCount:I

    return-void

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    move v3, v1

    aget-object v2, v2, v3

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    move v3, v1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->clear()V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    move v3, v1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public containsGrammar(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Z
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    move-object v2, v9

    move-object v9, v2

    monitor-enter v9

    move-object v9, v0

    :try_start_0
    invoke-direct {v9}, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->clean()V

    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->hashCode(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)I

    move-result v9

    move v3, v9

    move v9, v3

    const v10, 0x7fffffff

    and-int/2addr v9, v10

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    array-length v10, v10

    rem-int/2addr v9, v10

    move v4, v9

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    move v10, v4

    aget-object v9, v9, v10

    move-object v5, v9

    :goto_0
    move-object v9, v5

    if-nez v9, :cond_0

    const/4 v9, 0x0

    move v6, v9

    move-object v9, v2

    monitor-exit v9

    move v9, v6

    move v0, v9

    :goto_1
    return v0

    :cond_0
    move-object v9, v5

    iget-object v9, v9, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->grammar:Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;

    invoke-virtual {v9}, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/xerces/xni/grammars/Grammar;

    move-object v6, v9

    move-object v9, v6

    if-nez v9, :cond_2

    move-object v9, v0

    move-object v10, v5

    invoke-direct {v9, v10}, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->removeEntry(Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;)Lorg/apache/xerces/xni/grammars/Grammar;

    move-result-object v9

    :cond_1
    move-object v9, v5

    iget-object v9, v9, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    move-object v5, v9

    goto :goto_0

    :cond_2
    move-object v9, v5

    iget v9, v9, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->hash:I

    move v10, v3

    if-ne v9, v10, :cond_1

    move-object v9, v0

    move-object v10, v5

    iget-object v10, v10, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->desc:Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;

    move-object v11, v1

    invoke-virtual {v9, v10, v11}, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->equals(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    move v7, v9

    move-object v9, v2

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v9, v7

    move v0, v9

    goto :goto_1

    :catchall_0
    move-exception v9

    move-object v8, v9

    move-object v9, v2

    monitor-exit v9

    move-object v9, v8

    throw v9
.end method

.method public equals(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Z
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v1

    instance-of v7, v7, Lorg/apache/xerces/xni/grammars/XMLSchemaDescription;

    if-eqz v7, :cond_5

    move-object v7, v2

    instance-of v7, v7, Lorg/apache/xerces/xni/grammars/XMLSchemaDescription;

    if-nez v7, :cond_0

    const/4 v7, 0x0

    move v0, v7

    :goto_0
    return v0

    :cond_0
    move-object v7, v1

    check-cast v7, Lorg/apache/xerces/xni/grammars/XMLSchemaDescription;

    move-object v3, v7

    move-object v7, v2

    check-cast v7, Lorg/apache/xerces/xni/grammars/XMLSchemaDescription;

    move-object v4, v7

    move-object v7, v3

    invoke-interface {v7}, Lorg/apache/xerces/xni/grammars/XMLSchemaDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    move-object v7, v5

    if-eqz v7, :cond_1

    move-object v7, v5

    move-object v8, v4

    invoke-interface {v8}, Lorg/apache/xerces/xni/grammars/XMLSchemaDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    :cond_1
    move-object v7, v4

    invoke-interface {v7}, Lorg/apache/xerces/xni/grammars/XMLSchemaDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    :cond_2
    move-object v7, v3

    invoke-interface {v7}, Lorg/apache/xerces/xni/grammars/XMLSchemaDescription;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    move-object v7, v6

    if-eqz v7, :cond_3

    move-object v7, v6

    move-object v8, v4

    invoke-interface {v8}, Lorg/apache/xerces/xni/grammars/XMLSchemaDescription;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    :cond_3
    move-object v7, v4

    invoke-interface {v7}, Lorg/apache/xerces/xni/grammars/XMLSchemaDescription;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    :cond_4
    const/4 v7, 0x1

    move v0, v7

    goto :goto_0

    :cond_5
    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    move v0, v7

    goto :goto_0
.end method

.method public getGrammar(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Lorg/apache/xerces/xni/grammars/Grammar;
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    move-object v2, v9

    move-object v9, v2

    monitor-enter v9

    move-object v9, v0

    :try_start_0
    invoke-direct {v9}, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->clean()V

    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->hashCode(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)I

    move-result v9

    move v3, v9

    move v9, v3

    const v10, 0x7fffffff

    and-int/2addr v9, v10

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    array-length v10, v10

    rem-int/2addr v9, v10

    move v4, v9

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    move v10, v4

    aget-object v9, v9, v10

    move-object v5, v9

    :goto_0
    move-object v9, v5

    if-nez v9, :cond_0

    const/4 v9, 0x0

    move-object v6, v9

    move-object v9, v2

    monitor-exit v9

    move-object v9, v6

    move-object v0, v9

    :goto_1
    return-object v0

    :cond_0
    move-object v9, v5

    iget-object v9, v9, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->grammar:Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;

    invoke-virtual {v9}, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/xerces/xni/grammars/Grammar;

    move-object v6, v9

    move-object v9, v6

    if-nez v9, :cond_2

    move-object v9, v0

    move-object v10, v5

    invoke-direct {v9, v10}, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->removeEntry(Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;)Lorg/apache/xerces/xni/grammars/Grammar;

    move-result-object v9

    :cond_1
    move-object v9, v5

    iget-object v9, v9, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    move-object v5, v9

    goto :goto_0

    :cond_2
    move-object v9, v5

    iget v9, v9, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->hash:I

    move v10, v3

    if-ne v9, v10, :cond_1

    move-object v9, v0

    move-object v10, v5

    iget-object v10, v10, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->desc:Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;

    move-object v11, v1

    invoke-virtual {v9, v10, v11}, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->equals(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v9, v6

    move-object v7, v9

    move-object v9, v2

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v7

    move-object v0, v9

    goto :goto_1

    :catchall_0
    move-exception v9

    move-object v8, v9

    move-object v9, v2

    monitor-exit v9

    move-object v9, v8

    throw v9
.end method

.method public hashCode(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)I
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    instance-of v6, v6, Lorg/apache/xerces/xni/grammars/XMLSchemaDescription;

    if-eqz v6, :cond_2

    move-object v6, v1

    check-cast v6, Lorg/apache/xerces/xni/grammars/XMLSchemaDescription;

    move-object v2, v6

    move-object v6, v2

    invoke-interface {v6}, Lorg/apache/xerces/xni/grammars/XMLSchemaDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    move-object v6, v2

    invoke-interface {v6}, Lorg/apache/xerces/xni/grammars/XMLSchemaDescription;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    move-object v6, v3

    if-eqz v6, :cond_0

    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v6

    :goto_0
    move v5, v6

    move v6, v5

    move-object v7, v4

    if-eqz v7, :cond_1

    move-object v7, v4

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v7

    :goto_1
    xor-int/2addr v6, v7

    move v5, v6

    move v6, v5

    move v0, v6

    :goto_2
    return v0

    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    :cond_2
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    move v0, v6

    goto :goto_2
.end method

.method public lockPool()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fPoolIsLocked:Z

    return-void
.end method

.method public putGrammar(Lorg/apache/xerces/xni/grammars/Grammar;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v10, v1

    iget-boolean v10, v10, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fPoolIsLocked:Z

    if-nez v10, :cond_0

    move-object v10, v1

    iget-object v10, v10, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    move-object v3, v10

    move-object v10, v3

    monitor-enter v10

    move-object v10, v1

    :try_start_0
    invoke-direct {v10}, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->clean()V

    move-object v10, v2

    invoke-interface {v10}, Lorg/apache/xerces/xni/grammars/Grammar;->getGrammarDescription()Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;

    move-result-object v10

    move-object v4, v10

    move-object v10, v1

    move-object v11, v4

    invoke-virtual {v10, v11}, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->hashCode(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)I

    move-result v10

    move v5, v10

    move v10, v5

    const v11, 0x7fffffff

    and-int/2addr v10, v11

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    array-length v11, v11

    rem-int/2addr v10, v11

    move v6, v10

    move-object v10, v1

    iget-object v10, v10, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    move v11, v6

    aget-object v10, v10, v11

    move-object v7, v10

    :goto_0
    move-object v10, v7

    if-nez v10, :cond_1

    new-instance v10, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    move v12, v5

    move v13, v6

    move-object v14, v4

    move-object v15, v2

    move-object/from16 v16, v1

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    move-object/from16 v16, v0

    move/from16 v17, v6

    aget-object v16, v16, v17

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    move-object/from16 v17, v0

    invoke-direct/range {v11 .. v17}, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;-><init>(IILorg/apache/xerces/xni/grammars/XMLGrammarDescription;Lorg/apache/xerces/xni/grammars/Grammar;Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;Ljava/lang/ref/ReferenceQueue;)V

    move-object v8, v10

    move-object v10, v1

    iget-object v10, v10, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    move v11, v6

    move-object v12, v8

    aput-object v12, v10, v11

    move-object v10, v1

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    iget v11, v11, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammarCount:I

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammarCount:I

    move-object v10, v3

    monitor-exit v10

    :cond_0
    :goto_1
    return-void

    :cond_1
    move-object v10, v7

    iget v10, v10, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->hash:I

    move v11, v5

    if-ne v10, v11, :cond_3

    move-object v10, v1

    move-object v11, v7

    iget-object v11, v11, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->desc:Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;

    move-object v12, v4

    invoke-virtual {v10, v11, v12}, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->equals(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v10, v7

    iget-object v10, v10, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->grammar:Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;

    invoke-virtual {v10}, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;->get()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v2

    if-eq v10, v11, :cond_2

    move-object v10, v7

    new-instance v11, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    move-object v13, v7

    move-object v14, v2

    move-object v15, v1

    iget-object v15, v15, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v12, v13, v14, v15}, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;-><init>(Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;Lorg/apache/xerces/xni/grammars/Grammar;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v11, v10, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->grammar:Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$SoftGrammarReference;

    :cond_2
    move-object v10, v3

    monitor-exit v10

    goto :goto_1

    :cond_3
    move-object v10, v7

    iget-object v10, v10, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v10

    goto :goto_0

    :catchall_0
    move-exception v10

    move-object v9, v10

    move-object v10, v3

    monitor-exit v10

    move-object v10, v9

    throw v10
.end method

.method public removeGrammar(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Lorg/apache/xerces/xni/grammars/Grammar;
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    move-object v2, v8

    move-object v8, v2

    monitor-enter v8

    move-object v8, v0

    :try_start_0
    invoke-direct {v8}, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->clean()V

    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v8, v9}, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->hashCode(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)I

    move-result v8

    move v3, v8

    move v8, v3

    const v9, 0x7fffffff

    and-int/2addr v8, v9

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    array-length v9, v9

    rem-int/2addr v8, v9

    move v4, v8

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    move v9, v4

    aget-object v8, v8, v9

    move-object v5, v8

    :goto_0
    move-object v8, v5

    if-nez v8, :cond_0

    const/4 v8, 0x0

    move-object v6, v8

    move-object v8, v2

    monitor-exit v8

    move-object v8, v6

    move-object v0, v8

    :goto_1
    return-object v0

    :cond_0
    move-object v8, v5

    iget v8, v8, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->hash:I

    move v9, v3

    if-ne v8, v9, :cond_1

    move-object v8, v0

    move-object v9, v5

    iget-object v9, v9, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->desc:Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;

    move-object v10, v1

    invoke-virtual {v8, v9, v10}, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->equals(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v0

    move-object v9, v5

    invoke-direct {v8, v9}, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->removeEntry(Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;)Lorg/apache/xerces/xni/grammars/Grammar;

    move-result-object v8

    move-object v6, v8

    move-object v8, v2

    monitor-exit v8

    move-object v8, v6

    move-object v0, v8

    goto :goto_1

    :cond_1
    move-object v8, v5

    iget-object v8, v8, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;->next:Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v8

    goto :goto_0

    :catchall_0
    move-exception v8

    move-object v7, v8

    move-object v8, v2

    monitor-exit v8

    move-object v8, v7

    throw v8
.end method

.method public retrieveGrammar(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Lorg/apache/xerces/xni/grammars/Grammar;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->getGrammar(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Lorg/apache/xerces/xni/grammars/Grammar;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public retrieveInitialGrammarSet(Ljava/lang/String;)[Lorg/apache/xerces/xni/grammars/Grammar;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fGrammars:[Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool$Entry;

    move-object v2, v5

    move-object v5, v2

    monitor-enter v5

    move-object v5, v0

    :try_start_0
    invoke-direct {v5}, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->clean()V

    sget-object v5, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->ZERO_LENGTH_GRAMMAR_ARRAY:[Lorg/apache/xerces/xni/grammars/Grammar;

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
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xerces/jaxp/validation/SoftReferenceGrammarPool;->fPoolIsLocked:Z

    return-void
.end method
