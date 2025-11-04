.class public final Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xerces/xni/NamespaceContext;


# instance fields
.field private final fAllPrefixes:Ljava/util/Vector;

.field private fContext:[I

.field private fCurrentContext:I

.field private fNamespaceContext:Ljavax/xml/namespace/NamespaceContext;

.field private fPrefixes:Ljava/util/List;

.field private fSymbolTable:Lorg/apache/xerces/util/SymbolTable;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    new-instance v3, Ljava/util/Vector;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->fAllPrefixes:Ljava/util/Vector;

    move-object v2, v0

    const/16 v3, 0x8

    new-array v3, v3, [I

    iput-object v3, v2, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->fContext:[I

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->setSymbolTable(Lorg/apache/xerces/util/SymbolTable;)V

    return-void
.end method


# virtual methods
.method public declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v3, 0x1

    move v0, v3

    return v0
.end method

.method public getAllPrefixes()Ljava/util/Enumeration;
    .locals 5

    move-object v0, p0

    new-instance v1, Ljava/util/TreeSet;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->fAllPrefixes:Ljava/util/Vector;

    invoke-direct {v2, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getDeclaredPrefixAt(I)Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->fPrefixes:Ljava/util/List;

    move v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    return-object v0
.end method

.method public getDeclaredPrefixCount()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->fPrefixes:Ljava/util/List;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->fPrefixes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDeclaredPrefixes()Ljava/util/List;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->fPrefixes:Ljava/util/List;

    move-object v0, v1

    return-object v0
.end method

.method public getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->fNamespaceContext:Ljavax/xml/namespace/NamespaceContext;

    move-object v0, v1

    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->fNamespaceContext:Ljavax/xml/namespace/NamespaceContext;

    if-eqz v3, :cond_3

    move-object v3, v1

    if-nez v3, :cond_0

    const-string/jumbo v3, ""

    move-object v1, v3

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->fNamespaceContext:Ljavax/xml/namespace/NamespaceContext;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavax/xml/namespace/NamespaceContext;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    if-nez v3, :cond_1

    const-string/jumbo v3, ""

    move-object v2, v3

    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-object v0, v3

    :goto_1
    return-object v0

    :cond_2
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method

.method public getSymbolTable()Lorg/apache/xerces/util/SymbolTable;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v0, v1

    return-object v0
.end method

.method public getURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->fNamespaceContext:Ljavax/xml/namespace/NamespaceContext;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->fNamespaceContext:Ljavax/xml/namespace/NamespaceContext;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavax/xml/namespace/NamespaceContext;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    if-eqz v3, :cond_1

    const-string/jumbo v3, ""

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-object v0, v3

    :goto_1
    return-object v0

    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method

.method public popContext()V
    .locals 9

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->fAllPrefixes:Ljava/util/Vector;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->fContext:[I

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->fCurrentContext:I

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->fCurrentContext:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/util/Vector;->setSize(I)V

    return-void
.end method

.method public pushContext()V
    .locals 9

    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->fCurrentContext:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->fContext:[I

    array-length v3, v3

    if-ne v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->fContext:[I

    array-length v2, v2

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [I

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->fContext:[I

    const/4 v3, 0x0

    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->fContext:[I

    array-length v6, v6

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->fContext:[I

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->fContext:[I

    move-object v3, v0

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    iget v4, v4, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->fCurrentContext:I

    const/4 v5, 0x1

    add-int/lit8 v4, v4, 0x1

    move-object v7, v3

    move v8, v4

    move v3, v8

    move-object v4, v7

    move v5, v8

    iput v5, v4, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->fCurrentContext:I

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->fAllPrefixes:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    aput v4, v2, v3

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->fPrefixes:Ljava/util/List;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->fAllPrefixes:Ljava/util/Vector;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->fPrefixes:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    move-result v2

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 4

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->fCurrentContext:I

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->fContext:[I

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->fCurrentContext:I

    const/4 v3, 0x0

    aput v3, v1, v2

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->fAllPrefixes:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    return-void
.end method

.method public setDeclaredPrefixes(Ljava/util/List;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->fPrefixes:Ljava/util/List;

    return-void
.end method

.method public setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->fNamespaceContext:Ljavax/xml/namespace/NamespaceContext;

    return-void
.end method

.method public setSymbolTable(Lorg/apache/xerces/util/SymbolTable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/util/JAXPNamespaceContextWrapper;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    return-void
.end method
