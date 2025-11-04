.class public Lorg/apache/xerces/dom/RangeImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/w3c/dom/ranges/Range;


# static fields
.field static final CLONE_CONTENTS:I = 0x2

.field static final DELETE_CONTENTS:I = 0x3

.field static final EXTRACT_CONTENTS:I = 0x1


# instance fields
.field private fDeleteNode:Lorg/w3c/dom/Node;

.field private fDetach:Z

.field private fDocument:Lorg/apache/xerces/dom/DocumentImpl;

.field private fEndContainer:Lorg/w3c/dom/Node;

.field private fEndOffset:I

.field private fInsertNode:Lorg/w3c/dom/Node;

.field private fInsertedFromRange:Z

.field private fRemoveChild:Lorg/w3c/dom/Node;

.field private fSplitNode:Lorg/w3c/dom/Node;

.field private fStartContainer:Lorg/w3c/dom/Node;

.field private fStartOffset:I


# direct methods
.method public constructor <init>(Lorg/apache/xerces/dom/DocumentImpl;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xerces/dom/RangeImpl;->fDetach:Z

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/dom/RangeImpl;->fInsertNode:Lorg/w3c/dom/Node;

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/dom/RangeImpl;->fDeleteNode:Lorg/w3c/dom/Node;

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/dom/RangeImpl;->fSplitNode:Lorg/w3c/dom/Node;

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xerces/dom/RangeImpl;->fInsertedFromRange:Z

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/dom/RangeImpl;->fRemoveChild:Lorg/w3c/dom/Node;

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/dom/RangeImpl;->fDocument:Lorg/apache/xerces/dom/DocumentImpl;

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lorg/apache/xerces/dom/RangeImpl;->fStartOffset:I

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lorg/apache/xerces/dom/RangeImpl;->fEndOffset:I

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xerces/dom/RangeImpl;->fDetach:Z

    return-void
.end method

.method private getRootContainer(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 3

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_1

    const/4 v2, 0x0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    move-object v2, v1

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v1, v2

    :cond_1
    move-object v2, v1

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v2, v1

    move-object v0, v2

    goto :goto_0
.end method

.method private getSelectedNode(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    move-object v4, v1

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_0
    move v4, v2

    if-gez v4, :cond_1

    move-object v4, v1

    move-object v0, v4

    goto :goto_0

    :cond_1
    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v3, v4

    :goto_1
    move-object v4, v3

    if-eqz v4, :cond_2

    move v4, v2

    if-gtz v4, :cond_3

    :cond_2
    move-object v4, v3

    if-eqz v4, :cond_4

    move-object v4, v3

    move-object v0, v4

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, -0x1

    move-object v4, v3

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v3, v4

    goto :goto_1

    :cond_4
    move-object v4, v1

    move-object v0, v4

    goto :goto_0
.end method

.method private hasLegalRootContainer(Lorg/w3c/dom/Node;)Z
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lorg/apache/xerces/dom/RangeImpl;->getRootContainer(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    sparse-switch v3, :sswitch_data_0

    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    :sswitch_0
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x9 -> :sswitch_0
        0xb -> :sswitch_0
    .end sparse-switch
.end method

.method private isLegalContainedNode(Lorg/w3c/dom/Node;)Z
    .locals 3

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move-object v2, v1

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    :pswitch_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isLegalContainer(Lorg/w3c/dom/Node;)Z
    .locals 3

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_1

    const/4 v2, 0x0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move-object v2, v1

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    sparse-switch v2, :sswitch_data_0

    move-object v2, v1

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v1, v2

    :cond_1
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    :sswitch_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xa -> :sswitch_0
        0xc -> :sswitch_0
    .end sparse-switch
.end method

.method private traverseCharacterDataNode(Lorg/w3c/dom/Node;ZI)Lorg/w3c/dom/Node;
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v8, v1

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    move v8, v2

    if-eqz v8, :cond_1

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/dom/RangeImpl;->getStartOffset()I

    move-result v8

    move v7, v8

    move-object v8, v4

    move v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    move-object v8, v4

    const/4 v9, 0x0

    move v10, v7

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    :goto_0
    move v8, v3

    const/4 v9, 0x2

    if-eq v8, v9, :cond_0

    move-object v8, v1

    move-object v9, v6

    invoke-interface {v8, v9}, Lorg/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    :cond_0
    move v8, v3

    const/4 v9, 0x3

    if-ne v8, v9, :cond_2

    const/4 v8, 0x0

    move-object v0, v8

    :goto_1
    return-object v0

    :cond_1
    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/dom/RangeImpl;->getEndOffset()I

    move-result v8

    move v7, v8

    move-object v8, v4

    const/4 v9, 0x0

    move v10, v7

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    move-object v8, v4

    move v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    goto :goto_0

    :cond_2
    move-object v8, v1

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lorg/w3c/dom/Node;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object v8

    move-object v7, v8

    move-object v8, v7

    move-object v9, v5

    invoke-interface {v8, v9}, Lorg/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    move-object v8, v7

    move-object v0, v8

    goto :goto_1
.end method

.method private traverseCommonAncestors(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;I)Lorg/w3c/dom/DocumentFragment;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const/4 v12, 0x0

    move-object v4, v12

    move v12, v3

    const/4 v13, 0x3

    if-eq v12, v13, :cond_0

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xerces/dom/RangeImpl;->fDocument:Lorg/apache/xerces/dom/DocumentImpl;

    invoke-virtual {v12}, Lorg/apache/xerces/dom/DocumentImpl;->createDocumentFragment()Lorg/w3c/dom/DocumentFragment;

    move-result-object v12

    move-object v4, v12

    :cond_0
    move-object v12, v0

    move-object v13, v1

    move v14, v3

    invoke-direct {v12, v13, v14}, Lorg/apache/xerces/dom/RangeImpl;->traverseLeftBoundary(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;

    move-result-object v12

    move-object v5, v12

    move-object v12, v4

    if-eqz v12, :cond_1

    move-object v12, v4

    move-object v13, v5

    invoke-interface {v12, v13}, Lorg/w3c/dom/DocumentFragment;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v12

    :cond_1
    move-object v12, v1

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v12

    move-object v6, v12

    move-object v12, v0

    move-object v13, v1

    move-object v14, v6

    invoke-virtual {v12, v13, v14}, Lorg/apache/xerces/dom/RangeImpl;->indexOf(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)I

    move-result v12

    move v7, v12

    move-object v12, v0

    move-object v13, v2

    move-object v14, v6

    invoke-virtual {v12, v13, v14}, Lorg/apache/xerces/dom/RangeImpl;->indexOf(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)I

    move-result v12

    move v8, v12

    add-int/lit8 v7, v7, 0x1

    move v12, v8

    move v13, v7

    sub-int/2addr v12, v13

    move v9, v12

    move-object v12, v1

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v12

    move-object v10, v12

    :goto_0
    move v12, v9

    if-gtz v12, :cond_4

    move-object v12, v0

    move-object v13, v2

    move v14, v3

    invoke-direct {v12, v13, v14}, Lorg/apache/xerces/dom/RangeImpl;->traverseRightBoundary(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;

    move-result-object v12

    move-object v5, v12

    move-object v12, v4

    if-eqz v12, :cond_2

    move-object v12, v4

    move-object v13, v5

    invoke-interface {v12, v13}, Lorg/w3c/dom/DocumentFragment;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v12

    :cond_2
    move v12, v3

    const/4 v13, 0x2

    if-eq v12, v13, :cond_3

    move-object v12, v0

    move-object v13, v1

    invoke-virtual {v12, v13}, Lorg/apache/xerces/dom/RangeImpl;->setStartAfter(Lorg/w3c/dom/Node;)V

    move-object v12, v0

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lorg/apache/xerces/dom/RangeImpl;->collapse(Z)V

    :cond_3
    move-object v12, v4

    move-object v0, v12

    return-object v0

    :cond_4
    move-object v12, v10

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v12

    move-object v11, v12

    move-object v12, v0

    move-object v13, v10

    move v14, v3

    invoke-direct {v12, v13, v14}, Lorg/apache/xerces/dom/RangeImpl;->traverseFullySelected(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;

    move-result-object v12

    move-object v5, v12

    move-object v12, v4

    if-eqz v12, :cond_5

    move-object v12, v4

    move-object v13, v5

    invoke-interface {v12, v13}, Lorg/w3c/dom/DocumentFragment;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v12

    :cond_5
    move-object v12, v11

    move-object v10, v12

    add-int/lit8 v9, v9, -0x1

    goto :goto_0
.end method

.method private traverseCommonEndContainer(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/DocumentFragment;
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const/4 v9, 0x0

    move-object v3, v9

    move v9, v2

    const/4 v10, 0x3

    if-eq v9, v10, :cond_0

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/RangeImpl;->fDocument:Lorg/apache/xerces/dom/DocumentImpl;

    invoke-virtual {v9}, Lorg/apache/xerces/dom/DocumentImpl;->createDocumentFragment()Lorg/w3c/dom/DocumentFragment;

    move-result-object v9

    move-object v3, v9

    :cond_0
    move-object v9, v0

    move-object v10, v1

    move v11, v2

    invoke-direct {v9, v10, v11}, Lorg/apache/xerces/dom/RangeImpl;->traverseLeftBoundary(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v4, v9

    move-object v9, v3

    if-eqz v9, :cond_1

    move-object v9, v3

    move-object v10, v4

    invoke-interface {v9, v10}, Lorg/w3c/dom/DocumentFragment;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v9

    :cond_1
    move-object v9, v0

    move-object v10, v1

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    invoke-virtual {v9, v10, v11}, Lorg/apache/xerces/dom/RangeImpl;->indexOf(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)I

    move-result v9

    move v5, v9

    add-int/lit8 v5, v5, 0x1

    move-object v9, v0

    iget v9, v9, Lorg/apache/xerces/dom/RangeImpl;->fEndOffset:I

    move v10, v5

    sub-int/2addr v9, v10

    move v6, v9

    move-object v9, v1

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v4, v9

    :goto_0
    move v9, v6

    if-gtz v9, :cond_3

    move v9, v2

    const/4 v10, 0x2

    if-eq v9, v10, :cond_2

    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/RangeImpl;->setStartAfter(Lorg/w3c/dom/Node;)V

    move-object v9, v0

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/RangeImpl;->collapse(Z)V

    :cond_2
    move-object v9, v3

    move-object v0, v9

    return-object v0

    :cond_3
    move-object v9, v4

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v7, v9

    move-object v9, v0

    move-object v10, v4

    move v11, v2

    invoke-direct {v9, v10, v11}, Lorg/apache/xerces/dom/RangeImpl;->traverseFullySelected(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v8, v9

    move-object v9, v3

    if-eqz v9, :cond_4

    move-object v9, v3

    move-object v10, v8

    invoke-interface {v9, v10}, Lorg/w3c/dom/DocumentFragment;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v9

    :cond_4
    add-int/lit8 v6, v6, -0x1

    move-object v9, v7

    move-object v4, v9

    goto :goto_0
.end method

.method private traverseCommonStartContainer(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/DocumentFragment;
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const/4 v9, 0x0

    move-object v3, v9

    move v9, v2

    const/4 v10, 0x3

    if-eq v9, v10, :cond_0

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/RangeImpl;->fDocument:Lorg/apache/xerces/dom/DocumentImpl;

    invoke-virtual {v9}, Lorg/apache/xerces/dom/DocumentImpl;->createDocumentFragment()Lorg/w3c/dom/DocumentFragment;

    move-result-object v9

    move-object v3, v9

    :cond_0
    move-object v9, v0

    move-object v10, v1

    move v11, v2

    invoke-direct {v9, v10, v11}, Lorg/apache/xerces/dom/RangeImpl;->traverseRightBoundary(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v4, v9

    move-object v9, v3

    if-eqz v9, :cond_1

    move-object v9, v3

    move-object v10, v4

    invoke-interface {v9, v10}, Lorg/w3c/dom/DocumentFragment;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v9

    :cond_1
    move-object v9, v0

    move-object v10, v1

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    invoke-virtual {v9, v10, v11}, Lorg/apache/xerces/dom/RangeImpl;->indexOf(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)I

    move-result v9

    move v5, v9

    move v9, v5

    move-object v10, v0

    iget v10, v10, Lorg/apache/xerces/dom/RangeImpl;->fStartOffset:I

    sub-int/2addr v9, v10

    move v6, v9

    move v9, v6

    if-gtz v9, :cond_3

    move v9, v2

    const/4 v10, 0x2

    if-eq v9, v10, :cond_2

    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/RangeImpl;->setEndBefore(Lorg/w3c/dom/Node;)V

    move-object v9, v0

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/RangeImpl;->collapse(Z)V

    :cond_2
    move-object v9, v3

    move-object v0, v9

    :goto_0
    return-object v0

    :cond_3
    move-object v9, v1

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v4, v9

    :goto_1
    move v9, v6

    if-gtz v9, :cond_5

    move v9, v2

    const/4 v10, 0x2

    if-eq v9, v10, :cond_4

    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/RangeImpl;->setEndBefore(Lorg/w3c/dom/Node;)V

    move-object v9, v0

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/RangeImpl;->collapse(Z)V

    :cond_4
    move-object v9, v3

    move-object v0, v9

    goto :goto_0

    :cond_5
    move-object v9, v4

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v7, v9

    move-object v9, v0

    move-object v10, v4

    move v11, v2

    invoke-direct {v9, v10, v11}, Lorg/apache/xerces/dom/RangeImpl;->traverseFullySelected(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v8, v9

    move-object v9, v3

    if-eqz v9, :cond_6

    move-object v9, v3

    move-object v10, v8

    move-object v11, v3

    invoke-interface {v11}, Lorg/w3c/dom/DocumentFragment;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lorg/w3c/dom/DocumentFragment;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v9

    :cond_6
    add-int/lit8 v6, v6, -0x1

    move-object v9, v7

    move-object v4, v9

    goto :goto_1
.end method

.method private traverseContents(I)Lorg/w3c/dom/DocumentFragment;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object v13, v0

    iget-object v13, v13, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    if-eqz v13, :cond_0

    move-object v13, v0

    iget-object v13, v13, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    if-nez v13, :cond_1

    :cond_0
    const/4 v13, 0x0

    move-object v0, v13

    :goto_0
    return-object v0

    :cond_1
    move-object v13, v0

    iget-boolean v13, v13, Lorg/apache/xerces/dom/RangeImpl;->fDetach:Z

    if-eqz v13, :cond_2

    new-instance v13, Lorg/w3c/dom/DOMException;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    const/16 v15, 0xb

    const-string/jumbo v16, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v17, "INVALID_STATE_ERR"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v13

    :cond_2
    move-object v13, v0

    iget-object v13, v13, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    if-ne v13, v14, :cond_3

    move-object v13, v0

    move v14, v1

    invoke-direct {v13, v14}, Lorg/apache/xerces/dom/RangeImpl;->traverseSameContainer(I)Lorg/w3c/dom/DocumentFragment;

    move-result-object v13

    move-object v0, v13

    goto :goto_0

    :cond_3
    const/4 v13, 0x0

    move v2, v13

    move-object v13, v0

    iget-object v13, v13, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    move-object v3, v13

    move-object v13, v3

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v13

    move-object v4, v13

    :goto_1
    move-object v13, v4

    if-nez v13, :cond_4

    const/4 v13, 0x0

    move v5, v13

    move-object v13, v0

    iget-object v13, v13, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    move-object v6, v13

    move-object v13, v6

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v13

    move-object v7, v13

    :goto_2
    move-object v13, v7

    if-nez v13, :cond_6

    move v13, v5

    move v14, v2

    sub-int/2addr v13, v14

    move v8, v13

    move-object v13, v0

    iget-object v13, v13, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    move-object v9, v13

    :goto_3
    move v13, v8

    if-gtz v13, :cond_8

    move-object v13, v0

    iget-object v13, v13, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    move-object v10, v13

    :goto_4
    move v13, v8

    if-ltz v13, :cond_9

    move-object v13, v9

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v13

    move-object v11, v13

    move-object v13, v10

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v13

    move-object v12, v13

    :goto_5
    move-object v13, v11

    move-object v14, v12

    if-ne v13, v14, :cond_a

    move-object v13, v0

    move-object v14, v9

    move-object v15, v10

    move/from16 v16, v1

    invoke-direct/range {v13 .. v16}, Lorg/apache/xerces/dom/RangeImpl;->traverseCommonAncestors(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;I)Lorg/w3c/dom/DocumentFragment;

    move-result-object v13

    move-object v0, v13

    goto :goto_0

    :cond_4
    move-object v13, v4

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    if-ne v13, v14, :cond_5

    move-object v13, v0

    move-object v14, v3

    move v15, v1

    invoke-direct {v13, v14, v15}, Lorg/apache/xerces/dom/RangeImpl;->traverseCommonStartContainer(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/DocumentFragment;

    move-result-object v13

    move-object v0, v13

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    move-object v13, v4

    move-object v3, v13

    move-object v13, v4

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v13

    move-object v4, v13

    goto :goto_1

    :cond_6
    move-object v13, v7

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    if-ne v13, v14, :cond_7

    move-object v13, v0

    move-object v14, v6

    move v15, v1

    invoke-direct {v13, v14, v15}, Lorg/apache/xerces/dom/RangeImpl;->traverseCommonEndContainer(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/DocumentFragment;

    move-result-object v13

    move-object v0, v13

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v5, v5, 0x1

    move-object v13, v7

    move-object v6, v13

    move-object v13, v7

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v13

    move-object v7, v13

    goto :goto_2

    :cond_8
    move-object v13, v9

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v13

    move-object v9, v13

    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    :cond_9
    move-object v13, v10

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v13

    move-object v10, v13

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_a
    move-object v13, v11

    move-object v9, v13

    move-object v13, v12

    move-object v10, v13

    move-object v13, v11

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v13

    move-object v11, v13

    move-object v13, v12

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v13

    move-object v12, v13

    goto :goto_5
.end method

.method private traverseFullySelected(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, v2

    packed-switch v3, :pswitch_data_0

    const/4 v3, 0x0

    move-object v0, v3

    :goto_0
    return-object v0

    :pswitch_0
    move-object v3, v1

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lorg/w3c/dom/Node;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    :pswitch_1
    move-object v3, v1

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    new-instance v3, Lorg/w3c/dom/DOMException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/4 v5, 0x3

    const-string/jumbo v6, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v7, "HIERARCHY_REQUEST_ERR"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    :cond_0
    move-object v3, v1

    move-object v0, v3

    goto :goto_0

    :pswitch_2
    move-object v3, v1

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v4, v1

    invoke-interface {v3, v4}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private traverseLeftBoundary(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object v9, v0

    move-object v10, v0

    invoke-virtual {v10}, Lorg/apache/xerces/dom/RangeImpl;->getStartContainer()Lorg/w3c/dom/Node;

    move-result-object v10

    move-object v11, v0

    invoke-virtual {v11}, Lorg/apache/xerces/dom/RangeImpl;->getStartOffset()I

    move-result v11

    invoke-direct {v9, v10, v11}, Lorg/apache/xerces/dom/RangeImpl;->getSelectedNode(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v3, v9

    move-object v9, v3

    move-object v10, v0

    invoke-virtual {v10}, Lorg/apache/xerces/dom/RangeImpl;->getStartContainer()Lorg/w3c/dom/Node;

    move-result-object v10

    if-eq v9, v10, :cond_0

    const/4 v9, 0x1

    :goto_0
    move v4, v9

    move-object v9, v3

    move-object v10, v1

    if-ne v9, v10, :cond_1

    move-object v9, v0

    move-object v10, v3

    move v11, v4

    const/4 v12, 0x1

    move v13, v2

    invoke-direct {v9, v10, v11, v12, v13}, Lorg/apache/xerces/dom/RangeImpl;->traverseNode(Lorg/w3c/dom/Node;ZZI)Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v0, v9

    :goto_1
    return-object v0

    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    :cond_1
    move-object v9, v3

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v5, v9

    move-object v9, v0

    move-object v10, v5

    const/4 v11, 0x0

    const/4 v12, 0x1

    move v13, v2

    invoke-direct {v9, v10, v11, v12, v13}, Lorg/apache/xerces/dom/RangeImpl;->traverseNode(Lorg/w3c/dom/Node;ZZI)Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v6, v9

    :goto_2
    move-object v9, v5

    if-nez v9, :cond_4

    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_1

    :cond_2
    move-object v9, v3

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v7, v9

    move-object v9, v0

    move-object v10, v3

    move v11, v4

    const/4 v12, 0x1

    move v13, v2

    invoke-direct {v9, v10, v11, v12, v13}, Lorg/apache/xerces/dom/RangeImpl;->traverseNode(Lorg/w3c/dom/Node;ZZI)Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v8, v9

    move v9, v2

    const/4 v10, 0x3

    if-eq v9, v10, :cond_3

    move-object v9, v6

    move-object v10, v8

    invoke-interface {v9, v10}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v9

    :cond_3
    const/4 v9, 0x1

    move v4, v9

    move-object v9, v7

    move-object v3, v9

    :cond_4
    move-object v9, v3

    if-nez v9, :cond_2

    move-object v9, v5

    move-object v10, v1

    if-ne v9, v10, :cond_5

    move-object v9, v6

    move-object v0, v9

    goto :goto_1

    :cond_5
    move-object v9, v5

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v3, v9

    move-object v9, v5

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v5, v9

    move-object v9, v0

    move-object v10, v5

    const/4 v11, 0x0

    const/4 v12, 0x1

    move v13, v2

    invoke-direct {v9, v10, v11, v12, v13}, Lorg/apache/xerces/dom/RangeImpl;->traverseNode(Lorg/w3c/dom/Node;ZZI)Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v7, v9

    move v9, v2

    const/4 v10, 0x3

    if-eq v9, v10, :cond_6

    move-object v9, v7

    move-object v10, v6

    invoke-interface {v9, v10}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v9

    :cond_6
    move-object v9, v7

    move-object v6, v9

    goto :goto_2
.end method

.method private traverseNode(Lorg/w3c/dom/Node;ZZI)Lorg/w3c/dom/Node;
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v6, v2

    if-eqz v6, :cond_0

    move-object v6, v0

    move-object v7, v1

    move v8, v4

    invoke-direct {v6, v7, v8}, Lorg/apache/xerces/dom/RangeImpl;->traverseFullySelected(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_0
    move-object v6, v1

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    move v5, v6

    move v6, v5

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    move v6, v5

    const/4 v7, 0x4

    if-eq v6, v7, :cond_1

    move v6, v5

    const/16 v7, 0x8

    if-eq v6, v7, :cond_1

    move v6, v5

    const/4 v7, 0x7

    if-ne v6, v7, :cond_2

    :cond_1
    move-object v6, v0

    move-object v7, v1

    move v8, v3

    move v9, v4

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/xerces/dom/RangeImpl;->traverseCharacterDataNode(Lorg/w3c/dom/Node;ZI)Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    :cond_2
    move-object v6, v0

    move-object v7, v1

    move v8, v4

    invoke-direct {v6, v7, v8}, Lorg/apache/xerces/dom/RangeImpl;->traversePartiallySelected(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v0, v6

    goto :goto_0
.end method

.method private traversePartiallySelected(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, v2

    packed-switch v3, :pswitch_data_0

    const/4 v3, 0x0

    move-object v0, v3

    :goto_0
    return-object v0

    :pswitch_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    :pswitch_1
    move-object v3, v1

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lorg/w3c/dom/Node;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private traverseRightBoundary(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object v9, v0

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    move-object v11, v0

    iget v11, v11, Lorg/apache/xerces/dom/RangeImpl;->fEndOffset:I

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    invoke-direct {v9, v10, v11}, Lorg/apache/xerces/dom/RangeImpl;->getSelectedNode(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v3, v9

    move-object v9, v3

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    if-eq v9, v10, :cond_0

    const/4 v9, 0x1

    :goto_0
    move v4, v9

    move-object v9, v3

    move-object v10, v1

    if-ne v9, v10, :cond_1

    move-object v9, v0

    move-object v10, v3

    move v11, v4

    const/4 v12, 0x0

    move v13, v2

    invoke-direct {v9, v10, v11, v12, v13}, Lorg/apache/xerces/dom/RangeImpl;->traverseNode(Lorg/w3c/dom/Node;ZZI)Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v0, v9

    :goto_1
    return-object v0

    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    :cond_1
    move-object v9, v3

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v5, v9

    move-object v9, v0

    move-object v10, v5

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v13, v2

    invoke-direct {v9, v10, v11, v12, v13}, Lorg/apache/xerces/dom/RangeImpl;->traverseNode(Lorg/w3c/dom/Node;ZZI)Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v6, v9

    :goto_2
    move-object v9, v5

    if-nez v9, :cond_4

    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_1

    :cond_2
    move-object v9, v3

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v7, v9

    move-object v9, v0

    move-object v10, v3

    move v11, v4

    const/4 v12, 0x0

    move v13, v2

    invoke-direct {v9, v10, v11, v12, v13}, Lorg/apache/xerces/dom/RangeImpl;->traverseNode(Lorg/w3c/dom/Node;ZZI)Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v8, v9

    move v9, v2

    const/4 v10, 0x3

    if-eq v9, v10, :cond_3

    move-object v9, v6

    move-object v10, v8

    move-object v11, v6

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v9

    :cond_3
    const/4 v9, 0x1

    move v4, v9

    move-object v9, v7

    move-object v3, v9

    :cond_4
    move-object v9, v3

    if-nez v9, :cond_2

    move-object v9, v5

    move-object v10, v1

    if-ne v9, v10, :cond_5

    move-object v9, v6

    move-object v0, v9

    goto :goto_1

    :cond_5
    move-object v9, v5

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v3, v9

    move-object v9, v5

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v5, v9

    move-object v9, v0

    move-object v10, v5

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v13, v2

    invoke-direct {v9, v10, v11, v12, v13}, Lorg/apache/xerces/dom/RangeImpl;->traverseNode(Lorg/w3c/dom/Node;ZZI)Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v7, v9

    move v9, v2

    const/4 v10, 0x3

    if-eq v9, v10, :cond_6

    move-object v9, v7

    move-object v10, v6

    invoke-interface {v9, v10}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v9

    :cond_6
    move-object v9, v7

    move-object v6, v9

    goto :goto_2
.end method

.method private traverseSameContainer(I)Lorg/w3c/dom/DocumentFragment;
    .locals 12

    move-object v0, p0

    move v1, p1

    const/4 v8, 0x0

    move-object v2, v8

    move v8, v1

    const/4 v9, 0x3

    if-eq v8, v9, :cond_0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/RangeImpl;->fDocument:Lorg/apache/xerces/dom/DocumentImpl;

    invoke-virtual {v8}, Lorg/apache/xerces/dom/DocumentImpl;->createDocumentFragment()Lorg/w3c/dom/DocumentFragment;

    move-result-object v8

    move-object v2, v8

    :cond_0
    move-object v8, v0

    iget v8, v8, Lorg/apache/xerces/dom/RangeImpl;->fStartOffset:I

    move-object v9, v0

    iget v9, v9, Lorg/apache/xerces/dom/RangeImpl;->fEndOffset:I

    if-ne v8, v9, :cond_1

    move-object v8, v2

    move-object v0, v8

    :goto_0
    return-object v0

    :cond_1
    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    move v3, v8

    move v8, v3

    const/4 v9, 0x3

    if-eq v8, v9, :cond_2

    move v8, v3

    const/4 v9, 0x4

    if-eq v8, v9, :cond_2

    move v8, v3

    const/16 v9, 0x8

    if-eq v8, v9, :cond_2

    move v8, v3

    const/4 v9, 0x7

    if-ne v8, v9, :cond_8

    :cond_2
    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    move-object v8, v4

    move-object v9, v0

    iget v9, v9, Lorg/apache/xerces/dom/RangeImpl;->fStartOffset:I

    move-object v10, v0

    iget v10, v10, Lorg/apache/xerces/dom/RangeImpl;->fEndOffset:I

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    move v8, v1

    const/4 v9, 0x2

    if-eq v8, v9, :cond_3

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    check-cast v8, Lorg/apache/xerces/dom/CharacterDataImpl;

    move-object v9, v0

    iget v9, v9, Lorg/apache/xerces/dom/RangeImpl;->fStartOffset:I

    move-object v10, v0

    iget v10, v10, Lorg/apache/xerces/dom/RangeImpl;->fEndOffset:I

    move-object v11, v0

    iget v11, v11, Lorg/apache/xerces/dom/RangeImpl;->fStartOffset:I

    sub-int/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Lorg/apache/xerces/dom/CharacterDataImpl;->deleteData(II)V

    move-object v8, v0

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lorg/apache/xerces/dom/RangeImpl;->collapse(Z)V

    :cond_3
    move v8, v1

    const/4 v9, 0x3

    if-ne v8, v9, :cond_4

    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_0

    :cond_4
    move v8, v3

    const/4 v9, 0x3

    if-ne v8, v9, :cond_5

    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/RangeImpl;->fDocument:Lorg/apache/xerces/dom/DocumentImpl;

    move-object v10, v5

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/DocumentImpl;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/w3c/dom/DocumentFragment;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v8

    :goto_1
    move-object v8, v2

    move-object v0, v8

    goto :goto_0

    :cond_5
    move v8, v3

    const/4 v9, 0x4

    if-ne v8, v9, :cond_6

    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/RangeImpl;->fDocument:Lorg/apache/xerces/dom/DocumentImpl;

    move-object v10, v5

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/DocumentImpl;->createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/w3c/dom/DocumentFragment;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v8

    goto :goto_1

    :cond_6
    move v8, v3

    const/16 v9, 0x8

    if-ne v8, v9, :cond_7

    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/RangeImpl;->fDocument:Lorg/apache/xerces/dom/DocumentImpl;

    move-object v10, v5

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/DocumentImpl;->createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/w3c/dom/DocumentFragment;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v8

    goto :goto_1

    :cond_7
    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/RangeImpl;->fDocument:Lorg/apache/xerces/dom/DocumentImpl;

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    move-object v11, v5

    invoke-virtual {v9, v10, v11}, Lorg/apache/xerces/dom/DocumentImpl;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/w3c/dom/DocumentFragment;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v8

    goto :goto_1

    :cond_8
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    move-object v10, v0

    iget v10, v10, Lorg/apache/xerces/dom/RangeImpl;->fStartOffset:I

    invoke-direct {v8, v9, v10}, Lorg/apache/xerces/dom/RangeImpl;->getSelectedNode(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;

    move-result-object v8

    move-object v4, v8

    move-object v8, v0

    iget v8, v8, Lorg/apache/xerces/dom/RangeImpl;->fEndOffset:I

    move-object v9, v0

    iget v9, v9, Lorg/apache/xerces/dom/RangeImpl;->fStartOffset:I

    sub-int/2addr v8, v9

    move v5, v8

    :goto_2
    move v8, v5

    if-gtz v8, :cond_a

    move v8, v1

    const/4 v9, 0x2

    if-eq v8, v9, :cond_9

    move-object v8, v0

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lorg/apache/xerces/dom/RangeImpl;->collapse(Z)V

    :cond_9
    move-object v8, v2

    move-object v0, v8

    goto/16 :goto_0

    :cond_a
    move-object v8, v4

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v8

    move-object v6, v8

    move-object v8, v0

    move-object v9, v4

    move v10, v1

    invoke-direct {v8, v9, v10}, Lorg/apache/xerces/dom/RangeImpl;->traverseFullySelected(Lorg/w3c/dom/Node;I)Lorg/w3c/dom/Node;

    move-result-object v8

    move-object v7, v8

    move-object v8, v2

    if-eqz v8, :cond_b

    move-object v8, v2

    move-object v9, v7

    invoke-interface {v8, v9}, Lorg/w3c/dom/DocumentFragment;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v8

    :cond_b
    add-int/lit8 v5, v5, -0x1

    move-object v8, v6

    move-object v4, v8

    goto :goto_2
.end method


# virtual methods
.method checkIndex(Lorg/w3c/dom/Node;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v2

    if-gez v4, :cond_0

    new-instance v4, Lorg/w3c/dom/DOMException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x1

    const-string/jumbo v7, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v8, "INDEX_SIZE_ERR"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    :cond_0
    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    move v3, v4

    move v4, v3

    const/4 v5, 0x3

    if-eq v4, v5, :cond_1

    move v4, v3

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    move v4, v3

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    move v4, v3

    const/4 v5, 0x7

    if-ne v4, v5, :cond_2

    :cond_1
    move v4, v2

    move-object v5, v1

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v4, v5, :cond_3

    new-instance v4, Lorg/w3c/dom/DOMException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x1

    const-string/jumbo v7, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v8, "INDEX_SIZE_ERR"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    :cond_2
    move v4, v2

    move-object v5, v1

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    if-le v4, v5, :cond_3

    new-instance v4, Lorg/w3c/dom/DOMException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x1

    const-string/jumbo v7, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v8, "INDEX_SIZE_ERR"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    :cond_3
    return-void
.end method

.method public cloneContents()Lorg/w3c/dom/DocumentFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lorg/apache/xerces/dom/RangeImpl;->traverseContents(I)Lorg/w3c/dom/DocumentFragment;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public cloneRange()Lorg/w3c/dom/ranges/Range;
    .locals 9

    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Lorg/apache/xerces/dom/RangeImpl;->fDetach:Z

    if-eqz v2, :cond_0

    new-instance v2, Lorg/w3c/dom/DOMException;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const/16 v4, 0xb

    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v6, "INVALID_STATE_ERR"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/RangeImpl;->fDocument:Lorg/apache/xerces/dom/DocumentImpl;

    invoke-virtual {v2}, Lorg/apache/xerces/dom/DocumentImpl;->createRange()Lorg/w3c/dom/ranges/Range;

    move-result-object v2

    move-object v1, v2

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/dom/RangeImpl;->fStartOffset:I

    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/ranges/Range;->setStart(Lorg/w3c/dom/Node;I)V

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/dom/RangeImpl;->fEndOffset:I

    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/ranges/Range;->setEnd(Lorg/w3c/dom/Node;I)V

    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public collapse(Z)V
    .locals 9

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lorg/apache/xerces/dom/RangeImpl;->fDetach:Z

    if-eqz v2, :cond_0

    new-instance v2, Lorg/w3c/dom/DOMException;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const/16 v4, 0xb

    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v6, "INVALID_STATE_ERR"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    :cond_0
    move v2, v1

    if-eqz v2, :cond_1

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    iput-object v3, v2, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/dom/RangeImpl;->fStartOffset:I

    iput v3, v2, Lorg/apache/xerces/dom/RangeImpl;->fEndOffset:I

    :goto_0
    return-void

    :cond_1
    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    iput-object v3, v2, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/dom/RangeImpl;->fEndOffset:I

    iput v3, v2, Lorg/apache/xerces/dom/RangeImpl;->fStartOffset:I

    goto :goto_0
.end method

.method public compareBoundaryPoints(SLorg/w3c/dom/ranges/Range;)S
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/xerces/dom/RangeImpl;->fDocument:Lorg/apache/xerces/dom/DocumentImpl;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lorg/apache/xerces/dom/DocumentImpl;->errorChecking:Z

    move/from16 v19, v0

    if-eqz v19, :cond_3

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lorg/apache/xerces/dom/RangeImpl;->fDetach:Z

    move/from16 v19, v0

    if-eqz v19, :cond_0

    new-instance v19, Lorg/w3c/dom/DOMException;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    const/16 v21, 0xb

    const-string/jumbo v22, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v23, "INVALID_STATE_ERR"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v19

    :cond_0
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/xerces/dom/RangeImpl;->fDocument:Lorg/apache/xerces/dom/DocumentImpl;

    move-object/from16 v19, v0

    move-object/from16 v20, v4

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/ranges/Range;->getStartContainer()Lorg/w3c/dom/Node;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_1

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/xerces/dom/RangeImpl;->fDocument:Lorg/apache/xerces/dom/DocumentImpl;

    move-object/from16 v19, v0

    move-object/from16 v20, v4

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/ranges/Range;->getStartContainer()Lorg/w3c/dom/Node;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_1

    move-object/from16 v19, v4

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/ranges/Range;->getStartContainer()Lorg/w3c/dom/Node;

    move-result-object v19

    if-nez v19, :cond_2

    :cond_1
    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/xerces/dom/RangeImpl;->fDocument:Lorg/apache/xerces/dom/DocumentImpl;

    move-object/from16 v19, v0

    move-object/from16 v20, v4

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/ranges/Range;->getEndContainer()Lorg/w3c/dom/Node;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_3

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/xerces/dom/RangeImpl;->fDocument:Lorg/apache/xerces/dom/DocumentImpl;

    move-object/from16 v19, v0

    move-object/from16 v20, v4

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/ranges/Range;->getEndContainer()Lorg/w3c/dom/Node;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_3

    move-object/from16 v19, v4

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/ranges/Range;->getStartContainer()Lorg/w3c/dom/Node;

    move-result-object v19

    if-eqz v19, :cond_3

    :cond_2
    new-instance v19, Lorg/w3c/dom/DOMException;

    move-object/from16 v25, v19

    move-object/from16 v19, v25

    move-object/from16 v20, v25

    const/16 v21, 0x4

    const-string/jumbo v22, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v23, "WRONG_DOCUMENT_ERR"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v20 .. v22}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v19

    :cond_3
    move/from16 v19, v3

    if-nez v19, :cond_4

    move-object/from16 v19, v4

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/ranges/Range;->getStartContainer()Lorg/w3c/dom/Node;

    move-result-object v19

    move-object/from16 v5, v19

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    move-object/from16 v19, v0

    move-object/from16 v6, v19

    move-object/from16 v19, v4

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/ranges/Range;->getStartOffset()I

    move-result v19

    move/from16 v7, v19

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lorg/apache/xerces/dom/RangeImpl;->fStartOffset:I

    move/from16 v19, v0

    move/from16 v8, v19

    :goto_0
    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_9

    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_7

    const/16 v19, 0x1

    move/from16 v2, v19

    :goto_1
    return v2

    :cond_4
    move/from16 v19, v3

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    move-object/from16 v19, v4

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/ranges/Range;->getStartContainer()Lorg/w3c/dom/Node;

    move-result-object v19

    move-object/from16 v5, v19

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    move-object/from16 v19, v0

    move-object/from16 v6, v19

    move-object/from16 v19, v4

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/ranges/Range;->getStartOffset()I

    move-result v19

    move/from16 v7, v19

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lorg/apache/xerces/dom/RangeImpl;->fEndOffset:I

    move/from16 v19, v0

    move/from16 v8, v19

    goto :goto_0

    :cond_5
    move/from16 v19, v3

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    move-object/from16 v19, v4

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/ranges/Range;->getEndContainer()Lorg/w3c/dom/Node;

    move-result-object v19

    move-object/from16 v5, v19

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    move-object/from16 v19, v0

    move-object/from16 v6, v19

    move-object/from16 v19, v4

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/ranges/Range;->getEndOffset()I

    move-result v19

    move/from16 v7, v19

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lorg/apache/xerces/dom/RangeImpl;->fStartOffset:I

    move/from16 v19, v0

    move/from16 v8, v19

    goto :goto_0

    :cond_6
    move-object/from16 v19, v4

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/ranges/Range;->getEndContainer()Lorg/w3c/dom/Node;

    move-result-object v19

    move-object/from16 v5, v19

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    move-object/from16 v19, v0

    move-object/from16 v6, v19

    move-object/from16 v19, v4

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/ranges/Range;->getEndOffset()I

    move-result v19

    move/from16 v7, v19

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lorg/apache/xerces/dom/RangeImpl;->fEndOffset:I

    move/from16 v19, v0

    move/from16 v8, v19

    goto/16 :goto_0

    :cond_7
    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    const/16 v19, 0x0

    move/from16 v2, v19

    goto/16 :goto_1

    :cond_8
    const/16 v19, -0x1

    move/from16 v2, v19

    goto/16 :goto_1

    :cond_9
    move-object/from16 v19, v6

    move-object/from16 v9, v19

    move-object/from16 v19, v9

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v19

    move-object/from16 v10, v19

    :goto_2
    move-object/from16 v19, v10

    if-nez v19, :cond_a

    move-object/from16 v19, v5

    move-object/from16 v11, v19

    move-object/from16 v19, v11

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v19

    move-object/from16 v12, v19

    :goto_3
    move-object/from16 v19, v12

    if-nez v19, :cond_d

    const/16 v19, 0x0

    move/from16 v13, v19

    move-object/from16 v19, v5

    move-object/from16 v14, v19

    :goto_4
    move-object/from16 v19, v14

    if-nez v19, :cond_10

    move-object/from16 v19, v6

    move-object/from16 v15, v19

    :goto_5
    move-object/from16 v19, v15

    if-nez v19, :cond_11

    :goto_6
    move/from16 v19, v13

    if-gtz v19, :cond_12

    :goto_7
    move/from16 v19, v13

    if-ltz v19, :cond_13

    move-object/from16 v19, v5

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v19

    move-object/from16 v16, v19

    move-object/from16 v19, v6

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v19

    move-object/from16 v17, v19

    :goto_8
    move-object/from16 v19, v16

    move-object/from16 v20, v17

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_14

    move-object/from16 v19, v5

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v19

    move-object/from16 v18, v19

    :goto_9
    move-object/from16 v19, v18

    if-nez v19, :cond_15

    const/16 v19, -0x1

    move/from16 v2, v19

    goto/16 :goto_1

    :cond_a
    move-object/from16 v19, v10

    move-object/from16 v20, v5

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_c

    move-object/from16 v19, v2

    move-object/from16 v20, v9

    move-object/from16 v21, v5

    invoke-virtual/range {v19 .. v21}, Lorg/apache/xerces/dom/RangeImpl;->indexOf(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)I

    move-result v19

    move/from16 v11, v19

    move/from16 v19, v7

    move/from16 v20, v11

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_b

    const/16 v19, 0x1

    move/from16 v2, v19

    goto/16 :goto_1

    :cond_b
    const/16 v19, -0x1

    move/from16 v2, v19

    goto/16 :goto_1

    :cond_c
    move-object/from16 v19, v10

    move-object/from16 v9, v19

    move-object/from16 v19, v10

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v19

    move-object/from16 v10, v19

    goto/16 :goto_2

    :cond_d
    move-object/from16 v19, v12

    move-object/from16 v20, v6

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_f

    move-object/from16 v19, v2

    move-object/from16 v20, v11

    move-object/from16 v21, v6

    invoke-virtual/range {v19 .. v21}, Lorg/apache/xerces/dom/RangeImpl;->indexOf(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)I

    move-result v19

    move/from16 v13, v19

    move/from16 v19, v13

    move/from16 v20, v8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_e

    const/16 v19, 0x1

    move/from16 v2, v19

    goto/16 :goto_1

    :cond_e
    const/16 v19, -0x1

    move/from16 v2, v19

    goto/16 :goto_1

    :cond_f
    move-object/from16 v19, v12

    move-object/from16 v11, v19

    move-object/from16 v19, v12

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v19

    move-object/from16 v12, v19

    goto/16 :goto_3

    :cond_10
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v19, v14

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v19

    move-object/from16 v14, v19

    goto/16 :goto_4

    :cond_11
    add-int/lit8 v13, v13, -0x1

    move-object/from16 v19, v15

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v19

    move-object/from16 v15, v19

    goto/16 :goto_5

    :cond_12
    move-object/from16 v19, v5

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v19

    move-object/from16 v5, v19

    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_6

    :cond_13
    move-object/from16 v19, v6

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v19

    move-object/from16 v6, v19

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_7

    :cond_14
    move-object/from16 v19, v16

    move-object/from16 v5, v19

    move-object/from16 v19, v17

    move-object/from16 v6, v19

    move-object/from16 v19, v16

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v19

    move-object/from16 v16, v19

    move-object/from16 v19, v17

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v19

    move-object/from16 v17, v19

    goto/16 :goto_8

    :cond_15
    move-object/from16 v19, v18

    move-object/from16 v20, v6

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_16

    const/16 v19, 0x1

    move/from16 v2, v19

    goto/16 :goto_1

    :cond_16
    move-object/from16 v19, v18

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v19

    move-object/from16 v18, v19

    goto/16 :goto_9
.end method

.method public deleteContents()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lorg/apache/xerces/dom/RangeImpl;->traverseContents(I)Lorg/w3c/dom/DocumentFragment;

    move-result-object v1

    return-void
.end method

.method deleteData(Lorg/w3c/dom/CharacterData;II)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lorg/apache/xerces/dom/RangeImpl;->fDeleteNode:Lorg/w3c/dom/Node;

    move-object v4, v1

    move v5, v2

    move v6, v3

    invoke-interface {v4, v5, v6}, Lorg/w3c/dom/CharacterData;->deleteData(II)V

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/apache/xerces/dom/RangeImpl;->fDeleteNode:Lorg/w3c/dom/Node;

    return-void
.end method

.method public detach()V
    .locals 8

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/dom/RangeImpl;->fDetach:Z

    if-eqz v1, :cond_0

    new-instance v1, Lorg/w3c/dom/DOMException;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const/16 v3, 0xb

    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v5, "INVALID_STATE_ERR"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lorg/apache/xerces/dom/RangeImpl;->fDetach:Z

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/RangeImpl;->fDocument:Lorg/apache/xerces/dom/DocumentImpl;

    move-object v2, v0

    invoke-virtual {v1, v2}, Lorg/apache/xerces/dom/DocumentImpl;->removeRange(Lorg/w3c/dom/ranges/Range;)V

    return-void
.end method

.method public extractContents()Lorg/w3c/dom/DocumentFragment;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/apache/xerces/dom/RangeImpl;->traverseContents(I)Lorg/w3c/dom/DocumentFragment;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getCollapsed()Z
    .locals 8

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/dom/RangeImpl;->fDetach:Z

    if-eqz v1, :cond_0

    new-instance v1, Lorg/w3c/dom/DOMException;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const/16 v3, 0xb

    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v5, "INVALID_STATE_ERR"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    if-ne v1, v2, :cond_1

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/dom/RangeImpl;->fStartOffset:I

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/dom/RangeImpl;->fEndOffset:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCommonAncestorContainer()Lorg/w3c/dom/Node;
    .locals 14

    move-object v0, p0

    move-object v7, v0

    iget-boolean v7, v7, Lorg/apache/xerces/dom/RangeImpl;->fDetach:Z

    if-eqz v7, :cond_0

    new-instance v7, Lorg/w3c/dom/DOMException;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    const/16 v9, 0xb

    const-string/jumbo v10, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v11, "INVALID_STATE_ERR"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v7

    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    move-object v2, v7

    :goto_0
    move-object v7, v2

    if-nez v7, :cond_2

    new-instance v7, Ljava/util/ArrayList;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    move-object v2, v7

    :goto_1
    move-object v7, v2

    if-nez v7, :cond_3

    move-object v7, v1

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v4, v7

    move-object v7, v3

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, -0x1

    move v5, v7

    const/4 v7, 0x0

    move-object v6, v7

    :goto_2
    move v7, v4

    if-ltz v7, :cond_1

    move v7, v5

    if-gez v7, :cond_4

    :cond_1
    move-object v7, v6

    check-cast v7, Lorg/w3c/dom/Node;

    move-object v0, v7

    return-object v0

    :cond_2
    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    move-object v7, v2

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v7

    move-object v2, v7

    goto :goto_0

    :cond_3
    move-object v7, v3

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v7

    move-object v7, v2

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v7

    move-object v2, v7

    goto :goto_1

    :cond_4
    move-object v7, v1

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v3

    move v9, v5

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-ne v7, v8, :cond_1

    move-object v7, v1

    move v8, v4

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_2
.end method

.method public getEndContainer()Lorg/w3c/dom/Node;
    .locals 8

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/dom/RangeImpl;->fDetach:Z

    if-eqz v1, :cond_0

    new-instance v1, Lorg/w3c/dom/DOMException;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const/16 v3, 0xb

    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v5, "INVALID_STATE_ERR"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    move-object v0, v1

    return-object v0
.end method

.method public getEndOffset()I
    .locals 8

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/dom/RangeImpl;->fDetach:Z

    if-eqz v1, :cond_0

    new-instance v1, Lorg/w3c/dom/DOMException;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const/16 v3, 0xb

    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v5, "INVALID_STATE_ERR"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_0
    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/dom/RangeImpl;->fEndOffset:I

    move v0, v1

    return v0
.end method

.method public getStartContainer()Lorg/w3c/dom/Node;
    .locals 8

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/dom/RangeImpl;->fDetach:Z

    if-eqz v1, :cond_0

    new-instance v1, Lorg/w3c/dom/DOMException;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const/16 v3, 0xb

    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v5, "INVALID_STATE_ERR"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    move-object v0, v1

    return-object v0
.end method

.method public getStartOffset()I
    .locals 8

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/dom/RangeImpl;->fDetach:Z

    if-eqz v1, :cond_0

    new-instance v1, Lorg/w3c/dom/DOMException;

    move-object v7, v1

    move-object v1, v7

    move-object v2, v7

    const/16 v3, 0xb

    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v5, "INVALID_STATE_ERR"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_0
    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/dom/RangeImpl;->fStartOffset:I

    move v0, v1

    return v0
.end method

.method indexOf(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)I
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v1

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v6, v2

    if-eq v5, v6, :cond_0

    const/4 v5, -0x1

    move v0, v5

    :goto_0
    return v0

    :cond_0
    const/4 v5, 0x0

    move v3, v5

    move-object v5, v2

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v4, v5

    :goto_1
    move-object v5, v4

    move-object v6, v1

    if-ne v5, v6, :cond_1

    move v5, v3

    move v0, v5

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    move-object v5, v4

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v4, v5

    goto :goto_1
.end method

.method insertData(Lorg/w3c/dom/CharacterData;ILjava/lang/String;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lorg/apache/xerces/dom/RangeImpl;->fInsertNode:Lorg/w3c/dom/Node;

    move-object v4, v1

    move v5, v2

    move-object v6, v3

    invoke-interface {v4, v5, v6}, Lorg/w3c/dom/CharacterData;->insertData(ILjava/lang/String;)V

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/apache/xerces/dom/RangeImpl;->fInsertNode:Lorg/w3c/dom/Node;

    return-void
.end method

.method public insertNode(Lorg/w3c/dom/Node;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;,
            Lorg/w3c/dom/ranges/RangeException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move-object v8, v1

    if-nez v8, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v8, v1

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    move v2, v8

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/RangeImpl;->fDocument:Lorg/apache/xerces/dom/DocumentImpl;

    iget-boolean v8, v8, Lorg/apache/xerces/dom/DocumentImpl;->errorChecking:Z

    if-eqz v8, :cond_4

    move-object v8, v0

    iget-boolean v8, v8, Lorg/apache/xerces/dom/RangeImpl;->fDetach:Z

    if-eqz v8, :cond_1

    new-instance v8, Lorg/w3c/dom/DOMException;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const/16 v10, 0xb

    const-string/jumbo v11, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v12, "INVALID_STATE_ERR"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v8

    :cond_1
    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/RangeImpl;->fDocument:Lorg/apache/xerces/dom/DocumentImpl;

    move-object v9, v1

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v9

    if-eq v8, v9, :cond_2

    new-instance v8, Lorg/w3c/dom/DOMException;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const/4 v10, 0x4

    const-string/jumbo v11, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v12, "WRONG_DOCUMENT_ERR"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v8

    :cond_2
    move v8, v2

    const/4 v9, 0x2

    if-eq v8, v9, :cond_3

    move v8, v2

    const/4 v9, 0x6

    if-eq v8, v9, :cond_3

    move v8, v2

    const/16 v9, 0xc

    if-eq v8, v9, :cond_3

    move v8, v2

    const/16 v9, 0x9

    if-ne v8, v9, :cond_4

    :cond_3
    new-instance v8, Lorg/apache/xerces/dom/RangeExceptionImpl;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    const/4 v10, 0x2

    const-string/jumbo v11, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v12, "INVALID_NODE_TYPE_ERR"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lorg/apache/xerces/dom/RangeExceptionImpl;-><init>(SLjava/lang/String;)V

    throw v8

    :cond_4
    const/4 v8, 0x0

    move v5, v8

    move-object v8, v0

    const/4 v9, 0x1

    iput-boolean v9, v8, Lorg/apache/xerces/dom/RangeImpl;->fInsertedFromRange:Z

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_a

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v8

    move-object v6, v8

    move-object v8, v6

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    move v5, v8

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lorg/w3c/dom/Node;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object v8

    move-object v3, v8

    move-object v8, v3

    check-cast v8, Lorg/apache/xerces/dom/TextImpl;

    move-object v9, v3

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    move-object v10, v0

    iget v10, v10, Lorg/apache/xerces/dom/RangeImpl;->fStartOffset:I

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/xerces/dom/TextImpl;->setNodeValueInternal(Ljava/lang/String;)V

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    check-cast v8, Lorg/apache/xerces/dom/TextImpl;

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move-object v11, v0

    iget v11, v11, Lorg/apache/xerces/dom/RangeImpl;->fStartOffset:I

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/xerces/dom/TextImpl;->setNodeValueInternal(Ljava/lang/String;)V

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v8

    move-object v7, v8

    move-object v8, v7

    if-eqz v8, :cond_8

    move-object v8, v6

    if-eqz v8, :cond_5

    move-object v8, v6

    move-object v9, v1

    move-object v10, v7

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v8

    move-object v8, v6

    move-object v9, v3

    move-object v10, v7

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v8

    :cond_5
    :goto_1
    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    if-ne v8, v9, :cond_9

    move-object v8, v0

    move-object v9, v3

    iput-object v9, v8, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    move-object v8, v0

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    iget v9, v9, Lorg/apache/xerces/dom/RangeImpl;->fEndOffset:I

    move-object v10, v0

    iget v10, v10, Lorg/apache/xerces/dom/RangeImpl;->fStartOffset:I

    sub-int/2addr v9, v10

    iput v9, v8, Lorg/apache/xerces/dom/RangeImpl;->fEndOffset:I

    :cond_6
    :goto_2
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    move-object v10, v3

    move-object v11, v0

    iget v11, v11, Lorg/apache/xerces/dom/RangeImpl;->fStartOffset:I

    invoke-virtual {v8, v9, v10, v11}, Lorg/apache/xerces/dom/RangeImpl;->signalSplitData(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;I)V

    :cond_7
    :goto_3
    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Lorg/apache/xerces/dom/RangeImpl;->fInsertedFromRange:Z

    goto/16 :goto_0

    :cond_8
    move-object v8, v6

    if-eqz v8, :cond_5

    move-object v8, v6

    move-object v9, v1

    invoke-interface {v8, v9}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v8

    move-object v8, v6

    move-object v9, v3

    invoke-interface {v8, v9}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v8

    goto :goto_1

    :cond_9
    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    move-object v9, v6

    if-ne v8, v9, :cond_6

    move-object v8, v0

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    iget v9, v9, Lorg/apache/xerces/dom/RangeImpl;->fEndOffset:I

    move-object v10, v6

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    move v11, v5

    sub-int/2addr v10, v11

    add-int/2addr v9, v10

    iput v9, v8, Lorg/apache/xerces/dom/RangeImpl;->fEndOffset:I

    goto :goto_2

    :cond_a
    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    if-ne v8, v9, :cond_b

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    move v5, v8

    :cond_b
    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v8

    move-object v4, v8

    const/4 v8, 0x0

    move v6, v8

    const/4 v8, 0x0

    move v6, v8

    :goto_4
    move v8, v6

    move-object v9, v0

    iget v9, v9, Lorg/apache/xerces/dom/RangeImpl;->fStartOffset:I

    if-ge v8, v9, :cond_c

    move-object v8, v4

    if-nez v8, :cond_d

    :cond_c
    move-object v8, v4

    if-eqz v8, :cond_e

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    move-object v9, v1

    move-object v10, v4

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v8

    :goto_5
    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    if-ne v8, v9, :cond_7

    move-object v8, v0

    iget v8, v8, Lorg/apache/xerces/dom/RangeImpl;->fEndOffset:I

    if-eqz v8, :cond_7

    move-object v8, v0

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    iget v9, v9, Lorg/apache/xerces/dom/RangeImpl;->fEndOffset:I

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    move v11, v5

    sub-int/2addr v10, v11

    add-int/2addr v9, v10

    iput v9, v8, Lorg/apache/xerces/dom/RangeImpl;->fEndOffset:I

    goto/16 :goto_3

    :cond_d
    move-object v8, v4

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v8

    move-object v4, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_e
    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    move-object v9, v1

    invoke-interface {v8, v9}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v8

    goto :goto_5
.end method

.method public insertedNodeFromDOM(Lorg/w3c/dom/Node;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/RangeImpl;->fInsertNode:Lorg/w3c/dom/Node;

    move-object v5, v1

    if-ne v4, v5, :cond_1

    goto :goto_0

    :cond_1
    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/dom/RangeImpl;->fInsertedFromRange:Z

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v2, v4

    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    if-ne v4, v5, :cond_3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/dom/RangeImpl;->indexOf(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)I

    move-result v4

    move v3, v4

    move v4, v3

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/dom/RangeImpl;->fStartOffset:I

    if-ge v4, v5, :cond_3

    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Lorg/apache/xerces/dom/RangeImpl;->fStartOffset:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lorg/apache/xerces/dom/RangeImpl;->fStartOffset:I

    :cond_3
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    if-ne v4, v5, :cond_4

    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/dom/RangeImpl;->indexOf(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)I

    move-result v4

    move v3, v4

    move v4, v3

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/dom/RangeImpl;->fEndOffset:I

    if-ge v4, v5, :cond_4

    move-object v4, v0

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    iget v5, v5, Lorg/apache/xerces/dom/RangeImpl;->fEndOffset:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lorg/apache/xerces/dom/RangeImpl;->fEndOffset:I

    :cond_4
    goto :goto_0
.end method

.method isAncestorOf(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v2

    move-object v3, v4

    :goto_0
    move-object v4, v3

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move v0, v4

    :goto_1
    return v0

    :cond_0
    move-object v4, v3

    move-object v5, v1

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    move v0, v4

    goto :goto_1

    :cond_1
    move-object v4, v3

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v3, v4

    goto :goto_0
.end method

.method nextNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, v1

    if-nez v5, :cond_0

    const/4 v5, 0x0

    move-object v0, v5

    :goto_0
    return-object v0

    :cond_0
    move v5, v2

    if-eqz v5, :cond_1

    move-object v5, v1

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v3, v5

    move-object v5, v3

    if-eqz v5, :cond_1

    move-object v5, v3

    move-object v0, v5

    goto :goto_0

    :cond_1
    move-object v5, v1

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v3, v5

    move-object v5, v3

    if-eqz v5, :cond_2

    move-object v5, v3

    move-object v0, v5

    goto :goto_0

    :cond_2
    move-object v5, v1

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v4, v5

    :goto_1
    move-object v5, v4

    if-eqz v5, :cond_3

    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/RangeImpl;->fDocument:Lorg/apache/xerces/dom/DocumentImpl;

    if-ne v5, v6, :cond_4

    :cond_3
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_0

    :cond_4
    move-object v5, v4

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v3, v5

    move-object v5, v3

    if-eqz v5, :cond_5

    move-object v5, v3

    move-object v0, v5

    goto :goto_0

    :cond_5
    move-object v5, v4

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v4, v5

    goto :goto_1
.end method

.method receiveDeletedText(Lorg/apache/xerces/dom/CharacterDataImpl;II)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v1

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/RangeImpl;->fDeleteNode:Lorg/w3c/dom/Node;

    move-object v5, v1

    if-ne v4, v5, :cond_1

    goto :goto_0

    :cond_1
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    if-ne v4, v5, :cond_2

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/dom/RangeImpl;->fStartOffset:I

    move v5, v2

    move v6, v3

    add-int/2addr v5, v6

    if-le v4, v5, :cond_4

    move-object v4, v0

    move v5, v2

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/dom/RangeImpl;->fStartOffset:I

    move v7, v2

    move v8, v3

    add-int/2addr v7, v8

    sub-int/2addr v6, v7

    add-int/2addr v5, v6

    iput v5, v4, Lorg/apache/xerces/dom/RangeImpl;->fStartOffset:I

    :cond_2
    :goto_1
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    if-ne v4, v5, :cond_3

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/dom/RangeImpl;->fEndOffset:I

    move v5, v2

    move v6, v3

    add-int/2addr v5, v6

    if-le v4, v5, :cond_5

    move-object v4, v0

    move v5, v2

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/dom/RangeImpl;->fEndOffset:I

    move v7, v2

    move v8, v3

    add-int/2addr v7, v8

    sub-int/2addr v6, v7

    add-int/2addr v5, v6

    iput v5, v4, Lorg/apache/xerces/dom/RangeImpl;->fEndOffset:I

    :cond_3
    :goto_2
    goto :goto_0

    :cond_4
    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/dom/RangeImpl;->fStartOffset:I

    move v5, v2

    if-le v4, v5, :cond_2

    move-object v4, v0

    move v5, v2

    iput v5, v4, Lorg/apache/xerces/dom/RangeImpl;->fStartOffset:I

    goto :goto_1

    :cond_5
    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/dom/RangeImpl;->fEndOffset:I

    move v5, v2

    if-le v4, v5, :cond_3

    move-object v4, v0

    move v5, v2

    iput v5, v4, Lorg/apache/xerces/dom/RangeImpl;->fEndOffset:I

    goto :goto_2
.end method

.method receiveInsertedText(Lorg/apache/xerces/dom/CharacterDataImpl;II)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v1

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/RangeImpl;->fInsertNode:Lorg/w3c/dom/Node;

    move-object v5, v1

    if-ne v4, v5, :cond_1

    goto :goto_0

    :cond_1
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    if-ne v4, v5, :cond_2

    move v4, v2

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/dom/RangeImpl;->fStartOffset:I

    if-ge v4, v5, :cond_2

    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/dom/RangeImpl;->fStartOffset:I

    move v6, v3

    add-int/2addr v5, v6

    iput v5, v4, Lorg/apache/xerces/dom/RangeImpl;->fStartOffset:I

    :cond_2
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    if-ne v4, v5, :cond_3

    move v4, v2

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/dom/RangeImpl;->fEndOffset:I

    if-ge v4, v5, :cond_3

    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/dom/RangeImpl;->fEndOffset:I

    move v6, v3

    add-int/2addr v5, v6

    iput v5, v4, Lorg/apache/xerces/dom/RangeImpl;->fEndOffset:I

    :cond_3
    goto :goto_0
.end method

.method receiveReplacedText(Lorg/apache/xerces/dom/CharacterDataImpl;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    if-ne v2, v3, :cond_1

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lorg/apache/xerces/dom/RangeImpl;->fStartOffset:I

    :cond_1
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    if-ne v2, v3, :cond_2

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lorg/apache/xerces/dom/RangeImpl;->fEndOffset:I

    :cond_2
    goto :goto_0
.end method

.method receiveSplitData(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;I)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v2

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/RangeImpl;->fSplitNode:Lorg/w3c/dom/Node;

    move-object v5, v1

    if-ne v4, v5, :cond_2

    goto :goto_0

    :cond_2
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    if-ne v4, v5, :cond_3

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/dom/RangeImpl;->fStartOffset:I

    move v5, v3

    if-le v4, v5, :cond_3

    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/dom/RangeImpl;->fStartOffset:I

    move v6, v3

    sub-int/2addr v5, v6

    iput v5, v4, Lorg/apache/xerces/dom/RangeImpl;->fStartOffset:I

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    :cond_3
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    if-ne v4, v5, :cond_4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/dom/RangeImpl;->fEndOffset:I

    move v5, v3

    if-le v4, v5, :cond_4

    move-object v4, v0

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/dom/RangeImpl;->fEndOffset:I

    move v6, v3

    sub-int/2addr v5, v6

    iput v5, v4, Lorg/apache/xerces/dom/RangeImpl;->fEndOffset:I

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    :cond_4
    goto :goto_0
.end method

.method removeChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lorg/apache/xerces/dom/RangeImpl;->fRemoveChild:Lorg/w3c/dom/Node;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v4, v5}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v3, v4

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/apache/xerces/dom/RangeImpl;->fRemoveChild:Lorg/w3c/dom/Node;

    move-object v4, v3

    move-object v0, v4

    return-object v0
.end method

.method removeNode(Lorg/w3c/dom/Node;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/RangeImpl;->fRemoveChild:Lorg/w3c/dom/Node;

    move-object v5, v1

    if-ne v4, v5, :cond_1

    goto :goto_0

    :cond_1
    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v2, v4

    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    if-ne v4, v5, :cond_2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/dom/RangeImpl;->indexOf(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)I

    move-result v4

    move v3, v4

    move v4, v3

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/dom/RangeImpl;->fStartOffset:I

    if-ge v4, v5, :cond_2

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lorg/apache/xerces/dom/RangeImpl;->fStartOffset:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lorg/apache/xerces/dom/RangeImpl;->fStartOffset:I

    :cond_2
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    if-ne v4, v5, :cond_3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/dom/RangeImpl;->indexOf(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)I

    move-result v4

    move v3, v4

    move v4, v3

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/dom/RangeImpl;->fEndOffset:I

    if-ge v4, v5, :cond_3

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Lorg/apache/xerces/dom/RangeImpl;->fEndOffset:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lorg/apache/xerces/dom/RangeImpl;->fEndOffset:I

    :cond_3
    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    if-ne v4, v5, :cond_4

    move-object v4, v2

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    if-eq v4, v5, :cond_6

    :cond_4
    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/dom/RangeImpl;->isAncestorOf(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    move-object v4, v0

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/dom/RangeImpl;->indexOf(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)I

    move-result v5

    iput v5, v4, Lorg/apache/xerces/dom/RangeImpl;->fStartOffset:I

    :cond_5
    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/dom/RangeImpl;->isAncestorOf(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    move-object v4, v0

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/dom/RangeImpl;->indexOf(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)I

    move-result v5

    iput v5, v4, Lorg/apache/xerces/dom/RangeImpl;->fEndOffset:I

    :cond_6
    goto/16 :goto_0
.end method

.method public selectNode(Lorg/w3c/dom/Node;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/ranges/RangeException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/RangeImpl;->fDocument:Lorg/apache/xerces/dom/DocumentImpl;

    iget-boolean v5, v5, Lorg/apache/xerces/dom/DocumentImpl;->errorChecking:Z

    if-eqz v5, :cond_3

    move-object v5, v0

    iget-boolean v5, v5, Lorg/apache/xerces/dom/RangeImpl;->fDetach:Z

    if-eqz v5, :cond_0

    new-instance v5, Lorg/w3c/dom/DOMException;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/16 v7, 0xb

    const-string/jumbo v8, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v9, "INVALID_STATE_ERR"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    :cond_0
    move-object v5, v0

    move-object v6, v1

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/xerces/dom/RangeImpl;->isLegalContainer(Lorg/w3c/dom/Node;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lorg/apache/xerces/dom/RangeImpl;->isLegalContainedNode(Lorg/w3c/dom/Node;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    new-instance v5, Lorg/apache/xerces/dom/RangeExceptionImpl;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x2

    const-string/jumbo v8, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v9, "INVALID_NODE_TYPE_ERR"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/xerces/dom/RangeExceptionImpl;-><init>(SLjava/lang/String;)V

    throw v5

    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/RangeImpl;->fDocument:Lorg/apache/xerces/dom/DocumentImpl;

    move-object v6, v1

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v6

    if-eq v5, v6, :cond_3

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/RangeImpl;->fDocument:Lorg/apache/xerces/dom/DocumentImpl;

    move-object v6, v1

    if-eq v5, v6, :cond_3

    new-instance v5, Lorg/w3c/dom/DOMException;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x4

    const-string/jumbo v8, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v9, "WRONG_DOCUMENT_ERR"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    :cond_3
    move-object v5, v1

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v2, v5

    move-object v5, v2

    if-eqz v5, :cond_4

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    const/4 v5, 0x0

    move v3, v5

    move-object v5, v1

    move-object v4, v5

    :goto_0
    move-object v5, v4

    if-nez v5, :cond_5

    move-object v5, v0

    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lorg/apache/xerces/dom/RangeImpl;->fStartOffset:I

    move-object v5, v0

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/dom/RangeImpl;->fStartOffset:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lorg/apache/xerces/dom/RangeImpl;->fEndOffset:I

    :cond_4
    return-void

    :cond_5
    add-int/lit8 v3, v3, 0x1

    move-object v5, v4

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v4, v5

    goto :goto_0
.end method

.method public selectNodeContents(Lorg/w3c/dom/Node;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/ranges/RangeException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/RangeImpl;->fDocument:Lorg/apache/xerces/dom/DocumentImpl;

    iget-boolean v5, v5, Lorg/apache/xerces/dom/DocumentImpl;->errorChecking:Z

    if-eqz v5, :cond_2

    move-object v5, v0

    iget-boolean v5, v5, Lorg/apache/xerces/dom/RangeImpl;->fDetach:Z

    if-eqz v5, :cond_0

    new-instance v5, Lorg/w3c/dom/DOMException;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/16 v7, 0xb

    const-string/jumbo v8, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v9, "INVALID_STATE_ERR"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    :cond_0
    move-object v5, v0

    move-object v6, v1

    invoke-direct {v5, v6}, Lorg/apache/xerces/dom/RangeImpl;->isLegalContainer(Lorg/w3c/dom/Node;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Lorg/apache/xerces/dom/RangeExceptionImpl;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x2

    const-string/jumbo v8, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v9, "INVALID_NODE_TYPE_ERR"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/apache/xerces/dom/RangeExceptionImpl;-><init>(SLjava/lang/String;)V

    throw v5

    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/RangeImpl;->fDocument:Lorg/apache/xerces/dom/DocumentImpl;

    move-object v6, v1

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v6

    if-eq v5, v6, :cond_2

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/RangeImpl;->fDocument:Lorg/apache/xerces/dom/DocumentImpl;

    move-object v6, v1

    if-eq v5, v6, :cond_2

    new-instance v5, Lorg/w3c/dom/DOMException;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x4

    const-string/jumbo v8, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v9, "WRONG_DOCUMENT_ERR"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    :cond_2
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    move-object v5, v1

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v2, v5

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lorg/apache/xerces/dom/RangeImpl;->fStartOffset:I

    move-object v5, v2

    if-nez v5, :cond_3

    move-object v5, v0

    const/4 v6, 0x0

    iput v6, v5, Lorg/apache/xerces/dom/RangeImpl;->fEndOffset:I

    :goto_0
    return-void

    :cond_3
    const/4 v5, 0x0

    move v3, v5

    move-object v5, v2

    move-object v4, v5

    :goto_1
    move-object v5, v4

    if-nez v5, :cond_4

    move-object v5, v0

    move v6, v3

    iput v6, v5, Lorg/apache/xerces/dom/RangeImpl;->fEndOffset:I

    goto :goto_0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    move-object v5, v4

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v4, v5

    goto :goto_1
.end method

.method public setEnd(Lorg/w3c/dom/Node;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/ranges/RangeException;,
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/RangeImpl;->fDocument:Lorg/apache/xerces/dom/DocumentImpl;

    iget-boolean v3, v3, Lorg/apache/xerces/dom/DocumentImpl;->errorChecking:Z

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-boolean v3, v3, Lorg/apache/xerces/dom/RangeImpl;->fDetach:Z

    if-eqz v3, :cond_0

    new-instance v3, Lorg/w3c/dom/DOMException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0xb

    const-string/jumbo v6, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v7, "INVALID_STATE_ERR"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lorg/apache/xerces/dom/RangeImpl;->isLegalContainer(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Lorg/apache/xerces/dom/RangeExceptionImpl;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/4 v5, 0x2

    const-string/jumbo v6, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v7, "INVALID_NODE_TYPE_ERR"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/xerces/dom/RangeExceptionImpl;-><init>(SLjava/lang/String;)V

    throw v3

    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/RangeImpl;->fDocument:Lorg/apache/xerces/dom/DocumentImpl;

    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v4

    if-eq v3, v4, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/RangeImpl;->fDocument:Lorg/apache/xerces/dom/DocumentImpl;

    move-object v4, v1

    if-eq v3, v4, :cond_2

    new-instance v3, Lorg/w3c/dom/DOMException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/4 v5, 0x4

    const-string/jumbo v6, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v7, "WRONG_DOCUMENT_ERR"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    :cond_2
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/dom/RangeImpl;->checkIndex(Lorg/w3c/dom/Node;I)V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    move-object v3, v0

    move v4, v2

    iput v4, v3, Lorg/apache/xerces/dom/RangeImpl;->fEndOffset:I

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/RangeImpl;->getCommonAncestorContainer()Lorg/w3c/dom/Node;

    move-result-object v3

    if-eqz v3, :cond_3

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    if-ne v3, v4, :cond_4

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/dom/RangeImpl;->fEndOffset:I

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/dom/RangeImpl;->fStartOffset:I

    if-ge v3, v4, :cond_4

    :cond_3
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/RangeImpl;->collapse(Z)V

    :cond_4
    return-void
.end method

.method public setEndAfter(Lorg/w3c/dom/Node;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/ranges/RangeException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/RangeImpl;->fDocument:Lorg/apache/xerces/dom/DocumentImpl;

    iget-boolean v4, v4, Lorg/apache/xerces/dom/DocumentImpl;->errorChecking:Z

    if-eqz v4, :cond_3

    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/dom/RangeImpl;->fDetach:Z

    if-eqz v4, :cond_0

    new-instance v4, Lorg/w3c/dom/DOMException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/16 v6, 0xb

    const-string/jumbo v7, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v8, "INVALID_STATE_ERR"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lorg/apache/xerces/dom/RangeImpl;->hasLegalRootContainer(Lorg/w3c/dom/Node;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lorg/apache/xerces/dom/RangeImpl;->isLegalContainedNode(Lorg/w3c/dom/Node;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    new-instance v4, Lorg/apache/xerces/dom/RangeExceptionImpl;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x2

    const-string/jumbo v7, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v8, "INVALID_NODE_TYPE_ERR"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/xerces/dom/RangeExceptionImpl;-><init>(SLjava/lang/String;)V

    throw v4

    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/RangeImpl;->fDocument:Lorg/apache/xerces/dom/DocumentImpl;

    move-object v5, v1

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v5

    if-eq v4, v5, :cond_3

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/RangeImpl;->fDocument:Lorg/apache/xerces/dom/DocumentImpl;

    move-object v5, v1

    if-eq v4, v5, :cond_3

    new-instance v4, Lorg/w3c/dom/DOMException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x4

    const-string/jumbo v7, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v8, "WRONG_DOCUMENT_ERR"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    :cond_3
    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v5

    iput-object v5, v4, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    const/4 v4, 0x0

    move v2, v4

    move-object v4, v1

    move-object v3, v4

    :goto_0
    move-object v4, v3

    if-nez v4, :cond_6

    move-object v4, v0

    move v5, v2

    iput v5, v4, Lorg/apache/xerces/dom/RangeImpl;->fEndOffset:I

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/RangeImpl;->getCommonAncestorContainer()Lorg/w3c/dom/Node;

    move-result-object v4

    if-eqz v4, :cond_4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    if-ne v4, v5, :cond_5

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/dom/RangeImpl;->fEndOffset:I

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/dom/RangeImpl;->fStartOffset:I

    if-ge v4, v5, :cond_5

    :cond_4
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/RangeImpl;->collapse(Z)V

    :cond_5
    return-void

    :cond_6
    add-int/lit8 v2, v2, 0x1

    move-object v4, v3

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v3, v4

    goto :goto_0
.end method

.method public setEndBefore(Lorg/w3c/dom/Node;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/ranges/RangeException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/RangeImpl;->fDocument:Lorg/apache/xerces/dom/DocumentImpl;

    iget-boolean v4, v4, Lorg/apache/xerces/dom/DocumentImpl;->errorChecking:Z

    if-eqz v4, :cond_3

    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/dom/RangeImpl;->fDetach:Z

    if-eqz v4, :cond_0

    new-instance v4, Lorg/w3c/dom/DOMException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/16 v6, 0xb

    const-string/jumbo v7, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v8, "INVALID_STATE_ERR"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lorg/apache/xerces/dom/RangeImpl;->hasLegalRootContainer(Lorg/w3c/dom/Node;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lorg/apache/xerces/dom/RangeImpl;->isLegalContainedNode(Lorg/w3c/dom/Node;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    new-instance v4, Lorg/apache/xerces/dom/RangeExceptionImpl;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x2

    const-string/jumbo v7, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v8, "INVALID_NODE_TYPE_ERR"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/xerces/dom/RangeExceptionImpl;-><init>(SLjava/lang/String;)V

    throw v4

    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/RangeImpl;->fDocument:Lorg/apache/xerces/dom/DocumentImpl;

    move-object v5, v1

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v5

    if-eq v4, v5, :cond_3

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/RangeImpl;->fDocument:Lorg/apache/xerces/dom/DocumentImpl;

    move-object v5, v1

    if-eq v4, v5, :cond_3

    new-instance v4, Lorg/w3c/dom/DOMException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x4

    const-string/jumbo v7, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v8, "WRONG_DOCUMENT_ERR"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    :cond_3
    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v5

    iput-object v5, v4, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    const/4 v4, 0x0

    move v2, v4

    move-object v4, v1

    move-object v3, v4

    :goto_0
    move-object v4, v3

    if-nez v4, :cond_6

    move-object v4, v0

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lorg/apache/xerces/dom/RangeImpl;->fEndOffset:I

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/RangeImpl;->getCommonAncestorContainer()Lorg/w3c/dom/Node;

    move-result-object v4

    if-eqz v4, :cond_4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    if-ne v4, v5, :cond_5

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/dom/RangeImpl;->fEndOffset:I

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/dom/RangeImpl;->fStartOffset:I

    if-ge v4, v5, :cond_5

    :cond_4
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/RangeImpl;->collapse(Z)V

    :cond_5
    return-void

    :cond_6
    add-int/lit8 v2, v2, 0x1

    move-object v4, v3

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v3, v4

    goto :goto_0
.end method

.method public setStart(Lorg/w3c/dom/Node;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/ranges/RangeException;,
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/RangeImpl;->fDocument:Lorg/apache/xerces/dom/DocumentImpl;

    iget-boolean v3, v3, Lorg/apache/xerces/dom/DocumentImpl;->errorChecking:Z

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-boolean v3, v3, Lorg/apache/xerces/dom/RangeImpl;->fDetach:Z

    if-eqz v3, :cond_0

    new-instance v3, Lorg/w3c/dom/DOMException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/16 v5, 0xb

    const-string/jumbo v6, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v7, "INVALID_STATE_ERR"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    :cond_0
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lorg/apache/xerces/dom/RangeImpl;->isLegalContainer(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Lorg/apache/xerces/dom/RangeExceptionImpl;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/4 v5, 0x2

    const-string/jumbo v6, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v7, "INVALID_NODE_TYPE_ERR"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/xerces/dom/RangeExceptionImpl;-><init>(SLjava/lang/String;)V

    throw v3

    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/RangeImpl;->fDocument:Lorg/apache/xerces/dom/DocumentImpl;

    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v4

    if-eq v3, v4, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/RangeImpl;->fDocument:Lorg/apache/xerces/dom/DocumentImpl;

    move-object v4, v1

    if-eq v3, v4, :cond_2

    new-instance v3, Lorg/w3c/dom/DOMException;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    const/4 v5, 0x4

    const-string/jumbo v6, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v7, "WRONG_DOCUMENT_ERR"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    :cond_2
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/dom/RangeImpl;->checkIndex(Lorg/w3c/dom/Node;I)V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    move-object v3, v0

    move v4, v2

    iput v4, v3, Lorg/apache/xerces/dom/RangeImpl;->fStartOffset:I

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/RangeImpl;->getCommonAncestorContainer()Lorg/w3c/dom/Node;

    move-result-object v3

    if-eqz v3, :cond_3

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    if-ne v3, v4, :cond_4

    move-object v3, v0

    iget v3, v3, Lorg/apache/xerces/dom/RangeImpl;->fEndOffset:I

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/dom/RangeImpl;->fStartOffset:I

    if-ge v3, v4, :cond_4

    :cond_3
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/RangeImpl;->collapse(Z)V

    :cond_4
    return-void
.end method

.method public setStartAfter(Lorg/w3c/dom/Node;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/ranges/RangeException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/RangeImpl;->fDocument:Lorg/apache/xerces/dom/DocumentImpl;

    iget-boolean v4, v4, Lorg/apache/xerces/dom/DocumentImpl;->errorChecking:Z

    if-eqz v4, :cond_3

    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/dom/RangeImpl;->fDetach:Z

    if-eqz v4, :cond_0

    new-instance v4, Lorg/w3c/dom/DOMException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/16 v6, 0xb

    const-string/jumbo v7, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v8, "INVALID_STATE_ERR"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lorg/apache/xerces/dom/RangeImpl;->hasLegalRootContainer(Lorg/w3c/dom/Node;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lorg/apache/xerces/dom/RangeImpl;->isLegalContainedNode(Lorg/w3c/dom/Node;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    new-instance v4, Lorg/apache/xerces/dom/RangeExceptionImpl;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x2

    const-string/jumbo v7, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v8, "INVALID_NODE_TYPE_ERR"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/xerces/dom/RangeExceptionImpl;-><init>(SLjava/lang/String;)V

    throw v4

    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/RangeImpl;->fDocument:Lorg/apache/xerces/dom/DocumentImpl;

    move-object v5, v1

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v5

    if-eq v4, v5, :cond_3

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/RangeImpl;->fDocument:Lorg/apache/xerces/dom/DocumentImpl;

    move-object v5, v1

    if-eq v4, v5, :cond_3

    new-instance v4, Lorg/w3c/dom/DOMException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x4

    const-string/jumbo v7, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v8, "WRONG_DOCUMENT_ERR"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    :cond_3
    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v5

    iput-object v5, v4, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    const/4 v4, 0x0

    move v2, v4

    move-object v4, v1

    move-object v3, v4

    :goto_0
    move-object v4, v3

    if-nez v4, :cond_6

    move-object v4, v0

    move v5, v2

    iput v5, v4, Lorg/apache/xerces/dom/RangeImpl;->fStartOffset:I

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/RangeImpl;->getCommonAncestorContainer()Lorg/w3c/dom/Node;

    move-result-object v4

    if-eqz v4, :cond_4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    if-ne v4, v5, :cond_5

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/dom/RangeImpl;->fEndOffset:I

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/dom/RangeImpl;->fStartOffset:I

    if-ge v4, v5, :cond_5

    :cond_4
    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/RangeImpl;->collapse(Z)V

    :cond_5
    return-void

    :cond_6
    add-int/lit8 v2, v2, 0x1

    move-object v4, v3

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v3, v4

    goto :goto_0
.end method

.method public setStartBefore(Lorg/w3c/dom/Node;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/ranges/RangeException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/RangeImpl;->fDocument:Lorg/apache/xerces/dom/DocumentImpl;

    iget-boolean v4, v4, Lorg/apache/xerces/dom/DocumentImpl;->errorChecking:Z

    if-eqz v4, :cond_3

    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/dom/RangeImpl;->fDetach:Z

    if-eqz v4, :cond_0

    new-instance v4, Lorg/w3c/dom/DOMException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/16 v6, 0xb

    const-string/jumbo v7, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v8, "INVALID_STATE_ERR"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    :cond_0
    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lorg/apache/xerces/dom/RangeImpl;->hasLegalRootContainer(Lorg/w3c/dom/Node;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lorg/apache/xerces/dom/RangeImpl;->isLegalContainedNode(Lorg/w3c/dom/Node;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    new-instance v4, Lorg/apache/xerces/dom/RangeExceptionImpl;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x2

    const-string/jumbo v7, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v8, "INVALID_NODE_TYPE_ERR"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/apache/xerces/dom/RangeExceptionImpl;-><init>(SLjava/lang/String;)V

    throw v4

    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/RangeImpl;->fDocument:Lorg/apache/xerces/dom/DocumentImpl;

    move-object v5, v1

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v5

    if-eq v4, v5, :cond_3

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/RangeImpl;->fDocument:Lorg/apache/xerces/dom/DocumentImpl;

    move-object v5, v1

    if-eq v4, v5, :cond_3

    new-instance v4, Lorg/w3c/dom/DOMException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x4

    const-string/jumbo v7, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v8, "WRONG_DOCUMENT_ERR"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    :cond_3
    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v5

    iput-object v5, v4, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    const/4 v4, 0x0

    move v2, v4

    move-object v4, v1

    move-object v3, v4

    :goto_0
    move-object v4, v3

    if-nez v4, :cond_6

    move-object v4, v0

    move v5, v2

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Lorg/apache/xerces/dom/RangeImpl;->fStartOffset:I

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/RangeImpl;->getCommonAncestorContainer()Lorg/w3c/dom/Node;

    move-result-object v4

    if-eqz v4, :cond_4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    if-ne v4, v5, :cond_5

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/dom/RangeImpl;->fEndOffset:I

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/dom/RangeImpl;->fStartOffset:I

    if-ge v4, v5, :cond_5

    :cond_4
    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/RangeImpl;->collapse(Z)V

    :cond_5
    return-void

    :cond_6
    add-int/lit8 v2, v2, 0x1

    move-object v4, v3

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v3, v4

    goto :goto_0
.end method

.method signalSplitData(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;I)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lorg/apache/xerces/dom/RangeImpl;->fSplitNode:Lorg/w3c/dom/Node;

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/RangeImpl;->fDocument:Lorg/apache/xerces/dom/DocumentImpl;

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lorg/apache/xerces/dom/DocumentImpl;->splitData(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;I)V

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/apache/xerces/dom/RangeImpl;->fSplitNode:Lorg/w3c/dom/Node;

    return-void
.end method

.method public surroundContents(Lorg/w3c/dom/Node;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;,
            Lorg/w3c/dom/ranges/RangeException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v6, v1

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    move v2, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/RangeImpl;->fDocument:Lorg/apache/xerces/dom/DocumentImpl;

    iget-boolean v6, v6, Lorg/apache/xerces/dom/DocumentImpl;->errorChecking:Z

    if-eqz v6, :cond_3

    move-object v6, v0

    iget-boolean v6, v6, Lorg/apache/xerces/dom/RangeImpl;->fDetach:Z

    if-eqz v6, :cond_1

    new-instance v6, Lorg/w3c/dom/DOMException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/16 v8, 0xb

    const-string/jumbo v9, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v10, "INVALID_STATE_ERR"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v6

    :cond_1
    move v6, v2

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    move v6, v2

    const/4 v7, 0x6

    if-eq v6, v7, :cond_2

    move v6, v2

    const/16 v7, 0xc

    if-eq v6, v7, :cond_2

    move v6, v2

    const/16 v7, 0xa

    if-eq v6, v7, :cond_2

    move v6, v2

    const/16 v7, 0x9

    if-eq v6, v7, :cond_2

    move v6, v2

    const/16 v7, 0xb

    if-ne v6, v7, :cond_3

    :cond_2
    new-instance v6, Lorg/apache/xerces/dom/RangeExceptionImpl;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x2

    const-string/jumbo v9, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v10, "INVALID_NODE_TYPE_ERR"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/xerces/dom/RangeExceptionImpl;-><init>(SLjava/lang/String;)V

    throw v6

    :cond_3
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    move-object v3, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    move-object v4, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v3, v6

    :cond_4
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_5

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v4, v6

    :cond_5
    move-object v6, v3

    move-object v7, v4

    if-eq v6, v7, :cond_6

    new-instance v6, Lorg/apache/xerces/dom/RangeExceptionImpl;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/4 v8, 0x1

    const-string/jumbo v9, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v10, "BAD_BOUNDARYPOINTS_ERR"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/apache/xerces/dom/RangeExceptionImpl;-><init>(SLjava/lang/String;)V

    throw v6

    :cond_6
    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/dom/RangeImpl;->extractContents()Lorg/w3c/dom/DocumentFragment;

    move-result-object v6

    move-object v5, v6

    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Lorg/apache/xerces/dom/RangeImpl;->insertNode(Lorg/w3c/dom/Node;)V

    move-object v6, v1

    move-object v7, v5

    invoke-interface {v6, v7}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Lorg/apache/xerces/dom/RangeImpl;->selectNode(Lorg/w3c/dom/Node;)V

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    move-object v0, p0

    move-object v5, v0

    iget-boolean v5, v5, Lorg/apache/xerces/dom/RangeImpl;->fDetach:Z

    if-eqz v5, :cond_0

    new-instance v5, Lorg/w3c/dom/DOMException;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/16 v7, 0xb

    const-string/jumbo v8, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v9, "INVALID_STATE_ERR"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    move-object v1, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    move-object v2, v5

    new-instance v5, Ljava/lang/StringBuffer;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    move-object v3, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_8

    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    if-ne v5, v6, :cond_2

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/dom/RangeImpl;->fStartOffset:I

    move-object v8, v0

    iget v8, v8, Lorg/apache/xerces/dom/RangeImpl;->fEndOffset:I

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    :goto_0
    return-object v0

    :cond_2
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/dom/RangeImpl;->fStartOffset:I

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    move-object v5, v0

    move-object v6, v1

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/dom/RangeImpl;->nextNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v1, v5

    :cond_3
    :goto_1
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_5

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/dom/RangeImpl;->fEndOffset:I

    move v4, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v2, v5

    :goto_2
    move v5, v4

    if-lez v5, :cond_4

    move-object v5, v2

    if-nez v5, :cond_b

    :cond_4
    move-object v5, v2

    if-nez v5, :cond_5

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/dom/RangeImpl;->nextNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v2, v5

    :cond_5
    :goto_3
    move-object v5, v1

    move-object v6, v2

    if-ne v5, v6, :cond_c

    :goto_4
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_6

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_7

    :cond_6
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/RangeImpl;->fEndContainer:Lorg/w3c/dom/Node;

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v8, v0

    iget v8, v8, Lorg/apache/xerces/dom/RangeImpl;->fEndOffset:I

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    :cond_7
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    goto/16 :goto_0

    :cond_8
    move-object v5, v1

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v1, v5

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/dom/RangeImpl;->fStartOffset:I

    if-lez v5, :cond_9

    const/4 v5, 0x0

    move v4, v5

    :goto_5
    move v5, v4

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/dom/RangeImpl;->fStartOffset:I

    if-ge v5, v6, :cond_9

    move-object v5, v1

    if-nez v5, :cond_a

    :cond_9
    move-object v5, v1

    if-nez v5, :cond_3

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/RangeImpl;->fStartContainer:Lorg/w3c/dom/Node;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/dom/RangeImpl;->nextNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v1, v5

    goto/16 :goto_1

    :cond_a
    move-object v5, v1

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_b
    add-int/lit8 v4, v4, -0x1

    move-object v5, v2

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v2, v5

    goto :goto_2

    :cond_c
    move-object v5, v1

    if-nez v5, :cond_d

    goto :goto_4

    :cond_d
    move-object v5, v1

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_e

    move-object v5, v1

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_f

    :cond_e
    move-object v5, v3

    move-object v6, v1

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    :cond_f
    move-object v5, v0

    move-object v6, v1

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/dom/RangeImpl;->nextNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v1, v5

    goto/16 :goto_3
.end method
