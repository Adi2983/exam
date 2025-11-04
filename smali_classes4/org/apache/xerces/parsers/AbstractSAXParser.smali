.class public abstract Lorg/apache/xerces/parsers/AbstractSAXParser;
.super Lorg/apache/xerces/parsers/AbstractXMLDocumentParser;

# interfaces
.implements Lorg/apache/xerces/xs/PSVIProvider;
.implements Lorg/xml/sax/Parser;
.implements Lorg/xml/sax/XMLReader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;,
        Lorg/apache/xerces/parsers/AbstractSAXParser$LocatorProxy;
    }
.end annotation


# static fields
.field protected static final ALLOW_UE_AND_NOTATION_EVENTS:Ljava/lang/String; = "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

.field protected static final DECLARATION_HANDLER:Ljava/lang/String; = "http://xml.org/sax/properties/declaration-handler"

.field protected static final DOM_NODE:Ljava/lang/String; = "http://xml.org/sax/properties/dom-node"

.field protected static final LEXICAL_HANDLER:Ljava/lang/String; = "http://xml.org/sax/properties/lexical-handler"

.field protected static final NAMESPACES:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field private static final RECOGNIZED_FEATURES:[Ljava/lang/String;

.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final STRING_INTERNING:Ljava/lang/String; = "http://xml.org/sax/features/string-interning"


# instance fields
.field private final fAttributesProxy:Lorg/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;

.field private fAugmentations:Lorg/apache/xerces/xni/Augmentations;

.field protected fContentHandler:Lorg/xml/sax/ContentHandler;

.field protected fDTDHandler:Lorg/xml/sax/DTDHandler;

.field protected fDeclHandler:Lorg/xml/sax/ext/DeclHandler;

.field protected fDeclaredAttrs:Lorg/apache/xerces/util/SymbolHash;

.field protected fDocumentHandler:Lorg/xml/sax/DocumentHandler;

.field protected fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

.field protected fLexicalHandlerParameterEntities:Z

.field protected fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

.field protected fNamespacePrefixes:Z

.field protected fNamespaces:Z

.field protected fParseInProgress:Z

.field protected final fQName:Lorg/apache/xerces/xni/QName;

.field protected fResolveDTDURIs:Z

.field protected fStandalone:Z

.field protected fUseEntityResolver2:Z

.field protected fVersion:Ljava/lang/String;

.field protected fXMLNSURIs:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

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

    const-string/jumbo v3, "http://xml.org/sax/features/string-interning"

    aput-object v3, v1, v2

    sput-object v0, Lorg/apache/xerces/parsers/AbstractSAXParser;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-string/jumbo v3, "http://xml.org/sax/properties/lexical-handler"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, "http://xml.org/sax/properties/declaration-handler"

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, "http://xml.org/sax/properties/dom-node"

    aput-object v3, v1, v2

    sput-object v0, Lorg/apache/xerces/parsers/AbstractSAXParser;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lorg/apache/xerces/xni/parser/XMLParserConfiguration;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lorg/apache/xerces/parsers/AbstractXMLDocumentParser;-><init>(Lorg/apache/xerces/xni/parser/XMLParserConfiguration;)V

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lorg/apache/xerces/parsers/AbstractSAXParser;->fNamespacePrefixes:Z

    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandlerParameterEntities:Z

    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/apache/xerces/parsers/AbstractSAXParser;->fResolveDTDURIs:Z

    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lorg/apache/xerces/parsers/AbstractSAXParser;->fUseEntityResolver2:Z

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lorg/apache/xerces/parsers/AbstractSAXParser;->fXMLNSURIs:Z

    move-object v3, v0

    new-instance v4, Lorg/apache/xerces/xni/QName;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v4, v3, Lorg/apache/xerces/parsers/AbstractSAXParser;->fQName:Lorg/apache/xerces/xni/QName;

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lorg/apache/xerces/parsers/AbstractSAXParser;->fParseInProgress:Z

    move-object v3, v0

    new-instance v4, Lorg/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Lorg/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;-><init>()V

    iput-object v4, v3, Lorg/apache/xerces/parsers/AbstractSAXParser;->fAttributesProxy:Lorg/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/parsers/AbstractSAXParser;->fAugmentations:Lorg/apache/xerces/xni/Augmentations;

    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lorg/apache/xerces/parsers/AbstractSAXParser;->fDeclaredAttrs:Lorg/apache/xerces/util/SymbolHash;

    move-object v3, v1

    sget-object v4, Lorg/apache/xerces/parsers/AbstractSAXParser;->RECOGNIZED_FEATURES:[Ljava/lang/String;

    invoke-interface {v3, v4}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->addRecognizedFeatures([Ljava/lang/String;)V

    move-object v3, v1

    sget-object v4, Lorg/apache/xerces/parsers/AbstractSAXParser;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-interface {v3, v4}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->addRecognizedProperties([Ljava/lang/String;)V

    move-object v3, v1

    :try_start_0
    const-string/jumbo v4, "http://xml.org/sax/features/allow-dtd-events-after-endDTD"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v3

    move-object v2, v3

    goto :goto_0
.end method


# virtual methods
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

    move-object v12, v0

    :try_start_0
    iget-object v12, v12, Lorg/apache/xerces/parsers/AbstractSAXParser;->fDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz v12, :cond_3

    new-instance v12, Ljava/lang/StringBuffer;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-object v14, v1

    invoke-direct {v13, v14}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 v13, 0x3c

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v12

    move-object v13, v2

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v9, v12

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xerces/parsers/AbstractSAXParser;->fDeclaredAttrs:Lorg/apache/xerces/util/SymbolHash;

    move-object v13, v9

    invoke-virtual {v12, v13}, Lorg/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xerces/parsers/AbstractSAXParser;->fDeclaredAttrs:Lorg/apache/xerces/util/SymbolHash;

    move-object v13, v9

    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v12, v13, v14}, Lorg/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v12, v3

    const-string/jumbo v13, "NOTATION"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    move-object v12, v3

    const-string/jumbo v13, "ENUMERATION"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    :cond_1
    new-instance v12, Ljava/lang/StringBuffer;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    invoke-direct {v13}, Ljava/lang/StringBuffer;-><init>()V

    move-object v10, v12

    move-object v12, v3

    const-string/jumbo v13, "NOTATION"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    move-object v12, v10

    move-object v13, v3

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    move-object v12, v10

    const-string/jumbo v13, " ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    :goto_1
    const/4 v12, 0x0

    move v11, v12

    :goto_2
    move v12, v11

    move-object v13, v4

    array-length v13, v13

    if-lt v12, v13, :cond_5

    move-object v12, v10

    const/16 v13, 0x29

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v12

    move-object v12, v10

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v3, v12

    :cond_2
    move-object v12, v6

    if-nez v12, :cond_7

    const/4 v12, 0x0

    :goto_3
    move-object v10, v12

    move-object v12, v0

    iget-object v12, v12, Lorg/apache/xerces/parsers/AbstractSAXParser;->fDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    move-object v13, v1

    move-object v14, v2

    move-object v15, v3

    move-object/from16 v16, v5

    move-object/from16 v17, v10

    invoke-interface/range {v12 .. v17}, Lorg/xml/sax/ext/DeclHandler;->attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    goto :goto_0

    :cond_4
    move-object v12, v10

    const/16 v13, 0x28

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v12

    goto :goto_1

    :cond_5
    move-object v12, v10

    move-object v13, v4

    move v14, v11

    aget-object v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    move v12, v11

    move-object v13, v4

    array-length v13, v13

    const/4 v14, 0x1

    add-int/lit8 v13, v13, -0x1

    if-ge v12, v13, :cond_6

    move-object v12, v10

    const/16 v13, 0x7c

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v12

    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_7
    move-object v12, v6

    invoke-virtual {v12}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    goto :goto_3

    :catch_0
    move-exception v12

    move-object v9, v12

    new-instance v12, Lorg/apache/xerces/xni/XNIException;

    move-object/from16 v18, v12

    move-object/from16 v12, v18

    move-object/from16 v13, v18

    move-object v14, v9

    invoke-direct {v13, v14}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v12
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

    move-object v4, v1

    iget v4, v4, Lorg/apache/xerces/xni/XMLString;->length:I

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lorg/apache/xerces/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    move-object v5, v1

    iget-object v5, v5, Lorg/apache/xerces/xni/XMLString;->ch:[C

    move-object v6, v1

    iget v6, v6, Lorg/apache/xerces/xni/XMLString;->offset:I

    move-object v7, v1

    iget v7, v7, Lorg/apache/xerces/xni/XMLString;->length:I

    invoke-interface {v4, v5, v6, v7}, Lorg/xml/sax/DocumentHandler;->characters([CII)V

    :cond_1
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    move-object v5, v1

    iget-object v5, v5, Lorg/apache/xerces/xni/XMLString;->ch:[C

    move-object v6, v1

    iget v6, v6, Lorg/apache/xerces/xni/XMLString;->offset:I

    move-object v7, v1

    iget v7, v7, Lorg/apache/xerces/xni/XMLString;->length:I

    invoke-interface {v4, v5, v6, v7}, Lorg/xml/sax/ContentHandler;->characters([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v4

    move-object v3, v4

    new-instance v4, Lorg/apache/xerces/xni/XNIException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v3

    invoke-direct {v5, v6}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v4
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

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lorg/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    move-object v5, v1

    iget-object v5, v5, Lorg/apache/xerces/xni/XMLString;->ch:[C

    const/4 v6, 0x0

    move-object v7, v1

    iget v7, v7, Lorg/apache/xerces/xni/XMLString;->length:I

    invoke-interface {v4, v5, v6, v7}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v4

    move-object v3, v4

    new-instance v4, Lorg/apache/xerces/xni/XNIException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v3

    invoke-direct {v5, v6}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method public doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 11
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

    move-object v6, v0

    const/4 v7, 0x1

    iput-boolean v7, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fInDTD:Z

    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    invoke-interface {v6, v7, v8, v9}, Lorg/xml/sax/ext/LexicalHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz v6, :cond_1

    move-object v6, v0

    new-instance v7, Lorg/apache/xerces/util/SymbolHash;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const/16 v9, 0x19

    invoke-direct {v8, v9}, Lorg/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v7, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fDeclaredAttrs:Lorg/apache/xerces/util/SymbolHash;

    :cond_1
    return-void

    :catch_0
    move-exception v6

    move-object v5, v6

    new-instance v6, Lorg/apache/xerces/xni/XNIException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v5

    invoke-direct {v7, v8}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v6
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractSAXParser;->fDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractSAXParser;->fDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    move-object v6, v1

    move-object v7, v2

    invoke-interface {v5, v6, v7}, Lorg/xml/sax/ext/DeclHandler;->elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v5

    move-object v4, v5

    new-instance v5, Lorg/apache/xerces/xni/XNIException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v4

    invoke-direct {v6, v7}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v5
.end method

.method public endCDATA(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lorg/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v3}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v3

    move-object v2, v3

    new-instance v3, Lorg/apache/xerces/xni/XNIException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method public endDTD(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lorg/apache/xerces/parsers/AbstractSAXParser;->fInDTD:Z

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lorg/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v3}, Lorg/xml/sax/ext/LexicalHandler;->endDTD()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/AbstractSAXParser;->fDeclaredAttrs:Lorg/apache/xerces/util/SymbolHash;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/AbstractSAXParser;->fDeclaredAttrs:Lorg/apache/xerces/util/SymbolHash;

    invoke-virtual {v3}, Lorg/apache/xerces/util/SymbolHash;->clear()V

    :cond_1
    return-void

    :catch_0
    move-exception v3

    move-object v2, v3

    new-instance v3, Lorg/apache/xerces/xni/XNIException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method public endDocument(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lorg/apache/xerces/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    invoke-interface {v3}, Lorg/xml/sax/DocumentHandler;->endDocument()V

    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v3}, Lorg/xml/sax/ContentHandler;->endDocument()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v3

    move-object v2, v3

    new-instance v3, Lorg/apache/xerces/xni/XNIException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method public endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    move-object v6, v1

    iget-object v6, v6, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-interface {v5, v6}, Lorg/xml/sax/DocumentHandler;->endElement(Ljava/lang/String;)V

    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v5, :cond_1

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lorg/apache/xerces/parsers/AbstractSAXParser;->fAugmentations:Lorg/apache/xerces/xni/Augmentations;

    move-object v5, v1

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v5, :cond_2

    move-object v5, v1

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    :goto_0
    move-object v3, v5

    move-object v5, v0

    iget-boolean v5, v5, Lorg/apache/xerces/parsers/AbstractSAXParser;->fNamespaces:Z

    if-eqz v5, :cond_3

    move-object v5, v1

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    :goto_1
    move-object v4, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    move-object v6, v3

    move-object v7, v4

    move-object v8, v1

    iget-object v8, v8, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-interface {v5, v6, v7, v8}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v0

    iget-boolean v5, v5, Lorg/apache/xerces/parsers/AbstractSAXParser;->fNamespaces:Z

    if-eqz v5, :cond_1

    move-object v5, v0

    invoke-virtual {v5}, Lorg/apache/xerces/parsers/AbstractSAXParser;->endNamespaceMapping()V

    :cond_1
    return-void

    :cond_2
    const-string/jumbo v5, ""

    goto :goto_0

    :cond_3
    const-string/jumbo v5, ""
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    move-object v3, v5

    new-instance v5, Lorg/apache/xerces/xni/XNIException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v3

    invoke-direct {v6, v7}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v5
.end method

.method public endExternalSubset(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const-string/jumbo v3, "[dtd]"

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/xerces/parsers/AbstractSAXParser;->endParameterEntity(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public endGeneralEntity(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v2

    if-eqz v4, :cond_0

    :try_start_0
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v5, v2

    const-string/jumbo v6, "ENTITY_SKIPPED"

    invoke-interface {v5, v6}, Lorg/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    move-object v5, v1

    invoke-interface {v4, v5}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v4

    move-object v3, v4

    new-instance v4, Lorg/apache/xerces/xni/XNIException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v3

    invoke-direct {v5, v6}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method protected final endNamespaceMapping()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/AbstractSAXParser;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-interface {v3}, Lorg/apache/xerces/xni/NamespaceContext;->getDeclaredPrefixCount()I

    move-result v3

    move v1, v3

    move v3, v1

    if-lez v3, :cond_0

    const/4 v3, 0x0

    move v2, v3

    :goto_0
    move v3, v2

    move v4, v1

    if-lt v3, v4, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/AbstractSAXParser;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    move v5, v2

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/NamespaceContext;->getDeclaredPrefixAt(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public endParameterEntity(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v2

    if-eqz v4, :cond_0

    :try_start_0
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v5, v2

    const-string/jumbo v6, "ENTITY_SKIPPED"

    invoke-interface {v5, v6}, Lorg/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandlerParameterEntities:Z

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    move-object v5, v1

    invoke-interface {v4, v5}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v4

    move-object v3, v4

    new-instance v4, Lorg/apache/xerces/xni/XNIException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v3

    invoke-direct {v5, v6}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method public externalEntityDecl(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 11
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

    :try_start_0
    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz v6, :cond_0

    move-object v6, v2

    invoke-interface {v6}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    move-object v6, v0

    iget-boolean v6, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fResolveDTDURIs:Z

    if-eqz v6, :cond_1

    move-object v6, v2

    invoke-interface {v6}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v6

    :goto_0
    move-object v5, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    move-object v7, v1

    move-object v8, v4

    move-object v9, v5

    invoke-interface {v6, v7, v8, v9}, Lorg/xml/sax/ext/DeclHandler;->externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    move-object v6, v2

    invoke-interface {v6}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    :catch_0
    move-exception v6

    move-object v4, v6

    new-instance v6, Lorg/apache/xerces/xni/XNIException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v4

    invoke-direct {v7, v8}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v6
.end method

.method public getAttributePSVI(I)Lorg/apache/xerces/xs/AttributePSVI;
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/AbstractSAXParser;->fAttributesProxy:Lorg/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;

    iget-object v2, v2, Lorg/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lorg/apache/xerces/xni/XMLAttributes;

    move v3, v1

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lorg/apache/xerces/xni/Augmentations;

    move-result-object v2

    const-string/jumbo v3, "ATTRIBUTE_PSVI"

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/xerces/xs/AttributePSVI;

    move-object v0, v2

    return-object v0
.end method

.method public getAttributePSVIByName(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/xs/AttributePSVI;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/AbstractSAXParser;->fAttributesProxy:Lorg/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;

    iget-object v3, v3, Lorg/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->fAttributes:Lorg/apache/xerces/xni/XMLAttributes;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Lorg/apache/xerces/xni/XMLAttributes;->getAugmentations(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xerces/xni/Augmentations;

    move-result-object v3

    const-string/jumbo v4, "ATTRIBUTE_PSVI"

    invoke-interface {v3, v4}, Lorg/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/xs/AttributePSVI;

    move-object v0, v3

    return-object v0
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    move-object v0, v1

    return-object v0
.end method

.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/AbstractSAXParser;->fDTDHandler:Lorg/xml/sax/DTDHandler;

    move-object v0, v1

    return-object v0
.end method

.method protected getDeclHandler()Lorg/xml/sax/ext/DeclHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/AbstractSAXParser;->fDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    move-object v0, v1

    return-object v0
.end method

.method public getElementPSVI()Lorg/apache/xerces/xs/ElementPSVI;
    .locals 3

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/AbstractSAXParser;->fAugmentations:Lorg/apache/xerces/xni/Augmentations;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/AbstractSAXParser;->fAugmentations:Lorg/apache/xerces/xni/Augmentations;

    const-string/jumbo v2, "ELEMENT_PSVI"

    invoke-interface {v1, v2}, Lorg/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/xerces/xs/ElementPSVI;

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 5

    move-object v0, p0

    const/4 v3, 0x0

    move-object v1, v3

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lorg/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-interface {v3, v4}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    move-object v2, v3

    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    instance-of v3, v3, Lorg/apache/xerces/util/EntityResolverWrapper;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lorg/apache/xerces/util/EntityResolverWrapper;

    invoke-virtual {v3}, Lorg/apache/xerces/util/EntityResolverWrapper;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v3

    move-object v1, v3

    :cond_0
    :goto_0
    move-object v3, v1

    move-object v0, v3

    return-object v0

    :cond_1
    move-object v3, v2

    instance-of v3, v3, Lorg/apache/xerces/util/EntityResolver2Wrapper;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lorg/apache/xerces/util/EntityResolver2Wrapper;

    invoke-virtual {v3}, Lorg/apache/xerces/util/EntityResolver2Wrapper;->getEntityResolver()Lorg/xml/sax/ext/EntityResolver2;
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v1, v3

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v2, v3

    goto :goto_0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 5

    move-object v0, p0

    const/4 v3, 0x0

    move-object v1, v3

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lorg/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v4, "http://apache.org/xml/properties/internal/error-handler"

    invoke-interface {v3, v4}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/xni/parser/XMLErrorHandler;

    move-object v2, v3

    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    instance-of v3, v3, Lorg/apache/xerces/util/ErrorHandlerWrapper;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lorg/apache/xerces/util/ErrorHandlerWrapper;

    invoke-virtual {v3}, Lorg/apache/xerces/util/ErrorHandlerWrapper;->getErrorHandler()Lorg/xml/sax/ErrorHandler;
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v1, v3

    :cond_0
    :goto_0
    move-object v3, v1

    move-object v0, v3

    return-object v0

    :catch_0
    move-exception v3

    move-object v2, v3

    goto :goto_0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    :try_start_0
    const-string/jumbo v5, "http://xml.org/sax/features/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const-string/jumbo v5, "http://xml.org/sax/features/"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    move v2, v4

    move v4, v2

    const-string/jumbo v5, "namespace-prefixes"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_0

    move-object v4, v1

    const-string/jumbo v5, "namespace-prefixes"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/parsers/AbstractSAXParser;->fNamespacePrefixes:Z

    move v0, v4

    :goto_0
    return v0

    :cond_0
    move v4, v2

    const-string/jumbo v5, "string-interning"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_1

    move-object v4, v1

    const-string/jumbo v5, "string-interning"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    :cond_1
    move v4, v2

    const-string/jumbo v5, "is-standalone"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_2

    move-object v4, v1

    const-string/jumbo v5, "is-standalone"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/parsers/AbstractSAXParser;->fStandalone:Z

    move v0, v4

    goto :goto_0

    :cond_2
    move v4, v2

    const-string/jumbo v5, "xml-1.1"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_3

    move-object v4, v1

    const-string/jumbo v5, "xml-1.1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    instance-of v4, v4, Lorg/apache/xerces/parsers/XML11Configurable;

    move v0, v4

    goto :goto_0

    :cond_3
    move v4, v2

    const-string/jumbo v5, "lexical-handler/parameter-entities"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_4

    move-object v4, v1

    const-string/jumbo v5, "lexical-handler/parameter-entities"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandlerParameterEntities:Z

    move v0, v4

    goto :goto_0

    :cond_4
    move v4, v2

    const-string/jumbo v5, "resolve-dtd-uris"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_5

    move-object v4, v1

    const-string/jumbo v5, "resolve-dtd-uris"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/parsers/AbstractSAXParser;->fResolveDTDURIs:Z

    move v0, v4

    goto :goto_0

    :cond_5
    move v4, v2

    const-string/jumbo v5, "xmlns-uris"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_6

    move-object v4, v1

    const-string/jumbo v5, "xmlns-uris"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/parsers/AbstractSAXParser;->fXMLNSURIs:Z

    move v0, v4

    goto/16 :goto_0

    :cond_6
    move v4, v2

    const-string/jumbo v5, "unicode-normalization-checking"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_7

    move-object v4, v1

    const-string/jumbo v5, "unicode-normalization-checking"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x0

    move v0, v4

    goto/16 :goto_0

    :cond_7
    move v4, v2

    const-string/jumbo v5, "use-entity-resolver2"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_8

    move-object v4, v1

    const-string/jumbo v5, "use-entity-resolver2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/parsers/AbstractSAXParser;->fUseEntityResolver2:Z

    move v0, v4

    goto/16 :goto_0

    :cond_8
    move v4, v2

    const-string/jumbo v5, "use-attributes2"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_9

    move-object v4, v1

    const-string/jumbo v5, "use-attributes2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    :cond_9
    move v4, v2

    const-string/jumbo v5, "use-locator2"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_b

    move-object v4, v1

    const-string/jumbo v5, "use-locator2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_a
    const/4 v4, 0x1

    move v0, v4

    goto/16 :goto_0

    :cond_b
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object v5, v1

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    move v0, v4

    goto/16 :goto_0

    :catch_0
    move-exception v4

    move-object v2, v4

    move-object v4, v2

    invoke-virtual {v4}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    move-object v4, v2

    invoke-virtual {v4}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result v4

    if-nez v4, :cond_c

    new-instance v4, Lorg/xml/sax/SAXNotRecognizedException;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v6}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v6

    const-string/jumbo v7, "feature-not-recognized"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v3

    aput-object v11, v9, v10

    invoke-static {v6, v7, v8}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_c
    new-instance v4, Lorg/xml/sax/SAXNotSupportedException;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v6}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v6

    const-string/jumbo v7, "feature-not-supported"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v3

    aput-object v11, v9, v10

    invoke-static {v6, v7, v8}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Lorg/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    move-object v0, v1

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v4, v1

    :try_start_0
    const-string/jumbo v5, "http://xml.org/sax/properties/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const-string/jumbo v5, "http://xml.org/sax/properties/"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v4, v5

    move v2, v4

    move v4, v2

    const-string/jumbo v5, "document-xml-version"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_0

    move-object v4, v1

    const-string/jumbo v5, "document-xml-version"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/AbstractSAXParser;->fVersion:Ljava/lang/String;

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_0
    move v4, v2

    const-string/jumbo v5, "lexical-handler"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_1

    move-object v4, v1

    const-string/jumbo v5, "lexical-handler"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/parsers/AbstractSAXParser;->getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    :cond_1
    move v4, v2

    const-string/jumbo v5, "declaration-handler"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_2

    move-object v4, v1

    const-string/jumbo v5, "declaration-handler"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v0

    invoke-virtual {v4}, Lorg/apache/xerces/parsers/AbstractSAXParser;->getDeclHandler()Lorg/xml/sax/ext/DeclHandler;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    :cond_2
    move v4, v2

    const-string/jumbo v5, "dom-node"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_3

    move-object v4, v1

    const-string/jumbo v5, "dom-node"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Lorg/xml/sax/SAXNotSupportedException;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v6}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v6

    const-string/jumbo v7, "dom-node-read-not-supported"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v4

    move-object v2, v4

    move-object v4, v2

    invoke-virtual {v4}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    move-object v4, v2

    invoke-virtual {v4}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result v4

    if-nez v4, :cond_4

    new-instance v4, Lorg/xml/sax/SAXNotRecognizedException;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v6}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v6

    const-string/jumbo v7, "property-not-recognized"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v3

    aput-object v11, v9, v10

    invoke-static {v6, v7, v8}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    move-object v4, v0

    :try_start_1
    iget-object v4, v4, Lorg/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object v5, v1

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    move-object v0, v4

    goto/16 :goto_0

    :cond_4
    new-instance v4, Lorg/xml/sax/SAXNotSupportedException;

    move-object v12, v4

    move-object v4, v12

    move-object v5, v12

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v6}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v6

    const-string/jumbo v7, "property-not-supported"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v3

    aput-object v11, v9, v10

    invoke-static {v6, v7, v8}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v4
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

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lorg/apache/xerces/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    move-object v5, v1

    iget-object v5, v5, Lorg/apache/xerces/xni/XMLString;->ch:[C

    move-object v6, v1

    iget v6, v6, Lorg/apache/xerces/xni/XMLString;->offset:I

    move-object v7, v1

    iget v7, v7, Lorg/apache/xerces/xni/XMLString;->length:I

    invoke-interface {v4, v5, v6, v7}, Lorg/xml/sax/DocumentHandler;->ignorableWhitespace([CII)V

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v4, :cond_1

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    move-object v5, v1

    iget-object v5, v5, Lorg/apache/xerces/xni/XMLString;->ch:[C

    move-object v6, v1

    iget v6, v6, Lorg/apache/xerces/xni/XMLString;->offset:I

    move-object v7, v1

    iget v7, v7, Lorg/apache/xerces/xni/XMLString;->length:I

    invoke-interface {v4, v5, v6, v7}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v4

    move-object v3, v4

    new-instance v4, Lorg/apache/xerces/xni/XNIException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v3

    invoke-direct {v5, v6}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v4
.end method

.method public internalEntityDecl(Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
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

    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v8}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/xml/sax/ext/DeclHandler;->internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v6

    move-object v5, v6

    new-instance v6, Lorg/apache/xerces/xni/XNIException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v5

    invoke-direct {v7, v8}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v6
.end method

.method public notationDecl(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 11
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

    :try_start_0
    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fDTDHandler:Lorg/xml/sax/DTDHandler;

    if-eqz v6, :cond_0

    move-object v6, v2

    invoke-interface {v6}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    move-object v6, v0

    iget-boolean v6, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fResolveDTDURIs:Z

    if-eqz v6, :cond_1

    move-object v6, v2

    invoke-interface {v6}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v6

    :goto_0
    move-object v5, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fDTDHandler:Lorg/xml/sax/DTDHandler;

    move-object v7, v1

    move-object v8, v4

    move-object v9, v5

    invoke-interface {v6, v7, v8, v9}, Lorg/xml/sax/DTDHandler;->notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    move-object v6, v2

    invoke-interface {v6}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    :catch_0
    move-exception v6

    move-object v4, v6

    new-instance v6, Lorg/apache/xerces/xni/XNIException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v4

    invoke-direct {v7, v8}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v6
.end method

.method public parse(Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    new-instance v6, Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    const/4 v8, 0x0

    move-object v9, v1

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v6

    move-object v6, v0

    move-object v7, v2

    :try_start_0
    invoke-virtual {v6, v7}, Lorg/apache/xerces/parsers/AbstractSAXParser;->parse(Lorg/apache/xerces/xni/parser/XMLInputSource;)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v6

    move-object v3, v6

    move-object v6, v3

    invoke-virtual {v6}, Lorg/apache/xerces/xni/parser/XMLParseException;->getException()Ljava/lang/Exception;

    move-result-object v6

    move-object v4, v6

    move-object v6, v4

    if-eqz v6, :cond_0

    move-object v6, v4

    instance-of v6, v6, Ljava/io/CharConversionException;

    if-eqz v6, :cond_2

    :cond_0
    new-instance v6, Lorg/xml/sax/ext/Locator2Impl;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Lorg/xml/sax/ext/Locator2Impl;-><init>()V

    move-object v5, v6

    move-object v6, v5

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/AbstractSAXParser;->fVersion:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lorg/xml/sax/ext/Locator2Impl;->setXMLVersion(Ljava/lang/String;)V

    move-object v6, v5

    move-object v7, v3

    invoke-virtual {v7}, Lorg/apache/xerces/xni/parser/XMLParseException;->getPublicId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/xml/sax/ext/Locator2Impl;->setPublicId(Ljava/lang/String;)V

    move-object v6, v5

    move-object v7, v3

    invoke-virtual {v7}, Lorg/apache/xerces/xni/parser/XMLParseException;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/xml/sax/ext/Locator2Impl;->setSystemId(Ljava/lang/String;)V

    move-object v6, v5

    move-object v7, v3

    invoke-virtual {v7}, Lorg/apache/xerces/xni/parser/XMLParseException;->getLineNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/xml/sax/ext/Locator2Impl;->setLineNumber(I)V

    move-object v6, v5

    move-object v7, v3

    invoke-virtual {v7}, Lorg/apache/xerces/xni/parser/XMLParseException;->getColumnNumber()I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/xml/sax/ext/Locator2Impl;->setColumnNumber(I)V

    move-object v6, v4

    if-nez v6, :cond_1

    new-instance v6, Lorg/xml/sax/SAXParseException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v3

    invoke-virtual {v8}, Lorg/apache/xerces/xni/parser/XMLParseException;->getMessage()Ljava/lang/String;

    move-result-object v8

    move-object v9, v5

    invoke-direct {v7, v8, v9}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    :goto_0
    throw v6

    :cond_1
    new-instance v6, Lorg/xml/sax/SAXParseException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v3

    invoke-virtual {v8}, Lorg/apache/xerces/xni/parser/XMLParseException;->getMessage()Ljava/lang/String;

    move-result-object v8

    move-object v9, v5

    move-object v10, v4

    invoke-direct {v7, v8, v9, v10}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    move-object v6, v4

    instance-of v6, v6, Lorg/xml/sax/SAXException;

    if-eqz v6, :cond_3

    move-object v6, v4

    check-cast v6, Lorg/xml/sax/SAXException;

    throw v6

    :cond_3
    move-object v6, v4

    instance-of v6, v6, Ljava/io/IOException;

    if-eqz v6, :cond_4

    move-object v6, v4

    check-cast v6, Ljava/io/IOException;

    throw v6

    :cond_4
    new-instance v6, Lorg/xml/sax/SAXException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v4

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v6

    :catch_1
    move-exception v6

    move-object v4, v6

    move-object v6, v4

    invoke-virtual {v6}, Lorg/apache/xerces/xni/XNIException;->getException()Ljava/lang/Exception;

    move-result-object v6

    move-object v5, v6

    move-object v6, v5

    if-nez v6, :cond_5

    new-instance v6, Lorg/xml/sax/SAXException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v4

    invoke-virtual {v8}, Lorg/apache/xerces/xni/XNIException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_5
    move-object v6, v5

    instance-of v6, v6, Lorg/xml/sax/SAXException;

    if-eqz v6, :cond_6

    move-object v6, v5

    check-cast v6, Lorg/xml/sax/SAXException;

    throw v6

    :cond_6
    move-object v6, v5

    instance-of v6, v6, Ljava/io/IOException;

    if-eqz v6, :cond_7

    move-object v6, v5

    check-cast v6, Ljava/io/IOException;

    throw v6

    :cond_7
    new-instance v6, Lorg/xml/sax/SAXException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v5

    invoke-direct {v7, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v6
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    :try_start_0
    new-instance v5, Lorg/apache/xerces/xni/parser/XMLInputSource;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v1

    invoke-virtual {v7}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v8}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Lorg/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v5

    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v6}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/xerces/xni/parser/XMLInputSource;->setByteStream(Ljava/io/InputStream;)V

    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v6}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/xerces/xni/parser/XMLInputSource;->setCharacterStream(Ljava/io/Reader;)V

    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v6}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/xerces/xni/parser/XMLInputSource;->setEncoding(Ljava/lang/String;)V

    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Lorg/apache/xerces/parsers/AbstractSAXParser;->parse(Lorg/apache/xerces/xni/parser/XMLInputSource;)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/xerces/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v5

    move-object v2, v5

    move-object v5, v2

    invoke-virtual {v5}, Lorg/apache/xerces/xni/parser/XMLParseException;->getException()Ljava/lang/Exception;

    move-result-object v5

    move-object v3, v5

    move-object v5, v3

    if-eqz v5, :cond_0

    move-object v5, v3

    instance-of v5, v5, Ljava/io/CharConversionException;

    if-eqz v5, :cond_2

    :cond_0
    new-instance v5, Lorg/xml/sax/ext/Locator2Impl;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Lorg/xml/sax/ext/Locator2Impl;-><init>()V

    move-object v4, v5

    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fVersion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lorg/xml/sax/ext/Locator2Impl;->setXMLVersion(Ljava/lang/String;)V

    move-object v5, v4

    move-object v6, v2

    invoke-virtual {v6}, Lorg/apache/xerces/xni/parser/XMLParseException;->getPublicId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/xml/sax/ext/Locator2Impl;->setPublicId(Ljava/lang/String;)V

    move-object v5, v4

    move-object v6, v2

    invoke-virtual {v6}, Lorg/apache/xerces/xni/parser/XMLParseException;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/xml/sax/ext/Locator2Impl;->setSystemId(Ljava/lang/String;)V

    move-object v5, v4

    move-object v6, v2

    invoke-virtual {v6}, Lorg/apache/xerces/xni/parser/XMLParseException;->getLineNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/xml/sax/ext/Locator2Impl;->setLineNumber(I)V

    move-object v5, v4

    move-object v6, v2

    invoke-virtual {v6}, Lorg/apache/xerces/xni/parser/XMLParseException;->getColumnNumber()I

    move-result v6

    invoke-virtual {v5, v6}, Lorg/xml/sax/ext/Locator2Impl;->setColumnNumber(I)V

    move-object v5, v3

    if-nez v5, :cond_1

    new-instance v5, Lorg/xml/sax/SAXParseException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v2

    invoke-virtual {v7}, Lorg/apache/xerces/xni/parser/XMLParseException;->getMessage()Ljava/lang/String;

    move-result-object v7

    move-object v8, v4

    invoke-direct {v6, v7, v8}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    :goto_0
    throw v5

    :cond_1
    new-instance v5, Lorg/xml/sax/SAXParseException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v2

    invoke-virtual {v7}, Lorg/apache/xerces/xni/parser/XMLParseException;->getMessage()Ljava/lang/String;

    move-result-object v7

    move-object v8, v4

    move-object v9, v3

    invoke-direct {v6, v7, v8, v9}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    goto :goto_0

    :cond_2
    move-object v5, v3

    instance-of v5, v5, Lorg/xml/sax/SAXException;

    if-eqz v5, :cond_3

    move-object v5, v3

    check-cast v5, Lorg/xml/sax/SAXException;

    throw v5

    :cond_3
    move-object v5, v3

    instance-of v5, v5, Ljava/io/IOException;

    if-eqz v5, :cond_4

    move-object v5, v3

    check-cast v5, Ljava/io/IOException;

    throw v5

    :cond_4
    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v3

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v5

    :catch_1
    move-exception v5

    move-object v3, v5

    move-object v5, v3

    invoke-virtual {v5}, Lorg/apache/xerces/xni/XNIException;->getException()Ljava/lang/Exception;

    move-result-object v5

    move-object v4, v5

    move-object v5, v4

    if-nez v5, :cond_5

    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v3

    invoke-virtual {v7}, Lorg/apache/xerces/xni/XNIException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_5
    move-object v5, v4

    instance-of v5, v5, Lorg/xml/sax/SAXException;

    if-eqz v5, :cond_6

    move-object v5, v4

    check-cast v5, Lorg/xml/sax/SAXException;

    throw v5

    :cond_6
    move-object v5, v4

    instance-of v5, v5, Ljava/io/IOException;

    if-eqz v5, :cond_7

    move-object v5, v4

    check-cast v5, Ljava/io/IOException;

    throw v5

    :cond_7
    new-instance v5, Lorg/xml/sax/SAXException;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v4

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v5
.end method

.method public processingInstruction(Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v7}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/xml/sax/DocumentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v7}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v5

    move-object v4, v5

    new-instance v5, Lorg/apache/xerces/xni/XNIException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v4

    invoke-direct {v6, v7}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v5
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

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xerces/parsers/AbstractSAXParser;->fInDTD:Z

    move-object v1, v0

    const-string/jumbo v2, "1.0"

    iput-object v2, v1, Lorg/apache/xerces/parsers/AbstractSAXParser;->fVersion:Ljava/lang/String;

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/apache/xerces/parsers/AbstractSAXParser;->fStandalone:Z

    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v3, "http://xml.org/sax/features/namespaces"

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lorg/apache/xerces/parsers/AbstractSAXParser;->fNamespaces:Z

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/parsers/AbstractSAXParser;->fAugmentations:Lorg/apache/xerces/xni/Augmentations;

    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/apache/xerces/parsers/AbstractSAXParser;->fDeclaredAttrs:Lorg/apache/xerces/util/SymbolHash;

    return-void
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    return-void
.end method

.method public setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/parsers/AbstractSAXParser;->fDTDHandler:Lorg/xml/sax/DTDHandler;

    return-void
.end method

.method protected setDeclHandler(Lorg/xml/sax/ext/DeclHandler;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lorg/apache/xerces/parsers/AbstractSAXParser;->fParseInProgress:Z

    if-eqz v2, :cond_0

    new-instance v2, Lorg/xml/sax/SAXNotSupportedException;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v4}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v4

    const-string/jumbo v5, "property-not-parsing-supported"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    const-string/jumbo v9, "http://xml.org/sax/properties/declaration-handler"

    aput-object v9, v7, v8

    invoke-static {v4, v5, v6}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/parsers/AbstractSAXParser;->fDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    return-void
.end method

.method public setDocumentHandler(Lorg/xml/sax/DocumentHandler;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lorg/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/xni/parser/XMLEntityResolver;

    move-object v2, v4

    move-object v4, v0

    iget-boolean v4, v4, Lorg/apache/xerces/parsers/AbstractSAXParser;->fUseEntityResolver2:Z

    if-eqz v4, :cond_1

    move-object v4, v1

    instance-of v4, v4, Lorg/xml/sax/ext/EntityResolver2;

    if-eqz v4, :cond_1

    move-object v4, v2

    instance-of v4, v4, Lorg/apache/xerces/util/EntityResolver2Wrapper;

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Lorg/apache/xerces/util/EntityResolver2Wrapper;

    move-object v3, v4

    move-object v4, v3

    move-object v5, v1

    check-cast v5, Lorg/xml/sax/ext/EntityResolver2;

    invoke-virtual {v4, v5}, Lorg/apache/xerces/util/EntityResolver2Wrapper;->setEntityResolver(Lorg/xml/sax/ext/EntityResolver2;)V

    :goto_0
    return-void

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/entity-resolver"

    new-instance v6, Lorg/apache/xerces/util/EntityResolver2Wrapper;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v1

    check-cast v8, Lorg/xml/sax/ext/EntityResolver2;

    invoke-direct {v7, v8}, Lorg/apache/xerces/util/EntityResolver2Wrapper;-><init>(Lorg/xml/sax/ext/EntityResolver2;)V

    invoke-interface {v4, v5, v6}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move-object v4, v2

    instance-of v4, v4, Lorg/apache/xerces/util/EntityResolverWrapper;

    if-eqz v4, :cond_2

    move-object v4, v2

    check-cast v4, Lorg/apache/xerces/util/EntityResolverWrapper;

    move-object v3, v4

    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xerces/util/EntityResolverWrapper;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    goto :goto_0

    :cond_2
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/entity-resolver"

    new-instance v6, Lorg/apache/xerces/util/EntityResolverWrapper;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v1

    invoke-direct {v7, v8}, Lorg/apache/xerces/util/EntityResolverWrapper;-><init>(Lorg/xml/sax/EntityResolver;)V

    invoke-interface {v4, v5, v6}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v2, v4

    goto :goto_0
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    :try_start_0
    iget-object v4, v4, Lorg/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/error-handler"

    invoke-interface {v4, v5}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/xni/parser/XMLErrorHandler;

    move-object v2, v4

    move-object v4, v2

    instance-of v4, v4, Lorg/apache/xerces/util/ErrorHandlerWrapper;

    if-eqz v4, :cond_0

    move-object v4, v2

    check-cast v4, Lorg/apache/xerces/util/ErrorHandlerWrapper;

    move-object v3, v4

    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v4, v5}, Lorg/apache/xerces/util/ErrorHandlerWrapper;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    :goto_0
    return-void

    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    const-string/jumbo v5, "http://apache.org/xml/properties/internal/error-handler"

    new-instance v6, Lorg/apache/xerces/util/ErrorHandlerWrapper;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v1

    invoke-direct {v7, v8}, Lorg/apache/xerces/util/ErrorHandlerWrapper;-><init>(Lorg/xml/sax/ErrorHandler;)V

    invoke-interface {v4, v5, v6}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v2, v4

    goto :goto_0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object v5, v1

    :try_start_0
    const-string/jumbo v6, "http://xml.org/sax/features/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const-string/jumbo v6, "http://xml.org/sax/features/"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    move v3, v5

    move v5, v3

    const-string/jumbo v6, "namespaces"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_0

    move-object v5, v1

    const-string/jumbo v6, "namespaces"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object v6, v1

    move v7, v2

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V

    move-object v5, v0

    move v6, v2

    iput-boolean v6, v5, Lorg/apache/xerces/parsers/AbstractSAXParser;->fNamespaces:Z

    :goto_0
    return-void

    :cond_0
    move v5, v3

    const-string/jumbo v6, "namespace-prefixes"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_1

    move-object v5, v1

    const-string/jumbo v6, "namespace-prefixes"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v0

    move v6, v2

    iput-boolean v6, v5, Lorg/apache/xerces/parsers/AbstractSAXParser;->fNamespacePrefixes:Z

    goto :goto_0

    :cond_1
    move v5, v3

    const-string/jumbo v6, "string-interning"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_3

    move-object v5, v1

    const-string/jumbo v6, "string-interning"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v2

    if-nez v5, :cond_2

    new-instance v5, Lorg/xml/sax/SAXNotSupportedException;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v7

    const-string/jumbo v8, "false-not-supported"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v1

    aput-object v12, v10, v11

    invoke-static {v7, v8, v9}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v5

    move-object v3, v5

    move-object v5, v3

    invoke-virtual {v5}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    move-object v5, v3

    invoke-virtual {v5}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result v5

    if-nez v5, :cond_10

    new-instance v5, Lorg/xml/sax/SAXNotRecognizedException;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v7

    const-string/jumbo v8, "feature-not-recognized"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v4

    aput-object v12, v10, v11

    invoke-static {v7, v8, v9}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    goto/16 :goto_0

    :cond_3
    move v5, v3

    :try_start_1
    const-string/jumbo v6, "lexical-handler/parameter-entities"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_4

    move-object v5, v1

    const-string/jumbo v6, "lexical-handler/parameter-entities"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v5, v0

    move v6, v2

    iput-boolean v6, v5, Lorg/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandlerParameterEntities:Z

    goto/16 :goto_0

    :cond_4
    move v5, v3

    const-string/jumbo v6, "resolve-dtd-uris"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_5

    move-object v5, v1

    const-string/jumbo v6, "resolve-dtd-uris"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v5, v0

    move v6, v2

    iput-boolean v6, v5, Lorg/apache/xerces/parsers/AbstractSAXParser;->fResolveDTDURIs:Z

    goto/16 :goto_0

    :cond_5
    move v5, v3

    const-string/jumbo v6, "unicode-normalization-checking"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_7

    move-object v5, v1

    const-string/jumbo v6, "unicode-normalization-checking"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    move v5, v2

    if-eqz v5, :cond_6

    new-instance v5, Lorg/xml/sax/SAXNotSupportedException;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v7

    const-string/jumbo v8, "true-not-supported"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v1

    aput-object v12, v10, v11

    invoke-static {v7, v8, v9}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_6
    goto/16 :goto_0

    :cond_7
    move v5, v3

    const-string/jumbo v6, "xmlns-uris"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_8

    move-object v5, v1

    const-string/jumbo v6, "xmlns-uris"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    move-object v5, v0

    move v6, v2

    iput-boolean v6, v5, Lorg/apache/xerces/parsers/AbstractSAXParser;->fXMLNSURIs:Z

    goto/16 :goto_0

    :cond_8
    move v5, v3

    const-string/jumbo v6, "use-entity-resolver2"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_a

    move-object v5, v1

    const-string/jumbo v6, "use-entity-resolver2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    move v5, v2

    move-object v6, v0

    iget-boolean v6, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fUseEntityResolver2:Z

    if-eq v5, v6, :cond_9

    move-object v5, v0

    move v6, v2

    iput-boolean v6, v5, Lorg/apache/xerces/parsers/AbstractSAXParser;->fUseEntityResolver2:Z

    move-object v5, v0

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/parsers/AbstractSAXParser;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/xerces/parsers/AbstractSAXParser;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    :cond_9
    goto/16 :goto_0

    :cond_a
    move v5, v3

    const-string/jumbo v6, "is-standalone"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_b

    move-object v5, v1

    const-string/jumbo v6, "is-standalone"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_e

    :cond_b
    move v5, v3

    const-string/jumbo v6, "use-attributes2"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_c

    move-object v5, v1

    const-string/jumbo v6, "use-attributes2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_e

    :cond_c
    move v5, v3

    const-string/jumbo v6, "use-locator2"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_d

    move-object v5, v1

    const-string/jumbo v6, "use-locator2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_e

    :cond_d
    move v5, v3

    const-string/jumbo v6, "xml-1.1"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_f

    move-object v5, v1

    const-string/jumbo v6, "xml-1.1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    :cond_e
    new-instance v5, Lorg/xml/sax/SAXNotSupportedException;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v7

    const-string/jumbo v8, "feature-read-only"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v1

    aput-object v12, v10, v11

    invoke-static {v7, v8, v9}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_f
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object v6, v1

    move v7, v2

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V
    :try_end_1
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_10
    new-instance v5, Lorg/xml/sax/SAXNotSupportedException;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v7

    const-string/jumbo v8, "feature-not-supported"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v4

    aput-object v12, v10, v11

    invoke-static {v7, v8, v9}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method protected setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Lorg/apache/xerces/parsers/AbstractSAXParser;->fParseInProgress:Z

    if-eqz v2, :cond_0

    new-instance v2, Lorg/xml/sax/SAXNotSupportedException;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    move-object v4, v0

    iget-object v4, v4, Lorg/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v4}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v4

    const-string/jumbo v5, "property-not-parsing-supported"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    const/4 v8, 0x0

    const-string/jumbo v9, "http://xml.org/sax/properties/lexical-handler"

    aput-object v9, v7, v8

    invoke-static {v4, v5, v6}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lorg/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Lorg/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object v3, v1

    invoke-interface {v2, v3}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object v5, v1

    :try_start_0
    const-string/jumbo v6, "http://xml.org/sax/properties/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const-string/jumbo v6, "http://xml.org/sax/properties/"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    move v3, v5

    move v5, v3

    const-string/jumbo v6, "lexical-handler"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_0

    move-object v5, v1

    const-string/jumbo v6, "lexical-handler"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v0

    move-object v6, v2

    :try_start_1
    check-cast v6, Lorg/xml/sax/ext/LexicalHandler;

    invoke-virtual {v5, v6}, Lorg/apache/xerces/parsers/AbstractSAXParser;->setLexicalHandler(Lorg/xml/sax/ext/LexicalHandler;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v5

    move-object v4, v5

    :try_start_2
    new-instance v5, Lorg/xml/sax/SAXNotSupportedException;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v7

    const-string/jumbo v8, "incompatible-class"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v1

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x1

    const-string/jumbo v12, "org.xml.sax.ext.LexicalHandler"

    aput-object v12, v10, v11

    invoke-static {v7, v8, v9}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_2
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v5

    move-object v3, v5

    move-object v5, v3

    invoke-virtual {v5}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    move-object v5, v3

    invoke-virtual {v5}, Lorg/apache/xerces/xni/parser/XMLConfigurationException;->getType()S

    move-result v5

    if-nez v5, :cond_5

    new-instance v5, Lorg/xml/sax/SAXNotRecognizedException;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v7

    const-string/jumbo v8, "property-not-recognized"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v4

    aput-object v12, v10, v11

    invoke-static {v7, v8, v9}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    move v5, v3

    :try_start_3
    const-string/jumbo v6, "declaration-handler"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_1

    move-object v5, v1

    const-string/jumbo v6, "declaration-handler"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_3
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v0

    move-object v6, v2

    :try_start_4
    check-cast v6, Lorg/xml/sax/ext/DeclHandler;

    invoke-virtual {v5, v6}, Lorg/apache/xerces/parsers/AbstractSAXParser;->setDeclHandler(Lorg/xml/sax/ext/DeclHandler;)V
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_2
    move-exception v5

    move-object v4, v5

    :try_start_5
    new-instance v5, Lorg/xml/sax/SAXNotSupportedException;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v7

    const-string/jumbo v8, "incompatible-class"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v1

    aput-object v12, v10, v11

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x1

    const-string/jumbo v12, "org.xml.sax.ext.DeclHandler"

    aput-object v12, v10, v11

    invoke-static {v7, v8, v9}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    move v5, v3

    const-string/jumbo v6, "dom-node"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_2

    move-object v5, v1

    const-string/jumbo v6, "dom-node"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    move v5, v3

    const-string/jumbo v6, "document-xml-version"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_4

    move-object v5, v1

    const-string/jumbo v6, "document-xml-version"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    new-instance v5, Lorg/xml/sax/SAXNotSupportedException;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v7

    const-string/jumbo v8, "property-read-only"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v1

    aput-object v12, v10, v11

    invoke-static {v7, v8, v9}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    move-object v6, v1

    move-object v7, v2

    invoke-interface {v5, v6, v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catch Lorg/apache/xerces/xni/parser/XMLConfigurationException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    :cond_5
    new-instance v5, Lorg/xml/sax/SAXNotSupportedException;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/AbstractSAXParser;->fConfiguration:Lorg/apache/xerces/xni/parser/XMLParserConfiguration;

    invoke-interface {v7}, Lorg/apache/xerces/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object v7

    const-string/jumbo v8, "property-not-supported"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    const/4 v11, 0x0

    move-object v12, v4

    aput-object v12, v10, v11

    invoke-static {v7, v8, v9}, Lorg/apache/xerces/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public startCDATA(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lorg/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lorg/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v3}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v3

    move-object v2, v3

    new-instance v3, Lorg/apache/xerces/xni/XNIException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v2

    invoke-direct {v4, v5}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method public startDocument(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lorg/apache/xerces/xni/NamespaceContext;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 11
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

    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    if-eqz v6, :cond_1

    move-object v6, v1

    if-eqz v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    new-instance v7, Lorg/apache/xerces/parsers/AbstractSAXParser$LocatorProxy;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v1

    invoke-direct {v8, v9}, Lorg/apache/xerces/parsers/AbstractSAXParser$LocatorProxy;-><init>(Lorg/apache/xerces/xni/XMLLocator;)V

    invoke-interface {v6, v7}, Lorg/xml/sax/DocumentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    if-eqz v6, :cond_1

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    invoke-interface {v6}, Lorg/xml/sax/DocumentHandler;->startDocument()V

    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v6, :cond_3

    move-object v6, v1

    if-eqz v6, :cond_2

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    new-instance v7, Lorg/apache/xerces/parsers/AbstractSAXParser$LocatorProxy;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v1

    invoke-direct {v8, v9}, Lorg/apache/xerces/parsers/AbstractSAXParser$LocatorProxy;-><init>(Lorg/apache/xerces/xni/XMLLocator;)V

    invoke-interface {v6, v7}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    :cond_2
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v6, :cond_3

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v6}, Lorg/xml/sax/ContentHandler;->startDocument()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception v6

    move-object v5, v6

    new-instance v6, Lorg/apache/xerces/xni/XNIException;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v5

    invoke-direct {v7, v8}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v6
.end method

.method public startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V
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

    move-object v6, v0

    :try_start_0
    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    if-eqz v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fAttributesProxy:Lorg/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;

    move-object v7, v2

    invoke-virtual {v6, v7}, Lorg/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->setAttributes(Lorg/apache/xerces/xni/XMLAttributes;)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fDocumentHandler:Lorg/xml/sax/DocumentHandler;

    move-object v7, v1

    iget-object v7, v7, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/parsers/AbstractSAXParser;->fAttributesProxy:Lorg/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;

    invoke-interface {v6, v7, v8}, Lorg/xml/sax/DocumentHandler;->startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V

    :cond_0
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v6, :cond_2

    move-object v6, v0

    iget-boolean v6, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fNamespaces:Z

    if-eqz v6, :cond_1

    move-object v6, v0

    invoke-virtual {v6}, Lorg/apache/xerces/parsers/AbstractSAXParser;->startNamespaceMapping()V

    move-object v6, v2

    invoke-interface {v6}, Lorg/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v6

    move v4, v6

    move-object v6, v0

    iget-boolean v6, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fNamespacePrefixes:Z

    if-nez v6, :cond_6

    move v6, v4

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v5, v6

    :goto_0
    move v6, v5

    if-gez v6, :cond_3

    :cond_1
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fAugmentations:Lorg/apache/xerces/xni/Augmentations;

    move-object v6, v1

    iget-object v6, v6, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v6, :cond_9

    move-object v6, v1

    iget-object v6, v6, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    :goto_1
    move-object v4, v6

    move-object v6, v0

    iget-boolean v6, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fNamespaces:Z

    if-eqz v6, :cond_a

    move-object v6, v1

    iget-object v6, v6, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    :goto_2
    move-object v5, v6

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fAttributesProxy:Lorg/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;

    move-object v7, v2

    invoke-virtual {v6, v7}, Lorg/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;->setAttributes(Lorg/apache/xerces/xni/XMLAttributes;)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    move-object v7, v4

    move-object v8, v5

    move-object v9, v1

    iget-object v9, v9, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    move-object v10, v0

    iget-object v10, v10, Lorg/apache/xerces/parsers/AbstractSAXParser;->fAttributesProxy:Lorg/apache/xerces/parsers/AbstractSAXParser$AttributesProxy;

    invoke-interface {v6, v7, v8, v9, v10}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    :cond_2
    return-void

    :cond_3
    move-object v6, v2

    move v7, v5

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/parsers/AbstractSAXParser;->fQName:Lorg/apache/xerces/xni/QName;

    invoke-interface {v6, v7, v8}, Lorg/apache/xerces/xni/XMLAttributes;->getName(ILorg/apache/xerces/xni/QName;)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fQName:Lorg/apache/xerces/xni/QName;

    iget-object v6, v6, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    sget-object v7, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v6, v7, :cond_4

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fQName:Lorg/apache/xerces/xni/QName;

    iget-object v6, v6, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    sget-object v7, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v6, v7, :cond_5

    :cond_4
    move-object v6, v2

    move v7, v5

    invoke-interface {v6, v7}, Lorg/apache/xerces/xni/XMLAttributes;->removeAttributeAt(I)V

    :cond_5
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_6
    move-object v6, v0

    iget-boolean v6, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fXMLNSURIs:Z

    if-nez v6, :cond_1

    move v6, v4

    const/4 v7, 0x1

    add-int/lit8 v6, v6, -0x1

    move v5, v6

    :goto_3
    move v6, v5

    if-ltz v6, :cond_1

    move-object v6, v2

    move v7, v5

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/parsers/AbstractSAXParser;->fQName:Lorg/apache/xerces/xni/QName;

    invoke-interface {v6, v7, v8}, Lorg/apache/xerces/xni/XMLAttributes;->getName(ILorg/apache/xerces/xni/QName;)V

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fQName:Lorg/apache/xerces/xni/QName;

    iget-object v6, v6, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    sget-object v7, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v6, v7, :cond_7

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fQName:Lorg/apache/xerces/xni/QName;

    iget-object v6, v6, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    sget-object v7, Lorg/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v6, v7, :cond_8

    :cond_7
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fQName:Lorg/apache/xerces/xni/QName;

    const-string/jumbo v7, ""

    iput-object v7, v6, Lorg/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fQName:Lorg/apache/xerces/xni/QName;

    const-string/jumbo v7, ""

    iput-object v7, v6, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fQName:Lorg/apache/xerces/xni/QName;

    const-string/jumbo v7, ""

    iput-object v7, v6, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    move-object v6, v2

    move v7, v5

    move-object v8, v0

    iget-object v8, v8, Lorg/apache/xerces/parsers/AbstractSAXParser;->fQName:Lorg/apache/xerces/xni/QName;

    invoke-interface {v6, v7, v8}, Lorg/apache/xerces/xni/XMLAttributes;->setName(ILorg/apache/xerces/xni/QName;)V

    :cond_8
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_9
    const-string/jumbo v6, ""

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v6, ""
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v6

    move-object v4, v6

    new-instance v6, Lorg/apache/xerces/xni/XNIException;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v4

    invoke-direct {v7, v8}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v6
.end method

.method public startExternalSubset(Lorg/apache/xerces/xni/XMLResourceIdentifier;Lorg/apache/xerces/xni/Augmentations;)V
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

    const-string/jumbo v4, "[dtd]"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/apache/xerces/parsers/AbstractSAXParser;->startParameterEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public startGeneralEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
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

    move-object v6, v4

    if-eqz v6, :cond_1

    :try_start_0
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v7, v4

    const-string/jumbo v8, "ENTITY_SKIPPED"

    invoke-interface {v7, v8}, Lorg/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    move-object v7, v1

    invoke-interface {v6, v7}, Lorg/xml/sax/ContentHandler;->skippedEntity(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    move-object v7, v1

    invoke-interface {v6, v7}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    move-object v5, v6

    new-instance v6, Lorg/apache/xerces/xni/XNIException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v5

    invoke-direct {v7, v8}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v6
.end method

.method protected final startNamespaceMapping()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object v0, p0

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractSAXParser;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    invoke-interface {v5}, Lorg/apache/xerces/xni/NamespaceContext;->getDeclaredPrefixCount()I

    move-result v5

    move v1, v5

    move v5, v1

    if-lez v5, :cond_0

    const/4 v5, 0x0

    move-object v2, v5

    const/4 v5, 0x0

    move-object v3, v5

    const/4 v5, 0x0

    move v4, v5

    :goto_0
    move v5, v4

    move v6, v1

    if-lt v5, v6, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractSAXParser;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    move v6, v4

    invoke-interface {v5, v6}, Lorg/apache/xerces/xni/NamespaceContext;->getDeclaredPrefixAt(I)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractSAXParser;->fNamespaceContext:Lorg/apache/xerces/xni/NamespaceContext;

    move-object v6, v2

    invoke-interface {v5, v6}, Lorg/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    move-object v5, v0

    iget-object v5, v5, Lorg/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    move-object v6, v2

    move-object v7, v3

    if-nez v7, :cond_2

    const-string/jumbo v7, ""

    :goto_1
    invoke-interface {v5, v6, v7}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    move-object v7, v3

    goto :goto_1
.end method

.method public startParameterEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
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

    move-object v6, v4

    if-eqz v6, :cond_1

    :try_start_0
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v7, v4

    const-string/jumbo v8, "ENTITY_SKIPPED"

    invoke-interface {v7, v8}, Lorg/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-eqz v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fContentHandler:Lorg/xml/sax/ContentHandler;

    move-object v7, v1

    invoke-interface {v6, v7}, Lorg/xml/sax/ContentHandler;->skippedEntity(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v6, :cond_0

    move-object v6, v0

    iget-boolean v6, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandlerParameterEntities:Z

    if-eqz v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lorg/apache/xerces/parsers/AbstractSAXParser;->fLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    move-object v7, v1

    invoke-interface {v6, v7}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    move-object v5, v6

    new-instance v6, Lorg/apache/xerces/xni/XNIException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v5

    invoke-direct {v7, v8}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v6
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Lorg/apache/xerces/parsers/AbstractSAXParser;->fDTDHandler:Lorg/xml/sax/DTDHandler;

    if-eqz v7, :cond_0

    move-object v7, v2

    invoke-interface {v7}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getPublicId()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    move-object v7, v0

    iget-boolean v7, v7, Lorg/apache/xerces/parsers/AbstractSAXParser;->fResolveDTDURIs:Z

    if-eqz v7, :cond_1

    move-object v7, v2

    invoke-interface {v7}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v7

    :goto_0
    move-object v6, v7

    move-object v7, v0

    iget-object v7, v7, Lorg/apache/xerces/parsers/AbstractSAXParser;->fDTDHandler:Lorg/xml/sax/DTDHandler;

    move-object v8, v1

    move-object v9, v5

    move-object v10, v6

    move-object v11, v3

    invoke-interface {v7, v8, v9, v10, v11}, Lorg/xml/sax/DTDHandler;->unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    move-object v7, v2

    invoke-interface {v7}, Lorg/apache/xerces/xni/XMLResourceIdentifier;->getLiteralSystemId()Ljava/lang/String;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    :catch_0
    move-exception v7

    move-object v5, v7

    new-instance v7, Lorg/apache/xerces/xni/XNIException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v5

    invoke-direct {v8, v9}, Lorg/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v7
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

    move-object v6, v1

    iput-object v6, v5, Lorg/apache/xerces/parsers/AbstractSAXParser;->fVersion:Ljava/lang/String;

    move-object v5, v0

    const-string/jumbo v6, "yes"

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, v5, Lorg/apache/xerces/parsers/AbstractSAXParser;->fStandalone:Z

    return-void
.end method
