.class public Lorg/apache/xerces/dom/DOMNormalizer;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xerces/xni/XMLDocumentHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z = false

.field protected static final DEBUG_EVENTS:Z = false

.field protected static final DEBUG_ND:Z = false

.field public static final EMPTY_STRING:Lorg/apache/xerces/xni/XMLString;

.field protected static final PREFIX:Ljava/lang/String; = "NS"

.field public static final abort:Ljava/lang/RuntimeException;


# instance fields
.field private fAllWhitespace:Z

.field protected final fAttrProxy:Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;

.field private final fAttrQName:Lorg/apache/xerces/xni/QName;

.field protected final fAttributeList:Ljava/util/ArrayList;

.field protected fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

.field protected fCurrentNode:Lorg/w3c/dom/Node;

.field protected fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

.field private final fError:Lorg/apache/xerces/dom/DOMErrorImpl;

.field protected fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

.field protected final fLocalNSBinder:Lorg/apache/xerces/xni/NamespaceContext;

.field protected final fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

.field protected final fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

.field protected fNamespaceValidation:Z

.field final fNormalizedValue:Lorg/apache/xerces/xni/XMLString;

.field protected fPSVI:Z

.field protected final fQName:Lorg/apache/xerces/xni/QName;

.field protected fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

.field protected fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/xerces/dom/DOMNormalizer$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lorg/apache/xerces/dom/DOMNormalizer$1;-><init>()V

    sput-object v0, Lorg/apache/xerces/dom/DOMNormalizer;->abort:Ljava/lang/RuntimeException;

    new-instance v0, Lorg/apache/xerces/xni/XMLString;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lorg/apache/xerces/xni/XMLString;-><init>()V

    sput-object v0, Lorg/apache/xerces/dom/DOMNormalizer;->EMPTY_STRING:Lorg/apache/xerces/xni/XMLString;

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    invoke-direct {v3, v4}, Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;-><init>(Lorg/apache/xerces/dom/DOMNormalizer;)V

    iput-object v2, v1, Lorg/apache/xerces/dom/DOMNormalizer;->fAttrProxy:Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;

    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/xni/QName;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v2, v1, Lorg/apache/xerces/dom/DOMNormalizer;->fQName:Lorg/apache/xerces/xni/QName;

    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Lorg/apache/xerces/dom/DOMErrorImpl;-><init>()V

    iput-object v2, v1, Lorg/apache/xerces/dom/DOMNormalizer;->fError:Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xerces/dom/DOMNormalizer;->fNamespaceValidation:Z

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xerces/dom/DOMNormalizer;->fPSVI:Z

    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/util/NamespaceSupport;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Lorg/apache/xerces/util/NamespaceSupport;-><init>()V

    iput-object v2, v1, Lorg/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/util/NamespaceSupport;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Lorg/apache/xerces/util/NamespaceSupport;-><init>()V

    iput-object v2, v1, Lorg/apache/xerces/dom/DOMNormalizer;->fLocalNSBinder:Lorg/apache/xerces/xni/NamespaceContext;

    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v1, Lorg/apache/xerces/dom/DOMNormalizer;->fAttributeList:Ljava/util/ArrayList;

    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/dom/DOMLocatorImpl;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Lorg/apache/xerces/dom/DOMLocatorImpl;-><init>()V

    iput-object v2, v1, Lorg/apache/xerces/dom/DOMNormalizer;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/dom/DOMNormalizer;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/xni/QName;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    invoke-direct {v3}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v2, v1, Lorg/apache/xerces/dom/DOMNormalizer;->fAttrQName:Lorg/apache/xerces/xni/QName;

    move-object v1, v0

    new-instance v2, Lorg/apache/xerces/xni/XMLString;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    const/16 v4, 0x10

    new-array v4, v4, [C

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lorg/apache/xerces/xni/XMLString;-><init>([CII)V

    iput-object v2, v1, Lorg/apache/xerces/dom/DOMNormalizer;->fNormalizedValue:Lorg/apache/xerces/xni/XMLString;

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xerces/dom/DOMNormalizer;->fAllWhitespace:Z

    return-void
.end method

.method public static final isAttrValueWF(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Lorg/w3c/dom/NamedNodeMap;Lorg/w3c/dom/Attr;Ljava/lang/String;Z)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object v15, v5

    instance-of v15, v15, Lorg/apache/xerces/dom/AttrImpl;

    if-eqz v15, :cond_1

    move-object v15, v5

    check-cast v15, Lorg/apache/xerces/dom/AttrImpl;

    invoke-virtual {v15}, Lorg/apache/xerces/dom/AttrImpl;->hasStringValue()Z

    move-result v15

    if-eqz v15, :cond_1

    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v6

    move/from16 v19, v7

    invoke-static/range {v15 .. v19}, Lorg/apache/xerces/dom/DOMNormalizer;->isXMLCharWF(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    :cond_0
    return-void

    :cond_1
    move-object v15, v5

    invoke-interface {v15}, Lorg/w3c/dom/Attr;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v15

    move-object v8, v15

    const/4 v15, 0x0

    move v9, v15

    :goto_0
    move v15, v9

    move-object/from16 v16, v8

    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v16

    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    move-object v15, v8

    move/from16 v16, v9

    invoke-interface/range {v15 .. v16}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v15

    move-object v10, v15

    move-object v15, v10

    invoke-interface {v15}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v15

    const/16 v16, 0x5

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    move-object v15, v5

    invoke-interface {v15}, Lorg/w3c/dom/Attr;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v15

    move-object v11, v15

    const/4 v15, 0x0

    move-object v12, v15

    move-object v15, v11

    if-eqz v15, :cond_2

    move-object v15, v11

    invoke-interface {v15}, Lorg/w3c/dom/Document;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v15

    move-object v13, v15

    move-object v15, v13

    if-eqz v15, :cond_2

    move-object v15, v13

    invoke-interface {v15}, Lorg/w3c/dom/DocumentType;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v15

    move-object v14, v15

    move-object v15, v14

    const-string/jumbo v16, "*"

    move-object/from16 v17, v10

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v15 .. v17}, Lorg/w3c/dom/NamedNodeMap;->getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v15

    check-cast v15, Lorg/w3c/dom/Entity;

    move-object v12, v15

    :cond_2
    move-object v15, v12

    if-nez v15, :cond_3

    const-string/jumbo v15, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v16, "UndeclaredEntRefInAttrValue"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v21, v17

    move-object/from16 v17, v21

    move-object/from16 v18, v21

    const/16 v19, 0x0

    move-object/from16 v20, v5

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v15 .. v17}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object v13, v15

    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v13

    const/16 v19, 0x2

    const-string/jumbo v20, "UndeclaredEntRefInAttrValue"

    invoke-static/range {v15 .. v20}, Lorg/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    :cond_3
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_4
    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v10

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v18

    move/from16 v19, v7

    invoke-static/range {v15 .. v19}, Lorg/apache/xerces/dom/DOMNormalizer;->isXMLCharWF(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method public static final isCDataWF(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object v11, v3

    if-eqz v11, :cond_0

    move-object v11, v3

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v11, v3

    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    move-result-object v11

    move-object v5, v11

    move-object v11, v5

    array-length v11, v11

    move v6, v11

    move v11, v4

    if-eqz v11, :cond_9

    const/4 v11, 0x0

    move v7, v11

    :cond_2
    :goto_1
    move v11, v7

    move v12, v6

    if-lt v11, v12, :cond_4

    :cond_3
    goto :goto_0

    :cond_4
    move-object v11, v5

    move v12, v7

    add-int/lit8 v7, v7, 0x1

    aget-char v11, v11, v12

    move v8, v11

    move v11, v8

    invoke-static {v11}, Lorg/apache/xerces/util/XML11Char;->isXML11Invalid(I)Z

    move-result v11

    if-eqz v11, :cond_6

    move v11, v8

    invoke-static {v11}, Lorg/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v11

    if-eqz v11, :cond_5

    move v11, v7

    move v12, v6

    if-ge v11, v12, :cond_5

    move-object v11, v5

    move v12, v7

    add-int/lit8 v7, v7, 0x1

    aget-char v11, v11, v12

    move v9, v11

    move v11, v9

    invoke-static {v11}, Lorg/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v11

    if-eqz v11, :cond_5

    move v11, v8

    move v12, v9

    invoke-static {v11, v12}, Lorg/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v11

    invoke-static {v11}, Lorg/apache/xerces/util/XMLChar;->isSupplemental(I)Z

    move-result v11

    if-eqz v11, :cond_5

    goto :goto_1

    :cond_5
    const-string/jumbo v11, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v12, "InvalidCharInCDSect"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    const/4 v15, 0x0

    move/from16 v16, v8

    const/16 v17, 0x10

    invoke-static/range {v16 .. v17}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v11, v12, v13}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    move-object v11, v0

    move-object v12, v1

    move-object v13, v2

    move-object v14, v9

    const/4 v15, 0x2

    const-string/jumbo v16, "wf-invalid-character"

    invoke-static/range {v11 .. v16}, Lorg/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto :goto_1

    :cond_6
    move v11, v8

    const/16 v12, 0x5d

    if-ne v11, v12, :cond_2

    move v11, v7

    move v9, v11

    move v11, v9

    move v12, v6

    if-ge v11, v12, :cond_2

    move-object v11, v5

    move v12, v9

    aget-char v11, v11, v12

    const/16 v12, 0x5d

    if-ne v11, v12, :cond_2

    :cond_7
    add-int/lit8 v9, v9, 0x1

    move v11, v9

    move v12, v6

    if-ge v11, v12, :cond_8

    move-object v11, v5

    move v12, v9

    aget-char v11, v11, v12

    const/16 v12, 0x5d

    if-eq v11, v12, :cond_7

    :cond_8
    move v11, v9

    move v12, v6

    if-ge v11, v12, :cond_2

    move-object v11, v5

    move v12, v9

    aget-char v11, v11, v12

    const/16 v12, 0x3e

    if-ne v11, v12, :cond_2

    const-string/jumbo v11, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v12, "CDEndInContent"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    move-object v11, v0

    move-object v12, v1

    move-object v13, v2

    move-object v14, v10

    const/4 v15, 0x2

    const-string/jumbo v16, "wf-invalid-character"

    invoke-static/range {v11 .. v16}, Lorg/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    const/4 v11, 0x0

    move v7, v11

    :cond_a
    :goto_2
    move v11, v7

    move v12, v6

    if-ge v11, v12, :cond_3

    move-object v11, v5

    move v12, v7

    add-int/lit8 v7, v7, 0x1

    aget-char v11, v11, v12

    move v8, v11

    move v11, v8

    invoke-static {v11}, Lorg/apache/xerces/util/XMLChar;->isInvalid(I)Z

    move-result v11

    if-eqz v11, :cond_c

    move v11, v8

    invoke-static {v11}, Lorg/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v11

    if-eqz v11, :cond_b

    move v11, v7

    move v12, v6

    if-ge v11, v12, :cond_b

    move-object v11, v5

    move v12, v7

    add-int/lit8 v7, v7, 0x1

    aget-char v11, v11, v12

    move v9, v11

    move v11, v9

    invoke-static {v11}, Lorg/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v11

    if-eqz v11, :cond_b

    move v11, v8

    move v12, v9

    invoke-static {v11, v12}, Lorg/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v11

    invoke-static {v11}, Lorg/apache/xerces/util/XMLChar;->isSupplemental(I)Z

    move-result v11

    if-eqz v11, :cond_b

    goto :goto_2

    :cond_b
    const-string/jumbo v11, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v12, "InvalidCharInCDSect"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    const/4 v15, 0x0

    move/from16 v16, v8

    const/16 v17, 0x10

    invoke-static/range {v16 .. v17}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v11, v12, v13}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    move-object v11, v0

    move-object v12, v1

    move-object v13, v2

    move-object v14, v9

    const/4 v15, 0x2

    const-string/jumbo v16, "wf-invalid-character"

    invoke-static/range {v11 .. v16}, Lorg/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto :goto_2

    :cond_c
    move v11, v8

    const/16 v12, 0x5d

    if-ne v11, v12, :cond_a

    move v11, v7

    move v9, v11

    move v11, v9

    move v12, v6

    if-ge v11, v12, :cond_a

    move-object v11, v5

    move v12, v9

    aget-char v11, v11, v12

    const/16 v12, 0x5d

    if-ne v11, v12, :cond_a

    :cond_d
    add-int/lit8 v9, v9, 0x1

    move v11, v9

    move v12, v6

    if-ge v11, v12, :cond_e

    move-object v11, v5

    move v12, v9

    aget-char v11, v11, v12

    const/16 v12, 0x5d

    if-eq v11, v12, :cond_d

    :cond_e
    move v11, v9

    move v12, v6

    if-ge v11, v12, :cond_a

    move-object v11, v5

    move v12, v9

    aget-char v11, v11, v12

    const/16 v12, 0x3e

    if-ne v11, v12, :cond_a

    const-string/jumbo v11, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v12, "CDEndInContent"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    move-object v11, v0

    move-object v12, v1

    move-object v13, v2

    move-object v14, v10

    const/4 v15, 0x2

    const-string/jumbo v16, "wf-invalid-character"

    invoke-static/range {v11 .. v16}, Lorg/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto/16 :goto_2
.end method

.method public static final isCommentWF(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object v10, v3

    if-eqz v10, :cond_0

    move-object v10, v3

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v10, v3

    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    move-object v5, v10

    move-object v10, v5

    array-length v10, v10

    move v6, v10

    move v10, v4

    if-eqz v10, :cond_7

    const/4 v10, 0x0

    move v7, v10

    :cond_2
    :goto_1
    move v10, v7

    move v11, v6

    if-lt v10, v11, :cond_4

    :cond_3
    goto :goto_0

    :cond_4
    move-object v10, v5

    move v11, v7

    add-int/lit8 v7, v7, 0x1

    aget-char v10, v10, v11

    move v8, v10

    move v10, v8

    invoke-static {v10}, Lorg/apache/xerces/util/XML11Char;->isXML11Invalid(I)Z

    move-result v10

    if-eqz v10, :cond_6

    move v10, v8

    invoke-static {v10}, Lorg/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v10

    if-eqz v10, :cond_5

    move v10, v7

    move v11, v6

    if-ge v10, v11, :cond_5

    move-object v10, v5

    move v11, v7

    add-int/lit8 v7, v7, 0x1

    aget-char v10, v10, v11

    move v9, v10

    move v10, v9

    invoke-static {v10}, Lorg/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v10

    if-eqz v10, :cond_5

    move v10, v8

    move v11, v9

    invoke-static {v10, v11}, Lorg/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v10

    invoke-static {v10}, Lorg/apache/xerces/util/XMLChar;->isSupplemental(I)Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_1

    :cond_5
    const-string/jumbo v10, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v11, "InvalidCharInComment"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x0

    move-object v15, v5

    move/from16 v16, v7

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    aget-char v15, v15, v16

    const/16 v16, 0x10

    invoke-static/range {v15 .. v16}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v10, v11, v12}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    move-object v13, v9

    const/4 v14, 0x2

    const-string/jumbo v15, "wf-invalid-character"

    invoke-static/range {v10 .. v15}, Lorg/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto :goto_1

    :cond_6
    move v10, v8

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_2

    move v10, v7

    move v11, v6

    if-ge v10, v11, :cond_2

    move-object v10, v5

    move v11, v7

    aget-char v10, v10, v11

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_2

    const-string/jumbo v10, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v11, "DashDashInComment"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    move-object v13, v9

    const/4 v14, 0x2

    const-string/jumbo v15, "wf-invalid-character"

    invoke-static/range {v10 .. v15}, Lorg/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    const/4 v10, 0x0

    move v7, v10

    :cond_8
    :goto_2
    move v10, v7

    move v11, v6

    if-ge v10, v11, :cond_3

    move-object v10, v5

    move v11, v7

    add-int/lit8 v7, v7, 0x1

    aget-char v10, v10, v11

    move v8, v10

    move v10, v8

    invoke-static {v10}, Lorg/apache/xerces/util/XMLChar;->isInvalid(I)Z

    move-result v10

    if-eqz v10, :cond_a

    move v10, v8

    invoke-static {v10}, Lorg/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v10

    if-eqz v10, :cond_9

    move v10, v7

    move v11, v6

    if-ge v10, v11, :cond_9

    move-object v10, v5

    move v11, v7

    add-int/lit8 v7, v7, 0x1

    aget-char v10, v10, v11

    move v9, v10

    move v10, v9

    invoke-static {v10}, Lorg/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v10

    if-eqz v10, :cond_9

    move v10, v8

    move v11, v9

    invoke-static {v10, v11}, Lorg/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v10

    invoke-static {v10}, Lorg/apache/xerces/util/XMLChar;->isSupplemental(I)Z

    move-result v10

    if-eqz v10, :cond_9

    goto :goto_2

    :cond_9
    const-string/jumbo v10, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v11, "InvalidCharInComment"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x0

    move-object v15, v5

    move/from16 v16, v7

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    aget-char v15, v15, v16

    const/16 v16, 0x10

    invoke-static/range {v15 .. v16}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v10, v11, v12}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    move-object v13, v9

    const/4 v14, 0x2

    const-string/jumbo v15, "wf-invalid-character"

    invoke-static/range {v10 .. v15}, Lorg/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto :goto_2

    :cond_a
    move v10, v8

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_8

    move v10, v7

    move v11, v6

    if-ge v10, v11, :cond_8

    move-object v10, v5

    move v11, v7

    aget-char v10, v10, v11

    const/16 v11, 0x2d

    if-ne v10, v11, :cond_8

    const-string/jumbo v10, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v11, "DashDashInComment"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    move-object v13, v9

    const/4 v14, 0x2

    const-string/jumbo v15, "wf-invalid-character"

    invoke-static/range {v10 .. v15}, Lorg/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto/16 :goto_2
