.class public Lorg/apache/xerces/dom/events/MutationEventImpl;
.super Lorg/apache/xerces/dom/events/EventImpl;

# interfaces
.implements Lorg/w3c/dom/events/MutationEvent;


# static fields
.field public static final DOM_ATTR_MODIFIED:Ljava/lang/String; = "DOMAttrModified"

.field public static final DOM_CHARACTER_DATA_MODIFIED:Ljava/lang/String; = "DOMCharacterDataModified"

.field public static final DOM_NODE_INSERTED:Ljava/lang/String; = "DOMNodeInserted"

.field public static final DOM_NODE_INSERTED_INTO_DOCUMENT:Ljava/lang/String; = "DOMNodeInsertedIntoDocument"

.field public static final DOM_NODE_REMOVED:Ljava/lang/String; = "DOMNodeRemoved"

.field public static final DOM_NODE_REMOVED_FROM_DOCUMENT:Ljava/lang/String; = "DOMNodeRemovedFromDocument"

.field public static final DOM_SUBTREE_MODIFIED:Ljava/lang/String; = "DOMSubtreeModified"


# instance fields
.field public attrChange:S

.field attrName:Ljava/lang/String;

.field newValue:Ljava/lang/String;

.field prevValue:Ljava/lang/String;

.field relatedNode:Lorg/w3c/dom/Node;


# direct methods
.method public constructor <init>()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lorg/apache/xerces/dom/events/EventImpl;-><init>()V

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/dom/events/MutationEventImpl;->relatedNode:Lorg/w3c/dom/Node;

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/dom/events/MutationEventImpl;->prevValue:Ljava/lang/String;

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/dom/events/MutationEventImpl;->newValue:Ljava/lang/String;

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/dom/events/MutationEventImpl;->attrName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAttrChange()S
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-short v1, v1, Lorg/apache/xerces/dom/events/MutationEventImpl;->attrChange:S

    move v0, v1

    return v0
.end method

.method public getAttrName()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/events/MutationEventImpl;->attrName:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getNewValue()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/events/MutationEventImpl;->newValue:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getPrevValue()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/events/MutationEventImpl;->prevValue:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getRelatedNode()Lorg/w3c/dom/Node;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/events/MutationEventImpl;->relatedNode:Lorg/w3c/dom/Node;

    move-object v0, v1

    return-object v0
.end method

.method public initMutationEvent(Ljava/lang/String;ZZLorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;S)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object v9, v0

    move-object v10, v4

    iput-object v10, v9, Lorg/apache/xerces/dom/events/MutationEventImpl;->relatedNode:Lorg/w3c/dom/Node;

    move-object v9, v0

    move-object v10, v5

    iput-object v10, v9, Lorg/apache/xerces/dom/events/MutationEventImpl;->prevValue:Ljava/lang/String;

    move-object v9, v0

    move-object v10, v6

    iput-object v10, v9, Lorg/apache/xerces/dom/events/MutationEventImpl;->newValue:Ljava/lang/String;

    move-object v9, v0

    move-object v10, v7

    iput-object v10, v9, Lorg/apache/xerces/dom/events/MutationEventImpl;->attrName:Ljava/lang/String;

    move-object v9, v0

    move v10, v8

    iput-short v10, v9, Lorg/apache/xerces/dom/events/MutationEventImpl;->attrChange:S

    move-object v9, v0

    move-object v10, v1

    move v11, v2

    move v12, v3

    invoke-super {v9, v10, v11, v12}, Lorg/apache/xerces/dom/events/EventImpl;->initEvent(Ljava/lang/String;ZZ)V

    return-void
.end method
