.class public Lorg/apache/xerces/util/NamespaceSupport;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xerces/xni/NamespaceContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/util/NamespaceSupport$Prefixes;
    }
.end annotation


# instance fields
.field protected fContext:[I

.field protected fCurrentContext:I

.field protected fNamespace:[Ljava/lang/String;

.field protected fNamespaceSize:I

.field protected fPrefixes:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v1, v0

    const/16 v2, 0x20

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v1, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    move-object v1, v0

    const/16 v2, 0x8

    new-array v2, v2, [I

    iput-object v2, v1, Lorg/apache/xerces/util/NamespaceSupport;->fContext:[I

    move-object v1, v0

    const/16 v2, 0x10

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v1, Lorg/apache/xerces/util/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/xni/NamespaceContext;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object v5, v0

    const/16 v6, 0x20

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, v5, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    move-object v5, v0

    const/16 v6, 0x8

    new-array v6, v6, [I

    iput-object v6, v5, Lorg/apache/xerces/util/NamespaceSupport;->fContext:[I

    move-object v5, v0

    const/16 v6, 0x10

    new-array v6, v6, [Ljava/lang/String;

    iput-object v6, v5, Lorg/apache/xerces/util/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xerces/util/NamespaceSupport;->pushContext()V

    move-object v5, v1

    invoke-interface {v5}, Lorg/apache/xerces/xni/NamespaceContext;->getAllPrefixes()Ljava/util/Enumeration;

    move-result-object v5

    move-object v2, v5

    :goto_0
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v3, v5

    move-object v5, v1

    move-object v6, v3

    invoke-interface {v5, v6}, Lorg/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    move-object v5, v0

    move-object v6, v3

    move-object v7, v4

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    goto :goto_0
.end method


# virtual methods
.method public containsPrefix(Ljava/lang/String;)Z
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    move v2, v3

    :goto_0
    move v3, v2

    if-gtz v3, :cond_0

    const/4 v3, 0x0

    move v0, v3

    :goto_1
    return v0

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    move v4, v2

    const/4 v5, 0x2

    add-int/lit8 v4, v4, -0x2

    aget-object v3, v3, v4

    move-object v4, v1

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    move v0, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x2

    goto :goto_0
.end method

.method public declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v1

    sget-object v6, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    if-eq v5, v6, :cond_0

    move-object v5, v1

    sget-object v6, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v5, v6, :cond_1

    :cond_0
    const/4 v5, 0x0

    move v0, v5

    :goto_0
    return v0

    :cond_1
    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    move v3, v5

    :goto_1
    move v5, v3

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/NamespaceSupport;->fContext:[I

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/util/NamespaceSupport;->fCurrentContext:I

    aget v6, v6, v7

    if-gt v5, v6, :cond_3

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    array-length v6, v6

    if-ne v5, v6, :cond_2

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    const/4 v6, 0x2

    mul-int/lit8 v5, v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    move-object v4, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object v7, v4

    const/4 v8, 0x0

    move-object v9, v0

    iget v9, v9, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    invoke-static {v5, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v0

    move-object v6, v4

    iput-object v6, v5, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget v7, v7, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    move-object v10, v6

    move v11, v7

    move v6, v11

    move-object v7, v10

    move v8, v11

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    move-object v7, v1

    aput-object v7, v5, v6

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    move-object v6, v0

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    iget v7, v7, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    move-object v10, v6

    move v11, v7

    move v6, v11

    move-object v7, v10

    move v8, v11

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    move-object v7, v2

    aput-object v7, v5, v6

    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    :cond_3
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    move v6, v3

    const/4 v7, 0x2

    add-int/lit8 v6, v6, -0x2

    aget-object v5, v5, v6

    move-object v6, v1

    if-ne v5, v6, :cond_4

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move-object v7, v2

    aput-object v7, v5, v6

    const/4 v5, 0x1

    move v0, v5

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v3, -0x2

    goto :goto_1
.end method

.method public getAllPrefixes()Ljava/util/Enumeration;
    .locals 12

    move-object v0, p0

    const/4 v6, 0x0

    move v1, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    array-length v6, v6

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    array-length v7, v7

    const/4 v8, 0x2

    div-int/lit8 v7, v7, 0x2

    if-ge v6, v7, :cond_0

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    new-array v6, v6, [Ljava/lang/String;

    move-object v2, v6

    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lorg/apache/xerces/util/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    :cond_0
    const/4 v6, 0x0

    move-object v2, v6

    const/4 v6, 0x1

    move v3, v6

    const/4 v6, 0x2

    move v4, v6

    :goto_0
    move v6, v4

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    const/4 v8, 0x2

    add-int/lit8 v7, v7, -0x2

    if-lt v6, v7, :cond_1

    new-instance v6, Lorg/apache/xerces/util/NamespaceSupport$Prefixes;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/util/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    move v10, v1

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/xerces/util/NamespaceSupport$Prefixes;-><init>(Lorg/apache/xerces/util/NamespaceSupport;[Ljava/lang/String;I)V

    move-object v0, v6

    return-object v0

    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    move v7, v4

    const/4 v8, 0x2

    add-int/lit8 v7, v7, 0x2

    aget-object v6, v6, v7

    move-object v2, v6

    const/4 v6, 0x0

    move v5, v6

    :goto_1
    move v6, v5

    move v7, v1

    if-lt v6, v7, :cond_3

    :goto_2
    move v6, v3

    if-eqz v6, :cond_2

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    move v7, v1

    add-int/lit8 v1, v1, 0x1

    move-object v8, v2

    aput-object v8, v6, v7

    :cond_2
    const/4 v6, 0x1

    move v3, v6

    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    :cond_3
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    move v7, v5

    aget-object v6, v6, v7

    move-object v7, v2

    if-ne v6, v7, :cond_4

    const/4 v6, 0x0

    move v3, v6

    goto :goto_2

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method public getDeclaredPrefixAt(I)Ljava/lang/String;
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/NamespaceSupport;->fContext:[I

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/util/NamespaceSupport;->fCurrentContext:I

    aget v3, v3, v4

    move v4, v1

    const/4 v5, 0x2

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    aget-object v2, v2, v3

    move-object v0, v2

    return-object v0
.end method

.method public getDeclaredPrefixCount()I
    .locals 4

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/NamespaceSupport;->fContext:[I

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/util/NamespaceSupport;->fCurrentContext:I

    aget v2, v2, v3

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    div-int/lit8 v1, v1, 0x2

    move v0, v1

    return v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    move v2, v3

    :goto_0
    move v3, v2

    if-gtz v3, :cond_0

    const/4 v3, 0x0

    move-object v0, v3

    :goto_1
    return-object v0

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    move-object v4, v1

    if-ne v3, v4, :cond_1

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    move v5, v2

    const/4 v6, 0x2

    add-int/lit8 v5, v5, -0x2

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    if-ne v3, v4, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    move v4, v2

    const/4 v5, 0x2

    add-int/lit8 v4, v4, -0x2

    aget-object v3, v3, v4

    move-object v0, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x2

    goto :goto_0
.end method

.method public getURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    move v2, v3

    :goto_0
    move v3, v2

    if-gtz v3, :cond_0

    const/4 v3, 0x0

    move-object v0, v3

    :goto_1
    return-object v0

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    move v4, v2

    const/4 v5, 0x2

    add-int/lit8 v4, v4, -0x2

    aget-object v3, v3, v4

    move-object v4, v1

    if-ne v3, v4, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    move v4, v2

    const/4 v5, 0x1

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    move-object v0, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x2

    goto :goto_0
.end method

.method public popContext()V
    .locals 9

    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/NamespaceSupport;->fContext:[I

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lorg/apache/xerces/util/NamespaceSupport;->fCurrentContext:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lorg/apache/xerces/util/NamespaceSupport;->fCurrentContext:I

    aget v2, v2, v3

    iput v2, v1, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    return-void
.end method

.method public pushContext()V
    .locals 9

    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/util/NamespaceSupport;->fCurrentContext:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/NamespaceSupport;->fContext:[I

    array-length v3, v3

    if-ne v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/NamespaceSupport;->fContext:[I

    array-length v2, v2

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [I

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/NamespaceSupport;->fContext:[I

    const/4 v3, 0x0

    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/NamespaceSupport;->fContext:[I

    array-length v6, v6

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/util/NamespaceSupport;->fContext:[I

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/NamespaceSupport;->fContext:[I

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lorg/apache/xerces/util/NamespaceSupport;->fCurrentContext:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    iput v5, v4, Lorg/apache/xerces/util/NamespaceSupport;->fCurrentContext:I

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    aput v4, v2, v3

    return-void
.end method

.method public reset()V
    .locals 8

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lorg/apache/xerces/util/NamespaceSupport;->fCurrentContext:I

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/NamespaceSupport;->fContext:[I

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/util/NamespaceSupport;->fCurrentContext:I

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    aput v3, v1, v2

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    move-object v6, v2

    move v7, v3

    move v2, v7

    move-object v3, v6

    move v4, v7

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    sget-object v3, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    aput-object v3, v1, v2

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    move-object v6, v2

    move v7, v3

    move v2, v7

    move-object v3, v6

    move v4, v7

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    sget-object v3, Lorg/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    aput-object v3, v1, v2

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    move-object v6, v2

    move v7, v3

    move v2, v7

    move-object v3, v6

    move v4, v7

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    sget-object v3, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    aput-object v3, v1, v2

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    move-object v2, v0

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    iget v3, v3, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    move-object v6, v2

    move v7, v3

    move v2, v7

    move-object v3, v6

    move v4, v7

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lorg/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    sget-object v3, Lorg/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    aput-object v3, v1, v2

    move-object v1, v0

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    iget v2, v2, Lorg/apache/xerces/util/NamespaceSupport;->fCurrentContext:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lorg/apache/xerces/util/NamespaceSupport;->fCurrentContext:I

    return-void
.end method
