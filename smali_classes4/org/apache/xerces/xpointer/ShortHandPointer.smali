.class final Lorg/apache/xerces/xpointer/ShortHandPointer;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xerces/xpointer/XPointerPart;


# instance fields
.field private fIsFragmentResolved:Z

.field fMatchingChildCount:I

.field private fShortHandPointer:Ljava/lang/String;

.field private fSymbolTable:Lorg/apache/xerces/util/SymbolTable;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xerces/xpointer/ShortHandPointer;->fIsFragmentResolved:Z

    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Lorg/apache/xerces/xpointer/ShortHandPointer;->fMatchingChildCount:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/xerces/util/SymbolTable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xerces/xpointer/ShortHandPointer;->fIsFragmentResolved:Z

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lorg/apache/xerces/xpointer/ShortHandPointer;->fMatchingChildCount:I

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/xpointer/ShortHandPointer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    return-void
.end method

.method private hasMatchingIdentifier(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    const/4 v7, 0x0

    move-object v5, v7

    move-object v7, v2

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    move v6, v7

    :goto_0
    move v7, v6

    move-object v8, v2

    invoke-interface {v8}, Lorg/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v8

    if-lt v7, v8, :cond_1

    :cond_0
    :goto_1
    move-object v7, v5

    if-eqz v7, :cond_5

    move-object v7, v5

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/xpointer/ShortHandPointer;->fShortHandPointer:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    move v0, v7

    :goto_2
    return v0

    :cond_1
    move-object v7, v0

    move-object v8, v2

    move v9, v6

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/xpointer/ShortHandPointer;->getSchemaDeterminedID(Lorg/apache/xerces/xni/XMLAttributes;I)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    move-object v7, v5

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    move-object v7, v0

    move-object v8, v2

    move v9, v6

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/xpointer/ShortHandPointer;->getChildrenSchemaDeterminedID(Lorg/apache/xerces/xni/XMLAttributes;I)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    move-object v7, v5

    if-eqz v7, :cond_3

    goto :goto_1

    :cond_3
    move-object v7, v0

    move-object v8, v2

    move v9, v6

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/xpointer/ShortHandPointer;->getDTDDeterminedID(Lorg/apache/xerces/xni/XMLAttributes;I)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    move-object v7, v5

    if-eqz v7, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    const/4 v7, 0x0

    move v0, v7

    goto :goto_2
.end method


# virtual methods
.method public getChildrenSchemaDeterminedID(Lorg/apache/xerces/xni/XMLAttributes;I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const/4 v3, 0x0

    move-object v0, v3

    return-object v0
.end method

.method public getDTDDeterminedID(Lorg/apache/xerces/xni/XMLAttributes;I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-interface {v3, v4}, Lorg/apache/xerces/xni/XMLAttributes;->getType(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "ID"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    move v4, v2

    invoke-interface {v3, v4}, Lorg/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method public getSchemaDeterminedID(Lorg/apache/xerces/xni/XMLAttributes;I)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v6, v1

    move v7, v2

    invoke-interface {v6, v7}, Lorg/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lorg/apache/xerces/xni/Augmentations;

    move-result-object v6

    move-object v3, v6

    move-object v6, v3

    const-string/jumbo v7, "ATTRIBUTE_PSVI"

    invoke-interface {v6, v7}, Lorg/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/xerces/xs/AttributePSVI;

    move-object v4, v6

    move-object v6, v4

    if-eqz v6, :cond_1

    move-object v6, v4

    invoke-interface {v6}, Lorg/apache/xerces/xs/AttributePSVI;->getMemberTypeDefinition()Lorg/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v6

    move-object v5, v6

    move-object v6, v5

    if-eqz v6, :cond_0

    move-object v6, v4

    invoke-interface {v6}, Lorg/apache/xerces/xs/AttributePSVI;->getTypeDefinition()Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object v6

    move-object v5, v6

    :cond_0
    move-object v6, v5

    if-eqz v6, :cond_1

    move-object v6, v5

    check-cast v6, Lorg/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v6}, Lorg/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v4

    invoke-interface {v6}, Lorg/apache/xerces/xs/AttributePSVI;->getSchemaNormalizedValue()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_1
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0
.end method

.method public getSchemeData()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public getSchemeName()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/xpointer/ShortHandPointer;->fShortHandPointer:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public isChildFragmentResolved()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/xpointer/ShortHandPointer;->fIsFragmentResolved:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/xpointer/ShortHandPointer;->fMatchingChildCount:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFragmentResolved()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/xpointer/ShortHandPointer;->fIsFragmentResolved:Z

    move v0, v1

    return v0
.end method

.method public parseXPointer(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/xpointer/ShortHandPointer;->fShortHandPointer:Ljava/lang/String;

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xerces/xpointer/ShortHandPointer;->fIsFragmentResolved:Z

    return-void
.end method

.method public resolveXPointer(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;I)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/xpointer/ShortHandPointer;->fMatchingChildCount:I

    if-nez v5, :cond_0

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lorg/apache/xerces/xpointer/ShortHandPointer;->fIsFragmentResolved:Z

    :cond_0
    move v5, v4

    if-nez v5, :cond_3

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/xpointer/ShortHandPointer;->fMatchingChildCount:I

    if-nez v5, :cond_1

    move-object v5, v0

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/xerces/xpointer/ShortHandPointer;->hasMatchingIdentifier(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;I)Z

    move-result v6

    iput-boolean v6, v5, Lorg/apache/xerces/xpointer/ShortHandPointer;->fIsFragmentResolved:Z

    :cond_1
    move-object v5, v0

    iget-boolean v5, v5, Lorg/apache/xerces/xpointer/ShortHandPointer;->fIsFragmentResolved:Z

    if-eqz v5, :cond_2

    move-object v5, v0

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    iget v6, v6, Lorg/apache/xerces/xpointer/ShortHandPointer;->fMatchingChildCount:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lorg/apache/xerces/xpointer/ShortHandPointer;->fMatchingChildCount:I

    :cond_2
    :goto_0
    move-object v5, v0

    iget-boolean v5, v5, Lorg/apache/xerces/xpointer/ShortHandPointer;->fIsFragmentResolved:Z

    move v0, v5

    return v0

    :cond_3
    move v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/xpointer/ShortHandPointer;->fMatchingChildCount:I

    if-nez v5, :cond_2

    move-object v5, v0

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move v10, v4

    invoke-direct {v6, v7, v8, v9, v10}, Lorg/apache/xerces/xpointer/ShortHandPointer;->hasMatchingIdentifier(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;I)Z

    move-result v6

    iput-boolean v6, v5, Lorg/apache/xerces/xpointer/ShortHandPointer;->fIsFragmentResolved:Z

    goto :goto_0

    :cond_4
    move-object v5, v0

    iget-boolean v5, v5, Lorg/apache/xerces/xpointer/ShortHandPointer;->fIsFragmentResolved:Z

    if-eqz v5, :cond_2

    move-object v5, v0

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    iget v6, v6, Lorg/apache/xerces/xpointer/ShortHandPointer;->fMatchingChildCount:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lorg/apache/xerces/xpointer/ShortHandPointer;->fMatchingChildCount:I

    goto :goto_0
.end method

.method public setSchemeData(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setSchemeName(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/xpointer/ShortHandPointer;->fShortHandPointer:Ljava/lang/String;

    return-void
.end method
