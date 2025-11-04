.class public Lorg/apache/xerces/dom/DocumentImpl;
.super Lorg/apache/xerces/dom/CoreDocumentImpl;

# interfaces
.implements Lorg/w3c/dom/traversal/DocumentTraversal;
.implements Lorg/w3c/dom/events/DocumentEvent;
.implements Lorg/w3c/dom/ranges/DocumentRange;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/dom/DocumentImpl$EnclosingAttr;,
        Lorg/apache/xerces/dom/DocumentImpl$LEntry;
    }
.end annotation


# static fields
.field static final serialVersionUID:J = 0x728175aac81fa76L


# instance fields
.field protected eventListeners:Ljava/util/Hashtable;

.field protected transient iteratorReferenceQueue:Ljava/lang/ref/ReferenceQueue;

.field protected transient iterators:Ljava/util/List;

.field protected mutationEvents:Z

.field protected transient rangeReferenceQueue:Ljava/lang/ref/ReferenceQueue;

.field protected transient ranges:Ljava/util/List;

.field savedEnclosingAttr:Lorg/apache/xerces/dom/DocumentImpl$EnclosingAttr;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lorg/apache/xerces/dom/CoreDocumentImpl;-><init>()V

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xerces/dom/DocumentImpl;->mutationEvents:Z

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/DocumentType;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lorg/apache/xerces/dom/CoreDocumentImpl;-><init>(Lorg/w3c/dom/DocumentType;)V

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xerces/dom/DocumentImpl;->mutationEvents:Z

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/DocumentType;Z)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Lorg/apache/xerces/dom/CoreDocumentImpl;-><init>(Lorg/w3c/dom/DocumentType;Z)V

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lorg/apache/xerces/dom/DocumentImpl;->mutationEvents:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lorg/apache/xerces/dom/CoreDocumentImpl;-><init>(Z)V

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xerces/dom/DocumentImpl;->mutationEvents:Z

    return-void
.end method

