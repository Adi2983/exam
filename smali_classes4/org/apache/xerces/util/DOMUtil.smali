.class public Lorg/apache/xerces/util/DOMUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/util/DOMUtil$ThrowableMethods;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyInto(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v18, v3

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v18

    move-object/from16 v4, v18

    move-object/from16 v18, v4

    move-object/from16 v0, v18

    instance-of v0, v0, Lorg/apache/xerces/dom/DocumentImpl;

    move/from16 v18, v0

    move/from16 v5, v18

    move-object/from16 v18, v2

    move-object/from16 v6, v18

    move-object/from16 v18, v2

    move-object/from16 v7, v18

    move-object/from16 v18, v2

    move-object/from16 v8, v18

    :cond_0
    :goto_0
    move-object/from16 v18, v8

    if-nez v18, :cond_1

    return-void

    :cond_1
    const/16 v18, 0x0

    move-object/from16 v9, v18

    move-object/from16 v18, v8

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v18

    move/from16 v10, v18

    move/from16 v18, v10

    packed-switch v18, :pswitch_data_0

    :pswitch_0
    new-instance v18, Ljava/lang/IllegalArgumentException;

    move-object/from16 v22, v18

    move-object/from16 v18, v22

    move-object/from16 v19, v22

    new-instance v20, Ljava/lang/StringBuffer;

    move-object/from16 v22, v20

    move-object/from16 v20, v22

    move-object/from16 v21, v22

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v21, "can\'t copy node type, "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    move/from16 v21, v10

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v20

    const-string/jumbo v21, " ("

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    move-object/from16 v21, v8

    invoke-interface/range {v21 .. v21}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v20

    const/16 v21, 0x29

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    :pswitch_1
    move-object/from16 v18, v4

    move-object/from16 v19, v8

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/Document;->createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;

    move-result-object v18

    move-object/from16 v9, v18

    :goto_1
    move-object/from16 v18, v3

    move-object/from16 v19, v9

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v18

    move-object/from16 v18, v8

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v18

    if-eqz v18, :cond_4

    move-object/from16 v18, v8

    move-object/from16 v7, v18

    move-object/from16 v18, v8

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v18

    move-object/from16 v8, v18

    move-object/from16 v18, v9

    move-object/from16 v3, v18

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v18, v4

    move-object/from16 v19, v8

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/Document;->createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;

    move-result-object v18

    move-object/from16 v9, v18

    goto :goto_1

    :pswitch_3
    move-object/from16 v18, v4

    move-object/from16 v19, v8

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v18

    move-object/from16 v11, v18

    move-object/from16 v18, v11

    move-object/from16 v9, v18

    move-object/from16 v18, v8

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v18

    move-object/from16 v12, v18

    move-object/from16 v18, v12

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v18

    move/from16 v13, v18

    const/16 v18, 0x0

    move/from16 v14, v18

    :goto_2
    move/from16 v18, v14

    move/from16 v19, v13

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_2

    goto :goto_1

    :cond_2
    move-object/from16 v18, v12

    move/from16 v19, v14

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v18

    check-cast v18, Lorg/w3c/dom/Attr;

    move-object/from16 v15, v18

    move-object/from16 v18, v15

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v16, v18

    move-object/from16 v18, v15

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Attr;->getNodeValue()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v17, v18

    move-object/from16 v18, v11

    move-object/from16 v19, v16

    move-object/from16 v20, v17

    invoke-interface/range {v18 .. v20}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v18, v5

    if-eqz v18, :cond_3

    move-object/from16 v18, v15

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Attr;->getSpecified()Z

    move-result v18

    if-nez v18, :cond_3

    move-object/from16 v18, v11

    move-object/from16 v19, v16

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v18

    check-cast v18, Lorg/apache/xerces/dom/AttrImpl;

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lorg/apache/xerces/dom/AttrImpl;->setSpecified(Z)V

    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :pswitch_4
    move-object/from16 v18, v4

    move-object/from16 v19, v8

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/Document;->createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;

    move-result-object v18

    move-object/from16 v9, v18

    goto/16 :goto_1

    :pswitch_5
    move-object/from16 v18, v4

    move-object/from16 v19, v8

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v20, v8

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Lorg/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object v18

    move-object/from16 v9, v18

    goto/16 :goto_1

    :pswitch_6
    move-object/from16 v18, v4

    move-object/from16 v19, v8

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v18

    move-object/from16 v9, v18

    goto/16 :goto_1

    :cond_4
    move-object/from16 v18, v8

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v18

    move-object/from16 v8, v18

    :goto_3
    move-object/from16 v18, v8

    if-nez v18, :cond_0

    move-object/from16 v18, v7

    move-object/from16 v19, v6

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_0

    move-object/from16 v18, v7

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v18

    move-object/from16 v8, v18

    move-object/from16 v18, v7

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v18

    move-object/from16 v7, v18

    move-object/from16 v18, v3

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v18

    move-object/from16 v3, v18

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method public static createDOMException(SLjava/lang/Throwable;)Lorg/w3c/dom/DOMException;
    .locals 11

    move v0, p0

    move-object v1, p1

    new-instance v4, Lorg/w3c/dom/DOMException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move v6, v0

    move-object v7, v1

    if-eqz v7, :cond_1

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    :goto_0
    invoke-direct {v5, v6, v7}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    move-object v2, v4

    move-object v4, v1

    if-eqz v4, :cond_0

    invoke-static {}, Lorg/apache/xerces/util/DOMUtil$ThrowableMethods;->access$000()Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    invoke-static {}, Lorg/apache/xerces/util/DOMUtil$ThrowableMethods;->access$100()Ljava/lang/reflect/Method;

    move-result-object v4

    move-object v5, v2

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v1

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :cond_0
    :goto_1
    move-object v4, v2

    move-object v0, v4

    return-object v0

    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v3, v4

    goto :goto_1
.end method

.method public static createLSException(SLjava/lang/Throwable;)Lorg/w3c/dom/ls/LSException;
    .locals 11

    move v0, p0

    move-object v1, p1

    new-instance v4, Lorg/w3c/dom/ls/LSException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move v6, v0

    move-object v7, v1

    if-eqz v7, :cond_1

    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    :goto_0
    invoke-direct {v5, v6, v7}, Lorg/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    move-object v2, v4

    move-object v4, v1

    if-eqz v4, :cond_0

    invoke-static {}, Lorg/apache/xerces/util/DOMUtil$ThrowableMethods;->access$000()Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_0
    invoke-static {}, Lorg/apache/xerces/util/DOMUtil$ThrowableMethods;->access$100()Ljava/lang/reflect/Method;

    move-result-object v4

    move-object v5, v2

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    move-object v9, v1

    aput-object v9, v7, v8

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :cond_0
    :goto_1
    move-object v4, v2

    move-object v0, v4

    return-object v0

    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v3, v4

    goto :goto_1
.end method

.method public static getAnnotation(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    instance-of v1, v1, Lorg/apache/xerces/impl/xs/opti/ElementImpl;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/apache/xerces/impl/xs/opti/ElementImpl;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->getAnnotation()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public static getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static getAttrNS(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/Element;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public static getAttrValue(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static getAttrValueNS(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public static getAttrs(Lorg/w3c/dom/Element;)[Lorg/w3c/dom/Attr;
    .locals 8

    move-object v0, p0

    move-object v4, v0

    invoke-interface {v4}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v4

    move-object v1, v4

    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v4

    new-array v4, v4, [Lorg/w3c/dom/Attr;

    move-object v2, v4

    const/4 v4, 0x0

    move v3, v4

    :goto_0
    move v4, v3

    move-object v5, v1

    invoke-interface {v5}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v5

    if-lt v4, v5, :cond_0

    move-object v4, v2

    move-object v0, v4

    return-object v0

    :cond_0
    move-object v4, v2

    move v5, v3

    move-object v6, v1

    move v7, v3

    invoke-interface {v6, v7}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Attr;

    aput-object v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static getChildText(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 7

    move-object v0, p0

    move-object v4, v0

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, v4

    move-object v4, v0

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v2, v4

    :goto_1
    move-object v4, v2

    if-nez v4, :cond_1

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    :cond_1
    move-object v4, v2

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    move v3, v4

    move v4, v3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    :cond_2
    :goto_2
    move-object v4, v2

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v2, v4

    goto :goto_1

    :cond_3
    move v4, v3

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    move-object v4, v1

    move-object v5, v2

    invoke-static {v5}, Lorg/apache/xerces/util/DOMUtil;->getChildText(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    goto :goto_2
.end method

.method public static getDocument(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Document;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getFirstChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;
    .locals 4

    move-object v0, p0

    move-object v2, v0

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v1, v2

    :goto_0
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_0
    move-object v2, v1

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    move-object v2, v1

    check-cast v2, Lorg/w3c/dom/Element;

    move-object v0, v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v1, v2

    goto :goto_0
.end method

.method public static getFirstChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v2, v3

    :goto_0
    move-object v3, v2

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move-object v0, v3

    :goto_1
    return-object v0

    :cond_0
    move-object v3, v2

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    move-object v3, v2

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lorg/w3c/dom/Element;

    move-object v0, v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v2, v3

    goto :goto_0
.end method

.method public static getFirstChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, v0

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v4, v6

    :goto_0
    move-object v6, v4

    if-nez v6, :cond_0

    const/4 v6, 0x0

    move-object v0, v6

    :goto_1
    return-object v0

    :cond_0
    move-object v6, v4

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    move-object v6, v4

    check-cast v6, Lorg/w3c/dom/Element;

    move-object v5, v6

    move-object v6, v5

    invoke-interface {v6}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v5

    move-object v7, v2

    invoke-interface {v6, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v5

    move-object v0, v6

    goto :goto_1

    :cond_1
    move-object v6, v4

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v4, v6

    goto :goto_0
.end method

.method public static getFirstChildElement(Lorg/w3c/dom/Node;[Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

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

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const/4 v4, 0x0

    move v3, v4

    :goto_2
    move v4, v3

    move-object v5, v1

    array-length v5, v5

    if-lt v4, v5, :cond_2

    :cond_1
    move-object v4, v2

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v2, v4

    goto :goto_0

    :cond_2
    move-object v4, v2

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    move v6, v3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v2

    check-cast v4, Lorg/w3c/dom/Element;

    move-object v0, v4

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public static getFirstChildElementNS(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    if-nez v5, :cond_0

    const/4 v5, 0x0

    move-object v0, v5

    :goto_1
    return-object v0

    :cond_0
    move-object v5, v3

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    move-object v5, v3

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    move-object v5, v4

    if-eqz v5, :cond_1

    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    check-cast v5, Lorg/w3c/dom/Element;

    move-object v0, v5

    goto :goto_1

    :cond_1
    move-object v5, v3

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v3, v5

    goto :goto_0
.end method

.method public static getFirstChildElementNS(Lorg/w3c/dom/Node;[[Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v2, v5

    :goto_0
    move-object v5, v2

    if-nez v5, :cond_0

    const/4 v5, 0x0

    move-object v0, v5

    :goto_1
    return-object v0

    :cond_0
    move-object v5, v2

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    const/4 v5, 0x0

    move v3, v5

    :goto_2
    move v5, v3

    move-object v6, v1

    array-length v6, v6

    if-lt v5, v6, :cond_2

    :cond_1
    move-object v5, v2

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v2, v5

    goto :goto_0

    :cond_2
    move-object v5, v2

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    move-object v5, v4

    if-eqz v5, :cond_3

    move-object v5, v4

    move-object v6, v1

    move v7, v3

    aget-object v6, v6, v7

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v2

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    move v7, v3

    aget-object v6, v6, v7

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v2

    check-cast v5, Lorg/w3c/dom/Element;

    move-object v0, v5

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public static getFirstVisibleChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;
    .locals 4

    move-object v0, p0

    move-object v2, v0

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v1, v2

    :goto_0
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_0
    move-object v2, v1

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    move-object v2, v1

    invoke-static {v2}, Lorg/apache/xerces/util/DOMUtil;->isHidden(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v1

    check-cast v2, Lorg/w3c/dom/Element;

    move-object v0, v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v1, v2

    goto :goto_0
.end method

.method public static getFirstVisibleChildElement(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)Lorg/w3c/dom/Element;
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v2, v3

    :goto_0
    move-object v3, v2

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move-object v0, v3

    :goto_1
    return-object v0

    :cond_0
    move-object v3, v2

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    move-object v3, v2

    move-object v4, v1

    invoke-static {v3, v4}, Lorg/apache/xerces/util/DOMUtil;->isHidden(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v2

    check-cast v3, Lorg/w3c/dom/Element;

    move-object v0, v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v2, v3

    goto :goto_0
.end method

.method public static getLastChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;
    .locals 4

    move-object v0, p0

    move-object v2, v0

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v1, v2

    :goto_0
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_0
    move-object v2, v1

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    move-object v2, v1

    check-cast v2, Lorg/w3c/dom/Element;

    move-object v0, v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v1, v2

    goto :goto_0
.end method

.method public static getLastChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v2, v3

    :goto_0
    move-object v3, v2

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move-object v0, v3

    :goto_1
    return-object v0

    :cond_0
    move-object v3, v2

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    move-object v3, v2

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lorg/w3c/dom/Element;

    move-object v0, v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v2, v3

    goto :goto_0
.end method

.method public static getLastChildElement(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, v0

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v4, v6

    :goto_0
    move-object v6, v4

    if-nez v6, :cond_0

    const/4 v6, 0x0

    move-object v0, v6

    :goto_1
    return-object v0

    :cond_0
    move-object v6, v4

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    move-object v6, v4

    check-cast v6, Lorg/w3c/dom/Element;

    move-object v5, v6

    move-object v6, v5

    invoke-interface {v6}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v5

    move-object v7, v2

    invoke-interface {v6, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v5

    move-object v0, v6

    goto :goto_1

    :cond_1
    move-object v6, v4

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v4, v6

    goto :goto_0
.end method

.method public static getLastChildElement(Lorg/w3c/dom/Node;[Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

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

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const/4 v4, 0x0

    move v3, v4

    :goto_2
    move v4, v3

    move-object v5, v1

    array-length v5, v5

    if-lt v4, v5, :cond_2

    :cond_1
    move-object v4, v2

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v2, v4

    goto :goto_0

    :cond_2
    move-object v4, v2

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    move v6, v3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v2

    check-cast v4, Lorg/w3c/dom/Element;

    move-object v0, v4

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public static getLastChildElementNS(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    if-nez v5, :cond_0

    const/4 v5, 0x0

    move-object v0, v5

    :goto_1
    return-object v0

    :cond_0
    move-object v5, v3

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    move-object v5, v3

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    move-object v5, v4

    if-eqz v5, :cond_1

    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    check-cast v5, Lorg/w3c/dom/Element;

    move-object v0, v5

    goto :goto_1

    :cond_1
    move-object v5, v3

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v3, v5

    goto :goto_0
.end method

.method public static getLastChildElementNS(Lorg/w3c/dom/Node;[[Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v2, v5

    :goto_0
    move-object v5, v2

    if-nez v5, :cond_0

    const/4 v5, 0x0

    move-object v0, v5

    :goto_1
    return-object v0

    :cond_0
    move-object v5, v2

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    const/4 v5, 0x0

    move v3, v5

    :goto_2
    move v5, v3

    move-object v6, v1

    array-length v6, v6

    if-lt v5, v6, :cond_2

    :cond_1
    move-object v5, v2

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v2, v5

    goto :goto_0

    :cond_2
    move-object v5, v2

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    move-object v5, v4

    if-eqz v5, :cond_3

    move-object v5, v4

    move-object v6, v1

    move v7, v3

    aget-object v6, v6, v7

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v2

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    move v7, v3

    aget-object v6, v6, v7

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v2

    check-cast v5, Lorg/w3c/dom/Element;

    move-object v0, v5

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public static getLastVisibleChildElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;
    .locals 4

    move-object v0, p0

    move-object v2, v0

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v1, v2

    :goto_0
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_0
    move-object v2, v1

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    move-object v2, v1

    invoke-static {v2}, Lorg/apache/xerces/util/DOMUtil;->isHidden(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v1

    check-cast v2, Lorg/w3c/dom/Element;

    move-object v0, v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v1, v2

    goto :goto_0
.end method

.method public static getLastVisibleChildElement(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)Lorg/w3c/dom/Element;
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v2, v3

    :goto_0
    move-object v3, v2

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move-object v0, v3

    :goto_1
    return-object v0

    :cond_0
    move-object v3, v2

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    move-object v3, v2

    move-object v4, v1

    invoke-static {v3, v4}, Lorg/apache/xerces/util/DOMUtil;->isHidden(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v2

    check-cast v3, Lorg/w3c/dom/Element;

    move-object v0, v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v2, v3

    goto :goto_0
.end method

.method public static getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 3

    move-object v0, p0

    move-object v2, v0

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    :goto_0
    move-object v0, v2

    return-object v0

    :cond_0
    move-object v2, v0

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getName(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getNamespaceURI(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getNextSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;
    .locals 4

    move-object v0, p0

    move-object v2, v0

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v1, v2

    :goto_0
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_0
    move-object v2, v1

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    move-object v2, v1

    check-cast v2, Lorg/w3c/dom/Element;

    move-object v0, v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v1, v2

    goto :goto_0
.end method

.method public static getNextSiblingElement(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v2, v3

    :goto_0
    move-object v3, v2

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move-object v0, v3

    :goto_1
    return-object v0

    :cond_0
    move-object v3, v2

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    move-object v3, v2

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lorg/w3c/dom/Element;

    move-object v0, v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v2, v3

    goto :goto_0
.end method

.method public static getNextSiblingElement(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, v0

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v4, v6

    :goto_0
    move-object v6, v4

    if-nez v6, :cond_0

    const/4 v6, 0x0

    move-object v0, v6

    :goto_1
    return-object v0

    :cond_0
    move-object v6, v4

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    move-object v6, v4

    check-cast v6, Lorg/w3c/dom/Element;

    move-object v5, v6

    move-object v6, v5

    invoke-interface {v6}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v5

    move-object v7, v2

    invoke-interface {v6, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v5

    move-object v0, v6

    goto :goto_1

    :cond_1
    move-object v6, v4

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v4, v6

    goto :goto_0
.end method

.method public static getNextSiblingElement(Lorg/w3c/dom/Node;[Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

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

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const/4 v4, 0x0

    move v3, v4

    :goto_2
    move v4, v3

    move-object v5, v1

    array-length v5, v5

    if-lt v4, v5, :cond_2

    :cond_1
    move-object v4, v2

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v2, v4

    goto :goto_0

    :cond_2
    move-object v4, v2

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    move-object v5, v1

    move v6, v3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v2

    check-cast v4, Lorg/w3c/dom/Element;

    move-object v0, v4

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public static getNextSiblingElementNS(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    if-nez v5, :cond_0

    const/4 v5, 0x0

    move-object v0, v5

    :goto_1
    return-object v0

    :cond_0
    move-object v5, v3

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    move-object v5, v3

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    move-object v5, v4

    if-eqz v5, :cond_1

    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v3

    check-cast v5, Lorg/w3c/dom/Element;

    move-object v0, v5

    goto :goto_1

    :cond_1
    move-object v5, v3

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v3, v5

    goto :goto_0
.end method

.method public static getNextSiblingElementNS(Lorg/w3c/dom/Node;[[Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v2, v5

    :goto_0
    move-object v5, v2

    if-nez v5, :cond_0

    const/4 v5, 0x0

    move-object v0, v5

    :goto_1
    return-object v0

    :cond_0
    move-object v5, v2

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    const/4 v5, 0x0

    move v3, v5

    :goto_2
    move v5, v3

    move-object v6, v1

    array-length v6, v6

    if-lt v5, v6, :cond_2

    :cond_1
    move-object v5, v2

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v2, v5

    goto :goto_0

    :cond_2
    move-object v5, v2

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    move-object v5, v4

    if-eqz v5, :cond_3

    move-object v5, v4

    move-object v6, v1

    move v7, v3

    aget-object v6, v6, v7

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v2

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    move v7, v3

    aget-object v6, v6, v7

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v2

    check-cast v5, Lorg/w3c/dom/Element;

    move-object v0, v5

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public static getNextVisibleSiblingElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Element;
    .locals 4

    move-object v0, p0

    move-object v2, v0

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v1, v2

    :goto_0
    move-object v2, v1

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move-object v0, v2

    :goto_1
    return-object v0

    :cond_0
    move-object v2, v1

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    move-object v2, v1

    invoke-static {v2}, Lorg/apache/xerces/util/DOMUtil;->isHidden(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v1

    check-cast v2, Lorg/w3c/dom/Element;

    move-object v0, v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v1, v2

    goto :goto_0
.end method

.method public static getNextVisibleSiblingElement(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)Lorg/w3c/dom/Element;
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v2, v3

    :goto_0
    move-object v3, v2

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move-object v0, v3

    :goto_1
    return-object v0

    :cond_0
    move-object v3, v2

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    move-object v3, v2

    move-object v4, v1

    invoke-static {v3, v4}, Lorg/apache/xerces/util/DOMUtil;->isHidden(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v2

    check-cast v3, Lorg/w3c/dom/Element;

    move-object v0, v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v2, v3

    goto :goto_0
.end method

.method public static getParent(Lorg/w3c/dom/Element;)Lorg/w3c/dom/Element;
    .locals 3

    move-object v0, p0

    move-object v2, v0

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v1, v2

    move-object v2, v1

    instance-of v2, v2, Lorg/w3c/dom/Element;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lorg/w3c/dom/Element;

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public static getPrefix(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getRoot(Lorg/w3c/dom/Document;)Lorg/w3c/dom/Element;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getSyntheticAnnotation(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    instance-of v1, v1, Lorg/apache/xerces/impl/xs/opti/ElementImpl;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/apache/xerces/impl/xs/opti/ElementImpl;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/xs/opti/ElementImpl;->getSyntheticAnnotation()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public static getValue(Lorg/w3c/dom/Attr;)Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-interface {v1}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static isHidden(Lorg/w3c/dom/Node;)Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    instance-of v1, v1, Lorg/apache/xerces/impl/xs/opti/NodeImpl;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/apache/xerces/impl/xs/opti/NodeImpl;

    invoke-virtual {v1}, Lorg/apache/xerces/impl/xs/opti/NodeImpl;->getReadOnly()Z

    move-result v1

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    instance-of v1, v1, Lorg/apache/xerces/dom/NodeImpl;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lorg/apache/xerces/dom/NodeImpl;

    invoke-virtual {v1}, Lorg/apache/xerces/dom/NodeImpl;->getReadOnly()Z

    move-result v1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static isHidden(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)Z
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    instance-of v2, v2, Lorg/apache/xerces/impl/xs/opti/NodeImpl;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lorg/apache/xerces/impl/xs/opti/NodeImpl;

    invoke-virtual {v2}, Lorg/apache/xerces/impl/xs/opti/NodeImpl;->getReadOnly()Z

    move-result v2

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method public static setHidden(Lorg/w3c/dom/Node;)V
    .locals 4

    move-object v0, p0

    move-object v1, v0

    instance-of v1, v1, Lorg/apache/xerces/impl/xs/opti/NodeImpl;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lorg/apache/xerces/impl/xs/opti/NodeImpl;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/apache/xerces/impl/xs/opti/NodeImpl;->setReadOnly(ZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, v0

    instance-of v1, v1, Lorg/apache/xerces/dom/NodeImpl;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/apache/xerces/dom/NodeImpl;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/apache/xerces/dom/NodeImpl;->setReadOnly(ZZ)V

    goto :goto_0
.end method

.method public static setHidden(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    instance-of v2, v2, Lorg/apache/xerces/impl/xs/opti/NodeImpl;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lorg/apache/xerces/impl/xs/opti/NodeImpl;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/impl/xs/opti/NodeImpl;->setReadOnly(ZZ)V

    :goto_0
    return-void

    :cond_0
    move-object v2, v1

    move-object v3, v0

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public static setVisible(Lorg/w3c/dom/Node;)V
    .locals 4

    move-object v0, p0

    move-object v1, v0

    instance-of v1, v1, Lorg/apache/xerces/impl/xs/opti/NodeImpl;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lorg/apache/xerces/impl/xs/opti/NodeImpl;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/apache/xerces/impl/xs/opti/NodeImpl;->setReadOnly(ZZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v1, v0

    instance-of v1, v1, Lorg/apache/xerces/dom/NodeImpl;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lorg/apache/xerces/dom/NodeImpl;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/apache/xerces/dom/NodeImpl;->setReadOnly(ZZ)V

    goto :goto_0
.end method

.method public static setVisible(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    instance-of v2, v2, Lorg/apache/xerces/impl/xs/opti/NodeImpl;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lorg/apache/xerces/impl/xs/opti/NodeImpl;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/impl/xs/opti/NodeImpl;->setReadOnly(ZZ)V

    :goto_0
    return-void

    :cond_0
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method
