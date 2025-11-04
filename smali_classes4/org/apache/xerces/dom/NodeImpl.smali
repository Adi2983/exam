.class public abstract Lorg/apache/xerces/dom/NodeImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/w3c/dom/Node;
.implements Lorg/w3c/dom/NodeList;
.implements Lorg/w3c/dom/events/EventTarget;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field public static final DOCUMENT_POSITION_CONTAINS:S = 0x8s

.field public static final DOCUMENT_POSITION_DISCONNECTED:S = 0x1s

.field public static final DOCUMENT_POSITION_FOLLOWING:S = 0x4s

.field public static final DOCUMENT_POSITION_IMPLEMENTATION_SPECIFIC:S = 0x20s

.field public static final DOCUMENT_POSITION_IS_CONTAINED:S = 0x10s

.field public static final DOCUMENT_POSITION_PRECEDING:S = 0x2s

.field public static final ELEMENT_DEFINITION_NODE:S = 0x15s

.field protected static final FIRSTCHILD:S = 0x10s

.field protected static final HASSTRING:S = 0x80s

.field protected static final ID:S = 0x200s

.field protected static final IGNORABLEWS:S = 0x40s

.field protected static final NORMALIZED:S = 0x100s

.field protected static final OWNED:S = 0x8s

.field protected static final READONLY:S = 0x1s

.field protected static final SPECIFIED:S = 0x20s

.field protected static final SYNCCHILDREN:S = 0x4s

.field protected static final SYNCDATA:S = 0x2s

.field public static final TREE_POSITION_ANCESTOR:S = 0x4s

.field public static final TREE_POSITION_DESCENDANT:S = 0x8s

.field public static final TREE_POSITION_DISCONNECTED:S = 0x0s

.field public static final TREE_POSITION_EQUIVALENT:S = 0x10s

.field public static final TREE_POSITION_FOLLOWING:S = 0x2s

.field public static final TREE_POSITION_PRECEDING:S = 0x1s

.field public static final TREE_POSITION_SAME_NODE:S = 0x20s

.field static final serialVersionUID:J = -0x57a90af33c3441f0L


# instance fields
.field protected flags:S

.field protected ownerNode:Lorg/apache/xerces/dom/NodeImpl;