.method private mutationEventsInsertedNode(Lorg/apache/xerces/dom/NodeImpl;Lorg/apache/xerces/dom/NodeImpl;Z)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const-string/jumbo v8, "DOMNodeInserted"

    invoke-static {v8}, Lorg/apache/xerces/dom/LCount;->lookup(Ljava/lang/String;)Lorg/apache/xerces/dom/LCount;

    move-result-object v8

    move-object v4, v8

    move-object v8, v4

    iget v8, v8, Lorg/apache/xerces/dom/LCount;->total:I

    if-lez v8, :cond_0

    new-instance v8, Lorg/apache/xerces/dom/events/MutationEventImpl;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    invoke-direct {v9}, Lorg/apache/xerces/dom/events/MutationEventImpl;-><init>()V

    move-object v5, v8

    move-object v8, v5

    const-string/jumbo v9, "DOMNodeInserted"

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v12, v1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v8 .. v16}, Lorg/apache/xerces/dom/events/MutationEventImpl;->initMutationEvent(Ljava/lang/String;ZZLorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V

    move-object v8, v0

    move-object v9, v2

    move-object v10, v5

    invoke-virtual {v8, v9, v10}, Lorg/apache/xerces/dom/DocumentImpl;->dispatchEvent(Lorg/apache/xerces/dom/NodeImpl;Lorg/w3c/dom/events/Event;)Z

    move-result v8

    :cond_0
    const-string/jumbo v8, "DOMNodeInsertedIntoDocument"

    invoke-static {v8}, Lorg/apache/xerces/dom/LCount;->lookup(Ljava/lang/String;)Lorg/apache/xerces/dom/LCount;

    move-result-object v8

    move-object v4, v8

    move-object v8, v4

    iget v8, v8, Lorg/apache/xerces/dom/LCount;->total:I

    if-lez v8, :cond_2

    move-object v8, v1

    move-object v5, v8

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DocumentImpl;->savedEnclosingAttr:Lorg/apache/xerces/dom/DocumentImpl$EnclosingAttr;

    if-eqz v8, :cond_1

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DocumentImpl;->savedEnclosingAttr:Lorg/apache/xerces/dom/DocumentImpl$EnclosingAttr;

    iget-object v8, v8, Lorg/apache/xerces/dom/DocumentImpl$EnclosingAttr;->node:Lorg/apache/xerces/dom/AttrImpl;

    invoke-virtual {v8}, Lorg/apache/xerces/dom/AttrImpl;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v8

    check-cast v8, Lorg/apache/xerces/dom/NodeImpl;

    move-object v5, v8

    :cond_1
    move-object v8, v5

    if-eqz v8, :cond_2

    move-object v8, v5

    move-object v6, v8

    :goto_0
    move-object v8, v6

    if-nez v8, :cond_4

    move-object v8, v5

    invoke-virtual {v8}, Lorg/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v8

    const/16 v9, 0x9

    if-ne v8, v9, :cond_2

    new-instance v8, Lorg/apache/xerces/dom/events/MutationEventImpl;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    invoke-direct {v9}, Lorg/apache/xerces/dom/events/MutationEventImpl;-><init>()V

    move-object v7, v8

    move-object v8, v7

    const-string/jumbo v9, "DOMNodeInsertedIntoDocument"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v8 .. v16}, Lorg/apache/xerces/dom/events/MutationEventImpl;->initMutationEvent(Ljava/lang/String;ZZLorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V

    move-object v8, v0

    move-object v9, v2

    move-object v10, v7

    invoke-virtual {v8, v9, v10}, Lorg/apache/xerces/dom/DocumentImpl;->dispatchEventToSubtree(Lorg/w3c/dom/Node;Lorg/w3c/dom/events/Event;)V

    :cond_2
    move v8, v3

    if-nez v8, :cond_3

    move-object v8, v0

    move-object v9, v1

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/dom/DocumentImpl;->savedEnclosingAttr:Lorg/apache/xerces/dom/DocumentImpl$EnclosingAttr;

    invoke-virtual {v8, v9, v10}, Lorg/apache/xerces/dom/DocumentImpl;->dispatchAggregateEvents(Lorg/apache/xerces/dom/NodeImpl;Lorg/apache/xerces/dom/DocumentImpl$EnclosingAttr;)V

    :cond_3
    return-void

    :cond_4
    move-object v8, v6

    move-object v5, v8

    move-object v8, v6

    invoke-virtual {v8}, Lorg/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    move-object v8, v6

    check-cast v8, Lorg/apache/xerces/dom/AttrImpl;

    invoke-virtual {v8}, Lorg/apache/xerces/dom/AttrImpl;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v8

    check-cast v8, Lorg/apache/xerces/dom/NodeImpl;

    move-object v6, v8

    goto :goto_0

    :cond_5
    move-object v8, v6

    invoke-virtual {v8}, Lorg/apache/xerces/dom/NodeImpl;->parentNode()Lorg/apache/xerces/dom/NodeImpl;

    move-result-object v8

    move-object v6, v8

    goto :goto_0
.end method

.method private mutationEventsModifiedCharacterData(Lorg/apache/xerces/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move v7, v4

    if-nez v7, :cond_1

    const-string/jumbo v7, "DOMCharacterDataModified"

    invoke-static {v7}, Lorg/apache/xerces/dom/LCount;->lookup(Ljava/lang/String;)Lorg/apache/xerces/dom/LCount;

    move-result-object v7

    move-object v5, v7

    move-object v7, v5

    iget v7, v7, Lorg/apache/xerces/dom/LCount;->total:I

    if-lez v7, :cond_0

    new-instance v7, Lorg/apache/xerces/dom/events/MutationEventImpl;

    move-object/from16 v16, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v16

    invoke-direct {v8}, Lorg/apache/xerces/dom/events/MutationEventImpl;-><init>()V

    move-object v6, v7

    move-object v7, v6

    const-string/jumbo v8, "DOMCharacterDataModified"

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v12, v2

    move-object v13, v3

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface/range {v7 .. v15}, Lorg/w3c/dom/events/MutationEvent;->initMutationEvent(Ljava/lang/String;ZZLorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V

    move-object v7, v0

    move-object v8, v1

    move-object v9, v6

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/dom/DocumentImpl;->dispatchEvent(Lorg/apache/xerces/dom/NodeImpl;Lorg/w3c/dom/events/Event;)Z

    move-result v7

    :cond_0
    move-object v7, v0

    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/DocumentImpl;->savedEnclosingAttr:Lorg/apache/xerces/dom/DocumentImpl$EnclosingAttr;

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/dom/DocumentImpl;->dispatchAggregateEvents(Lorg/apache/xerces/dom/NodeImpl;Lorg/apache/xerces/dom/DocumentImpl$EnclosingAttr;)V

    :cond_1
    return-void
.end method

.method private mutationEventsRemovedAttrNode(Lorg/apache/xerces/dom/AttrImpl;Lorg/apache/xerces/dom/NodeImpl;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string/jumbo v6, "DOMAttrModified"

    invoke-static {v6}, Lorg/apache/xerces/dom/LCount;->lookup(Ljava/lang/String;)Lorg/apache/xerces/dom/LCount;

    move-result-object v6

    move-object v4, v6

    move-object v6, v4

    iget v6, v6, Lorg/apache/xerces/dom/LCount;->total:I

    if-lez v6, :cond_0

    new-instance v6, Lorg/apache/xerces/dom/events/MutationEventImpl;

    move-object v15, v6

    move-object v6, v15

    move-object v7, v15

    invoke-direct {v7}, Lorg/apache/xerces/dom/events/MutationEventImpl;-><init>()V

    move-object v5, v6

    move-object v6, v5

    const-string/jumbo v7, "DOMAttrModified"

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v10, v1

    move-object v11, v1

    invoke-virtual {v11}, Lorg/apache/xerces/dom/AttrImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    move-object v13, v3

    const/4 v14, 0x3

    invoke-virtual/range {v6 .. v14}, Lorg/apache/xerces/dom/events/MutationEventImpl;->initMutationEvent(Ljava/lang/String;ZZLorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V

    move-object v6, v0

    move-object v7, v2

    move-object v8, v5

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/dom/DocumentImpl;->dispatchEvent(Lorg/apache/xerces/dom/NodeImpl;Lorg/w3c/dom/events/Event;)Z

    move-result v6

    :cond_0
    move-object v6, v0

    move-object v7, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Lorg/apache/xerces/dom/DocumentImpl;->dispatchAggregateEvents(Lorg/apache/xerces/dom/NodeImpl;Lorg/apache/xerces/dom/AttrImpl;Ljava/lang/String;S)V

    return-void
.end method

.method private mutationEventsRemovingNode(Lorg/apache/xerces/dom/NodeImpl;Lorg/apache/xerces/dom/NodeImpl;Z)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move v8, v3

    if-nez v8, :cond_0

    move-object v8, v0

    move-object v9, v1

    invoke-virtual {v8, v9}, Lorg/apache/xerces/dom/DocumentImpl;->saveEnclosingAttr(Lorg/apache/xerces/dom/NodeImpl;)V

    :cond_0
    const-string/jumbo v8, "DOMNodeRemoved"

    invoke-static {v8}, Lorg/apache/xerces/dom/LCount;->lookup(Ljava/lang/String;)Lorg/apache/xerces/dom/LCount;

    move-result-object v8

    move-object v4, v8

    move-object v8, v4

    iget v8, v8, Lorg/apache/xerces/dom/LCount;->total:I

    if-lez v8, :cond_1

    new-instance v8, Lorg/apache/xerces/dom/events/MutationEventImpl;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    invoke-direct {v9}, Lorg/apache/xerces/dom/events/MutationEventImpl;-><init>()V

    move-object v5, v8

    move-object v8, v5

    const-string/jumbo v9, "DOMNodeRemoved"

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v12, v1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v8 .. v16}, Lorg/apache/xerces/dom/events/MutationEventImpl;->initMutationEvent(Ljava/lang/String;ZZLorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V

    move-object v8, v0

    move-object v9, v2

    move-object v10, v5

    invoke-virtual {v8, v9, v10}, Lorg/apache/xerces/dom/DocumentImpl;->dispatchEvent(Lorg/apache/xerces/dom/NodeImpl;Lorg/w3c/dom/events/Event;)Z

    move-result v8

    :cond_1
    const-string/jumbo v8, "DOMNodeRemovedFromDocument"

    invoke-static {v8}, Lorg/apache/xerces/dom/LCount;->lookup(Ljava/lang/String;)Lorg/apache/xerces/dom/LCount;

    move-result-object v8

    move-object v4, v8

    move-object v8, v4

    iget v8, v8, Lorg/apache/xerces/dom/LCount;->total:I

    if-lez v8, :cond_3

    move-object v8, v0

    move-object v5, v8

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DocumentImpl;->savedEnclosingAttr:Lorg/apache/xerces/dom/DocumentImpl$EnclosingAttr;

    if-eqz v8, :cond_2

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DocumentImpl;->savedEnclosingAttr:Lorg/apache/xerces/dom/DocumentImpl$EnclosingAttr;

    iget-object v8, v8, Lorg/apache/xerces/dom/DocumentImpl$EnclosingAttr;->node:Lorg/apache/xerces/dom/AttrImpl;

    invoke-virtual {v8}, Lorg/apache/xerces/dom/AttrImpl;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v8

    check-cast v8, Lorg/apache/xerces/dom/NodeImpl;

    move-object v5, v8

    :cond_2
    move-object v8, v5

    if-eqz v8, :cond_3

    move-object v8, v5

    invoke-virtual {v8}, Lorg/apache/xerces/dom/NodeImpl;->parentNode()Lorg/apache/xerces/dom/NodeImpl;

    move-result-object v8

    move-object v6, v8

    :goto_0
    move-object v8, v6

    if-nez v8, :cond_4

    move-object v8, v5

    invoke-virtual {v8}, Lorg/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v8

    const/16 v9, 0x9

    if-ne v8, v9, :cond_3

    new-instance v8, Lorg/apache/xerces/dom/events/MutationEventImpl;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    invoke-direct {v9}, Lorg/apache/xerces/dom/events/MutationEventImpl;-><init>()V

    move-object v7, v8

    move-object v8, v7

    const-string/jumbo v9, "DOMNodeRemovedFromDocument"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v8 .. v16}, Lorg/apache/xerces/dom/events/MutationEventImpl;->initMutationEvent(Ljava/lang/String;ZZLorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V

    move-object v8, v0

    move-object v9, v2

    move-object v10, v7

    invoke-virtual {v8, v9, v10}, Lorg/apache/xerces/dom/DocumentImpl;->dispatchEventToSubtree(Lorg/w3c/dom/Node;Lorg/w3c/dom/events/Event;)V

    :cond_3
    return-void

    :cond_4
    move-object v8, v6

    move-object v5, v8

    move-object v8, v6

    invoke-virtual {v8}, Lorg/apache/xerces/dom/NodeImpl;->parentNode()Lorg/apache/xerces/dom/NodeImpl;

    move-result-object v8

    move-object v6, v8

    goto :goto_0
.end method

.method private notifyIteratorsRemovingNode(Lorg/apache/xerces/dom/NodeImpl;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    invoke-direct {v4}, Lorg/apache/xerces/dom/DocumentImpl;->removeStaleIteratorReferences()V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DocumentImpl;->iterators:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/Reference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/dom/NodeIteratorImpl;

    move-object v3, v4

    move-object v4, v3

    if-eqz v4, :cond_1

    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/NodeIteratorImpl;->removeNode(Lorg/w3c/dom/Node;)V

    goto :goto_0

    :cond_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private notifyRangesDeletedText(Lorg/apache/xerces/dom/CharacterDataImpl;II)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, v0

    invoke-direct {v6}, Lorg/apache/xerces/dom/DocumentImpl;->removeStaleRangeReferences()V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DocumentImpl;->ranges:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_0
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    return-void

    :cond_0
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/Reference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/xerces/dom/RangeImpl;

    move-object v5, v6

    move-object v6, v5

    if-eqz v6, :cond_1

    move-object v6, v5

    move-object v7, v1

    move v8, v2

    move v9, v3

    invoke-virtual {v6, v7, v8, v9}, Lorg/apache/xerces/dom/RangeImpl;->receiveDeletedText(Lorg/apache/xerces/dom/CharacterDataImpl;II)V

    goto :goto_0

    :cond_1
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private notifyRangesInsertedNode(Lorg/apache/xerces/dom/NodeImpl;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    invoke-direct {v4}, Lorg/apache/xerces/dom/DocumentImpl;->removeStaleRangeReferences()V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DocumentImpl;->ranges:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/Reference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/dom/RangeImpl;

    move-object v3, v4

    move-object v4, v3

    if-eqz v4, :cond_1

    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/RangeImpl;->insertedNodeFromDOM(Lorg/w3c/dom/Node;)V

    goto :goto_0

    :cond_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private notifyRangesInsertedText(Lorg/apache/xerces/dom/CharacterDataImpl;II)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, v0

    invoke-direct {v6}, Lorg/apache/xerces/dom/DocumentImpl;->removeStaleRangeReferences()V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DocumentImpl;->ranges:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_0
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    return-void

    :cond_0
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/Reference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/xerces/dom/RangeImpl;

    move-object v5, v6

    move-object v6, v5

    if-eqz v6, :cond_1

    move-object v6, v5

    move-object v7, v1

    move v8, v2

    move v9, v3

    invoke-virtual {v6, v7, v8, v9}, Lorg/apache/xerces/dom/RangeImpl;->receiveInsertedText(Lorg/apache/xerces/dom/CharacterDataImpl;II)V

    goto :goto_0

    :cond_1
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private notifyRangesRemovingNode(Lorg/apache/xerces/dom/NodeImpl;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    invoke-direct {v4}, Lorg/apache/xerces/dom/DocumentImpl;->removeStaleRangeReferences()V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DocumentImpl;->ranges:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/Reference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/dom/RangeImpl;

    move-object v3, v4

    move-object v4, v3

    if-eqz v4, :cond_1

    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/RangeImpl;->removeNode(Lorg/w3c/dom/Node;)V

    goto :goto_0

    :cond_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private notifyRangesReplacedText(Lorg/apache/xerces/dom/CharacterDataImpl;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    invoke-direct {v4}, Lorg/apache/xerces/dom/DocumentImpl;->removeStaleRangeReferences()V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DocumentImpl;->ranges:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/Reference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/dom/RangeImpl;

    move-object v3, v4

    move-object v4, v3

    if-eqz v4, :cond_1

    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/RangeImpl;->receiveReplacedText(Lorg/apache/xerces/dom/CharacterDataImpl;)V

    goto :goto_0

    :cond_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private notifyRangesSplitData(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;I)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, v0

    invoke-direct {v6}, Lorg/apache/xerces/dom/DocumentImpl;->removeStaleRangeReferences()V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DocumentImpl;->ranges:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_0
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    return-void

    :cond_0
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/Reference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/xerces/dom/RangeImpl;

    move-object v5, v6

    move-object v6, v5

    if-eqz v6, :cond_1

    move-object v6, v5

    move-object v7, v1

    move-object v8, v2

    move v9, v3

    invoke-virtual {v6, v7, v8, v9}, Lorg/apache/xerces/dom/RangeImpl;->receiveSplitData(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;I)V

    goto :goto_0

    :cond_1
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private removeStaleIteratorReferences()V
    .locals 4

    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/DocumentImpl;->iteratorReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/DocumentImpl;->iterators:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lorg/apache/xerces/dom/DocumentImpl;->removeStaleReferences(Ljava/lang/ref/ReferenceQueue;Ljava/util/List;)V

    return-void
.end method

.method private removeStaleRangeReferences()V
    .locals 4

    move-object v0, p0

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/DocumentImpl;->rangeReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/DocumentImpl;->ranges:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lorg/apache/xerces/dom/DocumentImpl;->removeStaleReferences(Ljava/lang/ref/ReferenceQueue;Ljava/util/List;)V

    return-void
.end method

.method private removeStaleReferences(Ljava/lang/ref/ReferenceQueue;Ljava/util/List;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v7

    move-object v3, v7

    const/4 v7, 0x0

    move v4, v7

    :goto_0
    move-object v7, v3

    if-nez v7, :cond_2

    move v7, v4

    if-lez v7, :cond_1

    move-object v7, v2

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v5, v7

    :cond_0
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    :cond_1
    :goto_1
    return-void

    :cond_2
    add-int/lit8 v4, v4, 0x1

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v7

    move-object v3, v7

    goto :goto_0

    :cond_3
    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/Reference;

    invoke-virtual {v7}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    move-object v7, v6

    if-nez v7, :cond_0

    move-object v7, v5

    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v4, v4, -0x1

    move v7, v4

    if-gtz v7, :cond_0

    goto :goto_1
.end method


# virtual methods
.method protected addEventListener(Lorg/apache/xerces/dom/NodeImpl;Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object v7, v2

    if-eqz v7, :cond_0

    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v3

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move v11, v4

    invoke-virtual {v7, v8, v9, v10, v11}, Lorg/apache/xerces/dom/DocumentImpl;->removeEventListener(Lorg/apache/xerces/dom/NodeImpl;Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Lorg/apache/xerces/dom/DocumentImpl;->getEventListeners(Lorg/apache/xerces/dom/NodeImpl;)Ljava/util/Vector;

    move-result-object v7

    move-object v5, v7

    move-object v7, v5

    if-nez v7, :cond_2

    new-instance v7, Ljava/util/Vector;

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    move-object v5, v7

    move-object v7, v0

    move-object v8, v1

    move-object v9, v5

    invoke-virtual {v7, v8, v9}, Lorg/apache/xerces/dom/DocumentImpl;->setEventListeners(Lorg/apache/xerces/dom/NodeImpl;Ljava/util/Vector;)V

    :cond_2
    move-object v7, v5

    new-instance v8, Lorg/apache/xerces/dom/DocumentImpl$LEntry;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v0

    move-object v11, v2

    move-object v12, v3

    move v13, v4

    invoke-direct {v9, v10, v11, v12, v13}, Lorg/apache/xerces/dom/DocumentImpl$LEntry;-><init>(Lorg/apache/xerces/dom/DocumentImpl;Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    invoke-virtual {v7, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move-object v7, v2

    invoke-static {v7}, Lorg/apache/xerces/dom/LCount;->lookup(Ljava/lang/String;)Lorg/apache/xerces/dom/LCount;

    move-result-object v7

    move-object v6, v7

    move v7, v4

    if-eqz v7, :cond_3

    move-object v7, v6

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    iget v8, v8, Lorg/apache/xerces/dom/LCount;->captures:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lorg/apache/xerces/dom/LCount;->captures:I

    move-object v7, v6

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    iget v8, v8, Lorg/apache/xerces/dom/LCount;->total:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lorg/apache/xerces/dom/LCount;->total:I

    :goto_1
    goto :goto_0

    :cond_3
    move-object v7, v6

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    iget v8, v8, Lorg/apache/xerces/dom/LCount;->bubbles:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lorg/apache/xerces/dom/LCount;->bubbles:I

    move-object v7, v6

    move-object v14, v7

    move-object v7, v14

    move-object v8, v14

    iget v8, v8, Lorg/apache/xerces/dom/LCount;->total:I

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lorg/apache/xerces/dom/LCount;->total:I

    goto :goto_1
.end method

.method public cloneNode(Z)Lorg/w3c/dom/Node;
    .locals 8

    move-object v0, p0

    move v1, p1

    new-instance v3, Lorg/apache/xerces/dom/DocumentImpl;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Lorg/apache/xerces/dom/DocumentImpl;-><init>()V

    move-object v2, v3

    move-object v3, v0

    move-object v4, v0

    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lorg/apache/xerces/dom/DocumentImpl;->callUserDataHandlers(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;S)V

    move-object v3, v0

    move-object v4, v2

    move v5, v1

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/dom/DocumentImpl;->cloneNode(Lorg/apache/xerces/dom/CoreDocumentImpl;Z)V

    move-object v3, v2

    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/dom/DocumentImpl;->mutationEvents:Z

    iput-boolean v4, v3, Lorg/apache/xerces/dom/DocumentImpl;->mutationEvents:Z

    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method protected copyEventListeners(Lorg/apache/xerces/dom/NodeImpl;Lorg/apache/xerces/dom/NodeImpl;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/DocumentImpl;->getEventListeners(Lorg/apache/xerces/dom/NodeImpl;)Ljava/util/Vector;

    move-result-object v4

    move-object v3, v4

    move-object v4, v3

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v4, v0

    move-object v5, v2

    move-object v6, v3

    invoke-virtual {v6}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Vector;

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/dom/DocumentImpl;->setEventListeners(Lorg/apache/xerces/dom/NodeImpl;Ljava/util/Vector;)V

    goto :goto_0
.end method

.method public createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    const-string/jumbo v4, "Events"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "Event"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    new-instance v3, Lorg/apache/xerces/dom/events/EventImpl;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Lorg/apache/xerces/dom/events/EventImpl;-><init>()V

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_1
    move-object v3, v1

    const-string/jumbo v4, "MutationEvents"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "MutationEvent"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    new-instance v3, Lorg/apache/xerces/dom/events/MutationEventImpl;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Lorg/apache/xerces/dom/events/MutationEventImpl;-><init>()V

    move-object v0, v3

    goto :goto_0

    :cond_3
    move-object v3, v1

    const-string/jumbo v4, "UIEvents"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "UIEvent"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    new-instance v3, Lorg/apache/xerces/dom/events/UIEventImpl;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Lorg/apache/xerces/dom/events/UIEventImpl;-><init>()V

    move-object v0, v3

    goto :goto_0

    :cond_5
    move-object v3, v1

    const-string/jumbo v4, "MouseEvents"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string/jumbo v3, "MouseEvent"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    new-instance v3, Lorg/apache/xerces/dom/events/MouseEventImpl;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Lorg/apache/xerces/dom/events/MouseEventImpl;-><init>()V

    move-object v0, v3

    goto :goto_0

    :cond_7
    const-string/jumbo v3, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v4, "NOT_SUPPORTED_ERR"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    new-instance v3, Lorg/w3c/dom/DOMException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/16 v5, 0x9

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3
.end method

.method public createNodeIterator(Lorg/w3c/dom/Node;ILorg/w3c/dom/traversal/NodeFilter;Z)Lorg/w3c/dom/traversal/NodeIterator;
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object v6, v1

    if-nez v6, :cond_0

    const-string/jumbo v6, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v7, "NOT_SUPPORTED_ERR"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    new-instance v6, Lorg/w3c/dom/DOMException;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const/16 v8, 0x9

    move-object v9, v5

    invoke-direct {v7, v8, v9}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v6

    :cond_0
    new-instance v6, Lorg/apache/xerces/dom/NodeIteratorImpl;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v0

    move-object v9, v1

    move v10, v2

    move-object v11, v3

    move v12, v4

    invoke-direct/range {v7 .. v12}, Lorg/apache/xerces/dom/NodeIteratorImpl;-><init>(Lorg/apache/xerces/dom/DocumentImpl;Lorg/w3c/dom/Node;ILorg/w3c/dom/traversal/NodeFilter;Z)V

    move-object v5, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DocumentImpl;->iterators:Ljava/util/List;

    if-nez v6, :cond_1

    move-object v6, v0

    new-instance v7, Ljava/util/LinkedList;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    iput-object v7, v6, Lorg/apache/xerces/dom/DocumentImpl;->iterators:Ljava/util/List;

    move-object v6, v0

    new-instance v7, Ljava/lang/ref/ReferenceQueue;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    invoke-direct {v8}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v7, v6, Lorg/apache/xerces/dom/DocumentImpl;->iteratorReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    :cond_1
    move-object v6, v0

    invoke-direct {v6}, Lorg/apache/xerces/dom/DocumentImpl;->removeStaleIteratorReferences()V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DocumentImpl;->iterators:Ljava/util/List;

    new-instance v7, Ljava/lang/ref/WeakReference;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v9, v5

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/dom/DocumentImpl;->iteratorReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v8, v9, v10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v6

    move-object v6, v5

    move-object v0, v6

    return-object v0
.end method

.method public createNodeIterator(Lorg/w3c/dom/Node;SLorg/w3c/dom/traversal/NodeFilter;)Lorg/w3c/dom/traversal/NodeIterator;
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    const/4 v8, 0x1

    invoke-virtual {v4, v5, v6, v7, v8}, Lorg/apache/xerces/dom/DocumentImpl;->createNodeIterator(Lorg/w3c/dom/Node;ILorg/w3c/dom/traversal/NodeFilter;Z)Lorg/w3c/dom/traversal/NodeIterator;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public createRange()Lorg/w3c/dom/ranges/Range;
    .locals 8

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/DocumentImpl;->ranges:Ljava/util/List;

    if-nez v2, :cond_0

    move-object v2, v0

    new-instance v3, Ljava/util/LinkedList;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/dom/DocumentImpl;->ranges:Ljava/util/List;

    move-object v2, v0

    new-instance v3, Ljava/lang/ref/ReferenceQueue;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/dom/DocumentImpl;->rangeReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    :cond_0
    new-instance v2, Lorg/apache/xerces/dom/RangeImpl;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    invoke-direct {v3, v4}, Lorg/apache/xerces/dom/RangeImpl;-><init>(Lorg/apache/xerces/dom/DocumentImpl;)V

    move-object v1, v2

    move-object v2, v0

    invoke-direct {v2}, Lorg/apache/xerces/dom/DocumentImpl;->removeStaleRangeReferences()V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/DocumentImpl;->ranges:Ljava/util/List;

    new-instance v3, Ljava/lang/ref/WeakReference;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/DocumentImpl;->rangeReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v4, v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public createTreeWalker(Lorg/w3c/dom/Node;ILorg/w3c/dom/traversal/NodeFilter;Z)Lorg/w3c/dom/traversal/TreeWalker;
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object v6, v1

    if-nez v6, :cond_0

    const-string/jumbo v6, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v7, "NOT_SUPPORTED_ERR"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    new-instance v6, Lorg/w3c/dom/DOMException;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const/16 v8, 0x9

    move-object v9, v5

    invoke-direct {v7, v8, v9}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v6

    :cond_0
    new-instance v6, Lorg/apache/xerces/dom/TreeWalkerImpl;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v1

    move v9, v2

    move-object v10, v3

    move v11, v4

    invoke-direct {v7, v8, v9, v10, v11}, Lorg/apache/xerces/dom/TreeWalkerImpl;-><init>(Lorg/w3c/dom/Node;ILorg/w3c/dom/traversal/NodeFilter;Z)V

    move-object v0, v6

    return-object v0
.end method

.method public createTreeWalker(Lorg/w3c/dom/Node;SLorg/w3c/dom/traversal/NodeFilter;)Lorg/w3c/dom/traversal/TreeWalker;
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    const/4 v8, 0x1

    invoke-virtual {v4, v5, v6, v7, v8}, Lorg/apache/xerces/dom/DocumentImpl;->createTreeWalker(Lorg/w3c/dom/Node;ILorg/w3c/dom/traversal/NodeFilter;Z)Lorg/w3c/dom/traversal/TreeWalker;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method deletedText(Lorg/apache/xerces/dom/CharacterDataImpl;II)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DocumentImpl;->ranges:Ljava/util/List;

    if-eqz v4, :cond_0

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/xerces/dom/DocumentImpl;->notifyRangesDeletedText(Lorg/apache/xerces/dom/CharacterDataImpl;II)V

    :cond_0
    return-void
.end method

.method protected dispatchAggregateEvents(Lorg/apache/xerces/dom/NodeImpl;Lorg/apache/xerces/dom/AttrImpl;Ljava/lang/String;S)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    const/4 v8, 0x0

    move-object v5, v8

    move-object v8, v2

    if-eqz v8, :cond_0

    const-string/jumbo v8, "DOMAttrModified"

    invoke-static {v8}, Lorg/apache/xerces/dom/LCount;->lookup(Ljava/lang/String;)Lorg/apache/xerces/dom/LCount;

    move-result-object v8

    move-object v6, v8

    move-object v8, v2

    invoke-virtual {v8}, Lorg/apache/xerces/dom/AttrImpl;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v8

    check-cast v8, Lorg/apache/xerces/dom/NodeImpl;

    move-object v5, v8

    move-object v8, v6

    iget v8, v8, Lorg/apache/xerces/dom/LCount;->total:I

    if-lez v8, :cond_0

    move-object v8, v5

    if-eqz v8, :cond_0

    new-instance v8, Lorg/apache/xerces/dom/events/MutationEventImpl;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    invoke-direct {v9}, Lorg/apache/xerces/dom/events/MutationEventImpl;-><init>()V

    move-object v7, v8

    move-object v8, v7

    const-string/jumbo v9, "DOMAttrModified"

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v12, v2

    move-object v13, v3

    move-object v14, v2

    invoke-virtual {v14}, Lorg/apache/xerces/dom/AttrImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    move-object v15, v2

    invoke-virtual {v15}, Lorg/apache/xerces/dom/AttrImpl;->getNodeName()Ljava/lang/String;

    move-result-object v15

    move/from16 v16, v4

    invoke-virtual/range {v8 .. v16}, Lorg/apache/xerces/dom/events/MutationEventImpl;->initMutationEvent(Ljava/lang/String;ZZLorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V

    move-object v8, v5

    move-object v9, v7

    invoke-virtual {v8, v9}, Lorg/apache/xerces/dom/NodeImpl;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    move-result v8

    :cond_0
    const-string/jumbo v8, "DOMSubtreeModified"

    invoke-static {v8}, Lorg/apache/xerces/dom/LCount;->lookup(Ljava/lang/String;)Lorg/apache/xerces/dom/LCount;

    move-result-object v8

    move-object v6, v8

    move-object v8, v6

    iget v8, v8, Lorg/apache/xerces/dom/LCount;->total:I

    if-lez v8, :cond_1

    new-instance v8, Lorg/apache/xerces/dom/events/MutationEventImpl;

    move-object/from16 v17, v8

    move-object/from16 v8, v17

    move-object/from16 v9, v17

    invoke-direct {v9}, Lorg/apache/xerces/dom/events/MutationEventImpl;-><init>()V

    move-object v7, v8

    move-object v8, v7

    const-string/jumbo v9, "DOMSubtreeModified"

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-interface/range {v8 .. v16}, Lorg/w3c/dom/events/MutationEvent;->initMutationEvent(Ljava/lang/String;ZZLorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V

    move-object v8, v2

    if-eqz v8, :cond_2

    move-object v8, v0

    move-object v9, v2

    move-object v10, v7

    invoke-virtual {v8, v9, v10}, Lorg/apache/xerces/dom/DocumentImpl;->dispatchEvent(Lorg/apache/xerces/dom/NodeImpl;Lorg/w3c/dom/events/Event;)Z

    move-result v8

    move-object v8, v5

    if-eqz v8, :cond_1

    move-object v8, v0

    move-object v9, v5

    move-object v10, v7

    invoke-virtual {v8, v9, v10}, Lorg/apache/xerces/dom/DocumentImpl;->dispatchEvent(Lorg/apache/xerces/dom/NodeImpl;Lorg/w3c/dom/events/Event;)Z

    move-result v8

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v8, v0

    move-object v9, v1

    move-object v10, v7

    invoke-virtual {v8, v9, v10}, Lorg/apache/xerces/dom/DocumentImpl;->dispatchEvent(Lorg/apache/xerces/dom/NodeImpl;Lorg/w3c/dom/events/Event;)Z

    move-result v8

    goto :goto_0
.end method

.method protected dispatchAggregateEvents(Lorg/apache/xerces/dom/NodeImpl;Lorg/apache/xerces/dom/DocumentImpl$EnclosingAttr;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    iget-object v5, v5, Lorg/apache/xerces/dom/DocumentImpl$EnclosingAttr;->node:Lorg/apache/xerces/dom/AttrImpl;

    move-object v6, v2

    iget-object v6, v6, Lorg/apache/xerces/dom/DocumentImpl$EnclosingAttr;->oldvalue:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/apache/xerces/dom/DocumentImpl;->dispatchAggregateEvents(Lorg/apache/xerces/dom/NodeImpl;Lorg/apache/xerces/dom/AttrImpl;Ljava/lang/String;S)V

    :goto_0
    return-void

    :cond_0
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/apache/xerces/dom/DocumentImpl;->dispatchAggregateEvents(Lorg/apache/xerces/dom/NodeImpl;Lorg/apache/xerces/dom/AttrImpl;Ljava/lang/String;S)V

    goto :goto_0
.end method

.method protected dispatchEvent(Lorg/apache/xerces/dom/NodeImpl;Lorg/w3c/dom/events/Event;)Z
    .locals 24

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v19, v4

    if-nez v19, :cond_0

    const/16 v19, 0x0

    move/from16 v2, v19

    :goto_0
    return v2

    :cond_0
    move-object/from16 v19, v4

    check-cast v19, Lorg/apache/xerces/dom/events/EventImpl;

    move-object/from16 v5, v19

    move-object/from16 v19, v5

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lorg/apache/xerces/dom/events/EventImpl;->initialized:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v19, v5

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/xerces/dom/events/EventImpl;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v19, v5

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/xerces/dom/events/EventImpl;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    if-nez v19, :cond_2

    :cond_1
    const-string/jumbo v19, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v20, "UNSPECIFIED_EVENT_TYPE_ERR"

    const/16 v21, 0x0

    invoke-static/range {v19 .. v21}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v6, v19

    new-instance v19, Lorg/w3c/dom/events/EventException;

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    const/16 v21, 0x0

    move-object/from16 v22, v6

    invoke-direct/range {v20 .. v22}, Lorg/w3c/dom/events/EventException;-><init>(SLjava/lang/String;)V

    throw v19

    :cond_2
    move-object/from16 v19, v5

    invoke-virtual/range {v19 .. v19}, Lorg/apache/xerces/dom/events/EventImpl;->getType()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lorg/apache/xerces/dom/LCount;->lookup(Ljava/lang/String;)Lorg/apache/xerces/dom/LCount;

    move-result-object v19

    move-object/from16 v6, v19

    move-object/from16 v19, v6

    move-object/from16 v0, v19

    iget v0, v0, Lorg/apache/xerces/dom/LCount;->total:I

    move/from16 v19, v0

    if-nez v19, :cond_3

    move-object/from16 v19, v5

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lorg/apache/xerces/dom/events/EventImpl;->preventDefault:Z

    move/from16 v19, v0

    move/from16 v2, v19

    goto :goto_0

    :cond_3
    move-object/from16 v19, v5

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lorg/apache/xerces/dom/events/EventImpl;->target:Lorg/w3c/dom/events/EventTarget;

    move-object/from16 v19, v5

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lorg/apache/xerces/dom/events/EventImpl;->stopPropagation:Z

    move-object/from16 v19, v5

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lorg/apache/xerces/dom/events/EventImpl;->preventDefault:Z

    new-instance v19, Ljava/util/ArrayList;

    move-object/from16 v23, v19

    move-object/from16 v19, v23

    move-object/from16 v20, v23

    const/16 v21, 0xa

    invoke-direct/range {v20 .. v21}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v7, v19

    move-object/from16 v19, v3

    move-object/from16 v8, v19

    move-object/from16 v19, v8

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v19

    move-object/from16 v9, v19

    :goto_1
    move-object/from16 v19, v9

    if-nez v19, :cond_8

    move-object/from16 v19, v6

    move-object/from16 v0, v19

    iget v0, v0, Lorg/apache/xerces/dom/LCount;->captures:I

    move/from16 v19, v0

    if-lez v19, :cond_4

    move-object/from16 v19, v5

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-short v0, v1, Lorg/apache/xerces/dom/events/EventImpl;->eventPhase:S

    move-object/from16 v19, v7

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    const/16 v20, 0x1

    add-int/lit8 v19, v19, -0x1

    move/from16 v10, v19

    :goto_2
    move/from16 v19, v10

    if-gez v19, :cond_9

    :cond_4
    :goto_3
    move-object/from16 v19, v6

    move-object/from16 v0, v19

    iget v0, v0, Lorg/apache/xerces/dom/LCount;->bubbles:I

    move/from16 v19, v0

    if-lez v19, :cond_6

    move-object/from16 v19, v5

    const/16 v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-short v0, v1, Lorg/apache/xerces/dom/events/EventImpl;->eventPhase:S

    move-object/from16 v19, v5

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lorg/apache/xerces/dom/events/EventImpl;->currentTarget:Lorg/w3c/dom/events/EventTarget;

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    invoke-virtual/range {v19 .. v20}, Lorg/apache/xerces/dom/DocumentImpl;->getEventListeners(Lorg/apache/xerces/dom/NodeImpl;)Ljava/util/Vector;

    move-result-object v19

    move-object/from16 v10, v19

    move-object/from16 v19, v5

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lorg/apache/xerces/dom/events/EventImpl;->stopPropagation:Z

    move/from16 v19, v0

    if-nez v19, :cond_5

    move-object/from16 v19, v10

    if-eqz v19, :cond_5

    move-object/from16 v19, v10

    invoke-virtual/range {v19 .. v19}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Vector;

    move-object/from16 v11, v19

    move-object/from16 v19, v11

    invoke-virtual/range {v19 .. v19}, Ljava/util/Vector;->size()I

    move-result v19

    move/from16 v12, v19

    const/16 v19, 0x0

    move/from16 v13, v19

    :goto_4
    move/from16 v19, v13

    move/from16 v20, v12

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_e

    :cond_5
    move-object/from16 v19, v5

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lorg/apache/xerces/dom/events/EventImpl;->bubbles:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v19, v5

    const/16 v20, 0x3

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput-short v0, v1, Lorg/apache/xerces/dom/events/EventImpl;->eventPhase:S

    move-object/from16 v19, v7

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v11, v19

    const/16 v19, 0x0

    move/from16 v12, v19

    :goto_5
    move/from16 v19, v12

    move/from16 v20, v11

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_10

    :cond_6
    :goto_6
    move-object/from16 v19, v6

    move-object/from16 v0, v19

    iget v0, v0, Lorg/apache/xerces/dom/LCount;->defaults:I

    move/from16 v19, v0

    if-lez v19, :cond_7

    move-object/from16 v19, v5

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lorg/apache/xerces/dom/events/EventImpl;->cancelable:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    move-object/from16 v19, v5

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lorg/apache/xerces/dom/events/EventImpl;->preventDefault:Z

    move/from16 v19, v0

    if-nez v19, :cond_7

    :cond_7
    move-object/from16 v19, v5

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lorg/apache/xerces/dom/events/EventImpl;->preventDefault:Z

    move/from16 v19, v0

    move/from16 v2, v19

    goto/16 :goto_0

    :cond_8
    move-object/from16 v19, v7

    move-object/from16 v20, v9

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v19

    move-object/from16 v19, v9

    move-object/from16 v8, v19

    move-object/from16 v19, v9

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v19

    move-object/from16 v9, v19

    goto/16 :goto_1

    :cond_9
    move-object/from16 v19, v5

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lorg/apache/xerces/dom/events/EventImpl;->stopPropagation:Z

    move/from16 v19, v0

    if-eqz v19, :cond_a

    goto/16 :goto_3

    :cond_a
    move-object/from16 v19, v7

    move/from16 v20, v10

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/apache/xerces/dom/NodeImpl;

    move-object/from16 v11, v19

    move-object/from16 v19, v5

    move-object/from16 v20, v11

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lorg/apache/xerces/dom/events/EventImpl;->currentTarget:Lorg/w3c/dom/events/EventTarget;

    move-object/from16 v19, v2

    move-object/from16 v20, v11

    invoke-virtual/range {v19 .. v20}, Lorg/apache/xerces/dom/DocumentImpl;->getEventListeners(Lorg/apache/xerces/dom/NodeImpl;)Ljava/util/Vector;

    move-result-object v19

    move-object/from16 v12, v19

    move-object/from16 v19, v12

    if-eqz v19, :cond_b

    move-object/from16 v19, v12

    invoke-virtual/range {v19 .. v19}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Vector;

    move-object/from16 v13, v19

    move-object/from16 v19, v13

    invoke-virtual/range {v19 .. v19}, Ljava/util/Vector;->size()I

    move-result v19

    move/from16 v14, v19

    const/16 v19, 0x0

    move/from16 v15, v19

    :goto_7
    move/from16 v19, v15

    move/from16 v20, v14

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_c

    :cond_b
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_2

    :cond_c
    move-object/from16 v19, v13

    move/from16 v20, v15

    invoke-virtual/range {v19 .. v20}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/apache/xerces/dom/DocumentImpl$LEntry;

    move-object/from16 v16, v19

    move-object/from16 v19, v16

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lorg/apache/xerces/dom/DocumentImpl$LEntry;->useCapture:Z

    move/from16 v19, v0

    if-eqz v19, :cond_d

    move-object/from16 v19, v16

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/xerces/dom/DocumentImpl$LEntry;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v20, v5

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/dom/events/EventImpl;->type:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    move-object/from16 v19, v12

    move-object/from16 v20, v16

    invoke-virtual/range {v19 .. v20}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_d

    move-object/from16 v19, v16

    :try_start_0
    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/xerces/dom/DocumentImpl$LEntry;->listener:Lorg/w3c/dom/events/EventListener;

    move-object/from16 v19, v0

    move-object/from16 v20, v5

    invoke-interface/range {v19 .. v20}, Lorg/w3c/dom/events/EventListener;->handleEvent(Lorg/w3c/dom/events/Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_d
    :goto_8
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    :catch_0
    move-exception v19

    move-object/from16 v17, v19

    goto :goto_8

    :cond_e
    move-object/from16 v19, v11

    move/from16 v20, v13

    invoke-virtual/range {v19 .. v20}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/apache/xerces/dom/DocumentImpl$LEntry;

    move-object/from16 v14, v19

    move-object/from16 v19, v14

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lorg/apache/xerces/dom/DocumentImpl$LEntry;->useCapture:Z

    move/from16 v19, v0

    if-nez v19, :cond_f

    move-object/from16 v19, v14

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/xerces/dom/DocumentImpl$LEntry;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v20, v5

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/dom/events/EventImpl;->type:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    move-object/from16 v19, v10

    move-object/from16 v20, v14

    invoke-virtual/range {v19 .. v20}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_f

    move-object/from16 v19, v14

    :try_start_1
    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/xerces/dom/DocumentImpl$LEntry;->listener:Lorg/w3c/dom/events/EventListener;

    move-object/from16 v19, v0

    move-object/from16 v20, v5

    invoke-interface/range {v19 .. v20}, Lorg/w3c/dom/events/EventListener;->handleEvent(Lorg/w3c/dom/events/Event;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_f
    :goto_9
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    :catch_1
    move-exception v19

    move-object/from16 v15, v19

    goto :goto_9

    :cond_10
    move-object/from16 v19, v5

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lorg/apache/xerces/dom/events/EventImpl;->stopPropagation:Z

    move/from16 v19, v0

    if-eqz v19, :cond_11

    goto/16 :goto_6

    :cond_11
    move-object/from16 v19, v7

    move/from16 v20, v12

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/apache/xerces/dom/NodeImpl;

    move-object/from16 v13, v19

    move-object/from16 v19, v5

    move-object/from16 v20, v13

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lorg/apache/xerces/dom/events/EventImpl;->currentTarget:Lorg/w3c/dom/events/EventTarget;

    move-object/from16 v19, v2

    move-object/from16 v20, v13

    invoke-virtual/range {v19 .. v20}, Lorg/apache/xerces/dom/DocumentImpl;->getEventListeners(Lorg/apache/xerces/dom/NodeImpl;)Ljava/util/Vector;

    move-result-object v19

    move-object/from16 v10, v19

    move-object/from16 v19, v10

    if-eqz v19, :cond_12

    move-object/from16 v19, v10

    invoke-virtual/range {v19 .. v19}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Vector;

    move-object/from16 v14, v19

    move-object/from16 v19, v14

    invoke-virtual/range {v19 .. v19}, Ljava/util/Vector;->size()I

    move-result v19

    move/from16 v15, v19

    const/16 v19, 0x0

    move/from16 v16, v19

    :goto_a
    move/from16 v19, v16

    move/from16 v20, v15

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_13

    :cond_12
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_5

    :cond_13
    move-object/from16 v19, v14

    move/from16 v20, v16

    invoke-virtual/range {v19 .. v20}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/apache/xerces/dom/DocumentImpl$LEntry;

    move-object/from16 v17, v19

    move-object/from16 v19, v17

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lorg/apache/xerces/dom/DocumentImpl$LEntry;->useCapture:Z

    move/from16 v19, v0

    if-nez v19, :cond_14

    move-object/from16 v19, v17

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/xerces/dom/DocumentImpl$LEntry;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v20, v5

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/dom/events/EventImpl;->type:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_14

    move-object/from16 v19, v10

    move-object/from16 v20, v17

    invoke-virtual/range {v19 .. v20}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_14

    move-object/from16 v19, v17

    :try_start_2
    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/xerces/dom/DocumentImpl$LEntry;->listener:Lorg/w3c/dom/events/EventListener;

    move-object/from16 v19, v0

    move-object/from16 v20, v5

    invoke-interface/range {v19 .. v20}, Lorg/w3c/dom/events/EventListener;->handleEvent(Lorg/w3c/dom/events/Event;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_14
    :goto_b
    add-int/lit8 v16, v16, 0x1

    goto :goto_a

    :catch_2
    move-exception v19

    move-object/from16 v18, v19

    goto :goto_b
.end method

.method protected dispatchEventToSubtree(Lorg/w3c/dom/Node;Lorg/w3c/dom/events/Event;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v1

    check-cast v5, Lorg/apache/xerces/dom/NodeImpl;

    move-object v6, v2

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/NodeImpl;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    move-result v5

    move-object v5, v1

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    move-object v5, v1

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    move-object v3, v5

    move-object v5, v3

    invoke-interface {v5}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v4, v5

    :goto_0
    move v5, v4

    if-gez v5, :cond_1

    :cond_0
    move-object v5, v0

    move-object v6, v1

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/dom/DocumentImpl;->dispatchingEventToSubtree(Lorg/w3c/dom/Node;Lorg/w3c/dom/events/Event;)V

    return-void

    :cond_1
    move-object v5, v0

    move-object v6, v3

    move v7, v4

    invoke-interface {v6, v7}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/dom/DocumentImpl;->dispatchingEventToSubtree(Lorg/w3c/dom/Node;Lorg/w3c/dom/events/Event;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_0
.end method

.method protected dispatchingEventToSubtree(Lorg/w3c/dom/Node;Lorg/w3c/dom/events/Event;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v1

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v5, v1

    check-cast v5, Lorg/apache/xerces/dom/NodeImpl;

    move-object v6, v2

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/NodeImpl;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    move-result v5

    move-object v5, v1

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    move-object v5, v1

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    move-object v3, v5

    move-object v5, v3

    invoke-interface {v5}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v5

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move v4, v5

    :goto_1
    move v5, v4

    if-gez v5, :cond_2

    :cond_1
    move-object v5, v0

    move-object v6, v1

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/dom/DocumentImpl;->dispatchingEventToSubtree(Lorg/w3c/dom/Node;Lorg/w3c/dom/events/Event;)V

    move-object v5, v0

    move-object v6, v1

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/dom/DocumentImpl;->dispatchingEventToSubtree(Lorg/w3c/dom/Node;Lorg/w3c/dom/events/Event;)V

    goto :goto_0

    :cond_2
    move-object v5, v0

    move-object v6, v3

    move v7, v4

    invoke-interface {v6, v7}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/dom/DocumentImpl;->dispatchingEventToSubtree(Lorg/w3c/dom/Node;Lorg/w3c/dom/events/Event;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_1
.end method

.method protected getEventListeners(Lorg/apache/xerces/dom/NodeImpl;)Ljava/util/Vector;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/DocumentImpl;->eventListeners:Ljava/util/Hashtable;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/DocumentImpl;->eventListeners:Ljava/util/Hashtable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Vector;

    move-object v0, v2

    goto :goto_0
.end method

.method public getImplementation()Lorg/w3c/dom/DOMImplementation;
    .locals 2

    move-object v0, p0

    invoke-static {}, Lorg/apache/xerces/dom/DOMImplementationImpl;->getDOMImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method getMutationEvents()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/dom/DocumentImpl;->mutationEvents:Z

    move v0, v1

    return v0
.end method

.method insertedNode(Lorg/apache/xerces/dom/NodeImpl;Lorg/apache/xerces/dom/NodeImpl;Z)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/dom/DocumentImpl;->mutationEvents:Z

    if-eqz v4, :cond_0

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/xerces/dom/DocumentImpl;->mutationEventsInsertedNode(Lorg/apache/xerces/dom/NodeImpl;Lorg/apache/xerces/dom/NodeImpl;Z)V

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DocumentImpl;->ranges:Ljava/util/List;

    if-eqz v4, :cond_1

    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Lorg/apache/xerces/dom/DocumentImpl;->notifyRangesInsertedNode(Lorg/apache/xerces/dom/NodeImpl;)V

    :cond_1
    return-void
.end method

.method insertedText(Lorg/apache/xerces/dom/CharacterDataImpl;II)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DocumentImpl;->ranges:Ljava/util/List;

    if-eqz v4, :cond_0

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/xerces/dom/DocumentImpl;->notifyRangesInsertedText(Lorg/apache/xerces/dom/CharacterDataImpl;II)V

    :cond_0
    return-void
.end method

.method insertingNode(Lorg/apache/xerces/dom/NodeImpl;Z)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-boolean v3, v3, Lorg/apache/xerces/dom/DocumentImpl;->mutationEvents:Z

    if-eqz v3, :cond_0

    move v3, v2

    if-nez v3, :cond_0

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/DocumentImpl;->saveEnclosingAttr(Lorg/apache/xerces/dom/NodeImpl;)V

    :cond_0
    return-void
.end method

.method modifiedAttrValue(Lorg/apache/xerces/dom/AttrImpl;Ljava/lang/String;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-boolean v3, v3, Lorg/apache/xerces/dom/DocumentImpl;->mutationEvents:Z

    if-eqz v3, :cond_0

    move-object v3, v0

    move-object v4, v1

    move-object v5, v1

    move-object v6, v2

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/apache/xerces/dom/DocumentImpl;->dispatchAggregateEvents(Lorg/apache/xerces/dom/NodeImpl;Lorg/apache/xerces/dom/AttrImpl;Ljava/lang/String;S)V

    :cond_0
    return-void
.end method

.method modifiedCharacterData(Lorg/apache/xerces/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, v0

    iget-boolean v5, v5, Lorg/apache/xerces/dom/DocumentImpl;->mutationEvents:Z

    if-eqz v5, :cond_0

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/apache/xerces/dom/DocumentImpl;->mutationEventsModifiedCharacterData(Lorg/apache/xerces/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method modifyingCharacterData(Lorg/apache/xerces/dom/NodeImpl;Z)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-boolean v3, v3, Lorg/apache/xerces/dom/DocumentImpl;->mutationEvents:Z

    if-eqz v3, :cond_0

    move v3, v2

    if-nez v3, :cond_0

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/DocumentImpl;->saveEnclosingAttr(Lorg/apache/xerces/dom/NodeImpl;)V

    :cond_0
    return-void
.end method

.method protected removeEventListener(Lorg/apache/xerces/dom/NodeImpl;Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object v9, v2

    if-eqz v9, :cond_0

    move-object v9, v2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_0

    move-object v9, v3

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/DocumentImpl;->getEventListeners(Lorg/apache/xerces/dom/NodeImpl;)Ljava/util/Vector;

    move-result-object v9

    move-object v5, v9

    move-object v9, v5

    if-nez v9, :cond_2

    goto :goto_0

    :cond_2
    move-object v9, v5

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    const/4 v10, 0x1

    add-int/lit8 v9, v9, -0x1

    move v6, v9

    :goto_1
    move v9, v6

    if-gez v9, :cond_3

    :goto_2
    goto :goto_0

    :cond_3
    move-object v9, v5

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/xerces/dom/DocumentImpl$LEntry;

    move-object v7, v9

    move-object v9, v7

    iget-boolean v9, v9, Lorg/apache/xerces/dom/DocumentImpl$LEntry;->useCapture:Z

    move v10, v4

    if-ne v9, v10, :cond_6

    move-object v9, v7

    iget-object v9, v9, Lorg/apache/xerces/dom/DocumentImpl$LEntry;->listener:Lorg/w3c/dom/events/EventListener;

    move-object v10, v3

    if-ne v9, v10, :cond_6

    move-object v9, v7

    iget-object v9, v9, Lorg/apache/xerces/dom/DocumentImpl$LEntry;->type:Ljava/lang/String;

    move-object v10, v2

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    move-object v9, v5

    move v10, v6

    invoke-virtual {v9, v10}, Ljava/util/Vector;->removeElementAt(I)V

    move-object v9, v5

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    if-nez v9, :cond_4

    move-object v9, v0

    move-object v10, v1

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lorg/apache/xerces/dom/DocumentImpl;->setEventListeners(Lorg/apache/xerces/dom/NodeImpl;Ljava/util/Vector;)V

    :cond_4
    move-object v9, v2

    invoke-static {v9}, Lorg/apache/xerces/dom/LCount;->lookup(Ljava/lang/String;)Lorg/apache/xerces/dom/LCount;

    move-result-object v9

    move-object v8, v9

    move v9, v4

    if-eqz v9, :cond_5

    move-object v9, v8

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    iget v10, v10, Lorg/apache/xerces/dom/LCount;->captures:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    iput v10, v9, Lorg/apache/xerces/dom/LCount;->captures:I

    move-object v9, v8

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    iget v10, v10, Lorg/apache/xerces/dom/LCount;->total:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    iput v10, v9, Lorg/apache/xerces/dom/LCount;->total:I

    goto :goto_2

    :cond_5
    move-object v9, v8

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    iget v10, v10, Lorg/apache/xerces/dom/LCount;->bubbles:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    iput v10, v9, Lorg/apache/xerces/dom/LCount;->bubbles:I

    move-object v9, v8

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    iget v10, v10, Lorg/apache/xerces/dom/LCount;->total:I

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    iput v10, v9, Lorg/apache/xerces/dom/LCount;->total:I

    goto :goto_2

    :cond_6
    add-int/lit8 v6, v6, -0x1

    goto :goto_1
.end method

.method removeNodeIterator(Lorg/w3c/dom/traversal/NodeIterator;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DocumentImpl;->iterators:Ljava/util/List;

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move-object v4, v0

    invoke-direct {v4}, Lorg/apache/xerces/dom/DocumentImpl;->removeStaleIteratorReferences()V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DocumentImpl;->iterators:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :cond_2
    :goto_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/Reference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    move-object v4, v3

    move-object v5, v1

    if-ne v4, v5, :cond_4

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_4
    move-object v4, v3

    if-nez v4, :cond_2

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_1
.end method

.method removeRange(Lorg/w3c/dom/ranges/Range;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DocumentImpl;->ranges:Ljava/util/List;

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move-object v4, v0

    invoke-direct {v4}, Lorg/apache/xerces/dom/DocumentImpl;->removeStaleRangeReferences()V

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DocumentImpl;->ranges:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :cond_2
    :goto_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/Reference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v3, v4

    move-object v4, v3

    move-object v5, v1

    if-ne v4, v5, :cond_4

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_4
    move-object v4, v3

    if-nez v4, :cond_2

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_1
.end method

.method removedAttrNode(Lorg/apache/xerces/dom/AttrImpl;Lorg/apache/xerces/dom/NodeImpl;Ljava/lang/String;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/dom/DocumentImpl;->mutationEvents:Z

    if-eqz v4, :cond_0

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/xerces/dom/DocumentImpl;->mutationEventsRemovedAttrNode(Lorg/apache/xerces/dom/AttrImpl;Lorg/apache/xerces/dom/NodeImpl;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method removedNode(Lorg/apache/xerces/dom/NodeImpl;Z)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-boolean v3, v3, Lorg/apache/xerces/dom/DocumentImpl;->mutationEvents:Z

    if-eqz v3, :cond_0

    move v3, v2

    if-nez v3, :cond_0

    move-object v3, v0

    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/DocumentImpl;->savedEnclosingAttr:Lorg/apache/xerces/dom/DocumentImpl$EnclosingAttr;

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/dom/DocumentImpl;->dispatchAggregateEvents(Lorg/apache/xerces/dom/NodeImpl;Lorg/apache/xerces/dom/DocumentImpl$EnclosingAttr;)V

    :cond_0
    return-void
.end method

.method removingNode(Lorg/apache/xerces/dom/NodeImpl;Lorg/apache/xerces/dom/NodeImpl;Z)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DocumentImpl;->iterators:Ljava/util/List;

    if-eqz v4, :cond_0

    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Lorg/apache/xerces/dom/DocumentImpl;->notifyIteratorsRemovingNode(Lorg/apache/xerces/dom/NodeImpl;)V

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DocumentImpl;->ranges:Ljava/util/List;

    if-eqz v4, :cond_1

    move-object v4, v0

    move-object v5, v2

    invoke-direct {v4, v5}, Lorg/apache/xerces/dom/DocumentImpl;->notifyRangesRemovingNode(Lorg/apache/xerces/dom/NodeImpl;)V

    :cond_1
    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/dom/DocumentImpl;->mutationEvents:Z

    if-eqz v4, :cond_2

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/xerces/dom/DocumentImpl;->mutationEventsRemovingNode(Lorg/apache/xerces/dom/NodeImpl;Lorg/apache/xerces/dom/NodeImpl;Z)V

    :cond_2
    return-void
.end method

.method renamedAttrNode(Lorg/w3c/dom/Attr;Lorg/w3c/dom/Attr;)V
    .locals 0

    return-void
.end method

.method renamedElement(Lorg/w3c/dom/Element;Lorg/w3c/dom/Element;)V
    .locals 0

    return-void
.end method

.method replacedCharacterData(Lorg/apache/xerces/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    const/4 v8, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lorg/apache/xerces/dom/DocumentImpl;->modifiedCharacterData(Lorg/apache/xerces/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method replacedNode(Lorg/apache/xerces/dom/NodeImpl;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lorg/apache/xerces/dom/DocumentImpl;->mutationEvents:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DocumentImpl;->savedEnclosingAttr:Lorg/apache/xerces/dom/DocumentImpl$EnclosingAttr;

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/dom/DocumentImpl;->dispatchAggregateEvents(Lorg/apache/xerces/dom/NodeImpl;Lorg/apache/xerces/dom/DocumentImpl$EnclosingAttr;)V

    :cond_0
    return-void
.end method

.method replacedText(Lorg/apache/xerces/dom/CharacterDataImpl;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/DocumentImpl;->ranges:Ljava/util/List;

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lorg/apache/xerces/dom/DocumentImpl;->notifyRangesReplacedText(Lorg/apache/xerces/dom/CharacterDataImpl;)V

    :cond_0
    return-void
.end method

.method replacingData(Lorg/apache/xerces/dom/NodeImpl;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lorg/apache/xerces/dom/DocumentImpl;->mutationEvents:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/dom/DocumentImpl;->saveEnclosingAttr(Lorg/apache/xerces/dom/NodeImpl;)V

    :cond_0
    return-void
.end method

.method replacingNode(Lorg/apache/xerces/dom/NodeImpl;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lorg/apache/xerces/dom/DocumentImpl;->mutationEvents:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/dom/DocumentImpl;->saveEnclosingAttr(Lorg/apache/xerces/dom/NodeImpl;)V

    :cond_0
    return-void
.end method

.method protected saveEnclosingAttr(Lorg/apache/xerces/dom/NodeImpl;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lorg/apache/xerces/dom/DocumentImpl;->savedEnclosingAttr:Lorg/apache/xerces/dom/DocumentImpl$EnclosingAttr;

    const-string/jumbo v6, "DOMAttrModified"

    invoke-static {v6}, Lorg/apache/xerces/dom/LCount;->lookup(Ljava/lang/String;)Lorg/apache/xerces/dom/LCount;

    move-result-object v6

    move-object v2, v6

    move-object v6, v2

    iget v6, v6, Lorg/apache/xerces/dom/LCount;->total:I

    if-lez v6, :cond_4

    move-object v6, v1

    move-object v3, v6

    :goto_0
    move-object v6, v3

    if-nez v6, :cond_0

    :goto_1
    return-void

    :cond_0
    move-object v6, v3

    invoke-virtual {v6}, Lorg/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v6

    move v4, v6

    move v6, v4

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    new-instance v6, Lorg/apache/xerces/dom/DocumentImpl$EnclosingAttr;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Lorg/apache/xerces/dom/DocumentImpl$EnclosingAttr;-><init>(Lorg/apache/xerces/dom/DocumentImpl;)V

    move-object v5, v6

    move-object v6, v5

    move-object v7, v3

    check-cast v7, Lorg/apache/xerces/dom/AttrImpl;

    iput-object v7, v6, Lorg/apache/xerces/dom/DocumentImpl$EnclosingAttr;->node:Lorg/apache/xerces/dom/AttrImpl;

    move-object v6, v5

    move-object v7, v5

    iget-object v7, v7, Lorg/apache/xerces/dom/DocumentImpl$EnclosingAttr;->node:Lorg/apache/xerces/dom/AttrImpl;

    invoke-virtual {v7}, Lorg/apache/xerces/dom/AttrImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lorg/apache/xerces/dom/DocumentImpl$EnclosingAttr;->oldvalue:Ljava/lang/String;

    move-object v6, v0

    move-object v7, v5

    iput-object v7, v6, Lorg/apache/xerces/dom/DocumentImpl;->savedEnclosingAttr:Lorg/apache/xerces/dom/DocumentImpl$EnclosingAttr;

    goto :goto_1

    :cond_1
    move v6, v4

    const/4 v7, 0x5

    if-ne v6, v7, :cond_2

    move-object v6, v3

    invoke-virtual {v6}, Lorg/apache/xerces/dom/NodeImpl;->parentNode()Lorg/apache/xerces/dom/NodeImpl;

    move-result-object v6

    move-object v3, v6

    goto :goto_0

    :cond_2
    move v6, v4

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    move-object v6, v3

    invoke-virtual {v6}, Lorg/apache/xerces/dom/NodeImpl;->parentNode()Lorg/apache/xerces/dom/NodeImpl;

    move-result-object v6

    move-object v3, v6

    goto :goto_0

    :cond_3
    goto :goto_1

    :cond_4
    goto :goto_1
.end method

.method setAttrNode(Lorg/apache/xerces/dom/AttrImpl;Lorg/apache/xerces/dom/AttrImpl;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-boolean v3, v3, Lorg/apache/xerces/dom/DocumentImpl;->mutationEvents:Z

    if-eqz v3, :cond_0

    move-object v3, v2

    if-nez v3, :cond_1

    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Lorg/apache/xerces/dom/AttrImpl;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    move-object v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/apache/xerces/dom/DocumentImpl;->dispatchAggregateEvents(Lorg/apache/xerces/dom/NodeImpl;Lorg/apache/xerces/dom/AttrImpl;Ljava/lang/String;S)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v3, v0

    move-object v4, v1

    iget-object v4, v4, Lorg/apache/xerces/dom/AttrImpl;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v6}, Lorg/apache/xerces/dom/AttrImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/apache/xerces/dom/DocumentImpl;->dispatchAggregateEvents(Lorg/apache/xerces/dom/NodeImpl;Lorg/apache/xerces/dom/AttrImpl;Ljava/lang/String;S)V

    goto :goto_0
.end method

.method protected setEventListeners(Lorg/apache/xerces/dom/NodeImpl;Ljava/util/Vector;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/DocumentImpl;->eventListeners:Ljava/util/Hashtable;

    if-nez v3, :cond_0

    move-object v3, v0

    new-instance v4, Ljava/util/Hashtable;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    iput-object v4, v3, Lorg/apache/xerces/dom/DocumentImpl;->eventListeners:Ljava/util/Hashtable;

    :cond_0
    move-object v3, v2

    if-nez v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/DocumentImpl;->eventListeners:Ljava/util/Hashtable;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/DocumentImpl;->eventListeners:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lorg/apache/xerces/dom/DocumentImpl;->mutationEvents:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/DocumentImpl;->eventListeners:Ljava/util/Hashtable;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/apache/xerces/dom/DocumentImpl;->mutationEvents:Z

    goto :goto_0
.end method

.method setMutationEvents(Z)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lorg/apache/xerces/dom/DocumentImpl;->mutationEvents:Z

    return-void
.end method

.method splitData(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;I)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/DocumentImpl;->ranges:Ljava/util/List;

    if-eqz v4, :cond_0

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/xerces/dom/DocumentImpl;->notifyRangesSplitData(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;I)V

    :cond_0
    return-void
.end method
