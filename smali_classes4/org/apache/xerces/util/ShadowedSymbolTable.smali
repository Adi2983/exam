.class public final Lorg/apache/xerces/util/ShadowedSymbolTable;
.super Lorg/apache/xerces/util/SymbolTable;


# instance fields
.field protected fSymbolTable:Lorg/apache/xerces/util/SymbolTable;


# direct methods
.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lorg/apache/xerces/util/SymbolTable;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/util/ShadowedSymbolTable;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    return-void
.end method


# virtual methods
.method public addSymbol(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/ShadowedSymbolTable;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/SymbolTable;->containsSymbol(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/ShadowedSymbolTable;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method

.method public addSymbol([CII)Ljava/lang/String;
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/ShadowedSymbolTable;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lorg/apache/xerces/util/SymbolTable;->containsSymbol([CII)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/ShadowedSymbolTable;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lorg/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_0
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-super {v4, v5, v6, v7}, Lorg/apache/xerces/util/SymbolTable;->addSymbol([CII)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method

.method public hash(Ljava/lang/String;)I
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/util/ShadowedSymbolTable;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/util/SymbolTable;->hash(Ljava/lang/String;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public hash([CII)I
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/util/ShadowedSymbolTable;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lorg/apache/xerces/util/SymbolTable;->hash([CII)I

    move-result v4

    move v0, v4

    return v0
.end method
