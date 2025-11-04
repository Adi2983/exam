.class public Lorg/apache/xerces/util/XMLAttributesImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xerces/xni/XMLAttributes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;
    }
.end annotation


# static fields
.field protected static final MAX_HASH_COLLISIONS:I = 0x28

.field protected static final MULTIPLIERS_MASK:I = 0x1f

.field protected static final MULTIPLIERS_SIZE:I = 0x20

.field protected static final SIZE_LIMIT:I = 0x14

.field protected static final TABLE_SIZE:I = 0x65


# instance fields
.field protected fAttributeTableView:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

.field protected fAttributeTableViewChainState:[I

.field protected fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

.field protected fHashMultipliers:[I

.field protected fIsTableViewConsistent:Z

.field protected fLargeCount:I

.field protected fLength:I

.field protected fNamespaces:Z

.field protected fTableViewBuckets:I


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const/16 v2, 0x65

    invoke-direct {v1, v2}, Lorg/apache/xerces/util/XMLAttributesImpl;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 8

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fNamespaces:Z

    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    move-object v3, v0

    const/4 v4, 0x4

    new-array v4, v4, [Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    iput-object v4, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move-object v3, v0

    move v4, v1

    iput v4, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v4, v4

    if-lt v3, v4, :cond_0

    return-void

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v4, v2

    new-instance v5, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;-><init>()V

    aput-object v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private checkManyDuplicatesNS()Lorg/apache/xerces/xni/QName;
    .locals 14

    move-object v0, p0

    move-object v11, v0

    const/4 v12, 0x0

    iput-boolean v12, v11, Lorg/apache/xerces/util/XMLAttributesImpl;->fIsTableViewConsistent:Z

    move-object v11, v0

    invoke-virtual {v11}, Lorg/apache/xerces/util/XMLAttributesImpl;->prepareTableView()V

    move-object v11, v0

    iget v11, v11, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    move v3, v11

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move-object v4, v11

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move-object v5, v11

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    move-object v6, v11

    move-object v11, v0

    iget v11, v11, Lorg/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    move v7, v11

    const/4 v11, 0x0

    move v8, v11

    :goto_0
    move v11, v8

    move v12, v3

    if-lt v11, v12, :cond_0

    const/4 v11, 0x0

    move-object v0, v11

    :goto_1
    return-object v0

    :cond_0
    move-object v11, v4

    move v12, v8

    aget-object v11, v11, v12

    move-object v1, v11

    move-object v11, v0

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v12, v12, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object v13, v1

    iget-object v13, v13, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v13, v13, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Lorg/apache/xerces/util/XMLAttributesImpl;->getTableViewBucket(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    move v2, v11

    move-object v11, v6

    move v12, v2

    aget v11, v11, v12

    move v12, v7

    if-eq v11, v12, :cond_1

    move-object v11, v6

    move v12, v2

    move v13, v7

    aput v13, v11, v12

    move-object v11, v1

    const/4 v12, 0x0

    iput-object v12, v11, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->next:Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move-object v11, v5

    move v12, v2

    move-object v13, v1

    aput-object v13, v11, v12

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    move v9, v11

    move-object v11, v5

    move v12, v2

    aget-object v11, v11, v12

    move-object v10, v11

    :goto_3
    move-object v11, v10

    if-nez v11, :cond_2

    move v11, v9

    const/16 v12, 0x28

    if-lt v11, v12, :cond_4

    move-object v11, v0

    move v12, v8

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    invoke-direct {v11, v12}, Lorg/apache/xerces/util/XMLAttributesImpl;->rebalanceTableViewNS(I)V

    move-object v11, v0

    iget v11, v11, Lorg/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    move v7, v11

    goto :goto_2

    :cond_2
    move-object v11, v10

    iget-object v11, v11, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v11, v11, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v12, v12, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-ne v11, v12, :cond_3

    move-object v11, v10

    iget-object v11, v11, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v11, v11, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v12, v12, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v11, v12, :cond_3

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    move-object v0, v11

    goto :goto_1

    :cond_3
    move-object v11, v10

    iget-object v11, v11, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->next:Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move-object v10, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_4
    move-object v11, v1

    move-object v12, v5

    move v13, v2

    aget-object v12, v12, v13

    iput-object v12, v11, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->next:Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move-object v11, v5

    move v12, v2

    move-object v13, v1

    aput-object v13, v11, v12

    goto :goto_2
.end method

.method private getReportableType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x28

    if-ne v2, v3, :cond_0

    const-string/jumbo v2, "NMTOKEN"

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method

.method private growTableView()V
    .locals 5

    move-object v0, p0

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    move v1, v3

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    move v2, v3

    :cond_0
    move v3, v2

    const/4 v4, 0x1

    shl-int/lit8 v3, v3, 0x1

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move v2, v3

    move v3, v2

    if-gez v3, :cond_1

    const v3, 0x7fffffff

    move v2, v3

    :goto_0
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move-object v3, v0

    const/4 v4, 0x1

    iput v4, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    return-void

    :cond_1
    move v3, v1

    move v4, v2

    if-gt v3, v4, :cond_0

    goto :goto_0
.end method

.method private hash(Ljava/lang/String;)I
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/XMLAttributesImpl;->fHashMultipliers:[I

    if-nez v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lorg/apache/xerces/util/XMLAttributesImpl;->hash0(Ljava/lang/String;)I

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method private hash(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fHashMultipliers:[I

    if-nez v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v5, 0x1f

    mul-int/lit8 v4, v4, 0x1f

    add-int/2addr v3, v4

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lorg/apache/xerces/util/XMLAttributesImpl;->hash0(Ljava/lang/String;)I

    move-result v3

    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Lorg/apache/xerces/util/XMLAttributesImpl;->hash0(Ljava/lang/String;)I

    move-result v4

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl;->fHashMultipliers:[I

    const/16 v6, 0x20

    aget v5, v5, v6

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    move v0, v3

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

    iget-object v6, v6, Lorg/apache/xerces/util/XMLAttributesImpl;->fHashMultipliers:[I

    move-object v4, v6

    const/4 v6, 0x0

    move v5, v6

    :goto_0
    move v6, v5

    move v7, v3

    if-lt v6, v7, :cond_0

    move v6, v2

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

.method private prepareAndPopulateTableView(I)V
    .locals 8

    move-object v0, p0

    move v1, p1

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xerces/util/XMLAttributesImpl;->prepareTableView()V

    const/4 v5, 0x0

    move v4, v5

    :goto_0
    move v5, v4

    move v6, v1

    if-lt v5, v6, :cond_0

    return-void

    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v6, v4

    aget-object v5, v5, v6

    move-object v2, v5

    move-object v5, v0

    move-object v6, v2

    iget-object v6, v6, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v6, v6, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/apache/xerces/util/XMLAttributesImpl;->getTableViewBucket(Ljava/lang/String;)I

    move-result v5

    move v3, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    move v6, v3

    aget v5, v5, v6

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    if-eq v5, v6, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    move v6, v3

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    aput v7, v5, v6

    move-object v5, v2

    const/4 v6, 0x0

    iput-object v6, v5, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->next:Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v6, v3

    move-object v7, v2

    aput-object v7, v5, v6

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v7, v3

    aget-object v6, v6, v7

    iput-object v6, v5, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->next:Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v6, v3

    move-object v7, v2

    aput-object v7, v5, v6

    goto :goto_1
.end method

.method private prepareAndPopulateTableViewNS(I)V
    .locals 8

    move-object v0, p0

    move v1, p1

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xerces/util/XMLAttributesImpl;->prepareTableView()V

    const/4 v5, 0x0

    move v4, v5

    :goto_0
    move v5, v4

    move v6, v1

    if-lt v5, v6, :cond_0

    return-void

    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v6, v4

    aget-object v5, v5, v6

    move-object v2, v5

    move-object v5, v0

    move-object v6, v2

    iget-object v6, v6, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v6, v6, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object v7, v2

    iget-object v7, v7, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v7, v7, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/util/XMLAttributesImpl;->getTableViewBucket(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move v3, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    move v6, v3

    aget v5, v5, v6

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    if-eq v5, v6, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    move v6, v3

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    aput v7, v5, v6

    move-object v5, v2

    const/4 v6, 0x0

    iput-object v6, v5, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->next:Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v6, v3

    move-object v7, v2

    aput-object v7, v5, v6

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v7, v3

    aget-object v6, v6, v7

    iput-object v6, v5, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->next:Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v6, v3

    move-object v7, v2

    aput-object v7, v5, v6

    goto :goto_1
.end method

.method private rebalanceTableView(I)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/XMLAttributesImpl;->fHashMultipliers:[I

    if-nez v2, :cond_0

    move-object v2, v0

    const/16 v3, 0x21

    new-array v3, v3, [I

    iput-object v3, v2, Lorg/apache/xerces/util/XMLAttributesImpl;->fHashMultipliers:[I

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/XMLAttributesImpl;->fHashMultipliers:[I

    invoke-static {v2}, Lorg/apache/xerces/util/PrimeNumberSequenceGenerator;->generateSequence([I)V

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lorg/apache/xerces/util/XMLAttributesImpl;->prepareAndPopulateTableView(I)V

    return-void
.end method

.method private rebalanceTableViewNS(I)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/XMLAttributesImpl;->fHashMultipliers:[I

    if-nez v2, :cond_0

    move-object v2, v0

    const/16 v3, 0x21

    new-array v3, v3, [I

    iput-object v3, v2, Lorg/apache/xerces/util/XMLAttributesImpl;->fHashMultipliers:[I

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/XMLAttributesImpl;->fHashMultipliers:[I

    invoke-static {v2}, Lorg/apache/xerces/util/PrimeNumberSequenceGenerator;->generateSequence([I)V

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lorg/apache/xerces/util/XMLAttributesImpl;->prepareAndPopulateTableViewNS(I)V

    return-void
.end method


# virtual methods
.method public addAttribute(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v10, v0

    iget v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    const/16 v11, 0x14

    if-ge v10, v11, :cond_3

    move-object v10, v1

    iget-object v10, v10, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v10, :cond_1

    move-object v10, v1

    iget-object v10, v10, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_1

    move-object v10, v0

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lorg/apache/xerces/util/XMLAttributesImpl;->getIndexFast(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    :goto_0
    move v4, v10

    move v10, v4

    const/4 v11, -0x1

    if-ne v10, v11, :cond_0

    move-object v10, v0

    iget v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    move v4, v10

    move-object v10, v0

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    iget v11, v11, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    move-object v15, v10

    move/from16 v16, v11

    move/from16 v10, v16

    move-object v11, v15

    move/from16 v12, v16

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v11, v11

    if-ne v10, v11, :cond_0

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v10, v10

    const/4 v11, 0x4

    add-int/lit8 v10, v10, 0x4

    new-array v10, v10, [Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move-object v5, v10

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    const/4 v11, 0x0

    move-object v12, v5

    const/4 v13, 0x0

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v14, v14

    invoke-static {v10, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v10, v10

    move v6, v10

    :goto_1
    move v10, v6

    move-object v11, v5

    array-length v11, v11

    if-lt v10, v11, :cond_2

    move-object v10, v0

    move-object v11, v5

    iput-object v11, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    :cond_0
    :goto_2
    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v11, v4

    aget-object v10, v10, v11

    move-object v5, v10

    move-object v10, v5

    iget-object v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    move-object v11, v1

    invoke-virtual {v10, v11}, Lorg/apache/xerces/xni/QName;->setValues(Lorg/apache/xerces/xni/QName;)V

    move-object v10, v5

    move-object v11, v2

    iput-object v11, v10, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->type:Ljava/lang/String;

    move-object v10, v5

    move-object v11, v3

    iput-object v11, v10, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    move-object v10, v5

    move-object v11, v3

    iput-object v11, v10, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->nonNormalizedValue:Ljava/lang/String;

    move-object v10, v5

    const/4 v11, 0x0

    iput-boolean v11, v10, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->specified:Z

    move-object v10, v5

    iget-object v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->augs:Lorg/apache/xerces/xni/Augmentations;

    invoke-interface {v10}, Lorg/apache/xerces/xni/Augmentations;->removeAllItems()V

    move v10, v4

    move v0, v10

    return v0

    :cond_1
    move-object v10, v0

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lorg/apache/xerces/util/XMLAttributesImpl;->getIndexFast(Ljava/lang/String;)I

    move-result v10

    goto :goto_0

    :cond_2
    move-object v10, v5

    move v11, v6

    new-instance v12, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;-><init>()V

    aput-object v12, v10, v11

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    move-object v10, v1

    iget-object v10, v10, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v10, :cond_4

    move-object v10, v1

    iget-object v10, v10, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_4

    move-object v10, v0

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lorg/apache/xerces/util/XMLAttributesImpl;->getIndexFast(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    move v15, v10

    move v10, v15

    move v11, v15

    move v4, v11

    const/4 v11, -0x1

    if-ne v10, v11, :cond_0

    :cond_4
    move-object v10, v0

    iget-boolean v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fIsTableViewConsistent:Z

    if-eqz v10, :cond_5

    move-object v10, v0

    iget v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    const/16 v11, 0x14

    if-eq v10, v11, :cond_5

    move-object v10, v0

    iget v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    const/16 v11, 0x14

    if-le v10, v11, :cond_6

    move-object v10, v0

    iget v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    move-object v11, v0

    iget v11, v11, Lorg/apache/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    if-le v10, v11, :cond_6

    :cond_5
    move-object v10, v0

    invoke-virtual {v10}, Lorg/apache/xerces/util/XMLAttributesImpl;->prepareAndPopulateTableView()V

    move-object v10, v0

    const/4 v11, 0x1

    iput-boolean v11, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fIsTableViewConsistent:Z

    :cond_6
    move-object v10, v0

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lorg/apache/xerces/util/XMLAttributesImpl;->getTableViewBucket(Ljava/lang/String;)I

    move-result v10

    move v5, v10

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    move v11, v5

    aget v10, v10, v11

    move-object v11, v0

    iget v11, v11, Lorg/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    if-eq v10, v11, :cond_9

    move-object v10, v0

    iget v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    move v4, v10

    move-object v10, v0

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    iget v11, v11, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    move-object v15, v10

    move/from16 v16, v11

    move/from16 v10, v16

    move-object v11, v15

    move/from16 v12, v16

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v11, v11

    if-ne v10, v11, :cond_7

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v10, v10

    const/4 v11, 0x1

    shl-int/lit8 v10, v10, 0x1

    new-array v10, v10, [Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move-object v6, v10

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    const/4 v11, 0x0

    move-object v12, v6

    const/4 v13, 0x0

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v14, v14

    invoke-static {v10, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v10, v10

    move v7, v10

    :goto_3
    move v10, v7

    move-object v11, v6

    array-length v11, v11

    if-lt v10, v11, :cond_8

    move-object v10, v0

    move-object v11, v6

    iput-object v11, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    :cond_7
    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    move v11, v5

    move-object v12, v0

    iget v12, v12, Lorg/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    aput v12, v10, v11

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v11, v4

    aget-object v10, v10, v11

    const/4 v11, 0x0

    iput-object v11, v10, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->next:Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v11, v5

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v13, v4

    aget-object v12, v12, v13

    aput-object v12, v10, v11

    goto/16 :goto_2

    :cond_8
    move-object v10, v6

    move v11, v7

    new-instance v12, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;-><init>()V

    aput-object v12, v10, v11

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_9
    const/4 v10, 0x0

    move v6, v10

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v11, v5

    aget-object v10, v10, v11

    move-object v7, v10

    :goto_4
    move-object v10, v7

    if-nez v10, :cond_b

    :goto_5
    move-object v10, v7

    if-nez v10, :cond_f

    move-object v10, v0

    iget v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    move v4, v10

    move-object v10, v0

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    iget v11, v11, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    move-object v15, v10

    move/from16 v16, v11

    move/from16 v10, v16

    move-object v11, v15

    move/from16 v12, v16

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v11, v11

    if-ne v10, v11, :cond_a

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v10, v10

    const/4 v11, 0x1

    shl-int/lit8 v10, v10, 0x1

    new-array v10, v10, [Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move-object v8, v10

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    const/4 v11, 0x0

    move-object v12, v8

    const/4 v13, 0x0

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v14, v14

    invoke-static {v10, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v10, v10

    move v9, v10

    :goto_6
    move v10, v9

    move-object v11, v8

    array-length v11, v11

    if-lt v10, v11, :cond_d

    move-object v10, v0

    move-object v11, v8

    iput-object v11, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    :cond_a
    move v10, v6

    const/16 v11, 0x28

    if-lt v10, v11, :cond_e

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v11, v4

    aget-object v10, v10, v11

    iget-object v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    move-object v11, v1

    invoke-virtual {v10, v11}, Lorg/apache/xerces/xni/QName;->setValues(Lorg/apache/xerces/xni/QName;)V

    move-object v10, v0

    move-object v11, v0

    iget v11, v11, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    invoke-direct {v10, v11}, Lorg/apache/xerces/util/XMLAttributesImpl;->rebalanceTableView(I)V

    goto/16 :goto_2

    :cond_b
    move-object v10, v7

    iget-object v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v10, v10, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-ne v10, v11, :cond_c

    goto :goto_5

    :cond_c
    move-object v10, v7

    iget-object v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->next:Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move-object v7, v10

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_d
    move-object v10, v8

    move v11, v9

    new-instance v12, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move-object v15, v12

    move-object v12, v15

    move-object v13, v15

    invoke-direct {v13}, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;-><init>()V

    aput-object v12, v10, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_e
    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v11, v4

    aget-object v10, v10, v11

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v12, v5

    aget-object v11, v11, v12

    iput-object v11, v10, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->next:Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v11, v5

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v13, v4

    aget-object v12, v12, v13

    aput-object v12, v10, v11

    goto/16 :goto_2

    :cond_f
    move-object v10, v0

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lorg/apache/xerces/util/XMLAttributesImpl;->getIndexFast(Ljava/lang/String;)I

    move-result v10

    move v4, v10

    goto/16 :goto_2
.end method

.method public addAttributeNS(Lorg/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    move v4, v7

    move-object v7, v0

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    iget v8, v8, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    move-object v12, v7

    move v13, v8

    move v7, v13

    move-object v8, v12

    move v9, v13

    const/4 v10, 0x1

    add-int/lit8 v9, v9, 0x1

    iput v9, v8, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v8, v8

    if-ne v7, v8, :cond_0

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    const/16 v8, 0x14

    if-ge v7, v8, :cond_1

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v7, v7

    const/4 v8, 0x4

    add-int/lit8 v7, v7, 0x4

    new-array v7, v7, [Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move-object v5, v7

    :goto_0
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    const/4 v8, 0x0

    move-object v9, v5

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v11, v11

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v7, v7

    move v6, v7

    :goto_1
    move v7, v6

    move-object v8, v5

    array-length v8, v8

    if-lt v7, v8, :cond_2

    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v8, v4

    aget-object v7, v7, v8

    move-object v5, v7

    move-object v7, v5

    iget-object v7, v7, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    move-object v8, v1

    invoke-virtual {v7, v8}, Lorg/apache/xerces/xni/QName;->setValues(Lorg/apache/xerces/xni/QName;)V

    move-object v7, v5

    move-object v8, v2

    iput-object v8, v7, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->type:Ljava/lang/String;

    move-object v7, v5

    move-object v8, v3

    iput-object v8, v7, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    move-object v7, v5

    move-object v8, v3

    iput-object v8, v7, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->nonNormalizedValue:Ljava/lang/String;

    move-object v7, v5

    const/4 v8, 0x0

    iput-boolean v8, v7, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->specified:Z

    move-object v7, v5

    iget-object v7, v7, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->augs:Lorg/apache/xerces/xni/Augmentations;

    invoke-interface {v7}, Lorg/apache/xerces/xni/Augmentations;->removeAllItems()V

    return-void

    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v7, v7

    const/4 v8, 0x1

    shl-int/lit8 v7, v7, 0x1

    new-array v7, v7, [Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move-object v5, v7

    goto :goto_0

    :cond_2
    move-object v7, v5

    move v8, v6

    new-instance v9, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;-><init>()V

    aput-object v9, v7, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public checkDuplicatesNS()Lorg/apache/xerces/xni/QName;
    .locals 10

    move-object v0, p0

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    move v1, v7

    move v7, v1

    const/16 v8, 0x14

    if-gt v7, v8, :cond_3

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move-object v2, v7

    const/4 v7, 0x0

    move v3, v7

    :goto_0
    move v7, v3

    move v8, v1

    const/4 v9, 0x1

    add-int/lit8 v8, v8, -0x1

    if-lt v7, v8, :cond_0

    const/4 v7, 0x0

    move-object v0, v7

    :goto_1
    return-object v0

    :cond_0
    move-object v7, v2

    move v8, v3

    aget-object v7, v7, v8

    move-object v4, v7

    move v7, v3

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    move v5, v7

    :goto_2
    move v7, v5

    move v8, v1

    if-lt v7, v8, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v7, v2

    move v8, v5

    aget-object v7, v7, v8

    move-object v6, v7

    move-object v7, v4

    iget-object v7, v7, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v7, v7, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object v8, v6

    iget-object v8, v8, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v8, v8, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-ne v7, v8, :cond_2

    move-object v7, v4

    iget-object v7, v7, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v7, v7, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object v8, v6

    iget-object v8, v8, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v8, v8, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v7, v8, :cond_2

    move-object v7, v6

    iget-object v7, v7, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    move-object v0, v7

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    move-object v7, v0

    invoke-direct {v7}, Lorg/apache/xerces/util/XMLAttributesImpl;->checkManyDuplicatesNS()Lorg/apache/xerces/xni/QName;

    move-result-object v7

    move-object v0, v7

    goto :goto_1
.end method

.method protected cleanTableView()V
    .locals 7

    move-object v0, p0

    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    if-gez v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    if-eqz v2, :cond_0

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, -0x1

    move v1, v2

    :goto_0
    move v2, v1

    if-gez v2, :cond_2

    :cond_0
    move-object v2, v0

    const/4 v3, 0x1

    iput v3, v2, Lorg/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    :cond_1
    return-void

    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    move v3, v1

    const/4 v4, 0x0

    aput v4, v2, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public getAugmentations(I)Lorg/apache/xerces/xni/Augmentations;
    .locals 4

    move-object v0, p0

    move v1, p1

    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v3, v1

    aget-object v2, v2, v3

    iget-object v2, v2, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->augs:Lorg/apache/xerces/xni/Augmentations;

    move-object v0, v2

    goto :goto_0
.end method

.method public getAugmentations(Ljava/lang/String;)Lorg/apache/xerces/xni/Augmentations;
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;)I

    move-result v3

    move v2, v3

    move v3, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v4, v2

    aget-object v3, v3, v4

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->augs:Lorg/apache/xerces/xni/Augmentations;

    :goto_0
    move-object v0, v3

    return-object v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getAugmentations(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/xni/Augmentations;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v3, v4

    move v4, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v5, v3

    aget-object v4, v4, v5

    iget-object v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->augs:Lorg/apache/xerces/xni/Augmentations;

    :goto_0
    move-object v0, v4

    return-object v0

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getIndex(Ljava/lang/String;)I
    .locals 6

    move-object v0, p0

    move-object v1, p1

    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt v4, v5, :cond_0

    const/4 v4, -0x1

    move v0, v4

    :goto_1
    return v0

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v5, v2

    aget-object v4, v4, v5

    move-object v3, v4

    move-object v4, v3

    iget-object v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v4, v4, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eqz v4, :cond_1

    move-object v4, v3

    iget-object v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v4, v4, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    move v0, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt v5, v6, :cond_0

    const/4 v5, -0x1

    move v0, v5

    :goto_1
    return v0

    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    move-object v5, v4

    iget-object v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-eqz v5, :cond_2

    move-object v5, v4

    iget-object v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v1

    move-object v6, v4

    iget-object v6, v6, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v6, v6, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eq v5, v6, :cond_1

    move-object v5, v1

    if-eqz v5, :cond_2

    move-object v5, v4

    iget-object v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v5, :cond_2

    move-object v5, v4

    iget-object v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    move v5, v3

    move v0, v5

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getIndexFast(Ljava/lang/String;)I
    .locals 6

    move-object v0, p0

    move-object v1, p1

    const/4 v4, 0x0

    move v2, v4

    :goto_0
    move v4, v2

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt v4, v5, :cond_0

    const/4 v4, -0x1

    move v0, v4

    :goto_1
    return v0

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v5, v2

    aget-object v4, v4, v5

    move-object v3, v4

    move-object v4, v3

    iget-object v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v4, v4, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v5, v1

    if-ne v4, v5, :cond_1

    move v4, v2

    move v0, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getIndexFast(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v5, 0x0

    move v3, v5

    :goto_0
    move v5, v3

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt v5, v6, :cond_0

    const/4 v5, -0x1

    move v0, v5

    :goto_1
    return v0

    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v6, v3

    aget-object v5, v5, v6

    move-object v4, v5

    move-object v5, v4

    iget-object v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object v6, v2

    if-ne v5, v6, :cond_1

    move-object v5, v4

    iget-object v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object v6, v1

    if-ne v5, v6, :cond_1

    move v5, v3

    move v0, v5

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public getLength()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    move v0, v1

    return v0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lorg/apache/xerces/util/XMLAttributesImpl;->fNamespaces:Z

    if-nez v2, :cond_0

    const-string/jumbo v2, ""

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    move v2, v1

    if-ltz v2, :cond_1

    move v2, v1

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt v2, v3, :cond_2

    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v3, v1

    aget-object v2, v2, v3

    iget-object v2, v2, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v2, v2, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object v0, v2

    goto :goto_0
.end method

.method public getName(I)Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move v1, p1

    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v3, v1

    aget-object v2, v2, v3

    iget-object v2, v2, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v2, v2, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v0, v2

    goto :goto_0
.end method

.method public getName(ILorg/apache/xerces/xni/QName;)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v5, v1

    aget-object v4, v4, v5

    iget-object v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v3, v4}, Lorg/apache/xerces/xni/QName;->setValues(Lorg/apache/xerces/xni/QName;)V

    return-void
.end method

.method public getNonNormalizedValue(I)Ljava/lang/String;
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v4, v1

    aget-object v3, v3, v4

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->nonNormalizedValue:Ljava/lang/String;

    move-object v2, v3

    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public getPrefix(I)Ljava/lang/String;
    .locals 5

    move-object v0, p0

    move v1, p1

    move v3, v1

    if-ltz v3, :cond_0

    move v3, v1

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt v3, v4, :cond_1

    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v4, v1

    aget-object v3, v3, v4

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v3, v3, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    move-object v2, v3

    move-object v3, v2

    if-eqz v3, :cond_2

    move-object v3, v2

    :goto_1
    move-object v0, v3

    goto :goto_0

    :cond_2
    const-string/jumbo v3, ""

    goto :goto_1
.end method

.method public getQName(I)Ljava/lang/String;
    .locals 5

    move-object v0, p0

    move v1, p1

    move v3, v1

    if-ltz v3, :cond_0

    move v3, v1

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt v3, v4, :cond_1

    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v4, v1

    aget-object v3, v3, v4

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v3, v3, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v2, v3

    move-object v3, v2

    if-eqz v3, :cond_2

    move-object v3, v2

    :goto_1
    move-object v0, v3

    goto :goto_0

    :cond_2
    const-string/jumbo v3, ""

    goto :goto_1
.end method

.method protected getTableViewBucket(Ljava/lang/String;)I
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lorg/apache/xerces/util/XMLAttributesImpl;->hash(Ljava/lang/String;)I

    move-result v2

    const v3, 0x7fffffff

    and-int/2addr v2, v3

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    rem-int/2addr v2, v3

    move v0, v2

    return v0
.end method

.method protected getTableViewBucket(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    if-nez v3, :cond_0

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lorg/apache/xerces/util/XMLAttributesImpl;->hash(Ljava/lang/String;)I

    move-result v3

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    rem-int/2addr v3, v4

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Lorg/apache/xerces/util/XMLAttributesImpl;->hash(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    rem-int/2addr v3, v4

    move v0, v3

    goto :goto_0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 5

    move-object v0, p0

    move v1, p1

    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v4, v1

    aget-object v3, v3, v4

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->type:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/apache/xerces/util/XMLAttributesImpl;->getReportableType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;)I

    move-result v3

    move v2, v3

    move v3, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v5, v2

    aget-object v4, v4, v5

    iget-object v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->type:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/apache/xerces/util/XMLAttributesImpl;->getReportableType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-object v0, v3

    return-object v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl;->fNamespaces:Z

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v3, v4

    move v4, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v6, v3

    aget-object v5, v5, v6

    iget-object v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->type:Ljava/lang/String;

    invoke-direct {v4, v5}, Lorg/apache/xerces/util/XMLAttributesImpl;->getReportableType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    move-object v0, v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getURI(I)Ljava/lang/String;
    .locals 5

    move-object v0, p0

    move v1, p1

    move v3, v1

    if-ltz v3, :cond_0

    move v3, v1

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt v3, v4, :cond_1

    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v4, v1

    aget-object v3, v3, v4

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    iget-object v3, v3, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object v2, v3

    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move v1, p1

    move v2, v1

    if-ltz v2, :cond_0

    move v2, v1

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v3, v1

    aget-object v2, v2, v3

    iget-object v2, v2, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    move-object v0, v2

    goto :goto_0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;)I

    move-result v3

    move v2, v3

    move v3, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v4, v2

    aget-object v3, v3, v4

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    :goto_0
    move-object v0, v3

    return-object v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v3, v4

    move v4, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    move-object v4, v0

    move v5, v3

    invoke-virtual {v4, v5}, Lorg/apache/xerces/util/XMLAttributesImpl;->getValue(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    move-object v0, v4

    return-object v0

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isSpecified(I)Z
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v3, v1

    aget-object v2, v2, v3

    iget-boolean v2, v2, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->specified:Z

    move v0, v2

    return v0
.end method

.method protected prepareAndPopulateTableView()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    invoke-direct {v1, v2}, Lorg/apache/xerces/util/XMLAttributesImpl;->prepareAndPopulateTableView(I)V

    return-void
.end method

.method protected prepareTableView()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    if-le v1, v2, :cond_0

    move-object v1, v0

    invoke-direct {v1}, Lorg/apache/xerces/util/XMLAttributesImpl;->growTableView()V

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    if-nez v1, :cond_1

    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    new-array v2, v2, [Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    iput-object v2, v1, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    new-array v2, v2, [I

    iput-object v2, v1, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    :goto_0
    return-void

    :cond_1
    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/util/XMLAttributesImpl;->cleanTableView()V

    goto :goto_0
.end method

.method public removeAllAttributes()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    return-void
.end method

.method public removeAttributeAt(I)V
    .locals 10

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fIsTableViewConsistent:Z

    move v3, v1

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v4, v1

    aget-object v3, v3, v4

    move-object v2, v3

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v4, v1

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v6, v1

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    move v8, v1

    sub-int/2addr v7, v8

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    move-object v5, v2

    aput-object v5, v3, v4

    :cond_0
    move-object v3, v0

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iget v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fLength:I

    return-void
.end method

.method public setAugmentations(ILorg/apache/xerces/xni/Augmentations;)V
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v4, v1

    aget-object v3, v3, v4

    move-object v4, v2

    iput-object v4, v3, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->augs:Lorg/apache/xerces/xni/Augmentations;

    return-void
.end method

.method public setName(ILorg/apache/xerces/xni/QName;)V
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v4, v1

    aget-object v3, v3, v4

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/apache/xerces/xni/QName;->setValues(Lorg/apache/xerces/xni/QName;)V

    return-void
.end method

.method public setNamespaces(Z)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lorg/apache/xerces/util/XMLAttributesImpl;->fNamespaces:Z

    return-void
.end method

.method public setNonNormalizedValue(ILjava/lang/String;)V
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v2

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v4, v1

    aget-object v3, v3, v4

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    move-object v2, v3

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v4, v1

    aget-object v3, v3, v4

    move-object v4, v2

    iput-object v4, v3, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->nonNormalizedValue:Ljava/lang/String;

    return-void
.end method

.method public setSpecified(IZ)V
    .locals 5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v4, v1

    aget-object v3, v3, v4

    move v4, v2

    iput-boolean v4, v3, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->specified:Z

    return-void
.end method

.method public setType(ILjava/lang/String;)V
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v4, v1

    aget-object v3, v3, v4

    move-object v4, v2

    iput-object v4, v3, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->type:Ljava/lang/String;

    return-void
.end method

.method public setURI(ILjava/lang/String;)V
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v4, v1

    aget-object v3, v3, v4

    iget-object v3, v3, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lorg/apache/xerces/xni/QName;

    move-object v4, v2

    iput-object v4, v3, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    return-void
.end method

.method public setValue(ILjava/lang/String;)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;

    move v5, v1

    aget-object v4, v4, v5

    move-object v3, v4

    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    move-object v4, v3

    move-object v5, v2

    iput-object v5, v4, Lorg/apache/xerces/util/XMLAttributesImpl$Attribute;->nonNormalizedValue:Ljava/lang/String;

    return-void
.end method
