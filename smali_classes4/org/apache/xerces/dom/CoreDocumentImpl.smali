.class public Lorg/apache/xerces/dom/CoreDocumentImpl;
.super Lorg/apache/xerces/dom/ParentNode;

# interfaces
.implements Lorg/w3c/dom/Document;


# static fields
.field static class$org$w3c$dom$Document:Ljava/lang/Class;

.field private static final kidOK:[I

.field static final serialVersionUID:J


# instance fields
.field protected actualEncoding:Ljava/lang/String;

.field protected allowGrammarAccess:Z

.field protected changes:I

.field protected docElement:Lorg/apache/xerces/dom/ElementImpl;

.field protected docType:Lorg/apache/xerces/dom/DocumentTypeImpl;

.field private documentNumber:I

.field transient domNormalizer:Lorg/apache/xerces/dom/DOMNormalizer;

.field protected encoding:Ljava/lang/String;

.field protected errorChecking:Z

.field transient fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

.field protected fDocumentURI:Ljava/lang/String;

.field transient fFreeNLCache:Lorg/apache/xerces/dom/NodeListCache;

.field transient fXPathEvaluator:Ljava/lang/Object;

.field protected identifiers:Ljava/util/Hashtable;

.field private nodeCounter:I

.field private nodeTable:Ljava/util/Map;

.field protected standalone:Z

.field protected userData:Ljava/util/Map;

.field protected version:Ljava/lang/String;

.field private xml11Version:Z

.field protected xmlVersionChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const/16 v0, 0xd

    new-array v0, v0, [I

    sput-object v0, Lorg/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    sget-object v0, Lorg/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    const/16 v1, 0x9

    const/16 v2, 0x582

    aput v2, v0, v1

    sget-object v0, Lorg/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    const/16 v1, 0xb

    sget-object v2, Lorg/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    const/4 v3, 0x6

    sget-object v4, Lorg/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    const/4 v5, 0x5

    sget-object v6, Lorg/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    const/4 v7, 0x1

    const/16 v8, 0x1ba

    move-object v14, v6

    move v15, v7

    move/from16 v16, v8

    move/from16 v6, v16

    move-object v7, v14

    move v8, v15

    move/from16 v9, v16

    aput v9, v7, v8

    move-object v14, v4

    move v15, v5

    move/from16 v16, v6

    move/from16 v4, v16

    move-object v5, v14

    move v6, v15

    move/from16 v7, v16

    aput v7, v5, v6

    move-object v14, v2

    move v15, v3

    move/from16 v16, v4

    move/from16 v2, v16

    move-object v3, v14

    move v4, v15

    move/from16 v5, v16

    aput v5, v3, v4

    aput v2, v0, v1

    sget-object v0, Lorg/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    const/4 v1, 0x2

    const/16 v2, 0x28

    aput v2, v0, v1

    sget-object v0, Lorg/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    const/16 v1, 0xa

    sget-object v2, Lorg/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    const/4 v3, 0x7

    sget-object v4, Lorg/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    const/16 v5, 0x8

    sget-object v6, Lorg/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    const/4 v7, 0x3

    sget-object v8, Lorg/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    const/4 v9, 0x4

    sget-object v10, Lorg/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    const/16 v11, 0xc

    const/4 v12, 0x0

    move-object v14, v10

    move v15, v11

    move/from16 v16, v12

    move/from16 v10, v16

    move-object v11, v14

    move v12, v15

    move/from16 v13, v16

    aput v13, v11, v12

    move-object v14, v8

    move v15, v9

    move/from16 v16, v10

    move/from16 v8, v16

    move-object v9, v14

    move v10, v15

    move/from16 v11, v16

    aput v11, v9, v10

    move-object v14, v6

    move v15, v7

    move/from16 v16, v8

    move/from16 v6, v16

    move-object v7, v14

    move v8, v15

    move/from16 v9, v16

    aput v9, v7, v8

    move-object v14, v4

    move v15, v5

    move/from16 v16, v6

    move/from16 v4, v16

    move-object v5, v14

    move v6, v15

    move/from16 v7, v16

    aput v7, v5, v6

    move-object v14, v2

    move v15, v3

    move/from16 v16, v4

    move/from16 v2, v16

    move-object v3, v14

    move v4, v15

    move/from16 v5, v16

    aput v5, v3, v4

    aput v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/xerces/dom/CoreDocumentImpl;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/DocumentType;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lorg/apache/xerces/dom/CoreDocumentImpl;-><init>(Lorg/w3c/dom/DocumentType;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/DocumentType;Z)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v6, v0

    move v7, v2

    invoke-direct {v6, v7}, Lorg/apache/xerces/dom/CoreDocumentImpl;-><init>(Z)V

    move-object v6, v1

    if-eqz v6, :cond_0

    move-object v6, v1

    :try_start_0
    check-cast v6, Lorg/apache/xerces/dom/DocumentTypeImpl;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v6

    move-object v6, v3

    move-object v7, v0

    iput-object v7, v6, Lorg/apache/xerces/dom/DocumentTypeImpl;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v6, v0

    move-object v7, v1

    invoke-virtual {v6, v7}, Lorg/apache/xerces/dom/CoreDocumentImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v6

    :cond_0
    return-void

    :catch_0
    move-exception v6

    move-object v4, v6

    const-string/jumbo v6, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v7, "WRONG_DOCUMENT_ERR"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    new-instance v6, Lorg/w3c/dom/DOMException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x4

    move-object v9, v5

    invoke-direct {v7, v8, v9}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v6
.end method

.method public constructor <init>(Z)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/apache/xerces/dom/ParentNode;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;)V

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/dom/CoreDocumentImpl;->domNormalizer:Lorg/apache/xerces/dom/DOMNormalizer;

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/dom/CoreDocumentImpl;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/dom/CoreDocumentImpl;->fXPathEvaluator:Ljava/lang/Object;

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lorg/apache/xerces/dom/CoreDocumentImpl;->changes:I

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xerces/dom/CoreDocumentImpl;->xmlVersionChanged:Z

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lorg/apache/xerces/dom/CoreDocumentImpl;->documentNumber:I

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lorg/apache/xerces/dom/CoreDocumentImpl;->nodeCounter:I

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xerces/dom/CoreDocumentImpl;->xml11Version:Z

    move-object v2, v0

    move-object v3, v0

    iput-object v3, v2, Lorg/apache/xerces/dom/CoreDocumentImpl;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lorg/apache/xerces/dom/CoreDocumentImpl;->allowGrammarAccess:Z

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 6

    move-object v0, p0

    move-object v2, v0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    return-object v0

    :catch_0
    move-exception v2

    move-object v1, v2

    new-instance v2, Ljava/lang/NoClassDefFoundError;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private importNode(Lorg/w3c/dom/Node;ZZLjava/util/HashMap;)Lorg/w3c/dom/Node;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    const/16 v17, 0x0

    move-object/from16 v7, v17

    const/16 v17, 0x0

    move-object/from16 v8, v17

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    instance-of v0, v0, Lorg/apache/xerces/dom/NodeImpl;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v17, v3

    check-cast v17, Lorg/apache/xerces/dom/NodeImpl;

    invoke-virtual/range {v17 .. v17}, Lorg/apache/xerces/dom/NodeImpl;->getUserDataRecord()Ljava/util/Hashtable;

    move-result-object v17

    move-object/from16 v8, v17

    :cond_0
    move-object/from16 v17, v3

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v17

    move/from16 v9, v17

    move/from16 v17, v9

    packed-switch v17, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v17, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v18, "NOT_SUPPORTED_ERR"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v10, v17

    new-instance v17, Lorg/w3c/dom/DOMException;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    const/16 v19, 0x9

    move-object/from16 v20, v10

    invoke-direct/range {v18 .. v20}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v17

    :pswitch_1
    move-object/from16 v17, v3

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Document;->getImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v17

    const-string/jumbo v18, "XML"

    const-string/jumbo v19, "2.0"

    invoke-interface/range {v17 .. v19}, Lorg/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    move/from16 v11, v17

    move/from16 v17, v11

    if-eqz v17, :cond_1

    move-object/from16 v17, v3

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_8

    :cond_1
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/apache/xerces/dom/CoreDocumentImpl;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v17

    move-object/from16 v10, v17

    :goto_0
    move-object/from16 v17, v3

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v17

    move-object/from16 v12, v17

    move-object/from16 v17, v12

    if-eqz v17, :cond_2

    move-object/from16 v17, v12

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v17

    move/from16 v13, v17

    const/16 v17, 0x0

    move/from16 v14, v17

    :goto_1
    move/from16 v17, v14

    move/from16 v18, v13

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_9

    :cond_2
    move-object/from16 v17, v6

    if-eqz v17, :cond_4

    move-object/from16 v17, v6

    move-object/from16 v18, v3

    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v13, v17

    move-object/from16 v17, v13

    if-eqz v17, :cond_4

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    move-object/from16 v17, v0

    if-nez v17, :cond_3

    move-object/from16 v17, v2

    new-instance v18, Ljava/util/Hashtable;

    move-object/from16 v23, v18

    move-object/from16 v18, v23

    move-object/from16 v19, v23

    invoke-direct/range {v19 .. v19}, Ljava/util/Hashtable;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lorg/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    :cond_3
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    move-object/from16 v17, v0

    move-object/from16 v18, v13

    move-object/from16 v19, v10

    invoke-virtual/range {v17 .. v19}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    :cond_4
    move-object/from16 v17, v10

    move-object/from16 v7, v17

    :goto_2
    move-object/from16 v17, v8

    if-eqz v17, :cond_5

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v7

    const/16 v20, 0x2

    move-object/from16 v21, v8

    invoke-virtual/range {v17 .. v21}, Lorg/apache/xerces/dom/CoreDocumentImpl;->callUserDataHandlers(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;SLjava/util/Hashtable;)V

    :cond_5
    move/from16 v17, v4

    if-eqz v17, :cond_6

    move-object/from16 v17, v3

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v17

    move-object/from16 v10, v17

    :goto_3
    move-object/from16 v17, v10

    if-nez v17, :cond_18

    :cond_6
    move-object/from16 v17, v7

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v17

    const/16 v18, 0x6

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    move-object/from16 v17, v7

    check-cast v17, Lorg/apache/xerces/dom/NodeImpl;

    const/16 v18, 0x1

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Lorg/apache/xerces/dom/NodeImpl;->setReadOnly(ZZ)V

    :cond_7
    move-object/from16 v17, v7

    move-object/from16 v2, v17

    return-object v2

    :cond_8
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v19, v3

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lorg/apache/xerces/dom/CoreDocumentImpl;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v17

    move-object/from16 v10, v17

    goto/16 :goto_0

    :cond_9
    move-object/from16 v17, v12

    move/from16 v18, v14

    invoke-interface/range {v17 .. v18}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    check-cast v17, Lorg/w3c/dom/Attr;

    move-object/from16 v15, v17

    move-object/from16 v17, v15

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Attr;->getSpecified()Z

    move-result v17

    if-nez v17, :cond_a

    move/from16 v17, v5

    if-eqz v17, :cond_c

    :cond_a
    move-object/from16 v17, v2

    move-object/from16 v18, v15

    const/16 v19, 0x1

    move/from16 v20, v5

    move-object/from16 v21, v6

    invoke-direct/range {v17 .. v21}, Lorg/apache/xerces/dom/CoreDocumentImpl;->importNode(Lorg/w3c/dom/Node;ZZLjava/util/HashMap;)Lorg/w3c/dom/Node;

    move-result-object v17

    check-cast v17, Lorg/w3c/dom/Attr;

    move-object/from16 v16, v17

    move/from16 v17, v11

    if-eqz v17, :cond_b

    move-object/from16 v17, v15

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_d

    :cond_b
    move-object/from16 v17, v10

    move-object/from16 v18, v16

    invoke-interface/range {v17 .. v18}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    move-result-object v17

    :cond_c
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    :cond_d
    move-object/from16 v17, v10

    move-object/from16 v18, v16

    invoke-interface/range {v17 .. v18}, Lorg/w3c/dom/Element;->setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    move-result-object v17

    goto :goto_4

    :pswitch_2
    move-object/from16 v17, v3

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Document;->getImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v17

    const-string/jumbo v18, "XML"

    const-string/jumbo v19, "2.0"

    invoke-interface/range {v17 .. v19}, Lorg/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_f

    move-object/from16 v17, v3

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_e

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/apache/xerces/dom/CoreDocumentImpl;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v17

    move-object/from16 v7, v17

    :goto_5
    move-object/from16 v17, v3

    move-object/from16 v0, v17

    instance-of v0, v0, Lorg/apache/xerces/dom/AttrImpl;

    move/from16 v17, v0

    if-eqz v17, :cond_11

    move-object/from16 v17, v3

    check-cast v17, Lorg/apache/xerces/dom/AttrImpl;

    move-object/from16 v10, v17

    move-object/from16 v17, v10

    invoke-virtual/range {v17 .. v17}, Lorg/apache/xerces/dom/AttrImpl;->hasStringValue()Z

    move-result v17

    if-eqz v17, :cond_10

    move-object/from16 v17, v7

    check-cast v17, Lorg/apache/xerces/dom/AttrImpl;

    move-object/from16 v11, v17

    move-object/from16 v17, v11

    move-object/from16 v18, v10

    invoke-virtual/range {v18 .. v18}, Lorg/apache/xerces/dom/AttrImpl;->getValue()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/apache/xerces/dom/AttrImpl;->setValue(Ljava/lang/String;)V

    const/16 v17, 0x0

    move/from16 v4, v17

    goto/16 :goto_2

    :cond_e
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v19, v3

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lorg/apache/xerces/dom/CoreDocumentImpl;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v17

    move-object/from16 v7, v17

    goto :goto_5

    :cond_f
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/apache/xerces/dom/CoreDocumentImpl;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v17

    move-object/from16 v7, v17

    goto :goto_5

    :cond_10
    const/16 v17, 0x1

    move/from16 v4, v17

    goto/16 :goto_2

    :cond_11
    move-object/from16 v17, v3

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v17

    if-nez v17, :cond_12

    move-object/from16 v17, v7

    move-object/from16 v18, v3

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lorg/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    const/16 v17, 0x0

    move/from16 v4, v17

    goto/16 :goto_2

    :cond_12
    const/16 v17, 0x1

    move/from16 v4, v17

    goto/16 :goto_2

    :pswitch_3
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/apache/xerces/dom/CoreDocumentImpl;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v17

    move-object/from16 v7, v17

    goto/16 :goto_2

    :pswitch_4
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/apache/xerces/dom/CoreDocumentImpl;->createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;

    move-result-object v17

    move-object/from16 v7, v17

    goto/16 :goto_2

    :pswitch_5
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/apache/xerces/dom/CoreDocumentImpl;->createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;

    move-result-object v17

    move-object/from16 v7, v17

    const/16 v17, 0x0

    move/from16 v4, v17

    goto/16 :goto_2

    :pswitch_6
    move-object/from16 v17, v3

    check-cast v17, Lorg/w3c/dom/Entity;

    move-object/from16 v10, v17

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/apache/xerces/dom/CoreDocumentImpl;->createEntity(Ljava/lang/String;)Lorg/w3c/dom/Entity;

    move-result-object v17

    check-cast v17, Lorg/apache/xerces/dom/EntityImpl;

    move-object/from16 v11, v17

    move-object/from16 v17, v11

    move-object/from16 v18, v10

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Entity;->getPublicId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/apache/xerces/dom/EntityImpl;->setPublicId(Ljava/lang/String;)V

    move-object/from16 v17, v11

    move-object/from16 v18, v10

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Entity;->getSystemId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/apache/xerces/dom/EntityImpl;->setSystemId(Ljava/lang/String;)V

    move-object/from16 v17, v11

    move-object/from16 v18, v10

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Entity;->getNotationName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/apache/xerces/dom/EntityImpl;->setNotationName(Ljava/lang/String;)V

    move-object/from16 v17, v11

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lorg/apache/xerces/dom/EntityImpl;->isReadOnly(Z)V

    move-object/from16 v17, v11

    move-object/from16 v7, v17

    goto/16 :goto_2

    :pswitch_7
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v19, v3

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lorg/apache/xerces/dom/CoreDocumentImpl;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object v17

    move-object/from16 v7, v17

    goto/16 :goto_2

    :pswitch_8
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/apache/xerces/dom/CoreDocumentImpl;->createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;

    move-result-object v17

    move-object/from16 v7, v17

    goto/16 :goto_2

    :pswitch_9
    move/from16 v17, v5

    if-nez v17, :cond_13

    const-string/jumbo v17, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v18, "NOT_SUPPORTED_ERR"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v10, v17

    new-instance v17, Lorg/w3c/dom/DOMException;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    const/16 v19, 0x9

    move-object/from16 v20, v10

    invoke-direct/range {v18 .. v20}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v17

    :cond_13
    move-object/from16 v17, v3

    check-cast v17, Lorg/w3c/dom/DocumentType;

    move-object/from16 v10, v17

    move-object/from16 v17, v2

    move-object/from16 v18, v10

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/DocumentType;->getNodeName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v19, v10

    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v20, v10

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v17 .. v20}, Lorg/apache/xerces/dom/CoreDocumentImpl;->createDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/DocumentType;

    move-result-object v17

    check-cast v17, Lorg/apache/xerces/dom/DocumentTypeImpl;

    move-object/from16 v11, v17

    move-object/from16 v17, v11

    move-object/from16 v18, v10

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/DocumentType;->getInternalSubset()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/apache/xerces/dom/DocumentTypeImpl;->setInternalSubset(Ljava/lang/String;)V

    move-object/from16 v17, v10

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/DocumentType;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v17

    move-object/from16 v12, v17

    move-object/from16 v17, v11

    invoke-virtual/range {v17 .. v17}, Lorg/apache/xerces/dom/DocumentTypeImpl;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v17

    move-object/from16 v13, v17

    move-object/from16 v17, v12

    if-eqz v17, :cond_14

    const/16 v17, 0x0

    move/from16 v14, v17

    :goto_6
    move/from16 v17, v14

    move-object/from16 v18, v12

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_16

    :cond_14
    move-object/from16 v17, v10

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/DocumentType;->getNotations()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v17

    move-object/from16 v12, v17

    move-object/from16 v17, v11

    invoke-virtual/range {v17 .. v17}, Lorg/apache/xerces/dom/DocumentTypeImpl;->getNotations()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v17

    move-object/from16 v13, v17

    move-object/from16 v17, v12

    if-eqz v17, :cond_15

    const/16 v17, 0x0

    move/from16 v14, v17

    :goto_7
    move/from16 v17, v14

    move-object/from16 v18, v12

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_17

    :cond_15
    move-object/from16 v17, v11

    move-object/from16 v7, v17

    goto/16 :goto_2

    :cond_16
    move-object/from16 v17, v13

    move-object/from16 v18, v2

    move-object/from16 v19, v12

    move/from16 v20, v14

    invoke-interface/range {v19 .. v20}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v19

    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object/from16 v22, v6

    invoke-direct/range {v18 .. v22}, Lorg/apache/xerces/dom/CoreDocumentImpl;->importNode(Lorg/w3c/dom/Node;ZZLjava/util/HashMap;)Lorg/w3c/dom/Node;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lorg/w3c/dom/NamedNodeMap;->setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v17

    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_17
    move-object/from16 v17, v13

    move-object/from16 v18, v2

    move-object/from16 v19, v12

    move/from16 v20, v14

    invoke-interface/range {v19 .. v20}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v19

    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object/from16 v22, v6

    invoke-direct/range {v18 .. v22}, Lorg/apache/xerces/dom/CoreDocumentImpl;->importNode(Lorg/w3c/dom/Node;ZZLjava/util/HashMap;)Lorg/w3c/dom/Node;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lorg/w3c/dom/NamedNodeMap;->setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v17

    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    :pswitch_a
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lorg/apache/xerces/dom/CoreDocumentImpl;->createDocumentFragment()Lorg/w3c/dom/DocumentFragment;

    move-result-object v17

    move-object/from16 v7, v17

    goto/16 :goto_2

    :pswitch_b
    move-object/from16 v17, v3

    check-cast v17, Lorg/w3c/dom/Notation;

    move-object/from16 v10, v17

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/apache/xerces/dom/CoreDocumentImpl;->createNotation(Ljava/lang/String;)Lorg/w3c/dom/Notation;

    move-result-object v17

    check-cast v17, Lorg/apache/xerces/dom/NotationImpl;

    move-object/from16 v11, v17

    move-object/from16 v17, v11

    move-object/from16 v18, v10

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Notation;->getPublicId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/apache/xerces/dom/NotationImpl;->setPublicId(Ljava/lang/String;)V

    move-object/from16 v17, v11

    move-object/from16 v18, v10

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Notation;->getSystemId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/apache/xerces/dom/NotationImpl;->setSystemId(Ljava/lang/String;)V

    move-object/from16 v17, v11

    move-object/from16 v7, v17

    goto/16 :goto_2

    :cond_18
    move-object/from16 v17, v7

    move-object/from16 v18, v2

    move-object/from16 v19, v10

    const/16 v20, 0x1

    move/from16 v21, v5

    move-object/from16 v22, v6

    invoke-direct/range {v18 .. v22}, Lorg/apache/xerces/dom/CoreDocumentImpl;->importNode(Lorg/w3c/dom/Node;ZZLjava/util/HashMap;)Lorg/w3c/dom/Node;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v17

    move-object/from16 v17, v10

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v17

    move-object/from16 v10, v17

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public static final isValidQName(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v1

    if-nez v4, :cond_0

    const/4 v4, 0x0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    const/4 v4, 0x0

    move v3, v4

    move v4, v2

    if-nez v4, :cond_3

    move-object v4, v0

    if-eqz v4, :cond_1

    move-object v4, v0

    invoke-static {v4}, Lorg/apache/xerces/util/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move-object v4, v1

    invoke-static {v4}, Lorg/apache/xerces/util/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    move v3, v4

    :goto_2
    move v4, v3

    move v0, v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    move-object v4, v0

    if-eqz v4, :cond_4

    move-object v4, v0

    invoke-static {v4}, Lorg/apache/xerces/util/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    move-object v4, v1

    invoke-static {v4}, Lorg/apache/xerces/util/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    :goto_3
    move v3, v4

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    goto :goto_3
.end method

.method public static final isXMLName(Ljava/lang/String;Z)Z
    .locals 3

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move v2, v1

    if-nez v2, :cond_1

    move-object v2, v0

    invoke-static {v2}, Lorg/apache/xerces/util/XMLChar;->isValidName(Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    goto :goto_0

    :cond_1
    move-object v2, v0

    invoke-static {v2}, Lorg/apache/xerces/util/XML11Char;->isXML11ValidName(Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    if-eqz v2, :cond_0

    move-object v2, v0

    new-instance v3, Ljava/util/WeakHashMap;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    invoke-direct {v4, v5}, Ljava/util/WeakHashMap;-><init>(Ljava/util/Map;)V

    iput-object v3, v2, Lorg/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/CoreDocumentImpl;->nodeTable:Ljava/util/Map;

    if-eqz v2, :cond_1

    move-object v2, v0

    new-instance v3, Ljava/util/WeakHashMap;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/CoreDocumentImpl;->nodeTable:Ljava/util/Map;

    invoke-direct {v4, v5}, Ljava/util/WeakHashMap;-><init>(Ljava/util/Map;)V

    iput-object v3, v2, Lorg/apache/xerces/dom/CoreDocumentImpl;->nodeTable:Ljava/util/Map;

    :cond_1
    return-void
.end method

.method private replaceRenameElement(Lorg/apache/xerces/dom/ElementImpl;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/dom/ElementImpl;
    .locals 13

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object v9, v0

    move-object v10, v2

    move-object v11, v3

    invoke-virtual {v9, v10, v11}, Lorg/apache/xerces/dom/CoreDocumentImpl;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    check-cast v9, Lorg/apache/xerces/dom/ElementNSImpl;

    move-object v4, v9

    move-object v9, v0

    move-object v10, v1

    move-object v11, v4

    invoke-virtual {v9, v10, v11}, Lorg/apache/xerces/dom/CoreDocumentImpl;->copyEventListeners(Lorg/apache/xerces/dom/NodeImpl;Lorg/apache/xerces/dom/NodeImpl;)V

    move-object v9, v0

    move-object v10, v1

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/CoreDocumentImpl;->removeUserDataTable(Lorg/w3c/dom/Node;)Ljava/util/Hashtable;

    move-result-object v9

    move-object v5, v9

    move-object v9, v1

    invoke-virtual {v9}, Lorg/apache/xerces/dom/ElementImpl;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v6, v9

    move-object v9, v1

    invoke-virtual {v9}, Lorg/apache/xerces/dom/ElementImpl;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v7, v9

    move-object v9, v6

    if-eqz v9, :cond_0

    move-object v9, v6

    move-object v10, v1

    invoke-interface {v9, v10}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v9

    :cond_0
    move-object v9, v1

    invoke-virtual {v9}, Lorg/apache/xerces/dom/ElementImpl;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v8, v9

    :goto_0
    move-object v9, v8

    if-nez v9, :cond_2

    move-object v9, v4

    move-object v10, v1

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/ElementNSImpl;->moveSpecifiedAttributes(Lorg/apache/xerces/dom/ElementImpl;)V

    move-object v9, v0

    move-object v10, v4

    move-object v11, v5

    invoke-virtual {v9, v10, v11}, Lorg/apache/xerces/dom/CoreDocumentImpl;->setUserDataTable(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)V

    move-object v9, v0

    move-object v10, v1

    move-object v11, v4

    const/4 v12, 0x4

    invoke-virtual {v9, v10, v11, v12}, Lorg/apache/xerces/dom/CoreDocumentImpl;->callUserDataHandlers(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;S)V

    move-object v9, v6

    if-eqz v9, :cond_1

    move-object v9, v6

    move-object v10, v4

    move-object v11, v7

    invoke-interface {v9, v10, v11}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v9

    :cond_1
    move-object v9, v4

    move-object v0, v9

    return-object v0

    :cond_2
    move-object v9, v1

    move-object v10, v8

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/ElementImpl;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v9, v4

    move-object v10, v8

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/ElementNSImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v9, v1

    invoke-virtual {v9}, Lorg/apache/xerces/dom/ElementImpl;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v8, v9

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    move-object v2, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/CoreDocumentImpl;->nodeTable:Ljava/util/Map;

    move-object v3, v6

    move-object v6, v2

    if-eqz v6, :cond_0

    move-object v6, v0

    :try_start_0
    new-instance v7, Ljava/util/Hashtable;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v2

    invoke-direct {v8, v9}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    iput-object v7, v6, Lorg/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    :cond_0
    move-object v6, v3

    if-eqz v6, :cond_1

    move-object v6, v0

    new-instance v7, Ljava/util/Hashtable;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v3

    invoke-direct {v8, v9}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    iput-object v7, v6, Lorg/apache/xerces/dom/CoreDocumentImpl;->nodeTable:Ljava/util/Map;

    :cond_1
    move-object v6, v1

    invoke-virtual {v6}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lorg/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lorg/apache/xerces/dom/CoreDocumentImpl;->nodeTable:Ljava/util/Map;

    return-void

    :catchall_0
    move-exception v6

    move-object v4, v6

    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lorg/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lorg/apache/xerces/dom/CoreDocumentImpl;->nodeTable:Ljava/util/Map;

    move-object v6, v4

    throw v6
.end method


# virtual methods
.method public abort()V
    .locals 0

    return-void
.end method

.method protected addEventListener(Lorg/apache/xerces/dom/NodeImpl;Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V
    .locals 0

    return-void
.end method

.method public adoptNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    const/4 v9, 0x0

    move-object v3, v9

    move-object v9, v1

    :try_start_0
    check-cast v9, Lorg/apache/xerces/dom/NodeImpl;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v9

    move-object v9, v1

    if-nez v9, :cond_0

    const/4 v9, 0x0

    move-object v0, v9

    :goto_0
    return-object v0

    :catch_0
    move-exception v9

    move-object v4, v9

    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_0

    :cond_0
    move-object v9, v1

    if-eqz v9, :cond_1

    move-object v9, v1

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v9

    if-eqz v9, :cond_1

    move-object v9, v0

    invoke-virtual {v9}, Lorg/apache/xerces/dom/CoreDocumentImpl;->getImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v9

    move-object v4, v9

    move-object v9, v1

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Document;->getImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v9

    move-object v5, v9

    move-object v9, v4

    move-object v10, v5

    if-eq v9, v10, :cond_7

    move-object v9, v4

    instance-of v9, v9, Lorg/apache/xerces/dom/DOMImplementationImpl;

    if-eqz v9, :cond_5

    move-object v9, v5

    instance-of v9, v9, Lorg/apache/xerces/dom/DeferredDOMImplementationImpl;

    if-eqz v9, :cond_5

    move-object v9, v0

    move-object v10, v2

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/CoreDocumentImpl;->undeferChildren(Lorg/w3c/dom/Node;)V

    :cond_1
    :goto_1
    move-object v9, v2

    invoke-virtual {v9}, Lorg/apache/xerces/dom/NodeImpl;->getNodeType()S

    move-result v9

    packed-switch v9, :pswitch_data_0

    :pswitch_0
    move-object v9, v2

    invoke-virtual {v9}, Lorg/apache/xerces/dom/NodeImpl;->getUserDataRecord()Ljava/util/Hashtable;

    move-result-object v9

    move-object v3, v9

    move-object v9, v2

    invoke-virtual {v9}, Lorg/apache/xerces/dom/NodeImpl;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v4, v9

    move-object v9, v4

    if-eqz v9, :cond_2

    move-object v9, v4

    move-object v10, v1

    invoke-interface {v9, v10}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v9

    :cond_2
    move-object v9, v2

    move-object v10, v0

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/NodeImpl;->setOwnerDocument(Lorg/apache/xerces/dom/CoreDocumentImpl;)V

    move-object v9, v3

    if-eqz v9, :cond_3

    move-object v9, v0

    move-object v10, v2

    move-object v11, v3

    invoke-virtual {v9, v10, v11}, Lorg/apache/xerces/dom/CoreDocumentImpl;->setUserDataTable(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)V

    :cond_3
    :goto_2
    move-object v9, v3

    if-eqz v9, :cond_4

    move-object v9, v0

    move-object v10, v1

    const/4 v11, 0x0

    const/4 v12, 0x5

    move-object v13, v3

    invoke-virtual {v9, v10, v11, v12, v13}, Lorg/apache/xerces/dom/CoreDocumentImpl;->callUserDataHandlers(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;SLjava/util/Hashtable;)V

    :cond_4
    move-object v9, v2

    move-object v0, v9

    goto :goto_0

    :cond_5
    move-object v9, v4

    instance-of v9, v9, Lorg/apache/xerces/dom/DeferredDOMImplementationImpl;

    if-eqz v9, :cond_6

    move-object v9, v5

    instance-of v9, v9, Lorg/apache/xerces/dom/DOMImplementationImpl;

    if-eqz v9, :cond_6

    goto :goto_1

    :cond_6
    const/4 v9, 0x0

    move-object v0, v9

    goto :goto_0

    :cond_7
    move-object v9, v5

    instance-of v9, v9, Lorg/apache/xerces/dom/DeferredDOMImplementationImpl;

    if-eqz v9, :cond_1

    move-object v9, v0

    move-object v10, v2

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/CoreDocumentImpl;->undeferChildren(Lorg/w3c/dom/Node;)V

    goto :goto_1

    :pswitch_1
    move-object v9, v2

    check-cast v9, Lorg/apache/xerces/dom/AttrImpl;

    move-object v4, v9

    move-object v9, v4

    invoke-virtual {v9}, Lorg/apache/xerces/dom/AttrImpl;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v9

    if-eqz v9, :cond_8

    move-object v9, v4

    invoke-virtual {v9}, Lorg/apache/xerces/dom/AttrImpl;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v9

    move-object v10, v4

    invoke-interface {v9, v10}, Lorg/w3c/dom/Element;->removeAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    move-result-object v9

    :cond_8
    move-object v9, v4

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/AttrImpl;->isSpecified(Z)V

    move-object v9, v2

    invoke-virtual {v9}, Lorg/apache/xerces/dom/NodeImpl;->getUserDataRecord()Ljava/util/Hashtable;

    move-result-object v9

    move-object v3, v9

    move-object v9, v4

    move-object v10, v0

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/AttrImpl;->setOwnerDocument(Lorg/apache/xerces/dom/CoreDocumentImpl;)V

    move-object v9, v3

    if-eqz v9, :cond_3

    move-object v9, v0

    move-object v10, v2

    move-object v11, v3

    invoke-virtual {v9, v10, v11}, Lorg/apache/xerces/dom/CoreDocumentImpl;->setUserDataTable(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)V

    goto :goto_2

    :pswitch_2
    const-string/jumbo v9, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v10, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    new-instance v9, Lorg/w3c/dom/DOMException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x7

    move-object v12, v4

    invoke-direct {v10, v11, v12}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v9

    :pswitch_3
    const-string/jumbo v9, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v10, "NOT_SUPPORTED_ERR"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    new-instance v9, Lorg/w3c/dom/DOMException;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/16 v11, 0x9

    move-object v12, v4

    invoke-direct {v10, v11, v12}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v9

    :pswitch_4
    move-object v9, v2

    invoke-virtual {v9}, Lorg/apache/xerces/dom/NodeImpl;->getUserDataRecord()Ljava/util/Hashtable;

    move-result-object v9

    move-object v3, v9

    move-object v9, v2

    invoke-virtual {v9}, Lorg/apache/xerces/dom/NodeImpl;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v4, v9

    move-object v9, v4

    if-eqz v9, :cond_9

    move-object v9, v4

    move-object v10, v1

    invoke-interface {v9, v10}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v9

    :cond_9
    :goto_3
    move-object v9, v2

    invoke-virtual {v9}, Lorg/apache/xerces/dom/NodeImpl;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v5, v10

    if-nez v9, :cond_b

    move-object v9, v2

    move-object v10, v0

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/NodeImpl;->setOwnerDocument(Lorg/apache/xerces/dom/CoreDocumentImpl;)V

    move-object v9, v3

    if-eqz v9, :cond_a

    move-object v9, v0

    move-object v10, v2

    move-object v11, v3

    invoke-virtual {v9, v10, v11}, Lorg/apache/xerces/dom/CoreDocumentImpl;->setUserDataTable(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)V

    :cond_a
    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/CoreDocumentImpl;->docType:Lorg/apache/xerces/dom/DocumentTypeImpl;

    if-nez v9, :cond_c

    goto/16 :goto_2

    :cond_b
    move-object v9, v2

    move-object v10, v5

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/NodeImpl;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v9

    goto :goto_3

    :cond_c
    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/CoreDocumentImpl;->docType:Lorg/apache/xerces/dom/DocumentTypeImpl;

    invoke-virtual {v9}, Lorg/apache/xerces/dom/DocumentTypeImpl;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    move-object v6, v9

    move-object v9, v6

    move-object v10, v2

    invoke-virtual {v10}, Lorg/apache/xerces/dom/NodeImpl;->getNodeName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v7, v9

    move-object v9, v7

    if-nez v9, :cond_d

    goto/16 :goto_2

    :cond_d
    move-object v9, v7

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v5, v9

    :goto_4
    move-object v9, v5

    if-nez v9, :cond_e

    goto/16 :goto_2

    :cond_e
    move-object v9, v5

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Lorg/w3c/dom/Node;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v8, v9

    move-object v9, v2

    move-object v10, v8

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/NodeImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v9, v5

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v5, v9

    goto :goto_4

    :pswitch_5
    move-object v9, v2

    invoke-virtual {v9}, Lorg/apache/xerces/dom/NodeImpl;->getUserDataRecord()Ljava/util/Hashtable;

    move-result-object v9

    move-object v3, v9

    move-object v9, v2

    invoke-virtual {v9}, Lorg/apache/xerces/dom/NodeImpl;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v4, v9

    move-object v9, v4

    if-eqz v9, :cond_f

    move-object v9, v4

    move-object v10, v1

    invoke-interface {v9, v10}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v9

    :cond_f
    move-object v9, v2

    move-object v10, v0

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/NodeImpl;->setOwnerDocument(Lorg/apache/xerces/dom/CoreDocumentImpl;)V

    move-object v9, v3

    if-eqz v9, :cond_10

    move-object v9, v0

    move-object v10, v2

    move-object v11, v3

    invoke-virtual {v9, v10, v11}, Lorg/apache/xerces/dom/CoreDocumentImpl;->setUserDataTable(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)V

    :cond_10
    move-object v9, v2

    check-cast v9, Lorg/apache/xerces/dom/ElementImpl;

    invoke-virtual {v9}, Lorg/apache/xerces/dom/ElementImpl;->reconcileDefaultAttributes()V

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected callUserDataHandlers(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;S)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v5, v1

    instance-of v5, v5, Lorg/apache/xerces/dom/NodeImpl;

    if-eqz v5, :cond_3

    move-object v5, v1

    check-cast v5, Lorg/apache/xerces/dom/NodeImpl;

    invoke-virtual {v5}, Lorg/apache/xerces/dom/NodeImpl;->getUserDataRecord()Ljava/util/Hashtable;

    move-result-object v5

    move-object v4, v5

    move-object v5, v4

    if-eqz v5, :cond_1

    move-object v5, v4

    invoke-virtual {v5}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    move-object v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lorg/apache/xerces/dom/CoreDocumentImpl;->callUserDataHandlers(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;SLjava/util/Hashtable;)V

    :cond_3
    goto :goto_0
.end method

.method callUserDataHandlers(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;SLjava/util/Hashtable;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object v9, v4

    if-eqz v9, :cond_0

    move-object v9, v4

    invoke-virtual {v9}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v9, v4

    invoke-virtual {v9}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v5, v9

    :cond_2
    :goto_1
    move-object v9, v5

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_0

    :cond_3
    move-object v9, v5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    move-object v6, v9

    move-object v9, v6

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object v7, v9

    move-object v9, v6

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/xerces/dom/ParentNode$UserDataRecord;

    move-object v8, v9

    move-object v9, v8

    iget-object v9, v9, Lorg/apache/xerces/dom/ParentNode$UserDataRecord;->fHandler:Lorg/w3c/dom/UserDataHandler;

    if-eqz v9, :cond_2

    move-object v9, v8

    iget-object v9, v9, Lorg/apache/xerces/dom/ParentNode$UserDataRecord;->fHandler:Lorg/w3c/dom/UserDataHandler;

    move v10, v3

    move-object v11, v7

    move-object v12, v8

    iget-object v12, v12, Lorg/apache/xerces/dom/ParentNode$UserDataRecord;->fData:Ljava/lang/Object;

    move-object v13, v1

    move-object v14, v2

    invoke-interface/range {v9 .. v14}, Lorg/w3c/dom/UserDataHandler;->handle(SLjava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    goto :goto_1
.end method

.method protected canRenameElements(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/dom/ElementImpl;)Z
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    const/4 v4, 0x1

    move v0, v4

    return v0
.end method

.method protected changed()V
    .locals 5

    move-object v0, p0

    move-object v1, v0

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    iget v2, v2, Lorg/apache/xerces/dom/CoreDocumentImpl;->changes:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lorg/apache/xerces/dom/CoreDocumentImpl;->changes:I

    return-void
.end method

.method protected changes()I
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Lorg/apache/xerces/dom/CoreDocumentImpl;->changes:I

    move v0, v1

    return v0
.end method

.method protected final checkDOMNSErr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v4, :cond_4

    move-object v4, v2

    if-nez v4, :cond_0

    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v5, "NAMESPACE_ERR"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    new-instance v4, Lorg/w3c/dom/DOMException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/16 v6, 0xe

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    :cond_0
    move-object v4, v1

    const-string/jumbo v5, "xml"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    sget-object v5, Lorg/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v5, "NAMESPACE_ERR"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    new-instance v4, Lorg/w3c/dom/DOMException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/16 v6, 0xe

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    :cond_1
    move-object v4, v1

    const-string/jumbo v5, "xmlns"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v2

    sget-object v5, Lorg/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move-object v4, v1

    const-string/jumbo v5, "xmlns"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    move-object v4, v2

    sget-object v5, Lorg/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v5, "NAMESPACE_ERR"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    new-instance v4, Lorg/w3c/dom/DOMException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/16 v6, 0xe

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    :cond_4
    return-void
.end method

.method protected final checkNamespaceWF(Ljava/lang/String;II)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v0

    iget-boolean v5, v5, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    move v5, v2

    if-eqz v5, :cond_1

    move v5, v2

    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    if-eq v5, v6, :cond_1

    move v5, v3

    move v6, v2

    if-eq v5, v6, :cond_2

    :cond_1
    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v6, "NAMESPACE_ERR"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    new-instance v5, Lorg/w3c/dom/DOMException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/16 v7, 0xe

    move-object v8, v4

    invoke-direct {v6, v7, v8}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    :cond_2
    goto :goto_0
.end method

.method protected final checkQName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    iget-boolean v5, v5, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v5, 0x0

    move v3, v5

    move-object v5, v0

    iget-boolean v5, v5, Lorg/apache/xerces/dom/CoreDocumentImpl;->xml11Version:Z

    if-nez v5, :cond_3

    move-object v5, v1

    if-eqz v5, :cond_1

    move-object v5, v1

    invoke-static {v5}, Lorg/apache/xerces/util/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    move-object v5, v2

    invoke-static {v5}, Lorg/apache/xerces/util/XMLChar;->isValidNCName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    :goto_1
    move v3, v5

    :goto_2
    move v5, v3

    if-nez v5, :cond_6

    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v6, "INVALID_CHARACTER_ERR"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    new-instance v5, Lorg/w3c/dom/DOMException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x5

    move-object v8, v4

    invoke-direct {v6, v7, v8}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    move-object v5, v1

    if-eqz v5, :cond_4

    move-object v5, v1

    invoke-static {v5}, Lorg/apache/xerces/util/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    move-object v5, v2

    invoke-static {v5}, Lorg/apache/xerces/util/XML11Char;->isXML11ValidNCName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    :goto_3
    move v3, v5

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    goto :goto_3

    :cond_6
    goto :goto_0
.end method

.method protected final clearIdentifiers()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    :cond_0
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    move-object v0, p0

    move-object v2, v0

    invoke-super {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v1, v2

    move-object v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/dom/CoreDocumentImpl;->docType:Lorg/apache/xerces/dom/DocumentTypeImpl;

    move-object v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/dom/CoreDocumentImpl;->docElement:Lorg/apache/xerces/dom/ElementImpl;

    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public cloneNode(Z)Lorg/w3c/dom/Node;
    .locals 8

    move-object v0, p0

    move v1, p1

    new-instance v3, Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Lorg/apache/xerces/dom/CoreDocumentImpl;-><init>()V

    move-object v2, v3

    move-object v3, v0

    move-object v4, v0

    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lorg/apache/xerces/dom/CoreDocumentImpl;->callUserDataHandlers(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;S)V

    move-object v3, v0

    move-object v4, v2

    move v5, v1

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/dom/CoreDocumentImpl;->cloneNode(Lorg/apache/xerces/dom/CoreDocumentImpl;Z)V

    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method protected cloneNode(Lorg/apache/xerces/dom/CoreDocumentImpl;Z)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/dom/CoreDocumentImpl;->needsSyncChildren()Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v0

    invoke-virtual {v8}, Lorg/apache/xerces/dom/CoreDocumentImpl;->synchronizeChildren()V

    :cond_0
    move v8, v2

    if-eqz v8, :cond_2

    const/4 v8, 0x0

    move-object v3, v8

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    if-eqz v8, :cond_1

    new-instance v8, Ljava/util/HashMap;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    move-object v3, v8

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    invoke-virtual {v8}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v4, v8

    :goto_0
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_3

    :cond_1
    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/CoreDocumentImpl;->firstChild:Lorg/apache/xerces/dom/ChildNode;

    move-object v4, v8

    :goto_1
    move-object v8, v4

    if-nez v8, :cond_4

    :cond_2
    move-object v8, v1

    move-object v9, v0

    iget-boolean v9, v9, Lorg/apache/xerces/dom/CoreDocumentImpl;->allowGrammarAccess:Z

    iput-boolean v9, v8, Lorg/apache/xerces/dom/CoreDocumentImpl;->allowGrammarAccess:Z

    move-object v8, v1

    move-object v9, v0

    iget-boolean v9, v9, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    iput-boolean v9, v8, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    return-void

    :cond_3
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    move-object v5, v8

    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    move-object v6, v8

    move-object v8, v5

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    move-object v8, v3

    move-object v9, v7

    move-object v10, v6

    invoke-virtual {v8, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_0

    :cond_4
    move-object v8, v1

    move-object v9, v1

    move-object v10, v4

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v13, v3

    invoke-direct {v9, v10, v11, v12, v13}, Lorg/apache/xerces/dom/CoreDocumentImpl;->importNode(Lorg/w3c/dom/Node;ZZLjava/util/HashMap;)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/xerces/dom/CoreDocumentImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v8

    move-object v8, v4

    iget-object v8, v8, Lorg/apache/xerces/dom/ChildNode;->nextSibling:Lorg/apache/xerces/dom/ChildNode;

    move-object v4, v8

    goto :goto_1
.end method

.method protected copyEventListeners(Lorg/apache/xerces/dom/NodeImpl;Lorg/apache/xerces/dom/NodeImpl;)V
    .locals 0

    return-void
.end method

.method public createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/dom/CoreDocumentImpl;->xml11Version:Z

    invoke-static {v3, v4}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v4, "INVALID_CHARACTER_ERR"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    new-instance v3, Lorg/w3c/dom/DOMException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x5

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    :cond_0
    new-instance v3, Lorg/apache/xerces/dom/AttrImpl;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lorg/apache/xerces/dom/AttrImpl;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    move-object v0, v3

    return-object v0
.end method

.method public createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Lorg/apache/xerces/dom/AttrNSImpl;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/xerces/dom/AttrNSImpl;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    return-object v0
.end method

.method public createAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    new-instance v4, Lorg/apache/xerces/dom/AttrNSImpl;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/apache/xerces/dom/AttrNSImpl;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    return-object v0
.end method

.method public createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lorg/apache/xerces/dom/CDATASectionImpl;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lorg/apache/xerces/dom/CDATASectionImpl;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    move-object v0, v2

    return-object v0
.end method

.method public createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lorg/apache/xerces/dom/CommentImpl;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lorg/apache/xerces/dom/CommentImpl;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    move-object v0, v2

    return-object v0
.end method

.method public createDocumentFragment()Lorg/w3c/dom/DocumentFragment;
    .locals 5

    move-object v0, p0

    new-instance v1, Lorg/apache/xerces/dom/DocumentFragmentImpl;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lorg/apache/xerces/dom/DocumentFragmentImpl;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;)V

    move-object v0, v1

    return-object v0
.end method

.method public createDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/DocumentType;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    new-instance v4, Lorg/apache/xerces/dom/DocumentTypeImpl;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/apache/xerces/dom/DocumentTypeImpl;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    return-object v0
.end method

.method public createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/dom/CoreDocumentImpl;->xml11Version:Z

    invoke-static {v3, v4}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v4, "INVALID_CHARACTER_ERR"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    new-instance v3, Lorg/w3c/dom/DOMException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x5

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    :cond_0
    new-instance v3, Lorg/apache/xerces/dom/ElementImpl;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lorg/apache/xerces/dom/ElementImpl;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    move-object v0, v3

    return-object v0
.end method

.method public createElementDefinition(Ljava/lang/String;)Lorg/apache/xerces/dom/ElementDefinitionImpl;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/dom/CoreDocumentImpl;->xml11Version:Z

    invoke-static {v3, v4}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v4, "INVALID_CHARACTER_ERR"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    new-instance v3, Lorg/w3c/dom/DOMException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x5

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    :cond_0
    new-instance v3, Lorg/apache/xerces/dom/ElementDefinitionImpl;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lorg/apache/xerces/dom/ElementDefinitionImpl;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    move-object v0, v3

    return-object v0
.end method

.method public createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Lorg/apache/xerces/dom/ElementNSImpl;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/xerces/dom/ElementNSImpl;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    return-object v0
.end method

.method public createElementNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    new-instance v4, Lorg/apache/xerces/dom/ElementNSImpl;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lorg/apache/xerces/dom/ElementNSImpl;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    return-object v0
.end method

.method public createEntity(Ljava/lang/String;)Lorg/w3c/dom/Entity;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/dom/CoreDocumentImpl;->xml11Version:Z

    invoke-static {v3, v4}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v4, "INVALID_CHARACTER_ERR"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    new-instance v3, Lorg/w3c/dom/DOMException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x5

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    :cond_0
    new-instance v3, Lorg/apache/xerces/dom/EntityImpl;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lorg/apache/xerces/dom/EntityImpl;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    move-object v0, v3

    return-object v0
.end method

.method public createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/dom/CoreDocumentImpl;->xml11Version:Z

    invoke-static {v3, v4}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v4, "INVALID_CHARACTER_ERR"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    new-instance v3, Lorg/w3c/dom/DOMException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x5

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    :cond_0
    new-instance v3, Lorg/apache/xerces/dom/EntityReferenceImpl;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lorg/apache/xerces/dom/EntityReferenceImpl;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    move-object v0, v3

    return-object v0
.end method

.method public createNotation(Ljava/lang/String;)Lorg/w3c/dom/Notation;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/dom/CoreDocumentImpl;->xml11Version:Z

    invoke-static {v3, v4}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v4, "INVALID_CHARACTER_ERR"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    new-instance v3, Lorg/w3c/dom/DOMException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x5

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    :cond_0
    new-instance v3, Lorg/apache/xerces/dom/NotationImpl;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lorg/apache/xerces/dom/NotationImpl;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    move-object v0, v3

    return-object v0
.end method

.method public createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v4, :cond_0

    move-object v4, v1

    move-object v5, v0

    iget-boolean v5, v5, Lorg/apache/xerces/dom/CoreDocumentImpl;->xml11Version:Z

    invoke-static {v4, v5}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v5, "INVALID_CHARACTER_ERR"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    new-instance v4, Lorg/w3c/dom/DOMException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const/4 v6, 0x5

    move-object v7, v3

    invoke-direct {v5, v6, v7}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    :cond_0
    new-instance v4, Lorg/apache/xerces/dom/ProcessingInstructionImpl;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-direct {v5, v6, v7, v8}, Lorg/apache/xerces/dom/ProcessingInstructionImpl;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    return-object v0
.end method

.method public createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lorg/apache/xerces/dom/TextImpl;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lorg/apache/xerces/dom/TextImpl;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    move-object v0, v2

    return-object v0
.end method

.method deletedText(Lorg/apache/xerces/dom/CharacterDataImpl;II)V
    .locals 0

    return-void
.end method

.method protected dispatchEvent(Lorg/apache/xerces/dom/NodeImpl;Lorg/w3c/dom/events/Event;)Z
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v3, 0x0

    move v0, v3

    return v0
.end method

.method freeNodeListCache(Lorg/apache/xerces/dom/NodeListCache;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/CoreDocumentImpl;->fFreeNLCache:Lorg/apache/xerces/dom/NodeListCache;

    iput-object v3, v2, Lorg/apache/xerces/dom/NodeListCache;->next:Lorg/apache/xerces/dom/NodeListCache;

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/dom/CoreDocumentImpl;->fFreeNLCache:Lorg/apache/xerces/dom/NodeListCache;

    return-void
.end method

.method public getAsync()Z
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 6

    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/CoreDocumentImpl;->fDocumentURI:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/CoreDocumentImpl;->fDocumentURI:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v2, Lorg/apache/xerces/util/URI;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/CoreDocumentImpl;->fDocumentURI:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/apache/xerces/util/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/apache/xerces/util/URI;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v0, v2

    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    move-object v1, v2

    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/CoreDocumentImpl;->fDocumentURI:Ljava/lang/String;

    move-object v0, v2

    goto :goto_0
.end method

.method public getDoctype()Lorg/w3c/dom/DocumentType;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/CoreDocumentImpl;->needsSyncChildren()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/CoreDocumentImpl;->synchronizeChildren()V

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/CoreDocumentImpl;->docType:Lorg/apache/xerces/dom/DocumentTypeImpl;

    move-object v0, v1

    return-object v0
.end method

.method public getDocumentElement()Lorg/w3c/dom/Element;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/CoreDocumentImpl;->needsSyncChildren()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/CoreDocumentImpl;->synchronizeChildren()V

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/CoreDocumentImpl;->docElement:Lorg/apache/xerces/dom/ElementImpl;

    move-object v0, v1

    return-object v0
.end method

.method public getDocumentURI()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/CoreDocumentImpl;->fDocumentURI:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getDomConfig()Lorg/w3c/dom/DOMConfiguration;
    .locals 5

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/CoreDocumentImpl;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    if-nez v1, :cond_0

    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/dom/DOMConfigurationImpl;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/apache/xerces/dom/DOMConfigurationImpl;-><init>()V

    iput-object v2, v1, Lorg/apache/xerces/dom/CoreDocumentImpl;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/CoreDocumentImpl;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    move-object v0, v1

    return-object v0
.end method

.method public getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/dom/CoreDocumentImpl;->getIdentifier(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lorg/apache/xerces/dom/DeepNodeListImpl;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lorg/apache/xerces/dom/DeepNodeListImpl;-><init>(Lorg/apache/xerces/dom/NodeImpl;Ljava/lang/String;)V

    move-object v0, v2

    return-object v0
.end method

.method public getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    new-instance v3, Lorg/apache/xerces/dom/DeepNodeListImpl;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/xerces/dom/DeepNodeListImpl;-><init>(Lorg/apache/xerces/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/CoreDocumentImpl;->getXmlEncoding()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getErrorChecking()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    move v0, v1

    return v0
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v8, v2

    if-eqz v8, :cond_0

    move-object v8, v2

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_2

    :cond_0
    const/4 v8, 0x1

    :goto_0
    move v3, v8

    move-object v8, v1

    const-string/jumbo v9, "+XPath"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    move v8, v3

    if-nez v8, :cond_1

    move-object v8, v2

    const-string/jumbo v9, "3.0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_1
    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/CoreDocumentImpl;->fXPathEvaluator:Ljava/lang/Object;

    if-eqz v8, :cond_3

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/CoreDocumentImpl;->fXPathEvaluator:Ljava/lang/Object;

    move-object v0, v8

    :goto_1
    return-object v0

    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    :cond_3
    :try_start_0
    const-string/jumbo v8, "org.apache.xpath.domapi.XPathEvaluatorImpl"

    invoke-static {}, Lorg/apache/xerces/dom/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lorg/apache/xerces/dom/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v8

    move-object v4, v8

    move-object v8, v4

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Class;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    const/4 v11, 0x0

    sget-object v12, Lorg/apache/xerces/dom/CoreDocumentImpl;->class$org$w3c$dom$Document:Ljava/lang/Class;

    if-nez v12, :cond_4

    const-string/jumbo v12, "org.w3c.dom.Document"

    invoke-static {v12}, Lorg/apache/xerces/dom/CoreDocumentImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    move-object v14, v12

    move-object v12, v14

    move-object v13, v14

    sput-object v13, Lorg/apache/xerces/dom/CoreDocumentImpl;->class$org$w3c$dom$Document:Ljava/lang/Class;

    :goto_2
    aput-object v12, v10, v11

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    move-object v5, v8

    move-object v8, v4

    invoke-virtual {v8}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v8

    move-object v6, v8

    const/4 v8, 0x0

    move v7, v8

    :goto_3
    move v8, v7

    move-object v9, v6

    array-length v9, v9

    if-lt v8, v9, :cond_5

    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_1

    :cond_4
    sget-object v12, Lorg/apache/xerces/dom/CoreDocumentImpl;->class$org$w3c$dom$Document:Ljava/lang/Class;

    goto :goto_2

    :cond_5
    move-object v8, v6

    move v9, v7

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "org.w3c.dom.xpath.XPathEvaluator"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move-object v8, v0

    move-object v9, v5

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    const/4 v12, 0x0

    move-object v13, v0

    aput-object v13, v11, v12

    invoke-virtual {v9, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, v8, Lorg/apache/xerces/dom/CoreDocumentImpl;->fXPathEvaluator:Ljava/lang/Object;

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/CoreDocumentImpl;->fXPathEvaluator:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v8

    goto :goto_1

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :catch_0
    move-exception v8

    move-object v4, v8

    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_1

    :cond_7
    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    invoke-super {v8, v9, v10}, Lorg/apache/xerces/dom/ParentNode;->getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    goto :goto_1
.end method

.method public getIdentifier(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/CoreDocumentImpl;->needsSyncData()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/dom/CoreDocumentImpl;->synchronizeData()V

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    if-nez v4, :cond_1

    const/4 v4, 0x0

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Element;

    move-object v2, v4

    move-object v4, v2

    if-eqz v4, :cond_2

    move-object v4, v2

    invoke-interface {v4}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v3, v4

    :goto_1
    move-object v4, v3

    if-nez v4, :cond_3

    :cond_2
    const/4 v4, 0x0

    move-object v0, v4

    goto :goto_0

    :cond_3
    move-object v4, v3

    move-object v5, v0

    if-ne v4, v5, :cond_4

    move-object v4, v2

    move-object v0, v4

    goto :goto_0

    :cond_4
    move-object v4, v3

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v3, v4

    goto :goto_1
.end method

.method public getIdentifiers()Ljava/util/Enumeration;
    .locals 5

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/CoreDocumentImpl;->needsSyncData()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/CoreDocumentImpl;->synchronizeData()V

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    if-nez v1, :cond_1

    move-object v1, v0

    new-instance v2, Ljava/util/Hashtable;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, v1, Lorg/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getImplementation()Lorg/w3c/dom/DOMImplementation;
    .locals 2

    move-object v0, p0

    invoke-static {}, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->getDOMImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getInputEncoding()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/CoreDocumentImpl;->actualEncoding:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method getMutationEvents()Z
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

    move v0, v1

    return v0
.end method

.method getNodeListCache(Lorg/apache/xerces/dom/ParentNode;)Lorg/apache/xerces/dom/NodeListCache;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/CoreDocumentImpl;->fFreeNLCache:Lorg/apache/xerces/dom/NodeListCache;

    if-nez v3, :cond_0

    new-instance v3, Lorg/apache/xerces/dom/NodeListCache;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Lorg/apache/xerces/dom/NodeListCache;-><init>(Lorg/apache/xerces/dom/ParentNode;)V

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/CoreDocumentImpl;->fFreeNLCache:Lorg/apache/xerces/dom/NodeListCache;

    move-object v2, v3

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/CoreDocumentImpl;->fFreeNLCache:Lorg/apache/xerces/dom/NodeListCache;

    iget-object v4, v4, Lorg/apache/xerces/dom/NodeListCache;->next:Lorg/apache/xerces/dom/NodeListCache;

    iput-object v4, v3, Lorg/apache/xerces/dom/CoreDocumentImpl;->fFreeNLCache:Lorg/apache/xerces/dom/NodeListCache;

    move-object v3, v2

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/dom/NodeListCache;->fChild:Lorg/apache/xerces/dom/ChildNode;

    move-object v3, v2

    const/4 v4, -0x1

    iput v4, v3, Lorg/apache/xerces/dom/NodeListCache;->fChildIndex:I

    move-object v3, v2

    const/4 v4, -0x1

    iput v4, v3, Lorg/apache/xerces/dom/NodeListCache;->fLength:I

    move-object v3, v2

    iget-object v3, v3, Lorg/apache/xerces/dom/NodeListCache;->fOwner:Lorg/apache/xerces/dom/ParentNode;

    if-eqz v3, :cond_1

    move-object v3, v2

    iget-object v3, v3, Lorg/apache/xerces/dom/NodeListCache;->fOwner:Lorg/apache/xerces/dom/ParentNode;

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/dom/ParentNode;->fNodeListCache:Lorg/apache/xerces/dom/NodeListCache;

    :cond_1
    move-object v3, v2

    move-object v4, v1

    iput-object v4, v3, Lorg/apache/xerces/dom/NodeListCache;->fOwner:Lorg/apache/xerces/dom/ParentNode;

    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    const-string/jumbo v1, "#document"

    move-object v0, v1

    return-object v0
.end method

.method protected getNodeNumber()I
    .locals 4

    move-object v0, p0

    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/dom/CoreDocumentImpl;->documentNumber:I

    if-nez v2, :cond_0

    invoke-static {}, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->getDOMImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;

    move-object v1, v2

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->assignDocumentNumber()I

    move-result v3

    iput v3, v2, Lorg/apache/xerces/dom/CoreDocumentImpl;->documentNumber:I

    :cond_0
    move-object v2, v0

    iget v2, v2, Lorg/apache/xerces/dom/CoreDocumentImpl;->documentNumber:I

    move v0, v2

    return v0
.end method

.method protected getNodeNumber(Lorg/w3c/dom/Node;)I
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/CoreDocumentImpl;->nodeTable:Ljava/util/Map;

    if-nez v4, :cond_0

    move-object v4, v0

    new-instance v5, Ljava/util/WeakHashMap;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v5, v4, Lorg/apache/xerces/dom/CoreDocumentImpl;->nodeTable:Ljava/util/Map;

    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget v5, v5, Lorg/apache/xerces/dom/CoreDocumentImpl;->nodeCounter:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move-object v9, v4

    move v10, v5

    move v4, v10

    move-object v5, v9

    move v6, v10

    iput v6, v5, Lorg/apache/xerces/dom/CoreDocumentImpl;->nodeCounter:I

    move v2, v4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/CoreDocumentImpl;->nodeTable:Ljava/util/Map;

    move-object v5, v1

    new-instance v6, Ljava/lang/Integer;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move v8, v2

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    :goto_0
    move v4, v2

    move v0, v4

    return v0

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/CoreDocumentImpl;->nodeTable:Ljava/util/Map;

    move-object v5, v1

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    move-object v3, v4

    move-object v4, v3

    if-nez v4, :cond_1

    move-object v4, v0

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    iget v5, v5, Lorg/apache/xerces/dom/CoreDocumentImpl;->nodeCounter:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, -0x1

    move-object v9, v4

    move v10, v5

    move v4, v10

    move-object v5, v9

    move v6, v10

    iput v6, v5, Lorg/apache/xerces/dom/CoreDocumentImpl;->nodeCounter:I

    move v2, v4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/CoreDocumentImpl;->nodeTable:Ljava/util/Map;

    move-object v5, v1

    new-instance v6, Ljava/lang/Integer;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move v8, v2

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v2, v4

    goto :goto_0
.end method

.method public getNodeType()S
    .locals 2

    move-object v0, p0

    const/16 v1, 0x9

    move v0, v1

    return v0
.end method

.method public final getOwnerDocument()Lorg/w3c/dom/Document;
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public getStandalone()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/CoreDocumentImpl;->getXmlStandalone()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public getStrictErrorChecking()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

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

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method protected getUserData(Lorg/apache/xerces/dom/NodeImpl;)Ljava/lang/Object;
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const-string/jumbo v4, "XERCES1DOMUSERDATA"

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/dom/CoreDocumentImpl;->getUserData(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getUserData(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/Object;
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    if-nez v6, :cond_0

    const/4 v6, 0x0

    move-object v0, v6

    :goto_0
    return-object v0

    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    move-object v7, v1

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Hashtable;

    move-object v3, v6

    move-object v6, v3

    if-nez v6, :cond_1

    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    :cond_1
    move-object v6, v3

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    move-object v6, v4

    if-eqz v6, :cond_2

    move-object v6, v4

    check-cast v6, Lorg/apache/xerces/dom/ParentNode$UserDataRecord;

    move-object v5, v6

    move-object v6, v5

    iget-object v6, v6, Lorg/apache/xerces/dom/ParentNode$UserDataRecord;->fData:Ljava/lang/Object;

    move-object v0, v6

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0
.end method

.method protected getUserDataRecord(Lorg/w3c/dom/Node;)Ljava/util/Hashtable;
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    move-object v4, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Hashtable;

    move-object v2, v3

    move-object v3, v2

    if-nez v3, :cond_1

    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    :cond_1
    move-object v3, v2

    move-object v0, v3

    goto :goto_0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/CoreDocumentImpl;->getXmlVersion()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getXmlEncoding()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/CoreDocumentImpl;->encoding:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getXmlStandalone()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/dom/CoreDocumentImpl;->standalone:Z

    move v0, v1

    return v0
.end method

.method public getXmlVersion()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/CoreDocumentImpl;->version:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string/jumbo v1, "1.0"

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/CoreDocumentImpl;->version:Ljava/lang/String;

    goto :goto_0
.end method

.method public importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/apache/xerces/dom/CoreDocumentImpl;->importNode(Lorg/w3c/dom/Node;ZZLjava/util/HashMap;)Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v0, v3

    return-object v0
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

    move-object v5, v1

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    move v3, v5

    move-object v5, v0

    iget-boolean v5, v5, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v5, :cond_3

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xerces/dom/CoreDocumentImpl;->needsSyncChildren()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xerces/dom/CoreDocumentImpl;->synchronizeChildren()V

    :cond_0
    move v5, v3

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/CoreDocumentImpl;->docElement:Lorg/apache/xerces/dom/ElementImpl;

    if-nez v5, :cond_2

    :cond_1
    move v5, v3

    const/16 v6, 0xa

    if-ne v5, v6, :cond_3

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/dom/CoreDocumentImpl;->docType:Lorg/apache/xerces/dom/DocumentTypeImpl;

    if-eqz v5, :cond_3

    :cond_2
    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v6, "HIERARCHY_REQUEST_ERR"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    new-instance v5, Lorg/w3c/dom/DOMException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x3

    move-object v8, v4

    invoke-direct {v6, v7, v8}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    :cond_3
    move-object v5, v1

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v5

    if-nez v5, :cond_4

    move-object v5, v1

    instance-of v5, v5, Lorg/apache/xerces/dom/DocumentTypeImpl;

    if-eqz v5, :cond_4

    move-object v5, v1

    check-cast v5, Lorg/apache/xerces/dom/DocumentTypeImpl;

    move-object v6, v0

    iput-object v6, v5, Lorg/apache/xerces/dom/DocumentTypeImpl;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    :cond_4
    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-super {v5, v6, v7}, Lorg/apache/xerces/dom/ParentNode;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v5

    move v5, v3

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    move-object v5, v0

    move-object v6, v1

    check-cast v6, Lorg/apache/xerces/dom/ElementImpl;

    iput-object v6, v5, Lorg/apache/xerces/dom/CoreDocumentImpl;->docElement:Lorg/apache/xerces/dom/ElementImpl;

    :cond_5
    :goto_0
    move-object v5, v1

    move-object v0, v5

    return-object v0

    :cond_6
    move v5, v3

    const/16 v6, 0xa

    if-ne v5, v6, :cond_5

    move-object v5, v0

    move-object v6, v1

    check-cast v6, Lorg/apache/xerces/dom/DocumentTypeImpl;

    iput-object v6, v5, Lorg/apache/xerces/dom/CoreDocumentImpl;->docType:Lorg/apache/xerces/dom/DocumentTypeImpl;

    goto :goto_0
.end method

.method insertedNode(Lorg/apache/xerces/dom/NodeImpl;Lorg/apache/xerces/dom/NodeImpl;Z)V
    .locals 0

    return-void
.end method

.method insertedText(Lorg/apache/xerces/dom/CharacterDataImpl;II)V
    .locals 0

    return-void
.end method

.method insertingNode(Lorg/apache/xerces/dom/NodeImpl;Z)V
    .locals 0

    return-void
.end method

.method protected isKidOK(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-boolean v3, v3, Lorg/apache/xerces/dom/CoreDocumentImpl;->allowGrammarAccess:Z

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    move-object v3, v2

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    :goto_1
    return v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    sget-object v4, Lorg/apache/xerces/dom/CoreDocumentImpl;->kidOK:[I

    move-object v5, v1

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    aget v4, v4, v5

    const/4 v5, 0x1

    move-object v6, v2

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    shl-int/2addr v5, v6

    and-int/2addr v4, v5

    if-eq v3, v4, :cond_2

    const/4 v3, 0x1

    :goto_2
    move v0, v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method isNormalizeDocRequired()Z
    .locals 2

    move-object v0, p0

    const/4 v1, 0x1

    move v0, v1

    return v0
.end method

.method isXML11Version()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/dom/CoreDocumentImpl;->xml11Version:Z

    move v0, v1

    return v0
.end method

.method isXMLVersionChanged()Z
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Lorg/apache/xerces/dom/CoreDocumentImpl;->xmlVersionChanged:Z

    move v0, v1

    return v0
.end method

.method public load(Ljava/lang/String;)Z
    .locals 3

    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public loadXML(Ljava/lang/String;)Z
    .locals 3

    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method modifiedAttrValue(Lorg/apache/xerces/dom/AttrImpl;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method modifiedCharacterData(Lorg/apache/xerces/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    return-void
.end method

.method modifyingCharacterData(Lorg/apache/xerces/dom/NodeImpl;Z)V
    .locals 0

    return-void
.end method

.method public normalizeDocument()V
    .locals 5

    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isNormalized()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isNormalizeDocRequired()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/CoreDocumentImpl;->needsSyncChildren()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    invoke-virtual {v1}, Lorg/apache/xerces/dom/CoreDocumentImpl;->synchronizeChildren()V

    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/CoreDocumentImpl;->domNormalizer:Lorg/apache/xerces/dom/DOMNormalizer;

    if-nez v1, :cond_2

    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/dom/DOMNormalizer;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/apache/xerces/dom/DOMNormalizer;-><init>()V

    iput-object v2, v1, Lorg/apache/xerces/dom/CoreDocumentImpl;->domNormalizer:Lorg/apache/xerces/dom/DOMNormalizer;

    :cond_2
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/CoreDocumentImpl;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    if-nez v1, :cond_3

    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/dom/DOMConfigurationImpl;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Lorg/apache/xerces/dom/DOMConfigurationImpl;-><init>()V

    iput-object v2, v1, Lorg/apache/xerces/dom/CoreDocumentImpl;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    :goto_1
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/CoreDocumentImpl;->domNormalizer:Lorg/apache/xerces/dom/DOMNormalizer;

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/CoreDocumentImpl;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    invoke-virtual {v1, v2, v3}, Lorg/apache/xerces/dom/DOMNormalizer;->normalizeDocument(Lorg/apache/xerces/dom/CoreDocumentImpl;Lorg/apache/xerces/dom/DOMConfigurationImpl;)V

    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isNormalized(Z)V

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xerces/dom/CoreDocumentImpl;->xmlVersionChanged:Z

    goto :goto_0

    :cond_3
    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/dom/CoreDocumentImpl;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    invoke-virtual {v1}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->reset()V

    goto :goto_1
.end method

.method public putIdentifier(Ljava/lang/String;Lorg/w3c/dom/Element;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v2

    if-nez v3, :cond_0

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/CoreDocumentImpl;->removeIdentifier(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/CoreDocumentImpl;->needsSyncData()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/CoreDocumentImpl;->synchronizeData()V

    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    if-nez v3, :cond_2

    move-object v3, v0

    new-instance v4, Ljava/util/Hashtable;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    iput-object v4, v3, Lorg/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0
.end method

.method public removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Lorg/apache/xerces/dom/ParentNode;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    move-object v3, v1

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    move v2, v3

    move v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/dom/CoreDocumentImpl;->docElement:Lorg/apache/xerces/dom/ElementImpl;

    :cond_0
    :goto_0
    move-object v3, v1

    move-object v0, v3

    return-object v0

    :cond_1
    move v3, v2

    const/16 v4, 0xa

    if-ne v3, v4, :cond_0

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/dom/CoreDocumentImpl;->docType:Lorg/apache/xerces/dom/DocumentTypeImpl;

    goto :goto_0
.end method

.method protected removeEventListener(Lorg/apache/xerces/dom/NodeImpl;Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V
    .locals 0

    return-void
.end method

.method public removeIdentifier(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/CoreDocumentImpl;->needsSyncData()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/dom/CoreDocumentImpl;->synchronizeData()V

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    if-nez v2, :cond_1

    :goto_0
    return-void

    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/CoreDocumentImpl;->identifiers:Ljava/util/Hashtable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method removeUserDataTable(Lorg/w3c/dom/Node;)Ljava/util/Hashtable;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Hashtable;

    move-object v0, v2

    goto :goto_0
.end method

.method removedAttrNode(Lorg/apache/xerces/dom/AttrImpl;Lorg/apache/xerces/dom/NodeImpl;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method removedNode(Lorg/apache/xerces/dom/NodeImpl;Z)V
    .locals 0

    return-void
.end method

.method removingNode(Lorg/apache/xerces/dom/NodeImpl;Lorg/apache/xerces/dom/NodeImpl;Z)V
    .locals 0

    return-void
.end method

.method public renameNode(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v9, v0

    iget-boolean v9, v9, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v9, :cond_0

    move-object v9, v1

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v9

    move-object v10, v0

    if-eq v9, v10, :cond_0

    move-object v9, v1

    move-object v10, v0

    if-eq v9, v10, :cond_0

    const-string/jumbo v9, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v10, "WRONG_DOCUMENT_ERR"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    new-instance v9, Lorg/w3c/dom/DOMException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x4

    move-object v12, v4

    invoke-direct {v10, v11, v12}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v9

    :cond_0
    move-object v9, v1

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v9

    packed-switch v9, :pswitch_data_0

    const-string/jumbo v9, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v10, "NOT_SUPPORTED_ERR"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    new-instance v9, Lorg/w3c/dom/DOMException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/16 v11, 0x9

    move-object v12, v4

    invoke-direct {v10, v11, v12}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v9

    :pswitch_0
    move-object v9, v1

    check-cast v9, Lorg/apache/xerces/dom/ElementImpl;

    move-object v4, v9

    move-object v9, v4

    instance-of v9, v9, Lorg/apache/xerces/dom/ElementNSImpl;

    if-eqz v9, :cond_2

    move-object v9, v0

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    invoke-virtual {v9, v10, v11, v12}, Lorg/apache/xerces/dom/CoreDocumentImpl;->canRenameElements(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/dom/ElementImpl;)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v9, v4

    check-cast v9, Lorg/apache/xerces/dom/ElementNSImpl;

    move-object v10, v2

    move-object v11, v3

    invoke-virtual {v9, v10, v11}, Lorg/apache/xerces/dom/ElementNSImpl;->rename(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v0

    move-object v10, v4

    const/4 v11, 0x0

    const/4 v12, 0x4

    invoke-virtual {v9, v10, v11, v12}, Lorg/apache/xerces/dom/CoreDocumentImpl;->callUserDataHandlers(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;S)V

    :goto_0
    move-object v9, v0

    move-object v10, v1

    check-cast v10, Lorg/w3c/dom/Element;

    move-object v11, v4

    invoke-virtual {v9, v10, v11}, Lorg/apache/xerces/dom/CoreDocumentImpl;->renamedElement(Lorg/w3c/dom/Element;Lorg/w3c/dom/Element;)V

    move-object v9, v4

    move-object v0, v9

    :goto_1
    return-object v0

    :cond_1
    move-object v9, v0

    move-object v10, v4

    move-object v11, v2

    move-object v12, v3

    invoke-direct {v9, v10, v11, v12}, Lorg/apache/xerces/dom/CoreDocumentImpl;->replaceRenameElement(Lorg/apache/xerces/dom/ElementImpl;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/dom/ElementImpl;

    move-result-object v9

    move-object v4, v9

    goto :goto_0

    :cond_2
    move-object v9, v2

    if-nez v9, :cond_3

    move-object v9, v0

    const/4 v10, 0x0

    move-object v11, v3

    move-object v12, v4

    invoke-virtual {v9, v10, v11, v12}, Lorg/apache/xerces/dom/CoreDocumentImpl;->canRenameElements(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/dom/ElementImpl;)Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v9, v4

    move-object v10, v3

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/ElementImpl;->rename(Ljava/lang/String;)V

    move-object v9, v0

    move-object v10, v4

    const/4 v11, 0x0

    const/4 v12, 0x4

    invoke-virtual {v9, v10, v11, v12}, Lorg/apache/xerces/dom/CoreDocumentImpl;->callUserDataHandlers(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;S)V

    goto :goto_0

    :cond_3
    move-object v9, v0

    move-object v10, v4

    move-object v11, v2

    move-object v12, v3

    invoke-direct {v9, v10, v11, v12}, Lorg/apache/xerces/dom/CoreDocumentImpl;->replaceRenameElement(Lorg/apache/xerces/dom/ElementImpl;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/dom/ElementImpl;

    move-result-object v9

    move-object v4, v9

    goto :goto_0

    :pswitch_1
    move-object v9, v1

    check-cast v9, Lorg/apache/xerces/dom/AttrImpl;

    move-object v4, v9

    move-object v9, v4

    invoke-virtual {v9}, Lorg/apache/xerces/dom/AttrImpl;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v9

    move-object v5, v9

    move-object v9, v5

    if-eqz v9, :cond_4

    move-object v9, v5

    move-object v10, v4

    invoke-interface {v9, v10}, Lorg/w3c/dom/Element;->removeAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    move-result-object v9

    :cond_4
    move-object v9, v1

    instance-of v9, v9, Lorg/apache/xerces/dom/AttrNSImpl;

    if-eqz v9, :cond_6

    move-object v9, v4

    check-cast v9, Lorg/apache/xerces/dom/AttrNSImpl;

    move-object v10, v2

    move-object v11, v3

    invoke-virtual {v9, v10, v11}, Lorg/apache/xerces/dom/AttrNSImpl;->rename(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v5

    if-eqz v9, :cond_5

    move-object v9, v5

    move-object v10, v4

    invoke-interface {v9, v10}, Lorg/w3c/dom/Element;->setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    move-result-object v9

    :cond_5
    move-object v9, v0

    move-object v10, v4

    const/4 v11, 0x0

    const/4 v12, 0x4

    invoke-virtual {v9, v10, v11, v12}, Lorg/apache/xerces/dom/CoreDocumentImpl;->callUserDataHandlers(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;S)V

    :goto_2
    move-object v9, v0

    move-object v10, v1

    check-cast v10, Lorg/w3c/dom/Attr;

    move-object v11, v4

    invoke-virtual {v9, v10, v11}, Lorg/apache/xerces/dom/CoreDocumentImpl;->renamedAttrNode(Lorg/w3c/dom/Attr;Lorg/w3c/dom/Attr;)V

    move-object v9, v4

    move-object v0, v9

    goto :goto_1

    :cond_6
    move-object v9, v2

    if-nez v9, :cond_8

    move-object v9, v4

    move-object v10, v3

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/AttrImpl;->rename(Ljava/lang/String;)V

    move-object v9, v5

    if-eqz v9, :cond_7

    move-object v9, v5

    move-object v10, v4

    invoke-interface {v9, v10}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    move-result-object v9

    :cond_7
    move-object v9, v0

    move-object v10, v4

    const/4 v11, 0x0

    const/4 v12, 0x4

    invoke-virtual {v9, v10, v11, v12}, Lorg/apache/xerces/dom/CoreDocumentImpl;->callUserDataHandlers(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;S)V

    goto :goto_2

    :cond_8
    move-object v9, v0

    move-object v10, v2

    move-object v11, v3

    invoke-virtual {v9, v10, v11}, Lorg/apache/xerces/dom/CoreDocumentImpl;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v9

    check-cast v9, Lorg/apache/xerces/dom/AttrNSImpl;

    move-object v6, v9

    move-object v9, v0

    move-object v10, v4

    move-object v11, v6

    invoke-virtual {v9, v10, v11}, Lorg/apache/xerces/dom/CoreDocumentImpl;->copyEventListeners(Lorg/apache/xerces/dom/NodeImpl;Lorg/apache/xerces/dom/NodeImpl;)V

    move-object v9, v0

    move-object v10, v4

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/CoreDocumentImpl;->removeUserDataTable(Lorg/w3c/dom/Node;)Ljava/util/Hashtable;

    move-result-object v9

    move-object v7, v9

    move-object v9, v4

    invoke-virtual {v9}, Lorg/apache/xerces/dom/AttrImpl;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v8, v9

    :goto_3
    move-object v9, v8

    if-nez v9, :cond_a

    move-object v9, v0

    move-object v10, v6

    move-object v11, v7

    invoke-virtual {v9, v10, v11}, Lorg/apache/xerces/dom/CoreDocumentImpl;->setUserDataTable(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)V

    move-object v9, v0

    move-object v10, v4

    move-object v11, v6

    const/4 v12, 0x4

    invoke-virtual {v9, v10, v11, v12}, Lorg/apache/xerces/dom/CoreDocumentImpl;->callUserDataHandlers(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;S)V

    move-object v9, v5

    if-eqz v9, :cond_9

    move-object v9, v5

    move-object v10, v6

    invoke-interface {v9, v10}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    move-result-object v9

    :cond_9
    move-object v9, v6

    move-object v4, v9

    goto :goto_2

    :cond_a
    move-object v9, v4

    move-object v10, v8

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/AttrImpl;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v9, v6

    move-object v10, v8

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/AttrNSImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v9, v4

    invoke-virtual {v9}, Lorg/apache/xerces/dom/AttrImpl;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v8, v9

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method renamedAttrNode(Lorg/w3c/dom/Attr;Lorg/w3c/dom/Attr;)V
    .locals 0

    return-void
.end method

.method renamedElement(Lorg/w3c/dom/Element;Lorg/w3c/dom/Element;)V
    .locals 0

    return-void
.end method

.method public replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v4

    if-nez v4, :cond_0

    move-object v4, v1

    instance-of v4, v4, Lorg/apache/xerces/dom/DocumentTypeImpl;

    if-eqz v4, :cond_0

    move-object v4, v1

    check-cast v4, Lorg/apache/xerces/dom/DocumentTypeImpl;

    move-object v5, v0

    iput-object v5, v4, Lorg/apache/xerces/dom/DocumentTypeImpl;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    :cond_0
    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v4, :cond_3

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/CoreDocumentImpl;->docType:Lorg/apache/xerces/dom/DocumentTypeImpl;

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_1

    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_2

    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/dom/CoreDocumentImpl;->docElement:Lorg/apache/xerces/dom/ElementImpl;

    if-eqz v4, :cond_3

    move-object v4, v2

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_3

    move-object v4, v1

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    :cond_2
    new-instance v4, Lorg/w3c/dom/DOMException;

    move-object v10, v4

    move-object v4, v10

    move-object v5, v10

    const/4 v6, 0x3

    const-string/jumbo v7, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v8, "HIERARCHY_REQUEST_ERR"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    :cond_3
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Lorg/apache/xerces/dom/ParentNode;->replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v4, v2

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    move v3, v4

    move v4, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    move-object v4, v0

    move-object v5, v1

    check-cast v5, Lorg/apache/xerces/dom/ElementImpl;

    iput-object v5, v4, Lorg/apache/xerces/dom/CoreDocumentImpl;->docElement:Lorg/apache/xerces/dom/ElementImpl;

    :cond_4
    :goto_0
    move-object v4, v2

    move-object v0, v4

    return-object v0

    :cond_5
    move v4, v3

    const/16 v5, 0xa

    if-ne v4, v5, :cond_4

    move-object v4, v0

    move-object v5, v1

    check-cast v5, Lorg/apache/xerces/dom/DocumentTypeImpl;

    iput-object v5, v4, Lorg/apache/xerces/dom/CoreDocumentImpl;->docType:Lorg/apache/xerces/dom/DocumentTypeImpl;

    goto :goto_0
.end method

.method replacedCharacterData(Lorg/apache/xerces/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method replacedNode(Lorg/apache/xerces/dom/NodeImpl;)V
    .locals 0

    return-void
.end method

.method replacedText(Lorg/apache/xerces/dom/CharacterDataImpl;)V
    .locals 0

    return-void
.end method

.method replacingData(Lorg/apache/xerces/dom/NodeImpl;)V
    .locals 0

    return-void
.end method

.method replacingNode(Lorg/apache/xerces/dom/NodeImpl;)V
    .locals 0

    return-void
.end method

.method public saveXML(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v4, :cond_0

    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v0

    move-object v5, v1

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v5

    if-eq v4, v5, :cond_0

    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v5, "WRONG_DOCUMENT_ERR"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    new-instance v4, Lorg/w3c/dom/DOMException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x4

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    :cond_0
    invoke-static {}, Lorg/apache/xerces/dom/DOMImplementationImpl;->getDOMImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/ls/DOMImplementationLS;

    move-object v2, v4

    move-object v4, v2

    invoke-interface {v4}, Lorg/w3c/dom/ls/DOMImplementationLS;->createLSSerializer()Lorg/w3c/dom/ls/LSSerializer;

    move-result-object v4

    move-object v3, v4

    move-object v4, v1

    if-nez v4, :cond_1

    move-object v4, v0

    move-object v1, v4

    :cond_1
    move-object v4, v3

    move-object v5, v1

    invoke-interface {v4, v5}, Lorg/w3c/dom/ls/LSSerializer;->writeToString(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public setAsync(Z)V
    .locals 8

    move-object v0, p0

    move v1, p1

    move v3, v1

    if-eqz v3, :cond_0

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

    :cond_0
    return-void
.end method

.method setAttrNode(Lorg/apache/xerces/dom/AttrImpl;Lorg/apache/xerces/dom/AttrImpl;)V
    .locals 0

    return-void
.end method

.method public setDocumentURI(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/dom/CoreDocumentImpl;->fDocumentURI:Ljava/lang/String;

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/dom/CoreDocumentImpl;->setXmlEncoding(Ljava/lang/String;)V

    return-void
.end method

.method public setErrorChecking(Z)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    return-void
.end method

.method public setInputEncoding(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/dom/CoreDocumentImpl;->actualEncoding:Ljava/lang/String;

    return-void
.end method

.method setMutationEvents(Z)V
    .locals 0

    return-void
.end method

.method public setStandalone(Z)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/dom/CoreDocumentImpl;->setXmlStandalone(Z)V

    return-void
.end method

.method public setStrictErrorChecking(Z)V
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    return-void
.end method

.method public setTextContent(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    return-void
.end method

.method public setUserData(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v8, v3

    if-nez v8, :cond_1

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    if-eqz v8, :cond_0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    move-object v9, v1

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Hashtable;

    move-object v5, v8

    move-object v8, v5

    if-eqz v8, :cond_0

    move-object v8, v5

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v6, v8

    move-object v8, v6

    if-eqz v8, :cond_0

    move-object v8, v6

    check-cast v8, Lorg/apache/xerces/dom/ParentNode$UserDataRecord;

    move-object v7, v8

    move-object v8, v7

    iget-object v8, v8, Lorg/apache/xerces/dom/ParentNode$UserDataRecord;->fData:Ljava/lang/Object;

    move-object v0, v8

    :goto_0
    return-object v0

    :cond_0
    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_0

    :cond_1
    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    if-nez v8, :cond_3

    move-object v8, v0

    new-instance v9, Ljava/util/WeakHashMap;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    invoke-direct {v10}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v9, v8, Lorg/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    new-instance v8, Ljava/util/Hashtable;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    invoke-direct {v9}, Ljava/util/Hashtable;-><init>()V

    move-object v5, v8

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    move-object v9, v1

    move-object v10, v5

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    :cond_2
    :goto_1
    move-object v8, v5

    move-object v9, v2

    new-instance v10, Lorg/apache/xerces/dom/ParentNode$UserDataRecord;

    move-object v15, v10

    move-object v10, v15

    move-object v11, v15

    move-object v12, v0

    move-object v13, v3

    move-object v14, v4

    invoke-direct {v11, v12, v13, v14}, Lorg/apache/xerces/dom/ParentNode$UserDataRecord;-><init>(Lorg/apache/xerces/dom/ParentNode;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)V

    invoke-virtual {v8, v9, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v6, v8

    move-object v8, v6

    if-eqz v8, :cond_4

    move-object v8, v6

    check-cast v8, Lorg/apache/xerces/dom/ParentNode$UserDataRecord;

    move-object v7, v8

    move-object v8, v7

    iget-object v8, v8, Lorg/apache/xerces/dom/ParentNode$UserDataRecord;->fData:Ljava/lang/Object;

    move-object v0, v8

    goto :goto_0

    :cond_3
    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    move-object v9, v1

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Hashtable;

    move-object v5, v8

    move-object v8, v5

    if-nez v8, :cond_2

    new-instance v8, Ljava/util/Hashtable;

    move-object v15, v8

    move-object v8, v15

    move-object v9, v15

    invoke-direct {v9}, Ljava/util/Hashtable;-><init>()V

    move-object v5, v8

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    move-object v9, v1

    move-object v10, v5

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    move-object v0, v8

    goto :goto_0
.end method

.method protected setUserData(Lorg/apache/xerces/dom/NodeImpl;Ljava/lang/Object;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    const-string/jumbo v5, "XERCES1DOMUSERDATA"

    move-object v6, v2

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/apache/xerces/dom/CoreDocumentImpl;->setUserData(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;

    move-result-object v3

    return-void
.end method

.method setUserDataTable(Lorg/w3c/dom/Node;Ljava/util/Hashtable;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    if-nez v3, :cond_0

    move-object v3, v0

    new-instance v4, Ljava/util/WeakHashMap;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v4, v3, Lorg/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    :cond_0
    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/dom/CoreDocumentImpl;->userData:Ljava/util/Map;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :cond_1
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/dom/CoreDocumentImpl;->setXmlVersion(Ljava/lang/String;)V

    return-void
.end method

.method public setXmlEncoding(Ljava/lang/String;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/dom/CoreDocumentImpl;->encoding:Ljava/lang/String;

    return-void
.end method

.method public setXmlStandalone(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lorg/apache/xerces/dom/CoreDocumentImpl;->standalone:Z

    return-void
.end method

.method public setXmlVersion(Ljava/lang/String;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    const-string/jumbo v4, "1.0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v1

    const-string/jumbo v4, "1.1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/CoreDocumentImpl;->getXmlVersion()Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/apache/xerces/dom/CoreDocumentImpl;->xmlVersionChanged:Z

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isNormalized(Z)V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/apache/xerces/dom/CoreDocumentImpl;->version:Ljava/lang/String;

    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Lorg/apache/xerces/dom/CoreDocumentImpl;->getXmlVersion()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "1.1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/apache/xerces/dom/CoreDocumentImpl;->xml11Version:Z

    :goto_0
    return-void

    :cond_2
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

    :cond_3
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lorg/apache/xerces/dom/CoreDocumentImpl;->xml11Version:Z

    goto :goto_0
.end method

.method protected undeferChildren(Lorg/w3c/dom/Node;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v6, v1

    move-object v2, v6

    :goto_0
    const/4 v6, 0x0

    move-object v7, v1

    if-ne v6, v7, :cond_0

    return-void

    :cond_0
    move-object v6, v1

    check-cast v6, Lorg/apache/xerces/dom/NodeImpl;

    invoke-virtual {v6}, Lorg/apache/xerces/dom/NodeImpl;->needsSyncData()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v1

    check-cast v6, Lorg/apache/xerces/dom/NodeImpl;

    invoke-virtual {v6}, Lorg/apache/xerces/dom/NodeImpl;->synchronizeData()V

    :cond_1
    move-object v6, v1

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v6

    move-object v3, v6

    move-object v6, v3

    if-eqz v6, :cond_2

    move-object v6, v3

    invoke-interface {v6}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v6

    move v4, v6

    const/4 v6, 0x0

    move v5, v6

    :goto_1
    move v6, v5

    move v7, v4

    if-lt v6, v7, :cond_4

    :cond_2
    const/4 v6, 0x0

    move-object v4, v6

    move-object v6, v1

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v4, v6

    :cond_3
    const/4 v6, 0x0

    move-object v7, v4

    if-eq v6, v7, :cond_5

    :goto_2
    move-object v6, v4

    move-object v1, v6

    goto :goto_0

    :cond_4
    move-object v6, v0

    move-object v7, v3

    move v8, v5

    invoke-interface {v7, v8}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/xerces/dom/CoreDocumentImpl;->undeferChildren(Lorg/w3c/dom/Node;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    move-object v6, v2

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_2

    :cond_6
    move-object v6, v1

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v4, v6

    const/4 v6, 0x0

    move-object v7, v4

    if-ne v6, v7, :cond_3

    move-object v6, v1

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v1, v6

    const/4 v6, 0x0

    move-object v7, v1

    if-eq v6, v7, :cond_7

    move-object v6, v2

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_7
    const/4 v6, 0x0

    move-object v4, v6

    goto :goto_2
.end method