.end method

.method public static final isXMLCharWF(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object v10, v3

    if-eqz v10, :cond_0

    move-object v10, v3

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v10, v3

    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v10

    move-object v5, v10

    move-object v10, v5

    array-length v10, v10

    move v6, v10

    move v10, v4

    if-eqz v10, :cond_6

    const/4 v10, 0x0

    move v7, v10

    :cond_2
    :goto_1
    move v10, v7

    move v11, v6

    if-lt v10, v11, :cond_4

    :cond_3
    goto :goto_0

    :cond_4
    move-object v10, v5

    move v11, v7

    add-int/lit8 v7, v7, 0x1

    aget-char v10, v10, v11

    invoke-static {v10}, Lorg/apache/xerces/util/XML11Char;->isXML11Invalid(I)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v10, v5

    move v11, v7

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    aget-char v10, v10, v11

    move v8, v10

    move v10, v8

    invoke-static {v10}, Lorg/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v10

    if-eqz v10, :cond_5

    move v10, v7

    move v11, v6

    if-ge v10, v11, :cond_5

    move-object v10, v5

    move v11, v7

    add-int/lit8 v7, v7, 0x1

    aget-char v10, v10, v11

    move v9, v10

    move v10, v9

    invoke-static {v10}, Lorg/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v10

    if-eqz v10, :cond_5

    move v10, v8

    move v11, v9

    invoke-static {v10, v11}, Lorg/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v10

    invoke-static {v10}, Lorg/apache/xerces/util/XMLChar;->isSupplemental(I)Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_1

    :cond_5
    const-string/jumbo v10, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v11, "InvalidXMLCharInDOM"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x0

    move-object v15, v5

    move/from16 v16, v7

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    aget-char v15, v15, v16

    const/16 v16, 0x10

    invoke-static/range {v15 .. v16}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v10, v11, v12}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    move-object v13, v9

    const/4 v14, 0x2

    const-string/jumbo v15, "wf-invalid-character"

    invoke-static/range {v10 .. v15}, Lorg/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto :goto_1

    :cond_6
    const/4 v10, 0x0

    move v7, v10

    :cond_7
    :goto_2
    move v10, v7

    move v11, v6

    if-ge v10, v11, :cond_3

    move-object v10, v5

    move v11, v7

    add-int/lit8 v7, v7, 0x1

    aget-char v10, v10, v11

    invoke-static {v10}, Lorg/apache/xerces/util/XMLChar;->isInvalid(I)Z

    move-result v10

    if-eqz v10, :cond_7

    move-object v10, v5

    move v11, v7

    const/4 v12, 0x1

    add-int/lit8 v11, v11, -0x1

    aget-char v10, v10, v11

    move v8, v10

    move v10, v8

    invoke-static {v10}, Lorg/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v10

    if-eqz v10, :cond_8

    move v10, v7

    move v11, v6

    if-ge v10, v11, :cond_8

    move-object v10, v5

    move v11, v7

    add-int/lit8 v7, v7, 0x1

    aget-char v10, v10, v11

    move v9, v10

    move v10, v9

    invoke-static {v10}, Lorg/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v10

    if-eqz v10, :cond_8

    move v10, v8

    move v11, v9

    invoke-static {v10, v11}, Lorg/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v10

    invoke-static {v10}, Lorg/apache/xerces/util/XMLChar;->isSupplemental(I)Z

    move-result v10

    if-eqz v10, :cond_8

    goto :goto_2

    :cond_8
    const-string/jumbo v10, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v11, "InvalidXMLCharInDOM"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    const/4 v14, 0x0

    move-object v15, v5

    move/from16 v16, v7

    const/16 v17, 0x1

    add-int/lit8 v16, v16, -0x1

    aget-char v15, v15, v16

    const/16 v16, 0x10

    invoke-static/range {v15 .. v16}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v10, v11, v12}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    move-object v10, v0

    move-object v11, v1

    move-object v12, v2

    move-object v13, v9

    const/4 v14, 0x2

    const-string/jumbo v15, "wf-invalid-character"

    invoke-static/range {v10 .. v15}, Lorg/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto :goto_2
.end method

