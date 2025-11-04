.class public Lorg/apache/xerces/util/SymbolHash;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/util/SymbolHash$Entry;
    }
.end annotation


# static fields
.field protected static final MAX_HASH_COLLISIONS:I = 0x28

.field protected static final MULTIPLIERS_MASK:I = 0x1f

.field protected static final MULTIPLIERS_SIZE:I = 0x20

.field protected static final TABLE_SIZE:I = 0x65


# instance fields
.field protected fBuckets:[Lorg/apache/xerces/util/SymbolHash$Entry;

.field protected fHashMultipliers:[I

.field protected fNum:I

.field protected fTableSize:I


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const/16 v2, 0x65

    invoke-direct {v1, v2}, Lorg/apache/xerces/util/SymbolHash;-><init>(I)V

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

    iput v3, v2, Lorg/apache/xerces/util/SymbolHash;->fNum:I

    move-object v2, v0

    move v3, v1

    iput v3, v2, Lorg/apache/xerces/util/SymbolHash;->fTableSize:I

    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/util/SymbolHash;->fTableSize:I

    new-array v3, v3, [Lorg/apache/xerces/util/SymbolHash$Entry;

    iput-object v3, v2, Lorg/apache/xerces/util/SymbolHash;->fBuckets:[Lorg/apache/xerces/util/SymbolHash$Entry;

    return-void
.end method

.method private hash0(Ljava/lang/String;)I
    .locals 10

    move-object v0, p0

    move-object v1, p1

    const/4 v6, 0x0

    move v2, v6

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move v3, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/SymbolHash;->fHashMultipliers:[I

    move-object v4, v6

    const/4 v6, 0x0

    move v5, v6

    :goto_0
    move v6, v5

    move v7, v3

    if-lt v6, v7, :cond_0

    move v6, v2

    const v7, 0x7fffffff

    and-int/2addr v6, v7

    move v0, v6

    return v0

    :cond_0
    move v6, v2

    move-object v7, v4

    move v8, v5

    const/16 v9, 0x1f

    and-int/lit8 v8, v8, 0x1f

    aget v7, v7, v8

    mul-int/2addr v6, v7

    move-object v7, v1

    move v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    add-int/2addr v6, v7

    move v2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private rehashCommon(I)V
    .locals 13

    move-object v0, p0

    move v1, p1

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/util/SymbolHash;->fBuckets:[Lorg/apache/xerces/util/SymbolHash$Entry;

    array-length v9, v9

    move v2, v9

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/util/SymbolHash;->fBuckets:[Lorg/apache/xerces/util/SymbolHash$Entry;

    move-object v3, v9

    move v9, v1

    new-array v9, v9, [Lorg/apache/xerces/util/SymbolHash$Entry;

    move-object v4, v9

    move-object v9, v0

    move-object v10, v4

    iput-object v10, v9, Lorg/apache/xerces/util/SymbolHash;->fBuckets:[Lorg/apache/xerces/util/SymbolHash$Entry;

    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/util/SymbolHash;->fBuckets:[Lorg/apache/xerces/util/SymbolHash$Entry;

    array-length v10, v10

    iput v10, v9, Lorg/apache/xerces/util/SymbolHash;->fTableSize:I

    move v9, v2

    move v5, v9

    :cond_0
    move v9, v5

    move v12, v9

    move v9, v12

    move v10, v12

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    move v5, v10

    if-gtz v9, :cond_1

    return-void

    :cond_1
    move-object v9, v3

    move v10, v5

    aget-object v9, v9, v10

    move-object v6, v9

    :goto_0
    move-object v9, v6

    if-eqz v9, :cond_0

    move-object v9, v6

    move-object v7, v9

    move-object v9, v6

    iget-object v9, v9, Lorg/apache/xerces/util/SymbolHash$Entry;->next:Lorg/apache/xerces/util/SymbolHash$Entry;

    move-object v6, v9

    move-object v9, v0

    move-object v10, v7

    iget-object v10, v10, Lorg/apache/xerces/util/SymbolHash$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v9, v10}, Lorg/apache/xerces/util/SymbolHash;->hash(Ljava/lang/Object;)I

    move-result v9

    move v10, v1

    rem-int/2addr v9, v10

    move v8, v9

    move-object v9, v7

    move-object v10, v4

    move v11, v8

    aget-object v10, v10, v11

    iput-object v10, v9, Lorg/apache/xerces/util/SymbolHash$Entry;->next:Lorg/apache/xerces/util/SymbolHash$Entry;

    move-object v9, v4

    move v10, v8

    move-object v11, v7

    aput-object v11, v9, v10

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 5

    move-object v0, p0

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    move v2, v1

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/util/SymbolHash;->fTableSize:I

    if-lt v2, v3, :cond_0

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lorg/apache/xerces/util/SymbolHash;->fNum:I

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/util/SymbolHash;->fHashMultipliers:[I

    return-void

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/SymbolHash;->fBuckets:[Lorg/apache/xerces/util/SymbolHash$Entry;

    move v3, v1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xerces/util/SymbolHash;->hash(Ljava/lang/Object;)I

    move-result v4

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/util/SymbolHash;->fTableSize:I

    rem-int/2addr v4, v5

    move v2, v4

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/util/SymbolHash;->search(Ljava/lang/Object;I)Lorg/apache/xerces/util/SymbolHash$Entry;

    move-result-object v4

    move-object v3, v4

    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    iget-object v4, v4, Lorg/apache/xerces/util/SymbolHash$Entry;->value:Ljava/lang/Object;

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_0
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0
.end method

.method public getEntries()[Ljava/lang/Object;
    .locals 8

    move-object v0, p0

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/util/SymbolHash;->fNum:I

    const/4 v6, 0x1

    shl-int/lit8 v5, v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v1, v5

    const/4 v5, 0x0

    move v2, v5

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v2

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/util/SymbolHash;->fTableSize:I

    if-ge v5, v6, :cond_0

    move v5, v3

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/util/SymbolHash;->fNum:I

    const/4 v7, 0x1

    shl-int/lit8 v6, v6, 0x1

    if-lt v5, v6, :cond_1

    :cond_0
    move-object v5, v1

    move-object v0, v5

    return-object v0

    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/SymbolHash;->fBuckets:[Lorg/apache/xerces/util/SymbolHash$Entry;

    move v6, v2

    aget-object v5, v5, v6

    move-object v4, v5

    :goto_1
    move-object v5, v4

    if-nez v5, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move-object v5, v1

    move v6, v3

    move-object v7, v4

    iget-object v7, v7, Lorg/apache/xerces/util/SymbolHash$Entry;->key:Ljava/lang/Object;

    aput-object v7, v5, v6

    move-object v5, v1

    add-int/lit8 v3, v3, 0x1

    move v6, v3

    move-object v7, v4

    iget-object v7, v7, Lorg/apache/xerces/util/SymbolHash$Entry;->value:Ljava/lang/Object;

    aput-object v7, v5, v6

    add-int/lit8 v3, v3, 0x1

    move-object v5, v4

    iget-object v5, v5, Lorg/apache/xerces/util/SymbolHash$Entry;->next:Lorg/apache/xerces/util/SymbolHash$Entry;

    move-object v4, v5

    goto :goto_1
.end method

.method public getLength()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/util/SymbolHash;->fNum:I

    move v0, v1

    return v0
.end method

.method public getValues([Ljava/lang/Object;I)I
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const/4 v6, 0x0

    move v3, v6

    const/4 v6, 0x0

    move v4, v6

    :goto_0
    move v6, v3

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/util/SymbolHash;->fTableSize:I

    if-ge v6, v7, :cond_0

    move v6, v4

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/util/SymbolHash;->fNum:I

    if-lt v6, v7, :cond_1

    :cond_0
    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/util/SymbolHash;->fNum:I

    move v0, v6

    return v0

    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/SymbolHash;->fBuckets:[Lorg/apache/xerces/util/SymbolHash$Entry;

    move v7, v3

    aget-object v6, v6, v7

    move-object v5, v6

    :goto_1
    move-object v6, v5

    if-nez v6, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object v6, v1

    move v7, v2

    move v8, v4

    add-int/2addr v7, v8

    move-object v8, v5

    iget-object v8, v8, Lorg/apache/xerces/util/SymbolHash$Entry;->value:Ljava/lang/Object;

    aput-object v8, v6, v7

    add-int/lit8 v4, v4, 0x1

    move-object v6, v5

    iget-object v6, v6, Lorg/apache/xerces/util/SymbolHash$Entry;->next:Lorg/apache/xerces/util/SymbolHash$Entry;

    move-object v5, v6

    goto :goto_1
.end method

.method protected hash(Ljava/lang/Object;)I
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/SymbolHash;->fHashMultipliers:[I

    if-eqz v2, :cond_0

    move-object v2, v1

    instance-of v2, v2, Ljava/lang/String;

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    move v0, v2

    :goto_0
    return v0

    :cond_1
    move-object v2, v0

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/apache/xerces/util/SymbolHash;->hash0(Ljava/lang/String;)I

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public makeClone()Lorg/apache/xerces/util/SymbolHash;
    .locals 8

    move-object v0, p0

    new-instance v3, Lorg/apache/xerces/util/SymbolHash;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/util/SymbolHash;->fTableSize:I

    invoke-direct {v4, v5}, Lorg/apache/xerces/util/SymbolHash;-><init>(I)V

    move-object v1, v3

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/util/SymbolHash;->fNum:I

    iput v4, v3, Lorg/apache/xerces/util/SymbolHash;->fNum:I

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/SymbolHash;->fHashMultipliers:[I

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/SymbolHash;->fHashMultipliers:[I

    invoke-virtual {v4}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    :goto_0
    iput-object v4, v3, Lorg/apache/xerces/util/SymbolHash;->fHashMultipliers:[I

    const/4 v3, 0x0

    move v2, v3

    :goto_1
    move v3, v2

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/util/SymbolHash;->fTableSize:I

    if-lt v3, v4, :cond_1

    move-object v3, v1

    move-object v0, v3

    return-object v0

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/SymbolHash;->fBuckets:[Lorg/apache/xerces/util/SymbolHash$Entry;

    move v4, v2

    aget-object v3, v3, v4

    if-eqz v3, :cond_2

    move-object v3, v1

    iget-object v3, v3, Lorg/apache/xerces/util/SymbolHash;->fBuckets:[Lorg/apache/xerces/util/SymbolHash$Entry;

    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/SymbolHash;->fBuckets:[Lorg/apache/xerces/util/SymbolHash$Entry;

    move v6, v2

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lorg/apache/xerces/util/SymbolHash$Entry;->makeClone()Lorg/apache/xerces/util/SymbolHash$Entry;

    move-result-object v5

    aput-object v5, v3, v4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v8, 0x0

    move v3, v8

    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v8, v9}, Lorg/apache/xerces/util/SymbolHash;->hash(Ljava/lang/Object;)I

    move-result v8

    move v4, v8

    move v8, v4

    move-object v9, v0

    iget v9, v9, Lorg/apache/xerces/util/SymbolHash;->fTableSize:I

    rem-int/2addr v8, v9

    move v5, v8

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/util/SymbolHash;->fBuckets:[Lorg/apache/xerces/util/SymbolHash$Entry;

    move v9, v5

    aget-object v8, v8, v9

    move-object v6, v8

    :goto_0
    move-object v8, v6

    if-nez v8, :cond_1

    move-object v8, v0

    iget v8, v8, Lorg/apache/xerces/util/SymbolHash;->fNum:I

    move-object v9, v0

    iget v9, v9, Lorg/apache/xerces/util/SymbolHash;->fTableSize:I

    if-lt v8, v9, :cond_3

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/util/SymbolHash;->rehash()V

    move v8, v4

    move-object v9, v0

    iget v9, v9, Lorg/apache/xerces/util/SymbolHash;->fTableSize:I

    rem-int/2addr v8, v9

    move v5, v8

    :cond_0
    :goto_1
    new-instance v8, Lorg/apache/xerces/util/SymbolHash$Entry;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v1

    move-object v11, v2

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xerces/util/SymbolHash;->fBuckets:[Lorg/apache/xerces/util/SymbolHash$Entry;

    move v13, v5

    aget-object v12, v12, v13

    invoke-direct {v9, v10, v11, v12}, Lorg/apache/xerces/util/SymbolHash$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lorg/apache/xerces/util/SymbolHash$Entry;)V

    move-object v7, v8

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/util/SymbolHash;->fBuckets:[Lorg/apache/xerces/util/SymbolHash$Entry;

    move v9, v5

    move-object v10, v7

    aput-object v10, v8, v9

    move-object v8, v0

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    iget v9, v9, Lorg/apache/xerces/util/SymbolHash;->fNum:I

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lorg/apache/xerces/util/SymbolHash;->fNum:I

    :goto_2
    return-void

    :cond_1
    move-object v8, v1

    move-object v9, v6

    iget-object v9, v9, Lorg/apache/xerces/util/SymbolHash$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v8, v6

    move-object v9, v2

    iput-object v9, v8, Lorg/apache/xerces/util/SymbolHash$Entry;->value:Ljava/lang/Object;

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    move-object v8, v6

    iget-object v8, v8, Lorg/apache/xerces/util/SymbolHash$Entry;->next:Lorg/apache/xerces/util/SymbolHash$Entry;

    move-object v6, v8

    goto :goto_0

    :cond_3
    move v8, v3

    const/16 v9, 0x28

    if-lt v8, v9, :cond_0

    move-object v8, v1

    instance-of v8, v8, Ljava/lang/String;

    if-eqz v8, :cond_0

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/util/SymbolHash;->rebalance()V

    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v8, v9}, Lorg/apache/xerces/util/SymbolHash;->hash(Ljava/lang/Object;)I

    move-result v8

    move-object v9, v0

    iget v9, v9, Lorg/apache/xerces/util/SymbolHash;->fTableSize:I

    rem-int/2addr v8, v9

    move v5, v8

    goto :goto_1
.end method

.method protected rebalance()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/SymbolHash;->fHashMultipliers:[I

    if-nez v1, :cond_0

    move-object v1, v0

    const/16 v2, 0x20

    new-array v2, v2, [I

    iput-object v2, v1, Lorg/apache/xerces/util/SymbolHash;->fHashMultipliers:[I

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/SymbolHash;->fHashMultipliers:[I

    invoke-static {v1}, Lorg/apache/xerces/util/PrimeNumberSequenceGenerator;->generateSequence([I)V

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/SymbolHash;->fBuckets:[Lorg/apache/xerces/util/SymbolHash$Entry;

    array-length v2, v2

    invoke-direct {v1, v2}, Lorg/apache/xerces/util/SymbolHash;->rehashCommon(I)V

    return-void
.end method

.method protected rehash()V
    .locals 4

    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/SymbolHash;->fBuckets:[Lorg/apache/xerces/util/SymbolHash$Entry;

    array-length v2, v2

    const/4 v3, 0x1

    shl-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Lorg/apache/xerces/util/SymbolHash;->rehashCommon(I)V

    return-void
.end method

.method protected search(Ljava/lang/Object;I)Lorg/apache/xerces/util/SymbolHash$Entry;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/SymbolHash;->fBuckets:[Lorg/apache/xerces/util/SymbolHash$Entry;

    move v5, v2

    aget-object v4, v4, v5

    move-object v3, v4

    :goto_0
    move-object v4, v3

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    :goto_1
    return-object v0

    :cond_0
    move-object v4, v1

    move-object v5, v3

    iget-object v5, v5, Lorg/apache/xerces/util/SymbolHash$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v3

    move-object v0, v4

    goto :goto_1

    :cond_1
    move-object v4, v3

    iget-object v4, v4, Lorg/apache/xerces/util/SymbolHash$Entry;->next:Lorg/apache/xerces/util/SymbolHash$Entry;

    move-object v3, v4

    goto :goto_0
.end method
