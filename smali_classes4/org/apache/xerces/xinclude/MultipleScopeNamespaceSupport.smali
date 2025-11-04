.class public Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;
.super Lorg/apache/xerces/util/NamespaceSupport;


# instance fields
.field protected fCurrentScope:I

.field protected fScope:[I


# direct methods
.method public constructor <init>()V
    .locals 4

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lorg/apache/xerces/util/NamespaceSupport;-><init>()V

    move-object v1, v0

    const/16 v2, 0x8

    new-array v2, v2, [I

    iput-object v2, v1, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/xni/NamespaceContext;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lorg/apache/xerces/util/NamespaceSupport;-><init>(Lorg/apache/xerces/xni/NamespaceContext;)V

    move-object v2, v0

    const/16 v3, 0x8

    new-array v3, v3, [I

    iput-object v3, v2, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    return-void
.end method


# virtual methods
.method public getAllPrefixes()Ljava/util/Enumeration;
    .locals 12

    move-object v0, p0

    const/4 v6, 0x0

    move v1, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fPrefixes:[Ljava/lang/String;

    array-length v6, v6

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespace:[Ljava/lang/String;

    array-length v7, v7

    const/4 v8, 0x2

    div-int/lit8 v7, v7, 0x2

    if-ge v6, v7, :cond_0

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespaceSize:I

    new-array v6, v6, [Ljava/lang/String;

    move-object v2, v6

    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fPrefixes:[Ljava/lang/String;

    :cond_0
    const/4 v6, 0x0

    move-object v2, v6

    const/4 v6, 0x1

    move v3, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fContext:[I

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    move-object v8, v0

    iget v8, v8, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    aget v7, v7, v8

    aget v6, v6, v7

    move v4, v6

    :goto_0
    move v6, v4

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespaceSize:I

    const/4 v8, 0x2

    add-int/lit8 v7, v7, -0x2

    if-le v6, v7, :cond_1

    new-instance v6, Lorg/apache/xerces/util/NamespaceSupport$Prefixes;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fPrefixes:[Ljava/lang/String;

    move v10, v1

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/xerces/util/NamespaceSupport$Prefixes;-><init>(Lorg/apache/xerces/util/NamespaceSupport;[Ljava/lang/String;I)V

    move-object v0, v6

    return-object v0

    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespace:[Ljava/lang/String;

    move v7, v4

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

    iget-object v6, v6, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fPrefixes:[Ljava/lang/String;

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

    iget-object v6, v6, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fPrefixes:[Ljava/lang/String;

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

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespaceSize:I

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fContext:[I

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    aget v6, v6, v7

    aget v5, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->getPrefix(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;I)Ljava/lang/String;
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fContext:[I

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fContext:[I

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    move-object v8, v0

    move v9, v2

    invoke-virtual {v8, v9}, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->getScopeForContext(I)I

    move-result v8

    aget v7, v7, v8

    aget v6, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->getPrefix(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;II)Ljava/lang/String;
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v1

    sget-object v6, Lorg/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    if-ne v5, v6, :cond_0

    sget-object v5, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    move-object v0, v5

    :goto_0
    return-object v0

    :cond_0
    move-object v5, v1

    sget-object v6, Lorg/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-ne v5, v6, :cond_1

    sget-object v5, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object v0, v5

    goto :goto_0

    :cond_1
    move v5, v2

    move v4, v5

    :goto_1
    move v5, v4

    move v6, v3

    if-gt v5, v6, :cond_2

    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespace:[Ljava/lang/String;

    move v6, v4

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    move-object v6, v1

    if-ne v5, v6, :cond_3

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespace:[Ljava/lang/String;

    move v7, v4

    const/4 v8, 0x2

    add-int/lit8 v7, v7, -0x2

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    if-ne v5, v6, :cond_3

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespace:[Ljava/lang/String;

    move v6, v4

    const/4 v7, 0x2

    add-int/lit8 v6, v6, -0x2

    aget-object v5, v5, v6

    move-object v0, v5

    goto :goto_0

    :cond_3
    add-int/lit8 v4, v4, -0x2

    goto :goto_1
.end method

.method public getScopeForContext(I)I
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    move v2, v3

    :goto_0
    move v3, v1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    move v5, v2

    aget v4, v4, v5

    if-lt v3, v4, :cond_0

    move v3, v2

    move v0, v3

    return v0

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method public getURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespaceSize:I

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fContext:[I

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    aget v6, v6, v7

    aget v5, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->getURI(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getURI(Ljava/lang/String;I)Ljava/lang/String;
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fContext:[I

    move v6, v2

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    aget v5, v5, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fContext:[I

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    move-object v8, v0

    move v9, v2

    invoke-virtual {v8, v9}, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->getScopeForContext(I)I

    move-result v8

    aget v7, v7, v8

    aget v6, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->getURI(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public getURI(Ljava/lang/String;II)Ljava/lang/String;
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v1

    sget-object v6, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    if-ne v5, v6, :cond_0

    sget-object v5, Lorg/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    move-object v0, v5

    :goto_0
    return-object v0

    :cond_0
    move-object v5, v1

    sget-object v6, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v5, v6, :cond_1

    sget-object v5, Lorg/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    move-object v0, v5

    goto :goto_0

    :cond_1
    move v5, v2

    move v4, v5

    :goto_1
    move v5, v4

    move v6, v3

    if-gt v5, v6, :cond_2

    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespace:[Ljava/lang/String;

    move v6, v4

    const/4 v7, 0x2

    add-int/lit8 v6, v6, -0x2

    aget-object v5, v5, v6

    move-object v6, v1

    if-ne v5, v6, :cond_3

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespace:[Ljava/lang/String;

    move v6, v4

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    move-object v0, v5

    goto :goto_0

    :cond_3
    add-int/lit8 v4, v4, -0x2

    goto :goto_1
.end method

.method public popScope()V
    .locals 9

    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    aget v2, v2, v3

    iput v2, v1, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentContext:I

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->popContext()V

    return-void
.end method

.method public pushScope()V
    .locals 9

    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    array-length v3, v3

    if-ne v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    array-length v2, v2

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [I

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    const/4 v3, 0x0

    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    array-length v6, v6

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->pushContext()V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    iput v5, v4, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentContext:I

    aput v4, v2, v3

    return-void
.end method

.method public reset()V
    .locals 4

    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    aget v2, v2, v3

    iput v2, v1, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentContext:I

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fContext:[I

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentContext:I

    aget v2, v2, v3

    iput v2, v1, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespaceSize:I

    return-void
.end method