# direct methods
.method public constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/xerces/dom/CoreDocumentImpl;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/dom/NodeImpl;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/NodeImpl;->needsSyncData()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/NodeImpl;->synchronizeData()V

    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method public addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/NodeImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Lorg/apache/xerces/dom/CoreDocumentImpl;->addEventListener(Lorg/apache/xerces/dom/NodeImpl;Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    return-void
.end method

.method public appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/dom/NodeImpl;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method protected changed()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/NodeImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xerces/dom/CoreDocumentImpl;->changed()V

    return-void
.end method

.method protected changes()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/NodeImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/xerces/dom/CoreDocumentImpl;->changes()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public cloneNode(Z)Lorg/w3c/dom/Node;
    .locals 9

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/NodeImpl;->needsSyncData()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/NodeImpl;->synchronizeData()V

    :cond_0
    move-object v4, v0

    :try_start_0
    invoke-virtual {v4}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/dom/NodeImpl;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    move-object v4, v2

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xerces/dom/NodeImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v5

    iput-object v5, v4, Lorg/apache/xerces/dom/NodeImpl;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    move-object v4, v2

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/NodeImpl;->isOwned(Z)V

    move-object v4, v2

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/NodeImpl;->isReadOnly(Z)V

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/NodeImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v4

    move-object v5, v0

    move-object v6, v2

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lorg/apache/xerces/dom/CoreDocumentImpl;->callUserDataHandlers(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;S)V

    move-object v4, v2

    move-object v0, v4

    return-object v0

    :catch_0
    move-exception v4

    move-object v3, v4

    new-instance v4, Ljava/lang/RuntimeException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    new-instance v6, Ljava/lang/StringBuffer;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v7, "**Internal Error**"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public compareDocumentPosition(Lorg/w3c/dom/Node;)S
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_0

    const/16 v18, 0x0

    move/from16 v2, v18

    :goto_0
    return v2

    :cond_0
    move-object/from16 v18, v3

    if-eqz v18, :cond_1

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    instance-of v0, v0, Lorg/apache/xerces/dom/NodeImpl;

    move/from16 v18, v0

    if-nez v18, :cond_1

    const-string/jumbo v18, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v19, "NOT_SUPPORTED_ERR"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v4, v18

    new-instance v18, Lorg/w3c/dom/DOMException;

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    const/16 v20, 0x9

    move-object/from16 v21, v4

    invoke-direct/range {v19 .. v21}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v18

    :cond_1
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Lorg/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v18

    const/16 v19, 0x9

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    move-object/from16 v18, v2

    check-cast v18, Lorg/w3c/dom/Document;

    move-object/from16 v4, v18

    :goto_1
    move-object/from16 v18, v3

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v18

    const/16 v19, 0x9

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    move-object/from16 v18, v3

    check-cast v18, Lorg/w3c/dom/Document;

    move-object/from16 v5, v18

    :goto_2
    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_5

    move-object/from16 v18, v4

    if-eqz v18, :cond_5

    move-object/from16 v18, v5

    if-eqz v18, :cond_5

    move-object/from16 v18, v5

    check-cast v18, Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual/range {v18 .. v18}, Lorg/apache/xerces/dom/CoreDocumentImpl;->getNodeNumber()I

    move-result v18

    move/from16 v6, v18

    move-object/from16 v18, v4

    check-cast v18, Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual/range {v18 .. v18}, Lorg/apache/xerces/dom/CoreDocumentImpl;->getNodeNumber()I

    move-result v18

    move/from16 v7, v18

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_4

    const/16 v18, 0x25

    move/from16 v2, v18

    goto/16 :goto_0

    :cond_2
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Lorg/apache/xerces/dom/NodeImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v18

    move-object/from16 v4, v18

    goto :goto_1

    :cond_3
    move-object/from16 v18, v3

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v18

    move-object/from16 v5, v18

    goto :goto_2

    :cond_4
    const/16 v18, 0x23

    move/from16 v2, v18

    goto/16 :goto_0

    :cond_5
    move-object/from16 v18, v2

    move-object/from16 v7, v18

    move-object/from16 v18, v3

    move-object/from16 v8, v18

    const/16 v18, 0x0

    move/from16 v9, v18

    const/16 v18, 0x0

    move/from16 v10, v18

    move-object/from16 v18, v2

    move-object/from16 v6, v18

    :goto_3
    move-object/from16 v18, v6

    if-nez v18, :cond_8

    move-object/from16 v18, v3

    move-object/from16 v6, v18

    :goto_4
    move-object/from16 v18, v6

    if-nez v18, :cond_a

    move-object/from16 v18, v7

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v18

    move/from16 v11, v18

    move-object/from16 v18, v8

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v18

    move/from16 v12, v18

    move-object/from16 v18, v2

    move-object/from16 v13, v18

    move-object/from16 v18, v3

    move-object/from16 v14, v18

    move/from16 v18, v11

    sparse-switch v18, :sswitch_data_0

    :cond_6
    :goto_5
    move/from16 v18, v12

    sparse-switch v18, :sswitch_data_1

    :cond_7
    :goto_6
    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_1a

    move-object/from16 v18, v7

    check-cast v18, Lorg/apache/xerces/dom/NodeImpl;

    invoke-virtual/range {v18 .. v18}, Lorg/apache/xerces/dom/NodeImpl;->getNodeNumber()I

    move-result v18

    move/from16 v15, v18

    move-object/from16 v18, v8

    check-cast v18, Lorg/apache/xerces/dom/NodeImpl;

    invoke-virtual/range {v18 .. v18}, Lorg/apache/xerces/dom/NodeImpl;->getNodeNumber()I

    move-result v18

    move/from16 v16, v18

    move/from16 v18, v15

    move/from16 v19, v16

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_19

    const/16 v18, 0x25

    move/from16 v2, v18

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v18, v6

    move-object/from16 v19, v3

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_9

    const/16 v18, 0xa

    move/from16 v2, v18

    goto/16 :goto_0

    :cond_9
    move-object/from16 v18, v6

    move-object/from16 v7, v18

    move-object/from16 v18, v6

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v18

    move-object/from16 v6, v18

    goto :goto_3

    :cond_a
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v18, v6

    move-object/from16 v19, v2

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_b

    const/16 v18, 0x14

    move/from16 v2, v18

    goto/16 :goto_0

    :cond_b
    move-object/from16 v18, v6

    move-object/from16 v8, v18

    move-object/from16 v18, v6

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v18

    move-object/from16 v6, v18

    goto/16 :goto_4

    :sswitch_0
    move-object/from16 v18, v4

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v18

    move-object/from16 v15, v18

    move-object/from16 v18, v15

    move-object/from16 v19, v8

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_c

    const/16 v18, 0xa

    move/from16 v2, v18

    goto/16 :goto_0

    :cond_c
    move/from16 v18, v12

    sparse-switch v18, :sswitch_data_2

    move-object/from16 v18, v4

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    move-object/from16 v7, v19

    move-object/from16 v13, v18

    goto/16 :goto_5

    :sswitch_1
    move/from16 v18, v11

    move/from16 v19, v12

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_e

    move/from16 v18, v11

    move/from16 v19, v12

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_d

    const/16 v18, 0x2

    :goto_7
    move/from16 v2, v18

    goto/16 :goto_0

    :cond_d
    const/16 v18, 0x4

    goto :goto_7

    :cond_e
    move/from16 v18, v11

    const/16 v19, 0xc

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_10

    move-object/from16 v18, v15

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/DocumentType;->getNotations()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v18

    check-cast v18, Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move-object/from16 v19, v8

    move-object/from16 v20, v7

    invoke-virtual/range {v18 .. v20}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->precedes(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v18

    if-eqz v18, :cond_f

    const/16 v18, 0x22

    move/from16 v2, v18

    goto/16 :goto_0

    :cond_f
    const/16 v18, 0x24

    move/from16 v2, v18

    goto/16 :goto_0

    :cond_10
    move-object/from16 v18, v15

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/DocumentType;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v18

    check-cast v18, Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move-object/from16 v19, v8

    move-object/from16 v20, v7

    invoke-virtual/range {v18 .. v20}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->precedes(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v18

    if-eqz v18, :cond_11

    const/16 v18, 0x22

    move/from16 v2, v18

    goto/16 :goto_0

    :cond_11
    const/16 v18, 0x24

    move/from16 v2, v18

    goto/16 :goto_0

    :sswitch_2
    move-object/from16 v18, v14

    move-object/from16 v19, v4

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_12

    const/16 v18, 0xa

    move/from16 v2, v18

    goto/16 :goto_0

    :cond_12
    move-object/from16 v18, v4

    if-eqz v18, :cond_6

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_6

    const/16 v18, 0x4

    move/from16 v2, v18

    goto/16 :goto_0

    :sswitch_3
    move-object/from16 v18, v7

    check-cast v18, Lorg/apache/xerces/dom/AttrImpl;

    invoke-virtual/range {v18 .. v18}, Lorg/apache/xerces/dom/AttrImpl;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v18

    move-object/from16 v13, v18

    move/from16 v18, v12

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_14

    move-object/from16 v18, v8

    check-cast v18, Lorg/apache/xerces/dom/AttrImpl;

    invoke-virtual/range {v18 .. v18}, Lorg/apache/xerces/dom/AttrImpl;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v18

    move-object/from16 v14, v18

    move-object/from16 v18, v14

    move-object/from16 v19, v13

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_14

    move-object/from16 v18, v13

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v18

    check-cast v18, Lorg/apache/xerces/dom/NamedNodeMapImpl;

    move-object/from16 v19, v3

    move-object/from16 v20, v2

    invoke-virtual/range {v18 .. v20}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->precedes(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v18

    if-eqz v18, :cond_13

    const/16 v18, 0x22

    move/from16 v2, v18

    goto/16 :goto_0

    :cond_13
    const/16 v18, 0x24

    move/from16 v2, v18

    goto/16 :goto_0

    :cond_14
    const/16 v18, 0x0

    move/from16 v9, v18

    move-object/from16 v18, v13

    move-object/from16 v6, v18

    :goto_8
    move-object/from16 v18, v6

    if-eqz v18, :cond_6

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v18, v6

    move-object/from16 v19, v14

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_15

    const/16 v18, 0xa

    move/from16 v2, v18

    goto/16 :goto_0

    :cond_15
    move-object/from16 v18, v6

    move-object/from16 v7, v18

    move-object/from16 v18, v6

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v18

    move-object/from16 v6, v18

    goto :goto_8

    :sswitch_4
    move-object/from16 v18, v4

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v18

    move-object/from16 v15, v18

    move-object/from16 v18, v15

    move-object/from16 v19, v2

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_16

    const/16 v18, 0x14

    move/from16 v2, v18

    goto/16 :goto_0

    :cond_16
    move-object/from16 v18, v4

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    move-object/from16 v8, v19

    move-object/from16 v14, v18

    goto/16 :goto_6

    :sswitch_5
    move-object/from16 v18, v13

    move-object/from16 v19, v5

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_17

    const/16 v18, 0x14

    move/from16 v2, v18

    goto/16 :goto_0

    :cond_17
    move-object/from16 v18, v5

    if-eqz v18, :cond_7

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_7

    const/16 v18, 0x2

    move/from16 v2, v18

    goto/16 :goto_0

    :sswitch_6
    const/16 v18, 0x0

    move/from16 v10, v18

    move-object/from16 v18, v8

    check-cast v18, Lorg/apache/xerces/dom/AttrImpl;

    invoke-virtual/range {v18 .. v18}, Lorg/apache/xerces/dom/AttrImpl;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v18

    move-object/from16 v14, v18

    move-object/from16 v18, v14

    move-object/from16 v6, v18

    :goto_9
    move-object/from16 v18, v6

    if-eqz v18, :cond_7

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v18, v6

    move-object/from16 v19, v13

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_18

    const/16 v18, 0x14

    move/from16 v2, v18

    goto/16 :goto_0

    :cond_18
    move-object/from16 v18, v6

    move-object/from16 v8, v18

    move-object/from16 v18, v6

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v18

    move-object/from16 v6, v18

    goto :goto_9

    :cond_19
    const/16 v18, 0x23

    move/from16 v2, v18

    goto/16 :goto_0

    :cond_1a
    move/from16 v18, v9

    move/from16 v19, v10

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_1c

    const/16 v18, 0x0

    move/from16 v15, v18

    :goto_a
    move/from16 v18, v15

    move/from16 v19, v9

    move/from16 v20, v10

    sub-int v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_1b

    move-object/from16 v18, v13

    move-object/from16 v19, v14

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_1e

    const/16 v18, 0x2

    move/from16 v2, v18

    goto/16 :goto_0

    :cond_1b
    move-object/from16 v18, v13

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v18

    move-object/from16 v13, v18

    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    :cond_1c
    const/16 v18, 0x0

    move/from16 v15, v18

    :goto_b
    move/from16 v18, v15

    move/from16 v19, v10

    move/from16 v20, v9

    sub-int v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_1d

    move-object/from16 v18, v14

    move-object/from16 v19, v13

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_1e

    const/16 v18, 0x4

    move/from16 v2, v18

    goto/16 :goto_0

    :cond_1d
    move-object/from16 v18, v14

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v18

    move-object/from16 v14, v18

    add-int/lit8 v15, v15, 0x1

    goto :goto_b

    :cond_1e
    move-object/from16 v18, v13

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v18

    move-object/from16 v15, v18

    move-object/from16 v18, v14

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v18

    move-object/from16 v16, v18

    :goto_c
    move-object/from16 v18, v15

    move-object/from16 v19, v16

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_1f

    move-object/from16 v18, v15

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v18

    move-object/from16 v17, v18

    :goto_d
    move-object/from16 v18, v17

    if-nez v18, :cond_20

    const/16 v18, 0x0

    move/from16 v2, v18

    goto/16 :goto_0

    :cond_1f
    move-object/from16 v18, v15

    move-object/from16 v13, v18

    move-object/from16 v18, v16

    move-object/from16 v14, v18

    move-object/from16 v18, v15

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v18

    move-object/from16 v15, v18

    move-object/from16 v18, v16

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v18

    move-object/from16 v16, v18

    goto :goto_c

    :cond_20
    move-object/from16 v18, v17

    move-object/from16 v19, v14

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_21

    const/16 v18, 0x2

    move/from16 v2, v18

    goto/16 :goto_0

    :cond_21
    move-object/from16 v18, v17

    move-object/from16 v19, v13

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_22

    const/16 v18, 0x4

    move/from16 v2, v18

    goto/16 :goto_0

    :cond_22
    move-object/from16 v18, v17

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v18

    move-object/from16 v17, v18

    goto :goto_d

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x6 -> :sswitch_0
        0xa -> :sswitch_2
        0xc -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_6
        0x6 -> :sswitch_4
        0xa -> :sswitch_5
        0xc -> :sswitch_4
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x6 -> :sswitch_1
        0xc -> :sswitch_1
    .end sparse-switch
.end method

.method public compareTreePosition(Lorg/w3c/dom/Node;)S
    .locals 21

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_0

    const/16 v18, 0x30

    move/from16 v2, v18

    :goto_0
    return v2

    :cond_0
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Lorg/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v18

    move/from16 v4, v18

    move-object/from16 v18, v3

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v18

    move/from16 v5, v18

    move/from16 v18, v4

    const/16 v19, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    move/from16 v18, v4

    const/16 v19, 0xc

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    move/from16 v18, v5

    const/16 v19, 0x6

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_1

    move/from16 v18, v5

    const/16 v19, 0xc

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    :cond_1
    const/16 v18, 0x0

    move/from16 v2, v18

    goto :goto_0

    :cond_2
    move-object/from16 v18, v2

    move-object/from16 v7, v18

    move-object/from16 v18, v3

    move-object/from16 v8, v18

    const/16 v18, 0x0

    move/from16 v9, v18

    const/16 v18, 0x0

    move/from16 v10, v18

    move-object/from16 v18, v2

    move-object/from16 v6, v18

    :goto_1
    move-object/from16 v18, v6

    if-nez v18, :cond_5

    move-object/from16 v18, v3

    move-object/from16 v6, v18

    :goto_2
    move-object/from16 v18, v6

    if-nez v18, :cond_7

    move-object/from16 v18, v2

    move-object/from16 v11, v18

    move-object/from16 v18, v3

    move-object/from16 v12, v18

    move-object/from16 v18, v7

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v18

    move/from16 v13, v18

    move-object/from16 v18, v8

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v18

    move/from16 v14, v18

    move/from16 v18, v13

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    move-object/from16 v18, v7

    check-cast v18, Lorg/apache/xerces/dom/AttrImpl;

    invoke-virtual/range {v18 .. v18}, Lorg/apache/xerces/dom/AttrImpl;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v18

    move-object/from16 v11, v18

    :cond_3
    move/from16 v18, v14

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    move-object/from16 v18, v8

    check-cast v18, Lorg/apache/xerces/dom/AttrImpl;

    invoke-virtual/range {v18 .. v18}, Lorg/apache/xerces/dom/AttrImpl;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v18

    move-object/from16 v12, v18

    :cond_4
    move/from16 v18, v13

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    move/from16 v18, v14

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    move-object/from16 v18, v11

    move-object/from16 v19, v12

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_9

    const/16 v18, 0x10

    move/from16 v2, v18

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v18, v6

    move-object/from16 v19, v3

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_6

    const/16 v18, 0x5

    move/from16 v2, v18

    goto/16 :goto_0

    :cond_6
    move-object/from16 v18, v6

    move-object/from16 v7, v18

    move-object/from16 v18, v6

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v18

    move-object/from16 v6, v18

    goto/16 :goto_1

    :cond_7
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v18, v6

    move-object/from16 v19, v2

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_8

    const/16 v18, 0xa

    move/from16 v2, v18

    goto/16 :goto_0

    :cond_8
    move-object/from16 v18, v6

    move-object/from16 v8, v18

    move-object/from16 v18, v6

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v18

    move-object/from16 v6, v18

    goto/16 :goto_2

    :cond_9
    move/from16 v18, v13

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    const/16 v18, 0x0

    move/from16 v9, v18

    move-object/from16 v18, v11

    move-object/from16 v6, v18

    :goto_3
    move-object/from16 v18, v6

    if-nez v18, :cond_c

    :cond_a
    move/from16 v18, v14

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    const/16 v18, 0x0

    move/from16 v10, v18

    move-object/from16 v18, v12

    move-object/from16 v6, v18

    :goto_4
    move-object/from16 v18, v6

    if-nez v18, :cond_e

    :cond_b
    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_10

    const/16 v18, 0x0

    move/from16 v2, v18

    goto/16 :goto_0

    :cond_c
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v18, v6

    move-object/from16 v19, v12

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_d

    const/16 v18, 0x1

    move/from16 v2, v18

    goto/16 :goto_0

    :cond_d
    move-object/from16 v18, v6

    move-object/from16 v7, v18

    move-object/from16 v18, v6

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v18

    move-object/from16 v6, v18

    goto :goto_3

    :cond_e
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v18, v6

    move-object/from16 v19, v11

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_f

    const/16 v18, 0x2

    move/from16 v2, v18

    goto/16 :goto_0

    :cond_f
    move-object/from16 v18, v6

    move-object/from16 v8, v18

    move-object/from16 v18, v6

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v18

    move-object/from16 v6, v18

    goto :goto_4

    :cond_10
    move/from16 v18, v9

    move/from16 v19, v10

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_12

    const/16 v18, 0x0

    move/from16 v15, v18

    :goto_5
    move/from16 v18, v15

    move/from16 v19, v9

    move/from16 v20, v10

    sub-int v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_11

    move-object/from16 v18, v11

    move-object/from16 v19, v12

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_14

    const/16 v18, 0x1

    move/from16 v2, v18

    goto/16 :goto_0

    :cond_11
    move-object/from16 v18, v11

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v18

    move-object/from16 v11, v18

    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    :cond_12
    const/16 v18, 0x0

    move/from16 v15, v18

    :goto_6
    move/from16 v18, v15

    move/from16 v19, v10

    move/from16 v20, v9

    sub-int v19, v19, v20

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_13

    move-object/from16 v18, v12

    move-object/from16 v19, v11

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_14

    const/16 v18, 0x2

    move/from16 v2, v18

    goto/16 :goto_0

    :cond_13
    move-object/from16 v18, v12

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v18

    move-object/from16 v12, v18

    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    :cond_14
    move-object/from16 v18, v11

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v18

    move-object/from16 v15, v18

    move-object/from16 v18, v12

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v18

    move-object/from16 v16, v18

    :goto_7
    move-object/from16 v18, v15

    move-object/from16 v19, v16

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_15

    move-object/from16 v18, v15

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v18

    move-object/from16 v17, v18

    :goto_8
    move-object/from16 v18, v17

    if-nez v18, :cond_16

    const/16 v18, 0x0

    move/from16 v2, v18

    goto/16 :goto_0

    :cond_15
    move-object/from16 v18, v15

    move-object/from16 v11, v18

    move-object/from16 v18, v16

    move-object/from16 v12, v18

    move-object/from16 v18, v15

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v18

    move-object/from16 v15, v18

    move-object/from16 v18, v16

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v18

    move-object/from16 v16, v18

    goto :goto_7

    :cond_16
    move-object/from16 v18, v17

    move-object/from16 v19, v12

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_17

    const/16 v18, 0x1

    move/from16 v2, v18

    goto/16 :goto_0

    :cond_17
    move-object/from16 v18, v17

    move-object/from16 v19, v11

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_18

    const/16 v18, 0x2

    move/from16 v2, v18

    goto/16 :goto_0

    :cond_18
    move-object/from16 v18, v17

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v18

    move-object/from16 v17, v18

    goto :goto_8
.end method

.method public dispatchEvent(Lorg/w3c/dom/events/Event;)Z
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/NodeImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v2

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/dom/CoreDocumentImpl;->dispatchEvent(Lorg/apache/xerces/dom/NodeImpl;Lorg/w3c/dom/events/Event;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public getChildNodes()Lorg/w3c/dom/NodeList;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    move-object v0, v1

    return-object v0
.end method

.method protected getContainer()Lorg/w3c/dom/Node;
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method getElementAncestor(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v2, v4

    :goto_0
    move-object v4, v2

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    :goto_1
    return-object v0

    :cond_0
    move-object v4, v2

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    move v3, v4

    move v4, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    move-object v4, v2

    move-object v0, v4

    goto :goto_1

    :cond_1
    move-object v4, v2

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v2, v4

    goto :goto_0
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/dom/NodeImpl;->isSupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    :goto_0
    move-object v0, v3

    return-object v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getFirstChild()Lorg/w3c/dom/Node;
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public getLastChild()Lorg/w3c/dom/Node;
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public getLength()I
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public abstract getNodeName()Ljava/lang/String;
.end method

.method protected getNodeNumber()I
    .locals 5

    move-object v0, p0

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/NodeImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v2, v3

    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/CoreDocumentImpl;->getNodeNumber(Lorg/w3c/dom/Node;)I

    move-result v3

    move v1, v3

    move v3, v1

    move v0, v3

    return v0
.end method

.method public abstract getNodeType()S
.end method

.method public getNodeValue()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public getOwnerDocument()Lorg/w3c/dom/Document;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/NodeImpl;->isOwned()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/NodeImpl;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    invoke-virtual {v1}, Lorg/apache/xerces/dom/NodeImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v1

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/NodeImpl;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    check-cast v1, Lorg/w3c/dom/Document;

    move-object v0, v1

    goto :goto_0
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public getPreviousSibling()Lorg/w3c/dom/Node;
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public getReadOnly()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/NodeImpl;->needsSyncData()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/NodeImpl;->synchronizeData()V

    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/NodeImpl;->isReadOnly()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method getTextContent(Ljava/lang/StringBuffer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    :cond_0
    return-void
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/NodeImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lorg/apache/xerces/dom/CoreDocumentImpl;->getUserData(Lorg/apache/xerces/dom/NodeImpl;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/NodeImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v2

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/dom/CoreDocumentImpl;->getUserData(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method protected getUserDataRecord()Ljava/util/Hashtable;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/NodeImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lorg/apache/xerces/dom/CoreDocumentImpl;->getUserDataRecord(Lorg/w3c/dom/Node;)Ljava/util/Hashtable;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public hasAttributes()Z
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public hasChildNodes()Z
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method final hasStringValue(Z)V
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-short v3, v3, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    const/16 v4, 0x80

    or-int/lit16 v3, v3, 0x80

    int-to-short v3, v3

    :goto_0
    iput-short v3, v2, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    return-void

    :cond_0
    move-object v3, v0

    iget-short v3, v3, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    const/16 v4, -0x81

    and-int/lit16 v3, v3, -0x81

    int-to-short v3, v3

    goto :goto_0
.end method

.method final hasStringValue()Z
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-short v1, v1, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    const/16 v2, 0x80

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

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
.end method

.method final internalIsIgnorableWhitespace()Z
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-short v1, v1, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    const/16 v2, 0x40

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDefaultNamespace(Ljava/lang/String;)Z
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v8

    move v2, v8

    move v8, v2

    packed-switch v8, :pswitch_data_0

    :pswitch_0
    move-object v8, v0

    move-object v9, v0

    invoke-virtual {v8, v9}, Lorg/apache/xerces/dom/NodeImpl;->getElementAncestor(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/apache/xerces/dom/NodeImpl;

    move-object v3, v8

    move-object v8, v3

    if-eqz v8, :cond_a

    move-object v8, v3

    move-object v9, v1

    invoke-virtual {v8, v9}, Lorg/apache/xerces/dom/NodeImpl;->isDefaultNamespace(Ljava/lang/String;)Z

    move-result v8

    move v0, v8

    :goto_0
    return v0

    :pswitch_1
    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/dom/NodeImpl;->getPrefix()Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    move-object v8, v4

    if-eqz v8, :cond_0

    move-object v8, v4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_3

    :cond_0
    move-object v8, v1

    if-nez v8, :cond_2

    move-object v8, v3

    move-object v9, v1

    if-ne v8, v9, :cond_1

    const/4 v8, 0x1

    :goto_1
    move v0, v8

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    :cond_2
    move-object v8, v1

    move-object v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    move v0, v8

    goto :goto_0

    :cond_3
    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/dom/NodeImpl;->hasAttributes()Z

    move-result v8

    if-eqz v8, :cond_6

    move-object v8, v0

    check-cast v8, Lorg/apache/xerces/dom/ElementImpl;

    move-object v5, v8

    move-object v8, v5

    const-string/jumbo v9, "http://www.w3.org/2000/xmlns/"

    const-string/jumbo v10, "xmlns"

    invoke-virtual {v8, v9, v10}, Lorg/apache/xerces/dom/ElementImpl;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v8

    check-cast v8, Lorg/apache/xerces/dom/NodeImpl;

    move-object v6, v8

    move-object v8, v6

    if-eqz v8, :cond_6

    move-object v8, v6

    invoke-virtual {v8}, Lorg/apache/xerces/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    move-object v8, v1

    if-nez v8, :cond_5

    move-object v8, v3

    move-object v9, v7

    if-ne v8, v9, :cond_4

    const/4 v8, 0x1

    :goto_2
    move v0, v8

    goto :goto_0

    :cond_4
    const/4 v8, 0x0

    goto :goto_2

    :cond_5
    move-object v8, v1

    move-object v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    move v0, v8

    goto :goto_0

    :cond_6
    move-object v8, v0

    move-object v9, v0

    invoke-virtual {v8, v9}, Lorg/apache/xerces/dom/NodeImpl;->getElementAncestor(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/apache/xerces/dom/NodeImpl;

    move-object v5, v8

    move-object v8, v5

    if-eqz v8, :cond_7

    move-object v8, v5

    move-object v9, v1

    invoke-virtual {v8, v9}, Lorg/apache/xerces/dom/NodeImpl;->isDefaultNamespace(Ljava/lang/String;)Z

    move-result v8

    move v0, v8

    goto :goto_0

    :cond_7
    const/4 v8, 0x0

    move v0, v8

    goto :goto_0

    :pswitch_2
    move-object v8, v0

    check-cast v8, Lorg/w3c/dom/Document;

    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v8

    move-object v3, v8

    move-object v8, v3

    if-eqz v8, :cond_8

    move-object v8, v3

    move-object v9, v1

    invoke-interface {v8, v9}, Lorg/w3c/dom/Element;->isDefaultNamespace(Ljava/lang/String;)Z

    move-result v8

    move v0, v8

    goto/16 :goto_0

    :cond_8
    const/4 v8, 0x0

    move v0, v8

    goto/16 :goto_0

    :pswitch_3
    const/4 v8, 0x0

    move v0, v8

    goto/16 :goto_0

    :pswitch_4
    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/NodeImpl;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    invoke-virtual {v8}, Lorg/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_9

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/NodeImpl;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    move-object v9, v1

    invoke-virtual {v8, v9}, Lorg/apache/xerces/dom/NodeImpl;->isDefaultNamespace(Ljava/lang/String;)Z

    move-result v8

    move v0, v8

    goto/16 :goto_0

    :cond_9
    const/4 v8, 0x0

    move v0, v8

    goto/16 :goto_0

    :cond_a
    const/4 v8, 0x0

    move v0, v8

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public isEqualNode(Lorg/w3c/dom/Node;)Z
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move-object v2, v1

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v3

    if-eq v2, v3, :cond_1

    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/NodeImpl;->getNodeName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    move-object v2, v1

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    :cond_2
    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/NodeImpl;->getNodeName()Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    :cond_3
    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/NodeImpl;->getLocalName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    move-object v2, v1

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    :cond_4
    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/NodeImpl;->getLocalName()Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    :cond_5
    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    move-object v2, v1

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    :cond_6
    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    :cond_7
    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/NodeImpl;->getPrefix()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    move-object v2, v1

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    move v0, v2

    goto/16 :goto_0

    :cond_8
    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/NodeImpl;->getPrefix()Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const/4 v2, 0x0

    move v0, v2

    goto/16 :goto_0

    :cond_9
    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    move-object v2, v1

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    const/4 v2, 0x0

    move v0, v2

    goto/16 :goto_0

    :cond_a
    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    move-object v3, v1

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const/4 v2, 0x0

    move v0, v2

    goto/16 :goto_0

    :cond_b
    const/4 v2, 0x1

    move v0, v2

    goto/16 :goto_0
.end method

.method final isFirstChild(Z)V
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-short v3, v3, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    const/16 v4, 0x10

    or-int/lit8 v3, v3, 0x10

    int-to-short v3, v3

    :goto_0
    iput-short v3, v2, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    return-void

    :cond_0
    move-object v3, v0

    iget-short v3, v3, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    const/16 v4, -0x11

    and-int/lit8 v3, v3, -0x11

    int-to-short v3, v3

    goto :goto_0
.end method

.method final isFirstChild()Z
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-short v1, v1, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    const/16 v2, 0x10

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method final isIdAttribute(Z)V
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-short v3, v3, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    const/16 v4, 0x200

    or-int/lit16 v3, v3, 0x200

    int-to-short v3, v3

    :goto_0
    iput-short v3, v2, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    return-void

    :cond_0
    move-object v3, v0

    iget-short v3, v3, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    const/16 v4, -0x201

    and-int/lit16 v3, v3, -0x201

    int-to-short v3, v3

    goto :goto_0
.end method

.method final isIdAttribute()Z
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-short v1, v1, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    const/16 v2, 0x200

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method final isIgnorableWhitespace(Z)V
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-short v3, v3, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    const/16 v4, 0x40

    or-int/lit8 v3, v3, 0x40

    int-to-short v3, v3

    :goto_0
    iput-short v3, v2, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    return-void

    :cond_0
    move-object v3, v0

    iget-short v3, v3, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    const/16 v4, -0x41

    and-int/lit8 v3, v3, -0x41

    int-to-short v3, v3

    goto :goto_0
.end method

.method final isNormalized(Z)V
    .locals 5

    move-object v0, p0

    move v1, p1

    move v2, v1

    if-nez v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/NodeImpl;->isNormalized()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/NodeImpl;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/NodeImpl;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/xerces/dom/NodeImpl;->isNormalized(Z)V

    :cond_0
    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-short v3, v3, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    const/16 v4, 0x100

    or-int/lit16 v3, v3, 0x100

    int-to-short v3, v3

    :goto_0
    iput-short v3, v2, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    return-void

    :cond_1
    move-object v3, v0

    iget-short v3, v3, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    const/16 v4, -0x101

    and-int/lit16 v3, v3, -0x101

    int-to-short v3, v3

    goto :goto_0
.end method

.method final isNormalized()Z
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-short v1, v1, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    const/16 v2, 0x100

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method final isOwned(Z)V
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-short v3, v3, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    const/16 v4, 0x8

    or-int/lit8 v3, v3, 0x8

    int-to-short v3, v3

    :goto_0
    iput-short v3, v2, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    return-void

    :cond_0
    move-object v3, v0

    iget-short v3, v3, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    const/16 v4, -0x9

    and-int/lit8 v3, v3, -0x9

    int-to-short v3, v3

    goto :goto_0
.end method

.method final isOwned()Z
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-short v1, v1, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    const/16 v2, 0x8

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method final isReadOnly(Z)V
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-short v3, v3, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    const/4 v4, 0x1

    or-int/lit8 v3, v3, 0x1

    int-to-short v3, v3

    :goto_0
    iput-short v3, v2, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    return-void

    :cond_0
    move-object v3, v0

    iget-short v3, v3, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    const/4 v4, -0x2

    and-int/lit8 v3, v3, -0x2

    int-to-short v3, v3

    goto :goto_0
.end method

.method final isReadOnly()Z
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-short v1, v1, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    const/4 v2, 0x1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSameNode(Lorg/w3c/dom/Node;)Z
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method final isSpecified(Z)V
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-short v3, v3, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    const/16 v4, 0x20

    or-int/lit8 v3, v3, 0x20

    int-to-short v3, v3

    :goto_0
    iput-short v3, v2, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    return-void

    :cond_0
    move-object v3, v0

    iget-short v3, v3, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    const/16 v4, -0x21

    and-int/lit8 v3, v3, -0x21

    int-to-short v3, v3

    goto :goto_0
.end method

.method final isSpecified()Z
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-short v1, v1, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    const/16 v2, 0x20

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/NodeImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/xerces/dom/CoreDocumentImpl;->getImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 3

    move-object v0, p0

    move v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method lookupNamespacePrefix(Ljava/lang/String;Lorg/apache/xerces/dom/ElementImpl;)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v13, v0

    invoke-virtual {v13}, Lorg/apache/xerces/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v13

    move-object v3, v13

    move-object v13, v0

    invoke-virtual {v13}, Lorg/apache/xerces/dom/NodeImpl;->getPrefix()Ljava/lang/String;

    move-result-object v13

    move-object v4, v13

    move-object v13, v3

    if-eqz v13, :cond_0

    move-object v13, v3

    move-object v14, v1

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    move-object v13, v4

    if-eqz v13, :cond_0

    move-object v13, v2

    move-object v14, v4

    invoke-virtual {v13, v14}, Lorg/apache/xerces/dom/ElementImpl;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v5, v13

    move-object v13, v5

    if-eqz v13, :cond_0

    move-object v13, v5

    move-object v14, v1

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    move-object v13, v4

    move-object v0, v13

    :goto_0
    return-object v0

    :cond_0
    move-object v13, v0

    invoke-virtual {v13}, Lorg/apache/xerces/dom/NodeImpl;->hasAttributes()Z

    move-result v13

    if-eqz v13, :cond_1

    move-object v13, v0

    invoke-virtual {v13}, Lorg/apache/xerces/dom/NodeImpl;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v13

    move-object v5, v13

    move-object v13, v5

    invoke-interface {v13}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v13

    move v6, v13

    const/4 v13, 0x0

    move v7, v13

    :goto_1
    move v13, v7

    move v14, v6

    if-lt v13, v14, :cond_2

    :cond_1
    move-object v13, v0

    move-object v14, v0

    invoke-virtual {v13, v14}, Lorg/apache/xerces/dom/NodeImpl;->getElementAncestor(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v13

    check-cast v13, Lorg/apache/xerces/dom/NodeImpl;

    move-object v5, v13

    move-object v13, v5

    if-eqz v13, :cond_5

    move-object v13, v5

    move-object v14, v1

    move-object v15, v2

    invoke-virtual {v13, v14, v15}, Lorg/apache/xerces/dom/NodeImpl;->lookupNamespacePrefix(Ljava/lang/String;Lorg/apache/xerces/dom/ElementImpl;)Ljava/lang/String;

    move-result-object v13

    move-object v0, v13

    goto :goto_0

    :cond_2
    move-object v13, v5

    move v14, v7

    invoke-interface {v13, v14}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    move-object v8, v13

    move-object v13, v8

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v13

    move-object v3, v13

    move-object v13, v3

    if-eqz v13, :cond_4

    move-object v13, v3

    const-string/jumbo v14, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    move-object v13, v8

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v13

    move-object v9, v13

    move-object v13, v8

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v13

    move-object v10, v13

    move-object v13, v8

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "xmlns"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    move-object v13, v9

    if-eqz v13, :cond_4

    move-object v13, v9

    const-string/jumbo v14, "xmlns"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    move-object v13, v10

    move-object v14, v1

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    :cond_3
    move-object v13, v8

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v13

    move-object v11, v13

    move-object v13, v2

    move-object v14, v11

    invoke-virtual {v13, v14}, Lorg/apache/xerces/dom/ElementImpl;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v12, v13

    move-object v13, v12

    if-eqz v13, :cond_4

    move-object v13, v12

    move-object v14, v1

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    move-object v13, v11

    move-object v0, v13

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    const/4 v13, 0x0

    move-object v0, v13

    goto/16 :goto_0
.end method

.method public lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object v11, v0

    invoke-virtual {v11}, Lorg/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v11

    move v2, v11

    move v11, v2

    packed-switch v11, :pswitch_data_0

    :pswitch_0
    move-object v11, v0

    move-object v12, v0

    invoke-virtual {v11, v12}, Lorg/apache/xerces/dom/NodeImpl;->getElementAncestor(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/apache/xerces/dom/NodeImpl;

    move-object v3, v11

    move-object v11, v3

    if-eqz v11, :cond_b

    move-object v11, v3

    move-object v12, v1

    invoke-virtual {v11, v12}, Lorg/apache/xerces/dom/NodeImpl;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v0, v11

    :goto_0
    return-object v0

    :pswitch_1
    move-object v11, v0

    invoke-virtual {v11}, Lorg/apache/xerces/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v11

    move-object v3, v11

    move-object v11, v0

    invoke-virtual {v11}, Lorg/apache/xerces/dom/NodeImpl;->getPrefix()Ljava/lang/String;

    move-result-object v11

    move-object v4, v11

    move-object v11, v3

    if-eqz v11, :cond_1

    move-object v11, v1

    if-nez v11, :cond_0

    move-object v11, v4

    move-object v12, v1

    if-ne v11, v12, :cond_0

    move-object v11, v3

    move-object v0, v11

    goto :goto_0

    :cond_0
    move-object v11, v4

    if-eqz v11, :cond_1

    move-object v11, v4

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    move-object v11, v3

    move-object v0, v11

    goto :goto_0

    :cond_1
    move-object v11, v0

    invoke-virtual {v11}, Lorg/apache/xerces/dom/NodeImpl;->hasAttributes()Z

    move-result v11

    if-eqz v11, :cond_2

    move-object v11, v0

    invoke-virtual {v11}, Lorg/apache/xerces/dom/NodeImpl;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v11

    move-object v5, v11

    move-object v11, v5

    invoke-interface {v11}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v11

    move v6, v11

    const/4 v11, 0x0

    move v7, v11

    :goto_1
    move v11, v7

    move v12, v6

    if-lt v11, v12, :cond_3

    :cond_2
    move-object v11, v0

    move-object v12, v0

    invoke-virtual {v11, v12}, Lorg/apache/xerces/dom/NodeImpl;->getElementAncestor(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/apache/xerces/dom/NodeImpl;

    move-object v5, v11

    move-object v11, v5

    if-eqz v11, :cond_8

    move-object v11, v5

    move-object v12, v1

    invoke-virtual {v11, v12}, Lorg/apache/xerces/dom/NodeImpl;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v0, v11

    goto :goto_0

    :cond_3
    move-object v11, v5

    move v12, v7

    invoke-interface {v11, v12}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    move-object v8, v11

    move-object v11, v8

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v11

    move-object v3, v11

    move-object v11, v3

    if-eqz v11, :cond_7

    move-object v11, v3

    const-string/jumbo v12, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    move-object v11, v8

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    move-object v11, v8

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    move-object v11, v1

    if-nez v11, :cond_5

    move-object v11, v8

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "xmlns"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    move-object v11, v10

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_4

    move-object v11, v10

    :goto_2
    move-object v0, v11

    goto/16 :goto_0

    :cond_4
    const/4 v11, 0x0

    goto :goto_2

    :cond_5
    move-object v11, v9

    if-eqz v11, :cond_7

    move-object v11, v9

    const-string/jumbo v12, "xmlns"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    move-object v11, v8

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v11

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    move-object v11, v10

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_6

    move-object v11, v10

    :goto_3
    move-object v0, v11

    goto/16 :goto_0

    :cond_6
    const/4 v11, 0x0

    goto :goto_3

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_8
    const/4 v11, 0x0

    move-object v0, v11

    goto/16 :goto_0

    :pswitch_2
    move-object v11, v0

    check-cast v11, Lorg/w3c/dom/Document;

    invoke-interface {v11}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v11

    move-object v3, v11

    move-object v11, v3

    if-eqz v11, :cond_9

    move-object v11, v3

    move-object v12, v1

    invoke-interface {v11, v12}, Lorg/w3c/dom/Element;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v0, v11

    goto/16 :goto_0

    :cond_9
    const/4 v11, 0x0

    move-object v0, v11

    goto/16 :goto_0

    :pswitch_3
    const/4 v11, 0x0

    move-object v0, v11

    goto/16 :goto_0

    :pswitch_4
    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/dom/NodeImpl;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    invoke-virtual {v11}, Lorg/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_a

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/dom/NodeImpl;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    move-object v12, v1

    invoke-virtual {v11, v12}, Lorg/apache/xerces/dom/NodeImpl;->lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v0, v11

    goto/16 :goto_0

    :cond_a
    const/4 v11, 0x0

    move-object v0, v11

    goto/16 :goto_0

    :cond_b
    const/4 v11, 0x0

    move-object v0, v11

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public lookupPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v4

    move v2, v4

    move v4, v2

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    move-object v4, v0

    move-object v5, v0

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/NodeImpl;->getElementAncestor(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/dom/NodeImpl;

    move-object v3, v4

    move-object v4, v3

    if-eqz v4, :cond_3

    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/NodeImpl;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    :pswitch_1
    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    move-object v4, v0

    move-object v5, v1

    move-object v6, v0

    check-cast v6, Lorg/apache/xerces/dom/ElementImpl;

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/dom/NodeImpl;->lookupNamespacePrefix(Ljava/lang/String;Lorg/apache/xerces/dom/ElementImpl;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    :pswitch_2
    move-object v4, v0

    check-cast v4, Lorg/w3c/dom/Document;

    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v4

    move-object v3, v4

    move-object v4, v3

    if-eqz v4, :cond_1

    move-object v4, v3

    move-object v5, v1

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0

    :pswitch_3
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0

    :pswitch_4
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/NodeImpl;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    invoke-virtual {v4}, Lorg/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/NodeImpl;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/NodeImpl;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public final needsSyncChildren(Z)V
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-short v3, v3, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    const/4 v4, 0x4

    or-int/lit8 v3, v3, 0x4

    int-to-short v3, v3

    :goto_0
    iput-short v3, v2, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    return-void

    :cond_0
    move-object v3, v0

    iget-short v3, v3, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    const/4 v4, -0x5

    and-int/lit8 v3, v3, -0x5

    int-to-short v3, v3

    goto :goto_0
.end method

.method final needsSyncChildren()Z
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-short v1, v1, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    const/4 v2, 0x4

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method final needsSyncData(Z)V
    .locals 5

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-short v3, v3, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    const/4 v4, 0x2

    or-int/lit8 v3, v3, 0x2

    int-to-short v3, v3

    :goto_0
    iput-short v3, v2, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    return-void

    :cond_0
    move-object v3, v0

    iget-short v3, v3, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    const/4 v4, -0x3

    and-int/lit8 v3, v3, -0x3

    int-to-short v3, v3

    goto :goto_0
.end method

.method final needsSyncData()Z
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-short v1, v1, Lorg/apache/xerces/dom/NodeImpl;->flags:S

    const/4 v2, 0x2

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public normalize()V
    .locals 0

    return-void
.end method

.method ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/NodeImpl;->isOwned()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/NodeImpl;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    invoke-virtual {v1}, Lorg/apache/xerces/dom/NodeImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v1

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/NodeImpl;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    check-cast v1, Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v0, v1

    goto :goto_0
.end method

.method parentNode()Lorg/apache/xerces/dom/NodeImpl;
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method previousSibling()Lorg/apache/xerces/dom/ChildNode;
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lorg/w3c/dom/DOMException;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const/16 v4, 0x8

    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v6, "NOT_FOUND_ERR"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2
.end method

.method public removeEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/NodeImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Lorg/apache/xerces/dom/CoreDocumentImpl;->removeEventListener(Lorg/apache/xerces/dom/NodeImpl;Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    return-void
.end method

.method public replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

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
.end method

.method public setNodeValue(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    return-void
.end method

.method protected setOwnerDocument(Lorg/apache/xerces/dom/CoreDocumentImpl;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/NodeImpl;->needsSyncData()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/NodeImpl;->synchronizeData()V

    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/NodeImpl;->isOwned()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/dom/NodeImpl;->ownerNode:Lorg/apache/xerces/dom/NodeImpl;

    :cond_1
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lorg/w3c/dom/DOMException;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const/16 v4, 0xe

    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v6, "NAMESPACE_ERR"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2
.end method

.method public setReadOnly(ZZ)V
    .locals 5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/NodeImpl;->needsSyncData()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/NodeImpl;->synchronizeData()V

    :cond_0
    move-object v3, v0

    move v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/NodeImpl;->isReadOnly(Z)V

    return-void
.end method

.method public setTextContent(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/dom/NodeImpl;->setNodeValue(Ljava/lang/String;)V

    return-void
.end method

.method public setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/NodeImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v4, v5, v6, v7, v8}, Lorg/apache/xerces/dom/CoreDocumentImpl;->setUserData(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/NodeImpl;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v2

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/dom/CoreDocumentImpl;->setUserData(Lorg/apache/xerces/dom/NodeImpl;Ljava/lang/Object;)V

    return-void
.end method

.method protected synchronizeData()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/xerces/dom/NodeImpl;->needsSyncData(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    move-object v0, p0

    new-instance v1, Ljava/lang/StringBuffer;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/NodeImpl;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
