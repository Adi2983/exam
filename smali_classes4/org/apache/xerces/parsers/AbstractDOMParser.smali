.class public Lorg/apache/xerces/parsers/AbstractDOMParser;
.super Lorg/apache/xerces/parsers/AbstractXMLDocumentParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;
    }
.end annotation


# static fields
.field protected static final CORE_DOCUMENT_CLASS_NAME:Ljava/lang/String; = "org.apache.xerces.dom.CoreDocumentImpl"

.field protected static final CREATE_CDATA_NODES_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/create-cdata-nodes"

.field protected static final CREATE_ENTITY_REF_NODES:Ljava/lang/String; = "http://apache.org/xml/features/dom/create-entity-ref-nodes"

.field protected static final CURRENT_ELEMENT_NODE:Ljava/lang/String; = "http://apache.org/xml/properties/dom/current-element-node"

.field private static final DEBUG_BASEURI:Z = false

.field private static final DEBUG_EVENTS:Z = false

.field protected static final DEFAULT_DOCUMENT_CLASS_NAME:Ljava/lang/String; = "org.apache.xerces.dom.DocumentImpl"

.field protected static final DEFER_NODE_EXPANSION:Ljava/lang/String; = "http://apache.org/xml/features/dom/defer-node-expansion"

.field protected static final DOCUMENT_CLASS_NAME:Ljava/lang/String; = "http://apache.org/xml/properties/dom/document-class-name"

.field protected static final INCLUDE_COMMENTS_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/include-comments"

.field protected static final INCLUDE_IGNORABLE_WHITESPACE:Ljava/lang/String; = "http://apache.org/xml/features/dom/include-ignorable-whitespace"

.field protected static final NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field protected static final PSVI_DOCUMENT_CLASS_NAME:Ljava/lang/String; = "org.apache.xerces.dom.PSVIDocumentImpl"

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field static class$org$w3c$dom$Document:Ljava/lang/Class;


# instance fields
.field private final fAttrQName:Lorg/apache/xerces/xni/QName;

.field protected final fBaseURIStack:Ljava/util/Stack;

.field protected fCreateCDATANodes:Z

.field protected fCreateEntityRefNodes:Z

.field protected fCurrentCDATASection:Lorg/w3c/dom/CDATASection;

.field protected fCurrentCDATASectionIndex:I

.field protected fCurrentEntityDecl:Lorg/apache/xerces/dom/EntityImpl;

.field protected fCurrentNode:Lorg/w3c/dom/Node;

.field protected fCurrentNodeIndex:I

.field protected fDOMFilter:Lorg/w3c/dom/ls/LSParserFilter;

.field protected fDeferNodeExpansion:Z

.field protected fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

.field protected fDeferredEntityDecl:I

.field protected fDocument:Lorg/w3c/dom/Document;

.field protected fDocumentClassName:Ljava/lang/String;

.field protected fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

.field protected fDocumentIndex:I

.field protected fDocumentType:Lorg/w3c/dom/DocumentType;

.field protected fDocumentTypeIndex:I

.field protected fErrorHandler:Lorg/apache/xerces/util/DOMErrorHandlerWrapper;

.field protected fFilterReject:Z

.field protected fFirstChunk:Z

.field protected fInCDATASection:Z

.field protected fInDTD:Z

.field protected fInDTDExternalSubset:Z

.field protected fInEntityRef:Z

.field protected fIncludeComments:Z

.field protected fIncludeIgnorableWhitespace:Z

.field protected fInternalSubset:Ljava/lang/StringBuffer;

.field private fLocator:Lorg/apache/xerces/xni/XMLLocator;

.field protected fNamespaceAware:Z

.field protected fRejectedElementDepth:I

.field protected fRoot:Lorg/w3c/dom/Node;

.field protected fSkippedElemStack:Ljava/util/Stack;

.field protected fStorePSVI:Z

