.class public Lorg/apache/xerces/util/XMLGrammarPoolImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xerces/xni/grammars/XMLGrammarPool;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field protected static final TABLE_SIZE:I = 0xb


# instance fields
.field protected fGrammarCount:I

.field protected fGrammars:[Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;

.field protected fPoolIsLocked:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->fGrammarCount:I

    move-object v1, v0

    const/16 v2, 0xb

    new-array v2, v2, [Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    iput-object v2, v1, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->fPoolIsLocked:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->fGrammarCount:I

    move-object v2, v0

    move v3, v1

    new-array v3, v3, [Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    iput-object v3, v2, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->fPoolIsLocked:Z

    return-void
.end method


# virtual methods
.method public cacheGrammars(Ljava/lang/String;[Lorg/apache/xerces/xni/grammars/Grammar;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->fPoolIsLocked:Z

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

    invoke-virtual {v4, v5}, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->putGrammar(Lorg/apache/xerces/xni/grammars/Grammar;)V

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

    iget-object v3, v3, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    array-length v3, v3

    if-lt v2, v3, :cond_0

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->fGrammarCount:I

    return-void

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    move v3, v1

    aget-object v2, v2, v3

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    move v3, v1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;->clear()V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    move v3, v1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public containsGrammar(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Z
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    move-object v2, v8

    move-object v8, v2

    monitor-enter v8

    move-object v8, v0

    move-object v9, v1

    :try_start_0
    invoke-virtual {v8, v9}, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->hashCode(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)I

    move-result v8

    move v3, v8

    move v8, v3

    const v9, 0x7fffffff

    and-int/2addr v8, v9

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    array-length v9, v9

    rem-int/2addr v8, v9

    move v4, v8

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    move v9, v4

    aget-object v8, v8, v9

    move-object v5, v8

    :goto_0
    move-object v8, v5

    if-nez v8, :cond_0

    const/4 v8, 0x0

    move v6, v8

    move-object v8, v2

    monitor-exit v8

    move v8, v6

    move v0, v8

    :goto_1
    return v0

    :cond_0
    move-object v8, v5

    iget v8, v8, Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;->hash:I

    move v9, v3

    if-ne v8, v9, :cond_1

    move-object v8, v0

    move-object v9, v5

    iget-object v9, v9, Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;->desc:Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;

    move-object v10, v1

    invoke-virtual {v8, v9, v10}, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->equals(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    move v6, v8

    move-object v8, v2

    monitor-exit v8

    move v8, v6

    move v0, v8

    goto :goto_1

    :cond_1
    move-object v8, v5

    iget-object v8, v8, Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;
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

.method public equals(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Z
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public getGrammar(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Lorg/apache/xerces/xni/grammars/Grammar;
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    move-object v2, v8

    move-object v8, v2

    monitor-enter v8

    move-object v8, v0

    move-object v9, v1

    :try_start_0
    invoke-virtual {v8, v9}, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->hashCode(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)I

    move-result v8

    move v3, v8

    move v8, v3

    const v9, 0x7fffffff

    and-int/2addr v8, v9

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    array-length v9, v9

    rem-int/2addr v8, v9

    move v4, v8

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;

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

    iget v8, v8, Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;->hash:I

    move v9, v3

    if-ne v8, v9, :cond_1

    move-object v8, v0

    move-object v9, v5

    iget-object v9, v9, Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;->desc:Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;

    move-object v10, v1

    invoke-virtual {v8, v9, v10}, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->equals(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v8, v5

    iget-object v8, v8, Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;->grammar:Lorg/apache/xerces/xni/grammars/Grammar;

    move-object v6, v8

    move-object v8, v2

    monitor-exit v8

    move-object v8, v6

    move-object v0, v8

    goto :goto_1

    :cond_1
    move-object v8, v5

    iget-object v8, v8, Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;
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

.method public hashCode(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)I
    .locals 3

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    move v0, v2

    return v0
.end method

.method public lockPool()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->fPoolIsLocked:Z

    return-void
.end method

.method public putGrammar(Lorg/apache/xerces/xni/grammars/Grammar;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v9, v0

    iget-boolean v9, v9, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->fPoolIsLocked:Z

    if-nez v9, :cond_0

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    move-object v2, v9

    move-object v9, v2

    monitor-enter v9

    move-object v9, v1

    :try_start_0
    invoke-interface {v9}, Lorg/apache/xerces/xni/grammars/Grammar;->getGrammarDescription()Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;

    move-result-object v9

    move-object v3, v9

    move-object v9, v0

    move-object v10, v3

    invoke-virtual {v9, v10}, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->hashCode(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)I

    move-result v9

    move v4, v9

    move v9, v4

    const v10, 0x7fffffff

    and-int/2addr v9, v10

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    array-length v10, v10

    rem-int/2addr v9, v10

    move v5, v9

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    move v10, v5

    aget-object v9, v9, v10

    move-object v6, v9

    :goto_0
    move-object v9, v6

    if-nez v9, :cond_1

    new-instance v9, Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    move v11, v4

    move-object v12, v3

    move-object v13, v1

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    move v15, v5

    aget-object v14, v14, v15

    invoke-direct {v10, v11, v12, v13, v14}, Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;-><init>(ILorg/apache/xerces/xni/grammars/XMLGrammarDescription;Lorg/apache/xerces/xni/grammars/Grammar;Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;)V

    move-object v7, v9

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    move v10, v5

    move-object v11, v7

    aput-object v11, v9, v10

    move-object v9, v0

    move-object/from16 v16, v9

    move-object/from16 v9, v16

    move-object/from16 v10, v16

    iget v10, v10, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->fGrammarCount:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->fGrammarCount:I

    move-object v9, v2

    monitor-exit v9

    :cond_0
    :goto_1
    return-void

    :cond_1
    move-object v9, v6

    iget v9, v9, Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;->hash:I

    move v10, v4

    if-ne v9, v10, :cond_2

    move-object v9, v0

    move-object v10, v6

    iget-object v10, v10, Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;->desc:Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;

    move-object v11, v3

    invoke-virtual {v9, v10, v11}, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->equals(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Z

    move-result v9

    if-eqz v9, :cond_2

    move-object v9, v6

    move-object v10, v1

    iput-object v10, v9, Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;->grammar:Lorg/apache/xerces/xni/grammars/Grammar;

    move-object v9, v2

    monitor-exit v9

    goto :goto_1

    :cond_2
    move-object v9, v6

    iget-object v9, v9, Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v9

    goto :goto_0

    :catchall_0
    move-exception v9

    move-object v8, v9

    move-object v9, v2

    monitor-exit v9

    move-object v9, v8

    throw v9
.end method

.method public removeGrammar(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Lorg/apache/xerces/xni/grammars/Grammar;
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    move-object v2, v10

    move-object v10, v2

    monitor-enter v10

    move-object v10, v0

    move-object v11, v1

    :try_start_0
    invoke-virtual {v10, v11}, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->hashCode(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)I

    move-result v10

    move v3, v10

    move v10, v3

    const v11, 0x7fffffff

    and-int/2addr v10, v11

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    array-length v11, v11

    rem-int/2addr v10, v11

    move v4, v10

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    move v11, v4

    aget-object v10, v10, v11

    move-object v5, v10

    const/4 v10, 0x0

    move-object v6, v10

    :goto_0
    move-object v10, v5

    if-nez v10, :cond_0

    const/4 v10, 0x0

    move-object v7, v10

    move-object v10, v2

    monitor-exit v10

    move-object v10, v7

    move-object v0, v10

    :goto_1
    return-object v0

    :cond_0
    move-object v10, v5

    iget v10, v10, Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;->hash:I

    move v11, v3

    if-ne v10, v11, :cond_2

    move-object v10, v0

    move-object v11, v5

    iget-object v11, v11, Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;->desc:Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;

    move-object v12, v1

    invoke-virtual {v10, v11, v12}, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->equals(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v10, v6

    if-eqz v10, :cond_1

    move-object v10, v6

    move-object v11, v5

    iget-object v11, v11, Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    iput-object v11, v10, Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    :goto_2
    move-object v10, v5

    iget-object v10, v10, Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;->grammar:Lorg/apache/xerces/xni/grammars/Grammar;

    move-object v7, v10

    move-object v10, v5

    const/4 v11, 0x0

    iput-object v11, v10, Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;->grammar:Lorg/apache/xerces/xni/grammars/Grammar;

    move-object v10, v0

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    iget v11, v11, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->fGrammarCount:I

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    iput v11, v10, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->fGrammarCount:I

    move-object v10, v7

    move-object v8, v10

    move-object v10, v2

    monitor-exit v10

    move-object v10, v8

    move-object v0, v10

    goto :goto_1

    :cond_1
    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    move v11, v4

    move-object v12, v5

    iget-object v12, v12, Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aput-object v12, v10, v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v10

    move-object v9, v10

    move-object v10, v2

    monitor-exit v10

    move-object v10, v9

    throw v10

    :cond_2
    move-object v10, v5

    move-object v6, v10

    move-object v10, v5

    :try_start_1
    iget-object v10, v10, Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v5, v10

    goto :goto_0
.end method

.method public retrieveGrammar(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Lorg/apache/xerces/xni/grammars/Grammar;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->getGrammar(Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;)Lorg/apache/xerces/xni/grammars/Grammar;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public retrieveInitialGrammarSet(Ljava/lang/String;)[Lorg/apache/xerces/xni/grammars/Grammar;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    move-object v2, v10

    move-object v10, v2

    monitor-enter v10

    move-object v10, v0

    :try_start_0
    iget-object v10, v10, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    array-length v10, v10

    move v3, v10

    move-object v10, v0

    iget v10, v10, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->fGrammarCount:I

    new-array v10, v10, [Lorg/apache/xerces/xni/grammars/Grammar;

    move-object v4, v10

    const/4 v10, 0x0

    move v5, v10

    const/4 v10, 0x0

    move v6, v10

    :goto_0
    move v10, v6

    move v11, v3

    if-lt v10, v11, :cond_0

    move v10, v5

    new-array v10, v10, [Lorg/apache/xerces/xni/grammars/Grammar;

    move-object v7, v10

    move-object v10, v4

    const/4 v11, 0x0

    move-object v12, v7

    const/4 v13, 0x0

    move v14, v5

    invoke-static {v10, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v10, v7

    move-object v8, v10

    move-object v10, v2

    monitor-exit v10

    move-object v10, v8

    move-object v0, v10

    return-object v0

    :cond_0
    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->fGrammars:[Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    move v11, v6

    aget-object v10, v10, v11

    move-object v7, v10

    :goto_1
    move-object v10, v7

    if-nez v10, :cond_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    move-object v10, v7

    iget-object v10, v10, Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;->desc:Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-interface {v10}, Lorg/apache/xerces/xni/grammars/XMLGrammarDescription;->getGrammarType()Ljava/lang/String;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v10, v4

    move v11, v5

    add-int/lit8 v5, v5, 0x1

    move-object v12, v7

    iget-object v12, v12, Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;->grammar:Lorg/apache/xerces/xni/grammars/Grammar;

    aput-object v12, v10, v11

    :cond_2
    move-object v10, v7

    iget-object v10, v10, Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lorg/apache/xerces/util/XMLGrammarPoolImpl$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v10

    goto :goto_1

    :catchall_0
    move-exception v10

    move-object v9, v10

    move-object v10, v2

    monitor-exit v10

    move-object v10, v9

    throw v10
.end method

.method public unlockPool()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xerces/util/XMLGrammarPoolImpl;->fPoolIsLocked:Z

    return-void
.end method
