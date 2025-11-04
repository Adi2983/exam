.class public Lorg/apache/xerces/util/SoftReferenceSymbolTable;
.super Lorg/apache/xerces/util/SymbolTable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;,
        Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;
    }
.end annotation


# instance fields
.field protected fBuckets:[Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

.field private final fReferenceQueue:Ljava/lang/ref/ReferenceQueue;


# direct methods
.method public constructor <init>()V
    .locals 4

    move-object v0, p0

    move-object v1, v0

    const/16 v2, 0x65

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v1, v2, v3}, Lorg/apache/xerces/util/SoftReferenceSymbolTable;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    const/high16 v4, 0x3f400000    # 0.75f

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/util/SoftReferenceSymbolTable;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    const/4 v4, 0x1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lorg/apache/xerces/util/SymbolTable;-><init>(IF)V

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

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

    iput v4, v3, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fLoadFactor:F

    move-object v3, v0

    move v4, v1

    iput v4, v3, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fTableSize:I

    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fTableSize:I

    new-array v4, v4, [Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    iput-object v4, v3, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    move-object v3, v0

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fTableSize:I

    int-to-float v4, v4

    move v5, v2

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fThreshold:I

    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fCount:I

    move-object v3, v0

    new-instance v4, Ljava/lang/ref/ReferenceQueue;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v4, v3, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method private addSymbol0(Ljava/lang/String;II)Ljava/lang/String;
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fCount:I

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fThreshold:I

    if-lt v5, v6, :cond_1

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->rehash()V

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->hash(Ljava/lang/String;)I

    move-result v5

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fTableSize:I

    rem-int/2addr v5, v6

    move v2, v5

    :cond_0
    :goto_0
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    new-instance v5, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    move v9, v2

    aget-object v8, v8, v9

    move v9, v2

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;-><init>(Ljava/lang/String;Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;ILjava/lang/ref/ReferenceQueue;)V

    move-object v4, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    move v6, v2

    move-object v7, v4

    aput-object v7, v5, v6

    move-object v5, v0

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    iget v6, v6, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fCount:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fCount:I

    move-object v5, v1

    move-object v0, v5

    return-object v0

    :cond_1
    move v5, v3

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fCollisionThreshold:I

    if-lt v5, v6, :cond_0

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->rebalance()V

    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->hash(Ljava/lang/String;)I

    move-result v5

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fTableSize:I

    rem-int/2addr v5, v6

    move v2, v5

    goto :goto_0
.end method

.method private addSymbol0([CIIII)Ljava/lang/String;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object v9, v1

    iget v9, v9, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fCount:I

    move-object v10, v1

    iget v10, v10, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fThreshold:I

    if-lt v9, v10, :cond_1

    move-object v9, v1

    invoke-virtual {v9}, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->rehash()V

    move-object v9, v1

    move-object v10, v2

    move v11, v3

    move v12, v4

    invoke-virtual {v9, v10, v11, v12}, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->hash([CII)I

    move-result v9

    move-object v10, v1

    iget v10, v10, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fTableSize:I

    rem-int/2addr v9, v10

    move v5, v9

    :cond_0
    :goto_0
    new-instance v9, Ljava/lang/String;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    move-object v11, v2

    move v12, v3

    move v13, v4

    invoke-direct {v10, v11, v12, v13}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    new-instance v9, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    move-object v11, v7

    move-object v12, v2

    move v13, v3

    move v14, v4

    move-object v15, v1

    iget-object v15, v15, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    move/from16 v16, v5

    aget-object v15, v15, v16

    move/from16 v16, v5

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    move-object/from16 v17, v0

    invoke-direct/range {v10 .. v17}, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;-><init>(Ljava/lang/String;[CIILorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;ILjava/lang/ref/ReferenceQueue;)V

    move-object v8, v9

    move-object v9, v1

    iget-object v9, v9, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    move v10, v5

    move-object v11, v8

    aput-object v11, v9, v10

    move-object v9, v1

    move-object/from16 v18, v9

    move-object/from16 v9, v18

    move-object/from16 v10, v18

    iget v10, v10, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fCount:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    iput v10, v9, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fCount:I

    move-object v9, v7

    move-object v1, v9

    return-object v1

    :cond_1
    move v9, v6

    move-object v10, v1

    iget v10, v10, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fCollisionThreshold:I

    if-lt v9, v10, :cond_0

    move-object v9, v1

    invoke-virtual {v9}, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->rebalance()V

    move-object v9, v1

    move-object v10, v2

    move v11, v3

    move v12, v4

    invoke-virtual {v9, v10, v11, v12}, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->hash([CII)I

    move-result v9

    move-object v10, v1

    iget v10, v10, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fTableSize:I

    rem-int/2addr v9, v10

    move v5, v9

    goto :goto_0
.end method

.method private clean()V
    .locals 5

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    move-object v1, v2

    move-object v2, v1

    if-eqz v2, :cond_1

    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->removeEntry(Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    move-object v1, v2

    move-object v2, v1

    if-nez v2, :cond_0

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fCount:I

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fThreshold:I

    const/4 v4, 0x2

    shr-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_1

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->compact()V

    :cond_1
    return-void
.end method

.method private rehashCommon(I)V
    .locals 14

    move-object v0, p0

    move v1, p1

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    array-length v10, v10

    move v2, v10

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    move-object v3, v10

    move v10, v1

    new-array v10, v10, [Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    move-object v4, v10

    move-object v10, v0

    move v11, v1

    int-to-float v11, v11

    move-object v12, v0

    iget v12, v12, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fLoadFactor:F

    mul-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, v10, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fThreshold:I

    move-object v10, v0

    move-object v11, v4

    iput-object v11, v10, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    array-length v11, v11

    iput v11, v10, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fTableSize:I

    move v10, v2

    move v5, v10

    :cond_0
    move v10, v5

    move v13, v10

    move v10, v13

    move v11, v13

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    move v5, v11

    if-gtz v10, :cond_1

    return-void

    :cond_1
    move-object v10, v3

    move v11, v5

    aget-object v10, v10, v11

    move-object v6, v10

    :goto_0
    move-object v10, v6

    if-eqz v10, :cond_0

    move-object v10, v6

    move-object v7, v10

    move-object v10, v6

    iget-object v10, v10, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    move-object v6, v10

    move-object v10, v7

    invoke-virtual {v10}, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;

    move-object v8, v10

    move-object v10, v8

    if-eqz v10, :cond_3

    move-object v10, v0

    move-object v11, v8

    iget-object v11, v11, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->symbol:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->hash(Ljava/lang/String;)I

    move-result v10

    move v11, v1

    rem-int/2addr v10, v11

    move v9, v10

    move-object v10, v4

    move v11, v9

    aget-object v10, v10, v11

    if-eqz v10, :cond_2

    move-object v10, v4

    move v11, v9

    aget-object v10, v10, v11

    move-object v11, v7

    iput-object v11, v10, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->prev:Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    :cond_2
    move-object v10, v7

    move v11, v9

    iput v11, v10, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->bucket:I

    move-object v10, v7

    move-object v11, v4

    move v12, v9

    aget-object v11, v11, v12

    iput-object v11, v10, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    move-object v10, v4

    move v11, v9

    move-object v12, v7

    aput-object v12, v10, v11

    :goto_1
    move-object v10, v7

    const/4 v11, 0x0

    iput-object v11, v10, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->prev:Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    goto :goto_0

    :cond_3
    move-object v10, v7

    const/4 v11, -0x1

    iput v11, v10, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->bucket:I

    move-object v10, v7

    const/4 v11, 0x0

    iput-object v11, v10, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    move-object v10, v0

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    iget v11, v11, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fCount:I

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    iput v11, v10, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fCount:I

    goto :goto_1
.end method

.method private removeEntry(Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    iget v3, v3, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->bucket:I

    move v2, v3

    move v3, v2

    if-ltz v3, :cond_1

    move-object v3, v1

    iget-object v3, v3, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    if-eqz v3, :cond_0

    move-object v3, v1

    iget-object v3, v3, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    move-object v4, v1

    iget-object v4, v4, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->prev:Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    iput-object v4, v3, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->prev:Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    :cond_0
    move-object v3, v1

    iget-object v3, v3, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->prev:Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    if-eqz v3, :cond_2

    move-object v3, v1

    iget-object v3, v3, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->prev:Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    move-object v4, v1

    iget-object v4, v4, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    iput-object v4, v3, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    :goto_0
    move-object v3, v0

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    iget v4, v4, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fCount:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fCount:I

    :cond_1
    return-void

    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    move v4, v2

    move-object v5, v1

    iget-object v5, v5, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    aput-object v5, v3, v4

    goto :goto_0
.end method


# virtual methods
.method public addSymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    invoke-direct {v6}, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->clean()V

    const/4 v6, 0x0

    move v2, v6

    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->hash(Ljava/lang/String;)I

    move-result v6

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fTableSize:I

    rem-int/2addr v6, v7

    move v3, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    move v7, v3

    aget-object v6, v6, v7

    move-object v4, v6

    :goto_0
    move-object v6, v4

    if-nez v6, :cond_0

    move-object v6, v0

    move-object v7, v1

    move v8, v3

    move v9, v2

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->addSymbol0(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    :goto_1
    return-object v0

    :cond_0
    move-object v6, v4

    invoke-virtual {v6}, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;

    move-object v5, v6

    move-object v6, v5

    if-nez v6, :cond_1

    :goto_2
    move-object v6, v4

    iget-object v6, v6, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    move-object v4, v6

    goto :goto_0

    :cond_1
    move-object v6, v5

    iget-object v6, v6, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->symbol:Ljava/lang/String;

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v5

    iget-object v6, v6, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->symbol:Ljava/lang/String;

    move-object v0, v6

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public addSymbol([CII)Ljava/lang/String;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object v9, v0

    invoke-direct {v9}, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->clean()V

    const/4 v9, 0x0

    move v4, v9

    move-object v9, v0

    move-object v10, v1

    move v11, v2

    move v12, v3

    invoke-virtual {v9, v10, v11, v12}, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->hash([CII)I

    move-result v9

    move-object v10, v0

    iget v10, v10, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fTableSize:I

    rem-int/2addr v9, v10

    move v5, v9

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    move v10, v5

    aget-object v9, v9, v10

    move-object v6, v9

    :goto_0
    move-object v9, v6

    if-nez v9, :cond_0

    move-object v9, v0

    move-object v10, v1

    move v11, v2

    move v12, v3

    move v13, v5

    move v14, v4

    invoke-direct/range {v9 .. v14}, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->addSymbol0([CIIII)Ljava/lang/String;

    move-result-object v9

    move-object v0, v9

    :goto_1
    return-object v0

    :cond_0
    move-object v9, v6

    invoke-virtual {v9}, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;

    move-object v7, v9

    move-object v9, v7

    if-nez v9, :cond_1

    :goto_2
    move-object v9, v6

    iget-object v9, v9, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    move-object v6, v9

    goto :goto_0

    :cond_1
    move v9, v3

    move-object v10, v7

    iget-object v10, v10, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->characters:[C

    array-length v10, v10

    if-ne v9, v10, :cond_4

    const/4 v9, 0x0

    move v8, v9

    :goto_3
    move v9, v8

    move v10, v3

    if-lt v9, v10, :cond_2

    move-object v9, v7

    iget-object v9, v9, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->symbol:Ljava/lang/String;

    move-object v0, v9

    goto :goto_1

    :cond_2
    move-object v9, v1

    move v10, v2

    move v11, v8

    add-int/2addr v10, v11

    aget-char v9, v9, v10

    move-object v10, v7

    iget-object v10, v10, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->characters:[C

    move v11, v8

    aget-char v10, v10, v11

    if-eq v9, v10, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method protected compact()V
    .locals 4

    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fCount:I

    int-to-float v2, v2

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fLoadFactor:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->rehashCommon(I)V

    return-void
.end method

.method public containsSymbol(Ljava/lang/String;)Z
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->hash(Ljava/lang/String;)I

    move-result v7

    move-object v8, v0

    iget v8, v8, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fTableSize:I

    rem-int/2addr v7, v8

    move v2, v7

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    move v3, v7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    move v8, v2

    aget-object v7, v7, v8

    move-object v4, v7

    :goto_0
    move-object v7, v4

    if-nez v7, :cond_0

    const/4 v7, 0x0

    move v0, v7

    :goto_1
    return v0

    :cond_0
    move-object v7, v4

    invoke-virtual {v7}, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;

    move-object v5, v7

    move-object v7, v5

    if-nez v7, :cond_2

    :cond_1
    :goto_2
    move-object v7, v4

    iget-object v7, v7, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    move-object v4, v7

    goto :goto_0

    :cond_2
    move v7, v3

    move-object v8, v5

    iget-object v8, v8, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->characters:[C

    array-length v8, v8

    if-ne v7, v8, :cond_1

    const/4 v7, 0x0

    move v6, v7

    :goto_3
    move v7, v6

    move v8, v3

    if-lt v7, v8, :cond_3

    const/4 v7, 0x1

    move v0, v7

    goto :goto_1

    :cond_3
    move-object v7, v1

    move v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move-object v8, v5

    iget-object v8, v8, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->characters:[C

    move v9, v6

    aget-char v8, v8, v9

    if-eq v7, v8, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3
.end method

.method public containsSymbol([CII)Z
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v8, v0

    move-object v9, v1

    move v10, v2

    move v11, v3

    invoke-virtual {v8, v9, v10, v11}, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->hash([CII)I

    move-result v8

    move-object v9, v0

    iget v9, v9, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fTableSize:I

    rem-int/2addr v8, v9

    move v4, v8

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    move v9, v4

    aget-object v8, v8, v9

    move-object v5, v8

    :goto_0
    move-object v8, v5

    if-nez v8, :cond_0

    const/4 v8, 0x0

    move v0, v8

    :goto_1
    return v0

    :cond_0
    move-object v8, v5

    invoke-virtual {v8}, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;

    move-object v6, v8

    move-object v8, v6

    if-nez v8, :cond_2

    :cond_1
    :goto_2
    move-object v8, v5

    iget-object v8, v8, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;->next:Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    move-object v5, v8

    goto :goto_0

    :cond_2
    move v8, v3

    move-object v9, v6

    iget-object v9, v9, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->characters:[C

    array-length v9, v9

    if-ne v8, v9, :cond_1

    const/4 v8, 0x0

    move v7, v8

    :goto_3
    move v8, v7

    move v9, v3

    if-lt v8, v9, :cond_3

    const/4 v8, 0x1

    move v0, v8

    goto :goto_1

    :cond_3
    move-object v8, v1

    move v9, v2

    move v10, v7

    add-int/2addr v9, v10

    aget-char v8, v8, v9

    move-object v9, v6

    iget-object v9, v9, Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntryData;->characters:[C

    move v10, v7

    aget-char v9, v9, v10

    if-eq v8, v9, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3
.end method

.method protected rebalance()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fHashMultipliers:[I

    if-nez v1, :cond_0

    move-object v1, v0

    const/16 v2, 0x20

    new-array v2, v2, [I

    iput-object v2, v1, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fHashMultipliers:[I

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fHashMultipliers:[I

    invoke-static {v1}, Lorg/apache/xerces/util/PrimeNumberSequenceGenerator;->generateSequence([I)V

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    array-length v2, v2

    invoke-direct {v1, v2}, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->rehashCommon(I)V

    return-void
.end method

.method protected rehash()V
    .locals 4

    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->fBuckets:[Lorg/apache/xerces/util/SoftReferenceSymbolTable$SREntry;

    array-length v2, v2

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Lorg/apache/xerces/util/SoftReferenceSymbolTable;->rehashCommon(I)V

    return-void
.end method