.field protected final fStringBuffer:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string/jumbo v3, "http://xml.org/sax/features/namespaces"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "http://apache.org/xml/features/dom/create-entity-ref-nodes"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, "http://apache.org/xml/features/include-comments"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    const-string/jumbo v3, "http://apache.org/xml/features/create-cdata-nodes"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x4

    const-string/jumbo v3, "http://apache.org/xml/features/dom/include-ignorable-whitespace"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x5

    const-string/jumbo v3, "http://apache.org/xml/features/dom/defer-node-expansion"

    aput-object v3, v1, v2

    sput-object v0, Lorg/apache/xerces/parsers/AbstractDOMParser;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string/jumbo v3, "http://apache.org/xml/properties/dom/document-class-name"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "http://apache.org/xml/properties/dom/current-element-node"

    aput-object v3, v1, v2

    sput-object v0, Lorg/apache/xerces/parsers/AbstractDOMParser;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lorg/apache/xerces/xni/parser/XMLParserConfiguration;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lorg/apache/xerces/parsers/AbstractXMLDocumentParser;-><init>(Lorg/apache/xerces/xni/parser/XMLParserConfiguration;)V

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/parsers/AbstractDOMParser;->fErrorHandler:Lorg/apache/xerces/util/DOMErrorHandlerWrapper;

    move-object v2, v0

    new-instance v3, Ljava/lang/StringBuffer;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/16 v5, 0x32

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v3, v2, Lorg/apache/xerces/parsers/AbstractDOMParser;->fStringBuffer:Ljava/lang/StringBuffer;

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xerces/parsers/AbstractDOMParser;->fFirstChunk:Z

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    move-object v2, v0

    new-instance v3, Ljava/util/Stack;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/parsers/AbstractDOMParser;->fBaseURIStack:Ljava/util/Stack;

    move-object v2, v0

    const/4 v3, 0x0

    iput v3, v2, Lorg/apache/xerces/parsers/AbstractDOMParser;->fRejectedElementDepth:I

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/parsers/AbstractDOMParser;->fSkippedElemStack:Ljava/util/Stack;

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInEntityRef:Z

    move-object v2, v0

    new-instance v3, Lorg/apache/xerces/xni/QName;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v3, v2, Lorg/apache/xerces/parsers/AbstractDOMParser;->fAttrQName:Lorg/apache/xerces/xni/QName;

    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lorg/w3c/dom/ls/LSParserFilter;

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    sget-object v3, Lorg/apache/xerces/parsers/AbstractDOMParser;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->addRecognizedFeatures([Ljava/lang/String;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v3, "http://apache.org/xml/features/dom/create-entity-ref-nodes"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v3, "http://apache.org/xml/features/dom/include-ignorable-whitespace"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v3, "http://apache.org/xml/features/dom/defer-node-expansion"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v3, "http://apache.org/xml/features/include-comments"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v3, "http://apache.org/xml/features/create-cdata-nodes"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    sget-object v3, Lorg/apache/xerces/parsers/AbstractDOMParser;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->addRecognizedProperties([Ljava/lang/String;)V

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v3, "http://apache.org/xml/properties/dom/document-class-name"

    const-string/jumbo v4, "org.apache.xerces.dom.DocumentImpl"

    invoke-interface {v2, v3, v4}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

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


# virtual methods
.method public abort()V
    .locals 2

    move-object v0, p0

    sget-object v1, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v1
.end method

.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    if-eqz v14, :cond_2

    move-object v14, v0

    iget-boolean v14, v14, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    if-nez v14, :cond_2

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string/jumbo v15, "<!ATTLIST "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    move-object v15, v1

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 v15, 0x20

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v14

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    move-object v15, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 v15, 0x20

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v14

    move-object v14, v3

    const-string/jumbo v15, "ENUMERATION"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 v15, 0x28

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v14

    const/4 v14, 0x0

    move v9, v14

    :goto_0
    move v14, v9

    move-object v15, v4

    array-length v15, v15

    if-lt v14, v15, :cond_8

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 v15, 0x29

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v14

    :goto_1
    move-object v14, v5

    if-eqz v14, :cond_0

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 v15, 0x20

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v14

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    move-object v15, v5

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    :cond_0
    move-object v14, v6

    if-eqz v14, :cond_1

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string/jumbo v15, " \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const/4 v14, 0x0

    move v9, v14

    :goto_2
    move v14, v9

    move-object v15, v6

    iget v15, v15, Lorg/apache/xerces/xni/XMLString;->length:I

    if-lt v14, v15, :cond_b

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 v15, 0x27

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v14

    :cond_1
    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string/jumbo v15, ">\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    :cond_2
    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    if-eqz v14, :cond_e

    move-object v14, v6

    if-eqz v14, :cond_7

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v15, v1

    invoke-virtual {v14, v15}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->lookupElementDefinition(Ljava/lang/String;)I

    move-result v14

    move v9, v14

    move v14, v9

    const/4 v15, -0x1

    if-ne v14, v15, :cond_3

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v15, v1

    invoke-virtual {v14, v15}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->createDeferredElementDefinition(Ljava/lang/String;)I

    move-result v14

    move v9, v14

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v15, v0

    iget v15, v15, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    move/from16 v16, v9

    invoke-virtual/range {v14 .. v16}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    :cond_3
    move-object v14, v0

    iget-boolean v14, v14, Lorg/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    move v10, v14

    const/4 v14, 0x0

    move-object v11, v14

    move v14, v10

    if-eqz v14, :cond_5

    move-object v14, v2

    const-string/jumbo v15, "xmlns:"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_4

    move-object v14, v2

    const-string/jumbo v15, "xmlns"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    :cond_4
    sget-object v14, Lorg/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    move-object v11, v14

    :cond_5
    :goto_3
    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v15, v2

    move-object/from16 v16, v11

    move-object/from16 v17, v6

    invoke-virtual/range {v17 .. v17}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v14 .. v18}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->createDeferredAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v14

    move v12, v14

    const-string/jumbo v14, "ID"

    move-object v15, v3

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move v15, v12

    invoke-virtual {v14, v15}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setIdAttribute(I)V

    :cond_6
    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move v15, v9

    move/from16 v16, v12

    invoke-virtual/range {v14 .. v16}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    :cond_7
    :goto_4
    return-void

    :cond_8
    move v14, v9

    if-lez v14, :cond_9

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 v15, 0x7c

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v14

    :cond_9
    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    move-object v15, v4

    move/from16 v16, v9

    aget-object v15, v15, v16

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_a
    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    move-object v15, v3

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    goto/16 :goto_1

    :cond_b
    move-object v14, v6

    iget-object v14, v14, Lorg/apache/xerces/xni/XMLString;->ch:[C

    move-object v15, v6

    iget v15, v15, Lorg/apache/xerces/xni/XMLString;->offset:I

    move/from16 v16, v9

    add-int v15, v15, v16

    aget-char v14, v14, v15

    move v10, v14

    move v14, v10

    const/16 v15, 0x27

    if-ne v14, v15, :cond_c

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string/jumbo v15, "&apos;"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    :cond_c
    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    move v15, v10

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v14

    goto :goto_5

    :cond_d
    move-object v14, v2

    const-string/jumbo v15, "xml:"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    sget-object v14, Lorg/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    move-object v11, v14

    goto/16 :goto_3

    :cond_e
    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v14, :cond_7

    move-object v14, v6

    if-eqz v14, :cond_7

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lorg/w3c/dom/DocumentType;

    check-cast v14, Lorg/apache/xerces/dom/DocumentTypeImpl;

    invoke-virtual {v14}, Lorg/apache/xerces/dom/DocumentTypeImpl;->getElements()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v14

    move-object v9, v14

    move-object v14, v9

    move-object v15, v1

    invoke-interface {v14, v15}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v14

    check-cast v14, Lorg/apache/xerces/dom/ElementDefinitionImpl;

    move-object v10, v14

    move-object v14, v10

    if-nez v14, :cond_f

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v15, v1

    invoke-virtual {v14, v15}, Lorg/apache/xerces/dom/CoreDocumentImpl;->createElementDefinition(Ljava/lang/String;)Lorg/apache/xerces/dom/ElementDefinitionImpl;

    move-result-object v14

    move-object v10, v14

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lorg/w3c/dom/DocumentType;

    check-cast v14, Lorg/apache/xerces/dom/DocumentTypeImpl;

    invoke-virtual {v14}, Lorg/apache/xerces/dom/DocumentTypeImpl;->getElements()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v14

    move-object v15, v10

    invoke-interface {v14, v15}, Lorg/w3c/dom/NamedNodeMap;->setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v14

    :cond_f
    move-object v14, v0

    iget-boolean v14, v14, Lorg/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    move v11, v14

    move v14, v11

    if-eqz v14, :cond_13

    const/4 v14, 0x0

    move-object v13, v14

    move-object v14, v2

    const-string/jumbo v15, "xmlns:"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_10

    move-object v14, v2

    const-string/jumbo v15, "xmlns"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    :cond_10
    sget-object v14, Lorg/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    move-object v13, v14

    :cond_11
    :goto_6
    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v15, v13

    move-object/from16 v16, v2

    invoke-virtual/range {v14 .. v16}, Lorg/apache/xerces/dom/CoreDocumentImpl;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v14

    check-cast v14, Lorg/apache/xerces/dom/AttrImpl;

    move-object v12, v14

    :goto_7
    move-object v14, v12

    move-object v15, v6

    invoke-virtual {v15}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lorg/apache/xerces/dom/AttrImpl;->setValue(Ljava/lang/String;)V

    move-object v14, v12

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lorg/apache/xerces/dom/AttrImpl;->setSpecified(Z)V

    move-object v14, v12

    const-string/jumbo v15, "ID"

    move-object/from16 v16, v3

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    invoke-virtual {v14, v15}, Lorg/apache/xerces/dom/AttrImpl;->setIdAttribute(Z)V

    move v14, v11

    if-eqz v14, :cond_14

    move-object v14, v10

    invoke-virtual {v14}, Lorg/apache/xerces/dom/ElementDefinitionImpl;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v14

    move-object v15, v12

    invoke-interface {v14, v15}, Lorg/w3c/dom/NamedNodeMap;->setNamedItemNS(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v14

    goto/16 :goto_4

    :cond_12
    move-object v14, v2

    const-string/jumbo v15, "xml:"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_11

    sget-object v14, Lorg/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    move-object v13, v14

    goto :goto_6

    :cond_13
    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v15, v2

    invoke-virtual {v14, v15}, Lorg/apache/xerces/dom/CoreDocumentImpl;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v14

    check-cast v14, Lorg/apache/xerces/dom/AttrImpl;

    move-object v12, v14

    goto :goto_7

    :cond_14
    move-object v14, v10

    invoke-virtual {v14}, Lorg/apache/xerces/dom/ElementDefinitionImpl;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v14

    move-object v15, v12

    invoke-interface {v14, v15}, Lorg/w3c/dom/NamedNodeMap;->setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v14

    goto/16 :goto_4
.end method

.method public characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    iget-boolean v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez v5, :cond_8

    move-object v5, v0

    iget-boolean v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    if-eqz v5, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v5, v0

    iget-boolean v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInCDATASection:Z

    if-eqz v5, :cond_3

    move-object v5, v0

    iget-boolean v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCreateCDATANodes:Z

    if-eqz v5, :cond_3

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASection:Lorg/w3c/dom/CDATASection;

    if-nez v5, :cond_2

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lorg/w3c/dom/Document;

    move-object v7, v1

    invoke-virtual {v7}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/w3c/dom/Document;->createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;

    move-result-object v6

    iput-object v6, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASection:Lorg/w3c/dom/CDATASection;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASection:Lorg/w3c/dom/CDATASection;

    invoke-interface {v5, v6}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASection:Lorg/w3c/dom/CDATASection;

    iput-object v6, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    :cond_1
    :goto_1
    goto :goto_0

    :cond_2
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASection:Lorg/w3c/dom/CDATASection;

    move-object v6, v1

    invoke-virtual {v6}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/w3c/dom/CDATASection;->appendData(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v5, v0

    iget-boolean v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInDTD:Z

    if-nez v5, :cond_1

    move-object v5, v1

    iget v5, v5, Lorg/apache/xerces/xni/XMLString;->length:I

    if-nez v5, :cond_4

    goto :goto_0

    :cond_4
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v3, v5

    move-object v5, v3

    if-eqz v5, :cond_7

    move-object v5, v3

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_7

    move-object v5, v0

    iget-boolean v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fFirstChunk:Z

    if-eqz v5, :cond_5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v5, :cond_6

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fStringBuffer:Ljava/lang/StringBuffer;

    move-object v6, v3

    check-cast v6, Lorg/apache/xerces/dom/TextImpl;

    invoke-virtual {v6}, Lorg/apache/xerces/dom/TextImpl;->removeData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    :goto_2
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fFirstChunk:Z

    :cond_5
    move-object v5, v1

    iget v5, v5, Lorg/apache/xerces/xni/XMLString;->length:I

    if-lez v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fStringBuffer:Ljava/lang/StringBuffer;

    move-object v6, v1

    iget-object v6, v6, Lorg/apache/xerces/xni/XMLString;->ch:[C

    move-object v7, v1

    iget v7, v7, Lorg/apache/xerces/xni/XMLString;->offset:I

    move-object v8, v1

    iget v8, v8, Lorg/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {v5, v6, v7, v8}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move-result-object v5

    goto :goto_1

    :cond_6
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fStringBuffer:Ljava/lang/StringBuffer;

    move-object v6, v3

    check-cast v6, Lorg/w3c/dom/Text;

    invoke-interface {v6}, Lorg/w3c/dom/Text;->getData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    move-object v5, v3

    check-cast v5, Lorg/w3c/dom/Text;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lorg/w3c/dom/Text;->setNodeValue(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fFirstChunk:Z

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lorg/w3c/dom/Document;

    move-object v6, v1

    invoke-virtual {v6}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v5

    move-object v4, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v6, v4

    invoke-interface {v5, v6}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v5

    goto/16 :goto_1

    :cond_8
    move-object v5, v0

    iget-boolean v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInCDATASection:Z

    if-eqz v5, :cond_a

    move-object v5, v0

    iget-boolean v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCreateCDATANodes:Z

    if-eqz v5, :cond_a

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASectionIndex:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_9

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v6, v1

    invoke-virtual {v6}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->createDeferredCDATASection(Ljava/lang/String;)I

    move-result v5

    move v3, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    move v7, v3

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    move-object v5, v0

    move v6, v3

    iput v6, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASectionIndex:I

    move-object v5, v0

    move v6, v3

    iput v6, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    goto/16 :goto_1

    :cond_9
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v6, v1

    invoke-virtual {v6}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->createDeferredTextNode(Ljava/lang/String;Z)I

    move-result v5

    move v3, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    move v7, v3

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    goto/16 :goto_1

    :cond_a
    move-object v5, v0

    iget-boolean v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInDTD:Z

    if-nez v5, :cond_1

    move-object v5, v1

    iget v5, v5, Lorg/apache/xerces/xni/XMLString;->length:I

    if-nez v5, :cond_b

    goto/16 :goto_0

    :cond_b
    move-object v5, v1

    invoke-virtual {v5}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v6, v3

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->createDeferredTextNode(Ljava/lang/String;Z)I

    move-result v5

    move v4, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    move v7, v4

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    goto/16 :goto_1
.end method

.method public comment(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    iget-boolean v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInDTD:Z

    if-eqz v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-boolean v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    if-nez v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string/jumbo v6, "<!--"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    move-object v5, v1

    iget v5, v5, Lorg/apache/xerces/xni/XMLString;->length:I

    if-lez v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    move-object v6, v1

    iget-object v6, v6, Lorg/apache/xerces/xni/XMLString;->ch:[C

    move-object v7, v1

    iget v7, v7, Lorg/apache/xerces/xni/XMLString;->offset:I

    move-object v8, v1

    iget v8, v8, Lorg/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {v5, v6, v7, v8}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move-result-object v5

    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string/jumbo v6, "-->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v5, v0

    iget-boolean v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fIncludeComments:Z

    if-eqz v5, :cond_3

    move-object v5, v0

    iget-boolean v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    if-eqz v5, :cond_4

    :cond_3
    goto :goto_0

    :cond_4
    move-object v5, v0

    iget-boolean v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez v5, :cond_6

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lorg/w3c/dom/Document;

    move-object v6, v1

    invoke-virtual {v6}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/w3c/dom/Document;->createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;

    move-result-object v5

    move-object v3, v5

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/apache/xerces/parsers/AbstractDOMParser;->setCharacterData(Z)V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v6, v3

    invoke-interface {v5, v6}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lorg/w3c/dom/ls/LSParserFilter;

    if-eqz v5, :cond_5

    move-object v5, v0

    iget-boolean v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInEntityRef:Z

    if-nez v5, :cond_5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lorg/w3c/dom/ls/LSParserFilter;

    invoke-interface {v5}, Lorg/w3c/dom/ls/LSParserFilter;->getWhatToShow()I

    move-result v5

    const/16 v6, 0x80

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lorg/w3c/dom/ls/LSParserFilter;

    move-object v6, v3

    invoke-interface {v5, v6}, Lorg/w3c/dom/ls/LSParserFilter;->acceptNode(Lorg/w3c/dom/Node;)S

    move-result v5

    move v4, v5

    move v5, v4

    packed-switch v5, :pswitch_data_0

    :cond_5
    :goto_1
    goto :goto_0

    :pswitch_0
    sget-object v5, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v5

    :pswitch_1
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v6, v3

    invoke-interface {v5, v6}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v5

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fFirstChunk:Z

    goto :goto_0

    :cond_6
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v6, v1

    invoke-virtual {v6}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->createDeferredComment(Ljava/lang/String;)I

    move-result v5

    move v3, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    move v7, v3

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected createAttrNode(Lorg/apache/xerces/xni/QName;)Lorg/w3c/dom/Attr;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x0

    move-object v2, v3

    move-object v3, v0

    iget-boolean v3, v3, Lorg/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v4, v1

    iget-object v4, v4, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object v5, v1

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v6, v1

    iget-object v6, v6, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lorg/apache/xerces/dom/CoreDocumentImpl;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v3

    move-object v2, v3

    :goto_0
    move-object v3, v2

    move-object v0, v3

    return-object v0

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lorg/w3c/dom/Document;

    move-object v4, v1

    iget-object v4, v4, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object v5, v1

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/Document;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lorg/w3c/dom/Document;

    move-object v4, v1

    iget-object v4, v4, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-interface {v3, v4}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v3

    move-object v2, v3

    goto :goto_0
.end method

.method protected createElementNode(Lorg/apache/xerces/xni/QName;)Lorg/w3c/dom/Element;
    .locals 7

    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x0

    move-object v2, v3

    move-object v3, v0

    iget-boolean v3, v3, Lorg/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v4, v1

    iget-object v4, v4, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object v5, v1

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v6, v1

    iget-object v6, v6, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lorg/apache/xerces/dom/CoreDocumentImpl;->createElementNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    move-object v2, v3

    :goto_0
    move-object v3, v2

    move-object v0, v3

    return-object v0

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lorg/w3c/dom/Document;

    move-object v4, v1

    iget-object v4, v4, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object v5, v1

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lorg/w3c/dom/Document;

    move-object v4, v1

    iget-object v4, v4, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-interface {v3, v4}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    move-object v2, v3

    goto :goto_0
.end method

.method public doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
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

    move-object v4, p4

    move-object v5, v0

    iget-boolean v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v5, :cond_0

    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-virtual {v6, v7, v8, v9}, Lorg/apache/xerces/dom/CoreDocumentImpl;->createDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/DocumentType;

    move-result-object v6

    iput-object v6, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lorg/w3c/dom/DocumentType;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lorg/w3c/dom/DocumentType;

    invoke-interface {v5, v6}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v5

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-virtual {v6, v7, v8, v9}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->createDeferredDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    goto :goto_0
.end method

.method public final dropDocumentReferences()V
    .locals 3

    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lorg/w3c/dom/Document;

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lorg/w3c/dom/DocumentType;

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASection:Lorg/w3c/dom/CDATASection;

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lorg/apache/xerces/dom/EntityImpl;

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/parsers/AbstractDOMParser;->fRoot:Lorg/w3c/dom/Node;

    return-void
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 6
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

    iget-object v4, v4, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    if-nez v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string/jumbo v5, "<!ELEMENT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string/jumbo v5, ">\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    :cond_0
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

    invoke-virtual {v4, v5, v6, v7}, Lorg/apache/xerces/parsers/AbstractDOMParser;->startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V

    move-object v4, v0

    move-object v5, v1

    move-object v6, v3

    invoke-virtual {v4, v5, v6}, Lorg/apache/xerces/parsers/AbstractDOMParser;->endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public endAttlist(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public endCDATA(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInCDATASection:Z

    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez v4, :cond_3

    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    if-eqz v4, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASection:Lorg/w3c/dom/CDATASection;

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lorg/w3c/dom/ls/LSParserFilter;

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInEntityRef:Z

    if-nez v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lorg/w3c/dom/ls/LSParserFilter;

    invoke-interface {v4}, Lorg/w3c/dom/ls/LSParserFilter;->getWhatToShow()I

    move-result v4

    const/16 v5, 0x8

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lorg/w3c/dom/ls/LSParserFilter;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASection:Lorg/w3c/dom/CDATASection;

    invoke-interface {v4, v5}, Lorg/w3c/dom/ls/LSParserFilter;->acceptNode(Lorg/w3c/dom/Node;)S

    move-result v4

    move v2, v4

    move v4, v2

    packed-switch v4, :pswitch_data_0

    :cond_1
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v5

    iput-object v5, v4, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v4, v0

    const/4 v5, 0x0

    iput-object v5, v4, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASection:Lorg/w3c/dom/CDATASection;

    :cond_2
    :goto_1
    goto :goto_0

    :pswitch_0
    sget-object v4, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v4

    :pswitch_1
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v3, v4

    move-object v4, v3

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASection:Lorg/w3c/dom/CDATASection;

    invoke-interface {v4, v5}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v4, v0

    move-object v5, v3

    iput-object v5, v4, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_3
    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASectionIndex:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getParentNode(IZ)I

    move-result v5

    iput v5, v4, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    move-object v4, v0

    const/4 v5, -0x1

    iput v5, v4, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASectionIndex:I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public endConditional(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public endDTD(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInDTD:Z

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/AbstractDOMParser;->fBaseURIStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/AbstractDOMParser;->fBaseURIStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    if-eqz v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    move-object v2, v3

    move-object v3, v0

    iget-boolean v3, v3, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-eqz v3, :cond_3

    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setInternalSubset(ILjava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v3, :cond_1

    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lorg/w3c/dom/DocumentType;

    check-cast v3, Lorg/apache/xerces/dom/DocumentTypeImpl;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lorg/apache/xerces/dom/DocumentTypeImpl;->setInternalSubset(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public endDocument(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/AbstractDOMParser;->fLocator:Lorg/apache/xerces/xni/XMLLocator;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/AbstractDOMParser;->fLocator:Lorg/apache/xerces/xni/XMLLocator;

    invoke-interface {v3}, Lorg/apache/xerces/xni/XMLLocator;->getEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/xerces/dom/CoreDocumentImpl;->setInputEncoding(Ljava/lang/String;)V

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lorg/apache/xerces/dom/CoreDocumentImpl;->setStrictErrorChecking(Z)V

    :cond_1
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    :goto_0
    return-void

    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/AbstractDOMParser;->fLocator:Lorg/apache/xerces/xni/XMLLocator;

    if-eqz v2, :cond_3

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/AbstractDOMParser;->fLocator:Lorg/apache/xerces/xni/XMLLocator;

    invoke-interface {v3}, Lorg/apache/xerces/xni/XMLLocator;->getEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setInputEncoding(Ljava/lang/String;)V

    :cond_3
    move-object v2, v0

    const/4 v3, -0x1

    iput v3, v2, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    goto :goto_0
.end method

.method public endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object v8, v0

    iget-boolean v8, v8, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez v8, :cond_a

    move-object v8, v2

    if-eqz v8, :cond_3

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v8, :cond_3

    move-object v8, v0

    iget-boolean v8, v8, Lorg/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    if-nez v8, :cond_0

    move-object v8, v0

    iget-boolean v8, v8, Lorg/apache/xerces/parsers/AbstractDOMParser;->fStorePSVI:Z

    if-eqz v8, :cond_3

    :cond_0
    move-object v8, v2

    const-string/jumbo v9, "ELEMENT_PSVI"

    invoke-interface {v8, v9}, Lorg/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/xerces/xs/ElementPSVI;

    move-object v3, v8

    move-object v8, v3

    if-eqz v8, :cond_3

    move-object v8, v0

    iget-boolean v8, v8, Lorg/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    if-eqz v8, :cond_2

    move-object v8, v3

    invoke-interface {v8}, Lorg/apache/xerces/xs/ElementPSVI;->getMemberTypeDefinition()Lorg/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v8

    move-object v4, v8

    move-object v8, v4

    if-nez v8, :cond_1

    move-object v8, v3

    invoke-interface {v8}, Lorg/apache/xerces/xs/ElementPSVI;->getTypeDefinition()Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object v8

    move-object v4, v8

    :cond_1
    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    check-cast v8, Lorg/apache/xerces/dom/ElementNSImpl;

    move-object v9, v4

    invoke-virtual {v8, v9}, Lorg/apache/xerces/dom/ElementNSImpl;->setType(Lorg/apache/xerces/xs/XSTypeDefinition;)V

    :cond_2
    move-object v8, v0

    iget-boolean v8, v8, Lorg/apache/xerces/parsers/AbstractDOMParser;->fStorePSVI:Z

    if-eqz v8, :cond_3

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    check-cast v8, Lorg/apache/xerces/dom/PSVIElementNSImpl;

    move-object v9, v3

    invoke-virtual {v8, v9}, Lorg/apache/xerces/dom/PSVIElementNSImpl;->setPSVI(Lorg/apache/xerces/xs/ElementPSVI;)V

    :cond_3
    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lorg/w3c/dom/ls/LSParserFilter;

    if-eqz v8, :cond_9

    move-object v8, v0

    iget-boolean v8, v8, Lorg/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    if-eqz v8, :cond_5

    move-object v8, v0

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    iget v9, v9, Lorg/apache/xerces/parsers/AbstractDOMParser;->fRejectedElementDepth:I

    move-object v12, v8

    move v13, v9

    move v8, v13

    move-object v9, v12

    move v10, v13

    const/4 v11, 0x1

    add-int/lit8 v10, v10, -0x1

    iput v10, v9, Lorg/apache/xerces/parsers/AbstractDOMParser;->fRejectedElementDepth:I

    if-nez v8, :cond_4

    move-object v8, v0

    const/4 v9, 0x0

    iput-boolean v9, v8, Lorg/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    :cond_4
    :goto_0
    return-void

    :cond_5
    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/parsers/AbstractDOMParser;->fSkippedElemStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_6

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/parsers/AbstractDOMParser;->fSkippedElemStack:Ljava/util/Stack;

    invoke-virtual {v8}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne v8, v9, :cond_6

    goto :goto_0

    :cond_6
    move-object v8, v0

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/apache/xerces/parsers/AbstractDOMParser;->setCharacterData(Z)V

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/AbstractDOMParser;->fRoot:Lorg/w3c/dom/Node;

    if-eq v8, v9, :cond_7

    move-object v8, v0

    iget-boolean v8, v8, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInEntityRef:Z

    if-nez v8, :cond_7

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lorg/w3c/dom/ls/LSParserFilter;

    invoke-interface {v8}, Lorg/w3c/dom/ls/LSParserFilter;->getWhatToShow()I

    move-result v8

    const/4 v9, 0x1

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_7

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lorg/w3c/dom/ls/LSParserFilter;

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {v8, v9}, Lorg/w3c/dom/ls/LSParserFilter;->acceptNode(Lorg/w3c/dom/Node;)S

    move-result v8

    move v3, v8

    move v8, v3

    packed-switch v8, :pswitch_data_0

    :cond_7
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v9

    iput-object v9, v8, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    :goto_1
    goto :goto_0

    :pswitch_0
    sget-object v8, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v8

    :pswitch_1
    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v8

    move-object v4, v8

    move-object v8, v4

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {v8, v9}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v8

    move-object v8, v0

    move-object v9, v4

    iput-object v9, v8, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    goto :goto_0

    :pswitch_2
    move-object v8, v0

    const/4 v9, 0x1

    iput-boolean v9, v8, Lorg/apache/xerces/parsers/AbstractDOMParser;->fFirstChunk:Z

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v8

    move-object v4, v8

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    move-object v5, v8

    move-object v8, v5

    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    move v6, v8

    const/4 v8, 0x0

    move v7, v8

    :goto_2
    move v8, v7

    move v9, v6

    if-lt v8, v9, :cond_8

    move-object v8, v4

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {v8, v9}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v8

    move-object v8, v0

    move-object v9, v4

    iput-object v9, v8, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    goto/16 :goto_0

    :cond_8
    move-object v8, v4

    move-object v9, v5

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_9
    move-object v8, v0

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/apache/xerces/parsers/AbstractDOMParser;->setCharacterData(Z)V

    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v9

    iput-object v9, v8, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    goto :goto_1

    :cond_a
    move-object v8, v2

    if-eqz v8, :cond_c

    move-object v8, v2

    const-string/jumbo v9, "ELEMENT_PSVI"

    invoke-interface {v8, v9}, Lorg/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/xerces/xs/ElementPSVI;

    move-object v3, v8

    move-object v8, v3

    if-eqz v8, :cond_c

    move-object v8, v3

    invoke-interface {v8}, Lorg/apache/xerces/xs/ElementPSVI;->getMemberTypeDefinition()Lorg/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v8

    move-object v4, v8

    move-object v8, v4

    if-nez v8, :cond_b

    move-object v8, v3

    invoke-interface {v8}, Lorg/apache/xerces/xs/ElementPSVI;->getTypeDefinition()Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object v8

    move-object v4, v8

    :cond_b
    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v9, v0

    iget v9, v9, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    move-object v10, v4

    invoke-virtual {v8, v9, v10}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setTypeInfo(ILjava/lang/Object;)V

    :cond_c
    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v10, v0

    iget v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getParentNode(IZ)I

    move-result v9

    iput v9, v8, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public endExternalSubset(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/AbstractDOMParser;->fBaseURIStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    return-void
.end method

.method public endGeneralEntity(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object v10, v0

    iget-boolean v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez v10, :cond_c

    move-object v10, v0

    iget-boolean v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    if-eqz v10, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v10, v0

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lorg/apache/xerces/parsers/AbstractDOMParser;->setCharacterData(Z)V

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lorg/w3c/dom/DocumentType;

    if-eqz v10, :cond_2

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lorg/w3c/dom/DocumentType;

    invoke-interface {v10}, Lorg/w3c/dom/DocumentType;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v10

    move-object v3, v10

    move-object v10, v0

    move-object v11, v3

    move-object v12, v1

    invoke-interface {v11, v12}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/apache/xerces/dom/EntityImpl;

    iput-object v11, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lorg/apache/xerces/dom/EntityImpl;

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lorg/apache/xerces/dom/EntityImpl;

    if-eqz v10, :cond_2

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lorg/apache/xerces/dom/EntityImpl;

    if-eqz v10, :cond_1

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lorg/apache/xerces/dom/EntityImpl;

    invoke-virtual {v10}, Lorg/apache/xerces/dom/EntityImpl;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v10

    if-nez v10, :cond_1

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lorg/apache/xerces/dom/EntityImpl;

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lorg/apache/xerces/dom/EntityImpl;->setReadOnly(ZZ)V

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v10

    move-object v4, v10

    :goto_1
    move-object v10, v4

    if-nez v10, :cond_8

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lorg/apache/xerces/dom/EntityImpl;

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lorg/apache/xerces/dom/EntityImpl;->setReadOnly(ZZ)V

    :cond_1
    move-object v10, v0

    const/4 v11, 0x0

    iput-object v11, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lorg/apache/xerces/dom/EntityImpl;

    :cond_2
    move-object v10, v0

    const/4 v11, 0x0

    iput-boolean v11, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInEntityRef:Z

    const/4 v10, 0x0

    move v3, v10

    move-object v10, v0

    iget-boolean v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCreateEntityRefNodes:Z

    if-eqz v10, :cond_4

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v10, :cond_3

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    check-cast v10, Lorg/apache/xerces/dom/NodeImpl;

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lorg/apache/xerces/dom/NodeImpl;->setReadOnly(ZZ)V

    :cond_3
    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lorg/w3c/dom/ls/LSParserFilter;

    if-eqz v10, :cond_9

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lorg/w3c/dom/ls/LSParserFilter;

    invoke-interface {v10}, Lorg/w3c/dom/ls/LSParserFilter;->getWhatToShow()I

    move-result v10

    const/16 v11, 0x10

    and-int/lit8 v10, v10, 0x10

    if-eqz v10, :cond_9

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lorg/w3c/dom/ls/LSParserFilter;

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {v10, v11}, Lorg/w3c/dom/ls/LSParserFilter;->acceptNode(Lorg/w3c/dom/Node;)S

    move-result v10

    move v4, v10

    move v10, v4

    packed-switch v10, :pswitch_data_0

    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v11

    iput-object v11, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    :cond_4
    :goto_2
    move-object v10, v0

    iget-boolean v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCreateEntityRefNodes:Z

    if-eqz v10, :cond_5

    move v10, v3

    if-eqz v10, :cond_7

    :cond_5
    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v10

    move-object v4, v10

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v10

    move-object v5, v10

    move-object v10, v4

    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    move v6, v10

    move v10, v6

    if-lez v10, :cond_6

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v10

    move-object v7, v10

    move-object v10, v4

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    move-object v8, v10

    move-object v10, v7

    if-eqz v10, :cond_a

    move-object v10, v7

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_a

    move-object v10, v8

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v10

    const/4 v11, 0x3

    if-ne v10, v11, :cond_a

    move-object v10, v7

    check-cast v10, Lorg/w3c/dom/Text;

    move-object v11, v8

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/w3c/dom/Text;->appendData(Ljava/lang/String;)V

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v11, v8

    invoke-interface {v10, v11}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v10

    :goto_3
    const/4 v10, 0x1

    move v9, v10

    :goto_4
    move v10, v9

    move v11, v6

    if-lt v10, v11, :cond_b

    :cond_6
    move-object v10, v5

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {v10, v11}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v10

    move-object v10, v0

    move-object v11, v5

    iput-object v11, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    :cond_7
    :goto_5
    goto/16 :goto_0

    :cond_8
    move-object v10, v4

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Lorg/w3c/dom/Node;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object v10

    move-object v5, v10

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lorg/apache/xerces/dom/EntityImpl;

    move-object v11, v5

    invoke-virtual {v10, v11}, Lorg/apache/xerces/dom/EntityImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v10

    move-object v10, v4

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v10

    move-object v4, v10

    goto/16 :goto_1

    :pswitch_0
    sget-object v10, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v10

    :pswitch_1
    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v10

    move-object v5, v10

    move-object v10, v5

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {v10, v11}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v10

    move-object v10, v0

    move-object v11, v5

    iput-object v11, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    goto/16 :goto_0

    :pswitch_2
    move-object v10, v0

    const/4 v11, 0x1

    iput-boolean v11, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fFirstChunk:Z

    const/4 v10, 0x1

    move v3, v10

    goto/16 :goto_2

    :cond_9
    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v11

    iput-object v11, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    goto/16 :goto_2

    :cond_a
    move-object v10, v5

    move-object v11, v8

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {v10, v11, v12}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v10

    move-object v7, v10

    move-object v10, v0

    move-object v11, v7

    invoke-virtual {v10, v11}, Lorg/apache/xerces/parsers/AbstractDOMParser;->handleBaseURI(Lorg/w3c/dom/Node;)V

    goto :goto_3

    :cond_b
    move-object v10, v5

    move-object v11, v4

    const/4 v12, 0x0

    invoke-interface {v11, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {v10, v11, v12}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v10

    move-object v7, v10

    move-object v10, v0

    move-object v11, v7

    invoke-virtual {v10, v11}, Lorg/apache/xerces/parsers/AbstractDOMParser;->handleBaseURI(Lorg/w3c/dom/Node;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_c
    move-object v10, v0

    iget v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_d

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v11, v0

    iget v11, v11, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result v10

    move v3, v10

    :goto_6
    move v10, v3

    const/4 v11, -0x1

    if-ne v10, v11, :cond_f

    :cond_d
    :goto_7
    move-object v10, v0

    iget v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredEntityDecl:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_e

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v11, v0

    iget v11, v11, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredEntityDecl:I

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_e

    const/4 v10, -0x1

    move v3, v10

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v11, v0

    iget v11, v11, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result v10

    move v4, v10

    :goto_8
    move v10, v4

    const/4 v11, -0x1

    if-ne v10, v11, :cond_11

    :cond_e
    move-object v10, v0

    iget-boolean v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCreateEntityRefNodes:Z

    if-eqz v10, :cond_12

    move-object v10, v0

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v12, v0

    iget v12, v12, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getParentNode(IZ)I

    move-result v11

    iput v11, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    :goto_9
    move-object v10, v0

    const/4 v11, -0x1

    iput v11, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredEntityDecl:I

    goto/16 :goto_5

    :cond_f
    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move v11, v3

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(IZ)S

    move-result v10

    move v4, v10

    move v10, v4

    const/4 v11, 0x6

    if-ne v10, v11, :cond_10

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move v11, v3

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(IZ)Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    move-object v10, v5

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    move-object v10, v0

    move v11, v3

    iput v11, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredEntityDecl:I

    goto :goto_7

    :cond_10
    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move v11, v3

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getRealPrevSibling(IZ)I

    move-result v10

    move v3, v10

    goto :goto_6

    :cond_11
    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move v11, v4

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->cloneNode(IZ)I

    move-result v10

    move v5, v10

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v11, v0

    iget v11, v11, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredEntityDecl:I

    move v12, v5

    move v13, v3

    invoke-virtual {v10, v11, v12, v13}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->insertBefore(III)I

    move-result v10

    move v10, v5

    move v3, v10

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move v11, v4

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getRealPrevSibling(IZ)I

    move-result v10

    move v4, v10

    goto :goto_8

    :cond_12
    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v11, v0

    iget v11, v11, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result v10

    move v3, v10

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v11, v0

    iget v11, v11, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getParentNode(IZ)I

    move-result v10

    move v4, v10

    move-object v10, v0

    iget v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    move v5, v10

    move v10, v3

    move v6, v10

    const/4 v10, -0x1

    move v7, v10

    :goto_a
    move v10, v3

    const/4 v11, -0x1

    if-ne v10, v11, :cond_13

    move v10, v6

    const/4 v11, -0x1

    if-eq v10, v11, :cond_14

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move v11, v4

    move v12, v6

    invoke-virtual {v10, v11, v12}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setAsLastChild(II)V

    :goto_b
    move-object v10, v0

    move v11, v4

    iput v11, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    goto/16 :goto_9

    :cond_13
    move-object v10, v0

    move v11, v3

    invoke-virtual {v10, v11}, Lorg/apache/xerces/parsers/AbstractDOMParser;->handleBaseURI(I)V

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move v11, v3

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getRealPrevSibling(IZ)I

    move-result v10

    move v7, v10

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move v11, v4

    move v12, v3

    move v13, v5

    invoke-virtual {v10, v11, v12, v13}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->insertBefore(III)I

    move-result v10

    move v10, v3

    move v5, v10

    move v10, v7

    move v3, v10

    goto :goto_a

    :cond_14
    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move v11, v5

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getRealPrevSibling(IZ)I

    move-result v10

    move v7, v10

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move v11, v4

    move v12, v7

    invoke-virtual {v10, v11, v12}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setAsLastChild(II)V

    goto :goto_b

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public endParameterEntity(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/AbstractDOMParser;->fBaseURIStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    return-void
.end method

.method public externalEntityDecl(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Lorg/apache/xerces/xni/Augmentations;)V
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

    move-object v10, v2

    invoke-interface {v10}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v10

    move-object v4, v10

    move-object v10, v2

    invoke-interface {v10}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    if-eqz v10, :cond_0

    move-object v10, v0

    iget-boolean v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    if-nez v10, :cond_0

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string/jumbo v11, "<!ENTITY "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    move-object v10, v1

    const-string/jumbo v11, "%"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string/jumbo v11, "% "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    move-object v11, v1

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    :goto_0
    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v10

    move-object v10, v4

    if-eqz v10, :cond_2

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string/jumbo v11, "PUBLIC \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    move-object v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string/jumbo v11, "\' \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    :goto_1
    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    move-object v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string/jumbo v11, "\'>\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    :cond_0
    move-object v10, v1

    const-string/jumbo v11, "%"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    :goto_2
    return-void

    :cond_1
    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    goto :goto_0

    :cond_2
    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string/jumbo v11, "SYSTEM \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    goto :goto_1

    :cond_3
    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lorg/w3c/dom/DocumentType;

    if-eqz v10, :cond_4

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lorg/w3c/dom/DocumentType;

    invoke-interface {v10}, Lorg/w3c/dom/DocumentType;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v10

    move-object v6, v10

    move-object v10, v6

    move-object v11, v1

    invoke-interface {v10, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/apache/xerces/dom/EntityImpl;

    move-object v7, v10

    move-object v10, v7

    if-nez v10, :cond_4

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v11, v1

    invoke-virtual {v10, v11}, Lorg/apache/xerces/dom/CoreDocumentImpl;->createEntity(Ljava/lang/String;)Lorg/w3c/dom/Entity;

    move-result-object v10

    check-cast v10, Lorg/apache/xerces/dom/EntityImpl;

    move-object v7, v10

    move-object v10, v7

    move-object v11, v4

    invoke-virtual {v10, v11}, Lorg/apache/xerces/dom/EntityImpl;->setPublicId(Ljava/lang/String;)V

    move-object v10, v7

    move-object v11, v5

    invoke-virtual {v10, v11}, Lorg/apache/xerces/dom/EntityImpl;->setSystemId(Ljava/lang/String;)V

    move-object v10, v7

    move-object v11, v2

    invoke-interface {v11}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/apache/xerces/dom/EntityImpl;->setBaseURI(Ljava/lang/String;)V

    move-object v10, v6

    move-object v11, v7

    invoke-interface {v10, v11}, Lorg/w3c/dom/NamedNodeMap;->setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v10

    :cond_4
    move-object v10, v0

    iget v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_5

    const/4 v10, 0x0

    move v6, v10

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v11, v0

    iget v11, v11, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result v10

    move v7, v10

    :goto_3
    move v10, v7

    const/4 v11, -0x1

    if-ne v10, v11, :cond_6

    :goto_4
    move v10, v6

    if-nez v10, :cond_5

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v11, v1

    move-object v12, v4

    move-object v13, v5

    const/4 v14, 0x0

    move-object v15, v2

    invoke-interface {v15}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {v10 .. v15}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->createDeferredEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    move v8, v10

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v11, v0

    iget v11, v11, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    move v12, v8

    invoke-virtual {v10, v11, v12}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    :cond_5
    goto/16 :goto_2

    :cond_6
    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move v11, v7

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(IZ)S

    move-result v10

    move v8, v10

    move v10, v8

    const/4 v11, 0x6

    if-ne v10, v11, :cond_7

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move v11, v7

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(IZ)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    move-object v10, v9

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v10, 0x1

    move v6, v10

    goto :goto_4

    :cond_7
    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move v11, v7

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getRealPrevSibling(IZ)I

    move-result v10

    move v7, v10

    goto :goto_3
.end method

.method public getDocument()Lorg/w3c/dom/Document;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lorg/w3c/dom/Document;

    move-object v0, v1

    return-object v0
.end method

.method protected getDocumentClassName()Ljava/lang/String;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentClassName:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method protected final handleBaseURI(I)V
    .locals 12

    move-object v0, p0

    move v1, p1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move v6, v1

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(IZ)S

    move-result v5

    move v2, v5

    move v5, v2

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeValueString(IZ)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    move-object v5, v3

    if-nez v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredEntityDecl:I

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getDeferredEntityBaseURI(I)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    :cond_0
    move-object v5, v3

    if-eqz v5, :cond_1

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v6}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getDocumentURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move v6, v1

    const-string/jumbo v7, "xml:base"

    const-string/jumbo v8, "http://www.w3.org/XML/1998/namespace"

    move-object v9, v3

    const/4 v10, 0x1

    invoke-virtual/range {v5 .. v10}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setDeferredAttribute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v5

    :cond_1
    :goto_0
    return-void

    :cond_2
    move v5, v2

    const/4 v6, 0x7

    if-ne v5, v6, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeValueString(IZ)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    move-object v5, v3

    if-nez v5, :cond_3

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v6, v0

    iget v6, v6, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredEntityDecl:I

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getDeferredEntityBaseURI(I)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    :cond_3
    move-object v5, v3

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fErrorHandler:Lorg/apache/xerces/util/DOMErrorHandlerWrapper;

    if-eqz v5, :cond_1

    new-instance v5, Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    invoke-direct {v6}, Lorg/apache/xerces/dom/DOMErrorImpl;-><init>()V

    move-object v4, v5

    move-object v5, v4

    const-string/jumbo v6, "pi-base-uri-not-preserved"

    iput-object v6, v5, Lorg/apache/xerces/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Lorg/apache/xerces/dom/DOMErrorImpl;->fRelatedData:Ljava/lang/Object;

    move-object v5, v4

    const/4 v6, 0x1

    iput-short v6, v5, Lorg/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fErrorHandler:Lorg/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-virtual {v5}, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->getErrorHandler()Lorg/w3c/dom/DOMErrorHandler;

    move-result-object v5

    move-object v6, v4

    invoke-interface {v5, v6}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    move-result v5

    goto :goto_0
.end method

.method protected final handleBaseURI(Lorg/w3c/dom/Node;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    move-object v2, v5

    move-object v5, v1

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    move v3, v5

    move v5, v3

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    move-object v5, v0

    iget-boolean v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    if-eqz v5, :cond_0

    move-object v5, v1

    check-cast v5, Lorg/w3c/dom/Element;

    const-string/jumbo v6, "http://www.w3.org/XML/1998/namespace"

    const-string/jumbo v7, "base"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Element;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v5

    if-eqz v5, :cond_1

    :goto_0
    return-void

    :cond_0
    move-object v5, v1

    check-cast v5, Lorg/w3c/dom/Element;

    const-string/jumbo v6, "xml:base"

    invoke-interface {v5, v6}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    check-cast v5, Lorg/apache/xerces/dom/EntityReferenceImpl;

    invoke-virtual {v5}, Lorg/apache/xerces/dom/EntityReferenceImpl;->getBaseURI()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    move-object v5, v2

    if-eqz v5, :cond_2

    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v6}, Lorg/apache/xerces/dom/CoreDocumentImpl;->getDocumentURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    move-object v5, v0

    iget-boolean v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    if-eqz v5, :cond_3

    move-object v5, v1

    check-cast v5, Lorg/w3c/dom/Element;

    const-string/jumbo v6, "http://www.w3.org/XML/1998/namespace"

    const-string/jumbo v7, "xml:base"

    move-object v8, v2

    invoke-interface {v5, v6, v7, v8}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    goto :goto_0

    :cond_3
    move-object v5, v1

    check-cast v5, Lorg/w3c/dom/Element;

    const-string/jumbo v6, "xml:base"

    move-object v7, v2

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move v5, v3

    const/4 v6, 0x7

    if-ne v5, v6, :cond_2

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    check-cast v5, Lorg/apache/xerces/dom/EntityReferenceImpl;

    invoke-virtual {v5}, Lorg/apache/xerces/dom/EntityReferenceImpl;->getBaseURI()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    move-object v5, v2

    if-eqz v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fErrorHandler:Lorg/apache/xerces/util/DOMErrorHandlerWrapper;

    if-eqz v5, :cond_2

    new-instance v5, Lorg/apache/xerces/dom/DOMErrorImpl;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Lorg/apache/xerces/dom/DOMErrorImpl;-><init>()V

    move-object v4, v5

    move-object v5, v4

    const-string/jumbo v6, "pi-base-uri-not-preserved"

    iput-object v6, v5, Lorg/apache/xerces/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    move-object v5, v4

    move-object v6, v2

    iput-object v6, v5, Lorg/apache/xerces/dom/DOMErrorImpl;->fRelatedData:Ljava/lang/Object;

    move-object v5, v4

    const/4 v6, 0x1

    iput-short v6, v5, Lorg/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fErrorHandler:Lorg/apache/xerces/util/DOMErrorHandlerWrapper;

    invoke-virtual {v5}, Lorg/apache/xerces/util/DOMErrorHandlerWrapper;->getErrorHandler()Lorg/w3c/dom/DOMErrorHandler;

    move-result-object v5

    move-object v6, v4

    invoke-interface {v5, v6}, Lorg/w3c/dom/DOMErrorHandler;->handleError(Lorg/w3c/dom/DOMError;)Z

    move-result v5

    goto :goto_1
.end method

.method public ignorableWhitespace(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    iget-boolean v6, v6, Lorg/apache/xerces/parsers/AbstractDOMParser;->fIncludeIgnorableWhitespace:Z

    if-eqz v6, :cond_0

    move-object v6, v0

    iget-boolean v6, v6, Lorg/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v6, v0

    iget-boolean v6, v6, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez v6, :cond_4

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v3, v6

    move-object v6, v3

    if-eqz v6, :cond_2

    move-object v6, v3

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    move-object v6, v3

    check-cast v6, Lorg/w3c/dom/Text;

    move-object v4, v6

    move-object v6, v4

    move-object v7, v1

    invoke-virtual {v7}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/w3c/dom/Text;->appendData(Ljava/lang/String;)V

    :goto_1
    goto :goto_0

    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lorg/w3c/dom/Document;

    move-object v7, v1

    invoke-virtual {v7}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v6

    move-object v4, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v6, :cond_3

    move-object v6, v4

    check-cast v6, Lorg/apache/xerces/dom/TextImpl;

    move-object v5, v6

    move-object v6, v5

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lorg/apache/xerces/dom/TextImpl;->setIgnorableWhitespace(Z)V

    :cond_3
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v7, v4

    invoke-interface {v6, v7}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v6

    goto :goto_1

    :cond_4
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v7, v1

    invoke-virtual {v7}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->createDeferredTextNode(Ljava/lang/String;Z)I

    move-result v6

    move v3, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    move v8, v3

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    goto :goto_1
.end method

.method public ignoredCharacters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public internalEntityDecl(Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    if-eqz v9, :cond_0

    move-object v9, v0

    iget-boolean v9, v9, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    if-nez v9, :cond_0

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string/jumbo v10, "<!ENTITY "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    move-object v9, v1

    const-string/jumbo v10, "%"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string/jumbo v10, "% "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    move-object v10, v1

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    :goto_0
    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 v10, 0x20

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    move-object v9, v3

    invoke-virtual {v9}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    move-object v9, v5

    const/16 v10, 0x27

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_2

    const/4 v9, 0x1

    :goto_1
    move v6, v9

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    move v10, v6

    if-eqz v10, :cond_3

    const/16 v10, 0x27

    :goto_2
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    move v10, v6

    if-eqz v10, :cond_4

    const/16 v10, 0x27

    :goto_3
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v9

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string/jumbo v10, ">\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    :cond_0
    move-object v9, v1

    const-string/jumbo v10, "%"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    :goto_4
    return-void

    :cond_1
    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    goto :goto_0

    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    :cond_3
    const/16 v10, 0x22

    goto :goto_2

    :cond_4
    const/16 v10, 0x22

    goto :goto_3

    :cond_5
    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lorg/w3c/dom/DocumentType;

    if-eqz v9, :cond_6

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lorg/w3c/dom/DocumentType;

    invoke-interface {v9}, Lorg/w3c/dom/DocumentType;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    move-object v5, v9

    move-object v9, v5

    move-object v10, v1

    invoke-interface {v9, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/apache/xerces/dom/EntityImpl;

    move-object v6, v9

    move-object v9, v6

    if-nez v9, :cond_6

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v10, v1

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/CoreDocumentImpl;->createEntity(Ljava/lang/String;)Lorg/w3c/dom/Entity;

    move-result-object v9

    check-cast v9, Lorg/apache/xerces/dom/EntityImpl;

    move-object v6, v9

    move-object v9, v6

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fBaseURIStack:Ljava/util/Stack;

    invoke-virtual {v10}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/EntityImpl;->setBaseURI(Ljava/lang/String;)V

    move-object v9, v5

    move-object v10, v6

    invoke-interface {v9, v10}, Lorg/w3c/dom/NamedNodeMap;->setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v9

    :cond_6
    move-object v9, v0

    iget v9, v9, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_7

    const/4 v9, 0x0

    move v5, v9

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v10, v0

    iget v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result v9

    move v6, v9

    :goto_5
    move v9, v6

    const/4 v10, -0x1

    if-ne v9, v10, :cond_8

    :goto_6
    move v9, v5

    if-nez v9, :cond_7

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v10, v1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v14, v0

    iget-object v14, v14, Lorg/apache/xerces/parsers/AbstractDOMParser;->fBaseURIStack:Ljava/util/Stack;

    invoke-virtual {v14}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual/range {v9 .. v14}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->createDeferredEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    move v7, v9

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v10, v0

    iget v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    move v11, v7

    invoke-virtual {v9, v10, v11}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    :cond_7
    goto/16 :goto_4

    :cond_8
    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move v10, v6

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(IZ)S

    move-result v9

    move v7, v9

    move v9, v7

    const/4 v10, 0x6

    if-ne v9, v10, :cond_9

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move v10, v6

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(IZ)Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    move-object v9, v8

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v9, 0x1

    move v5, v9

    goto :goto_6

    :cond_9
    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move v10, v6

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getRealPrevSibling(IZ)I

    move-result v9

    move v6, v9

    goto :goto_5
.end method

.method public notationDecl(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v10, v2

    invoke-interface {v10}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v10

    move-object v4, v10

    move-object v10, v2

    invoke-interface {v10}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    if-eqz v10, :cond_1

    move-object v10, v0

    iget-boolean v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    if-nez v10, :cond_1

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string/jumbo v11, "<!NOTATION "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    move-object v10, v4

    if-eqz v10, :cond_4

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string/jumbo v11, " PUBLIC \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    move-object v11, v4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    move-object v10, v5

    if-eqz v10, :cond_0

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string/jumbo v11, "\' \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    move-object v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    :cond_0
    :goto_0
    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string/jumbo v11, "\'>\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    :cond_1
    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v10, :cond_2

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lorg/w3c/dom/DocumentType;

    if-eqz v10, :cond_2

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lorg/w3c/dom/DocumentType;

    invoke-interface {v10}, Lorg/w3c/dom/DocumentType;->getNotations()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v10

    move-object v6, v10

    move-object v10, v6

    move-object v11, v1

    invoke-interface {v10, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    if-nez v10, :cond_2

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v11, v1

    invoke-virtual {v10, v11}, Lorg/apache/xerces/dom/CoreDocumentImpl;->createNotation(Ljava/lang/String;)Lorg/w3c/dom/Notation;

    move-result-object v10

    check-cast v10, Lorg/apache/xerces/dom/NotationImpl;

    move-object v7, v10

    move-object v10, v7

    move-object v11, v4

    invoke-virtual {v10, v11}, Lorg/apache/xerces/dom/NotationImpl;->setPublicId(Ljava/lang/String;)V

    move-object v10, v7

    move-object v11, v5

    invoke-virtual {v10, v11}, Lorg/apache/xerces/dom/NotationImpl;->setSystemId(Ljava/lang/String;)V

    move-object v10, v7

    move-object v11, v2

    invoke-interface {v11}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/apache/xerces/dom/NotationImpl;->setBaseURI(Ljava/lang/String;)V

    move-object v10, v6

    move-object v11, v7

    invoke-interface {v10, v11}, Lorg/w3c/dom/NamedNodeMap;->setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v10

    :cond_2
    move-object v10, v0

    iget v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_3

    const/4 v10, 0x0

    move v6, v10

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v11, v0

    iget v11, v11, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result v10

    move v7, v10

    :goto_1
    move v10, v7

    const/4 v11, -0x1

    if-ne v10, v11, :cond_5

    :goto_2
    move v10, v6

    if-nez v10, :cond_3

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v11, v1

    move-object v12, v4

    move-object v13, v5

    move-object v14, v2

    invoke-interface {v14}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v11, v12, v13, v14}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->createDeferredNotation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    move v8, v10

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v11, v0

    iget v11, v11, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    move v12, v8

    invoke-virtual {v10, v11, v12}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    :cond_3
    return-void

    :cond_4
    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string/jumbo v11, " SYSTEM \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    move-object v11, v5

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    goto/16 :goto_0

    :cond_5
    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move v11, v7

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(IZ)S

    move-result v10

    move v8, v10

    move v10, v8

    const/16 v11, 0xc

    if-ne v10, v11, :cond_6

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move v11, v7

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(IZ)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    move-object v10, v9

    move-object v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v10, 0x1

    move v6, v10

    goto :goto_2

    :cond_6
    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move v11, v7

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getPrevSibling(IZ)I

    move-result v10

    move v7, v10

    goto :goto_1
.end method

.method public processingInstruction(Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
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

    move-object v6, v0

    iget-boolean v6, v6, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInDTD:Z

    if-eqz v6, :cond_2

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    if-eqz v6, :cond_1

    move-object v6, v0

    iget-boolean v6, v6, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    if-nez v6, :cond_1

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string/jumbo v7, "<?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    move-object v6, v2

    iget v6, v6, Lorg/apache/xerces/xni/XMLString;->length:I

    if-lez v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    move-object v7, v2

    iget-object v7, v7, Lorg/apache/xerces/xni/XMLString;->ch:[C

    move-object v8, v2

    iget v8, v8, Lorg/apache/xerces/xni/XMLString;->offset:I

    move-object v9, v2

    iget v9, v9, Lorg/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {v6, v7, v8, v9}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    move-result-object v6

    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string/jumbo v7, "?>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v6, v0

    iget-boolean v6, v6, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez v6, :cond_5

    move-object v6, v0

    iget-boolean v6, v6, Lorg/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    if-eqz v6, :cond_3

    goto :goto_0

    :cond_3
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lorg/w3c/dom/Document;

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v8}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object v6

    move-object v4, v6

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lorg/apache/xerces/parsers/AbstractDOMParser;->setCharacterData(Z)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v7, v4

    invoke-interface {v6, v7}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lorg/w3c/dom/ls/LSParserFilter;

    if-eqz v6, :cond_4

    move-object v6, v0

    iget-boolean v6, v6, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInEntityRef:Z

    if-nez v6, :cond_4

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lorg/w3c/dom/ls/LSParserFilter;

    invoke-interface {v6}, Lorg/w3c/dom/ls/LSParserFilter;->getWhatToShow()I

    move-result v6

    const/16 v7, 0x40

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_4

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lorg/w3c/dom/ls/LSParserFilter;

    move-object v7, v4

    invoke-interface {v6, v7}, Lorg/w3c/dom/ls/LSParserFilter;->acceptNode(Lorg/w3c/dom/Node;)S

    move-result v6

    move v5, v6

    move v6, v5

    packed-switch v6, :pswitch_data_0

    :cond_4
    :goto_1
    goto :goto_0

    :pswitch_0
    sget-object v6, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v6

    :pswitch_1
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v7, v4

    invoke-interface {v6, v7}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v6

    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Lorg/apache/xerces/parsers/AbstractDOMParser;->fFirstChunk:Z

    goto :goto_0

    :cond_5
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v8}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->createDeferredProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move v4, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v7, v0

    iget v7, v7, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    move v8, v4

    invoke-virtual {v6, v7, v8}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Lorg/apache/xerces/parsers/AbstractXMLDocumentParser;->reset()V

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v3, "http://apache.org/xml/features/dom/create-entity-ref-nodes"

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCreateEntityRefNodes:Z

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v3, "http://apache.org/xml/features/dom/include-ignorable-whitespace"

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lorg/apache/xerces/parsers/AbstractDOMParser;->fIncludeIgnorableWhitespace:Z

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v3, "http://apache.org/xml/features/dom/defer-node-expansion"

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v3, "http://xml.org/sax/features/namespaces"

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lorg/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v3, "http://apache.org/xml/features/include-comments"

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lorg/apache/xerces/parsers/AbstractDOMParser;->fIncludeComments:Z

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v3, "http://apache.org/xml/features/create-cdata-nodes"

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCreateCDATANodes:Z

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v3, "http://apache.org/xml/properties/dom/document-class-name"

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/apache/xerces/parsers/AbstractDOMParser;->setDocumentClassName(Ljava/lang/String;)V

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lorg/w3c/dom/Document;

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xerces/parsers/AbstractDOMParser;->fStorePSVI:Z

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lorg/w3c/dom/DocumentType;

    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/AbstractDOMParser;->fStringBuffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/parsers/AbstractDOMParser;->fRoot:Lorg/w3c/dom/Node;

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInDTD:Z

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInCDATASection:Z

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xerces/parsers/AbstractDOMParser;->fFirstChunk:Z

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASection:Lorg/w3c/dom/CDATASection;

    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentCDATASectionIndex:I

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/AbstractDOMParser;->fBaseURIStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->removeAllElements()V

    return-void
.end method

.method protected setCharacterData(Z)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-object v4, v0

    move v5, v1

    iput-boolean v5, v4, Lorg/apache/xerces/parsers/AbstractDOMParser;->fFirstChunk:Z

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v4

    move-object v2, v4

    move-object v4, v2

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/AbstractDOMParser;->fStringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-lez v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v4, :cond_3

    move-object v4, v2

    check-cast v4, Lorg/apache/xerces/dom/TextImpl;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fStringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/TextImpl;->replaceData(Ljava/lang/String;)V

    :cond_0
    :goto_0
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/AbstractDOMParser;->fStringBuffer:Ljava/lang/StringBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lorg/w3c/dom/ls/LSParserFilter;

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInEntityRef:Z

    if-nez v4, :cond_2

    move-object v4, v2

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lorg/w3c/dom/ls/LSParserFilter;

    invoke-interface {v4}, Lorg/w3c/dom/ls/LSParserFilter;->getWhatToShow()I

    move-result v4

    const/4 v5, 0x4

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lorg/w3c/dom/ls/LSParserFilter;

    move-object v5, v2

    invoke-interface {v4, v5}, Lorg/w3c/dom/ls/LSParserFilter;->acceptNode(Lorg/w3c/dom/Node;)S

    move-result v4

    move v3, v4

    move v4, v3

    packed-switch v4, :pswitch_data_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    move-object v4, v2

    check-cast v4, Lorg/w3c/dom/Text;

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fStringBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/w3c/dom/Text;->setData(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    sget-object v4, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v4

    :pswitch_1
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v5, v2

    invoke-interface {v4, v5}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v4

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected setDocumentClassName(Ljava/lang/String;)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    if-nez v3, :cond_0

    const-string/jumbo v3, "org.apache.xerces.dom.DocumentImpl"

    move-object v1, v3

    :cond_0
    move-object v3, v1

    const-string/jumbo v4, "org.apache.xerces.dom.DocumentImpl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object v3, v1

    const-string/jumbo v4, "org.apache.xerces.dom.PSVIDocumentImpl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move-object v3, v1

    :try_start_0
    invoke-static {}, Lorg/apache/xerces/parsers/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lorg/apache/xerces/parsers/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v3

    move-object v2, v3

    sget-object v3, Lorg/apache/xerces/parsers/AbstractDOMParser;->class$org$w3c$dom$Document:Ljava/lang/Class;

    if-nez v3, :cond_1

    const-string/jumbo v3, "org.w3c.dom.Document"

    invoke-static {v3}, Lorg/apache/xerces/parsers/AbstractDOMParser;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    sput-object v4, Lorg/apache/xerces/parsers/AbstractDOMParser;->class$org$w3c$dom$Document:Ljava/lang/Class;

    :goto_0
    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v6, "InvalidDocumentClassName"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v1

    aput-object v10, v8, v9

    invoke-static {v5, v6, v7}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v3

    move-object v2, v3

    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v6, "MissingDocumentClassName"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    move-object v10, v1

    aput-object v10, v8, v9

    invoke-static {v5, v6, v7}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    :try_start_1
    sget-object v3, Lorg/apache/xerces/parsers/AbstractDOMParser;->class$org$w3c$dom$Document:Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_2
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentClassName:Ljava/lang/String;

    move-object v3, v1

    const-string/jumbo v4, "org.apache.xerces.dom.DocumentImpl"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    :cond_3
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/AbstractDOMParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object v3, v1

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public startAttlist(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public startCDATA(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInCDATASection:Z

    move-object v2, v0

    iget-boolean v2, v2, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez v2, :cond_1

    move-object v2, v0

    iget-boolean v2, v2, Lorg/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v2, v0

    iget-boolean v2, v2, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCreateCDATANodes:Z

    if-eqz v2, :cond_1

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/xerces/parsers/AbstractDOMParser;->setCharacterData(Z)V

    :cond_1
    goto :goto_0
.end method

.method public startConditional(SLorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public startDTD(Lorg/apache/xerces/xni/XMLLocator;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 8
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

    iput-boolean v4, v3, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInDTD:Z

    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/AbstractDOMParser;->fBaseURIStack:Ljava/util/Stack;

    move-object v4, v1

    invoke-interface {v4}, Lorg/apache/xerces/xni/XMLLocator;->getBaseSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    :cond_0
    move-object v3, v0

    iget-boolean v3, v3, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v3, :cond_2

    :cond_1
    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuffer;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const/16 v6, 0x400

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v4, v3, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    :cond_2
    return-void
.end method

.method public startDocument(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lorg/apache/xerces/xni/NamespaceContext;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v10, v1

    move-object v11, v2

    iput-object v11, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fLocator:Lorg/apache/xerces/xni/XMLLocator;

    move-object v10, v1

    iget-boolean v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez v10, :cond_4

    move-object v10, v1

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentClassName:Ljava/lang/String;

    const-string/jumbo v11, "org.apache.xerces.dom.DocumentImpl"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v10, v1

    new-instance v11, Lorg/apache/xerces/dom/DocumentImpl;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    invoke-direct {v12}, Lorg/apache/xerces/dom/DocumentImpl;-><init>()V

    iput-object v11, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lorg/w3c/dom/Document;

    move-object v10, v1

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lorg/w3c/dom/Document;

    check-cast v11, Lorg/apache/xerces/dom/CoreDocumentImpl;

    iput-object v11, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v10, v1

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lorg/apache/xerces/dom/CoreDocumentImpl;->setStrictErrorChecking(Z)V

    move-object v10, v1

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v11, v3

    invoke-virtual {v10, v11}, Lorg/apache/xerces/dom/CoreDocumentImpl;->setInputEncoding(Ljava/lang/String;)V

    move-object v10, v1

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v11, v2

    invoke-interface {v11}, Lorg/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/apache/xerces/dom/CoreDocumentImpl;->setDocumentURI(Ljava/lang/String;)V

    :goto_0
    move-object v10, v1

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lorg/w3c/dom/Document;

    iput-object v11, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    :goto_1
    return-void

    :cond_0
    move-object v10, v1

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentClassName:Ljava/lang/String;

    const-string/jumbo v11, "org.apache.xerces.dom.PSVIDocumentImpl"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    move-object v10, v1

    new-instance v11, Lorg/apache/xerces/dom/PSVIDocumentImpl;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    invoke-direct {v12}, Lorg/apache/xerces/dom/PSVIDocumentImpl;-><init>()V

    iput-object v11, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lorg/w3c/dom/Document;

    move-object v10, v1

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lorg/w3c/dom/Document;

    check-cast v11, Lorg/apache/xerces/dom/CoreDocumentImpl;

    iput-object v11, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v10, v1

    const/4 v11, 0x1

    iput-boolean v11, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fStorePSVI:Z

    move-object v10, v1

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lorg/apache/xerces/dom/CoreDocumentImpl;->setStrictErrorChecking(Z)V

    move-object v10, v1

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v11, v3

    invoke-virtual {v10, v11}, Lorg/apache/xerces/dom/CoreDocumentImpl;->setInputEncoding(Ljava/lang/String;)V

    move-object v10, v1

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v11, v2

    invoke-interface {v11}, Lorg/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/apache/xerces/dom/CoreDocumentImpl;->setDocumentURI(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {}, Lorg/apache/xerces/parsers/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    move-object v6, v10

    move-object v10, v1

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentClassName:Ljava/lang/String;

    move-object v11, v6

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lorg/apache/xerces/parsers/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v10

    move-object v7, v10

    move-object v10, v1

    move-object v11, v7

    invoke-virtual {v11}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Document;

    iput-object v11, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lorg/w3c/dom/Document;

    const-string/jumbo v10, "org.apache.xerces.dom.CoreDocumentImpl"

    move-object v11, v6

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lorg/apache/xerces/parsers/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v10

    move-object v8, v10

    move-object v10, v8

    move-object v11, v7

    invoke-virtual {v10, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v10, v1

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lorg/w3c/dom/Document;

    check-cast v11, Lorg/apache/xerces/dom/CoreDocumentImpl;

    iput-object v11, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    const-string/jumbo v10, "org.apache.xerces.dom.PSVIDocumentImpl"

    move-object v11, v6

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Lorg/apache/xerces/parsers/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v10

    move-object v9, v10

    move-object v10, v9

    move-object v11, v7

    invoke-virtual {v10, v11}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v10, v1

    const/4 v11, 0x1

    iput-boolean v11, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fStorePSVI:Z

    :cond_2
    move-object v10, v1

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lorg/apache/xerces/dom/CoreDocumentImpl;->setStrictErrorChecking(Z)V

    move-object v10, v1

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v11, v3

    invoke-virtual {v10, v11}, Lorg/apache/xerces/dom/CoreDocumentImpl;->setInputEncoding(Ljava/lang/String;)V

    move-object v10, v2

    if-eqz v10, :cond_3

    move-object v10, v1

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v11, v2

    invoke-interface {v11}, Lorg/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/apache/xerces/dom/CoreDocumentImpl;->setDocumentURI(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    goto/16 :goto_0

    :catch_0
    move-exception v10

    move-object v6, v10

    goto/16 :goto_0

    :catch_1
    move-exception v10

    move-object v7, v10

    new-instance v10, Ljava/lang/RuntimeException;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    const-string/jumbo v12, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v13, "CannotCreateDocumentClass"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    move-object/from16 v18, v14

    move-object/from16 v14, v18

    move-object/from16 v15, v18

    const/16 v16, 0x0

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentClassName:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    invoke-static {v12, v13, v14}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    :cond_4
    move-object v10, v1

    new-instance v11, Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object/from16 v18, v11

    move-object/from16 v11, v18

    move-object/from16 v12, v18

    move-object v13, v1

    iget-boolean v13, v13, Lorg/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    invoke-direct {v12, v13}, Lorg/apache/xerces/dom/DeferredDocumentImpl;-><init>(Z)V

    iput-object v11, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v10, v1

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    iput-object v11, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lorg/w3c/dom/Document;

    move-object v10, v1

    move-object v11, v1

    iget-object v11, v11, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    invoke-virtual {v11}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->createDeferredDocument()I

    move-result v11

    iput v11, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentIndex:I

    move-object v10, v1

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v11, v3

    invoke-virtual {v10, v11}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setInputEncoding(Ljava/lang/String;)V

    move-object v10, v1

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v11, v2

    invoke-interface {v11}, Lorg/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setDocumentURI(Ljava/lang/String;)V

    move-object v10, v1

    move-object v11, v1

    iget v11, v11, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentIndex:I

    iput v11, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    goto/16 :goto_1
.end method

.method public startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    move/from16 v18, v0

    if-nez v18, :cond_f

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lorg/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v18, v2

    move-object/from16 v26, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v26

    move-object/from16 v0, v19

    iget v0, v0, Lorg/apache/xerces/parsers/AbstractDOMParser;->fRejectedElementDepth:I

    move/from16 v19, v0

    const/16 v20, 0x1

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lorg/apache/xerces/parsers/AbstractDOMParser;->fRejectedElementDepth:I

    :goto_0
    return-void

    :cond_0
    move-object/from16 v18, v2

    move-object/from16 v19, v3

    invoke-virtual/range {v18 .. v19}, Lorg/apache/xerces/parsers/AbstractDOMParser;->createElementNode(Lorg/apache/xerces/xni/QName;)Lorg/w3c/dom/Element;

    move-result-object v18

    move-object/from16 v6, v18

    move-object/from16 v18, v4

    invoke-interface/range {v18 .. v18}, Lorg/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v18

    move/from16 v7, v18

    const/16 v18, 0x0

    move/from16 v8, v18

    const/16 v18, 0x0

    move/from16 v9, v18

    :goto_1
    move/from16 v18, v9

    move/from16 v19, v7

    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_4

    move-object/from16 v18, v2

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lorg/apache/xerces/parsers/AbstractDOMParser;->setCharacterData(Z)V

    move-object/from16 v18, v5

    if-eqz v18, :cond_2

    move-object/from16 v18, v5

    const-string/jumbo v19, "ELEMENT_PSVI"

    invoke-interface/range {v18 .. v19}, Lorg/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/xerces/xs/ElementPSVI;

    move-object/from16 v10, v18

    move-object/from16 v18, v10

    if-eqz v18, :cond_2

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lorg/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v18, v10

    invoke-interface/range {v18 .. v18}, Lorg/apache/xerces/xs/ElementPSVI;->getMemberTypeDefinition()Lorg/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v18

    move-object/from16 v11, v18

    move-object/from16 v18, v11

    if-nez v18, :cond_1

    move-object/from16 v18, v10

    invoke-interface/range {v18 .. v18}, Lorg/apache/xerces/xs/ElementPSVI;->getTypeDefinition()Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object v18

    move-object/from16 v11, v18

    :cond_1
    move-object/from16 v18, v6

    check-cast v18, Lorg/apache/xerces/dom/ElementNSImpl;

    move-object/from16 v19, v11

    invoke-virtual/range {v18 .. v19}, Lorg/apache/xerces/dom/ElementNSImpl;->setType(Lorg/apache/xerces/xs/XSTypeDefinition;)V

    :cond_2
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lorg/w3c/dom/ls/LSParserFilter;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInEntityRef:Z

    move/from16 v18, v0

    if-nez v18, :cond_3

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/xerces/parsers/AbstractDOMParser;->fRoot:Lorg/w3c/dom/Node;

    move-object/from16 v18, v0

    if-nez v18, :cond_e

    move-object/from16 v18, v2

    move-object/from16 v19, v6

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lorg/apache/xerces/parsers/AbstractDOMParser;->fRoot:Lorg/w3c/dom/Node;

    :cond_3
    :goto_2
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object/from16 v18, v0

    move-object/from16 v19, v6

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v18

    move-object/from16 v18, v2

    move-object/from16 v19, v6

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    :goto_3
    goto/16 :goto_0

    :cond_4
    move-object/from16 v18, v4

    move/from16 v19, v9

    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/parsers/AbstractDOMParser;->fAttrQName:Lorg/apache/xerces/xni/QName;

    move-object/from16 v20, v0

    invoke-interface/range {v18 .. v20}, Lorg/apache/xerces/xni/XMLAttributes;->getName(ILorg/apache/xerces/xni/QName;)V

    move-object/from16 v18, v2

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/xerces/parsers/AbstractDOMParser;->fAttrQName:Lorg/apache/xerces/xni/QName;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lorg/apache/xerces/parsers/AbstractDOMParser;->createAttrNode(Lorg/apache/xerces/xni/QName;)Lorg/w3c/dom/Attr;

    move-result-object v18

    move-object/from16 v10, v18

    move-object/from16 v18, v4

    move/from16 v19, v9

    invoke-interface/range {v18 .. v19}, Lorg/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v11, v18

    move-object/from16 v18, v4

    move/from16 v19, v9

    invoke-interface/range {v18 .. v19}, Lorg/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lorg/apache/xerces/xni/Augmentations;

    move-result-object v18

    const-string/jumbo v19, "ATTRIBUTE_PSVI"

    invoke-interface/range {v18 .. v19}, Lorg/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/xerces/xs/AttributePSVI;

    move-object/from16 v12, v18

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lorg/apache/xerces/parsers/AbstractDOMParser;->fStorePSVI:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    move-object/from16 v18, v12

    if-eqz v18, :cond_5

    move-object/from16 v18, v10

    check-cast v18, Lorg/apache/xerces/dom/PSVIAttrNSImpl;

    move-object/from16 v19, v12

    invoke-virtual/range {v18 .. v19}, Lorg/apache/xerces/dom/PSVIAttrNSImpl;->setPSVI(Lorg/apache/xerces/xs/AttributePSVI;)V

    :cond_5
    move-object/from16 v18, v10

    move-object/from16 v19, v11

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    move-object/from16 v18, v4

    move/from16 v19, v9

    invoke-interface/range {v18 .. v19}, Lorg/apache/xerces/xni/XMLAttributes;->isSpecified(I)Z

    move-result v18

    move/from16 v13, v18

    move/from16 v18, v13

    if-nez v18, :cond_a

    move/from16 v18, v8

    if-nez v18, :cond_6

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/xerces/parsers/AbstractDOMParser;->fAttrQName:Lorg/apache/xerces/xni/QName;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/xerces/parsers/AbstractDOMParser;->fAttrQName:Lorg/apache/xerces/xni/QName;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object/from16 v18, v0

    sget-object v19, Lorg/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_a

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/xerces/parsers/AbstractDOMParser;->fAttrQName:Lorg/apache/xerces/xni/QName;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    move-object/from16 v18, v0

    if-nez v18, :cond_a

    :cond_6
    move-object/from16 v18, v6

    move-object/from16 v19, v10

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/Element;->setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    move-result-object v18

    const/16 v18, 0x1

    move/from16 v8, v18

    :goto_4
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    move-object/from16 v18, v10

    check-cast v18, Lorg/apache/xerces/dom/AttrImpl;

    move-object/from16 v14, v18

    const/16 v18, 0x0

    move-object/from16 v15, v18

    const/16 v18, 0x0

    move/from16 v16, v18

    move-object/from16 v18, v12

    if-eqz v18, :cond_c

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lorg/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    move/from16 v18, v0

    if-eqz v18, :cond_c

    move-object/from16 v18, v12

    invoke-interface/range {v18 .. v18}, Lorg/apache/xerces/xs/AttributePSVI;->getMemberTypeDefinition()Lorg/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v18

    move-object/from16 v15, v18

    move-object/from16 v18, v15

    if-nez v18, :cond_b

    move-object/from16 v18, v12

    invoke-interface/range {v18 .. v18}, Lorg/apache/xerces/xs/AttributePSVI;->getTypeDefinition()Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object v18

    move-object/from16 v15, v18

    move-object/from16 v18, v15

    if-eqz v18, :cond_7

    move-object/from16 v18, v15

    check-cast v18, Lorg/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface/range {v18 .. v18}, Lorg/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v18

    move/from16 v16, v18

    move-object/from16 v18, v14

    move-object/from16 v19, v15

    invoke-virtual/range {v18 .. v19}, Lorg/apache/xerces/dom/AttrImpl;->setType(Ljava/lang/Object;)V

    :cond_7
    :goto_5
    move/from16 v18, v16

    if-eqz v18, :cond_8

    move-object/from16 v18, v6

    check-cast v18, Lorg/apache/xerces/dom/ElementImpl;

    move-object/from16 v19, v10

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Lorg/apache/xerces/dom/ElementImpl;->setIdAttributeNode(Lorg/w3c/dom/Attr;Z)V

    :cond_8
    move-object/from16 v18, v14

    move/from16 v19, v13

    invoke-virtual/range {v18 .. v19}, Lorg/apache/xerces/dom/AttrImpl;->setSpecified(Z)V

    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :cond_a
    move-object/from16 v18, v6

    move-object/from16 v19, v10

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    move-result-object v18

    goto :goto_4

    :cond_b
    move-object/from16 v18, v15

    check-cast v18, Lorg/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface/range {v18 .. v18}, Lorg/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v18

    move/from16 v16, v18

    move-object/from16 v18, v14

    move-object/from16 v19, v15

    invoke-virtual/range {v18 .. v19}, Lorg/apache/xerces/dom/AttrImpl;->setType(Ljava/lang/Object;)V

    goto :goto_5

    :cond_c
    sget-object v18, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v19, v4

    move/from16 v20, v9

    invoke-interface/range {v19 .. v20}, Lorg/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lorg/apache/xerces/xni/Augmentations;

    move-result-object v19

    const-string/jumbo v20, "ATTRIBUTE_DECLARED"

    invoke-interface/range {v19 .. v20}, Lorg/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v18

    move/from16 v17, v18

    move/from16 v18, v17

    if-eqz v18, :cond_d

    move-object/from16 v18, v4

    move/from16 v19, v9

    invoke-interface/range {v18 .. v19}, Lorg/apache/xerces/xni/XMLAttributes;->getType(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v15, v18

    const-string/jumbo v18, "ID"

    move-object/from16 v19, v15

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    move/from16 v16, v18

    :cond_d
    move-object/from16 v18, v14

    move-object/from16 v19, v15

    invoke-virtual/range {v18 .. v19}, Lorg/apache/xerces/dom/AttrImpl;->setType(Ljava/lang/Object;)V

    goto :goto_5

    :cond_e
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDOMFilter:Lorg/w3c/dom/ls/LSParserFilter;

    move-object/from16 v18, v0

    move-object/from16 v19, v6

    invoke-interface/range {v18 .. v19}, Lorg/w3c/dom/ls/LSParserFilter;->startElement(Lorg/w3c/dom/Element;)S

    move-result v18

    move/from16 v10, v18

    move/from16 v18, v10

    packed-switch v18, :pswitch_data_0

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/xerces/parsers/AbstractDOMParser;->fSkippedElemStack:Ljava/util/Stack;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Stack;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_3

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/xerces/parsers/AbstractDOMParser;->fSkippedElemStack:Ljava/util/Stack;

    move-object/from16 v18, v0

    sget-object v19, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v19}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    goto/16 :goto_2

    :pswitch_0
    sget-object v18, Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;->INSTANCE:Lorg/apache/xerces/parsers/AbstractDOMParser$Abort;

    throw v18

    :pswitch_1
    move-object/from16 v18, v2

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lorg/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    move-object/from16 v18, v2

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lorg/apache/xerces/parsers/AbstractDOMParser;->fRejectedElementDepth:I

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v18, v2

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lorg/apache/xerces/parsers/AbstractDOMParser;->fFirstChunk:Z

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/xerces/parsers/AbstractDOMParser;->fSkippedElemStack:Ljava/util/Stack;

    move-object/from16 v18, v0

    sget-object v19, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v19}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    goto/16 :goto_0

    :cond_f
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget-boolean v0, v0, Lorg/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    move/from16 v19, v0

    if-eqz v19, :cond_10

    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object/from16 v19, v0

    :goto_6
    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->createDeferredElement(Ljava/lang/String;Ljava/lang/String;)I

    move-result v18

    move/from16 v6, v18

    const/16 v18, 0x0

    move-object/from16 v7, v18

    move-object/from16 v18, v4

    invoke-interface/range {v18 .. v18}, Lorg/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v18

    move/from16 v8, v18

    move/from16 v18, v8

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    move/from16 v9, v18

    :goto_7
    move/from16 v18, v9

    if-gez v18, :cond_11

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object/from16 v18, v0

    move-object/from16 v19, v2

    move-object/from16 v0, v19

    iget v0, v0, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    move/from16 v19, v0

    move/from16 v20, v6

    invoke-virtual/range {v18 .. v20}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    move-object/from16 v18, v2

    move/from16 v19, v6

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    goto/16 :goto_3

    :cond_10
    const/16 v19, 0x0

    goto :goto_6

    :cond_11
    move-object/from16 v18, v4

    move/from16 v19, v9

    invoke-interface/range {v18 .. v19}, Lorg/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lorg/apache/xerces/xni/Augmentations;

    move-result-object v18

    const-string/jumbo v19, "ATTRIBUTE_PSVI"

    invoke-interface/range {v18 .. v19}, Lorg/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/xerces/xs/AttributePSVI;

    move-object/from16 v10, v18

    const/16 v18, 0x0

    move/from16 v11, v18

    move-object/from16 v18, v10

    if-eqz v18, :cond_14

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lorg/apache/xerces/parsers/AbstractDOMParser;->fNamespaceAware:Z

    move/from16 v18, v0

    if-eqz v18, :cond_14

    move-object/from16 v18, v10

    invoke-interface/range {v18 .. v18}, Lorg/apache/xerces/xs/AttributePSVI;->getMemberTypeDefinition()Lorg/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v18

    move-object/from16 v7, v18

    move-object/from16 v18, v7

    if-nez v18, :cond_13

    move-object/from16 v18, v10

    invoke-interface/range {v18 .. v18}, Lorg/apache/xerces/xs/AttributePSVI;->getTypeDefinition()Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object v18

    move-object/from16 v7, v18

    move-object/from16 v18, v7

    if-eqz v18, :cond_12

    move-object/from16 v18, v7

    check-cast v18, Lorg/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface/range {v18 .. v18}, Lorg/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v18

    move/from16 v11, v18

    :cond_12
    :goto_8
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object/from16 v18, v0

    move/from16 v19, v6

    move-object/from16 v20, v4

    move/from16 v21, v9

    invoke-interface/range {v20 .. v21}, Lorg/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v21, v4

    move/from16 v22, v9

    invoke-interface/range {v21 .. v22}, Lorg/apache/xerces/xni/XMLAttributes;->getURI(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v22, v4

    move/from16 v23, v9

    invoke-interface/range {v22 .. v23}, Lorg/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v23, v4

    move/from16 v24, v9

    invoke-interface/range {v23 .. v24}, Lorg/apache/xerces/xni/XMLAttributes;->isSpecified(I)Z

    move-result v23

    move/from16 v24, v11

    move-object/from16 v25, v7

    invoke-virtual/range {v18 .. v25}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setDeferredAttribute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Object;)I

    move-result v18

    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_7

    :cond_13
    move-object/from16 v18, v7

    check-cast v18, Lorg/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface/range {v18 .. v18}, Lorg/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v18

    move/from16 v11, v18

    goto :goto_8

    :cond_14
    sget-object v18, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v19, v4

    move/from16 v20, v9

    invoke-interface/range {v19 .. v20}, Lorg/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lorg/apache/xerces/xni/Augmentations;

    move-result-object v19

    const-string/jumbo v20, "ATTRIBUTE_DECLARED"

    invoke-interface/range {v19 .. v20}, Lorg/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v18

    move/from16 v12, v18

    move/from16 v18, v12

    if-eqz v18, :cond_12

    move-object/from16 v18, v4

    move/from16 v19, v9

    invoke-interface/range {v18 .. v19}, Lorg/apache/xerces/xni/XMLAttributes;->getType(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v7, v18

    const-string/jumbo v18, "ID"

    move-object/from16 v19, v7

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    move/from16 v11, v18

    goto :goto_8

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public startExternalSubset(Lorg/apache/xerces/xni/XMLResourceIdentifier;Lorg/apache/xerces/xni/Augmentations;)V
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

    iget-object v3, v3, Lorg/apache/xerces/parsers/AbstractDOMParser;->fBaseURIStack:Ljava/util/Stack;

    move-object v4, v1

    invoke-interface {v4}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    return-void
.end method

.method public startGeneralEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
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

    move-object/from16 v4, p4

    move-object v9, v0

    iget-boolean v9, v9, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez v9, :cond_3

    move-object v9, v0

    iget-boolean v9, v9, Lorg/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    if-eqz v9, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v9, v0

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lorg/apache/xerces/parsers/AbstractDOMParser;->setCharacterData(Z)V

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocument:Lorg/w3c/dom/Document;

    move-object v10, v1

    invoke-interface {v9, v10}, Lorg/w3c/dom/Document;->createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;

    move-result-object v9

    move-object v5, v9

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v9, :cond_2

    move-object v9, v5

    check-cast v9, Lorg/apache/xerces/dom/EntityReferenceImpl;

    move-object v6, v9

    move-object v9, v6

    move-object v10, v2

    invoke-interface {v10}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/EntityReferenceImpl;->setBaseURI(Ljava/lang/String;)V

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lorg/w3c/dom/DocumentType;

    if-eqz v9, :cond_1

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lorg/w3c/dom/DocumentType;

    invoke-interface {v9}, Lorg/w3c/dom/DocumentType;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    move-object v7, v9

    move-object v9, v0

    move-object v10, v7

    move-object v11, v1

    invoke-interface {v10, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/apache/xerces/dom/EntityImpl;

    iput-object v10, v9, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lorg/apache/xerces/dom/EntityImpl;

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lorg/apache/xerces/dom/EntityImpl;

    if-eqz v9, :cond_1

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lorg/apache/xerces/dom/EntityImpl;

    move-object v10, v3

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/EntityImpl;->setInputEncoding(Ljava/lang/String;)V

    :cond_1
    move-object v9, v6

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lorg/apache/xerces/dom/EntityReferenceImpl;->needsSyncChildren(Z)V

    :cond_2
    move-object v9, v0

    const/4 v10, 0x1

    iput-boolean v10, v9, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInEntityRef:Z

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    move-object v10, v5

    invoke-interface {v9, v10}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v9

    move-object v9, v0

    move-object v10, v5

    iput-object v10, v9, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    :goto_1
    goto :goto_0

    :cond_3
    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v10, v1

    move-object v11, v2

    invoke-interface {v11}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->createDeferredEntityReference(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    move v5, v9

    move-object v9, v0

    iget v9, v9, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_4

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v10, v0

    iget v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result v9

    move v6, v9

    :goto_2
    move v9, v6

    const/4 v10, -0x1

    if-ne v9, v10, :cond_5

    :cond_4
    :goto_3
    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v10, v0

    iget v10, v10, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    move v11, v5

    invoke-virtual {v9, v10, v11}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    move-object v9, v0

    move v10, v5

    iput v10, v9, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentNodeIndex:I

    goto :goto_1

    :cond_5
    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move v10, v6

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(IZ)S

    move-result v9

    move v7, v9

    move v9, v7

    const/4 v10, 0x6

    if-ne v9, v10, :cond_6

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move v10, v6

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(IZ)Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    move-object v9, v8

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    move-object v9, v0

    move v10, v6

    iput v10, v9, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredEntityDecl:I

    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move v10, v6

    move-object v11, v3

    invoke-virtual {v9, v10, v11}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setInputEncoding(ILjava/lang/String;)V

    goto :goto_3

    :cond_6
    move-object v9, v0

    iget-object v9, v9, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move v10, v6

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getRealPrevSibling(IZ)I

    move-result v9

    move v6, v9

    goto :goto_2
.end method

.method public startParameterEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
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

    move-object v4, p4

    move-object v5, v4

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-boolean v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    if-nez v5, :cond_0

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v6, v4

    const-string/jumbo v7, "ENTITY_SKIPPED"

    invoke-interface {v6, v7}, Lorg/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, ";\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fBaseURIStack:Ljava/util/Stack;

    move-object v6, v2

    invoke-interface {v6}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    return-void
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
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

    iget-boolean v4, v4, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInDTD:Z

    if-eqz v4, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lorg/apache/xerces/dom/EntityImpl;

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/parsers/AbstractDOMParser;->fFilterReject:Z

    if-nez v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lorg/apache/xerces/dom/EntityImpl;

    move-object v5, v2

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/EntityImpl;->setXmlEncoding(Ljava/lang/String;)V

    move-object v4, v1

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/AbstractDOMParser;->fCurrentEntityDecl:Lorg/apache/xerces/dom/EntityImpl;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xerces/dom/EntityImpl;->setXmlVersion(Ljava/lang/String;)V

    :cond_1
    :goto_1
    goto :goto_0

    :cond_2
    move-object v4, v0

    iget v4, v4, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredEntityDecl:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v5, v0

    iget v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredEntityDecl:I

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v4, v5, v6, v7}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setEntityInfo(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v11, v2

    invoke-interface {v11}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v11

    move-object v5, v11

    move-object v11, v2

    invoke-interface {v11}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    if-eqz v11, :cond_1

    move-object v11, v0

    iget-boolean v11, v11, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInDTDExternalSubset:Z

    if-nez v11, :cond_1

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string/jumbo v12, "<!ENTITY "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const/16 v12, 0x20

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v11

    move-object v11, v5

    if-eqz v11, :cond_4

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string/jumbo v12, "PUBLIC \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    move-object v12, v5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    move-object v11, v6

    if-eqz v11, :cond_0

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string/jumbo v12, "\' \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    move-object v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    :cond_0
    :goto_0
    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string/jumbo v12, "\' NDATA "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    move-object v12, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string/jumbo v12, ">\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    :cond_1
    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lorg/w3c/dom/DocumentType;

    if-eqz v11, :cond_2

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentType:Lorg/w3c/dom/DocumentType;

    invoke-interface {v11}, Lorg/w3c/dom/DocumentType;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v11

    move-object v7, v11

    move-object v11, v7

    move-object v12, v1

    invoke-interface {v11, v12}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/apache/xerces/dom/EntityImpl;

    move-object v8, v11

    move-object v11, v8

    if-nez v11, :cond_2

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v12, v1

    invoke-virtual {v11, v12}, Lorg/apache/xerces/dom/CoreDocumentImpl;->createEntity(Ljava/lang/String;)Lorg/w3c/dom/Entity;

    move-result-object v11

    check-cast v11, Lorg/apache/xerces/dom/EntityImpl;

    move-object v8, v11

    move-object v11, v8

    move-object v12, v5

    invoke-virtual {v11, v12}, Lorg/apache/xerces/dom/EntityImpl;->setPublicId(Ljava/lang/String;)V

    move-object v11, v8

    move-object v12, v6

    invoke-virtual {v11, v12}, Lorg/apache/xerces/dom/EntityImpl;->setSystemId(Ljava/lang/String;)V

    move-object v11, v8

    move-object v12, v3

    invoke-virtual {v11, v12}, Lorg/apache/xerces/dom/EntityImpl;->setNotationName(Ljava/lang/String;)V

    move-object v11, v8

    move-object v12, v2

    invoke-interface {v12}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/apache/xerces/dom/EntityImpl;->setBaseURI(Ljava/lang/String;)V

    move-object v11, v7

    move-object v12, v8

    invoke-interface {v11, v12}, Lorg/w3c/dom/NamedNodeMap;->setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v11

    :cond_2
    move-object v11, v0

    iget v11, v11, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_3

    const/4 v11, 0x0

    move v7, v11

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v12, v0

    iget v12, v12, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result v11

    move v8, v11

    :goto_1
    move v11, v8

    const/4 v12, -0x1

    if-ne v11, v12, :cond_5

    :goto_2
    move v11, v7

    if-nez v11, :cond_3

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v12, v1

    move-object v13, v5

    move-object v14, v6

    move-object v15, v3

    move-object/from16 v16, v2

    invoke-interface/range {v16 .. v16}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getBaseSystemId()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v11 .. v16}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->createDeferredEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    move v9, v11

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v12, v0

    iget v12, v12, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentTypeIndex:I

    move v13, v9

    invoke-virtual {v11, v12, v13}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    :cond_3
    return-void

    :cond_4
    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    const-string/jumbo v12, "SYSTEM \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/parsers/AbstractDOMParser;->fInternalSubset:Ljava/lang/StringBuffer;

    move-object v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    goto/16 :goto_0

    :cond_5
    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move v12, v8

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(IZ)S

    move-result v11

    move v9, v11

    move v11, v9

    const/4 v12, 0x6

    if-ne v11, v12, :cond_6

    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move v12, v8

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(IZ)Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    move-object v11, v10

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    const/4 v11, 0x1

    move v7, v11

    goto :goto_2

    :cond_6
    move-object v11, v0

    iget-object v11, v11, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move v12, v8

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getRealPrevSibling(IZ)I

    move-result v11

    move v8, v11

    goto :goto_1
.end method

.method public xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
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

    move-object v4, p4

    move-object v5, v0

    iget-boolean v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferNodeExpansion:Z

    if-nez v5, :cond_2

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v5, :cond_1

    move-object v5, v1

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v6, v1

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/CoreDocumentImpl;->setXmlVersion(Ljava/lang/String;)V

    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-object v6, v2

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/CoreDocumentImpl;->setXmlEncoding(Ljava/lang/String;)V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDocumentImpl:Lorg/apache/xerces/dom/CoreDocumentImpl;

    const-string/jumbo v6, "yes"

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/CoreDocumentImpl;->setXmlStandalone(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v5, v1

    if-eqz v5, :cond_3

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v6, v1

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setXmlVersion(Ljava/lang/String;)V

    :cond_3
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    move-object v6, v2

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setXmlEncoding(Ljava/lang/String;)V

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractDOMParser;->fDeferredDocumentImpl:Lorg/apache/xerces/dom/DeferredDocumentImpl;

    const-string/jumbo v6, "yes"

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->setXmlStandalone(Z)V

    goto :goto_0
.end method
