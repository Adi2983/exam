.class public Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;
.super Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;


# instance fields
.field private fValidContext:[Z


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;-><init>()V

    move-object v1, v0

    const/16 v2, 0x8

    new-array v2, v2, [Z

    iput-object v2, v1, Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;->fValidContext:[Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/xni/NamespaceContext;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;-><init>(Lorg/apache/xerces/xni/NamespaceContext;)V

    move-object v2, v0

    const/16 v3, 0x8

    new-array v3, v3, [Z

    iput-object v3, v2, Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;->fValidContext:[Z

    return-void
.end method


# virtual methods
.method public getURIFromIncludeParent(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;->fCurrentContext:I

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    :goto_0
    move v3, v2

    if-lez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;->fValidContext:[Z

    move v4, v2

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_1

    :cond_0
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;->getURI(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method public pushContext()V
    .locals 7

    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Lorg/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->pushContext()V

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;->fCurrentContext:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;->fValidContext:[Z

    array-length v3, v3

    if-ne v2, v3, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;->fValidContext:[Z

    array-length v2, v2

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [Z

    move-object v1, v2

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;->fValidContext:[Z

    const/4 v3, 0x0

    move-object v4, v1

    const/4 v5, 0x0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;->fValidContext:[Z

    array-length v6, v6

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;->fValidContext:[Z

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;->fValidContext:[Z

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;->fCurrentContext:I

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    return-void
.end method

.method public setContextInvalid()V
    .locals 4

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;->fValidContext:[Z

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/xinclude/XIncludeNamespaceSupport;->fCurrentContext:I

    const/4 v3, 0x0

    aput-boolean v3, v1, v2

    return-void
.end method