.method private processDTD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v13, 0x0

    move-object v3, v13

    const/4 v13, 0x0

    move-object v4, v13

    move-object v13, v2

    move-object v5, v13

    move-object v13, v0

    iget-object v13, v13, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v13}, Lorg/apache/xerces/dom/CoreDocumentImpl;->getDocumentURI()Ljava/lang/String;

    move-result-object v13

    move-object v6, v13

    const/4 v13, 0x0

    move-object v7, v13

    move-object v13, v0

    iget-object v13, v13, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v13}, Lorg/apache/xerces/dom/CoreDocumentImpl;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v13

    move-object v8, v13

    move-object v13, v8

    if-eqz v13, :cond_4

    move-object v13, v8

    invoke-interface {v13}, Lorg/w3c/dom/DocumentType;->getName()Ljava/lang/String;

    move-result-object v13

    move-object v3, v13

    move-object v13, v8

    invoke-interface {v13}, Lorg/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object v13

    move-object v4, v13

    move-object v13, v5

    if-eqz v13, :cond_0

    move-object v13, v5

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_1

    :cond_0
    move-object v13, v8

    invoke-interface {v13}, Lorg/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object v13

    move-object v5, v13

    :cond_1
    move-object v13, v8

    invoke-interface {v13}, Lorg/w3c/dom/DocumentType;->getInternalSubset()Ljava/lang/String;

    move-result-object v13

    move-object v7, v13

    :cond_2
    const/4 v13, 0x0

    move-object v9, v13

    move-object v13, v0

    :try_start_0
    iget-object v13, v13, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    move-object v14, v3

    move-object v15, v4

    move-object/from16 v16, v5

    const/16 v17, 0x0

    invoke-interface/range {v13 .. v17}, Lorg/apache/xerces/impl/RevalidationHandler;->doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    sget-object v13, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->singleton:Lorg/apache/xerces/dom/CoreDOMImplementationImpl;

    move-object v14, v1

    invoke-virtual {v13, v14}, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->getDTDLoader(Ljava/lang/String;)Lorg/apache/xerces/impl/dtd/XMLDTDLoader;

    move-result-object v13

    move-object v9, v13

    move-object v13, v9

    const-string/jumbo v14, "http://xml.org/sax/features/validation"

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lorg/apache/xerces/impl/dtd/XMLDTDLoader;->setFeature(Ljava/lang/String;Z)V

    move-object v13, v9

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    invoke-virtual {v14}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->getEntityResolver()Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/apache/xerces/impl/dtd/XMLDTDLoader;->setEntityResolver(Lorg/apache/xerces/xni/parser/XMLEntityResolver;)V

    move-object v13, v9

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    invoke-virtual {v14}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->getErrorHandler()Lorg/apache/xerces/xni/parser/XMLErrorHandler;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/apache/xerces/impl/dtd/XMLDTDLoader;->setErrorHandler(Lorg/apache/xerces/xni/parser/XMLErrorHandler;)V

    move-object v13, v9

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    check-cast v14, Lorg/apache/xerces/impl/dtd/XMLDTDValidator;

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    invoke-virtual/range {v13 .. v19}, Lorg/apache/xerces/impl/dtd/XMLDTDLoader;->loadGrammarWithContext(Lorg/apache/xerces/impl/dtd/XMLDTDValidator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v13, v9

    if-eqz v13, :cond_3

    sget-object v13, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->singleton:Lorg/apache/xerces/dom/CoreDOMImplementationImpl;

    move-object v14, v1

    move-object v15, v9

    invoke-virtual {v13, v14, v15}, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->releaseDTDLoader(Ljava/lang/String;Lorg/apache/xerces/impl/dtd/XMLDTDLoader;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    move-object v13, v0

    iget-object v13, v13, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v13}, Lorg/apache/xerces/dom/CoreDocumentImpl;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v13

    move-object v9, v13

    move-object v13, v9

    if-nez v13, :cond_5

    goto :goto_0

    :cond_5
    move-object v13, v9

    invoke-interface {v13}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v13

    move-object v3, v13

    move-object v13, v5

    if-eqz v13, :cond_6

    move-object v13, v5

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_2

    :cond_6
    goto :goto_0

    :catch_0
    move-exception v13

    move-object v10, v13

    move-object v13, v9

    if-eqz v13, :cond_7

    sget-object v13, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->singleton:Lorg/apache/xerces/dom/CoreDOMImplementationImpl;

    move-object v14, v1

    move-object v15, v9

    invoke-virtual {v13, v14, v15}, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->releaseDTDLoader(Ljava/lang/String;Lorg/apache/xerces/impl/dtd/XMLDTDLoader;)V

    :cond_7
    goto :goto_0

    :catchall_0
    move-exception v13

    move-object v11, v13

    move-object v13, v9

    if-eqz v13, :cond_8

    sget-object v13, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->singleton:Lorg/apache/xerces/dom/CoreDOMImplementationImpl;

    move-object v14, v1

    move-object v15, v9

    invoke-virtual {v13, v14, v15}, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->releaseDTDLoader(Ljava/lang/String;Lorg/apache/xerces/impl/dtd/XMLDTDLoader;)V

    :cond_8
    move-object v13, v11

    throw v13
.end method

.method public static final reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, v0

    if-eqz v6, :cond_0

    move-object v6, v1

    invoke-virtual {v6}, Lorg/apache/xerces/dom/DOMErrorImpl;->reset()V

    move-object v6, v1

    move-object v7, v3

    iput-object v7, v6, Lorg/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    move-object v6, v1

    move v7, v4

    iput-short v7, v6, Lorg/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    move-object v6, v1

    move-object v7, v2

    iput-object v7, v6, Lorg/apache/xerces/dom/DOMErrorImpl;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    move-object v6, v1

    move-object v7, v5

    iput-object v7, v6, Lorg/apache/xerces/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    move-object v6, v1

    move-object v7, v2

    iget-object v7, v7, Lorg/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    iput-object v7, v6, Lorg/apache/xerces/dom/DOMErrorImpl;->fRelatedData:Ljava/lang/Object;

    move-object v6, v0

    move-object v7, v1

    invoke-interface {v6, v7}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Lorg/apache/xerces/dom/DOMNormalizer;->abort:Ljava/lang/RuntimeException;

    throw v6

    :cond_0
    move v6, v4

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    sget-object v6, Lorg/apache/xerces/dom/DOMNormalizer;->abort:Ljava/lang/RuntimeException;

    throw v6

    :cond_1
    return-void
.end method


# virtual methods
.method protected final addNamespaceDecl(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/dom/ElementImpl;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    sget-object v5, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne v4, v5, :cond_0

    move-object v4, v3

    sget-object v5, Lorg/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    sget-object v6, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object v7, v2

    invoke-virtual {v4, v5, v6, v7}, Lorg/apache/xerces/dom/ElementImpl;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    move-object v4, v3

    sget-object v5, Lorg/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuffer;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v7, "xmlns:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v4, v5, v6, v7}, Lorg/apache/xerces/dom/ElementImpl;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public comment(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public emptyElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Lorg/apache/xerces/dom/DOMNormalizer;->startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V

    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/dom/DOMNormalizer;->endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public endCDATA(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public endDocument(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, v2

    if-eqz v7, :cond_5

    move-object v7, v2

    const-string/jumbo v8, "ELEMENT_PSVI"

    invoke-interface {v7, v8}, Lorg/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/xerces/xs/ElementPSVI;

    move-object v3, v7

    move-object v7, v3

    if-eqz v7, :cond_5

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/DOMNormalizer;->fCurrentNode:Lorg/w3c/dom/Node;

    check-cast v7, Lorg/apache/xerces/dom/ElementImpl;

    move-object v4, v7

    move-object v7, v0

    iget-boolean v7, v7, Lorg/apache/xerces/dom/DOMNormalizer;->fPSVI:Z

    if-eqz v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/DOMNormalizer;->fCurrentNode:Lorg/w3c/dom/Node;

    check-cast v7, Lorg/apache/xerces/dom/PSVIElementNSImpl;

    move-object v8, v3

    invoke-virtual {v7, v8}, Lorg/apache/xerces/dom/PSVIElementNSImpl;->setPSVI(Lorg/apache/xerces/xs/ElementPSVI;)V

    :cond_0
    move-object v7, v4

    instance-of v7, v7, Lorg/apache/xerces/dom/ElementNSImpl;

    if-eqz v7, :cond_2

    move-object v7, v3

    invoke-interface {v7}, Lorg/apache/xerces/xs/ElementPSVI;->getMemberTypeDefinition()Lorg/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v7

    move-object v5, v7

    move-object v7, v5

    if-nez v7, :cond_1

    move-object v7, v3

    invoke-interface {v7}, Lorg/apache/xerces/xs/ElementPSVI;->getTypeDefinition()Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object v7

    move-object v5, v7

    :cond_1
    move-object v7, v4

    check-cast v7, Lorg/apache/xerces/dom/ElementNSImpl;

    move-object v8, v5

    invoke-virtual {v7, v8}, Lorg/apache/xerces/dom/ElementNSImpl;->setType(Lorg/apache/xerces/xs/XSTypeDefinition;)V

    :cond_2
    move-object v7, v3

    invoke-interface {v7}, Lorg/apache/xerces/xs/ElementPSVI;->getSchemaNormalizedValue()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v7, v7, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/4 v8, 0x2

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_4

    move-object v7, v5

    if-eqz v7, :cond_3

    move-object v7, v4

    move-object v8, v5

    invoke-virtual {v7, v8}, Lorg/apache/xerces/dom/ElementImpl;->setTextContent(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    move-object v7, v4

    invoke-virtual {v7}, Lorg/apache/xerces/dom/ElementImpl;->getTextContent()Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    move-object v7, v6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_3

    move-object v7, v5

    if-eqz v7, :cond_3

    move-object v7, v4

    move-object v8, v5

    invoke-virtual {v7, v8}, Lorg/apache/xerces/dom/ElementImpl;->setTextContent(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/DOMNormalizer;->fCurrentNode:Lorg/w3c/dom/Node;

    instance-of v7, v7, Lorg/apache/xerces/dom/ElementNSImpl;

    if-eqz v7, :cond_6

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/DOMNormalizer;->fCurrentNode:Lorg/w3c/dom/Node;

    check-cast v7, Lorg/apache/xerces/dom/ElementNSImpl;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/apache/xerces/dom/ElementNSImpl;->setType(Lorg/apache/xerces/xs/XSTypeDefinition;)V

    :cond_6
    goto :goto_0
.end method

.method public endGeneralEntity(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method protected final expandEntityRef(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v2

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    if-nez v5, :cond_0

    return-void

    :cond_0
    move-object v5, v3

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v4, v5

    move-object v5, v1

    move-object v6, v3

    move-object v7, v2

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v5, v4

    move-object v3, v5

    goto :goto_0
.end method

.method public getDocumentSource()Lorg/apache/xerces/xni/parser/XMLDocumentSource;
    .locals 2

    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public ignorableWhitespace(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/apache/xerces/dom/DOMNormalizer;->fAllWhitespace:Z

    return-void
.end method

.method protected final namespaceFixUp(Lorg/apache/xerces/dom/ElementImpl;Lorg/apache/xerces/dom/AttributeMap;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object v12, v3

    if-eqz v12, :cond_0

    const/4 v12, 0x0

    move v7, v12

    :goto_0
    move v12, v7

    move-object v13, v3

    invoke-virtual {v13}, Lorg/apache/xerces/dom/AttributeMap;->getLength()I

    move-result v13

    if-lt v12, v13, :cond_4

    :cond_0
    move-object v12, v2

    invoke-virtual {v12}, Lorg/apache/xerces/dom/ElementImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v12

    move-object v5, v12

    move-object v12, v2

    invoke-virtual {v12}, Lorg/apache/xerces/dom/ElementImpl;->getPrefix()Ljava/lang/String;

    move-result-object v12

    move-object v6, v12

    move-object v12, v5

    if-eqz v12, :cond_e

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v13, v5

    invoke-virtual {v12, v13}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v5, v12

    move-object v12, v6

    if-eqz v12, :cond_1

    move-object v12, v6

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_c

    :cond_1
    sget-object v12, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_1
    move-object v6, v12

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    move-object v13, v6

    invoke-interface {v12, v13}, Lorg/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v13, v5

    if-ne v12, v13, :cond_d

    :cond_2
    :goto_2
    move-object v12, v3

    if-eqz v12, :cond_3

    move-object v12, v3

    move-object v13, v1

    iget-object v13, v13, Lorg/apache/xerces/dom/DOMNormalizer;->fAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v12, v13}, Lorg/apache/xerces/dom/AttributeMap;->cloneMap(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v12

    const/4 v12, 0x0

    move v7, v12

    :goto_3
    move v12, v7

    move-object v13, v1

    iget-object v13, v13, Lorg/apache/xerces/dom/DOMNormalizer;->fAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lt v12, v13, :cond_11

    :cond_3
    return-void

    :cond_4
    move-object v12, v3

    move v13, v7

    invoke-virtual {v12, v13}, Lorg/apache/xerces/dom/AttributeMap;->getItem(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/Attr;

    move-object v8, v12

    move-object v12, v8

    invoke-interface {v12}, Lorg/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v12

    move-object v5, v12

    move-object v12, v5

    if-eqz v12, :cond_6

    move-object v12, v5

    sget-object v13, Lorg/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    move-object v12, v8

    invoke-interface {v12}, Lorg/w3c/dom/Attr;->getNodeValue()Ljava/lang/String;

    move-result-object v12

    move-object v4, v12

    move-object v12, v4

    if-nez v12, :cond_5

    sget-object v12, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object v4, v12

    :cond_5
    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v12, v12, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v12, :cond_7

    move-object v12, v4

    sget-object v13, Lorg/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    move-object v13, v8

    iput-object v13, v12, Lorg/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    const-string/jumbo v12, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string/jumbo v13, "CantBindXMLNS"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object v9, v12

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object v13, v1

    iget-object v13, v13, Lorg/apache/xerces/dom/DOMNormalizer;->fError:Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v14, v1

    iget-object v14, v14, Lorg/apache/xerces/dom/DOMNormalizer;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    move-object v15, v9

    const/16 v16, 0x2

    const-string/jumbo v17, "CantBindXMLNS"

    invoke-static/range {v12 .. v17}, Lorg/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    :cond_6
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_7
    move-object v12, v8

    invoke-interface {v12}, Lorg/w3c/dom/Attr;->getPrefix()Ljava/lang/String;

    move-result-object v12

    move-object v6, v12

    move-object v12, v6

    if-eqz v12, :cond_8

    move-object v12, v6

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_9

    :cond_8
    sget-object v12, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_5
    move-object v6, v12

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v13, v8

    invoke-interface {v13}, Lorg/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v9, v12

    move-object v12, v6

    sget-object v13, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v12, v13, :cond_a

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v13, v4

    invoke-virtual {v12, v13}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v4, v12

    move-object v12, v4

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_6

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    move-object v13, v9

    move-object v14, v4

    invoke-interface {v12, v13, v14}, Lorg/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    goto :goto_4

    :cond_9
    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v13, v6

    invoke-virtual {v12, v13}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_5

    :cond_a
    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v13, v4

    invoke-virtual {v12, v13}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v4, v12

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    sget-object v13, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object v14, v4

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-eqz v14, :cond_b

    move-object v14, v4

    :goto_6
    invoke-interface {v12, v13, v14}, Lorg/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    goto :goto_4

    :cond_b
    const/4 v14, 0x0

    goto :goto_6

    :cond_c
    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v13, v6

    invoke-virtual {v12, v13}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    :cond_d
    move-object v12, v1

    move-object v13, v6

    move-object v14, v5

    move-object v15, v2

    invoke-virtual {v12, v13, v14, v15}, Lorg/apache/xerces/dom/DOMNormalizer;->addNamespaceDecl(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/dom/ElementImpl;)V

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fLocalNSBinder:Lorg/apache/xerces/xni/NamespaceContext;

    move-object v13, v6

    move-object v14, v5

    invoke-interface {v12, v13, v14}, Lorg/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    move-object v13, v6

    move-object v14, v5

    invoke-interface {v12, v13, v14}, Lorg/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    goto/16 :goto_2

    :cond_e
    move-object v12, v2

    invoke-virtual {v12}, Lorg/apache/xerces/dom/ElementImpl;->getLocalName()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_10

    move-object v12, v1

    iget-boolean v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fNamespaceValidation:Z

    if-eqz v12, :cond_f

    const-string/jumbo v12, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v13, "NullLocalElementName"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    const/16 v16, 0x0

    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lorg/apache/xerces/dom/ElementImpl;->getNodeName()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v12, v13, v14}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object v7, v12

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object v13, v1

    iget-object v13, v13, Lorg/apache/xerces/dom/DOMNormalizer;->fError:Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v14, v1

    iget-object v14, v14, Lorg/apache/xerces/dom/DOMNormalizer;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    move-object v15, v7

    const/16 v16, 0x3

    const-string/jumbo v17, "NullLocalElementName"

    invoke-static/range {v12 .. v17}, Lorg/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto/16 :goto_2

    :cond_f
    const-string/jumbo v12, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v13, "NullLocalElementName"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    const/16 v16, 0x0

    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v17}, Lorg/apache/xerces/dom/ElementImpl;->getNodeName()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v12, v13, v14}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object v7, v12

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object v13, v1

    iget-object v13, v13, Lorg/apache/xerces/dom/DOMNormalizer;->fError:Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v14, v1

    iget-object v14, v14, Lorg/apache/xerces/dom/DOMNormalizer;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    move-object v15, v7

    const/16 v16, 0x2

    const-string/jumbo v17, "NullLocalElementName"

    invoke-static/range {v12 .. v17}, Lorg/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto/16 :goto_2

    :cond_10
    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    sget-object v13, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-interface {v12, v13}, Lorg/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v5, v12

    move-object v12, v5

    if-eqz v12, :cond_2

    move-object v12, v5

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_2

    move-object v12, v1

    sget-object v13, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    sget-object v14, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object v15, v2

    invoke-virtual {v12, v13, v14, v15}, Lorg/apache/xerces/dom/DOMNormalizer;->addNamespaceDecl(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/dom/ElementImpl;)V

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fLocalNSBinder:Lorg/apache/xerces/xni/NamespaceContext;

    sget-object v13, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Lorg/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    sget-object v13, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Lorg/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    goto/16 :goto_2

    :cond_11
    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fAttributeList:Ljava/util/ArrayList;

    move v13, v7

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/Attr;

    move-object v8, v12

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    move-object v13, v8

    iput-object v13, v12, Lorg/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    move-object v12, v8

    invoke-interface {v12}, Lorg/w3c/dom/Attr;->normalize()V

    move-object v12, v8

    invoke-interface {v12}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v12

    move-object v4, v12

    move-object v12, v8

    invoke-interface {v12}, Lorg/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v12

    move-object v5, v12

    move-object v12, v4

    if-nez v12, :cond_12

    sget-object v12, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object v4, v12

    :cond_12
    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v12, v12, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v12, :cond_13

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v12, v12, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/16 v13, 0x100

    and-int/lit16 v12, v12, 0x100

    if-eqz v12, :cond_13

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object v13, v1

    iget-object v13, v13, Lorg/apache/xerces/dom/DOMNormalizer;->fError:Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v14, v1

    iget-object v14, v14, Lorg/apache/xerces/dom/DOMNormalizer;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    move-object v15, v3

    move-object/from16 v16, v8

    move-object/from16 v17, v4

    move-object/from16 v18, v1

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v18

    invoke-static/range {v12 .. v18}, Lorg/apache/xerces/dom/DOMNormalizer;->isAttrValueWF(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Lorg/w3c/dom/NamedNodeMap;Lorg/w3c/dom/Attr;Ljava/lang/String;Z)V

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v12}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXMLVersionChanged()Z

    move-result v12

    if-eqz v12, :cond_13

    move-object v12, v1

    iget-boolean v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fNamespaceValidation:Z

    if-eqz v12, :cond_16

    move-object v12, v8

    invoke-interface {v12}, Lorg/w3c/dom/Attr;->getPrefix()Ljava/lang/String;

    move-result-object v12

    move-object v13, v8

    invoke-interface {v13}, Lorg/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v13

    move-object v14, v1

    iget-object v14, v14, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v14}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v14

    invoke-static {v12, v13, v14}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isValidQName(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    move v9, v12

    :goto_7
    move v12, v9

    if-nez v12, :cond_13

    const-string/jumbo v12, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v13, "wf-invalid-character-in-node-name"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    const/16 v16, 0x0

    const-string/jumbo v17, "Attr"

    aput-object v17, v15, v16

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    const/16 v16, 0x1

    move-object/from16 v17, v8

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v12, v13, v14}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object v13, v1

    iget-object v13, v13, Lorg/apache/xerces/dom/DOMNormalizer;->fError:Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v14, v1

    iget-object v14, v14, Lorg/apache/xerces/dom/DOMNormalizer;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    move-object v15, v10

    const/16 v16, 0x2

    const-string/jumbo v17, "wf-invalid-character-in-node-name"

    invoke-static/range {v12 .. v17}, Lorg/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    :cond_13
    move-object v12, v5

    if-eqz v12, :cond_1d

    move-object v12, v8

    invoke-interface {v12}, Lorg/w3c/dom/Attr;->getPrefix()Ljava/lang/String;

    move-result-object v12

    move-object v6, v12

    move-object v12, v6

    if-eqz v12, :cond_14

    move-object v12, v6

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_17

    :cond_14
    sget-object v12, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_8
    move-object v6, v12

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v13, v8

    invoke-interface {v13}, Lorg/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v12, v5

    if-eqz v12, :cond_18

    move-object v12, v5

    sget-object v13, Lorg/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_18

    :cond_15
    :goto_9
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    :cond_16
    move-object v12, v8

    invoke-interface {v12}, Lorg/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v12

    move-object v13, v1

    iget-object v13, v13, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v13}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v13

    invoke-static {v12, v13}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v12

    move v9, v12

    goto/16 :goto_7

    :cond_17
    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v13, v6

    invoke-virtual {v12, v13}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_8

    :cond_18
    move-object v12, v8

    check-cast v12, Lorg/apache/xerces/dom/AttrImpl;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lorg/apache/xerces/dom/AttrImpl;->setIdAttribute(Z)V

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v13, v5

    invoke-virtual {v12, v13}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v5, v12

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    move-object v13, v6

    invoke-interface {v12, v13}, Lorg/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v9, v12

    move-object v12, v6

    sget-object v13, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v12, v13, :cond_19

    move-object v12, v9

    move-object v13, v5

    if-eq v12, v13, :cond_15

    :cond_19
    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    move-object v13, v5

    invoke-interface {v12, v13}, Lorg/apache/xerces/xni/NamespaceContext;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v10, v12

    move-object v12, v10

    if-eqz v12, :cond_1a

    move-object v12, v10

    sget-object v13, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v12, v13, :cond_1a

    move-object v12, v10

    move-object v6, v12

    :goto_a
    move-object v12, v8

    move-object v13, v6

    invoke-interface {v12, v13}, Lorg/w3c/dom/Attr;->setPrefix(Ljava/lang/String;)V

    goto :goto_9

    :cond_1a
    move-object v12, v6

    sget-object v13, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v12, v13, :cond_1c

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fLocalNSBinder:Lorg/apache/xerces/xni/NamespaceContext;

    move-object v13, v6

    invoke-interface {v12, v13}, Lorg/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_1c

    :cond_1b
    move-object v12, v1

    move-object v13, v6

    move-object v14, v5

    move-object v15, v2

    invoke-virtual {v12, v13, v14, v15}, Lorg/apache/xerces/dom/DOMNormalizer;->addNamespaceDecl(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/dom/ElementImpl;)V

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v13, v4

    invoke-virtual {v12, v13}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v4, v12

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fLocalNSBinder:Lorg/apache/xerces/xni/NamespaceContext;

    move-object v13, v6

    move-object v14, v4

    invoke-interface {v12, v13, v14}, Lorg/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    move-object v13, v6

    move-object v14, v5

    invoke-interface {v12, v13, v14}, Lorg/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    goto :goto_a

    :cond_1c
    const/4 v12, 0x1

    move v11, v12

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    new-instance v13, Ljava/lang/StringBuffer;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v14, "NS"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    move v14, v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v6, v12

    :goto_b
    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fLocalNSBinder:Lorg/apache/xerces/xni/NamespaceContext;

    move-object v13, v6

    invoke-interface {v12, v13}, Lorg/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1b

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    new-instance v13, Ljava/lang/StringBuffer;

    move-object/from16 v19, v13

    move-object/from16 v13, v19

    move-object/from16 v14, v19

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v14, "NS"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    move v14, v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v6, v12

    goto :goto_b

    :cond_1d
    move-object v12, v8

    check-cast v12, Lorg/apache/xerces/dom/AttrImpl;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lorg/apache/xerces/dom/AttrImpl;->setIdAttribute(Z)V

    move-object v12, v8

    invoke-interface {v12}, Lorg/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_15

    move-object v12, v1

    iget-boolean v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fNamespaceValidation:Z

    if-eqz v12, :cond_1e

    const-string/jumbo v12, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v13, "NullLocalAttrName"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    const/16 v16, 0x0

    move-object/from16 v17, v8

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v12, v13, v14}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object v9, v12

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object v13, v1

    iget-object v13, v13, Lorg/apache/xerces/dom/DOMNormalizer;->fError:Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v14, v1

    iget-object v14, v14, Lorg/apache/xerces/dom/DOMNormalizer;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    move-object v15, v9

    const/16 v16, 0x3

    const-string/jumbo v17, "NullLocalAttrName"

    invoke-static/range {v12 .. v17}, Lorg/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto/16 :goto_9

    :cond_1e
    const-string/jumbo v12, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v13, "NullLocalAttrName"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v19, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v19

    const/16 v16, 0x0

    move-object/from16 v17, v8

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v12, v13, v14}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    move-object v9, v12

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object v13, v1

    iget-object v13, v13, Lorg/apache/xerces/dom/DOMNormalizer;->fError:Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v14, v1

    iget-object v14, v14, Lorg/apache/xerces/dom/DOMNormalizer;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    move-object v15, v9

    const/16 v16, 0x2

    const-string/jumbo v17, "NullLocalAttrName"

    invoke-static/range {v12 .. v17}, Lorg/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto/16 :goto_9
.end method

.method final normalizeAttributeValue(Ljava/lang/String;Lorg/w3c/dom/Attr;)Ljava/lang/String;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v8, v2

    invoke-interface {v8}, Lorg/w3c/dom/Attr;->getSpecified()Z

    move-result v8

    if-nez v8, :cond_0

    move-object v8, v1

    move-object v0, v8

    :goto_0
    return-object v0

    :cond_0
    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    move v3, v8

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DOMNormalizer;->fNormalizedValue:Lorg/apache/xerces/xni/XMLString;

    iget-object v8, v8, Lorg/apache/xerces/xni/XMLString;->ch:[C

    array-length v8, v8

    move v9, v3

    if-ge v8, v9, :cond_1

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DOMNormalizer;->fNormalizedValue:Lorg/apache/xerces/xni/XMLString;

    move v9, v3

    new-array v9, v9, [C

    iput-object v9, v8, Lorg/apache/xerces/xni/XMLString;->ch:[C

    :cond_1
    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DOMNormalizer;->fNormalizedValue:Lorg/apache/xerces/xni/XMLString;

    const/4 v9, 0x0

    iput v9, v8, Lorg/apache/xerces/xni/XMLString;->length:I

    const/4 v8, 0x0

    move v4, v8

    const/4 v8, 0x0

    move v5, v8

    :goto_1
    move v8, v5

    move v9, v3

    if-lt v8, v9, :cond_3

    move v8, v4

    if-eqz v8, :cond_2

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DOMNormalizer;->fNormalizedValue:Lorg/apache/xerces/xni/XMLString;

    invoke-virtual {v8}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    move-object v8, v2

    move-object v9, v1

    invoke-interface {v8, v9}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    :cond_2
    move-object v8, v1

    move-object v0, v8

    goto :goto_0

    :cond_3
    move-object v8, v1

    move v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move v6, v8

    move v8, v6

    const/16 v9, 0x9

    if-eq v8, v9, :cond_4

    move v8, v6

    const/16 v9, 0xa

    if-ne v8, v9, :cond_6

    :cond_4
    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DOMNormalizer;->fNormalizedValue:Lorg/apache/xerces/xni/XMLString;

    iget-object v8, v8, Lorg/apache/xerces/xni/XMLString;->ch:[C

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/DOMNormalizer;->fNormalizedValue:Lorg/apache/xerces/xni/XMLString;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    iget v10, v10, Lorg/apache/xerces/xni/XMLString;->length:I

    move-object v13, v9

    move v14, v10

    move v9, v14

    move-object v10, v13

    move v11, v14

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Lorg/apache/xerces/xni/XMLString;->length:I

    const/16 v10, 0x20

    aput-char v10, v8, v9

    const/4 v8, 0x1

    move v4, v8

    :cond_5
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    move v8, v6

    const/16 v9, 0xd

    if-ne v8, v9, :cond_7

    const/4 v8, 0x1

    move v4, v8

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DOMNormalizer;->fNormalizedValue:Lorg/apache/xerces/xni/XMLString;

    iget-object v8, v8, Lorg/apache/xerces/xni/XMLString;->ch:[C

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/DOMNormalizer;->fNormalizedValue:Lorg/apache/xerces/xni/XMLString;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    iget v10, v10, Lorg/apache/xerces/xni/XMLString;->length:I

    move-object v13, v9

    move v14, v10

    move v9, v14

    move-object v10, v13

    move v11, v14

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Lorg/apache/xerces/xni/XMLString;->length:I

    const/16 v10, 0x20

    aput-char v10, v8, v9

    move v8, v5

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v7, v8

    move v8, v7

    move v9, v3

    if-ge v8, v9, :cond_5

    move-object v8, v1

    move v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_5

    move v8, v7

    move v5, v8

    goto :goto_2

    :cond_7
    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DOMNormalizer;->fNormalizedValue:Lorg/apache/xerces/xni/XMLString;

    iget-object v8, v8, Lorg/apache/xerces/xni/XMLString;->ch:[C

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/DOMNormalizer;->fNormalizedValue:Lorg/apache/xerces/xni/XMLString;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    iget v10, v10, Lorg/apache/xerces/xni/XMLString;->length:I

    move-object v13, v9

    move v14, v10

    move v9, v14

    move-object v10, v13

    move v11, v14

    const/4 v12, 0x1

    add-int/lit8 v11, v11, 0x1

    iput v11, v10, Lorg/apache/xerces/xni/XMLString;->length:I

    move v10, v6

    aput-char v10, v8, v9

    goto :goto_2
.end method

.method protected normalizeDocument(Lorg/apache/xerces/dom/CoreDocumentImpl;Lorg/apache/xerces/dom/DOMConfigurationImpl;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v8, v0

    move-object v9, v1

    iput-object v9, v8, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v8, v0

    move-object v9, v2

    iput-object v9, v8, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Lorg/apache/xerces/dom/DOMNormalizer;->fAllWhitespace:Z

    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Lorg/apache/xerces/dom/DOMNormalizer;->fNamespaceValidation:Z

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v8}, Lorg/apache/xerces/dom/CoreDocumentImpl;->getXmlVersion()Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    const/4 v8, 0x0

    move-object v4, v8

    const/4 v8, 0x0

    move-object v5, v8

    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    const-string/jumbo v10, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/xerces/util/SymbolTable;

    iput-object v9, v8, Lorg/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-interface {v8}, Lorg/apache/xerces/xni/NamespaceContext;->reset()V

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    sget-object v9, Lorg/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lorg/apache/xerces/xni/NamespaceContext;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v8, v8, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/16 v9, 0x40

    and-int/lit8 v8, v8, 0x40

    if-eqz v8, :cond_7

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    const-string/jumbo v9, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-virtual {v8, v9}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    move-object v6, v8

    move-object v8, v6

    if-eqz v8, :cond_5

    move-object v8, v6

    sget-object v9, Lorg/apache/xerces/impl/Constants;->NS_XMLSCHEMA:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string/jumbo v8, "http://www.w3.org/2001/XMLSchema"

    move-object v4, v8

    move-object v8, v0

    sget-object v9, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->singleton:Lorg/apache/xerces/dom/CoreDOMImplementationImpl;

    move-object v10, v4

    move-object v11, v3

    invoke-virtual {v9, v10, v11}, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->getValidator(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/impl/RevalidationHandler;

    move-result-object v9

    iput-object v9, v8, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    const-string/jumbo v9, "http://apache.org/xml/features/validation/schema"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    const-string/jumbo v9, "http://apache.org/xml/features/validation/schema-full-checking"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    move-object v8, v0

    const/4 v9, 0x1

    iput-boolean v9, v8, Lorg/apache/xerces/dom/DOMNormalizer;->fNamespaceValidation:Z

    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v9, v9, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/16 v10, 0x80

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    :goto_0
    iput-boolean v9, v8, Lorg/apache/xerces/dom/DOMNormalizer;->fPSVI:Z

    :goto_1
    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    const-string/jumbo v9, "http://xml.org/sax/features/validation"

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setFeature(Ljava/lang/String;Z)V

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v8}, Lorg/apache/xerces/dom/CoreDocumentImpl;->clearIdentifiers()V

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    if-eqz v8, :cond_0

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    check-cast v8, Lorg/apache/xerces/xni/parser/XMLComponent;

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    invoke-interface {v8, v9}, Lorg/apache/xerces/xni/parser/XMLComponent;->reset(Lorg/apache/xerces/xni/parser/XMLComponentManager;)V

    :cond_0
    :goto_2
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    const-string/jumbo v10, "error-handler"

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/DOMErrorHandler;

    iput-object v9, v8, Lorg/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    if-eqz v8, :cond_1

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    move-object v9, v0

    invoke-interface {v8, v9}, Lorg/apache/xerces/impl/RevalidationHandler;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    new-instance v9, Lorg/apache/xerces/impl/xs/util/SimpleLocator;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    iget-object v11, v11, Lorg/apache/xerces/dom/CoreDocumentImpl;->fDocumentURI:Ljava/lang/String;

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    iget-object v12, v12, Lorg/apache/xerces/dom/CoreDocumentImpl;->fDocumentURI:Ljava/lang/String;

    const/4 v13, -0x1

    const/4 v14, -0x1

    invoke-direct {v10, v11, v12, v13, v14}, Lorg/apache/xerces/impl/xs/util/SimpleLocator;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    iget-object v10, v10, Lorg/apache/xerces/dom/CoreDocumentImpl;->encoding:Ljava/lang/String;

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    const/4 v12, 0x0

    invoke-interface {v8, v9, v10, v11, v12}, Lorg/apache/xerces/impl/RevalidationHandler;->startDocument(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lorg/apache/xerces/xni/NamespaceContext;Lorg/apache/xerces/xni/Augmentations;)V

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v9}, Lorg/apache/xerces/dom/CoreDocumentImpl;->getXmlVersion()Ljava/lang/String;

    move-result-object v9

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v10}, Lorg/apache/xerces/dom/CoreDocumentImpl;->getXmlEncoding()Ljava/lang/String;

    move-result-object v10

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v11}, Lorg/apache/xerces/dom/CoreDocumentImpl;->getXmlStandalone()Z

    move-result v11

    if-eqz v11, :cond_8

    const-string/jumbo v11, "yes"

    :goto_3
    const/4 v12, 0x0

    invoke-interface {v8, v9, v10, v11, v12}, Lorg/apache/xerces/impl/RevalidationHandler;->xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_1
    move-object v8, v4

    :try_start_0
    const-string/jumbo v9, "http://www.w3.org/TR/REC-xml"

    if-ne v8, v9, :cond_2

    move-object v8, v0

    move-object v9, v3

    move-object v10, v5

    if-eqz v10, :cond_9

    move-object v10, v5

    const/4 v11, 0x0

    aget-object v10, v10, v11

    :goto_4
    invoke-direct {v8, v9, v10}, Lorg/apache/xerces/dom/DOMNormalizer;->processDTD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v8}, Lorg/apache/xerces/dom/CoreDocumentImpl;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v8

    move-object v6, v8

    :goto_5
    move-object v8, v6

    if-nez v8, :cond_a

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    if-eqz v8, :cond_3

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lorg/apache/xerces/impl/RevalidationHandler;->endDocument(Lorg/apache/xerces/xni/Augmentations;)V

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lorg/apache/xerces/impl/RevalidationHandler;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    sget-object v8, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->singleton:Lorg/apache/xerces/dom/CoreDOMImplementationImpl;

    move-object v9, v4

    move-object v10, v3

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    invoke-virtual {v8, v9, v10, v11}, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->releaseValidator(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/impl/RevalidationHandler;)V

    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_6
    return-void

    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v8, "http://www.w3.org/TR/REC-xml"

    move-object v4, v8

    move-object v8, v6

    if-eqz v8, :cond_6

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    const-string/jumbo v9, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-virtual {v8, v9}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    move-object v5, v8

    :cond_6
    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    move-object v9, v3

    invoke-virtual {v8, v9}, Lorg/apache/xerces/dom/DOMConfigurationImpl;->setDTDValidatorFactory(Ljava/lang/String;)V

    move-object v8, v0

    sget-object v9, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->singleton:Lorg/apache/xerces/dom/CoreDOMImplementationImpl;

    move-object v10, v4

    move-object v11, v3

    invoke-virtual {v9, v10, v11}, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->getValidator(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/impl/RevalidationHandler;

    move-result-object v9

    iput-object v9, v8, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Lorg/apache/xerces/dom/DOMNormalizer;->fPSVI:Z

    goto/16 :goto_1

    :cond_7
    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    goto/16 :goto_2

    :cond_8
    const-string/jumbo v11, "no"

    goto :goto_3

    :cond_9
    const/4 v10, 0x0

    goto :goto_4

    :cond_a
    move-object v8, v6

    :try_start_1
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v8

    move-object v7, v8

    move-object v8, v0

    move-object v9, v6

    invoke-virtual {v8, v9}, Lorg/apache/xerces/dom/DOMNormalizer;->normalizeNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    move-object v6, v8

    move-object v8, v6

    if-eqz v8, :cond_b

    move-object v8, v6

    move-object v7, v8

    :cond_b
    move-object v8, v7

    move-object v6, v8

    goto :goto_5

    :catch_0
    move-exception v8

    move-object v6, v8

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    if-eqz v8, :cond_c

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Lorg/apache/xerces/impl/RevalidationHandler;->setDocumentHandler(Lorg/apache/xerces/xni/XMLDocumentHandler;)V

    sget-object v8, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->singleton:Lorg/apache/xerces/dom/CoreDOMImplementationImpl;

    move-object v9, v4

    move-object v10, v3

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    invoke-virtual {v8, v9, v10, v11}, Lorg/apache/xerces/dom/CoreDOMImplementationImpl;->releaseValidator(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/impl/RevalidationHandler;)V

    move-object v8, v0

    const/4 v9, 0x0

    iput-object v9, v8, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    :cond_c
    move-object v8, v6

    sget-object v9, Lorg/apache/xerces/dom/DOMNormalizer;->abort:Ljava/lang/RuntimeException;

    if-ne v8, v9, :cond_d

    goto :goto_6

    :cond_d
    move-object v8, v6

    throw v8
.end method

.method protected normalizeNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v11, v2

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v11

    move v3, v11

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    move-object v12, v2

    iput-object v12, v11, Lorg/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    move v11, v3

    packed-switch v11, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const/4 v11, 0x0

    move-object v1, v11

    :goto_1
    return-object v1

    :pswitch_1
    goto :goto_0

    :pswitch_2
    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v11, v11, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v11, :cond_1

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v11, v11, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/16 v12, 0x100

    and-int/lit16 v11, v11, 0x100

    if-eqz v11, :cond_1

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v11}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXMLVersionChanged()Z

    move-result v11

    if-eqz v11, :cond_1

    move-object v11, v1

    iget-boolean v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fNamespaceValidation:Z

    if-eqz v11, :cond_7

    move-object v11, v2

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v11

    move-object v12, v2

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v12

    move-object v13, v1

    iget-object v13, v13, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v13}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v13

    invoke-static {v11, v12, v13}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isValidQName(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    move v4, v11

    :goto_2
    move v11, v4

    if-nez v11, :cond_1

    const-string/jumbo v11, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v12, "wf-invalid-character-in-node-name"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    const/4 v15, 0x0

    const-string/jumbo v16, "Element"

    aput-object v16, v14, v15

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    const/4 v15, 0x1

    move-object/from16 v16, v2

    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v11, v12, v13}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object v5, v11

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fError:Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v13, v1

    iget-object v13, v13, Lorg/apache/xerces/dom/DOMNormalizer;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    move-object v14, v5

    const/4 v15, 0x2

    const-string/jumbo v16, "wf-invalid-character-in-node-name"

    invoke-static/range {v11 .. v16}, Lorg/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    :cond_1
    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-interface {v11}, Lorg/apache/xerces/xni/NamespaceContext;->pushContext()V

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fLocalNSBinder:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-interface {v11}, Lorg/apache/xerces/xni/NamespaceContext;->reset()V

    move-object v11, v2

    check-cast v11, Lorg/apache/xerces/dom/ElementImpl;

    move-object v5, v11

    move-object v11, v5

    invoke-virtual {v11}, Lorg/apache/xerces/dom/ElementImpl;->needsSyncChildren()Z

    move-result v11

    if-eqz v11, :cond_2

    move-object v11, v5

    invoke-virtual {v11}, Lorg/apache/xerces/dom/ElementImpl;->synchronizeChildren()V

    :cond_2
    move-object v11, v5

    invoke-virtual {v11}, Lorg/apache/xerces/dom/ElementImpl;->hasAttributes()Z

    move-result v11

    if-eqz v11, :cond_8

    move-object v11, v5

    invoke-virtual {v11}, Lorg/apache/xerces/dom/ElementImpl;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v11

    check-cast v11, Lorg/apache/xerces/dom/AttributeMap;

    :goto_3
    move-object v6, v11

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v11, v11, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/4 v12, 0x1

    and-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_d

    move-object v11, v1

    move-object v12, v5

    move-object v13, v6

    invoke-virtual {v11, v12, v13}, Lorg/apache/xerces/dom/DOMNormalizer;->namespaceFixUp(Lorg/apache/xerces/dom/ElementImpl;Lorg/apache/xerces/dom/AttributeMap;)V

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v11, v11, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/16 v12, 0x200

    and-int/lit16 v11, v11, 0x200

    if-nez v11, :cond_4

    move-object v11, v6

    if-nez v11, :cond_3

    move-object v11, v5

    invoke-virtual {v11}, Lorg/apache/xerces/dom/ElementImpl;->hasAttributes()Z

    move-result v11

    if-eqz v11, :cond_9

    move-object v11, v5

    invoke-virtual {v11}, Lorg/apache/xerces/dom/ElementImpl;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v11

    check-cast v11, Lorg/apache/xerces/dom/AttributeMap;

    :goto_4
    move-object v6, v11

    :cond_3
    move-object v11, v6

    if-eqz v11, :cond_4

    const/4 v11, 0x0

    move v7, v11

    :goto_5
    move v11, v7

    move-object v12, v6

    invoke-virtual {v12}, Lorg/apache/xerces/dom/AttributeMap;->getLength()I

    move-result v12

    if-lt v11, v12, :cond_a

    :cond_4
    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    if-eqz v11, :cond_5

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fAttrProxy:Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;

    move-object v12, v6

    move-object v13, v1

    iget-object v13, v13, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v14, v5

    invoke-virtual {v11, v12, v13, v14}, Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;->setAttributes(Lorg/apache/xerces/dom/AttributeMap;Lorg/apache/xerces/dom/CoreDocumentImpl;Lorg/apache/xerces/dom/ElementImpl;)V

    move-object v11, v1

    move-object v12, v5

    move-object v13, v1

    iget-object v13, v13, Lorg/apache/xerces/dom/DOMNormalizer;->fQName:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v11, v12, v13}, Lorg/apache/xerces/dom/DOMNormalizer;->updateQName(Lorg/w3c/dom/Node;Lorg/apache/xerces/xni/QName;)V

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fErrorHandlerWrapper:Lorg/apache/xerces/util/DOMErrorHandlerWrapper;

    move-object v12, v2

    iput-object v12, v11, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v11, v1

    move-object v12, v2

    iput-object v12, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fQName:Lorg/apache/xerces/xni/QName;

    move-object v13, v1

    iget-object v13, v13, Lorg/apache/xerces/dom/DOMNormalizer;->fAttrProxy:Lorg/apache/xerces/dom/DOMNormalizer$XMLAttributesProxy;

    const/4 v14, 0x0

    invoke-interface {v11, v12, v13, v14}, Lorg/apache/xerces/impl/RevalidationHandler;->startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_5
    move-object v11, v5

    invoke-virtual {v11}, Lorg/apache/xerces/dom/ElementImpl;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v11

    move-object v7, v11

    :goto_6
    move-object v11, v7

    if-nez v11, :cond_10

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    if-eqz v11, :cond_6

    move-object v11, v1

    move-object v12, v5

    move-object v13, v1

    iget-object v13, v13, Lorg/apache/xerces/dom/DOMNormalizer;->fQName:Lorg/apache/xerces/xni/QName;

    invoke-virtual {v11, v12, v13}, Lorg/apache/xerces/dom/DOMNormalizer;->updateQName(Lorg/w3c/dom/Node;Lorg/apache/xerces/xni/QName;)V

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fErrorHandlerWrapper:Lorg/apache/xerces/util/DOMErrorHandlerWrapper;

    move-object v12, v2

    iput-object v12, v11, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v11, v1

    move-object v12, v2

    iput-object v12, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fQName:Lorg/apache/xerces/xni/QName;

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lorg/apache/xerces/impl/RevalidationHandler;->endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V

    :cond_6
    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-interface {v11}, Lorg/apache/xerces/xni/NamespaceContext;->popContext()V

    goto/16 :goto_0

    :cond_7
    move-object v11, v2

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v11

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v12}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v12

    invoke-static {v11, v12}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v11

    move v4, v11

    goto/16 :goto_2

    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_3

    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_4

    :cond_a
    move-object v11, v6

    move v12, v7

    invoke-virtual {v11, v12}, Lorg/apache/xerces/dom/AttributeMap;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Attr;

    move-object v8, v11

    sget-object v11, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object v12, v8

    invoke-interface {v12}, Lorg/w3c/dom/Attr;->getPrefix()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    sget-object v11, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object v12, v8

    invoke-interface {v12}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    :cond_b
    move-object v11, v5

    move-object v12, v8

    invoke-virtual {v11, v12}, Lorg/apache/xerces/dom/ElementImpl;->removeAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    move-result-object v11

    add-int/lit8 v7, v7, -0x1

    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_5

    :cond_d
    move-object v11, v6

    if-eqz v11, :cond_4

    const/4 v11, 0x0

    move v7, v11

    :goto_7
    move v11, v7

    move-object v12, v6

    invoke-virtual {v12}, Lorg/apache/xerces/dom/AttributeMap;->getLength()I

    move-result v12

    if-ge v11, v12, :cond_4

    move-object v11, v6

    move v12, v7

    invoke-virtual {v11, v12}, Lorg/apache/xerces/dom/AttributeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Attr;

    move-object v8, v11

    move-object v11, v8

    invoke-interface {v11}, Lorg/w3c/dom/Attr;->normalize()V

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v11, v11, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v11, :cond_e

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v11, v11, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/16 v12, 0x100

    and-int/lit16 v11, v11, 0x100

    if-eqz v11, :cond_e

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fError:Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v13, v1

    iget-object v13, v13, Lorg/apache/xerces/dom/DOMNormalizer;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    move-object v14, v6

    move-object v15, v8

    move-object/from16 v16, v8

    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v17

    invoke-static/range {v11 .. v17}, Lorg/apache/xerces/dom/DOMNormalizer;->isAttrValueWF(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Lorg/w3c/dom/NamedNodeMap;Lorg/w3c/dom/Attr;Ljava/lang/String;Z)V

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v11}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXMLVersionChanged()Z

    move-result v11

    if-eqz v11, :cond_e

    move-object v11, v1

    iget-boolean v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fNamespaceValidation:Z

    if-eqz v11, :cond_f

    move-object v11, v2

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v11

    move-object v12, v2

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v12

    move-object v13, v1

    iget-object v13, v13, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v13}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v13

    invoke-static {v11, v12, v13}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isValidQName(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    move v4, v11

    :goto_8
    move v11, v4

    if-nez v11, :cond_e

    const-string/jumbo v11, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v12, "wf-invalid-character-in-node-name"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    const/4 v15, 0x0

    const-string/jumbo v16, "Attr"

    aput-object v16, v14, v15

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    const/4 v15, 0x1

    move-object/from16 v16, v2

    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v11, v12, v13}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fError:Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v13, v1

    iget-object v13, v13, Lorg/apache/xerces/dom/DOMNormalizer;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    move-object v14, v9

    const/4 v15, 0x2

    const-string/jumbo v16, "wf-invalid-character-in-node-name"

    invoke-static/range {v11 .. v16}, Lorg/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_7

    :cond_f
    move-object v11, v2

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v11

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v12}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v12

    invoke-static {v11, v12}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v11

    move v4, v11

    goto :goto_8

    :cond_10
    move-object v11, v7

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v11

    move-object v8, v11

    move-object v11, v1

    move-object v12, v7

    invoke-virtual {v11, v12}, Lorg/apache/xerces/dom/DOMNormalizer;->normalizeNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v11

    move-object v7, v11

    move-object v11, v7

    if-eqz v11, :cond_11

    move-object v11, v7

    move-object v8, v11

    :cond_11
    move-object v11, v8

    move-object v7, v11

    goto/16 :goto_6

    :pswitch_3
    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v11, v11, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/16 v12, 0x20

    and-int/lit8 v11, v11, 0x20

    if-nez v11, :cond_12

    move-object v11, v2

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v11

    move-object v5, v11

    move-object v11, v2

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v11

    move-object v6, v11

    move-object v11, v6

    move-object v12, v2

    invoke-interface {v11, v12}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v11

    move-object v11, v5

    if-eqz v11, :cond_0

    move-object v11, v5

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_0

    move-object v11, v5

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v11

    move-object v7, v11

    move-object v11, v7

    if-eqz v11, :cond_0

    move-object v11, v7

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_0

    move-object v11, v7

    check-cast v11, Lorg/apache/xerces/dom/TextImpl;

    const/4 v12, 0x0

    move-object v13, v5

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lorg/apache/xerces/dom/TextImpl;->insertData(ILjava/lang/String;)V

    move-object v11, v6

    move-object v12, v5

    invoke-interface {v11, v12}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v11

    move-object v11, v7

    move-object v1, v11

    goto/16 :goto_1

    :cond_12
    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v11, v11, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v11, :cond_13

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v11, v11, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/16 v12, 0x100

    and-int/lit16 v11, v11, 0x100

    if-eqz v11, :cond_13

    move-object v11, v2

    check-cast v11, Lorg/w3c/dom/Comment;

    invoke-interface {v11}, Lorg/w3c/dom/Comment;->getData()Ljava/lang/String;

    move-result-object v11

    move-object v5, v11

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fError:Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v13, v1

    iget-object v13, v13, Lorg/apache/xerces/dom/DOMNormalizer;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    move-object v14, v5

    move-object v15, v1

    iget-object v15, v15, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v15}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v15

    invoke-static {v11, v12, v13, v14, v15}, Lorg/apache/xerces/dom/DOMNormalizer;->isCommentWF(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    :cond_13
    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    if-eqz v11, :cond_0

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    sget-object v12, Lorg/apache/xerces/dom/DOMNormalizer;->EMPTY_STRING:Lorg/apache/xerces/xni/XMLString;

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lorg/apache/xerces/impl/RevalidationHandler;->comment(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_0

    :pswitch_4
    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v11, v11, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/4 v12, 0x4

    and-int/lit8 v11, v11, 0x4

    if-nez v11, :cond_16

    move-object v11, v2

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v11

    move-object v5, v11

    move-object v11, v2

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v11

    move-object v6, v11

    move-object v11, v2

    check-cast v11, Lorg/apache/xerces/dom/EntityReferenceImpl;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v13}, Lorg/apache/xerces/dom/EntityReferenceImpl;->setReadOnly(ZZ)V

    move-object v11, v1

    move-object v12, v6

    move-object v13, v2

    invoke-virtual {v11, v12, v13}, Lorg/apache/xerces/dom/DOMNormalizer;->expandEntityRef(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)V

    move-object v11, v6

    move-object v12, v2

    invoke-interface {v11, v12}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v11

    move-object v11, v5

    if-eqz v11, :cond_14

    move-object v11, v5

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v11

    :goto_9
    move-object v7, v11

    move-object v11, v5

    if-eqz v11, :cond_15

    move-object v11, v7

    if-eqz v11, :cond_15

    move-object v11, v5

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_15

    move-object v11, v7

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_15

    move-object v11, v5

    move-object v1, v11

    goto/16 :goto_1

    :cond_14
    move-object v11, v6

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v11

    goto :goto_9

    :cond_15
    move-object v11, v7

    move-object v1, v11

    goto/16 :goto_1

    :cond_16
    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v11, v11, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v11, :cond_0

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v11, v11, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/16 v12, 0x100

    and-int/lit16 v11, v11, 0x100

    if-eqz v11, :cond_0

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v11}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXMLVersionChanged()Z

    move-result v11

    if-eqz v11, :cond_0

    move-object v11, v2

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v11

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v12}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v12

    invoke-static {v11, v12}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v11

    goto/16 :goto_0

    :pswitch_5
    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v11, v11, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/16 v12, 0x8

    and-int/lit8 v11, v11, 0x8

    if-nez v11, :cond_18

    move-object v11, v2

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v11

    move-object v5, v11

    move-object v11, v5

    if-eqz v11, :cond_17

    move-object v11, v5

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_17

    move-object v11, v5

    check-cast v11, Lorg/w3c/dom/Text;

    move-object v12, v2

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/w3c/dom/Text;->appendData(Ljava/lang/String;)V

    move-object v11, v2

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v11

    move-object v12, v2

    invoke-interface {v11, v12}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v11

    move-object v11, v5

    move-object v1, v11

    goto/16 :goto_1

    :cond_17
    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v12, v2

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/apache/xerces/dom/CoreDocumentImpl;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v11

    move-object v6, v11

    move-object v11, v2

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v11

    move-object v7, v11

    move-object v11, v7

    move-object v12, v6

    move-object v13, v2

    invoke-interface {v11, v12, v13}, Lorg/w3c/dom/Node;->replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v11

    move-object v2, v11

    move-object v11, v6

    move-object v1, v11

    goto/16 :goto_1

    :cond_18
    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    if-eqz v11, :cond_19

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fErrorHandlerWrapper:Lorg/apache/xerces/util/DOMErrorHandlerWrapper;

    move-object v12, v2

    iput-object v12, v11, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v11, v1

    move-object v12, v2

    iput-object v12, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lorg/apache/xerces/impl/RevalidationHandler;->startCDATA(Lorg/apache/xerces/xni/Augmentations;)V

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    move-object v12, v2

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lorg/apache/xerces/impl/RevalidationHandler;->characterData(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)Z

    move-result v11

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lorg/apache/xerces/impl/RevalidationHandler;->endCDATA(Lorg/apache/xerces/xni/Augmentations;)V

    :cond_19
    move-object v11, v2

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    move-object v5, v11

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v11, v11, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/16 v12, 0x10

    and-int/lit8 v11, v11, 0x10

    if-eqz v11, :cond_1c

    move-object v11, v2

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v11

    move-object v7, v11

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v11, v11, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v11, :cond_1a

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fError:Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v13, v1

    iget-object v13, v13, Lorg/apache/xerces/dom/DOMNormalizer;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    move-object v14, v2

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    move-object v15, v1

    iget-object v15, v15, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v15}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v15

    invoke-static {v11, v12, v13, v14, v15}, Lorg/apache/xerces/dom/DOMNormalizer;->isXMLCharWF(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    :cond_1a
    :goto_a
    move-object v11, v5

    const-string/jumbo v12, "]]>"

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    move/from16 v18, v11

    move/from16 v11, v18

    move/from16 v12, v18

    move v6, v12

    if-gez v11, :cond_1b

    goto/16 :goto_0

    :cond_1b
    move-object v11, v2

    move-object v12, v5

    const/4 v13, 0x0

    move v14, v6

    const/4 v15, 0x2

    add-int/lit8 v14, v14, 0x2

    invoke-virtual {v12, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    move-object v11, v5

    move v12, v6

    const/4 v13, 0x2

    add-int/lit8 v12, v12, 0x2

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    move-object v5, v11

    move-object v11, v2

    move-object v8, v11

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v12, v5

    invoke-virtual {v11, v12}, Lorg/apache/xerces/dom/CoreDocumentImpl;->createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;

    move-result-object v11

    move-object v9, v11

    move-object v11, v7

    move-object v12, v9

    move-object v13, v2

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v11

    move-object v11, v9

    move-object v2, v11

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    move-object v12, v8

    iput-object v12, v11, Lorg/apache/xerces/dom/DOMLocatorImpl;->fRelatedNode:Lorg/w3c/dom/Node;

    const-string/jumbo v11, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v12, "cdata-sections-splitted"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fError:Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v13, v1

    iget-object v13, v13, Lorg/apache/xerces/dom/DOMNormalizer;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    move-object v14, v10

    const/4 v15, 0x1

    const-string/jumbo v16, "cdata-sections-splitted"

    invoke-static/range {v11 .. v16}, Lorg/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    goto :goto_a

    :cond_1c
    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v11, v11, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v11, :cond_0

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fError:Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v13, v1

    iget-object v13, v13, Lorg/apache/xerces/dom/DOMNormalizer;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    move-object v14, v5

    move-object v15, v1

    iget-object v15, v15, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v15}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v15

    invoke-static {v11, v12, v13, v14, v15}, Lorg/apache/xerces/dom/DOMNormalizer;->isCDataWF(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :pswitch_6
    move-object v11, v2

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v11

    move-object v5, v11

    move-object v11, v5

    if-eqz v11, :cond_1d

    move-object v11, v5

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_1d

    move-object v11, v2

    check-cast v11, Lorg/w3c/dom/Text;

    move-object v12, v5

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Lorg/w3c/dom/Text;->appendData(Ljava/lang/String;)V

    move-object v11, v2

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v11

    move-object v12, v5

    invoke-interface {v11, v12}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v11

    move-object v11, v2

    move-object v1, v11

    goto/16 :goto_1

    :cond_1d
    move-object v11, v2

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_1e

    move-object v11, v2

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v11

    move-object v12, v2

    invoke-interface {v11, v12}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v11

    goto/16 :goto_0

    :cond_1e
    move-object v11, v5

    if-eqz v11, :cond_23

    move-object v11, v5

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v11

    :goto_b
    move v6, v11

    move v11, v6

    const/4 v12, -0x1

    if-eq v11, v12, :cond_21

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v11, v11, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/4 v12, 0x4

    and-int/lit8 v11, v11, 0x4

    if-nez v11, :cond_1f

    move v11, v6

    const/4 v12, 0x6

    if-eq v11, v12, :cond_0

    :cond_1f
    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v11, v11, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/16 v12, 0x20

    and-int/lit8 v11, v11, 0x20

    if-nez v11, :cond_20

    move v11, v6

    const/16 v12, 0x8

    if-eq v11, v12, :cond_0

    :cond_20
    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v11, v11, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/16 v12, 0x8

    and-int/lit8 v11, v11, 0x8

    if-nez v11, :cond_21

    move v11, v6

    const/4 v12, 0x4

    if-eq v11, v12, :cond_0

    :cond_21
    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v11, v11, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v11, :cond_22

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v11, v11, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/16 v12, 0x100

    and-int/lit16 v11, v11, 0x100

    if-eqz v11, :cond_22

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fError:Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v13, v1

    iget-object v13, v13, Lorg/apache/xerces/dom/DOMNormalizer;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    move-object v14, v2

    invoke-interface {v14}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    move-object v15, v1

    iget-object v15, v15, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v15}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v15

    invoke-static {v11, v12, v13, v14, v15}, Lorg/apache/xerces/dom/DOMNormalizer;->isXMLCharWF(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    :cond_22
    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    if-eqz v11, :cond_0

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMConfigurationImpl;->fErrorHandlerWrapper:Lorg/apache/xerces/util/DOMErrorHandlerWrapper;

    move-object v12, v2

    iput-object v12, v11, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v11, v1

    move-object v12, v2

    iput-object v12, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    move-object v12, v2

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Lorg/apache/xerces/impl/RevalidationHandler;->characterData(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)Z

    move-result v11

    move-object v11, v1

    iget-boolean v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fNamespaceValidation:Z

    if-nez v11, :cond_0

    move-object v11, v1

    iget-boolean v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fAllWhitespace:Z

    if-eqz v11, :cond_24

    move-object v11, v1

    const/4 v12, 0x0

    iput-boolean v12, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fAllWhitespace:Z

    move-object v11, v2

    check-cast v11, Lorg/apache/xerces/dom/TextImpl;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lorg/apache/xerces/dom/TextImpl;->setIgnorableWhitespace(Z)V

    goto/16 :goto_0

    :cond_23
    const/4 v11, -0x1

    goto/16 :goto_b

    :cond_24
    move-object v11, v2

    check-cast v11, Lorg/apache/xerces/dom/TextImpl;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lorg/apache/xerces/dom/TextImpl;->setIgnorableWhitespace(Z)V

    goto/16 :goto_0

    :pswitch_7
    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v11, v11, Lorg/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v11, :cond_26

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v11, v11, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/16 v12, 0x100

    and-int/lit16 v11, v11, 0x100

    if-eqz v11, :cond_26

    move-object v11, v2

    check-cast v11, Lorg/w3c/dom/ProcessingInstruction;

    move-object v5, v11

    move-object v11, v5

    invoke-interface {v11}, Lorg/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v11}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v11

    if-eqz v11, :cond_27

    move-object v11, v6

    invoke-static {v11}, Lorg/apache/xerces/util/XML11Char;->isXML11ValidName(Ljava/lang/String;)Z

    move-result v11

    move v4, v11

    :goto_c
    move v11, v4

    if-nez v11, :cond_25

    const-string/jumbo v11, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v12, "wf-invalid-character-in-node-name"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    const/4 v15, 0x0

    const-string/jumbo v16, "Element"

    aput-object v16, v14, v15

    move-object/from16 v18, v13

    move-object/from16 v13, v18

    move-object/from16 v14, v18

    const/4 v15, 0x1

    move-object/from16 v16, v2

    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v11, v12, v13}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    move-object v7, v11

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fError:Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v13, v1

    iget-object v13, v13, Lorg/apache/xerces/dom/DOMNormalizer;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    move-object v14, v7

    const/4 v15, 0x2

    const-string/jumbo v16, "wf-invalid-character-in-node-name"

    invoke-static/range {v11 .. v16}, Lorg/apache/xerces/dom/DOMNormalizer;->reportDOMError(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;SLjava/lang/String;)V

    :cond_25
    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fErrorHandler:Lorg/w3c/dom/DOMErrorHandler;

    move-object v12, v1

    iget-object v12, v12, Lorg/apache/xerces/dom/DOMNormalizer;->fError:Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v13, v1

    iget-object v13, v13, Lorg/apache/xerces/dom/DOMNormalizer;->fLocator:Lorg/apache/xerces/dom/DOMLocatorImpl;

    move-object v14, v5

    invoke-interface {v14}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v14

    move-object v15, v1

    iget-object v15, v15, Lorg/apache/xerces/dom/DOMNormalizer;->fDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v15}, Lorg/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v15

    invoke-static {v11, v12, v13, v14, v15}, Lorg/apache/xerces/dom/DOMNormalizer;->isXMLCharWF(Lorg/w3c/dom/DOMErrorHandler;Lorg/apache/xerces/dom/DOMErrorImpl;Lorg/apache/xerces/dom/DOMLocatorImpl;Ljava/lang/String;Z)V

    :cond_26
    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    if-eqz v11, :cond_0

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/dom/DOMNormalizer;->fValidationHandler:Lorg/apache/xerces/impl/RevalidationHandler;

    move-object v12, v2

    check-cast v12, Lorg/w3c/dom/ProcessingInstruction;

    invoke-interface {v12}, Lorg/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Lorg/apache/xerces/dom/DOMNormalizer;->EMPTY_STRING:Lorg/apache/xerces/xni/XMLString;

    const/4 v14, 0x0

    invoke-interface {v11, v12, v13, v14}, Lorg/apache/xerces/impl/RevalidationHandler;->processingInstruction(Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    goto/16 :goto_0

    :cond_27
    move-object v11, v6

    invoke-static {v11}, Lorg/apache/xerces/util/XMLChar;->isValidName(Ljava/lang/String;)Z

    move-result v11

    move v4, v11

    goto :goto_c

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_7
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public processingInstruction(Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V
    .locals 0

    return-void
.end method

.method public startCDATA(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public startDocument(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lorg/apache/xerces/xni/NamespaceContext;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v13, v0

    iget-object v13, v13, Lorg/apache/xerces/dom/DOMNormalizer;->fCurrentNode:Lorg/w3c/dom/Node;

    check-cast v13, Lorg/w3c/dom/Element;

    move-object v4, v13

    move-object v13, v2

    invoke-interface {v13}, Lorg/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v13

    move v5, v13

    const/4 v13, 0x0

    move v6, v13

    :goto_0
    move v13, v6

    move v14, v5

    if-lt v13, v14, :cond_0

    return-void

    :cond_0
    move-object v13, v2

    move v14, v6

    move-object v15, v0

    iget-object v15, v15, Lorg/apache/xerces/dom/DOMNormalizer;->fAttrQName:Lorg/apache/xerces/xni/QName;

    invoke-interface {v13, v14, v15}, Lorg/apache/xerces/xni/XMLAttributes;->getName(ILorg/apache/xerces/xni/QName;)V

    const/4 v13, 0x0

    move-object v7, v13

    move-object v13, v4

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/dom/DOMNormalizer;->fAttrQName:Lorg/apache/xerces/xni/QName;

    iget-object v14, v14, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object v15, v0

    iget-object v15, v15, Lorg/apache/xerces/dom/DOMNormalizer;->fAttrQName:Lorg/apache/xerces/xni/QName;

    iget-object v15, v15, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-interface {v13, v14, v15}, Lorg/w3c/dom/Element;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v13

    move-object v7, v13

    move-object v13, v7

    if-nez v13, :cond_1

    move-object v13, v4

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/dom/DOMNormalizer;->fAttrQName:Lorg/apache/xerces/xni/QName;

    iget-object v14, v14, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-interface {v13, v14}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v13

    move-object v7, v13

    :cond_1
    move-object v13, v2

    move v14, v6

    invoke-interface {v13, v14}, Lorg/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lorg/apache/xerces/xni/Augmentations;

    move-result-object v13

    const-string/jumbo v14, "ATTRIBUTE_PSVI"

    invoke-interface {v13, v14}, Lorg/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/xerces/xs/AttributePSVI;

    move-object v8, v13

    move-object v13, v8

    if-eqz v13, :cond_7

    move-object v13, v8

    invoke-interface {v13}, Lorg/apache/xerces/xs/AttributePSVI;->getMemberTypeDefinition()Lorg/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v13

    move-object v9, v13

    const/4 v13, 0x0

    move v10, v13

    move-object v13, v9

    if-eqz v13, :cond_6

    move-object v13, v9

    check-cast v13, Lorg/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v13}, Lorg/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v13

    move v10, v13

    :cond_2
    :goto_1
    move v13, v10

    if-eqz v13, :cond_3

    move-object v13, v4

    check-cast v13, Lorg/apache/xerces/dom/ElementImpl;

    move-object v14, v7

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lorg/apache/xerces/dom/ElementImpl;->setIdAttributeNode(Lorg/w3c/dom/Attr;Z)V

    :cond_3
    move-object v13, v0

    iget-boolean v13, v13, Lorg/apache/xerces/dom/DOMNormalizer;->fPSVI:Z

    if-eqz v13, :cond_4

    move-object v13, v7

    check-cast v13, Lorg/apache/xerces/dom/PSVIAttrNSImpl;

    move-object v14, v8

    invoke-virtual {v13, v14}, Lorg/apache/xerces/dom/PSVIAttrNSImpl;->setPSVI(Lorg/apache/xerces/xs/AttributePSVI;)V

    :cond_4
    move-object v13, v7

    check-cast v13, Lorg/apache/xerces/dom/AttrImpl;

    move-object v14, v9

    invoke-virtual {v13, v14}, Lorg/apache/xerces/dom/AttrImpl;->setType(Ljava/lang/Object;)V

    move-object v13, v0

    iget-object v13, v13, Lorg/apache/xerces/dom/DOMNormalizer;->fConfiguration:Lorg/apache/xerces/dom/DOMConfigurationImpl;

    iget-short v13, v13, Lorg/apache/xerces/dom/DOMConfigurationImpl;->features:S

    const/4 v14, 0x2

    and-int/lit8 v13, v13, 0x2

    if-eqz v13, :cond_5

    move-object v13, v8

    invoke-interface {v13}, Lorg/apache/xerces/xs/AttributePSVI;->getSchemaNormalizedValue()Ljava/lang/String;

    move-result-object v13

    move-object v11, v13

    move-object v13, v11

    if-eqz v13, :cond_5

    move-object v13, v7

    invoke-interface {v13}, Lorg/w3c/dom/Attr;->getSpecified()Z

    move-result v13

    move v12, v13

    move-object v13, v7

    move-object v14, v11

    invoke-interface {v13, v14}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    move v13, v12

    if-nez v13, :cond_5

    move-object v13, v7

    check-cast v13, Lorg/apache/xerces/dom/AttrImpl;

    move v14, v12

    invoke-virtual {v13, v14}, Lorg/apache/xerces/dom/AttrImpl;->setSpecified(Z)V

    :cond_5
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_6
    move-object v13, v8

    invoke-interface {v13}, Lorg/apache/xerces/xs/AttributePSVI;->getTypeDefinition()Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object v13

    move-object v9, v13

    move-object v13, v9

    if-eqz v13, :cond_2

    move-object v13, v9

    check-cast v13, Lorg/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v13}, Lorg/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v13

    move v10, v13

    goto :goto_1

    :cond_7
    const/4 v13, 0x0

    move-object v9, v13

    sget-object v13, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v14, v2

    move v15, v6

    invoke-interface {v14, v15}, Lorg/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lorg/apache/xerces/xni/Augmentations;

    move-result-object v14

    const-string/jumbo v15, "ATTRIBUTE_DECLARED"

    invoke-interface {v14, v15}, Lorg/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v13

    move v10, v13

    move v13, v10

    if-eqz v13, :cond_8

    move-object v13, v2

    move v14, v6

    invoke-interface {v13, v14}, Lorg/apache/xerces/xni/XMLAttributes;->getType(I)Ljava/lang/String;

    move-result-object v13

    move-object v9, v13

    const-string/jumbo v13, "ID"

    move-object v14, v9

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    move-object v13, v4

    check-cast v13, Lorg/apache/xerces/dom/ElementImpl;

    move-object v14, v7

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lorg/apache/xerces/dom/ElementImpl;->setIdAttributeNode(Lorg/w3c/dom/Attr;Z)V

    :cond_8
    move-object v13, v7

    check-cast v13, Lorg/apache/xerces/dom/AttrImpl;

    move-object v14, v9

    invoke-virtual {v13, v14}, Lorg/apache/xerces/dom/AttrImpl;->setType(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public startGeneralEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method protected final updateQName(Lorg/w3c/dom/Node;Lorg/apache/xerces/xni/QName;)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v1

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    move-object v6, v1

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    move-object v6, v1

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    move-object v6, v2

    move-object v7, v3

    if-eqz v7, :cond_0

    move-object v7, v3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v8, v3

    invoke-virtual {v7, v8}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_0
    iput-object v7, v6, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    move-object v6, v2

    move-object v7, v5

    if-eqz v7, :cond_1

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v8, v5

    invoke-virtual {v7, v8}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_1
    iput-object v7, v6, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object v6, v2

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v8, v1

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v6, v2

    move-object v7, v4

    if-eqz v7, :cond_2

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/dom/DOMNormalizer;->fSymbolTable:Lorg/apache/xerces/util/SymbolTable;

    move-object v8, v4

    invoke-virtual {v7, v8}, Lorg/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_2
    iput-object v7, v6, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method
