.class public Lorg/apache/xerces/util/SymbolTable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/util/SymbolTable$Entry;
    }
.end annotation


# static fields
.field protected static final MAX_HASH_COLLISIONS:I = 0x28

.field protected static final MULTIPLIERS_MASK:I = 0x1f

.field protected static final MULTIPLIERS_SIZE:I = 0x20

.field protected static final TABLE_SIZE:I = 0x65


# instance fields
.field protected fBuckets:[Lorg/apache/xerces/util/SymbolTable$Entry;

.field protected final fCollisionThreshold:I

.field protected transient fCount:I

.field protected fHashMultipliers:[I

.field protected fLoadFactor:F

.field protected fTableSize:I

.field protected fThreshold:I


# direct methods
.method public constructor <init>()V
    .locals 4

    move-object v0, p0

    move-object v1, v0

    const/16 v2, 0x65

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v1, v2, v3}, Lorg/apache/xerces/util/SymbolTable;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/SymbolTable;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/util/SymbolTable;->fBuckets:[Lorg/apache/xerces/util/SymbolTable$Entry;

    move v3, v1

    if-gez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuffer;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v6, "Illegal Capacity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    move v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    move v3, v2

    const/4 v4, 0x0

    cmpg-float v3, v3, v4

    if-lez v3, :cond_1

    move v3, v2

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuffer;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v6, "Illegal Load: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    move v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    move v3, v1

    if-nez v3, :cond_3

    const/4 v3, 0x1

    move v1, v3

    :cond_3
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lorg/apache/xerces/util/SymbolTable;->fLoadFactor:F

    move-object v3, v0

    move v4, v1

    iput v4, v3, Lorg/apache/xerces/util/SymbolTable;->fTableSize:I

    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/util/SymbolTable;->fTableSize:I

    new-array v4, v4, [Lorg/apache/xerces/util/SymbolTable$Entry;

    iput-object v4, v3, Lorg/apache/xerces/util/SymbolTable;->fBuckets:[Lorg/apache/xerces/util/SymbolTable$Entry;

    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/util/SymbolTable;->fTableSize:I

    int-to-float v4, v4

    move v5, v2

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Lorg/apache/xerces/util/SymbolTable;->fThreshold:I

    move-object v3, v0

    const/high16 v4, 0x42200000    # 40.0f

    move v5, v2

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Lorg/apache/xerces/util/SymbolTable;->fCollisionThreshold:I

    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lorg/apache/xerces/util/SymbolTable;->fCount:I

    return-void
.end method

.method private addSymbol0(Ljava/lang/String;II)Ljava/lang/String;
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/util/SymbolTable;->fCount:I

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/util/SymbolTable;->fThreshold:I

    if-lt v5, v6, :cond_1

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xerces/util/SymbolTable;->rehash()V

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lorg/apache/xerces/util/SymbolTable;->hash(Ljava/lang/String;)I

    move-result v5

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/util/SymbolTable;->fTableSize:I

    rem-int/2addr v5, v6

    move v2, v5

    :cond_0
    :goto_0
    new-instance v5, Lorg/apache/xerces/util/SymbolTable$Entry;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/util/SymbolTable;->fBuckets:[Lorg/apache/xerces/util/SymbolTable$Entry;

    move v9, v2

    aget-object v8, v8, v9

    invoke-direct {v6, v7, v8}, Lorg/apache/xerces/util/SymbolTable$Entry;-><init>(Ljava/lang/String;Lorg/apache/xerces/util/SymbolTable$Entry;)V

    move-object v4, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/SymbolTable;->fBuckets:[Lorg/apache/xerces/util/SymbolTable$Entry;

    move v6, v2

    move-object v7, v4

    aput-object v7, v5, v6

    move-object v5, v0

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    iget v6, v6, Lorg/apache/xerces/util/SymbolTable;->fCount:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lorg/apache/xerces/util/SymbolTable;->fCount:I

    move-object v5, v4

    iget-object v5, v5, Lorg/apache/xerces/util/SymbolTable$Entry;->symbol:Ljava/lang/String;

    move-object v0, v5

    return-object v0

    :cond_1
    move v5, v3

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/util/SymbolTable;->fCollisionThreshold:I

    if-lt v5, v6, :cond_0

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xerces/util/SymbolTable;->rebalance()V

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lorg/apache/xerces/util/SymbolTable;->hash(Ljava/lang/String;)I

    move-result v5

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/util/SymbolTable;->fTableSize:I

    rem-int/2addr v5, v6

    move v2, v5

    goto :goto_0
.end method

.method private addSymbol0([CIIII)Ljava/lang/String;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/util/SymbolTable;->fCount:I

    move-object v8, v0

    iget v8, v8, Lorg/apache/xerces/util/SymbolTable;->fThreshold:I

    if-lt v7, v8, :cond_1

    move-object v7, v0

    invoke-virtual {v7}, Lorg/apache/xerces/util/SymbolTable;->rehash()V

    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move v10, v3

    invoke-virtual {v7, v8, v9, v10}, Lorg/apache/xerces/util/SymbolTable;->hash([CII)I

    move-result v7

    move-object v8, v0

    iget v8, v8, Lorg/apache/xerces/util/SymbolTable;->fTableSize:I

    rem-int/2addr v7, v8

    move v4, v7

    :cond_0
    :goto_0
    new-instance v7, Lorg/apache/xerces/util/SymbolTable$Entry;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    move-object v9, v1

    move v10, v2

    move v11, v3

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xerces/util/SymbolTable;->fBuckets:[Lorg/apache/xerces/util/SymbolTable$Entry;

    move v13, v4

    aget-object v12, v12, v13

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/xerces/util/SymbolTable$Entry;-><init>([CIILorg/apache/xerces/util/SymbolTable$Entry;)V

    move-object v6, v7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/SymbolTable;->fBuckets:[Lorg/apache/xerces/util/SymbolTable$Entry;

    move v8, v4

    move-object v9, v6

    aput-object v9, v7, v8

    move-object v7, v0

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    iget v8, v8, Lorg/apache/xerces/util/SymbolTable;->fCount:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lorg/apache/xerces/util/SymbolTable;->fCount:I

    move-object v7, v6

    iget-object v7, v7, Lorg/apache/xerces/util/SymbolTable$Entry;->symbol:Ljava/lang/String;

    move-object v0, v7

    return-object v0

    :cond_1
    move v7, v5

    move-object v8, v0

    iget v8, v8, Lorg/apache/xerces/util/SymbolTable;->fCollisionThreshold:I

    if-lt v7, v8, :cond_0

    move-object v7, v0

    invoke-virtual {v7}, Lorg/apache/xerces/util/SymbolTable;->rebalance()V

    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move v10, v3

    invoke-virtual {v7, v8, v9, v10}, Lorg/apache/xerces/util/SymbolTable;->hash([CII)I

    move-result v7

    move-object v8, v0

    iget v8, v8, Lorg/apache/xerces/util/SymbolTable;->fTableSize:I

    rem-int/2addr v7, v8

    move v4, v7

    goto :goto_0
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

    iget-object v6, v6, Lorg/apache/xerces/util/SymbolTable;->fHashMultipliers:[I

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

.method private hash0([CII)I
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    const/4 v7, 0x0

    move v4, v7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/SymbolTable;->fHashMultipliers:[I

    move-object v5, v7

    const/4 v7, 0x0

    move v6, v7

    :goto_0
    move v7, v6

    move v8, v3

    if-lt v7, v8, :cond_0

    move v7, v4

    const v8, 0x7fffffff

    and-int/2addr v7, v8

    move v0, v7

    return v0

    :cond_0
    move v7, v4

    move-object v8, v5

    move v9, v6

    const/16 v10, 0x1f

    and-int/lit8 v9, v9, 0x1f

    aget v8, v8, v9

    mul-int/2addr v7, v8

    move-object v8, v1

    move v9, v2

    move v10, v6

    add-int/2addr v9, v10

    aget-char v8, v8, v9

    add-int/2addr v7, v8

    move v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0
.end method

.method private rehashCommon(I)V
    .locals 13

    move-object v0, p0

    move v1, p1

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/util/SymbolTable;->fBuckets:[Lorg/apache/xerces/util/SymbolTable$Entry;

    array-length v9, v9

    move v2, v9

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/util/SymbolTable;->fBuckets:[Lorg/apache/xerces/util/SymbolTable$Entry;

    move-object v3, v9

    move v9, v1

    new-array v9, v9, [Lorg/apache/xerces/util/SymbolTable$Entry;

    move-object v4, v9

    move-object v9, v0

    move v10, v1

    int-to-float v10, v10

    move-object v11, v0

    iget v11, v11, Lorg/apache/xerces/util/SymbolTable;->fLoadFactor:F

    mul-float/2addr v10, v11

    float-to-int v10, v10

    iput v10, v9, Lorg/apache/xerces/util/SymbolTable;->fThreshold:I

    move-object v9, v0

    move-object v10, v4

    iput-object v10, v9, Lorg/apache/xerces/util/SymbolTable;->fBuckets:[Lorg/apache/xerces/util/SymbolTable$Entry;

    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/util/SymbolTable;->fBuckets:[Lorg/apache/xerces/util/SymbolTable$Entry;

    array-length v10, v10

    iput v10, v9, Lorg/apache/xerces/util/SymbolTable;->fTableSize:I

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

    iget-object v9, v9, Lorg/apache/xerces/util/SymbolTable$Entry;->next:Lorg/apache/xerces/util/SymbolTable$Entry;

    move-object v6, v9

    move-object v9, v0

    move-object v10, v7

    iget-object v10, v10, Lorg/apache/xerces/util/SymbolTable$Entry;->symbol:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lorg/apache/xerces/util/SymbolTable;->hash(Ljava/lang/String;)I

    move-result v9

    move v10, v1

    rem-int/2addr v9, v10

    move v8, v9

    move-object v9, v7

    move-object v10, v4

    move v11, v8

    aget-object v10, v10, v11

    iput-object v10, v9, Lorg/apache/xerces/util/SymbolTable$Entry;->next:Lorg/apache/xerces/util/SymbolTable$Entry;

    move-object v9, v4

    move v10, v8

    move-object v11, v7

    aput-object v11, v9, v10

    goto :goto_0
.end method


# virtual methods
.method public addSymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    move-object v0, p0

    move-object v1, p1

    const/4 v5, 0x0

    move v2, v5

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lorg/apache/xerces/util/SymbolTable;->hash(Ljava/lang/String;)I

    move-result v5

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/util/SymbolTable;->fTableSize:I

    rem-int/2addr v5, v6

    move v3, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/SymbolTable;->fBuckets:[Lorg/apache/xerces/util/SymbolTable$Entry;

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    :goto_0
    move-object v5, v4

    if-nez v5, :cond_0

    move-object v5, v0

    move-object v6, v1

    move v7, v3

    move v8, v2

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/xerces/util/SymbolTable;->addSymbol0(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    :goto_1
    return-object v0

    :cond_0
    move-object v5, v4

    iget-object v5, v5, Lorg/apache/xerces/util/SymbolTable$Entry;->symbol:Ljava/lang/String;

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v4

    iget-object v5, v5, Lorg/apache/xerces/util/SymbolTable$Entry;->symbol:Ljava/lang/String;

    move-object v0, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move-object v5, v4

    iget-object v5, v5, Lorg/apache/xerces/util/SymbolTable$Entry;->next:Lorg/apache/xerces/util/SymbolTable$Entry;

    move-object v4, v5

    goto :goto_0
.end method

.method public addSymbol([CII)Ljava/lang/String;
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/4 v8, 0x0

    move v4, v8

    move-object v8, v0

    move-object v9, v1

    move v10, v2

    move v11, v3

    invoke-virtual {v8, v9, v10, v11}, Lorg/apache/xerces/util/SymbolTable;->hash([CII)I

    move-result v8

    move-object v9, v0

    iget v9, v9, Lorg/apache/xerces/util/SymbolTable;->fTableSize:I

    rem-int/2addr v8, v9

    move v5, v8

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/util/SymbolTable;->fBuckets:[Lorg/apache/xerces/util/SymbolTable$Entry;

    move v9, v5

    aget-object v8, v8, v9

    move-object v6, v8

    :goto_0
    move-object v8, v6

    if-nez v8, :cond_0

    move-object v8, v0

    move-object v9, v1

    move v10, v2

    move v11, v3

    move v12, v5

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lorg/apache/xerces/util/SymbolTable;->addSymbol0([CIIII)Ljava/lang/String;

    move-result-object v8

    move-object v0, v8

    :goto_1
    return-object v0

    :cond_0
    move v8, v3

    move-object v9, v6

    iget-object v9, v9, Lorg/apache/xerces/util/SymbolTable$Entry;->characters:[C

    array-length v9, v9

    if-ne v8, v9, :cond_3

    const/4 v8, 0x0

    move v7, v8

    :goto_2
    move v8, v7

    move v9, v3

    if-lt v8, v9, :cond_1

    move-object v8, v6

    iget-object v8, v8, Lorg/apache/xerces/util/SymbolTable$Entry;->symbol:Ljava/lang/String;

    move-object v0, v8

    goto :goto_1

    :cond_1
    move-object v8, v1

    move v9, v2

    move v10, v7

    add-int/2addr v9, v10

    aget-char v8, v8, v9

    move-object v9, v6

    iget-object v9, v9, Lorg/apache/xerces/util/SymbolTable$Entry;->characters:[C

    move v10, v7

    aget-char v9, v9, v10

    if-eq v8, v9, :cond_2

    add-int/lit8 v4, v4, 0x1

    :goto_3
    move-object v8, v6

    iget-object v8, v8, Lorg/apache/xerces/util/SymbolTable$Entry;->next:Lorg/apache/xerces/util/SymbolTable$Entry;

    move-object v6, v8

    goto :goto_0

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method public containsSymbol(Ljava/lang/String;)Z
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Lorg/apache/xerces/util/SymbolTable;->hash(Ljava/lang/String;)I

    move-result v6

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/util/SymbolTable;->fTableSize:I

    rem-int/2addr v6, v7

    move v2, v6

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move v3, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/SymbolTable;->fBuckets:[Lorg/apache/xerces/util/SymbolTable$Entry;

    move v7, v2

    aget-object v6, v6, v7

    move-object v4, v6

    :goto_0
    move-object v6, v4

    if-nez v6, :cond_0

    const/4 v6, 0x0

    move v0, v6

    :goto_1
    return v0

    :cond_0
    move v6, v3

    move-object v7, v4

    iget-object v7, v7, Lorg/apache/xerces/util/SymbolTable$Entry;->characters:[C

    array-length v7, v7

    if-ne v6, v7, :cond_2

    const/4 v6, 0x0

    move v5, v6

    :goto_2
    move v6, v5

    move v7, v3

    if-lt v6, v7, :cond_1

    const/4 v6, 0x1

    move v0, v6

    goto :goto_1

    :cond_1
    move-object v6, v1

    move v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move-object v7, v4

    iget-object v7, v7, Lorg/apache/xerces/util/SymbolTable$Entry;->characters:[C

    move v8, v5

    aget-char v7, v7, v8

    if-eq v6, v7, :cond_3

    :cond_2
    move-object v6, v4

    iget-object v6, v6, Lorg/apache/xerces/util/SymbolTable$Entry;->next:Lorg/apache/xerces/util/SymbolTable$Entry;

    move-object v4, v6

    goto :goto_0

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method public containsSymbol([CII)Z
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v7, v0

    move-object v8, v1

    move v9, v2

    move v10, v3

    invoke-virtual {v7, v8, v9, v10}, Lorg/apache/xerces/util/SymbolTable;->hash([CII)I

    move-result v7

    move-object v8, v0

    iget v8, v8, Lorg/apache/xerces/util/SymbolTable;->fTableSize:I

    rem-int/2addr v7, v8

    move v4, v7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/SymbolTable;->fBuckets:[Lorg/apache/xerces/util/SymbolTable$Entry;

    move v8, v4

    aget-object v7, v7, v8

    move-object v5, v7

    :goto_0
    move-object v7, v5

    if-nez v7, :cond_0

    const/4 v7, 0x0

    move v0, v7

    :goto_1
    return v0

    :cond_0
    move v7, v3

    move-object v8, v5

    iget-object v8, v8, Lorg/apache/xerces/util/SymbolTable$Entry;->characters:[C

    array-length v8, v8

    if-ne v7, v8, :cond_2

    const/4 v7, 0x0

    move v6, v7

    :goto_2
    move v7, v6

    move v8, v3

    if-lt v7, v8, :cond_1

    const/4 v7, 0x1

    move v0, v7

    goto :goto_1

    :cond_1
    move-object v7, v1

    move v8, v2

    move v9, v6

    add-int/2addr v8, v9

    aget-char v7, v7, v8

    move-object v8, v5

    iget-object v8, v8, Lorg/apache/xerces/util/SymbolTable$Entry;->characters:[C

    move v9, v6

    aget-char v8, v8, v9

    if-eq v7, v8, :cond_3

    :cond_2
    move-object v7, v5

    iget-object v7, v7, Lorg/apache/xerces/util/SymbolTable$Entry;->next:Lorg/apache/xerces/util/SymbolTable$Entry;

    move-object v5, v7

    goto :goto_0

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2
.end method

.method public hash(Ljava/lang/String;)I
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/SymbolTable;->fHashMultipliers:[I

    if-nez v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lorg/apache/xerces/util/SymbolTable;->hash0(Ljava/lang/String;)I

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public hash([CII)I
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/SymbolTable;->fHashMultipliers:[I

    if-nez v6, :cond_1

    const/4 v6, 0x0

    move v4, v6

    const/4 v6, 0x0

    move v5, v6

    :goto_0
    move v6, v5

    move v7, v3

    if-lt v6, v7, :cond_0

    move v6, v4

    const v7, 0x7fffffff

    and-int/2addr v6, v7

    move v0, v6

    :goto_1
    return v0

    :cond_0
    move v6, v4

    const/16 v7, 0x1f

    mul-int/lit8 v6, v6, 0x1f

    move-object v7, v1

    move v8, v2

    move v9, v5

    add-int/2addr v8, v9

    aget-char v7, v7, v8

    add-int/2addr v6, v7

    move v4, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move v9, v3

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/xerces/util/SymbolTable;->hash0([CII)I

    move-result v6

    move v0, v6

    goto :goto_1
.end method

.method protected rebalance()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/SymbolTable;->fHashMultipliers:[I

    if-nez v1, :cond_0

    move-object v1, v0

    const/16 v2, 0x20

    new-array v2, v2, [I

    iput-object v2, v1, Lorg/apache/xerces/util/SymbolTable;->fHashMultipliers:[I

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/SymbolTable;->fHashMultipliers:[I

    invoke-static {v1}, Lorg/apache/xerces/util/PrimeNumberSequenceGenerator;->generateSequence([I)V

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/SymbolTable;->fBuckets:[Lorg/apache/xerces/util/SymbolTable$Entry;

    array-length v2, v2

    invoke-direct {v1, v2}, Lorg/apache/xerces/util/SymbolTable;->rehashCommon(I)V

    return-void
.end method

.method protected rehash()V
    .locals 4

    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/SymbolTable;->fBuckets:[Lorg/apache/xerces/util/SymbolTable$Entry;

    array-length v2, v2

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Lorg/apache/xerces/util/SymbolTable;->rehashCommon(I)V

    return-void
.end method
